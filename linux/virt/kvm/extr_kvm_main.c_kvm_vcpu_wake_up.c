
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct swait_queue_head {int dummy; } ;
struct TYPE_2__ {int halt_wakeup; } ;
struct kvm_vcpu {TYPE_1__ stat; int ready; } ;


 int WRITE_ONCE (int ,int) ;
 struct swait_queue_head* kvm_arch_vcpu_wq (struct kvm_vcpu*) ;
 int swake_up_one (struct swait_queue_head*) ;
 scalar_t__ swq_has_sleeper (struct swait_queue_head*) ;

bool kvm_vcpu_wake_up(struct kvm_vcpu *vcpu)
{
 struct swait_queue_head *wqp;

 wqp = kvm_arch_vcpu_wq(vcpu);
 if (swq_has_sleeper(wqp)) {
  swake_up_one(wqp);
  WRITE_ONCE(vcpu->ready, 1);
  ++vcpu->stat.halt_wakeup;
  return 1;
 }

 return 0;
}
