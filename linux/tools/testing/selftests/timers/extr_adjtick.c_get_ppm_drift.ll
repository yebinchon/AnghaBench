; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/timers/extr_adjtick.c_get_ppm_drift.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/timers/extr_adjtick.c_get_ppm_drift.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec = type { i32 }

@MILLION = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @get_ppm_drift() #0 {
  %1 = alloca %struct.timespec, align 4
  %2 = alloca %struct.timespec, align 4
  %3 = alloca %struct.timespec, align 4
  %4 = alloca %struct.timespec, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = call i32 @get_monotonic_and_raw(%struct.timespec* %1, %struct.timespec* %2)
  %9 = call i32 @sleep(i32 15)
  %10 = call i32 @get_monotonic_and_raw(%struct.timespec* %3, %struct.timespec* %4)
  %11 = getelementptr inbounds %struct.timespec, %struct.timespec* %1, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = getelementptr inbounds %struct.timespec, %struct.timespec* %3, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @diff_timespec(i32 %12, i32 %14)
  store i64 %15, i64* %5, align 8
  %16 = getelementptr inbounds %struct.timespec, %struct.timespec* %2, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = getelementptr inbounds %struct.timespec, %struct.timespec* %4, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @diff_timespec(i32 %17, i32 %19)
  store i64 %20, i64* %6, align 8
  %21 = load i64, i64* %5, align 8
  %22 = load i64, i64* @MILLION, align 8
  %23 = mul nsw i64 %21, %22
  %24 = load i64, i64* %6, align 8
  %25 = sdiv i64 %23, %24
  %26 = load i64, i64* @MILLION, align 8
  %27 = sub nsw i64 %25, %26
  store i64 %27, i64* %7, align 8
  %28 = load i64, i64* %7, align 8
  ret i64 %28
}

declare dso_local i32 @get_monotonic_and_raw(%struct.timespec*, %struct.timespec*) #1

declare dso_local i32 @sleep(i32) #1

declare dso_local i64 @diff_timespec(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
