; ModuleID = '/home/carl/AnghaBench/linux/virt/kvm/arm/extr_pmu.c_kvm_pmu_enable_counter_mask.c'
source_filename = "/home/carl/AnghaBench/linux/virt/kvm/arm/extr_pmu.c_kvm_pmu_enable_counter_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.kvm_pmu }
%struct.kvm_pmu = type { %struct.kvm_pmc* }
%struct.kvm_pmc = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }

@PMCR_EL0 = common dso_local global i32 0, align 4
@ARMV8_PMU_PMCR_E = common dso_local global i32 0, align 4
@ARMV8_PMU_MAX_COUNTERS = common dso_local global i32 0, align 4
@PERF_EVENT_STATE_ACTIVE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"fail to enable perf event\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kvm_pmu_enable_counter_mask(%struct.kvm_vcpu* %0, i32 %1) #0 {
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.kvm_pmu*, align 8
  %7 = alloca %struct.kvm_pmc*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %9 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  store %struct.kvm_pmu* %10, %struct.kvm_pmu** %6, align 8
  %11 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %12 = load i32, i32* @PMCR_EL0, align 4
  %13 = call i32 @__vcpu_sys_reg(%struct.kvm_vcpu* %11, i32 %12)
  %14 = load i32, i32* @ARMV8_PMU_PMCR_E, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %17, %2
  br label %75

21:                                               ; preds = %17
  store i32 0, i32* %5, align 4
  br label %22

22:                                               ; preds = %72, %21
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @ARMV8_PMU_MAX_COUNTERS, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %75

26:                                               ; preds = %22
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @BIT(i32 %28)
  %30 = and i32 %27, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %26
  br label %72

33:                                               ; preds = %26
  %34 = load %struct.kvm_pmu*, %struct.kvm_pmu** %6, align 8
  %35 = getelementptr inbounds %struct.kvm_pmu, %struct.kvm_pmu* %34, i32 0, i32 0
  %36 = load %struct.kvm_pmc*, %struct.kvm_pmc** %35, align 8
  %37 = load i32, i32* %5, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.kvm_pmc, %struct.kvm_pmc* %36, i64 %38
  store %struct.kvm_pmc* %39, %struct.kvm_pmc** %7, align 8
  %40 = load %struct.kvm_pmc*, %struct.kvm_pmc** %7, align 8
  %41 = call i64 @kvm_pmu_pmc_is_chained(%struct.kvm_pmc* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %51

43:                                               ; preds = %33
  %44 = load i32, i32* %5, align 4
  %45 = call i64 @kvm_pmu_idx_is_high_counter(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %43
  %48 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %49 = load i32, i32* %5, align 4
  %50 = call i32 @kvm_pmu_create_perf_event(%struct.kvm_vcpu* %48, i32 %49)
  br label %72

51:                                               ; preds = %43, %33
  %52 = load %struct.kvm_pmc*, %struct.kvm_pmc** %7, align 8
  %53 = getelementptr inbounds %struct.kvm_pmc, %struct.kvm_pmc* %52, i32 0, i32 0
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = icmp ne %struct.TYPE_4__* %54, null
  br i1 %55, label %56, label %71

56:                                               ; preds = %51
  %57 = load %struct.kvm_pmc*, %struct.kvm_pmc** %7, align 8
  %58 = getelementptr inbounds %struct.kvm_pmc, %struct.kvm_pmc* %57, i32 0, i32 0
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = call i32 @perf_event_enable(%struct.TYPE_4__* %59)
  %61 = load %struct.kvm_pmc*, %struct.kvm_pmc** %7, align 8
  %62 = getelementptr inbounds %struct.kvm_pmc, %struct.kvm_pmc* %61, i32 0, i32 0
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @PERF_EVENT_STATE_ACTIVE, align 8
  %67 = icmp ne i64 %65, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %56
  %69 = call i32 @kvm_debug(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %70

70:                                               ; preds = %68, %56
  br label %71

71:                                               ; preds = %70, %51
  br label %72

72:                                               ; preds = %71, %47, %32
  %73 = load i32, i32* %5, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %5, align 4
  br label %22

75:                                               ; preds = %20, %22
  ret void
}

declare dso_local i32 @__vcpu_sys_reg(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i64 @kvm_pmu_pmc_is_chained(%struct.kvm_pmc*) #1

declare dso_local i64 @kvm_pmu_idx_is_high_counter(i32) #1

declare dso_local i32 @kvm_pmu_create_perf_event(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @perf_event_enable(%struct.TYPE_4__*) #1

declare dso_local i32 @kvm_debug(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
