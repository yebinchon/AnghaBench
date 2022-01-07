
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _ets_run () ;
 int dump_tasks () ;
 int ets_intr_lock () ;
 int ets_intr_unlock () ;
 int ets_isr_attach (int,int ,int *) ;
 int ets_loop_iter () ;
 int idle_arg ;
 int idle_cb (int ) ;
 int my_timer_isr ;
 int printf (char*) ;

bool ets_run(void) {







    *(char*)0x3FFFC6FC = 0;
    ets_intr_lock();
    printf("ets_alt_task: ets_run\n");



    ets_intr_unlock();
    while (1) {
        if (!ets_loop_iter()) {

            ets_intr_lock();
            if (idle_cb) {
                idle_cb(idle_arg);
            }
            asm("waiti 0");
            ets_intr_unlock();
        }
    }

}
