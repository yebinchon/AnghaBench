
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct vgic_its {int its_lock; } ;
struct kvm {int dummy; } ;


 int ENODEV ;
 int its_cmd_get_command (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int vgic_its_cmd_handle_clear (struct kvm*,struct vgic_its*,int *) ;
 int vgic_its_cmd_handle_discard (struct kvm*,struct vgic_its*,int *) ;
 int vgic_its_cmd_handle_int (struct kvm*,struct vgic_its*,int *) ;
 int vgic_its_cmd_handle_inv (struct kvm*,struct vgic_its*,int *) ;
 int vgic_its_cmd_handle_invall (struct kvm*,struct vgic_its*,int *) ;
 int vgic_its_cmd_handle_mapc (struct kvm*,struct vgic_its*,int *) ;
 int vgic_its_cmd_handle_mapd (struct kvm*,struct vgic_its*,int *) ;
 int vgic_its_cmd_handle_mapi (struct kvm*,struct vgic_its*,int *) ;
 int vgic_its_cmd_handle_movall (struct kvm*,struct vgic_its*,int *) ;
 int vgic_its_cmd_handle_movi (struct kvm*,struct vgic_its*,int *) ;

__attribute__((used)) static int vgic_its_handle_command(struct kvm *kvm, struct vgic_its *its,
       u64 *its_cmd)
{
 int ret = -ENODEV;

 mutex_lock(&its->its_lock);
 switch (its_cmd_get_command(its_cmd)) {
 case 133:
  ret = vgic_its_cmd_handle_mapd(kvm, its, its_cmd);
  break;
 case 134:
  ret = vgic_its_cmd_handle_mapc(kvm, its, its_cmd);
  break;
 case 132:
  ret = vgic_its_cmd_handle_mapi(kvm, its, its_cmd);
  break;
 case 131:
  ret = vgic_its_cmd_handle_mapi(kvm, its, its_cmd);
  break;
 case 129:
  ret = vgic_its_cmd_handle_movi(kvm, its, its_cmd);
  break;
 case 138:
  ret = vgic_its_cmd_handle_discard(kvm, its, its_cmd);
  break;
 case 139:
  ret = vgic_its_cmd_handle_clear(kvm, its, its_cmd);
  break;
 case 130:
  ret = vgic_its_cmd_handle_movall(kvm, its, its_cmd);
  break;
 case 137:
  ret = vgic_its_cmd_handle_int(kvm, its, its_cmd);
  break;
 case 136:
  ret = vgic_its_cmd_handle_inv(kvm, its, its_cmd);
  break;
 case 135:
  ret = vgic_its_cmd_handle_invall(kvm, its, its_cmd);
  break;
 case 128:

  ret = 0;
  break;
 }
 mutex_unlock(&its->its_lock);

 return ret;
}
