
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_mmu_memory_cache {int member_0; } ;
struct kvm {int mmu_lock; } ;
typedef int pte_t ;
typedef unsigned long phys_addr_t ;


 int KVM_NR_MEM_OBJS ;
 int KVM_S2PTE_FLAG_IS_IOMAP ;
 unsigned long PAGE_MASK ;
 int PAGE_S2_DEVICE ;
 unsigned long PAGE_SIZE ;
 unsigned long __phys_to_pfn (unsigned long) ;
 int kvm_mmu_cache_min_pages (struct kvm*) ;
 int kvm_pfn_pte (unsigned long,int ) ;
 int kvm_s2pte_mkwrite (int ) ;
 int mmu_free_memory_cache (struct kvm_mmu_memory_cache*) ;
 int mmu_topup_memory_cache (struct kvm_mmu_memory_cache*,int ,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stage2_set_pte (struct kvm*,struct kvm_mmu_memory_cache*,unsigned long,int *,int ) ;

int kvm_phys_addr_ioremap(struct kvm *kvm, phys_addr_t guest_ipa,
     phys_addr_t pa, unsigned long size, bool writable)
{
 phys_addr_t addr, end;
 int ret = 0;
 unsigned long pfn;
 struct kvm_mmu_memory_cache cache = { 0, };

 end = (guest_ipa + size + PAGE_SIZE - 1) & PAGE_MASK;
 pfn = __phys_to_pfn(pa);

 for (addr = guest_ipa; addr < end; addr += PAGE_SIZE) {
  pte_t pte = kvm_pfn_pte(pfn, PAGE_S2_DEVICE);

  if (writable)
   pte = kvm_s2pte_mkwrite(pte);

  ret = mmu_topup_memory_cache(&cache,
          kvm_mmu_cache_min_pages(kvm),
          KVM_NR_MEM_OBJS);
  if (ret)
   goto out;
  spin_lock(&kvm->mmu_lock);
  ret = stage2_set_pte(kvm, &cache, addr, &pte,
      KVM_S2PTE_FLAG_IS_IOMAP);
  spin_unlock(&kvm->mmu_lock);
  if (ret)
   goto out;

  pfn++;
 }

out:
 mmu_free_memory_cache(&cache);
 return ret;
}
