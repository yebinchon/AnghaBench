
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef scalar_t__ u32 ;
typedef int u16 ;
struct vgic_its {int dummy; } ;
struct kvm {int online_vcpus; } ;
struct its_collection {scalar_t__ target_addr; } ;


 int E_ITS_MAPC_PROCNUM_OOR ;
 scalar_t__ atomic_read (int *) ;
 struct its_collection* find_collection (struct vgic_its*,int ) ;
 int its_cmd_get_collection (int *) ;
 scalar_t__ its_cmd_get_target_addr (int *) ;
 int its_cmd_get_validbit (int *) ;
 int update_affinity_collection (struct kvm*,struct vgic_its*,struct its_collection*) ;
 int vgic_its_alloc_collection (struct vgic_its*,struct its_collection**,int ) ;
 int vgic_its_free_collection (struct vgic_its*,int ) ;
 int vgic_its_invalidate_cache (struct kvm*) ;

__attribute__((used)) static int vgic_its_cmd_handle_mapc(struct kvm *kvm, struct vgic_its *its,
        u64 *its_cmd)
{
 u16 coll_id;
 u32 target_addr;
 struct its_collection *collection;
 bool valid;

 valid = its_cmd_get_validbit(its_cmd);
 coll_id = its_cmd_get_collection(its_cmd);
 target_addr = its_cmd_get_target_addr(its_cmd);

 if (target_addr >= atomic_read(&kvm->online_vcpus))
  return E_ITS_MAPC_PROCNUM_OOR;

 if (!valid) {
  vgic_its_free_collection(its, coll_id);
  vgic_its_invalidate_cache(kvm);
 } else {
  collection = find_collection(its, coll_id);

  if (!collection) {
   int ret;

   ret = vgic_its_alloc_collection(its, &collection,
       coll_id);
   if (ret)
    return ret;
   collection->target_addr = target_addr;
  } else {
   collection->target_addr = target_addr;
   update_affinity_collection(kvm, its, collection);
  }
 }

 return 0;
}
