
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct vgic_redist_region {int base; int free_index; } ;
struct vgic_cpu {struct vgic_redist_region* rdreg; } ;
struct TYPE_2__ {struct vgic_cpu vgic_cpu; } ;
struct kvm_vcpu {int vcpu_id; int kvm; TYPE_1__ arch; } ;
typedef int gpa_t ;


 unsigned long GENMASK (int,int ) ;
 int GICR_TYPER ;
 int GICR_TYPER_LAST ;
 int GICR_TYPER_PLPIS ;
 int KVM_VGIC_V3_REDIST_SIZE ;
 unsigned long extract_bytes (int,int,unsigned int) ;
 unsigned long kvm_vcpu_get_mpidr_aff (struct kvm_vcpu*) ;
 scalar_t__ vgic_has_its (int ) ;

__attribute__((used)) static unsigned long vgic_mmio_read_v3r_typer(struct kvm_vcpu *vcpu,
           gpa_t addr, unsigned int len)
{
 unsigned long mpidr = kvm_vcpu_get_mpidr_aff(vcpu);
 struct vgic_cpu *vgic_cpu = &vcpu->arch.vgic_cpu;
 struct vgic_redist_region *rdreg = vgic_cpu->rdreg;
 int target_vcpu_id = vcpu->vcpu_id;
 gpa_t last_rdist_typer = rdreg->base + GICR_TYPER +
   (rdreg->free_index - 1) * KVM_VGIC_V3_REDIST_SIZE;
 u64 value;

 value = (u64)(mpidr & GENMASK(23, 0)) << 32;
 value |= ((target_vcpu_id & 0xffff) << 8);

 if (addr == last_rdist_typer)
  value |= GICR_TYPER_LAST;
 if (vgic_has_its(vcpu->kvm))
  value |= GICR_TYPER_PLPIS;

 return extract_bytes(value, addr & 7, len);
}
