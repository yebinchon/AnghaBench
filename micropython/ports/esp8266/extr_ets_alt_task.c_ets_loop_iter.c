
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct task_entry {int i_get; int i_put; int qlen; int * queue; int (* task ) (int *) ;} ;


 size_t MP_ARRAY_SIZE (struct task_entry volatile*) ;
 struct task_entry volatile* emu_tasks ;
 int ets_intr_lock () ;
 int ets_intr_unlock () ;
 scalar_t__ ets_loop_dont_feed_sw_wdt ;
 scalar_t__ ets_loop_iter_disable ;
 int idle_arg ;
 int idle_cb (int ) ;
 int stub1 (int *) ;
 int system_soft_wdt_feed () ;
 int system_time_update () ;

bool ets_loop_iter(void) {
    if (ets_loop_iter_disable) {
        return 0;
    }


    system_time_update();




    extern uint32_t pend_flag_noise_check;
    uint32_t *sw_wdt = &pend_flag_noise_check - 6;


    bool progress = 0;
    for (volatile struct task_entry *t = emu_tasks; t < &emu_tasks[MP_ARRAY_SIZE(emu_tasks)]; t++) {
        if (!ets_loop_dont_feed_sw_wdt) {
            system_soft_wdt_feed();
        }
        ets_intr_lock();

        if (t->i_get != t->i_put) {
            progress = 1;


            int idx = t->i_get;
            if (t->i_put == -1) {
                t->i_put = t->i_get;
            }
            if (++t->i_get == t->qlen) {
                t->i_get = 0;
            }

            uint32_t old_sw_wdt = *sw_wdt;
            t->task(&t->queue[idx]);
            if (ets_loop_dont_feed_sw_wdt) {

                *sw_wdt = old_sw_wdt;
            }


        }
        ets_intr_unlock();
    }

    if (!progress && idle_cb) {
        idle_cb(idle_arg);
    }

    return progress;
}
