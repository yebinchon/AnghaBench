; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/timers/extr_freq-step.c_diff_timespec.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/timers/extr_freq-step.c_diff_timespec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec = type { double, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (double (%struct.timespec*, %struct.timespec*)* @diff_timespec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @diff_timespec(%struct.timespec* %0, %struct.timespec* %1) #0 {
  %3 = alloca %struct.timespec*, align 8
  %4 = alloca %struct.timespec*, align 8
  store %struct.timespec* %0, %struct.timespec** %3, align 8
  store %struct.timespec* %1, %struct.timespec** %4, align 8
  %5 = load %struct.timespec*, %struct.timespec** %3, align 8
  %6 = getelementptr inbounds %struct.timespec, %struct.timespec* %5, i32 0, i32 0
  %7 = load double, double* %6, align 8
  %8 = load %struct.timespec*, %struct.timespec** %4, align 8
  %9 = getelementptr inbounds %struct.timespec, %struct.timespec* %8, i32 0, i32 0
  %10 = load double, double* %9, align 8
  %11 = fsub double %7, %10
  %12 = load %struct.timespec*, %struct.timespec** %3, align 8
  %13 = getelementptr inbounds %struct.timespec, %struct.timespec* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.timespec*, %struct.timespec** %4, align 8
  %16 = getelementptr inbounds %struct.timespec, %struct.timespec* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = sub nsw i32 %14, %17
  %19 = sitofp i32 %18 to double
  %20 = fdiv double %19, 1.000000e+09
  %21 = fadd double %11, %20
  ret double %21
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
