
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int disable_percpu_irq (int ) ;
 int host_vtimer_irq ;

__attribute__((used)) static int kvm_timer_dying_cpu(unsigned int cpu)
{
 disable_percpu_irq(host_vtimer_irq);
 return 0;
}
