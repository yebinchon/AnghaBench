
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kvm {int dummy; } ;
struct TYPE_2__ {scalar_t__ has_gicv4; } ;


 TYPE_1__ kvm_vgic_global_state ;
 scalar_t__ vgic_has_its (struct kvm*) ;

bool vgic_supports_direct_msis(struct kvm *kvm)
{
 return kvm_vgic_global_state.has_gicv4 && vgic_has_its(kvm);
}
