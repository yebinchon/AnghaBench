
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vgic_cpu {int pendbaser; } ;
struct TYPE_2__ {struct vgic_cpu vgic_cpu; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;
typedef int gpa_t ;


 unsigned long extract_bytes (int ,int,unsigned int) ;

__attribute__((used)) static unsigned long vgic_mmio_read_pendbase(struct kvm_vcpu *vcpu,
          gpa_t addr, unsigned int len)
{
 struct vgic_cpu *vgic_cpu = &vcpu->arch.vgic_cpu;

 return extract_bytes(vgic_cpu->pendbaser, addr & 7, len);
}
