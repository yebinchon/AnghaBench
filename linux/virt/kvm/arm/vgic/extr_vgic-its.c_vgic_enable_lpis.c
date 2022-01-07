
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pendbaser; } ;
struct TYPE_4__ {TYPE_1__ vgic_cpu; } ;
struct kvm_vcpu {TYPE_2__ arch; } ;


 int GICR_PENDBASER_PTZ ;
 int its_sync_lpi_pending_table (struct kvm_vcpu*) ;

void vgic_enable_lpis(struct kvm_vcpu *vcpu)
{
 if (!(vcpu->arch.vgic_cpu.pendbaser & GICR_PENDBASER_PTZ))
  its_sync_lpi_pending_table(vcpu);
}
