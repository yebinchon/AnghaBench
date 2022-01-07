
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vgic_its {int cmd_lock; scalar_t__ creadr; scalar_t__ cwriter; int cbaser; scalar_t__ enabled; } ;
struct kvm {int dummy; } ;
typedef int gpa_t ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int update_64bit_reg (int ,int,unsigned int,unsigned long) ;
 int vgic_sanitise_its_cbaser (int ) ;

__attribute__((used)) static void vgic_mmio_write_its_cbaser(struct kvm *kvm, struct vgic_its *its,
           gpa_t addr, unsigned int len,
           unsigned long val)
{

 if (its->enabled)
  return;

 mutex_lock(&its->cmd_lock);
 its->cbaser = update_64bit_reg(its->cbaser, addr & 7, len, val);
 its->cbaser = vgic_sanitise_its_cbaser(its->cbaser);
 its->creadr = 0;




 its->cwriter = its->creadr;
 mutex_unlock(&its->cmd_lock);
}
