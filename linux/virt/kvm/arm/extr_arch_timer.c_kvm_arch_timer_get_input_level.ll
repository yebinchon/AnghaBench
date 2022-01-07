; ModuleID = '/home/carl/AnghaBench/linux/virt/kvm/arm/extr_arch_timer.c_kvm_arch_timer_get_input_level.c'
source_filename = "/home/carl/AnghaBench/linux/virt/kvm/arm/extr_arch_timer.c_kvm_arch_timer_get_input_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.arch_timer_context = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvm_arch_timer_get_input_level(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca %struct.arch_timer_context*, align 8
  store i32 %0, i32* %2, align 4
  %5 = call %struct.kvm_vcpu* (...) @kvm_arm_get_running_vcpu()
  store %struct.kvm_vcpu* %5, %struct.kvm_vcpu** %3, align 8
  %6 = load i32, i32* %2, align 4
  %7 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %8 = call %struct.arch_timer_context* @vcpu_vtimer(%struct.kvm_vcpu* %7)
  %9 = getelementptr inbounds %struct.arch_timer_context, %struct.arch_timer_context* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp eq i32 %6, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %15 = call %struct.arch_timer_context* @vcpu_vtimer(%struct.kvm_vcpu* %14)
  store %struct.arch_timer_context* %15, %struct.arch_timer_context** %4, align 8
  br label %30

16:                                               ; preds = %1
  %17 = load i32, i32* %2, align 4
  %18 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %19 = call %struct.arch_timer_context* @vcpu_ptimer(%struct.kvm_vcpu* %18)
  %20 = getelementptr inbounds %struct.arch_timer_context, %struct.arch_timer_context* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp eq i32 %17, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %16
  %25 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %26 = call %struct.arch_timer_context* @vcpu_ptimer(%struct.kvm_vcpu* %25)
  store %struct.arch_timer_context* %26, %struct.arch_timer_context** %4, align 8
  br label %29

27:                                               ; preds = %16
  %28 = call i32 (...) @BUG()
  br label %29

29:                                               ; preds = %27, %24
  br label %30

30:                                               ; preds = %29, %13
  %31 = load %struct.arch_timer_context*, %struct.arch_timer_context** %4, align 8
  %32 = call i32 @kvm_timer_should_fire(%struct.arch_timer_context* %31)
  ret i32 %32
}

declare dso_local %struct.kvm_vcpu* @kvm_arm_get_running_vcpu(...) #1

declare dso_local %struct.arch_timer_context* @vcpu_vtimer(%struct.kvm_vcpu*) #1

declare dso_local %struct.arch_timer_context* @vcpu_ptimer(%struct.kvm_vcpu*) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @kvm_timer_should_fire(%struct.arch_timer_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
