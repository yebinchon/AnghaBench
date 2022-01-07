
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm {int dummy; } ;


 int irqchip_in_kernel (struct kvm*) ;
 scalar_t__ static_branch_unlikely (int *) ;
 scalar_t__ unlikely (int) ;
 int userspace_irqchip_in_use ;

__attribute__((used)) static inline bool userspace_irqchip(struct kvm *kvm)
{
 return static_branch_unlikely(&userspace_irqchip_in_use) &&
  unlikely(!irqchip_in_kernel(kvm));
}
