
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct gc_arena {int dummy; } ;
struct TYPE_3__ {int ping_rec_timeout_action; } ;
struct context {TYPE_2__* sig; TYPE_1__ options; } ;
struct TYPE_4__ {char* signal_text; int signal_received; } ;


 int ASSERT (int ) ;
 int M_INFO ;


 int SIGTERM ;
 int SIGUSR1 ;
 int format_common_name (struct context*,struct gc_arena*) ;
 int gc_free (struct gc_arena*) ;
 struct gc_arena gc_new () ;
 int msg (int ,char*,int ) ;

void
check_ping_restart_dowork(struct context *c)
{
    struct gc_arena gc = gc_new();
    switch (c->options.ping_rec_timeout_action)
    {
        case 129:
            msg(M_INFO, "%sInactivity timeout (--ping-exit), exiting",
                format_common_name(c, &gc));
            c->sig->signal_received = SIGTERM;
            c->sig->signal_text = "ping-exit";
            break;

        case 128:
            msg(M_INFO, "%sInactivity timeout (--ping-restart), restarting",
                format_common_name(c, &gc));
            c->sig->signal_received = SIGUSR1;
            c->sig->signal_text = "ping-restart";
            break;

        default:
            ASSERT(0);
    }
    gc_free(&gc);
}
