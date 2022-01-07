
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct TYPE_2__ {int halt_poll_invalid; int halt_successful_poll; int halt_attempted_poll; } ;
struct kvm_vcpu {scalar_t__ halt_poll_ns; int wq; TYPE_1__ stat; } ;
typedef int ktime_t ;


 int DECLARE_SWAITQUEUE (int ) ;
 int TASK_INTERRUPTIBLE ;
 int finish_swait (int *,int *) ;
 int grow_halt_poll_ns (struct kvm_vcpu*) ;
 scalar_t__ halt_poll_ns ;
 int ktime_add_ns (int ,scalar_t__) ;
 scalar_t__ ktime_before (int ,int ) ;
 int ktime_get () ;
 scalar_t__ ktime_to_ns (int ) ;
 int kvm_arch_no_poll (struct kvm_vcpu*) ;
 int kvm_arch_vcpu_block_finish (struct kvm_vcpu*) ;
 int kvm_arch_vcpu_blocking (struct kvm_vcpu*) ;
 int kvm_arch_vcpu_unblocking (struct kvm_vcpu*) ;
 scalar_t__ kvm_vcpu_check_block (struct kvm_vcpu*) ;
 int prepare_to_swait_exclusive (int *,int *,int ) ;
 int schedule () ;
 int shrink_halt_poll_ns (struct kvm_vcpu*) ;
 scalar_t__ single_task_running () ;
 int trace_kvm_vcpu_wakeup (scalar_t__,int,int ) ;
 int vcpu_valid_wakeup (struct kvm_vcpu*) ;
 int wait ;

void kvm_vcpu_block(struct kvm_vcpu *vcpu)
{
 ktime_t start, cur;
 DECLARE_SWAITQUEUE(wait);
 bool waited = 0;
 u64 block_ns;

 kvm_arch_vcpu_blocking(vcpu);

 start = cur = ktime_get();
 if (vcpu->halt_poll_ns && !kvm_arch_no_poll(vcpu)) {
  ktime_t stop = ktime_add_ns(ktime_get(), vcpu->halt_poll_ns);

  ++vcpu->stat.halt_attempted_poll;
  do {




   if (kvm_vcpu_check_block(vcpu) < 0) {
    ++vcpu->stat.halt_successful_poll;
    if (!vcpu_valid_wakeup(vcpu))
     ++vcpu->stat.halt_poll_invalid;
    goto out;
   }
   cur = ktime_get();
  } while (single_task_running() && ktime_before(cur, stop));
 }

 for (;;) {
  prepare_to_swait_exclusive(&vcpu->wq, &wait, TASK_INTERRUPTIBLE);

  if (kvm_vcpu_check_block(vcpu) < 0)
   break;

  waited = 1;
  schedule();
 }

 finish_swait(&vcpu->wq, &wait);
 cur = ktime_get();
out:
 kvm_arch_vcpu_unblocking(vcpu);
 block_ns = ktime_to_ns(cur) - ktime_to_ns(start);

 if (!kvm_arch_no_poll(vcpu)) {
  if (!vcpu_valid_wakeup(vcpu)) {
   shrink_halt_poll_ns(vcpu);
  } else if (halt_poll_ns) {
   if (block_ns <= vcpu->halt_poll_ns)
    ;

   else if (vcpu->halt_poll_ns && block_ns > halt_poll_ns)
    shrink_halt_poll_ns(vcpu);

   else if (vcpu->halt_poll_ns < halt_poll_ns &&
    block_ns < halt_poll_ns)
    grow_halt_poll_ns(vcpu);
  } else {
   vcpu->halt_poll_ns = 0;
  }
 }

 trace_kvm_vcpu_wakeup(block_ns, waited, vcpu_valid_wakeup(vcpu));
 kvm_arch_vcpu_block_finish(vcpu);
}
