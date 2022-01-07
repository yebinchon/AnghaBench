
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct vgic_irq {int intid; int enabled; int config; int refcount; struct kvm_vcpu* target_vcpu; int * vcpu; int irq_lock; int ap_list; } ;
struct vgic_dist {scalar_t__ vgic_model; } ;
struct TYPE_7__ {int base_addr; } ;
struct vgic_cpu {struct vgic_irq* private_irqs; int ap_list_lock; int ap_list_head; TYPE_3__ rd_iodev; } ;
struct TYPE_5__ {struct vgic_cpu vgic_cpu; } ;
struct kvm_vcpu {TYPE_4__* kvm; TYPE_1__ arch; } ;
struct TYPE_6__ {struct vgic_dist vgic; } ;
struct TYPE_8__ {int lock; TYPE_2__ arch; } ;


 int INIT_LIST_HEAD (int *) ;
 scalar_t__ KVM_DEV_TYPE_ARM_VGIC_V3 ;
 int VGIC_ADDR_UNDEF ;
 int VGIC_CONFIG_EDGE ;
 int VGIC_CONFIG_LEVEL ;
 int VGIC_NR_PRIVATE_IRQS ;
 int irqchip_in_kernel (TYPE_4__*) ;
 int kref_init (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int raw_spin_lock_init (int *) ;
 scalar_t__ vgic_irq_is_sgi (int) ;
 int vgic_register_redist_iodev (struct kvm_vcpu*) ;

int kvm_vgic_vcpu_init(struct kvm_vcpu *vcpu)
{
 struct vgic_cpu *vgic_cpu = &vcpu->arch.vgic_cpu;
 struct vgic_dist *dist = &vcpu->kvm->arch.vgic;
 int ret = 0;
 int i;

 vgic_cpu->rd_iodev.base_addr = VGIC_ADDR_UNDEF;

 INIT_LIST_HEAD(&vgic_cpu->ap_list_head);
 raw_spin_lock_init(&vgic_cpu->ap_list_lock);





 for (i = 0; i < VGIC_NR_PRIVATE_IRQS; i++) {
  struct vgic_irq *irq = &vgic_cpu->private_irqs[i];

  INIT_LIST_HEAD(&irq->ap_list);
  raw_spin_lock_init(&irq->irq_lock);
  irq->intid = i;
  irq->vcpu = ((void*)0);
  irq->target_vcpu = vcpu;
  kref_init(&irq->refcount);
  if (vgic_irq_is_sgi(i)) {

   irq->enabled = 1;
   irq->config = VGIC_CONFIG_EDGE;
  } else {

   irq->config = VGIC_CONFIG_LEVEL;
  }
 }

 if (!irqchip_in_kernel(vcpu->kvm))
  return 0;





 if (dist->vgic_model == KVM_DEV_TYPE_ARM_VGIC_V3) {
  mutex_lock(&vcpu->kvm->lock);
  ret = vgic_register_redist_iodev(vcpu);
  mutex_unlock(&vcpu->kvm->lock);
 }
 return ret;
}
