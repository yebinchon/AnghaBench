
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vgic_dist {scalar_t__ vgic_dist_base; } ;
struct TYPE_2__ {struct vgic_dist vgic; } ;
struct kvm {TYPE_1__ arch; } ;
typedef scalar_t__ gpa_t ;


 scalar_t__ KVM_VGIC_V3_DIST_SIZE ;

__attribute__((used)) static inline bool vgic_dist_overlap(struct kvm *kvm, gpa_t base, size_t size)
{
 struct vgic_dist *d = &kvm->arch.vgic;

 return (base + size > d->vgic_dist_base) &&
  (base < d->vgic_dist_base + KVM_VGIC_V3_DIST_SIZE);
}
