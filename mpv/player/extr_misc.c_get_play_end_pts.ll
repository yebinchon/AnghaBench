; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_misc.c_get_play_end_pts.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_misc.c_get_play_end_pts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MPContext = type { i64 }

@MP_NOPTS_VALUE = common dso_local global double 0.000000e+00, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @get_play_end_pts(%struct.MPContext* %0) #0 {
  %2 = alloca %struct.MPContext*, align 8
  %3 = alloca double, align 8
  %4 = alloca [2 x double], align 16
  store %struct.MPContext* %0, %struct.MPContext** %2, align 8
  %5 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %6 = call double @get_play_end_pts_setting(%struct.MPContext* %5)
  store double %6, double* %3, align 8
  %7 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %8 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %29

11:                                               ; preds = %1
  %12 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %13 = getelementptr inbounds [2 x double], [2 x double]* %4, i64 0, i64 0
  %14 = call i64 @get_ab_loop_times(%struct.MPContext* %12, double* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %29

16:                                               ; preds = %11
  %17 = load double, double* %3, align 8
  %18 = load double, double* @MP_NOPTS_VALUE, align 8
  %19 = fcmp oeq double %17, %18
  br i1 %19, label %25, label %20

20:                                               ; preds = %16
  %21 = load double, double* %3, align 8
  %22 = getelementptr inbounds [2 x double], [2 x double]* %4, i64 0, i64 1
  %23 = load double, double* %22, align 8
  %24 = fcmp ogt double %21, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %20, %16
  %26 = getelementptr inbounds [2 x double], [2 x double]* %4, i64 0, i64 1
  %27 = load double, double* %26, align 8
  store double %27, double* %3, align 8
  br label %28

28:                                               ; preds = %25, %20
  br label %29

29:                                               ; preds = %28, %11, %1
  %30 = load double, double* %3, align 8
  ret double %30
}

declare dso_local double @get_play_end_pts_setting(%struct.MPContext*) #1

declare dso_local i64 @get_ab_loop_times(%struct.MPContext*, double*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
