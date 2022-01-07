
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;
struct kvm_host_map {int * page; int * hva; int pfn; int gfn; } ;


 int * KVM_UNMAPPED_PAGE ;
 int kunmap (int *) ;
 int kvm_release_pfn_clean (int ) ;
 int kvm_release_pfn_dirty (int ) ;
 int kvm_vcpu_mark_page_dirty (struct kvm_vcpu*,int ) ;
 int memunmap (int *) ;

void kvm_vcpu_unmap(struct kvm_vcpu *vcpu, struct kvm_host_map *map,
      bool dirty)
{
 if (!map)
  return;

 if (!map->hva)
  return;

 if (map->page != KVM_UNMAPPED_PAGE)
  kunmap(map->page);





 if (dirty) {
  kvm_vcpu_mark_page_dirty(vcpu, map->gfn);
  kvm_release_pfn_dirty(map->pfn);
 } else {
  kvm_release_pfn_clean(map->pfn);
 }

 map->hva = ((void*)0);
 map->page = ((void*)0);
}
