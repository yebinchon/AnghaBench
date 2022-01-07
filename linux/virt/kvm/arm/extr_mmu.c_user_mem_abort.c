
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct vm_area_struct {int dummy; } ;
struct kvm_mmu_memory_cache {int dummy; } ;
struct TYPE_4__ {struct kvm_mmu_memory_cache mmu_page_cache; } ;
struct kvm_vcpu {struct kvm* kvm; TYPE_1__ arch; } ;
struct kvm_memory_slot {int dummy; } ;
struct kvm {unsigned long mmu_notifier_seq; int mmu_lock; } ;
typedef int pud_t ;
typedef int pte_t ;
typedef int pmd_t ;
typedef int phys_addr_t ;
typedef int pgprot_t ;
typedef scalar_t__ kvm_pfn_t ;
typedef int gfn_t ;
struct TYPE_6__ {TYPE_2__* mm; } ;
struct TYPE_5__ {int mmap_sem; } ;


 int EFAULT ;
 unsigned long FSC_PERM ;
 int KVM_NR_MEM_OBJS ;
 scalar_t__ KVM_PFN_ERR_HWPOISON ;
 unsigned long KVM_S2PTE_FLAG_IS_IOMAP ;
 unsigned long KVM_S2_FLAG_LOGGING_ACTIVE ;
 int PAGE_S2 ;
 int PAGE_S2_DEVICE ;
 int PAGE_SHIFT ;
 unsigned long PAGE_SIZE ;
 unsigned long PMD_SIZE ;
 unsigned long PUD_SIZE ;
 int VM_BUG_ON (int) ;
 int clean_dcache_guest_page (scalar_t__,unsigned long) ;
 TYPE_3__* current ;
 int down_read (int *) ;
 scalar_t__ fault_supports_stage2_huge_mapping (struct kvm_memory_slot*,unsigned long,unsigned long) ;
 struct vm_area_struct* find_vma_intersection (TYPE_2__*,unsigned long,unsigned long) ;
 scalar_t__ gfn_to_pfn_prot (struct kvm*,int,int,int*) ;
 int hstate_vma (struct vm_area_struct*) ;
 int huge_page_mask (int ) ;
 int invalidate_icache_guest_page (scalar_t__,unsigned long) ;
 scalar_t__ is_error_noslot_pfn (scalar_t__) ;
 int kvm_err (char*,...) ;
 scalar_t__ kvm_is_device_pfn (scalar_t__) ;
 int kvm_is_write_fault (struct kvm_vcpu*) ;
 int kvm_mmu_cache_min_pages (struct kvm*) ;
 int kvm_pfn_pmd (scalar_t__,int ) ;
 int kvm_pfn_pte (scalar_t__,int ) ;
 int kvm_pfn_pud (scalar_t__,int ) ;
 int kvm_pmd_mkhuge (int ) ;
 int kvm_pud_mkhuge (int ) ;
 int kvm_release_pfn_clean (scalar_t__) ;
 int kvm_s2pmd_mkexec (int ) ;
 int kvm_s2pmd_mkwrite (int ) ;
 int kvm_s2pte_mkexec (int ) ;
 int kvm_s2pte_mkwrite (int ) ;
 int kvm_s2pud_mkexec (int ) ;
 int kvm_s2pud_mkwrite (int ) ;
 int kvm_send_hwpoison_signal (unsigned long,struct vm_area_struct*) ;
 int kvm_set_pfn_accessed (scalar_t__) ;
 int kvm_set_pfn_dirty (scalar_t__) ;
 scalar_t__ kvm_stage2_has_pmd (struct kvm*) ;
 int kvm_vcpu_trap_is_iabt (struct kvm_vcpu*) ;
 int mark_page_dirty (struct kvm*,int) ;
 int memslot_is_logging (struct kvm_memory_slot*) ;
 scalar_t__ mmu_notifier_retry (struct kvm*,unsigned long) ;
 int mmu_topup_memory_cache (struct kvm_mmu_memory_cache*,int ,int ) ;
 int smp_rmb () ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ stage2_is_exec (struct kvm*,int) ;
 int stage2_set_pmd_huge (struct kvm*,struct kvm_mmu_memory_cache*,int,int *) ;
 int stage2_set_pte (struct kvm*,struct kvm_mmu_memory_cache*,int,int *,unsigned long) ;
 int stage2_set_pud_huge (struct kvm*,struct kvm_mmu_memory_cache*,int,int *) ;
 scalar_t__ transparent_hugepage_adjust (scalar_t__*,int*) ;
 scalar_t__ unlikely (int) ;
 int up_read (int *) ;
 unsigned long vma_kernel_pagesize (struct vm_area_struct*) ;

