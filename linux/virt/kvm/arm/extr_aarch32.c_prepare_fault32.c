
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct kvm_vcpu {int dummy; } ;


 unsigned long PSR_AA32_E_BIT ;
 int PSR_AA32_I_BIT ;
 unsigned long PSR_AA32_T_BIT ;
 int c12_VBAR ;
 int c1_SCTLR ;
 int** return_offsets ;
 int vcpu_cp15 (struct kvm_vcpu*,int ) ;
 unsigned long* vcpu_cpsr (struct kvm_vcpu*) ;
 int* vcpu_pc (struct kvm_vcpu*) ;
 int* vcpu_reg32 (struct kvm_vcpu*,int) ;
 int vcpu_write_spsr (struct kvm_vcpu*,unsigned long) ;

__attribute__((used)) static void prepare_fault32(struct kvm_vcpu *vcpu, u32 mode, u32 vect_offset)
{
 unsigned long cpsr;
 unsigned long new_spsr_value = *vcpu_cpsr(vcpu);
 bool is_thumb = (new_spsr_value & PSR_AA32_T_BIT);
 u32 return_offset = return_offsets[vect_offset >> 2][is_thumb];
 u32 sctlr = vcpu_cp15(vcpu, c1_SCTLR);

 cpsr = mode | PSR_AA32_I_BIT;

 if (sctlr & (1 << 30))
  cpsr |= PSR_AA32_T_BIT;
 if (sctlr & (1 << 25))
  cpsr |= PSR_AA32_E_BIT;

 *vcpu_cpsr(vcpu) = cpsr;


 vcpu_write_spsr(vcpu, new_spsr_value);
 *vcpu_reg32(vcpu, 14) = *vcpu_pc(vcpu) + return_offset;


 if (sctlr & (1 << 13))
  vect_offset += 0xffff0000;
 else
  vect_offset += vcpu_cp15(vcpu, c12_VBAR);

 *vcpu_pc(vcpu) = vect_offset;
}
