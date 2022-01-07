
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;
struct arch_timer_cpu {int bg_timer; } ;


 int soft_timer_cancel (int *) ;
 struct arch_timer_cpu* vcpu_timer (struct kvm_vcpu*) ;

void kvm_timer_vcpu_terminate(struct kvm_vcpu *vcpu)
{
 struct arch_timer_cpu *timer = vcpu_timer(vcpu);

 soft_timer_cancel(&timer->bg_timer);
}