__attribute__((used)) static int user_mem_abort(struct kvm_vcpu *vcpu, phys_addr_t fault_ipa,
     struct kvm_memory_slot *memslot, unsigned long hva,
     unsigned long fault_status)
{
 int ret;
 bool write_fault, writable, force_pte = 0;
 bool exec_fault, needs_exec;
 unsigned long mmu_seq;
 gfn_t gfn = fault_ipa >> PAGE_SHIFT;
 struct kvm *kvm = vcpu->kvm;
 struct kvm_mmu_memory_cache *memcache = &vcpu->arch.mmu_page_cache;
 struct vm_area_struct *vma;
 kvm_pfn_t pfn;
 pgprot_t mem_type = PAGE_S2;
 bool logging_active = memslot_is_logging(memslot);
 unsigned long vma_pagesize, flags = 0;

 write_fault = kvm_is_write_fault(vcpu);
 exec_fault = kvm_vcpu_trap_is_iabt(vcpu);
 VM_BUG_ON(write_fault && exec_fault);

 if (fault_status == FSC_PERM && !write_fault && !exec_fault) {
  kvm_err("Unexpected L2 read permission error\n");
  return -EFAULT;
 }


 down_read(&current->mm->mmap_sem);
 vma = find_vma_intersection(current->mm, hva, hva + 1);
 if (unlikely(!vma)) {
  kvm_err("Failed to find VMA for hva 0x%lx\n", hva);
  up_read(&current->mm->mmap_sem);
  return -EFAULT;
 }

 vma_pagesize = vma_kernel_pagesize(vma);
 if (logging_active ||
     !fault_supports_stage2_huge_mapping(memslot, hva, vma_pagesize)) {
  force_pte = 1;
  vma_pagesize = PAGE_SIZE;
 }
 if (vma_pagesize == PMD_SIZE ||
     (vma_pagesize == PUD_SIZE && kvm_stage2_has_pmd(kvm)))
  gfn = (fault_ipa & huge_page_mask(hstate_vma(vma))) >> PAGE_SHIFT;
 up_read(&current->mm->mmap_sem);


 ret = mmu_topup_memory_cache(memcache, kvm_mmu_cache_min_pages(kvm),
         KVM_NR_MEM_OBJS);
 if (ret)
  return ret;

 mmu_seq = vcpu->kvm->mmu_notifier_seq;
 smp_rmb();

 pfn = gfn_to_pfn_prot(kvm, gfn, write_fault, &writable);
 if (pfn == KVM_PFN_ERR_HWPOISON) {
  kvm_send_hwpoison_signal(hva, vma);
  return 0;
 }
 if (is_error_noslot_pfn(pfn))
  return -EFAULT;

 if (kvm_is_device_pfn(pfn)) {
  mem_type = PAGE_S2_DEVICE;
  flags |= KVM_S2PTE_FLAG_IS_IOMAP;
 } else if (logging_active) {





  flags |= KVM_S2_FLAG_LOGGING_ACTIVE;





  if (!write_fault)
   writable = 0;
 }

 spin_lock(&kvm->mmu_lock);
 if (mmu_notifier_retry(kvm, mmu_seq))
  goto out_unlock;

 if (vma_pagesize == PAGE_SIZE && !force_pte) {
  if (fault_supports_stage2_huge_mapping(memslot, hva, PMD_SIZE) &&
      transparent_hugepage_adjust(&pfn, &fault_ipa))
   vma_pagesize = PMD_SIZE;
 }

 if (writable)
  kvm_set_pfn_dirty(pfn);

 if (fault_status != FSC_PERM)
  clean_dcache_guest_page(pfn, vma_pagesize);

 if (exec_fault)
  invalidate_icache_guest_page(pfn, vma_pagesize);
 needs_exec = exec_fault ||
  (fault_status == FSC_PERM && stage2_is_exec(kvm, fault_ipa));

 if (vma_pagesize == PUD_SIZE) {
  pud_t new_pud = kvm_pfn_pud(pfn, mem_type);

  new_pud = kvm_pud_mkhuge(new_pud);
  if (writable)
   new_pud = kvm_s2pud_mkwrite(new_pud);

  if (needs_exec)
   new_pud = kvm_s2pud_mkexec(new_pud);

  ret = stage2_set_pud_huge(kvm, memcache, fault_ipa, &new_pud);
 } else if (vma_pagesize == PMD_SIZE) {
  pmd_t new_pmd = kvm_pfn_pmd(pfn, mem_type);

  new_pmd = kvm_pmd_mkhuge(new_pmd);

  if (writable)
   new_pmd = kvm_s2pmd_mkwrite(new_pmd);

  if (needs_exec)
   new_pmd = kvm_s2pmd_mkexec(new_pmd);

  ret = stage2_set_pmd_huge(kvm, memcache, fault_ipa, &new_pmd);
 } else {
  pte_t new_pte = kvm_pfn_pte(pfn, mem_type);

  if (writable) {
   new_pte = kvm_s2pte_mkwrite(new_pte);
   mark_page_dirty(kvm, gfn);
  }

  if (needs_exec)
   new_pte = kvm_s2pte_mkexec(new_pte);

  ret = stage2_set_pte(kvm, memcache, fault_ipa, &new_pte, flags);
 }

out_unlock:
 spin_unlock(&kvm->mmu_lock);
 kvm_set_pfn_accessed(pfn);
 kvm_release_pfn_clean(pfn);
 return ret;
}
