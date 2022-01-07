
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vgic_irq {int mpidr; } ;
struct kvm_vcpu {int kvm; } ;
typedef int gpa_t ;


 int READ_ONCE (int ) ;
 int VGIC_ADDR_TO_INTID (int,int) ;
 unsigned long extract_bytes (int ,int,unsigned int) ;
 struct vgic_irq* vgic_get_irq (int ,int *,int) ;
 int vgic_put_irq (int ,struct vgic_irq*) ;

__attribute__((used)) static unsigned long vgic_mmio_read_irouter(struct kvm_vcpu *vcpu,
         gpa_t addr, unsigned int len)
{
 int intid = VGIC_ADDR_TO_INTID(addr, 64);
 struct vgic_irq *irq = vgic_get_irq(vcpu->kvm, ((void*)0), intid);
 unsigned long ret = 0;

 if (!irq)
  return 0;


 if (!(addr & 4))
  ret = extract_bytes(READ_ONCE(irq->mpidr), addr & 7, len);

 vgic_put_irq(vcpu->kvm, irq);
 return ret;
}
