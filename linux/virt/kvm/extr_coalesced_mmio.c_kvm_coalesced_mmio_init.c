
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct kvm {int coalesced_zones; int ring_lock; int coalesced_mmio_ring; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int __GFP_ZERO ;
 struct page* alloc_page (int) ;
 int page_address (struct page*) ;
 int spin_lock_init (int *) ;

int kvm_coalesced_mmio_init(struct kvm *kvm)
{
 struct page *page;
 int ret;

 ret = -ENOMEM;
 page = alloc_page(GFP_KERNEL | __GFP_ZERO);
 if (!page)
  goto out_err;

 ret = 0;
 kvm->coalesced_mmio_ring = page_address(page);






 spin_lock_init(&kvm->ring_lock);
 INIT_LIST_HEAD(&kvm->coalesced_zones);

out_err:
 return ret;
}
