
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct kvm {int dummy; } ;
typedef int gpa_t ;


 int unmap_stage2_range (struct kvm*,int ,int ) ;

__attribute__((used)) static int kvm_unmap_hva_handler(struct kvm *kvm, gpa_t gpa, u64 size, void *data)
{
 unmap_stage2_range(kvm, gpa, size);
 return 0;
}
