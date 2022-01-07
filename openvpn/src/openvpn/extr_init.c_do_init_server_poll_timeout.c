
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ connect_timeout; } ;
struct TYPE_6__ {TYPE_2__ ce; } ;
struct TYPE_4__ {int server_poll_interval; } ;
struct context {TYPE_3__ options; TYPE_1__ c2; } ;


 int event_timeout_init (int *,scalar_t__,int ) ;
 int now ;
 int update_time () ;

__attribute__((used)) static void
do_init_server_poll_timeout(struct context *c)
{
    update_time();
    if (c->options.ce.connect_timeout)
    {
        event_timeout_init(&c->c2.server_poll_interval, c->options.ce.connect_timeout, now);
    }
}
