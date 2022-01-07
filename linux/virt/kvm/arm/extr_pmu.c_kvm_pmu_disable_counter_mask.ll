; ModuleID = '/home/carl/AnghaBench/linux/virt/kvm/arm/extr_pmu.c_kvm_pmu_disable_counter_mask.c'
source_filename = "/home/carl/AnghaBench/linux/virt/kvm/arm/extr_pmu.c_kvm_pmu_disable_counter_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.kvm_pmu }
%struct.kvm_pmu = type { %struct.kvm_pmc* }
%struct.kvm_pmc = type { i64 }

@ARMV8_PMU_MAX_COUNTERS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kvm_pmu_disable_counter_mask(%struct.kvm_vcpu* %0, i32 %1) #0 {
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.kvm_pmu*, align 8
  %7 = alloca %struct.kvm_pmc*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %9 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  store %struct.kvm_pmu* %10, %struct.kvm_pmu** %6, align 8
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  br label %58

14:                                               ; preds = %2
  store i32 0, i32* %5, align 4
  br label %15

15:                                               ; preds = %55, %14
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @ARMV8_PMU_MAX_COUNTERS, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %58

19:                                               ; preds = %15
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @BIT(i32 %21)
  %23 = and i32 %20, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %19
  br label %55

26:                                               ; preds = %19
  %27 = load %struct.kvm_pmu*, %struct.kvm_pmu** %6, align 8
  %28 = getelementptr inbounds %struct.kvm_pmu, %struct.kvm_pmu* %27, i32 0, i32 0
  %29 = load %struct.kvm_pmc*, %struct.kvm_pmc** %28, align 8
  %30 = load i32, i32* %5, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.kvm_pmc, %struct.kvm_pmc* %29, i64 %31
  store %struct.kvm_pmc* %32, %struct.kvm_pmc** %7, align 8
  %33 = load %struct.kvm_pmc*, %struct.kvm_pmc** %7, align 8
  %34 = call i64 @kvm_pmu_pmc_is_chained(%struct.kvm_pmc* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %26
  %37 = load i32, i32* %5, align 4
  %38 = call i64 @kvm_pmu_idx_is_high_counter(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %36
  %41 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @kvm_pmu_create_perf_event(%struct.kvm_vcpu* %41, i32 %42)
  br label %55

44:                                               ; preds = %36, %26
  %45 = load %struct.kvm_pmc*, %struct.kvm_pmc** %7, align 8
  %46 = getelementptr inbounds %struct.kvm_pmc, %struct.kvm_pmc* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %44
  %50 = load %struct.kvm_pmc*, %struct.kvm_pmc** %7, align 8
  %51 = getelementptr inbounds %struct.kvm_pmc, %struct.kvm_pmc* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = call i32 @perf_event_disable(i64 %52)
  br label %54

54:                                               ; preds = %49, %44
  br label %55

55:                                               ; preds = %54, %40, %25
  %56 = load i32, i32* %5, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %5, align 4
  br label %15

58:                                               ; preds = %13, %15
  ret void
}

declare dso_local i32 @BIT(i32) #1

declare dso_local i64 @kvm_pmu_pmc_is_chained(%struct.kvm_pmc*) #1

declare dso_local i64 @kvm_pmu_idx_is_high_counter(i32) #1

declare dso_local i32 @kvm_pmu_create_perf_event(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @perf_event_disable(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
