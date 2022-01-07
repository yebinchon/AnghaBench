
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct kvm_vcpu {TYPE_1__* kvm; } ;
struct kvm_run {int dummy; } ;
struct kvm_memory_slot {int dummy; } ;
typedef int phys_addr_t ;
typedef int gfn_t ;
struct TYPE_3__ {int srcu; } ;


 int EFAULT ;
 unsigned long FSC_ACCESS ;
 unsigned long FSC_FAULT ;
 unsigned long FSC_PERM ;
 int PAGE_SHIFT ;
 int VM_BUG_ON (int) ;
 unsigned long gfn_to_hva_memslot_prot (struct kvm_memory_slot*,int,int*) ;
 struct kvm_memory_slot* gfn_to_memslot (TYPE_1__*,int) ;
 int handle_access_fault (struct kvm_vcpu*,int) ;
 int io_mem_abort (struct kvm_vcpu*,struct kvm_run*,int) ;
 int kvm_err (char*,int ,unsigned long,unsigned long) ;
 int kvm_handle_guest_sea (int,scalar_t__) ;
 int kvm_inject_pabt (struct kvm_vcpu*,int) ;
 int kvm_inject_vabt (struct kvm_vcpu*) ;
 scalar_t__ kvm_is_error_hva (unsigned long) ;
 int kvm_is_write_fault (struct kvm_vcpu*) ;
 int kvm_phys_size (TYPE_1__*) ;
 int kvm_skip_instr (struct kvm_vcpu*,int ) ;
 scalar_t__ kvm_vcpu_dabt_is_cm (struct kvm_vcpu*) ;
 scalar_t__ kvm_vcpu_dabt_isextabt (struct kvm_vcpu*) ;
 int kvm_vcpu_get_fault_ipa (struct kvm_vcpu*) ;
 int kvm_vcpu_get_hfar (struct kvm_vcpu*) ;
 scalar_t__ kvm_vcpu_get_hsr (struct kvm_vcpu*) ;
 int kvm_vcpu_trap_get_class (struct kvm_vcpu*) ;
 scalar_t__ kvm_vcpu_trap_get_fault (struct kvm_vcpu*) ;
 unsigned long kvm_vcpu_trap_get_fault_type (struct kvm_vcpu*) ;
 int kvm_vcpu_trap_il_is32bit (struct kvm_vcpu*) ;
 int kvm_vcpu_trap_is_iabt (struct kvm_vcpu*) ;
 int srcu_read_lock (int *) ;
 int srcu_read_unlock (int *,int) ;
 int trace_kvm_guest_fault (int ,scalar_t__,int,int) ;
 scalar_t__ unlikely (int) ;
 int user_mem_abort (struct kvm_vcpu*,int,struct kvm_memory_slot*,unsigned long,unsigned long) ;
 int * vcpu_pc (struct kvm_vcpu*) ;

int kvm_handle_guest_abort(struct kvm_vcpu *vcpu, struct kvm_run *run)
{
 unsigned long fault_status;
 phys_addr_t fault_ipa;
 struct kvm_memory_slot *memslot;
 unsigned long hva;
 bool is_iabt, write_fault, writable;
 gfn_t gfn;
 int ret, idx;

 fault_status = kvm_vcpu_trap_get_fault_type(vcpu);

 fault_ipa = kvm_vcpu_get_fault_ipa(vcpu);
 is_iabt = kvm_vcpu_trap_is_iabt(vcpu);


 if (kvm_vcpu_dabt_isextabt(vcpu)) {




  if (!kvm_handle_guest_sea(fault_ipa, kvm_vcpu_get_hsr(vcpu)))
   return 1;

  if (unlikely(!is_iabt)) {
   kvm_inject_vabt(vcpu);
   return 1;
  }
 }

 trace_kvm_guest_fault(*vcpu_pc(vcpu), kvm_vcpu_get_hsr(vcpu),
         kvm_vcpu_get_hfar(vcpu), fault_ipa);


 if (fault_status != FSC_FAULT && fault_status != FSC_PERM &&
     fault_status != FSC_ACCESS) {
  kvm_err("Unsupported FSC: EC=%#x xFSC=%#lx ESR_EL2=%#lx\n",
   kvm_vcpu_trap_get_class(vcpu),
   (unsigned long)kvm_vcpu_trap_get_fault(vcpu),
   (unsigned long)kvm_vcpu_get_hsr(vcpu));
  return -EFAULT;
 }

 idx = srcu_read_lock(&vcpu->kvm->srcu);

 gfn = fault_ipa >> PAGE_SHIFT;
 memslot = gfn_to_memslot(vcpu->kvm, gfn);
 hva = gfn_to_hva_memslot_prot(memslot, gfn, &writable);
 write_fault = kvm_is_write_fault(vcpu);
 if (kvm_is_error_hva(hva) || (write_fault && !writable)) {
  if (is_iabt) {

   kvm_inject_pabt(vcpu, kvm_vcpu_get_hfar(vcpu));
   ret = 1;
   goto out_unlock;
  }
  if (kvm_vcpu_dabt_is_cm(vcpu)) {
   kvm_skip_instr(vcpu, kvm_vcpu_trap_il_is32bit(vcpu));
   ret = 1;
   goto out_unlock;
  }







  fault_ipa |= kvm_vcpu_get_hfar(vcpu) & ((1 << 12) - 1);
  ret = io_mem_abort(vcpu, run, fault_ipa);
  goto out_unlock;
 }


 VM_BUG_ON(fault_ipa >= kvm_phys_size(vcpu->kvm));

 if (fault_status == FSC_ACCESS) {
  handle_access_fault(vcpu, fault_ipa);
  ret = 1;
  goto out_unlock;
 }

 ret = user_mem_abort(vcpu, fault_ipa, memslot, hva, fault_status);
 if (ret == 0)
  ret = 1;
out_unlock:
 srcu_read_unlock(&vcpu->kvm->srcu, idx);
 return ret;
}
