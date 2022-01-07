; ModuleID = '/home/carl/AnghaBench/linux/virt/kvm/arm/extr_pmu.c_kvm_pmu_create_perf_event.c'
source_filename = "/home/carl/AnghaBench/linux/virt/kvm/arm/extr_pmu.c_kvm_pmu_create_perf_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.kvm_pmu }
%struct.kvm_pmu = type { i32* }
%struct.kvm_pmc = type { i64, %struct.perf_event* }
%struct.perf_event = type { i32 }
%struct.perf_event_attr = type { i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32 }

@ARMV8_PMU_CYCLE_IDX = common dso_local global i64 0, align 8
@PMCCFILTR_EL0 = common dso_local global i64 0, align 8
@PMEVTYPER0_EL0 = common dso_local global i64 0, align 8
@ARMV8_PMU_EVTYPE_EVENT = common dso_local global i64 0, align 8
@ARMV8_PMUV3_PERFCTR_SW_INCR = common dso_local global i64 0, align 8
@PERF_TYPE_RAW = common dso_local global i32 0, align 4
@ARMV8_PMU_EXCLUDE_EL0 = common dso_local global i64 0, align 8
@ARMV8_PMU_EXCLUDE_EL1 = common dso_local global i64 0, align 8
@ARMV8_PMUV3_PERFCTR_CPU_CYCLES = common dso_local global i64 0, align 8
@PERF_ATTR_CFG1_KVM_PMU_CHAINED = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@kvm_pmu_perf_overflow = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"kvm: pmu event creation failed %ld\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm_vcpu*, i64)* @kvm_pmu_create_perf_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kvm_pmu_create_perf_event(%struct.kvm_vcpu* %0, i64 %1) #0 {
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.kvm_pmu*, align 8
  %6 = alloca %struct.kvm_pmc*, align 8
  %7 = alloca %struct.perf_event*, align 8
  %8 = alloca %struct.perf_event_attr, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  store i64 %1, i64* %4, align 8
  %13 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %14 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  store %struct.kvm_pmu* %15, %struct.kvm_pmu** %5, align 8
  %16 = load %struct.kvm_pmu*, %struct.kvm_pmu** %5, align 8
  %17 = getelementptr inbounds %struct.kvm_pmu, %struct.kvm_pmu* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = load i64, i64* %4, align 8
  %20 = getelementptr inbounds i32, i32* %18, i64 %19
  %21 = call %struct.kvm_pmc* @kvm_pmu_get_canonical_pmc(i32* %20)
  store %struct.kvm_pmc* %21, %struct.kvm_pmc** %6, align 8
  %22 = load %struct.kvm_pmc*, %struct.kvm_pmc** %6, align 8
  %23 = getelementptr inbounds %struct.kvm_pmc, %struct.kvm_pmc* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @ARMV8_PMU_CYCLE_IDX, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %2
  %28 = load i64, i64* @PMCCFILTR_EL0, align 8
  br label %35

29:                                               ; preds = %2
  %30 = load i64, i64* @PMEVTYPER0_EL0, align 8
  %31 = load %struct.kvm_pmc*, %struct.kvm_pmc** %6, align 8
  %32 = getelementptr inbounds %struct.kvm_pmc, %struct.kvm_pmc* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = add i64 %30, %33
  br label %35

35:                                               ; preds = %29, %27
  %36 = phi i64 [ %28, %27 ], [ %34, %29 ]
  store i64 %36, i64* %11, align 8
  %37 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %38 = load i64, i64* %11, align 8
  %39 = call i64 @__vcpu_sys_reg(%struct.kvm_vcpu* %37, i64 %38)
  store i64 %39, i64* %12, align 8
  %40 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %41 = load %struct.kvm_pmc*, %struct.kvm_pmc** %6, align 8
  %42 = call i32 @kvm_pmu_stop_counter(%struct.kvm_vcpu* %40, %struct.kvm_pmc* %41)
  %43 = load i64, i64* %12, align 8
  %44 = load i64, i64* @ARMV8_PMU_EVTYPE_EVENT, align 8
  %45 = and i64 %43, %44
  store i64 %45, i64* %9, align 8
  %46 = load i64, i64* %9, align 8
  %47 = load i64, i64* @ARMV8_PMUV3_PERFCTR_SW_INCR, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %56

49:                                               ; preds = %35
  %50 = load %struct.kvm_pmc*, %struct.kvm_pmc** %6, align 8
  %51 = getelementptr inbounds %struct.kvm_pmc, %struct.kvm_pmc* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @ARMV8_PMU_CYCLE_IDX, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %49
  br label %168

