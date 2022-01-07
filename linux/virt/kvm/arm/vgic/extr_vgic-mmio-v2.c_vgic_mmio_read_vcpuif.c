
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u32 ;
struct vgic_vmcr {unsigned long grpen0; unsigned long grpen1; unsigned long ackctl; unsigned long fiqen; unsigned long cbpr; unsigned long eoim; unsigned long pmr; unsigned long bpr; unsigned long abpr; } ;
struct kvm_vcpu {int dummy; } ;
typedef int gpa_t ;


 int GICC_ARCH_VERSION_V2 ;
 unsigned long GICV_PMR_PRIORITY_MASK ;
 unsigned long GICV_PMR_PRIORITY_SHIFT ;



 unsigned long GIC_CPU_CTRL_AckCtl_SHIFT ;
 unsigned long GIC_CPU_CTRL_CBPR_SHIFT ;
 unsigned long GIC_CPU_CTRL_EOImodeNS_SHIFT ;
 unsigned long GIC_CPU_CTRL_EnableGrp0_SHIFT ;
 unsigned long GIC_CPU_CTRL_EnableGrp1_SHIFT ;
 unsigned long GIC_CPU_CTRL_FIQEn_SHIFT ;


 int IMPLEMENTER_ARM ;
 int PRODUCT_ID_KVM ;
 int vgic_get_vmcr (struct kvm_vcpu*,struct vgic_vmcr*) ;

__attribute__((used)) static unsigned long vgic_mmio_read_vcpuif(struct kvm_vcpu *vcpu,
        gpa_t addr, unsigned int len)
{
 struct vgic_vmcr vmcr;
 u32 val;

 vgic_get_vmcr(vcpu, &vmcr);

 switch (addr & 0xff) {
 case 130:
  val = vmcr.grpen0 << GIC_CPU_CTRL_EnableGrp0_SHIFT;
  val |= vmcr.grpen1 << GIC_CPU_CTRL_EnableGrp1_SHIFT;
  val |= vmcr.ackctl << GIC_CPU_CTRL_AckCtl_SHIFT;
  val |= vmcr.fiqen << GIC_CPU_CTRL_FIQEn_SHIFT;
  val |= vmcr.cbpr << GIC_CPU_CTRL_CBPR_SHIFT;
  val |= vmcr.eoim << GIC_CPU_CTRL_EOImodeNS_SHIFT;

  break;
 case 128:







  val = (vmcr.pmr & GICV_PMR_PRIORITY_MASK) >>
   GICV_PMR_PRIORITY_SHIFT;
  break;
 case 131:
  val = vmcr.bpr;
  break;
 case 132:
  val = vmcr.abpr;
  break;
 case 129:
  val = ((PRODUCT_ID_KVM << 20) |
         (GICC_ARCH_VERSION_V2 << 16) |
         IMPLEMENTER_ARM);
  break;
 default:
  return 0;
 }

 return val;
}
