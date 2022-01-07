
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_8__ {int mmio_exit_user; int mmio_exit_kernel; } ;
struct TYPE_5__ {unsigned long rt; } ;
struct TYPE_6__ {TYPE_1__ mmio_decode; } ;
struct kvm_vcpu {int mmio_needed; TYPE_4__ stat; TYPE_2__ arch; } ;
struct TYPE_7__ {int is_write; int len; int data; int phys_addr; } ;
struct kvm_run {int exit_reason; TYPE_3__ mmio; } ;
typedef int phys_addr_t ;


 int ENOSYS ;
 int KVM_EXIT_MMIO ;
 int KVM_MMIO_BUS ;
 int KVM_TRACE_MMIO_READ_UNSATISFIED ;
 int KVM_TRACE_MMIO_WRITE ;
 int decode_hsr (struct kvm_vcpu*,int*,int*) ;
 int kvm_err (char*) ;
 int kvm_handle_mmio_return (struct kvm_vcpu*,struct kvm_run*) ;
 int kvm_io_bus_read (struct kvm_vcpu*,int ,int ,int,int *) ;
 int kvm_io_bus_write (struct kvm_vcpu*,int ,int ,int,int *) ;
 int kvm_mmio_write_buf (int *,int,unsigned long) ;
 scalar_t__ kvm_vcpu_dabt_isvalid (struct kvm_vcpu*) ;
 int memcpy (int ,int *,int) ;
 int trace_kvm_mmio (int ,int,int ,unsigned long*) ;
 unsigned long vcpu_data_guest_to_host (struct kvm_vcpu*,int ,int) ;
 int vcpu_get_reg (struct kvm_vcpu*,unsigned long) ;

int io_mem_abort(struct kvm_vcpu *vcpu, struct kvm_run *run,
   phys_addr_t fault_ipa)
{
 unsigned long data;
 unsigned long rt;
 int ret;
 bool is_write;
 int len;
 u8 data_buf[8];






 if (kvm_vcpu_dabt_isvalid(vcpu)) {
  ret = decode_hsr(vcpu, &is_write, &len);
  if (ret)
   return ret;
 } else {
  kvm_err("load/store instruction decoding not implemented\n");
  return -ENOSYS;
 }

 rt = vcpu->arch.mmio_decode.rt;

 if (is_write) {
  data = vcpu_data_guest_to_host(vcpu, vcpu_get_reg(vcpu, rt),
            len);

  trace_kvm_mmio(KVM_TRACE_MMIO_WRITE, len, fault_ipa, &data);
  kvm_mmio_write_buf(data_buf, len, data);

  ret = kvm_io_bus_write(vcpu, KVM_MMIO_BUS, fault_ipa, len,
           data_buf);
 } else {
  trace_kvm_mmio(KVM_TRACE_MMIO_READ_UNSATISFIED, len,
          fault_ipa, ((void*)0));

  ret = kvm_io_bus_read(vcpu, KVM_MMIO_BUS, fault_ipa, len,
          data_buf);
 }


 run->mmio.is_write = is_write;
 run->mmio.phys_addr = fault_ipa;
 run->mmio.len = len;
 vcpu->mmio_needed = 1;

 if (!ret) {

  if (!is_write)
   memcpy(run->mmio.data, data_buf, len);
  vcpu->stat.mmio_exit_kernel++;
  kvm_handle_mmio_return(vcpu, run);
  return 1;
 }

 if (is_write)
  memcpy(run->mmio.data, data_buf, len);
 vcpu->stat.mmio_exit_user++;
 run->exit_reason = KVM_EXIT_MMIO;
 return 0;
}
