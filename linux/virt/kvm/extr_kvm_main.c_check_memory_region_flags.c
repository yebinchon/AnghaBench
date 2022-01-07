
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct kvm_userspace_memory_region {int flags; } ;


 int EINVAL ;
 int KVM_MEM_LOG_DIRTY_PAGES ;
 int KVM_MEM_READONLY ;

__attribute__((used)) static int check_memory_region_flags(const struct kvm_userspace_memory_region *mem)
{
 u32 valid_flags = KVM_MEM_LOG_DIRTY_PAGES;





 if (mem->flags & ~valid_flags)
  return -EINVAL;

 return 0;
}
