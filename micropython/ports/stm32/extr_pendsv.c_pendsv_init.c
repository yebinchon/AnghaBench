
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IRQ_PRI_PENDSV ;
 int NVIC_SetPriority (int ,int ) ;
 int PendSV_IRQn ;
 int pendsv_dispatch_active ;

void pendsv_init(void) {




    NVIC_SetPriority(PendSV_IRQn, IRQ_PRI_PENDSV);
}
