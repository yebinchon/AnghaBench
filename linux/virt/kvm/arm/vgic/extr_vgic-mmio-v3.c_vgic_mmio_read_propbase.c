
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vgic_dist {int propbaser; } ;
struct kvm_vcpu {TYPE_2__* kvm; } ;
typedef int gpa_t ;
struct TYPE_3__ {struct vgic_dist vgic; } ;
struct TYPE_4__ {TYPE_1__ arch; } ;


 unsigned long extract_bytes (int ,int,unsigned int) ;

__attribute__((used)) static unsigned long vgic_mmio_read_propbase(struct kvm_vcpu *vcpu,
          gpa_t addr, unsigned int len)
{
 struct vgic_dist *dist = &vcpu->kvm->arch.vgic;

 return extract_bytes(dist->propbaser, addr & 7, len);
}
