
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int pending_last; } ;
struct TYPE_6__ {TYPE_1__ its_vpe; } ;
struct TYPE_7__ {TYPE_2__ vgic_v3; } ;
struct TYPE_8__ {TYPE_3__ vgic_cpu; } ;
struct kvm_vcpu {TYPE_4__ arch; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int KVM_REQ_IRQ_PENDING ;
 int kvm_make_request (int ,struct kvm_vcpu*) ;
 int kvm_vcpu_kick (struct kvm_vcpu*) ;

__attribute__((used)) static irqreturn_t vgic_v4_doorbell_handler(int irq, void *info)
{
 struct kvm_vcpu *vcpu = info;

 vcpu->arch.vgic_cpu.vgic_v3.its_vpe.pending_last = 1;
 kvm_make_request(KVM_REQ_IRQ_PENDING, vcpu);
 kvm_vcpu_kick(vcpu);

 return IRQ_HANDLED;
}
