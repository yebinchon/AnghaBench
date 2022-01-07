
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int its_vpe; } ;
struct TYPE_5__ {TYPE_1__ vgic_v3; } ;
struct TYPE_6__ {TYPE_2__ vgic_cpu; } ;
struct kvm_vcpu {TYPE_3__ arch; int kvm; } ;


 int its_schedule_vpe (int *,int) ;
 int vgic_supports_direct_msis (int ) ;

int vgic_v4_sync_hwstate(struct kvm_vcpu *vcpu)
{
 if (!vgic_supports_direct_msis(vcpu->kvm))
  return 0;

 return its_schedule_vpe(&vcpu->arch.vgic_cpu.vgic_v3.its_vpe, 0);
}
