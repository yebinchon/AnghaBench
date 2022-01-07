
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int on_detach; scalar_t__ resowner; scalar_t__ mapped_size; int * mapped_address; int * impl_private; int control_slot; int node; } ;
typedef TYPE_1__ dsm_segment ;


 scalar_t__ CurrentResourceOwner ;
 int INVALID_CONTROL_SLOT ;
 TYPE_1__* MemoryContextAlloc (int ,int) ;
 int ResourceOwnerEnlargeDSMs (scalar_t__) ;
 int ResourceOwnerRememberDSM (scalar_t__,TYPE_1__*) ;
 int TopMemoryContext ;
 int dlist_push_head (int *,int *) ;
 int dsm_segment_list ;
 int slist_init (int *) ;

__attribute__((used)) static dsm_segment *
dsm_create_descriptor(void)
{
 dsm_segment *seg;

 if (CurrentResourceOwner)
  ResourceOwnerEnlargeDSMs(CurrentResourceOwner);

 seg = MemoryContextAlloc(TopMemoryContext, sizeof(dsm_segment));
 dlist_push_head(&dsm_segment_list, &seg->node);


 seg->control_slot = INVALID_CONTROL_SLOT;
 seg->impl_private = ((void*)0);
 seg->mapped_address = ((void*)0);
 seg->mapped_size = 0;

 seg->resowner = CurrentResourceOwner;
 if (CurrentResourceOwner)
  ResourceOwnerRememberDSM(CurrentResourceOwner, seg);

 slist_init(&seg->on_detach);

 return seg;
}
