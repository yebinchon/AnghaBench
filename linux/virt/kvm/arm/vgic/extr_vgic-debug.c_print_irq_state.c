
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vgic_irq {scalar_t__ config; TYPE_2__* vcpu; int priority; int source; int mpidr; int hwintid; int group; int hw; int enabled; int active; int line_level; int pending_latch; TYPE_1__* target_vcpu; int intid; } ;
struct seq_file {int dummy; } ;
struct kvm_vcpu {int dummy; } ;
struct TYPE_4__ {int vcpu_id; } ;
struct TYPE_3__ {int vcpu_id; } ;


 scalar_t__ VGIC_CONFIG_LEVEL ;
 int VGIC_MAX_SPI ;
 int VGIC_NR_PRIVATE_IRQS ;
 int VGIC_NR_SGIS ;
 int print_header (struct seq_file*,struct vgic_irq*,struct kvm_vcpu*) ;
 int seq_printf (struct seq_file*,char*,char*,int ,int,int ,int ,int ,int ,int ,int,int ,int ,int ,int ,int ,int) ;

__attribute__((used)) static void print_irq_state(struct seq_file *s, struct vgic_irq *irq,
       struct kvm_vcpu *vcpu)
{
 char *type;
 if (irq->intid < VGIC_NR_SGIS)
  type = "SGI";
 else if (irq->intid < VGIC_NR_PRIVATE_IRQS)
  type = "PPI";
 else if (irq->intid < VGIC_MAX_SPI)
  type = "SPI";
 else
  type = "LPI";

 if (irq->intid ==0 || irq->intid == VGIC_NR_PRIVATE_IRQS)
  print_header(s, irq, vcpu);

 seq_printf(s, "       %s %4d "
        "    %2d "
        "%d%d%d%d%d%d%d "
        "%8d "
        "%8x "
        " %2x "
        "%3d "
        "     %2d "
        "\n",
   type, irq->intid,
   (irq->target_vcpu) ? irq->target_vcpu->vcpu_id : -1,
   irq->pending_latch,
   irq->line_level,
   irq->active,
   irq->enabled,
   irq->hw,
   irq->config == VGIC_CONFIG_LEVEL,
   irq->group,
   irq->hwintid,
   irq->mpidr,
   irq->source,
   irq->priority,
   (irq->vcpu) ? irq->vcpu->vcpu_id : -1);
}
