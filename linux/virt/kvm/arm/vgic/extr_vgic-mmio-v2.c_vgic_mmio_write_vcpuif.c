
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vgic_vmcr {int grpen0; int grpen1; int ackctl; int fiqen; int cbpr; int eoim; unsigned long pmr; unsigned long bpr; unsigned long abpr; } ;
struct kvm_vcpu {int dummy; } ;
typedef int gpa_t ;


 unsigned long GICV_PMR_PRIORITY_MASK ;
 unsigned long GICV_PMR_PRIORITY_SHIFT ;



 unsigned long GIC_CPU_CTRL_AckCtl ;
 unsigned long GIC_CPU_CTRL_CBPR ;
 unsigned long GIC_CPU_CTRL_EOImodeNS ;
 unsigned long GIC_CPU_CTRL_EnableGrp0 ;
 unsigned long GIC_CPU_CTRL_EnableGrp1 ;
 unsigned long GIC_CPU_CTRL_FIQEn ;

 int vgic_get_vmcr (struct kvm_vcpu*,struct vgic_vmcr*) ;
 int vgic_set_vmcr (struct kvm_vcpu*,struct vgic_vmcr*) ;

__attribute__((used)) static void vgic_mmio_write_vcpuif(struct kvm_vcpu *vcpu,
       gpa_t addr, unsigned int len,
       unsigned long val)
{
 struct vgic_vmcr vmcr;

 vgic_get_vmcr(vcpu, &vmcr);

 switch (addr & 0xff) {
 case 129:
  vmcr.grpen0 = !!(val & GIC_CPU_CTRL_EnableGrp0);
  vmcr.grpen1 = !!(val & GIC_CPU_CTRL_EnableGrp1);
  vmcr.ackctl = !!(val & GIC_CPU_CTRL_AckCtl);
  vmcr.fiqen = !!(val & GIC_CPU_CTRL_FIQEn);
  vmcr.cbpr = !!(val & GIC_CPU_CTRL_CBPR);
  vmcr.eoim = !!(val & GIC_CPU_CTRL_EOImodeNS);

  break;
 case 128:







  vmcr.pmr = (val << GICV_PMR_PRIORITY_SHIFT) &
   GICV_PMR_PRIORITY_MASK;
  break;
 case 130:
  vmcr.bpr = val;
  break;
 case 131:
  vmcr.abpr = val;
  break;
 }

 vgic_set_vmcr(vcpu, &vmcr);
}
