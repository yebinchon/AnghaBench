
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vm_area_struct {scalar_t__ vm_start; int vm_flags; int vm_end; } ;
struct kvm_memory_slot {scalar_t__ userspace_addr; scalar_t__ base_gfn; scalar_t__ npages; } ;
struct kvm {int dummy; } ;
typedef scalar_t__ phys_addr_t ;
typedef scalar_t__ hva_t ;
typedef scalar_t__ gpa_t ;
struct TYPE_2__ {int mm; } ;


 scalar_t__ PAGE_SHIFT ;
 scalar_t__ PAGE_SIZE ;
 int VM_PFNMAP ;
 TYPE_1__* current ;
 struct vm_area_struct* find_vma (int ,scalar_t__) ;
 scalar_t__ max (scalar_t__,scalar_t__) ;
 scalar_t__ min (scalar_t__,int ) ;
 int unmap_stage2_range (struct kvm*,scalar_t__,scalar_t__) ;

__attribute__((used)) static void stage2_unmap_memslot(struct kvm *kvm,
     struct kvm_memory_slot *memslot)
{
 hva_t hva = memslot->userspace_addr;
 phys_addr_t addr = memslot->base_gfn << PAGE_SHIFT;
 phys_addr_t size = PAGE_SIZE * memslot->npages;
 hva_t reg_end = hva + size;
 do {
  struct vm_area_struct *vma = find_vma(current->mm, hva);
  hva_t vm_start, vm_end;

  if (!vma || vma->vm_start >= reg_end)
   break;




  vm_start = max(hva, vma->vm_start);
  vm_end = min(reg_end, vma->vm_end);

  if (!(vma->vm_flags & VM_PFNMAP)) {
   gpa_t gpa = addr + (vm_start - memslot->userspace_addr);
   unmap_stage2_range(kvm, gpa, vm_end - vm_start);
  }
  hva = vm_end;
 } while (hva < reg_end);
}
