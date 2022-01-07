; ModuleID = '/home/carl/AnghaBench/linux/virt/kvm/arm/extr_arch_timer.c_kvm_arm_timer_set_reg.c'
source_filename = "/home/carl/AnghaBench/linux/virt/kvm/arm/extr_arch_timer.c_kvm_arm_timer_set_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.arch_timer_context = type { i32 }

@TIMER_REG_CTL = common dso_local global i32 0, align 4
@TIMER_REG_CVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvm_arm_timer_set_reg(%struct.kvm_vcpu* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.kvm_vcpu*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.arch_timer_context*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %6, align 4
  switch i32 %9, label %50 [
    i32 129, label %10
    i32 130, label %18
    i32 128, label %26
    i32 132, label %34
    i32 131, label %42
  ]

10:                                               ; preds = %3
  %11 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %12 = call %struct.arch_timer_context* @vcpu_vtimer(%struct.kvm_vcpu* %11)
  store %struct.arch_timer_context* %12, %struct.arch_timer_context** %8, align 8
  %13 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %14 = load %struct.arch_timer_context*, %struct.arch_timer_context** %8, align 8
  %15 = load i32, i32* @TIMER_REG_CTL, align 4
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @kvm_arm_timer_write(%struct.kvm_vcpu* %13, %struct.arch_timer_context* %14, i32 %15, i32 %16)
  br label %51

18:                                               ; preds = %3
  %19 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %20 = call %struct.arch_timer_context* @vcpu_vtimer(%struct.kvm_vcpu* %19)
  store %struct.arch_timer_context* %20, %struct.arch_timer_context** %8, align 8
  %21 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %22 = call i32 (...) @kvm_phys_timer_read()
  %23 = load i32, i32* %7, align 4
  %24 = sub nsw i32 %22, %23
  %25 = call i32 @update_vtimer_cntvoff(%struct.kvm_vcpu* %21, i32 %24)
  br label %51

26:                                               ; preds = %3
  %27 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %28 = call %struct.arch_timer_context* @vcpu_vtimer(%struct.kvm_vcpu* %27)
  store %struct.arch_timer_context* %28, %struct.arch_timer_context** %8, align 8
  %29 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %30 = load %struct.arch_timer_context*, %struct.arch_timer_context** %8, align 8
  %31 = load i32, i32* @TIMER_REG_CVAL, align 4
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @kvm_arm_timer_write(%struct.kvm_vcpu* %29, %struct.arch_timer_context* %30, i32 %31, i32 %32)
  br label %51

34:                                               ; preds = %3
  %35 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %36 = call %struct.arch_timer_context* @vcpu_ptimer(%struct.kvm_vcpu* %35)
  store %struct.arch_timer_context* %36, %struct.arch_timer_context** %8, align 8
  %37 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %38 = load %struct.arch_timer_context*, %struct.arch_timer_context** %8, align 8
  %39 = load i32, i32* @TIMER_REG_CTL, align 4
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @kvm_arm_timer_write(%struct.kvm_vcpu* %37, %struct.arch_timer_context* %38, i32 %39, i32 %40)
  br label %51

42:                                               ; preds = %3
  %43 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %44 = call %struct.arch_timer_context* @vcpu_ptimer(%struct.kvm_vcpu* %43)
  store %struct.arch_timer_context* %44, %struct.arch_timer_context** %8, align 8
  %45 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %46 = load %struct.arch_timer_context*, %struct.arch_timer_context** %8, align 8
  %47 = load i32, i32* @TIMER_REG_CVAL, align 4
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @kvm_arm_timer_write(%struct.kvm_vcpu* %45, %struct.arch_timer_context* %46, i32 %47, i32 %48)
  br label %51

50:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %52

51:                                               ; preds = %42, %34, %26, %18, %10
  store i32 0, i32* %4, align 4
  br label %52

52:                                               ; preds = %51, %50
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local %struct.arch_timer_context* @vcpu_vtimer(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_arm_timer_write(%struct.kvm_vcpu*, %struct.arch_timer_context*, i32, i32) #1

declare dso_local i32 @update_vtimer_cntvoff(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @kvm_phys_timer_read(...) #1

declare dso_local %struct.arch_timer_context* @vcpu_ptimer(%struct.kvm_vcpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
