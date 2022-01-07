
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct vgic_its {int cmd_lock; scalar_t__ creadr; int cbaser; scalar_t__ enabled; } ;
struct kvm {int dummy; } ;
typedef int gpa_t ;


 int EBUSY ;
 int EINVAL ;
 scalar_t__ ITS_CMD_BUFFER_SIZE (int ) ;
 scalar_t__ ITS_CMD_OFFSET (unsigned long) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int vgic_mmio_uaccess_write_its_creadr(struct kvm *kvm,
           struct vgic_its *its,
           gpa_t addr, unsigned int len,
           unsigned long val)
{
 u32 cmd_offset;
 int ret = 0;

 mutex_lock(&its->cmd_lock);

 if (its->enabled) {
  ret = -EBUSY;
  goto out;
 }

 cmd_offset = ITS_CMD_OFFSET(val);
 if (cmd_offset >= ITS_CMD_BUFFER_SIZE(its->cbaser)) {
  ret = -EINVAL;
  goto out;
 }

 its->creadr = cmd_offset;
out:
 mutex_unlock(&its->cmd_lock);
 return ret;
}
