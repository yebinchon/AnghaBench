
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vm_area_struct {int vm_flags; } ;
typedef int kvm_pfn_t ;
struct TYPE_4__ {TYPE_1__* mm; } ;
struct TYPE_3__ {int mmap_sem; } ;


 int BUG_ON (int ) ;
 int EAGAIN ;
 int EHWPOISON ;
 int KVM_PFN_ERR_FAULT ;
 int KVM_PFN_ERR_HWPOISON ;
 int VM_IO ;
 int VM_PFNMAP ;
 scalar_t__ check_user_page_hwpoison (unsigned long) ;
 TYPE_2__* current ;
 int down_read (int *) ;
 struct vm_area_struct* find_vma_intersection (TYPE_1__*,unsigned long,unsigned long) ;
 scalar_t__ hva_to_pfn_fast (unsigned long,int,int*,int *) ;
 int hva_to_pfn_remapped (struct vm_area_struct*,unsigned long,int*,int,int*,int *) ;
 int hva_to_pfn_slow (unsigned long,int*,int,int*,int *) ;
 int up_read (int *) ;
 scalar_t__ vma_is_valid (struct vm_area_struct*,int) ;

__attribute__((used)) static kvm_pfn_t hva_to_pfn(unsigned long addr, bool atomic, bool *async,
   bool write_fault, bool *writable)
{
 struct vm_area_struct *vma;
 kvm_pfn_t pfn = 0;
 int npages, r;


 BUG_ON(atomic && async);

 if (hva_to_pfn_fast(addr, write_fault, writable, &pfn))
  return pfn;

 if (atomic)
  return KVM_PFN_ERR_FAULT;

 npages = hva_to_pfn_slow(addr, async, write_fault, writable, &pfn);
 if (npages == 1)
  return pfn;

 down_read(&current->mm->mmap_sem);
 if (npages == -EHWPOISON ||
       (!async && check_user_page_hwpoison(addr))) {
  pfn = KVM_PFN_ERR_HWPOISON;
  goto exit;
 }

retry:
 vma = find_vma_intersection(current->mm, addr, addr + 1);

 if (vma == ((void*)0))
  pfn = KVM_PFN_ERR_FAULT;
 else if (vma->vm_flags & (VM_IO | VM_PFNMAP)) {
  r = hva_to_pfn_remapped(vma, addr, async, write_fault, writable, &pfn);
  if (r == -EAGAIN)
   goto retry;
  if (r < 0)
   pfn = KVM_PFN_ERR_FAULT;
 } else {
  if (async && vma_is_valid(vma, write_fault))
   *async = 1;
  pfn = KVM_PFN_ERR_FAULT;
 }
exit:
 up_read(&current->mm->mmap_sem);
 return pfn;
}
