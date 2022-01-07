
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vgic_cpu {int num_pri_bits; } ;
struct TYPE_2__ {struct vgic_cpu vgic_cpu; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;



__attribute__((used)) static inline int vgic_v3_max_apr_idx(struct kvm_vcpu *vcpu)
{
 struct vgic_cpu *cpu_if = &vcpu->arch.vgic_cpu;






 switch (cpu_if->num_pri_bits) {
 case 7: return 3;
 case 6: return 1;
 default: return 0;
 }
}
