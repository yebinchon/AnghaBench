
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vgic_irq {int group; int mpidr; int targets; int refcount; struct kvm_vcpu* target_vcpu; int * vcpu; int irq_lock; int ap_list; scalar_t__ intid; } ;
struct vgic_dist {int vgic_model; struct vgic_irq* spis; } ;
struct kvm_vcpu {int dummy; } ;
struct TYPE_2__ {struct vgic_dist vgic; } ;
struct kvm {TYPE_1__ arch; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;


 scalar_t__ VGIC_NR_PRIVATE_IRQS ;
 struct vgic_irq* kcalloc (unsigned int,int,int ) ;
 int kfree (struct vgic_irq*) ;
 int kref_init (int *) ;
 struct kvm_vcpu* kvm_get_vcpu (struct kvm*,int ) ;
 int raw_spin_lock_init (int *) ;

__attribute__((used)) static int kvm_vgic_dist_init(struct kvm *kvm, unsigned int nr_spis)
{
 struct vgic_dist *dist = &kvm->arch.vgic;
 struct kvm_vcpu *vcpu0 = kvm_get_vcpu(kvm, 0);
 int i;

 dist->spis = kcalloc(nr_spis, sizeof(struct vgic_irq), GFP_KERNEL);
 if (!dist->spis)
  return -ENOMEM;
 for (i = 0; i < nr_spis; i++) {
  struct vgic_irq *irq = &dist->spis[i];

  irq->intid = i + VGIC_NR_PRIVATE_IRQS;
  INIT_LIST_HEAD(&irq->ap_list);
  raw_spin_lock_init(&irq->irq_lock);
  irq->vcpu = ((void*)0);
  irq->target_vcpu = vcpu0;
  kref_init(&irq->refcount);
  switch (dist->vgic_model) {
  case 129:
   irq->targets = 0;
   irq->group = 0;
   break;
  case 128:
   irq->mpidr = 0;
   irq->group = 1;
   break;
  default:
   kfree(dist->spis);
   return -EINVAL;
  }
 }
 return 0;
}
