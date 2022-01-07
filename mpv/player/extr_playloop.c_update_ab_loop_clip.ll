; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_playloop.c_update_ab_loop_clip.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_playloop.c_update_ab_loop_clip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MPContext = type { i32, double }

@MP_NOPTS_VALUE = common dso_local global double 0.000000e+00, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @update_ab_loop_clip(%struct.MPContext* %0) #0 {
  %2 = alloca %struct.MPContext*, align 8
  %3 = alloca double, align 8
  %4 = alloca [2 x double], align 16
  store %struct.MPContext* %0, %struct.MPContext** %2, align 8
  %5 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %6 = call double @get_current_time(%struct.MPContext* %5)
  store double %6, double* %3, align 8
  %7 = load double, double* %3, align 8
  %8 = load double, double* @MP_NOPTS_VALUE, align 8
  %9 = fcmp une double %7, %8
  br i1 %9, label %10, label %28

10:                                               ; preds = %1
  %11 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %12 = getelementptr inbounds [2 x double], [2 x double]* %4, i64 0, i64 0
  %13 = call i64 @get_ab_loop_times(%struct.MPContext* %11, double* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %28

15:                                               ; preds = %10
  %16 = load double, double* %3, align 8
  %17 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %18 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %17, i32 0, i32 1
  %19 = load double, double* %18, align 8
  %20 = fmul double %16, %19
  %21 = getelementptr inbounds [2 x double], [2 x double]* %4, i64 0, i64 1
  %22 = load double, double* %21, align 8
  %23 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %24 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %23, i32 0, i32 1
  %25 = load double, double* %24, align 8
  %26 = fmul double %22, %25
  %27 = fcmp ole double %20, %26
  br label %28

28:                                               ; preds = %15, %10, %1
  %29 = phi i1 [ false, %10 ], [ false, %1 ], [ %27, %15 ]
  %30 = zext i1 %29 to i32
  %31 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %32 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  ret void
}

declare dso_local double @get_current_time(%struct.MPContext*) #1

declare dso_local i64 @get_ab_loop_times(%struct.MPContext*, double*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
