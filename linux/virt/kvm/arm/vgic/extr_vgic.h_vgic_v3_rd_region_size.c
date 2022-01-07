
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vgic_redist_region {size_t count; } ;
struct kvm {int online_vcpus; } ;


 size_t KVM_VGIC_V3_REDIST_SIZE ;
 size_t atomic_read (int *) ;

__attribute__((used)) static inline size_t
vgic_v3_rd_region_size(struct kvm *kvm, struct vgic_redist_region *rdreg)
{
 if (!rdreg->count)
  return atomic_read(&kvm->online_vcpus) * KVM_VGIC_V3_REDIST_SIZE;
 else
  return rdreg->count * KVM_VGIC_V3_REDIST_SIZE;
}
