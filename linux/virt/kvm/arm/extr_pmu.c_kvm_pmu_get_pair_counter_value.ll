; ModuleID = '/home/carl/AnghaBench/linux/virt/kvm/arm/extr_pmu.c_kvm_pmu_get_pair_counter_value.c'
source_filename = "/home/carl/AnghaBench/linux/virt/kvm/arm/extr_pmu.c_kvm_pmu_get_pair_counter_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.kvm_pmc = type { i32, i64 }

@PMEVCNTR0_EL0 = common dso_local global i32 0, align 4
@ARMV8_PMU_CYCLE_IDX = common dso_local global i64 0, align 8
@PMCCNTR_EL0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*, %struct.kvm_pmc*)* @kvm_pmu_get_pair_counter_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvm_pmu_get_pair_counter_value(%struct.kvm_vcpu* %0, %struct.kvm_pmc* %1) #0 {
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca %struct.kvm_pmc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  store %struct.kvm_pmc* %1, %struct.kvm_pmc** %4, align 8
  %10 = load %struct.kvm_pmc*, %struct.kvm_pmc** %4, align 8
  %11 = call i64 @kvm_pmu_pmc_is_chained(%struct.kvm_pmc* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %33

13:                                               ; preds = %2
  %14 = load %struct.kvm_pmc*, %struct.kvm_pmc** %4, align 8
  %15 = call %struct.kvm_pmc* @kvm_pmu_get_canonical_pmc(%struct.kvm_pmc* %14)
  store %struct.kvm_pmc* %15, %struct.kvm_pmc** %4, align 8
  %16 = load i32, i32* @PMEVCNTR0_EL0, align 4
  %17 = load %struct.kvm_pmc*, %struct.kvm_pmc** %4, align 8
  %18 = getelementptr inbounds %struct.kvm_pmc, %struct.kvm_pmc* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = add nsw i32 %16, %19
  store i32 %20, i32* %7, align 4
  %21 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @__vcpu_sys_reg(%struct.kvm_vcpu* %21, i32 %22)
  store i32 %23, i32* %5, align 4
  %24 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %25 = load i32, i32* %7, align 4
  %26 = add nsw i32 %25, 1
  %27 = call i32 @__vcpu_sys_reg(%struct.kvm_vcpu* %24, i32 %26)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @lower_32_bits(i32 %28)
  %30 = load i32, i32* %6, align 4
  %31 = shl i32 %30, 32
  %32 = or i32 %29, %31
  store i32 %32, i32* %5, align 4
  br label %53

33:                                               ; preds = %2
  %34 = load %struct.kvm_pmc*, %struct.kvm_pmc** %4, align 8
  %35 = getelementptr inbounds %struct.kvm_pmc, %struct.kvm_pmc* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = sext i32 %36 to i64
  %38 = load i64, i64* @ARMV8_PMU_CYCLE_IDX, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %33
  %41 = load i32, i32* @PMCCNTR_EL0, align 4
  br label %48

42:                                               ; preds = %33
  %43 = load i32, i32* @PMEVCNTR0_EL0, align 4
  %44 = load %struct.kvm_pmc*, %struct.kvm_pmc** %4, align 8
  %45 = getelementptr inbounds %struct.kvm_pmc, %struct.kvm_pmc* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = add nsw i32 %43, %46
  br label %48

48:                                               ; preds = %42, %40
  %49 = phi i32 [ %41, %40 ], [ %47, %42 ]
  store i32 %49, i32* %7, align 4
  %50 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %51 = load i32, i32* %7, align 4
  %52 = call i32 @__vcpu_sys_reg(%struct.kvm_vcpu* %50, i32 %51)
  store i32 %52, i32* %5, align 4
  br label %53

53:                                               ; preds = %48, %13
  %54 = load %struct.kvm_pmc*, %struct.kvm_pmc** %4, align 8
  %55 = getelementptr inbounds %struct.kvm_pmc, %struct.kvm_pmc* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %67

58:                                               ; preds = %53
  %59 = load %struct.kvm_pmc*, %struct.kvm_pmc** %4, align 8
  %60 = getelementptr inbounds %struct.kvm_pmc, %struct.kvm_pmc* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = call i64 @perf_event_read_value(i64 %61, i32* %8, i32* %9)
  %63 = load i32, i32* %5, align 4
  %64 = sext i32 %63 to i64
  %65 = add nsw i64 %64, %62
  %66 = trunc i64 %65 to i32
  store i32 %66, i32* %5, align 4
  br label %67

67:                                               ; preds = %58, %53
  %68 = load i32, i32* %5, align 4
  ret i32 %68
}

declare dso_local i64 @kvm_pmu_pmc_is_chained(%struct.kvm_pmc*) #1

declare dso_local %struct.kvm_pmc* @kvm_pmu_get_canonical_pmc(%struct.kvm_pmc*) #1

declare dso_local i32 @__vcpu_sys_reg(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i64 @perf_event_read_value(i64, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
