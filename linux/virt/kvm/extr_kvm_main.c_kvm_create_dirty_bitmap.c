
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_memory_slot {int dirty_bitmap; } ;


 int ENOMEM ;
 int GFP_KERNEL_ACCOUNT ;
 int kvm_dirty_bitmap_bytes (struct kvm_memory_slot*) ;
 int kvzalloc (unsigned long,int ) ;

__attribute__((used)) static int kvm_create_dirty_bitmap(struct kvm_memory_slot *memslot)
{
 unsigned long dirty_bytes = 2 * kvm_dirty_bitmap_bytes(memslot);

 memslot->dirty_bitmap = kvzalloc(dirty_bytes, GFP_KERNEL_ACCOUNT);
 if (!memslot->dirty_bitmap)
  return -ENOMEM;

 return 0;
}
