
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int phys_addr_t ;
typedef int pgprot_t ;
typedef int pgd_t ;


 unsigned long BIT (scalar_t__) ;
 int ENOMEM ;
 size_t PAGE_ALIGN (size_t) ;
 scalar_t__ VA_BITS ;
 int __create_hyp_mappings (int *,int ,unsigned long,unsigned long,int ,int ) ;
 scalar_t__ __kvm_cpu_uses_extended_idmap () ;
 int __kvm_idmap_ptrs_per_pgd () ;
 int __phys_to_pfn (int ) ;
 int * boot_hyp_pgd ;
 int * hyp_pgd ;
 size_t io_map_base ;
 int kvm_hyp_pgd_mutex ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 unsigned long offset_in_page (int ) ;

__attribute__((used)) static int __create_hyp_private_mapping(phys_addr_t phys_addr, size_t size,
     unsigned long *haddr, pgprot_t prot)
{
 pgd_t *pgd = hyp_pgd;
 unsigned long base;
 int ret = 0;

 mutex_lock(&kvm_hyp_pgd_mutex);
 size = PAGE_ALIGN(size + offset_in_page(phys_addr));
 base = io_map_base - size;






 if ((base ^ io_map_base) & BIT(VA_BITS - 1))
  ret = -ENOMEM;
 else
  io_map_base = base;

 mutex_unlock(&kvm_hyp_pgd_mutex);

 if (ret)
  goto out;

 if (__kvm_cpu_uses_extended_idmap())
  pgd = boot_hyp_pgd;

 ret = __create_hyp_mappings(pgd, __kvm_idmap_ptrs_per_pgd(),
        base, base + size,
        __phys_to_pfn(phys_addr), prot);
 if (ret)
  goto out;

 *haddr = base + offset_in_page(phys_addr);

out:
 return ret;
}
