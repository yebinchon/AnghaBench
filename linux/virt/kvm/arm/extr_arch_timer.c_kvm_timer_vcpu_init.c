
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct kvm_vcpu {int dummy; } ;
struct TYPE_6__ {void* function; } ;
struct arch_timer_cpu {TYPE_2__ bg_timer; } ;
struct TYPE_5__ {int irq; } ;
struct arch_timer_context {struct kvm_vcpu* vcpu; int host_timer_irq_flags; int host_timer_irq; TYPE_1__ irq; TYPE_2__ hrtimer; scalar_t__ cntvoff; } ;
struct TYPE_8__ {int irq; } ;
struct TYPE_7__ {int irq; } ;


 int CLOCK_MONOTONIC ;
 int HRTIMER_MODE_ABS ;
 TYPE_4__ default_ptimer_irq ;
 TYPE_3__ default_vtimer_irq ;
 int host_ptimer_irq ;
 int host_ptimer_irq_flags ;
 int host_vtimer_irq ;
 int host_vtimer_irq_flags ;
 int hrtimer_init (TYPE_2__*,int ,int ) ;
 void* kvm_bg_timer_expire ;
 void* kvm_hrtimer_expire ;
 int kvm_phys_timer_read () ;
 int update_vtimer_cntvoff (struct kvm_vcpu*,int ) ;
 struct arch_timer_context* vcpu_ptimer (struct kvm_vcpu*) ;
 struct arch_timer_cpu* vcpu_timer (struct kvm_vcpu*) ;
 struct arch_timer_context* vcpu_vtimer (struct kvm_vcpu*) ;

void kvm_timer_vcpu_init(struct kvm_vcpu *vcpu)
{
 struct arch_timer_cpu *timer = vcpu_timer(vcpu);
 struct arch_timer_context *vtimer = vcpu_vtimer(vcpu);
 struct arch_timer_context *ptimer = vcpu_ptimer(vcpu);


 update_vtimer_cntvoff(vcpu, kvm_phys_timer_read());
 ptimer->cntvoff = 0;

 hrtimer_init(&timer->bg_timer, CLOCK_MONOTONIC, HRTIMER_MODE_ABS);
 timer->bg_timer.function = kvm_bg_timer_expire;

 hrtimer_init(&vtimer->hrtimer, CLOCK_MONOTONIC, HRTIMER_MODE_ABS);
 hrtimer_init(&ptimer->hrtimer, CLOCK_MONOTONIC, HRTIMER_MODE_ABS);
 vtimer->hrtimer.function = kvm_hrtimer_expire;
 ptimer->hrtimer.function = kvm_hrtimer_expire;

 vtimer->irq.irq = default_vtimer_irq.irq;
 ptimer->irq.irq = default_ptimer_irq.irq;

 vtimer->host_timer_irq = host_vtimer_irq;
 ptimer->host_timer_irq = host_ptimer_irq;

 vtimer->host_timer_irq_flags = host_vtimer_irq_flags;
 ptimer->host_timer_irq_flags = host_ptimer_irq_flags;

 vtimer->vcpu = vcpu;
 ptimer->vcpu = vcpu;
}
