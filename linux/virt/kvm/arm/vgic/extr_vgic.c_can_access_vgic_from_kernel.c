
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int gicv3_cpuif; } ;


 scalar_t__ has_vhe () ;
 TYPE_1__ kvm_vgic_global_state ;
 int static_branch_unlikely (int *) ;

__attribute__((used)) static inline bool can_access_vgic_from_kernel(void)
{





 return !static_branch_unlikely(&kvm_vgic_global_state.gicv3_cpuif) || has_vhe();
}
