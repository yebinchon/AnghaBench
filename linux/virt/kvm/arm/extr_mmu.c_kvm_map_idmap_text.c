
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pgd_t ;


 int PAGE_HYP_EXEC ;
 int __create_hyp_mappings (int *,int ,int ,int ,int ,int ) ;
 int __kvm_idmap_ptrs_per_pgd () ;
 int __phys_to_pfn (int ) ;
 int hyp_idmap_end ;
 int hyp_idmap_start ;
 int kvm_err (char*,int ,int ) ;

__attribute__((used)) static int kvm_map_idmap_text(pgd_t *pgd)
{
 int err;


 err = __create_hyp_mappings(pgd, __kvm_idmap_ptrs_per_pgd(),
          hyp_idmap_start, hyp_idmap_end,
          __phys_to_pfn(hyp_idmap_start),
          PAGE_HYP_EXEC);
 if (err)
  kvm_err("Failed to idmap %lx-%lx\n",
   hyp_idmap_start, hyp_idmap_end);

 return err;
}
