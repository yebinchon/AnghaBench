
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct vgic_its {int collection_list; int baser_coll_table; } ;
struct its_collection {int coll_list; int target_addr; int collection_id; } ;


 int COLLECTION_NOT_MAPPED ;
 int ENOMEM ;
 int E_ITS_MAPC_COLLECTION_OOR ;
 int GFP_KERNEL ;
 struct its_collection* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int vgic_its_check_id (struct vgic_its*,int ,int ,int *) ;

__attribute__((used)) static int vgic_its_alloc_collection(struct vgic_its *its,
         struct its_collection **colp,
         u32 coll_id)
{
 struct its_collection *collection;

 if (!vgic_its_check_id(its, its->baser_coll_table, coll_id, ((void*)0)))
  return E_ITS_MAPC_COLLECTION_OOR;

 collection = kzalloc(sizeof(*collection), GFP_KERNEL);
 if (!collection)
  return -ENOMEM;

 collection->collection_id = coll_id;
 collection->target_addr = COLLECTION_NOT_MAPPED;

 list_add_tail(&collection->coll_list, &its->collection_list);
 *colp = collection;

 return 0;
}
