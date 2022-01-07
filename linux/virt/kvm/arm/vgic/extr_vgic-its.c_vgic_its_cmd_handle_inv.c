
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct vgic_its {int dummy; } ;
struct kvm {int dummy; } ;
struct its_ite {int irq; } ;


 int E_ITS_INV_UNMAPPED_INTERRUPT ;
 struct its_ite* find_ite (struct vgic_its*,int ,int ) ;
 int its_cmd_get_deviceid (int *) ;
 int its_cmd_get_id (int *) ;
 int update_lpi_config (struct kvm*,int ,int *,int) ;

__attribute__((used)) static int vgic_its_cmd_handle_inv(struct kvm *kvm, struct vgic_its *its,
       u64 *its_cmd)
{
 u32 device_id = its_cmd_get_deviceid(its_cmd);
 u32 event_id = its_cmd_get_id(its_cmd);
 struct its_ite *ite;


 ite = find_ite(its, device_id, event_id);
 if (!ite)
  return E_ITS_INV_UNMAPPED_INTERRUPT;

 return update_lpi_config(kvm, ite->irq, ((void*)0), 1);
}
