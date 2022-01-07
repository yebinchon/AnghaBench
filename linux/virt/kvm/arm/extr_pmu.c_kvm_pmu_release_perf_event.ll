; ModuleID = '/home/carl/AnghaBench/linux/virt/kvm/arm/extr_pmu.c_kvm_pmu_release_perf_event.c'
source_filename = "/home/carl/AnghaBench/linux/virt/kvm/arm/extr_pmu.c_kvm_pmu_release_perf_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_pmc = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm_pmc*)* @kvm_pmu_release_perf_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kvm_pmu_release_perf_event(%struct.kvm_pmc* %0) #0 {
  %2 = alloca %struct.kvm_pmc*, align 8
  store %struct.kvm_pmc* %0, %struct.kvm_pmc** %2, align 8
  %3 = load %struct.kvm_pmc*, %struct.kvm_pmc** %2, align 8
  %4 = call %struct.kvm_pmc* @kvm_pmu_get_canonical_pmc(%struct.kvm_pmc* %3)
  store %struct.kvm_pmc* %4, %struct.kvm_pmc** %2, align 8
  %5 = load %struct.kvm_pmc*, %struct.kvm_pmc** %2, align 8
  %6 = getelementptr inbounds %struct.kvm_pmc, %struct.kvm_pmc* %5, i32 0, i32 0
  %7 = load i32*, i32** %6, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %9, label %20

9:                                                ; preds = %1
  %10 = load %struct.kvm_pmc*, %struct.kvm_pmc** %2, align 8
  %11 = getelementptr inbounds %struct.kvm_pmc, %struct.kvm_pmc* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = call i32 @perf_event_disable(i32* %12)
  %14 = load %struct.kvm_pmc*, %struct.kvm_pmc** %2, align 8
  %15 = getelementptr inbounds %struct.kvm_pmc, %struct.kvm_pmc* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = call i32 @perf_event_release_kernel(i32* %16)
  %18 = load %struct.kvm_pmc*, %struct.kvm_pmc** %2, align 8
  %19 = getelementptr inbounds %struct.kvm_pmc, %struct.kvm_pmc* %18, i32 0, i32 0
  store i32* null, i32** %19, align 8
  br label %20

20:                                               ; preds = %9, %1
  ret void
}

declare dso_local %struct.kvm_pmc* @kvm_pmu_get_canonical_pmc(%struct.kvm_pmc*) #1

declare dso_local i32 @perf_event_disable(i32*) #1

declare dso_local i32 @perf_event_release_kernel(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
