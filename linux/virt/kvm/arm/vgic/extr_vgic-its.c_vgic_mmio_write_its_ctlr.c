
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vgic_its {int enabled; int baser_device_table; int baser_coll_table; int cbaser; int cmd_lock; } ;
struct kvm {int dummy; } ;
typedef int gpa_t ;


 int GITS_BASER_VALID ;
 int GITS_CBASER_VALID ;
 unsigned long GITS_CTLR_ENABLE ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int vgic_its_invalidate_cache (struct kvm*) ;
 int vgic_its_process_commands (struct kvm*,struct vgic_its*) ;

__attribute__((used)) static void vgic_mmio_write_its_ctlr(struct kvm *kvm, struct vgic_its *its,
         gpa_t addr, unsigned int len,
         unsigned long val)
{
 mutex_lock(&its->cmd_lock);





 if (!its->enabled && (val & GITS_CTLR_ENABLE) &&
  (!(its->baser_device_table & GITS_BASER_VALID) ||
   !(its->baser_coll_table & GITS_BASER_VALID) ||
   !(its->cbaser & GITS_CBASER_VALID)))
  goto out;

 its->enabled = !!(val & GITS_CTLR_ENABLE);
 if (!its->enabled)
  vgic_its_invalidate_cache(kvm);





 vgic_its_process_commands(kvm, its);

out:
 mutex_unlock(&its->cmd_lock);
}
