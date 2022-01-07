
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int pendsv_dispatch_t ;
struct TYPE_2__ {int ICSR; } ;


 TYPE_1__* SCB ;
 int SCB_ICSR_PENDSVSET_Msk ;
 int pendsv_dispatch_active ;
 int * pendsv_dispatch_table ;

void pendsv_schedule_dispatch(size_t slot, pendsv_dispatch_t f) {
    pendsv_dispatch_table[slot] = f;
    pendsv_dispatch_active = 1;
    SCB->ICSR = SCB_ICSR_PENDSVSET_Msk;
}
