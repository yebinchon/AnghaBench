
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vgic_state_iter {int nr_cpus; scalar_t__ nr_lpis; int lpi_array; int nr_spis; } ;
struct TYPE_3__ {scalar_t__ vgic_model; int nr_spis; } ;
struct TYPE_4__ {TYPE_1__ vgic; } ;
struct kvm {TYPE_2__ arch; int online_vcpus; } ;
typedef int loff_t ;


 scalar_t__ KVM_DEV_TYPE_ARM_VGIC_V3 ;
 int atomic_read (int *) ;
 int iter_next (struct vgic_state_iter*) ;
 int memset (struct vgic_state_iter*,int ,int) ;
 scalar_t__ vgic_copy_lpi_list (struct kvm*,int *,int *) ;

__attribute__((used)) static void iter_init(struct kvm *kvm, struct vgic_state_iter *iter,
        loff_t pos)
{
 int nr_cpus = atomic_read(&kvm->online_vcpus);

 memset(iter, 0, sizeof(*iter));

 iter->nr_cpus = nr_cpus;
 iter->nr_spis = kvm->arch.vgic.nr_spis;
 if (kvm->arch.vgic.vgic_model == KVM_DEV_TYPE_ARM_VGIC_V3) {
  iter->nr_lpis = vgic_copy_lpi_list(kvm, ((void*)0), &iter->lpi_array);
  if (iter->nr_lpis < 0)
   iter->nr_lpis = 0;
 }


 while (pos--)
  iter_next(iter);
}
