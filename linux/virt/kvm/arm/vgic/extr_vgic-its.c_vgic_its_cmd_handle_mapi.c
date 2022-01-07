
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct vgic_its {int dummy; } ;
struct vgic_irq {struct vgic_irq* irq; } ;
struct kvm_vcpu {int dummy; } ;
struct TYPE_3__ {int propbaser; } ;
struct TYPE_4__ {TYPE_1__ vgic; } ;
struct kvm {TYPE_2__ arch; } ;
struct its_ite {struct its_ite* irq; } ;
struct its_device {int num_eventid_bits; } ;
struct its_collection {int target_addr; } ;


 int BIT_ULL (int ) ;
 int E_ITS_MAPTI_ID_OOR ;
 int E_ITS_MAPTI_PHYSICALID_OOR ;
 int E_ITS_MAPTI_UNMAPPED_DEVICE ;
 int GIC_LPI_OFFSET ;
 scalar_t__ GITS_CMD_MAPTI ;
 scalar_t__ IS_ERR (struct vgic_irq*) ;
 int PTR_ERR (struct vgic_irq*) ;
 struct its_collection* find_collection (struct vgic_its*,int) ;
 scalar_t__ find_ite (struct vgic_its*,int,int) ;
 struct its_device* find_its_device (struct vgic_its*,int) ;
 int its_cmd_get_collection (int *) ;
 scalar_t__ its_cmd_get_command (int *) ;
 int its_cmd_get_deviceid (int *) ;
 int its_cmd_get_id (int *) ;
 int its_cmd_get_physical_id (int *) ;
 int its_free_ite (struct kvm*,struct vgic_irq*) ;
 scalar_t__ its_is_collection_mapped (struct its_collection*) ;
 struct kvm_vcpu* kvm_get_vcpu (struct kvm*,int ) ;
 int max_lpis_propbaser (int ) ;
 struct vgic_irq* vgic_add_lpi (struct kvm*,int,struct kvm_vcpu*) ;
 int vgic_its_alloc_collection (struct vgic_its*,struct its_collection**,int) ;
 struct vgic_irq* vgic_its_alloc_ite (struct its_device*,struct its_collection*,int) ;
 int vgic_its_free_collection (struct vgic_its*,int) ;

__attribute__((used)) static int vgic_its_cmd_handle_mapi(struct kvm *kvm, struct vgic_its *its,
        u64 *its_cmd)
{
 u32 device_id = its_cmd_get_deviceid(its_cmd);
 u32 event_id = its_cmd_get_id(its_cmd);
 u32 coll_id = its_cmd_get_collection(its_cmd);
 struct its_ite *ite;
 struct kvm_vcpu *vcpu = ((void*)0);
 struct its_device *device;
 struct its_collection *collection, *new_coll = ((void*)0);
 struct vgic_irq *irq;
 int lpi_nr;

 device = find_its_device(its, device_id);
 if (!device)
  return E_ITS_MAPTI_UNMAPPED_DEVICE;

 if (event_id >= BIT_ULL(device->num_eventid_bits))
  return E_ITS_MAPTI_ID_OOR;

 if (its_cmd_get_command(its_cmd) == GITS_CMD_MAPTI)
  lpi_nr = its_cmd_get_physical_id(its_cmd);
 else
  lpi_nr = event_id;
 if (lpi_nr < GIC_LPI_OFFSET ||
     lpi_nr >= max_lpis_propbaser(kvm->arch.vgic.propbaser))
  return E_ITS_MAPTI_PHYSICALID_OOR;


 if (find_ite(its, device_id, event_id))
  return 0;

 collection = find_collection(its, coll_id);
 if (!collection) {
  int ret = vgic_its_alloc_collection(its, &collection, coll_id);
  if (ret)
   return ret;
  new_coll = collection;
 }

 ite = vgic_its_alloc_ite(device, collection, event_id);
 if (IS_ERR(ite)) {
  if (new_coll)
   vgic_its_free_collection(its, coll_id);
  return PTR_ERR(ite);
 }

 if (its_is_collection_mapped(collection))
  vcpu = kvm_get_vcpu(kvm, collection->target_addr);

 irq = vgic_add_lpi(kvm, lpi_nr, vcpu);
 if (IS_ERR(irq)) {
  if (new_coll)
   vgic_its_free_collection(its, coll_id);
  its_free_ite(kvm, ite);
  return PTR_ERR(irq);
 }
 ite->irq = irq;

 return 0;
}
