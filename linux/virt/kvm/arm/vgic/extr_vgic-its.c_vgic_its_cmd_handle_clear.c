
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct vgic_its {int dummy; } ;
struct kvm {int dummy; } ;
struct its_ite {TYPE_1__* irq; } ;
struct TYPE_2__ {int pending_latch; int host_irq; scalar_t__ hw; } ;


 int E_ITS_CLEAR_UNMAPPED_INTERRUPT ;
 int IRQCHIP_STATE_PENDING ;
 struct its_ite* find_ite (struct vgic_its*,int ,int ) ;
 int irq_set_irqchip_state (int ,int ,int) ;
 int its_cmd_get_deviceid (int *) ;
 int its_cmd_get_id (int *) ;

__attribute__((used)) static int vgic_its_cmd_handle_clear(struct kvm *kvm, struct vgic_its *its,
         u64 *its_cmd)
{
 u32 device_id = its_cmd_get_deviceid(its_cmd);
 u32 event_id = its_cmd_get_id(its_cmd);
 struct its_ite *ite;


 ite = find_ite(its, device_id, event_id);
 if (!ite)
  return E_ITS_CLEAR_UNMAPPED_INTERRUPT;

 ite->irq->pending_latch = 0;

 if (ite->irq->hw)
  return irq_set_irqchip_state(ite->irq->host_irq,
          IRQCHIP_STATE_PENDING, 0);

 return 0;
}
