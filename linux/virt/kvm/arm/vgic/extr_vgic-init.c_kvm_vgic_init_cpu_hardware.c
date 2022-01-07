
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ type; } ;


 int BUG_ON (int ) ;
 scalar_t__ VGIC_V2 ;
 int __vgic_v3_init_lrs ;
 int kvm_call_hyp (int ) ;
 TYPE_1__ kvm_vgic_global_state ;
 int preemptible () ;
 int vgic_v2_init_lrs () ;

void kvm_vgic_init_cpu_hardware(void)
{
 BUG_ON(preemptible());





 if (kvm_vgic_global_state.type == VGIC_V2)
  vgic_v2_init_lrs();
 else
  kvm_call_hyp(__vgic_v3_init_lrs);
}
