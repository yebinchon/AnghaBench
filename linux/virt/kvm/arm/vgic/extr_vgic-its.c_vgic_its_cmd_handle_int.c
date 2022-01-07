
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct vgic_its {int dummy; } ;
struct kvm {int dummy; } ;


 int its_cmd_get_deviceid (int *) ;
 int its_cmd_get_id (int *) ;
 int vgic_its_trigger_msi (struct kvm*,struct vgic_its*,int ,int ) ;

__attribute__((used)) static int vgic_its_cmd_handle_int(struct kvm *kvm, struct vgic_its *its,
       u64 *its_cmd)
{
 u32 msi_data = its_cmd_get_id(its_cmd);
 u64 msi_devid = its_cmd_get_deviceid(its_cmd);

 return vgic_its_trigger_msi(kvm, its, msi_devid, msi_data);
}
