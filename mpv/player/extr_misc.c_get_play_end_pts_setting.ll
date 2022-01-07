; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_misc.c_get_play_end_pts_setting.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_misc.c_get_play_end_pts_setting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MPContext = type { %struct.MPOpts* }
%struct.MPOpts = type { i32, i32 }

@MP_NOPTS_VALUE = common dso_local global double 0.000000e+00, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (double (%struct.MPContext*)* @get_play_end_pts_setting to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @get_play_end_pts_setting(%struct.MPContext* %0) #0 {
  %2 = alloca %struct.MPContext*, align 8
  %3 = alloca %struct.MPOpts*, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  store %struct.MPContext* %0, %struct.MPContext** %2, align 8
  %7 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %8 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %7, i32 0, i32 0
  %9 = load %struct.MPOpts*, %struct.MPOpts** %8, align 8
  store %struct.MPOpts* %9, %struct.MPOpts** %3, align 8
  %10 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %11 = load %struct.MPOpts*, %struct.MPOpts** %3, align 8
  %12 = getelementptr inbounds %struct.MPOpts, %struct.MPOpts* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call double @rel_time_to_abs(%struct.MPContext* %10, i32 %13)
  store double %14, double* %4, align 8
  %15 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %16 = load %struct.MPOpts*, %struct.MPOpts** %3, align 8
  %17 = getelementptr inbounds %struct.MPOpts, %struct.MPOpts* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call double @rel_time_to_abs(%struct.MPContext* %15, i32 %18)
  store double %19, double* %5, align 8
  %20 = load double, double* %5, align 8
  %21 = load double, double* @MP_NOPTS_VALUE, align 8
  %22 = fcmp une double %20, %21
  br i1 %22, label %23, label %40

23:                                               ; preds = %1
  %24 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %25 = call double @get_play_start_pts(%struct.MPContext* %24)
  store double %25, double* %6, align 8
  %26 = load double, double* %4, align 8
  %27 = load double, double* @MP_NOPTS_VALUE, align 8
  %28 = fcmp oeq double %26, %27
  br i1 %28, label %35, label %29

29:                                               ; preds = %23
  %30 = load double, double* %6, align 8
  %31 = load double, double* %5, align 8
  %32 = fadd double %30, %31
  %33 = load double, double* %4, align 8
  %34 = fcmp olt double %32, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %29, %23
  %36 = load double, double* %6, align 8
  %37 = load double, double* %5, align 8
  %38 = fadd double %36, %37
  store double %38, double* %4, align 8
  br label %39

39:                                               ; preds = %35, %29
  br label %40

40:                                               ; preds = %39, %1
  %41 = load double, double* %4, align 8
  ret double %41
}

declare dso_local double @rel_time_to_abs(%struct.MPContext*, i32) #1

declare dso_local double @get_play_start_pts(%struct.MPContext*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
