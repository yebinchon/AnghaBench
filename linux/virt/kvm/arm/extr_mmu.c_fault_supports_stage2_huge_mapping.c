
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_memory_slot {size_t npages; unsigned long base_gfn; size_t userspace_addr; } ;
typedef size_t hva_t ;
typedef unsigned long gpa_t ;


 unsigned long PAGE_SHIFT ;
 size_t PAGE_SIZE ;

__attribute__((used)) static bool fault_supports_stage2_huge_mapping(struct kvm_memory_slot *memslot,
            unsigned long hva,
            unsigned long map_size)
{
 gpa_t gpa_start;
 hva_t uaddr_start, uaddr_end;
 size_t size;

 size = memslot->npages * PAGE_SIZE;

 gpa_start = memslot->base_gfn << PAGE_SHIFT;

 uaddr_start = memslot->userspace_addr;
 uaddr_end = uaddr_start + size;
 if ((gpa_start & (map_size - 1)) != (uaddr_start & (map_size - 1)))
  return 0;
 return (hva & ~(map_size - 1)) >= uaddr_start &&
        (hva & ~(map_size - 1)) + map_size <= uaddr_end;
}
