; ModuleID = '/home/carl/AnghaBench/linux/virt/kvm/arm/extr_pmu.c_kvm_pmu_overflow_status.c'
source_filename = "/home/carl/AnghaBench/linux/virt/kvm/arm/extr_pmu.c_kvm_pmu_overflow_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }

@PMCR_EL0 = common dso_local global i32 0, align 4
@ARMV8_PMU_PMCR_E = common dso_local global i32 0, align 4
@PMOVSSET_EL0 = common dso_local global i32 0, align 4
@PMCNTENSET_EL0 = common dso_local global i32 0, align 4
@PMINTENSET_EL1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*)* @kvm_pmu_overflow_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvm_pmu_overflow_status(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca %struct.kvm_vcpu*, align 8
  %3 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %5 = load i32, i32* @PMCR_EL0, align 4
  %6 = call i32 @__vcpu_sys_reg(%struct.kvm_vcpu* %4, i32 %5)
  %7 = load i32, i32* @ARMV8_PMU_PMCR_E, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %28

10:                                               ; preds = %1
  %11 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %12 = load i32, i32* @PMOVSSET_EL0, align 4
  %13 = call i32 @__vcpu_sys_reg(%struct.kvm_vcpu* %11, i32 %12)
  store i32 %13, i32* %3, align 4
  %14 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %15 = load i32, i32* @PMCNTENSET_EL0, align 4
  %16 = call i32 @__vcpu_sys_reg(%struct.kvm_vcpu* %14, i32 %15)
  %17 = load i32, i32* %3, align 4
  %18 = and i32 %17, %16
  store i32 %18, i32* %3, align 4
  %19 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %20 = load i32, i32* @PMINTENSET_EL1, align 4
  %21 = call i32 @__vcpu_sys_reg(%struct.kvm_vcpu* %19, i32 %20)
  %22 = load i32, i32* %3, align 4
  %23 = and i32 %22, %21
  store i32 %23, i32* %3, align 4
  %24 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %25 = call i32 @kvm_pmu_valid_counter_mask(%struct.kvm_vcpu* %24)
  %26 = load i32, i32* %3, align 4
  %27 = and i32 %26, %25
  store i32 %27, i32* %3, align 4
  br label %28

28:                                               ; preds = %10, %1
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local i32 @__vcpu_sys_reg(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @kvm_pmu_valid_counter_mask(%struct.kvm_vcpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
