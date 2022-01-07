
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ explicit_exit_notification_time_wait; int occ_op; int explicit_exit_notification_interval; int timeval; } ;
struct TYPE_5__ {scalar_t__ explicit_exit_notification; } ;
struct TYPE_6__ {TYPE_1__ ce; } ;
struct context {TYPE_4__ c2; TYPE_3__* sig; TYPE_2__ options; } ;
struct TYPE_7__ {char* signal_text; int signal_received; } ;


 int ASSERT (int) ;
 int ETT_DEFAULT ;
 int OCC_EXIT ;
 int SIGTERM ;
 int event_timeout_clear (int *) ;
 scalar_t__ event_timeout_trigger (int *,int *,int ) ;
 scalar_t__ now ;

void
process_explicit_exit_notification_timer_wakeup(struct context *c)
{
    if (event_timeout_trigger(&c->c2.explicit_exit_notification_interval,
                              &c->c2.timeval,
                              ETT_DEFAULT))
    {
        ASSERT(c->c2.explicit_exit_notification_time_wait && c->options.ce.explicit_exit_notification);
        if (now >= c->c2.explicit_exit_notification_time_wait + c->options.ce.explicit_exit_notification)
        {
            event_timeout_clear(&c->c2.explicit_exit_notification_interval);
            c->sig->signal_received = SIGTERM;
            c->sig->signal_text = "exit-with-notification";
        }
        else
        {
            c->c2.occ_op = OCC_EXIT;
        }
    }
}
