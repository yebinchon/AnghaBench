; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_playloop.c_get_playback_time.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_playloop.c_get_playback_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MPContext = type { double }

@MP_NOPTS_VALUE = common dso_local global double 0.000000e+00, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @get_playback_time(%struct.MPContext* %0) #0 {
  %2 = alloca double, align 8
  %3 = alloca %struct.MPContext*, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  store %struct.MPContext* %0, %struct.MPContext** %3, align 8
  %6 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %7 = call double @get_current_time(%struct.MPContext* %6)
  store double %7, double* %4, align 8
  %8 = load double, double* %4, align 8
  %9 = load double, double* @MP_NOPTS_VALUE, align 8
  %10 = fcmp oeq double %8, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load double, double* %4, align 8
  store double %12, double* %2, align 8
  br label %31

13:                                               ; preds = %1
  %14 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %15 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %14, i32 0, i32 0
  %16 = load double, double* %15, align 8
  %17 = load double, double* @MP_NOPTS_VALUE, align 8
  %18 = fcmp oeq double %16, %17
  br i1 %18, label %19, label %29

19:                                               ; preds = %13
  %20 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %21 = call double @get_time_length(%struct.MPContext* %20)
  store double %21, double* %5, align 8
  %22 = load double, double* %5, align 8
  %23 = fcmp oge double %22, 0.000000e+00
  br i1 %23, label %24, label %28

24:                                               ; preds = %19
  %25 = load double, double* %4, align 8
  %26 = load double, double* %5, align 8
  %27 = call double @MPCLAMP(double %25, i32 0, double %26)
  store double %27, double* %4, align 8
  br label %28

28:                                               ; preds = %24, %19
  br label %29

29:                                               ; preds = %28, %13
  %30 = load double, double* %4, align 8
  store double %30, double* %2, align 8
  br label %31

31:                                               ; preds = %29, %11
  %32 = load double, double* %2, align 8
  ret double %32
}

declare dso_local double @get_current_time(%struct.MPContext*) #1

declare dso_local double @get_time_length(%struct.MPContext*) #1

declare dso_local double @MPCLAMP(double, i32, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