56:                                               ; preds = %49, %35
  %57 = call i32 @memset(%struct.perf_event_attr* %8, i32 0, i32 56)
  %58 = load i32, i32* @PERF_TYPE_RAW, align 4
  %59 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %8, i32 0, i32 10
  store i32 %58, i32* %59, align 4
  %60 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %8, i32 0, i32 0
  store i32 56, i32* %60, align 8
  %61 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %8, i32 0, i32 1
  store i32 1, i32* %61, align 4
  %62 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %63 = load %struct.kvm_pmc*, %struct.kvm_pmc** %6, align 8
  %64 = getelementptr inbounds %struct.kvm_pmc, %struct.kvm_pmc* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = call i64 @kvm_pmu_counter_is_enabled(%struct.kvm_vcpu* %62, i64 %65)
  %67 = icmp ne i64 %66, 0
  %68 = xor i1 %67, true
  %69 = zext i1 %68 to i32
  %70 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %8, i32 0, i32 2
  store i32 %69, i32* %70, align 8
  %71 = load i64, i64* %12, align 8
  %72 = load i64, i64* @ARMV8_PMU_EXCLUDE_EL0, align 8
  %73 = and i64 %71, %72
  %74 = icmp ne i64 %73, 0
  %75 = zext i1 %74 to i64
  %76 = select i1 %74, i32 1, i32 0
  %77 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %8, i32 0, i32 3
  store i32 %76, i32* %77, align 4
  %78 = load i64, i64* %12, align 8
  %79 = load i64, i64* @ARMV8_PMU_EXCLUDE_EL1, align 8
  %80 = and i64 %78, %79
  %81 = icmp ne i64 %80, 0
  %82 = zext i1 %81 to i64
  %83 = select i1 %81, i32 1, i32 0
  %84 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %8, i32 0, i32 4
  store i32 %83, i32* %84, align 8
  %85 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %8, i32 0, i32 5
  store i32 1, i32* %85, align 4
  %86 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %8, i32 0, i32 6
  store i32 1, i32* %86, align 8
  %87 = load %struct.kvm_pmc*, %struct.kvm_pmc** %6, align 8
  %88 = getelementptr inbounds %struct.kvm_pmc, %struct.kvm_pmc* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @ARMV8_PMU_CYCLE_IDX, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %94

92:                                               ; preds = %56
  %93 = load i64, i64* @ARMV8_PMUV3_PERFCTR_CPU_CYCLES, align 8
  br label %96

94:                                               ; preds = %56
  %95 = load i64, i64* %9, align 8
  br label %96

