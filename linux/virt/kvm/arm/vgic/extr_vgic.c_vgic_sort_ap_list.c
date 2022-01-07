
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vgic_cpu {int ap_list_head; int ap_list_lock; } ;
struct TYPE_2__ {struct vgic_cpu vgic_cpu; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;


 int list_sort (int *,int *,int ) ;
 int lockdep_assert_held (int *) ;
 int vgic_irq_cmp ;

__attribute__((used)) static void vgic_sort_ap_list(struct kvm_vcpu *vcpu)
{
 struct vgic_cpu *vgic_cpu = &vcpu->arch.vgic_cpu;

 lockdep_assert_held(&vgic_cpu->ap_list_lock);

 list_sort(((void*)0), &vgic_cpu->ap_list_head, vgic_irq_cmp);
}
