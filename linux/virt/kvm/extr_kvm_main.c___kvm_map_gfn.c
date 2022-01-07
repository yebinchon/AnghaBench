
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct kvm_memory_slot {int dummy; } ;
struct kvm_host_map {int gfn; int pfn; void* hva; struct page* page; } ;
typedef int kvm_pfn_t ;
typedef int gfn_t ;


 int EFAULT ;
 int EINVAL ;
 struct page* KVM_UNMAPPED_PAGE ;
 int MEMREMAP_WB ;
 int PAGE_SIZE ;
 int gfn_to_pfn_memslot (struct kvm_memory_slot*,int ) ;
 scalar_t__ is_error_noslot_pfn (int ) ;
 void* kmap (struct page*) ;
 void* memremap (int ,int ,int ) ;
 int pfn_to_hpa (int ) ;
 struct page* pfn_to_page (int ) ;
 scalar_t__ pfn_valid (int ) ;

__attribute__((used)) static int __kvm_map_gfn(struct kvm_memory_slot *slot, gfn_t gfn,
    struct kvm_host_map *map)
{
 kvm_pfn_t pfn;
 void *hva = ((void*)0);
 struct page *page = KVM_UNMAPPED_PAGE;

 if (!map)
  return -EINVAL;

 pfn = gfn_to_pfn_memslot(slot, gfn);
 if (is_error_noslot_pfn(pfn))
  return -EINVAL;

 if (pfn_valid(pfn)) {
  page = pfn_to_page(pfn);
  hva = kmap(page);




 }

 if (!hva)
  return -EFAULT;

 map->page = page;
 map->hva = hva;
 map->pfn = pfn;
 map->gfn = gfn;

 return 0;
}
