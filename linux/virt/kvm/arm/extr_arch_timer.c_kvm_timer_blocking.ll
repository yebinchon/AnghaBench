; ModuleID = '/home/carl/AnghaBench/linux/virt/kvm/arm/extr_arch_timer.c_kvm_timer_blocking.c'
source_filename = "/home/carl/AnghaBench/linux/virt/kvm/arm/extr_arch_timer.c_kvm_timer_blocking.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.arch_timer_cpu = type { i32 }
%struct.timer_map = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm_vcpu*)* @kvm_timer_blocking to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kvm_timer_blocking(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca %struct.kvm_vcpu*, align 8
  %3 = alloca %struct.arch_timer_cpu*, align 8
  %4 = alloca %struct.timer_map, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %2, align 8
  %5 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %6 = call %struct.arch_timer_cpu* @vcpu_timer(%struct.kvm_vcpu* %5)
  store %struct.arch_timer_cpu* %6, %struct.arch_timer_cpu** %3, align 8
  %7 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %8 = call i32 @get_timer_map(%struct.kvm_vcpu* %7, %struct.timer_map* %4)
  %9 = getelementptr inbounds %struct.timer_map, %struct.timer_map* %4, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @kvm_timer_irq_can_fire(i32 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %24, label %13

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.timer_map, %struct.timer_map* %4, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @kvm_timer_irq_can_fire(i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.timer_map, %struct.timer_map* %4, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @kvm_timer_irq_can_fire(i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %18
  br label %30

24:                                               ; preds = %18, %13, %1
  %25 = load %struct.arch_timer_cpu*, %struct.arch_timer_cpu** %3, align 8
  %26 = getelementptr inbounds %struct.arch_timer_cpu, %struct.arch_timer_cpu* %25, i32 0, i32 0
  %27 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %28 = call i32 @kvm_timer_earliest_exp(%struct.kvm_vcpu* %27)
  %29 = call i32 @soft_timer_start(i32* %26, i32 %28)
  br label %30

30:                                               ; preds = %24, %23
  ret void
}

declare dso_local %struct.arch_timer_cpu* @vcpu_timer(%struct.kvm_vcpu*) #1

declare dso_local i32 @get_timer_map(%struct.kvm_vcpu*, %struct.timer_map*) #1

declare dso_local i32 @kvm_timer_irq_can_fire(i32) #1

declare dso_local i32 @soft_timer_start(i32*, i32) #1

declare dso_local i32 @kvm_timer_earliest_exp(%struct.kvm_vcpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
