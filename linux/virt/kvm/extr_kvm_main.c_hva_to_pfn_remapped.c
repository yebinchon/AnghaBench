
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct vm_area_struct {int dummy; } ;
typedef unsigned long kvm_pfn_t ;
struct TYPE_3__ {int mm; } ;


 int EAGAIN ;
 int FAULT_FLAG_WRITE ;
 TYPE_1__* current ;
 int fixup_user_fault (TYPE_1__*,int ,unsigned long,int ,int*) ;
 int follow_pfn (struct vm_area_struct*,unsigned long,unsigned long*) ;
 int kvm_get_pfn (unsigned long) ;

__attribute__((used)) static int hva_to_pfn_remapped(struct vm_area_struct *vma,
          unsigned long addr, bool *async,
          bool write_fault, bool *writable,
          kvm_pfn_t *p_pfn)
{
 unsigned long pfn;
 int r;

 r = follow_pfn(vma, addr, &pfn);
 if (r) {




  bool unlocked = 0;
  r = fixup_user_fault(current, current->mm, addr,
         (write_fault ? FAULT_FLAG_WRITE : 0),
         &unlocked);
  if (unlocked)
   return -EAGAIN;
  if (r)
   return r;

  r = follow_pfn(vma, addr, &pfn);
  if (r)
   return r;

 }

 if (writable)
  *writable = 1;
 kvm_get_pfn(pfn);

 *p_pfn = pfn;
 return 0;
}
