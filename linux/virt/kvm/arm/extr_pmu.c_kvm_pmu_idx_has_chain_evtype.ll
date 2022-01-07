; ModuleID = '/home/carl/AnghaBench/linux/virt/kvm/arm/extr_pmu.c_kvm_pmu_idx_has_chain_evtype.c'
source_filename = "/home/carl/AnghaBench/linux/virt/kvm/arm/extr_pmu.c_kvm_pmu_idx_has_chain_evtype.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }

@ARMV8_PMU_CYCLE_IDX = common dso_local global i32 0, align 4
@PMEVTYPER0_EL0 = common dso_local global i32 0, align 4
@ARMV8_PMU_EVTYPE_EVENT = common dso_local global i32 0, align 4
@ARMV8_PMUV3_PERFCTR_CHAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*, i32)* @kvm_pmu_idx_has_chain_evtype to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvm_pmu_idx_has_chain_evtype(%struct.kvm_vcpu* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kvm_vcpu*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = or i32 %8, 1
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @ARMV8_PMU_CYCLE_IDX, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %27

14:                                               ; preds = %2
  %15 = load i32, i32* @PMEVTYPER0_EL0, align 4
  %16 = load i32, i32* %5, align 4
  %17 = add nsw i32 %15, %16
  store i32 %17, i32* %7, align 4
  %18 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @__vcpu_sys_reg(%struct.kvm_vcpu* %18, i32 %19)
  %21 = load i32, i32* @ARMV8_PMU_EVTYPE_EVENT, align 4
  %22 = and i32 %20, %21
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @ARMV8_PMUV3_PERFCTR_CHAIN, align 4
  %25 = icmp eq i32 %23, %24
  %26 = zext i1 %25 to i32
  store i32 %26, i32* %3, align 4
  br label %27

27:                                               ; preds = %14, %13
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

declare dso_local i32 @__vcpu_sys_reg(%struct.kvm_vcpu*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
