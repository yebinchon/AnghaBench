
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;
struct vgic_irq {scalar_t__ config; } ;
struct kvm_vcpu {int kvm; } ;
typedef int gpa_t ;


 unsigned int VGIC_ADDR_TO_INTID (int ,int) ;
 scalar_t__ VGIC_CONFIG_EDGE ;
 struct vgic_irq* vgic_get_irq (int ,struct kvm_vcpu*,unsigned int) ;
 int vgic_put_irq (int ,struct vgic_irq*) ;

unsigned long vgic_mmio_read_config(struct kvm_vcpu *vcpu,
        gpa_t addr, unsigned int len)
{
 u32 intid = VGIC_ADDR_TO_INTID(addr, 2);
 u32 value = 0;
 int i;

 for (i = 0; i < len * 4; i++) {
  struct vgic_irq *irq = vgic_get_irq(vcpu->kvm, vcpu, intid + i);

  if (irq->config == VGIC_CONFIG_EDGE)
   value |= (2U << (i * 2));

  vgic_put_irq(vcpu->kvm, irq);
 }

 return value;
}
