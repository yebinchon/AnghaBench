; ModuleID = '/home/carl/AnghaBench/mpv/osdep/extr_timer-darwin.c_mp_raw_time_init.c'
source_filename = "/home/carl/AnghaBench/mpv/osdep/extr_timer-darwin.c_mp_raw_time_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mach_timebase_info = type { i64, i64 }

@timebase_ratio = common dso_local global double 0.000000e+00, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mp_raw_time_init() #0 {
  %1 = alloca %struct.mach_timebase_info, align 8
  %2 = call i32 @mach_timebase_info(%struct.mach_timebase_info* %1)
  %3 = getelementptr inbounds %struct.mach_timebase_info, %struct.mach_timebase_info* %1, i32 0, i32 1
  %4 = load i64, i64* %3, align 8
  %5 = sitofp i64 %4 to double
  %6 = getelementptr inbounds %struct.mach_timebase_info, %struct.mach_timebase_info* %1, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = sitofp i64 %7 to double
  %9 = fdiv double %5, %8
  %10 = fmul double %9, 1.000000e-09
  store double %10, double* @timebase_ratio, align 8
  ret void
}

declare dso_local i32 @mach_timebase_info(%struct.mach_timebase_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
