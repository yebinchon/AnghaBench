; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_misc.c_get_play_start_pts.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_misc.c_get_play_start_pts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MPContext = type { i32, %struct.MPOpts* }
%struct.MPOpts = type { i32 }

@MP_NOPTS_VALUE = common dso_local global double 0.000000e+00, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @get_play_start_pts(%struct.MPContext* %0) #0 {
  %2 = alloca %struct.MPContext*, align 8
  %3 = alloca %struct.MPOpts*, align 8
  %4 = alloca double, align 8
  store %struct.MPContext* %0, %struct.MPContext** %2, align 8
  %5 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %6 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %5, i32 0, i32 1
  %7 = load %struct.MPOpts*, %struct.MPOpts** %6, align 8
  store %struct.MPOpts* %7, %struct.MPOpts** %3, align 8
  %8 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %9 = load %struct.MPOpts*, %struct.MPOpts** %3, align 8
  %10 = getelementptr inbounds %struct.MPOpts, %struct.MPOpts* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call double @rel_time_to_abs(%struct.MPContext* %8, i32 %11)
  store double %12, double* %4, align 8
  %13 = load double, double* %4, align 8
  %14 = load double, double* @MP_NOPTS_VALUE, align 8
  %15 = fcmp oeq double %13, %14
  br i1 %15, label %16, label %22

16:                                               ; preds = %1
  %17 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %18 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %19 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call double @get_start_time(%struct.MPContext* %17, i32 %20)
  store double %21, double* %4, align 8
  br label %22

22:                                               ; preds = %16, %1
  %23 = load double, double* %4, align 8
  ret double %23
}

declare dso_local double @rel_time_to_abs(%struct.MPContext*, i32) #1

declare dso_local double @get_start_time(%struct.MPContext*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
