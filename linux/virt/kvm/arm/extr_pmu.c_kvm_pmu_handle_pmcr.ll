; ModuleID = '/home/carl/AnghaBench/linux/virt/kvm/arm/extr_pmu.c_kvm_pmu_handle_pmcr.c'
source_filename = "/home/carl/AnghaBench/linux/virt/kvm/arm/extr_pmu.c_kvm_pmu_handle_pmcr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }

@ARMV8_PMU_PMCR_E = common dso_local global i32 0, align 4
@PMCNTENSET_EL0 = common dso_local global i32 0, align 4
@ARMV8_PMU_PMCR_C = common dso_local global i32 0, align 4
@ARMV8_PMU_CYCLE_IDX = common dso_local global i32 0, align 4
@ARMV8_PMU_PMCR_P = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kvm_pmu_handle_pmcr(%struct.kvm_vcpu* %0, i32 %1) #0 {
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %8 = call i32 @kvm_pmu_valid_counter_mask(%struct.kvm_vcpu* %7)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @ARMV8_PMU_PMCR_E, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %21

13:                                               ; preds = %2
  %14 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %15 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %16 = load i32, i32* @PMCNTENSET_EL0, align 4
  %17 = call i32 @__vcpu_sys_reg(%struct.kvm_vcpu* %15, i32 %16)
  %18 = load i32, i32* %5, align 4
  %19 = and i32 %17, %18
  %20 = call i32 @kvm_pmu_enable_counter_mask(%struct.kvm_vcpu* %14, i32 %19)
  br label %25

21:                                               ; preds = %2
  %22 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @kvm_pmu_disable_counter_mask(%struct.kvm_vcpu* %22, i32 %23)
  br label %25

25:                                               ; preds = %21, %13
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @ARMV8_PMU_PMCR_C, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %25
  %31 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %32 = load i32, i32* @ARMV8_PMU_CYCLE_IDX, align 4
  %33 = call i32 @kvm_pmu_set_counter_value(%struct.kvm_vcpu* %31, i32 %32, i32 0)
  br label %34

34:                                               ; preds = %30, %25
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* @ARMV8_PMU_PMCR_P, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %52

39:                                               ; preds = %34
  store i32 0, i32* %6, align 4
  br label %40

40:                                               ; preds = %48, %39
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* @ARMV8_PMU_CYCLE_IDX, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %51

44:                                               ; preds = %40
  %45 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @kvm_pmu_set_counter_value(%struct.kvm_vcpu* %45, i32 %46, i32 0)
  br label %48

48:                                               ; preds = %44
  %49 = load i32, i32* %6, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %6, align 4
  br label %40

51:                                               ; preds = %40
  br label %52

52:                                               ; preds = %51, %34
  ret void
}

declare dso_local i32 @kvm_pmu_valid_counter_mask(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_pmu_enable_counter_mask(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @__vcpu_sys_reg(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @kvm_pmu_disable_counter_mask(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @kvm_pmu_set_counter_value(%struct.kvm_vcpu*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
