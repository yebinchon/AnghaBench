
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct vgic_its {int cmd_lock; scalar_t__ cwriter; int cbaser; } ;
struct kvm {int dummy; } ;
typedef int gpa_t ;


 scalar_t__ ITS_CMD_BUFFER_SIZE (int ) ;
 scalar_t__ ITS_CMD_OFFSET (scalar_t__) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ update_64bit_reg (scalar_t__,int,unsigned int,unsigned long) ;
 int vgic_its_process_commands (struct kvm*,struct vgic_its*) ;

__attribute__((used)) static void vgic_mmio_write_its_cwriter(struct kvm *kvm, struct vgic_its *its,
     gpa_t addr, unsigned int len,
     unsigned long val)
{
 u64 reg;

 if (!its)
  return;

 mutex_lock(&its->cmd_lock);

 reg = update_64bit_reg(its->cwriter, addr & 7, len, val);
 reg = ITS_CMD_OFFSET(reg);
 if (reg >= ITS_CMD_BUFFER_SIZE(its->cbaser)) {
  mutex_unlock(&its->cmd_lock);
  return;
 }
 its->cwriter = reg;

 vgic_its_process_commands(kvm, its);

 mutex_unlock(&its->cmd_lock);
}
