
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ phys_addr_t ;


 int BUG_ON (int) ;
 scalar_t__ __pa (void*) ;
 int is_vmalloc_addr (void*) ;
 scalar_t__ offset_in_page (void*) ;
 scalar_t__ page_to_phys (int ) ;
 int virt_addr_valid (void*) ;
 int vmalloc_to_page (void*) ;

__attribute__((used)) static phys_addr_t kvm_kaddr_to_phys(void *kaddr)
{
 if (!is_vmalloc_addr(kaddr)) {
  BUG_ON(!virt_addr_valid(kaddr));
  return __pa(kaddr);
 } else {
  return page_to_phys(vmalloc_to_page(kaddr)) +
         offset_in_page(kaddr);
 }
}