96:                                               ; preds = %94, %92
  %97 = phi i64 [ %93, %92 ], [ %95, %94 ]
  %98 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %8, i32 0, i32 7
  store i64 %97, i64* %98, align 8
  %99 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %100 = load %struct.kvm_pmc*, %struct.kvm_pmc** %6, align 8
  %101 = call i64 @kvm_pmu_get_pair_counter_value(%struct.kvm_vcpu* %99, %struct.kvm_pmc* %100)
  store i64 %101, i64* %10, align 8
  %102 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %103 = load %struct.kvm_pmc*, %struct.kvm_pmc** %6, align 8
  %104 = getelementptr inbounds %struct.kvm_pmc, %struct.kvm_pmc* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = call i64 @kvm_pmu_idx_has_chain_evtype(%struct.kvm_vcpu* %102, i64 %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %132

108:                                              ; preds = %96
  %109 = load i64, i64* %10, align 8
  %110 = sub i64 0, %109
  %111 = call i64 @GENMASK(i32 63, i32 0)
  %112 = and i64 %110, %111
  %113 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %8, i32 0, i32 8
  store i64 %112, i64* %113, align 8
  %114 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %115 = load %struct.kvm_pmc*, %struct.kvm_pmc** %6, align 8
  %116 = getelementptr inbounds %struct.kvm_pmc, %struct.kvm_pmc* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = add nsw i64 %117, 1
  %119 = call i64 @kvm_pmu_counter_is_enabled(%struct.kvm_vcpu* %114, i64 %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %126

121:                                              ; preds = %108
  %122 = load i32, i32* @PERF_ATTR_CFG1_KVM_PMU_CHAINED, align 4
  %123 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %8, i32 0, i32 9
  %124 = load i32, i32* %123, align 8
  %125 = or i32 %124, %122
  store i32 %125, i32* %123, align 8
  br label %126

126:                                              ; preds = %121, %108
  %127 = load i32, i32* @current, align 4
  %128 = load i32, i32* @kvm_pmu_perf_overflow, align 4
  %129 = load %struct.kvm_pmc*, %struct.kvm_pmc** %6, align 8
  %130 = getelementptr inbounds %struct.kvm_pmc, %struct.kvm_pmc* %129, i64 1
  %131 = call %struct.perf_event* @perf_event_create_kernel_counter(%struct.perf_event_attr* %8, i32 -1, i32 %127, i32 %128, %struct.kvm_pmc* %130)
  store %struct.perf_event* %131, %struct.perf_event** %7, align 8
  br label %156

132:                                              ; preds = %96
  %133 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %134 = load %struct.kvm_pmc*, %struct.kvm_pmc** %6, align 8
  %135 = getelementptr inbounds %struct.kvm_pmc, %struct.kvm_pmc* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = call i64 @kvm_pmu_idx_is_64bit(%struct.kvm_vcpu* %133, i64 %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %145

139:                                              ; preds = %132
  %140 = load i64, i64* %10, align 8
  %141 = sub i64 0, %140
  %142 = call i64 @GENMASK(i32 63, i32 0)
  %143 = and i64 %141, %142
  %144 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %8, i32 0, i32 8
  store i64 %143, i64* %144, align 8
  br label %151

145:                                              ; preds = %132
  %146 = load i64, i64* %10, align 8
  %147 = sub i64 0, %146
  %148 = call i64 @GENMASK(i32 31, i32 0)
  %149 = and i64 %147, %148
  %150 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %8, i32 0, i32 8
  store i64 %149, i64* %150, align 8
  br label %151

151:                                              ; preds = %145, %139
  %152 = load i32, i32* @current, align 4
  %153 = load i32, i32* @kvm_pmu_perf_overflow, align 4
  %154 = load %struct.kvm_pmc*, %struct.kvm_pmc** %6, align 8
  %155 = call %struct.perf_event* @perf_event_create_kernel_counter(%struct.perf_event_attr* %8, i32 -1, i32 %152, i32 %153, %struct.kvm_pmc* %154)
  store %struct.perf_event* %155, %struct.perf_event** %7, align 8
  br label %156

156:                                              ; preds = %151, %126
  %157 = load %struct.perf_event*, %struct.perf_event** %7, align 8
  %158 = call i64 @IS_ERR(%struct.perf_event* %157)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %164

160:                                              ; preds = %156
  %161 = load %struct.perf_event*, %struct.perf_event** %7, align 8
  %162 = call i32 @PTR_ERR(%struct.perf_event* %161)
  %163 = call i32 @pr_err_once(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %162)
  br label %168

164:                                              ; preds = %156
  %165 = load %struct.perf_event*, %struct.perf_event** %7, align 8
  %166 = load %struct.kvm_pmc*, %struct.kvm_pmc** %6, align 8
  %167 = getelementptr inbounds %struct.kvm_pmc, %struct.kvm_pmc* %166, i32 0, i32 1
  store %struct.perf_event* %165, %struct.perf_event** %167, align 8
  br label %168

168:                                              ; preds = %164, %160, %55
  ret void
}

declare dso_local %struct.kvm_pmc* @kvm_pmu_get_canonical_pmc(i32*) #1

declare dso_local i64 @__vcpu_sys_reg(%struct.kvm_vcpu*, i64) #1

declare dso_local i32 @kvm_pmu_stop_counter(%struct.kvm_vcpu*, %struct.kvm_pmc*) #1

declare dso_local i32 @memset(%struct.perf_event_attr*, i32, i32) #1

declare dso_local i64 @kvm_pmu_counter_is_enabled(%struct.kvm_vcpu*, i64) #1

declare dso_local i64 @kvm_pmu_get_pair_counter_value(%struct.kvm_vcpu*, %struct.kvm_pmc*) #1

declare dso_local i64 @kvm_pmu_idx_has_chain_evtype(%struct.kvm_vcpu*, i64) #1

declare dso_local i64 @GENMASK(i32, i32) #1

declare dso_local %struct.perf_event* @perf_event_create_kernel_counter(%struct.perf_event_attr*, i32, i32, i32, %struct.kvm_pmc*) #1

declare dso_local i64 @kvm_pmu_idx_is_64bit(%struct.kvm_vcpu*, i64) #1

declare dso_local i64 @IS_ERR(%struct.perf_event*) #1

declare dso_local i32 @pr_err_once(i8*, i32) #1

declare dso_local i32 @PTR_ERR(%struct.perf_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
