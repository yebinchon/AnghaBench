
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm {int dummy; } ;
typedef int gfn_t ;


 int ZERO_PAGE (int ) ;
 scalar_t__ __va (int ) ;
 int kvm_write_guest_page (struct kvm*,int ,void const*,int,int) ;
 int page_to_phys (int ) ;

int kvm_clear_guest_page(struct kvm *kvm, gfn_t gfn, int offset, int len)
{
 const void *zero_page = (const void *) __va(page_to_phys(ZERO_PAGE(0)));

 return kvm_write_guest_page(kvm, gfn, zero_page, offset, len);
}
