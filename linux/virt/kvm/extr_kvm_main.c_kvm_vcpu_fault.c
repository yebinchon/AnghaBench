
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int vm_fault_t ;
struct vm_fault {scalar_t__ pgoff; struct page* page; TYPE_4__* vma; } ;
struct page {int dummy; } ;
struct TYPE_5__ {int pio_data; } ;
struct kvm_vcpu {TYPE_2__* kvm; TYPE_1__ arch; int run; } ;
struct TYPE_8__ {TYPE_3__* vm_file; } ;
struct TYPE_7__ {struct kvm_vcpu* private_data; } ;
struct TYPE_6__ {int coalesced_mmio_ring; } ;


 scalar_t__ KVM_COALESCED_MMIO_PAGE_OFFSET ;
 scalar_t__ KVM_PIO_PAGE_OFFSET ;
 int get_page (struct page*) ;
 int kvm_arch_vcpu_fault (struct kvm_vcpu*,struct vm_fault*) ;
 struct page* virt_to_page (int ) ;

__attribute__((used)) static vm_fault_t kvm_vcpu_fault(struct vm_fault *vmf)
{
 struct kvm_vcpu *vcpu = vmf->vma->vm_file->private_data;
 struct page *page;

 if (vmf->pgoff == 0)
  page = virt_to_page(vcpu->run);
 else
  return kvm_arch_vcpu_fault(vcpu, vmf);
 get_page(page);
 vmf->page = page;
 return 0;
}
