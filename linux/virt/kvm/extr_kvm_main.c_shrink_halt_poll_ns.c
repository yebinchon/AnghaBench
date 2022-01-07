
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {unsigned int halt_poll_ns; int vcpu_id; } ;


 unsigned int READ_ONCE (int ) ;
 int halt_poll_ns_shrink ;
 int trace_kvm_halt_poll_ns_shrink (int ,unsigned int,unsigned int) ;

__attribute__((used)) static void shrink_halt_poll_ns(struct kvm_vcpu *vcpu)
{
 unsigned int old, val, shrink;

 old = val = vcpu->halt_poll_ns;
 shrink = READ_ONCE(halt_poll_ns_shrink);
 if (shrink == 0)
  val = 0;
 else
  val /= shrink;

 vcpu->halt_poll_ns = val;
 trace_kvm_halt_poll_ns_shrink(vcpu->vcpu_id, val, old);
}
