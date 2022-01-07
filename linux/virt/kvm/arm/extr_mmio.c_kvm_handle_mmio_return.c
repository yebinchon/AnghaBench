
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int rt; scalar_t__ sign_extend; } ;
struct TYPE_6__ {TYPE_2__ mmio_decode; } ;
struct kvm_vcpu {TYPE_3__ arch; scalar_t__ mmio_needed; } ;
struct TYPE_4__ {unsigned int len; int phys_addr; int data; int is_write; } ;
struct kvm_run {TYPE_1__ mmio; } ;


 int EINVAL ;
 int KVM_TRACE_MMIO_READ ;
 unsigned long kvm_mmio_read_buf (int ,unsigned int) ;
 int kvm_skip_instr (struct kvm_vcpu*,int ) ;
 int kvm_vcpu_trap_il_is32bit (struct kvm_vcpu*) ;
 int trace_kvm_mmio (int ,unsigned int,int ,unsigned long*) ;
 scalar_t__ unlikely (int) ;
 unsigned long vcpu_data_host_to_guest (struct kvm_vcpu*,unsigned long,unsigned int) ;
 int vcpu_set_reg (struct kvm_vcpu*,int ,unsigned long) ;

int kvm_handle_mmio_return(struct kvm_vcpu *vcpu, struct kvm_run *run)
{
 unsigned long data;
 unsigned int len;
 int mask;


 if (unlikely(!vcpu->mmio_needed))
  return 0;

 vcpu->mmio_needed = 0;

 if (!run->mmio.is_write) {
  len = run->mmio.len;
  if (len > sizeof(unsigned long))
   return -EINVAL;

  data = kvm_mmio_read_buf(run->mmio.data, len);

  if (vcpu->arch.mmio_decode.sign_extend &&
      len < sizeof(unsigned long)) {
   mask = 1U << ((len * 8) - 1);
   data = (data ^ mask) - mask;
  }

  trace_kvm_mmio(KVM_TRACE_MMIO_READ, len, run->mmio.phys_addr,
          &data);
  data = vcpu_data_host_to_guest(vcpu, data, len);
  vcpu_set_reg(vcpu, vcpu->arch.mmio_decode.rt, data);
 }





 kvm_skip_instr(vcpu, kvm_vcpu_trap_il_is32bit(vcpu));

 return 0;
}
