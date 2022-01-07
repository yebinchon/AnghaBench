
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int enable_percpu_irq (int ,int ) ;
 int host_ptimer_irq ;
 int host_ptimer_irq_flags ;
 int host_vtimer_irq ;
 int host_vtimer_irq_flags ;

__attribute__((used)) static void kvm_timer_init_interrupt(void *info)
{
 enable_percpu_irq(host_vtimer_irq, host_vtimer_irq_flags);
 enable_percpu_irq(host_ptimer_irq, host_ptimer_irq_flags);
}
