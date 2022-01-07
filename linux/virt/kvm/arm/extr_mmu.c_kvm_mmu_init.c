
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pgd_t ;


 int ALIGN (int,int ) ;
 int ALIGN_DOWN (int,int ) ;
 int BUG_ON (int) ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int PAGE_MASK ;
 unsigned long PAGE_OFFSET ;
 int PAGE_SIZE ;
 int __GFP_ZERO ;
 scalar_t__ __get_free_page (int) ;
 scalar_t__ __get_free_pages (int,int ) ;
 scalar_t__ __hyp_idmap_text_end ;
 scalar_t__ __hyp_idmap_text_start ;
 scalar_t__ __kvm_cpu_uses_extended_idmap () ;
 int __kvm_extend_hypmap (int *,int *,int *,int) ;
 scalar_t__ __kvm_hyp_init ;
 int * boot_hyp_pgd ;
 int free_hyp_pgds () ;
 scalar_t__ high_memory ;
 int hyp_idmap_end ;
 int hyp_idmap_start ;
 void* hyp_idmap_vector ;
 int * hyp_pgd ;
 int hyp_pgd_order ;
 int io_map_base ;
 int kern_hyp_va (unsigned long) ;
 int kvm_debug (char*,int,...) ;
 int kvm_err (char*) ;
 int kvm_map_idmap_text (int *) ;
 void* kvm_virt_to_phys (scalar_t__) ;
 int * merged_hyp_pgd ;

int kvm_mmu_init(void)
{
 int err;

 hyp_idmap_start = kvm_virt_to_phys(__hyp_idmap_text_start);
 hyp_idmap_start = ALIGN_DOWN(hyp_idmap_start, PAGE_SIZE);
 hyp_idmap_end = kvm_virt_to_phys(__hyp_idmap_text_end);
 hyp_idmap_end = ALIGN(hyp_idmap_end, PAGE_SIZE);
 hyp_idmap_vector = kvm_virt_to_phys(__kvm_hyp_init);





 BUG_ON((hyp_idmap_start ^ (hyp_idmap_end - 1)) & PAGE_MASK);

 kvm_debug("IDMAP page: %lx\n", hyp_idmap_start);
 kvm_debug("HYP VA range: %lx:%lx\n",
    kern_hyp_va(PAGE_OFFSET),
    kern_hyp_va((unsigned long)high_memory - 1));

 if (hyp_idmap_start >= kern_hyp_va(PAGE_OFFSET) &&
     hyp_idmap_start < kern_hyp_va((unsigned long)high_memory - 1) &&
     hyp_idmap_start != (unsigned long)__hyp_idmap_text_start) {




  kvm_err("IDMAP intersecting with HYP VA, unable to continue\n");
  err = -EINVAL;
  goto out;
 }

 hyp_pgd = (pgd_t *)__get_free_pages(GFP_KERNEL | __GFP_ZERO, hyp_pgd_order);
 if (!hyp_pgd) {
  kvm_err("Hyp mode PGD not allocated\n");
  err = -ENOMEM;
  goto out;
 }

 if (__kvm_cpu_uses_extended_idmap()) {
  boot_hyp_pgd = (pgd_t *)__get_free_pages(GFP_KERNEL | __GFP_ZERO,
        hyp_pgd_order);
  if (!boot_hyp_pgd) {
   kvm_err("Hyp boot PGD not allocated\n");
   err = -ENOMEM;
   goto out;
  }

  err = kvm_map_idmap_text(boot_hyp_pgd);
  if (err)
   goto out;

  merged_hyp_pgd = (pgd_t *)__get_free_page(GFP_KERNEL | __GFP_ZERO);
  if (!merged_hyp_pgd) {
   kvm_err("Failed to allocate extra HYP pgd\n");
   goto out;
  }
  __kvm_extend_hypmap(boot_hyp_pgd, hyp_pgd, merged_hyp_pgd,
        hyp_idmap_start);
 } else {
  err = kvm_map_idmap_text(hyp_pgd);
  if (err)
   goto out;
 }

 io_map_base = hyp_idmap_start;
 return 0;
out:
 free_hyp_pgds();
 return err;
}
