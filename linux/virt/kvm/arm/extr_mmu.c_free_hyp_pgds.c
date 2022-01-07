
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pgd_t ;


 scalar_t__ PAGE_OFFSET ;
 scalar_t__ PAGE_SIZE ;
 int * boot_hyp_pgd ;
 int clear_page (int *) ;
 int free_page (unsigned long) ;
 int free_pages (unsigned long,int ) ;
 scalar_t__ high_memory ;
 scalar_t__ hyp_idmap_start ;
 int * hyp_pgd ;
 int hyp_pgd_order ;
 scalar_t__ io_map_base ;
 int kern_hyp_va (scalar_t__) ;
 int kvm_hyp_pgd_mutex ;
 int * merged_hyp_pgd ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int unmap_hyp_idmap_range (int *,scalar_t__,scalar_t__) ;
 int unmap_hyp_range (int *,int ,scalar_t__) ;

void free_hyp_pgds(void)
{
 pgd_t *id_pgd;

 mutex_lock(&kvm_hyp_pgd_mutex);

 id_pgd = boot_hyp_pgd ? boot_hyp_pgd : hyp_pgd;

 if (id_pgd) {

  if (!io_map_base)
   io_map_base = hyp_idmap_start;
  unmap_hyp_idmap_range(id_pgd, io_map_base,
          hyp_idmap_start + PAGE_SIZE - io_map_base);
 }

 if (boot_hyp_pgd) {
  free_pages((unsigned long)boot_hyp_pgd, hyp_pgd_order);
  boot_hyp_pgd = ((void*)0);
 }

 if (hyp_pgd) {
  unmap_hyp_range(hyp_pgd, kern_hyp_va(PAGE_OFFSET),
    (uintptr_t)high_memory - PAGE_OFFSET);

  free_pages((unsigned long)hyp_pgd, hyp_pgd_order);
  hyp_pgd = ((void*)0);
 }
 if (merged_hyp_pgd) {
  clear_page(merged_hyp_pgd);
  free_page((unsigned long)merged_hyp_pgd);
  merged_hyp_pgd = ((void*)0);
 }

 mutex_unlock(&kvm_hyp_pgd_mutex);
}
