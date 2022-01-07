
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ event_set_status; } ;
struct context {TYPE_1__ c2; int es; int mode; } ;


 int CC_HARD_USR1_TO_HUP ;
 int CM_P2P ;
 scalar_t__ ES_TIMEOUT ;
 scalar_t__ IS_SIG (struct context*) ;
 int P2P_CHECK_SIG () ;
 int PERF_EVENT_LOOP ;
 int close_instance (struct context*) ;
 int context_clear_2 (struct context*) ;
 int init_instance_handle_signals (struct context*,int ,int ) ;
 int io_wait (struct context*,int ) ;
 int p2p_iow_flags (struct context*) ;
 int perf_pop () ;
 int perf_push (int ) ;
 int pre_select (struct context*) ;
 int process_io (struct context*) ;
 int uninit_management_callback () ;

__attribute__((used)) static void
tunnel_point_to_point(struct context *c)
{
    context_clear_2(c);


    c->mode = CM_P2P;


    init_instance_handle_signals(c, c->es, CC_HARD_USR1_TO_HUP);
    if (IS_SIG(c))
    {
        return;
    }


    while (1)
    {
        perf_push(PERF_EVENT_LOOP);


        pre_select(c);
        P2P_CHECK_SIG();


        io_wait(c, p2p_iow_flags(c));
        P2P_CHECK_SIG();


        if (c->c2.event_set_status == ES_TIMEOUT)
        {
            perf_pop();
            continue;
        }


        process_io(c);
        P2P_CHECK_SIG();

        perf_pop();
    }

    uninit_management_callback();


    close_instance(c);
}
