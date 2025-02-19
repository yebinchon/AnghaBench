
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct vgic_irq {scalar_t__ source; } ;
struct kvm_vcpu {int kvm; } ;
typedef int gpa_t ;


 struct vgic_irq* vgic_get_irq (int ,struct kvm_vcpu*,int) ;
 int vgic_put_irq (int ,struct vgic_irq*) ;

__attribute__((used)) static unsigned long vgic_mmio_read_sgipend(struct kvm_vcpu *vcpu,
         gpa_t addr, unsigned int len)
{
 u32 intid = addr & 0x0f;
 int i;
 u64 val = 0;

 for (i = 0; i < len; i++) {
  struct vgic_irq *irq = vgic_get_irq(vcpu->kvm, vcpu, intid + i);

  val |= (u64)irq->source << (i * 8);

  vgic_put_irq(vcpu->kvm, irq);
 }
 return val;
}
