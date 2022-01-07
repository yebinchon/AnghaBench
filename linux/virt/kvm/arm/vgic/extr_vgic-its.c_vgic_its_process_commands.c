
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct vgic_its {scalar_t__ cwriter; scalar_t__ creadr; int cbaser; int enabled; } ;
struct kvm {int dummy; } ;
typedef scalar_t__ gpa_t ;


 scalar_t__ GITS_CBASER_ADDRESS (int ) ;
 scalar_t__ ITS_CMD_BUFFER_SIZE (int ) ;
 scalar_t__ ITS_CMD_SIZE ;
 int kvm_read_guest_lock (struct kvm*,scalar_t__,int *,scalar_t__) ;
 int vgic_its_handle_command (struct kvm*,struct vgic_its*,int *) ;

__attribute__((used)) static void vgic_its_process_commands(struct kvm *kvm, struct vgic_its *its)
{
 gpa_t cbaser;
 u64 cmd_buf[4];


 if (!its->enabled)
  return;

 cbaser = GITS_CBASER_ADDRESS(its->cbaser);

 while (its->cwriter != its->creadr) {
  int ret = kvm_read_guest_lock(kvm, cbaser + its->creadr,
           cmd_buf, ITS_CMD_SIZE);







  if (!ret)
   vgic_its_handle_command(kvm, its, cmd_buf);

  its->creadr += ITS_CMD_SIZE;
  if (its->creadr == ITS_CMD_BUFFER_SIZE(its->cbaser))
   its->creadr = 0;
 }
}
