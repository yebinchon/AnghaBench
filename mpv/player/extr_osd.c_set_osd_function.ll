; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_osd.c_set_osd_function.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_osd.c_set_osd_function.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MPContext = type { i32, i32, i64, %struct.MPOpts* }
%struct.MPOpts = type { double }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_osd_function(%struct.MPContext* %0, i32 %1) #0 {
  %3 = alloca %struct.MPContext*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.MPOpts*, align 8
  store %struct.MPContext* %0, %struct.MPContext** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %7 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %6, i32 0, i32 3
  %8 = load %struct.MPOpts*, %struct.MPOpts** %7, align 8
  store %struct.MPOpts* %8, %struct.MPOpts** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %11 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %10, i32 0, i32 0
  store i32 %9, i32* %11, align 8
  %12 = call i64 (...) @mp_time_sec()
  %13 = sitofp i64 %12 to double
  %14 = load %struct.MPOpts*, %struct.MPOpts** %5, align 8
  %15 = getelementptr inbounds %struct.MPOpts, %struct.MPOpts* %14, i32 0, i32 0
  %16 = load double, double* %15, align 8
  %17 = fdiv double %16, 1.000000e+03
  %18 = fadd double %13, %17
  %19 = fptosi double %18 to i64
  %20 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %21 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %20, i32 0, i32 2
  store i64 %19, i64* %21, align 8
  %22 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %23 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %22, i32 0, i32 1
  store i32 1, i32* %23, align 4
  %24 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %25 = call i32 @mp_wakeup_core(%struct.MPContext* %24)
  ret void
}

declare dso_local i64 @mp_time_sec(...) #1

declare dso_local i32 @mp_wakeup_core(%struct.MPContext*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
