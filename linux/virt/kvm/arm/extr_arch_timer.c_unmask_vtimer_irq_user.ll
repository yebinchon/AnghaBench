; ModuleID = '/home/carl/AnghaBench/linux/virt/kvm/arm/extr_arch_timer.c_unmask_vtimer_irq_user.c'
source_filename = "/home/carl/AnghaBench/linux/virt/kvm/arm/extr_arch_timer.c_unmask_vtimer_irq_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.arch_timer_context = type { i32 }

@has_gic_active_state = common dso_local global i32 0, align 4
@host_vtimer_irq = common dso_local global i32 0, align 4
@host_vtimer_irq_flags = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm_vcpu*)* @unmask_vtimer_irq_user to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @unmask_vtimer_irq_user(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca %struct.kvm_vcpu*, align 8
  %3 = alloca %struct.arch_timer_context*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %2, align 8
  %4 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %5 = call %struct.arch_timer_context* @vcpu_vtimer(%struct.kvm_vcpu* %4)
  store %struct.arch_timer_context* %5, %struct.arch_timer_context** %3, align 8
  %6 = load %struct.arch_timer_context*, %struct.arch_timer_context** %3, align 8
  %7 = call i32 @kvm_timer_should_fire(%struct.arch_timer_context* %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %23, label %9

9:                                                ; preds = %1
  %10 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %11 = load %struct.arch_timer_context*, %struct.arch_timer_context** %3, align 8
  %12 = call i32 @kvm_timer_update_irq(%struct.kvm_vcpu* %10, i32 0, %struct.arch_timer_context* %11)
  %13 = call i64 @static_branch_likely(i32* @has_gic_active_state)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %9
  %16 = load %struct.arch_timer_context*, %struct.arch_timer_context** %3, align 8
  %17 = call i32 @set_timer_irq_phys_active(%struct.arch_timer_context* %16, i32 0)
  br label %22

18:                                               ; preds = %9
  %19 = load i32, i32* @host_vtimer_irq, align 4
  %20 = load i32, i32* @host_vtimer_irq_flags, align 4
  %21 = call i32 @enable_percpu_irq(i32 %19, i32 %20)
  br label %22

22:                                               ; preds = %18, %15
  br label %23

23:                                               ; preds = %22, %1
  ret void
}

declare dso_local %struct.arch_timer_context* @vcpu_vtimer(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_timer_should_fire(%struct.arch_timer_context*) #1

declare dso_local i32 @kvm_timer_update_irq(%struct.kvm_vcpu*, i32, %struct.arch_timer_context*) #1

declare dso_local i64 @static_branch_likely(i32*) #1

declare dso_local i32 @set_timer_irq_phys_active(%struct.arch_timer_context*, i32) #1

declare dso_local i32 @enable_percpu_irq(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
