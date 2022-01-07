
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int restart_sleep_seconds; } ;
struct TYPE_6__ {int proto; int connect_retry_seconds; int connect_retry_seconds_max; } ;
struct TYPE_7__ {int unsuccessful_attempts; TYPE_2__ ce; TYPE_1__* connection_list; int gremlin; } ;
struct context {TYPE_4__ persist; TYPE_3__ options; } ;
struct TYPE_5__ {int len; } ;


 scalar_t__ AR_NOINTERACT ;
 int D_RESTART ;
 scalar_t__ GREMLIN_CONNECTION_FLOOD_LEVEL (int ) ;



 scalar_t__ auth_retry_get () ;
 scalar_t__ do_hold (int) ;
 int management_sleep (int) ;
 int max_int (int,int) ;
 int min_int (int,int) ;
 int msg (int ,char*,int) ;

__attribute__((used)) static void
socket_restart_pause(struct context *c)
{
    int sec = 2;
    int backoff = 0;

    switch (c->options.ce.proto)
    {
        case 129:
            sec = 1;
            break;

        case 128:
        case 130:
            sec = c->options.ce.connect_retry_seconds;
            break;
    }
    if (c->options.ce.proto != 129)
    {
        backoff = (c->options.unsuccessful_attempts / c->options.connection_list->len) - 4;
        if (backoff > 0)
        {

            sec = max_int(sec, 1) << min_int(backoff, 15);
        }

        if (sec > c->options.ce.connect_retry_seconds_max)
        {
            sec = c->options.ce.connect_retry_seconds_max;
        }
    }

    if (c->persist.restart_sleep_seconds > 0 && c->persist.restart_sleep_seconds > sec)
    {
        sec = c->persist.restart_sleep_seconds;
    }
    else if (c->persist.restart_sleep_seconds == -1)
    {
        sec = 0;
    }
    c->persist.restart_sleep_seconds = 0;


    if (do_hold(sec))
    {
        sec = 0;
    }

    if (sec)
    {
        msg(D_RESTART, "Restart pause, %d second(s)", sec);
        management_sleep(sec);
    }
}
