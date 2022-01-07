
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kvm_memslots {int* id_to_index; TYPE_1__* memslots; } ;
struct TYPE_2__ {int id; } ;


 int GFP_KERNEL_ACCOUNT ;
 int KVM_MEM_SLOTS_NUM ;
 struct kvm_memslots* kvzalloc (int,int ) ;

__attribute__((used)) static struct kvm_memslots *kvm_alloc_memslots(void)
{
 int i;
 struct kvm_memslots *slots;

 slots = kvzalloc(sizeof(struct kvm_memslots), GFP_KERNEL_ACCOUNT);
 if (!slots)
  return ((void*)0);

 for (i = 0; i < KVM_MEM_SLOTS_NUM; i++)
  slots->id_to_index[i] = slots->memslots[i].id = i;

 return slots;
}
