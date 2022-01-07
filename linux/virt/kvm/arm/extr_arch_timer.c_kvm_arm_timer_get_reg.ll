; ModuleID = '/home/carl/AnghaBench/linux/virt/kvm/arm/extr_arch_timer.c_kvm_arm_timer_get_reg.c'
source_filename = "/home/carl/AnghaBench/linux/virt/kvm/arm/extr_arch_timer.c_kvm_arm_timer_get_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }

@TIMER_REG_CTL = common dso_local global i32 0, align 4
@TIMER_REG_CNT = common dso_local global i32 0, align 4
@TIMER_REG_CVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvm_arm_timer_get_reg(%struct.kvm_vcpu* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kvm_vcpu*, align 8
  %5 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %43 [
    i32 129, label %7
    i32 130, label %13
    i32 128, label %19
    i32 132, label %25
    i32 133, label %31
    i32 131, label %37
  ]

7:                                                ; preds = %2
  %8 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %9 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %10 = call i32 @vcpu_vtimer(%struct.kvm_vcpu* %9)
  %11 = load i32, i32* @TIMER_REG_CTL, align 4
  %12 = call i32 @kvm_arm_timer_read(%struct.kvm_vcpu* %8, i32 %10, i32 %11)
  store i32 %12, i32* %3, align 4
  br label %44

13:                                               ; preds = %2
  %14 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %15 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %16 = call i32 @vcpu_vtimer(%struct.kvm_vcpu* %15)
  %17 = load i32, i32* @TIMER_REG_CNT, align 4
  %18 = call i32 @kvm_arm_timer_read(%struct.kvm_vcpu* %14, i32 %16, i32 %17)
  store i32 %18, i32* %3, align 4
  br label %44

19:                                               ; preds = %2
  %20 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %21 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %22 = call i32 @vcpu_vtimer(%struct.kvm_vcpu* %21)
  %23 = load i32, i32* @TIMER_REG_CVAL, align 4
  %24 = call i32 @kvm_arm_timer_read(%struct.kvm_vcpu* %20, i32 %22, i32 %23)
  store i32 %24, i32* %3, align 4
  br label %44

25:                                               ; preds = %2
  %26 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %27 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %28 = call i32 @vcpu_ptimer(%struct.kvm_vcpu* %27)
  %29 = load i32, i32* @TIMER_REG_CTL, align 4
  %30 = call i32 @kvm_arm_timer_read(%struct.kvm_vcpu* %26, i32 %28, i32 %29)
  store i32 %30, i32* %3, align 4
  br label %44

31:                                               ; preds = %2
  %32 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %33 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %34 = call i32 @vcpu_vtimer(%struct.kvm_vcpu* %33)
  %35 = load i32, i32* @TIMER_REG_CNT, align 4
  %36 = call i32 @kvm_arm_timer_read(%struct.kvm_vcpu* %32, i32 %34, i32 %35)
  store i32 %36, i32* %3, align 4
  br label %44

37:                                               ; preds = %2
  %38 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %39 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %40 = call i32 @vcpu_ptimer(%struct.kvm_vcpu* %39)
  %41 = load i32, i32* @TIMER_REG_CVAL, align 4
  %42 = call i32 @kvm_arm_timer_read(%struct.kvm_vcpu* %38, i32 %40, i32 %41)
  store i32 %42, i32* %3, align 4
  br label %44

43:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %44

44:                                               ; preds = %43, %37, %31, %25, %19, %13, %7
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i32 @kvm_arm_timer_read(%struct.kvm_vcpu*, i32, i32) #1

declare dso_local i32 @vcpu_vtimer(%struct.kvm_vcpu*) #1

declare dso_local i32 @vcpu_ptimer(%struct.kvm_vcpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
