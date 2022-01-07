
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pud_t ;
typedef int pgprot_t ;
typedef int pgd_t ;


 int ENOMEM ;
 unsigned long PAGE_ALIGN (unsigned long) ;
 unsigned long PAGE_MASK ;
 unsigned long PAGE_SHIFT ;
 int create_hyp_pud_mappings (int *,unsigned long,unsigned long,unsigned long,int ) ;
 int get_page (int ) ;
 int kvm_err (char*) ;
 int kvm_hyp_pgd_mutex ;
 int kvm_pgd_index (unsigned long,unsigned long) ;
 int kvm_pgd_populate (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 unsigned long pgd_addr_end (unsigned long,unsigned long) ;
 scalar_t__ pgd_none (int ) ;
 int * pud_alloc_one (int *,unsigned long) ;
 int virt_to_page (int *) ;

__attribute__((used)) static int __create_hyp_mappings(pgd_t *pgdp, unsigned long ptrs_per_pgd,
     unsigned long start, unsigned long end,
     unsigned long pfn, pgprot_t prot)
{
 pgd_t *pgd;
 pud_t *pud;
 unsigned long addr, next;
 int err = 0;

 mutex_lock(&kvm_hyp_pgd_mutex);
 addr = start & PAGE_MASK;
 end = PAGE_ALIGN(end);
 do {
  pgd = pgdp + kvm_pgd_index(addr, ptrs_per_pgd);

  if (pgd_none(*pgd)) {
   pud = pud_alloc_one(((void*)0), addr);
   if (!pud) {
    kvm_err("Cannot allocate Hyp pud\n");
    err = -ENOMEM;
    goto out;
   }
   kvm_pgd_populate(pgd, pud);
   get_page(virt_to_page(pgd));
  }

  next = pgd_addr_end(addr, end);
  err = create_hyp_pud_mappings(pgd, addr, next, pfn, prot);
  if (err)
   goto out;
  pfn += (next - addr) >> PAGE_SHIFT;
 } while (addr = next, addr != end);
out:
 mutex_unlock(&kvm_hyp_pgd_mutex);
 return err;
}
