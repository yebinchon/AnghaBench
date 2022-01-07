
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int ICSR; } ;
struct TYPE_3__ {struct TYPE_3__* run_next; } ;


 TYPE_2__* SCB ;
 int SCB_ICSR_PENDSVSET_Msk ;
 int __WFI () ;
 TYPE_1__* pyb_thread_cur ;

__attribute__((used)) static inline void pyb_thread_yield(void) {
    if (pyb_thread_cur->run_next == pyb_thread_cur) {
        __WFI();
    } else {
        SCB->ICSR = SCB_ICSR_PENDSVSET_Msk;
    }
}
