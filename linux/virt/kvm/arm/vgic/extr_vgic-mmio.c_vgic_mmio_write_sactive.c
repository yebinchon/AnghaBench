
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct kvm_vcpu {TYPE_1__* kvm; } ;
typedef int gpa_t ;
struct TYPE_2__ {int lock; } ;


 int VGIC_ADDR_TO_INTID (int ,int) ;
 int __vgic_mmio_write_sactive (struct kvm_vcpu*,int ,unsigned int,unsigned long) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int vgic_change_active_finish (struct kvm_vcpu*,int ) ;
 int vgic_change_active_prepare (struct kvm_vcpu*,int ) ;

void vgic_mmio_write_sactive(struct kvm_vcpu *vcpu,
        gpa_t addr, unsigned int len,
        unsigned long val)
{
 u32 intid = VGIC_ADDR_TO_INTID(addr, 1);

 mutex_lock(&vcpu->kvm->lock);
 vgic_change_active_prepare(vcpu, intid);

 __vgic_mmio_write_sactive(vcpu, addr, len, val);

 vgic_change_active_finish(vcpu, intid);
 mutex_unlock(&vcpu->kvm->lock);
}
