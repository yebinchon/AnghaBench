; ModuleID = '/home/carl/AnghaBench/linux/virt/kvm/arm/extr_arch_timer.c_kvm_timer_vcpu_put.c'
source_filename = "/home/carl/AnghaBench/linux/virt/kvm/arm/extr_arch_timer.c_kvm_timer_vcpu_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.arch_timer_cpu = type { i32 }
%struct.timer_map = type { %struct.TYPE_2__*, i64, i64 }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kvm_timer_vcpu_put(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca %struct.kvm_vcpu*, align 8
  %3 = alloca %struct.arch_timer_cpu*, align 8
  %4 = alloca %struct.timer_map, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %2, align 8
  %5 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %6 = call %struct.arch_timer_cpu* @vcpu_timer(%struct.kvm_vcpu* %5)
  store %struct.arch_timer_cpu* %6, %struct.arch_timer_cpu** %3, align 8
  %7 = load %struct.arch_timer_cpu*, %struct.arch_timer_cpu** %3, align 8
  %8 = getelementptr inbounds %struct.arch_timer_cpu, %struct.arch_timer_cpu* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  %13 = call i64 @unlikely(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  br label %48

16:                                               ; preds = %1
  %17 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %18 = call i32 @get_timer_map(%struct.kvm_vcpu* %17, %struct.timer_map* %4)
  %19 = getelementptr inbounds %struct.timer_map, %struct.timer_map* %4, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = call i32 @timer_save_state(i64 %20)
  %22 = getelementptr inbounds %struct.timer_map, %struct.timer_map* %4, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %16
  %26 = getelementptr inbounds %struct.timer_map, %struct.timer_map* %4, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @timer_save_state(i64 %27)
  br label %29

29:                                               ; preds = %25, %16
  %30 = getelementptr inbounds %struct.timer_map, %struct.timer_map* %4, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = icmp ne %struct.TYPE_2__* %31, null
  br i1 %32, label %33, label %38

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.timer_map, %struct.timer_map* %4, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = call i32 @soft_timer_cancel(i32* %36)
  br label %38

38:                                               ; preds = %33, %29
  %39 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %40 = call i32 @kvm_arch_vcpu_wq(%struct.kvm_vcpu* %39)
  %41 = call i64 @swait_active(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %38
  %44 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %45 = call i32 @kvm_timer_blocking(%struct.kvm_vcpu* %44)
  br label %46

46:                                               ; preds = %43, %38
  %47 = call i32 @set_cntvoff(i32 0)
  br label %48

48:                                               ; preds = %46, %15
  ret void
}

declare dso_local %struct.arch_timer_cpu* @vcpu_timer(%struct.kvm_vcpu*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @get_timer_map(%struct.kvm_vcpu*, %struct.timer_map*) #1

declare dso_local i32 @timer_save_state(i64) #1

declare dso_local i32 @soft_timer_cancel(i32*) #1

declare dso_local i64 @swait_active(i32) #1

declare dso_local i32 @kvm_arch_vcpu_wq(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_timer_blocking(%struct.kvm_vcpu*) #1

declare dso_local i32 @set_cntvoff(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
