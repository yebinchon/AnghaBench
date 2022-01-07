
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int * vm_ops; } ;
struct file {int dummy; } ;


 int kvm_vcpu_vm_ops ;

__attribute__((used)) static int kvm_vcpu_mmap(struct file *file, struct vm_area_struct *vma)
{
 vma->vm_ops = &kvm_vcpu_vm_ops;
 return 0;
}
