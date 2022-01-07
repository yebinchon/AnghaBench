
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct its_ite {int ite_list; struct its_collection* collection; int event_id; } ;
struct its_device {int itt_head; } ;
struct its_collection {int dummy; } ;


 int ENOMEM ;
 struct its_ite* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 struct its_ite* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;

__attribute__((used)) static struct its_ite *vgic_its_alloc_ite(struct its_device *device,
       struct its_collection *collection,
       u32 event_id)
{
 struct its_ite *ite;

 ite = kzalloc(sizeof(*ite), GFP_KERNEL);
 if (!ite)
  return ERR_PTR(-ENOMEM);

 ite->event_id = event_id;
 ite->collection = collection;

 list_add_tail(&ite->ite_list, &device->itt_head);
 return ite;
}
