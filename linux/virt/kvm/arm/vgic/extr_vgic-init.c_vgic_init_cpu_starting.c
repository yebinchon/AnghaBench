
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int maint_irq; } ;


 int enable_percpu_irq (int ,int ) ;
 TYPE_1__ kvm_vgic_global_state ;

__attribute__((used)) static int vgic_init_cpu_starting(unsigned int cpu)
{
 enable_percpu_irq(kvm_vgic_global_state.maint_irq, 0);
 return 0;
}
