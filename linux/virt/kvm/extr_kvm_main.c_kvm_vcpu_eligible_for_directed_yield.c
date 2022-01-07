
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ dy_eligible; scalar_t__ in_spin_loop; } ;
struct kvm_vcpu {TYPE_1__ spin_loop; } ;


 int kvm_vcpu_set_dy_eligible (struct kvm_vcpu*,int) ;

__attribute__((used)) static bool kvm_vcpu_eligible_for_directed_yield(struct kvm_vcpu *vcpu)
{
 return 1;

}
