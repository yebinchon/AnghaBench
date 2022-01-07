
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vgic_its {scalar_t__ enabled; scalar_t__ cwriter; scalar_t__ creadr; scalar_t__ cbaser; int baser_device_table; int baser_coll_table; } ;
struct kvm {int dummy; } ;


 int GITS_BASER_VALID ;
 int vgic_its_free_collection_list (struct kvm*,struct vgic_its*) ;
 int vgic_its_free_device_list (struct kvm*,struct vgic_its*) ;

__attribute__((used)) static void vgic_its_reset(struct kvm *kvm, struct vgic_its *its)
{

 its->baser_coll_table &= ~GITS_BASER_VALID;
 its->baser_device_table &= ~GITS_BASER_VALID;
 its->cbaser = 0;
 its->creadr = 0;
 its->cwriter = 0;
 its->enabled = 0;
 vgic_its_free_device_list(kvm, its);
 vgic_its_free_collection_list(kvm, its);
}
