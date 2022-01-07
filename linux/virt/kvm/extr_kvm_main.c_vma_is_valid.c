
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int vm_flags; } ;


 int VM_READ ;
 int VM_WRITE ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static bool vma_is_valid(struct vm_area_struct *vma, bool write_fault)
{
 if (unlikely(!(vma->vm_flags & VM_READ)))
  return 0;

 if (write_fault && (unlikely(!(vma->vm_flags & VM_WRITE))))
  return 0;

 return 1;
}
