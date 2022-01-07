
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_memory_slot {int * dirty_bitmap; } ;


 int kvfree (int *) ;

__attribute__((used)) static void kvm_destroy_dirty_bitmap(struct kvm_memory_slot *memslot)
{
 if (!memslot->dirty_bitmap)
  return;

 kvfree(memslot->dirty_bitmap);
 memslot->dirty_bitmap = ((void*)0);
}
