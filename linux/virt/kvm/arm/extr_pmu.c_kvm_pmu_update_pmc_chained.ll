; ModuleID = '/home/carl/AnghaBench/linux/virt/kvm/arm/extr_pmu.c_kvm_pmu_update_pmc_chained.c'
source_filename = "/home/carl/AnghaBench/linux/virt/kvm/arm/extr_pmu.c_kvm_pmu_update_pmc_chained.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.kvm_pmu }
%struct.kvm_pmu = type { i32, %struct.kvm_pmc* }
%struct.kvm_pmc = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm_vcpu*, i64)* @kvm_pmu_update_pmc_chained to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kvm_pmu_update_pmc_chained(%struct.kvm_vcpu* %0, i64 %1) #0 {
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.kvm_pmu*, align 8
  %6 = alloca %struct.kvm_pmc*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %8 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  store %struct.kvm_pmu* %9, %struct.kvm_pmu** %5, align 8
  %10 = load %struct.kvm_pmu*, %struct.kvm_pmu** %5, align 8
  %11 = getelementptr inbounds %struct.kvm_pmu, %struct.kvm_pmu* %10, i32 0, i32 1
  %12 = load %struct.kvm_pmc*, %struct.kvm_pmc** %11, align 8
  %13 = load i64, i64* %4, align 8
  %14 = getelementptr inbounds %struct.kvm_pmc, %struct.kvm_pmc* %12, i64 %13
  store %struct.kvm_pmc* %14, %struct.kvm_pmc** %6, align 8
  %15 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %16 = load %struct.kvm_pmc*, %struct.kvm_pmc** %6, align 8
  %17 = getelementptr inbounds %struct.kvm_pmc, %struct.kvm_pmc* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @kvm_pmu_idx_has_chain_evtype(%struct.kvm_vcpu* %15, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %40

21:                                               ; preds = %2
  %22 = load %struct.kvm_pmc*, %struct.kvm_pmc** %6, align 8
  %23 = call i32 @kvm_pmu_pmc_is_chained(%struct.kvm_pmc* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %21
  %26 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %27 = load %struct.kvm_pmc*, %struct.kvm_pmc** %6, align 8
  %28 = call i32 @kvm_pmu_stop_counter(%struct.kvm_vcpu* %26, %struct.kvm_pmc* %27)
  br label %29

29:                                               ; preds = %25, %21
  %30 = load %struct.kvm_pmc*, %struct.kvm_pmc** %6, align 8
  %31 = getelementptr inbounds %struct.kvm_pmc, %struct.kvm_pmc* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = ashr i32 %32, 1
  %34 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %35 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.kvm_pmu, %struct.kvm_pmu* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @set_bit(i32 %33, i32 %38)
  br label %51

40:                                               ; preds = %2
  %41 = load %struct.kvm_pmc*, %struct.kvm_pmc** %6, align 8
  %42 = getelementptr inbounds %struct.kvm_pmc, %struct.kvm_pmc* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = ashr i32 %43, 1
  %45 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %46 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.kvm_pmu, %struct.kvm_pmu* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @clear_bit(i32 %44, i32 %49)
  br label %51

51:                                               ; preds = %40, %29
  ret void
}

declare dso_local i64 @kvm_pmu_idx_has_chain_evtype(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @kvm_pmu_pmc_is_chained(%struct.kvm_pmc*) #1

declare dso_local i32 @kvm_pmu_stop_counter(%struct.kvm_vcpu*, %struct.kvm_pmc*) #1

declare dso_local i32 @set_bit(i32, i32) #1

declare dso_local i32 @clear_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
