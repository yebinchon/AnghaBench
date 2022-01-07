; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_audio.c_playing_audio_pts.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_audio.c_playing_audio_pts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MPContext = type { double, i32 }

@MP_NOPTS_VALUE = common dso_local global double 0.000000e+00, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @playing_audio_pts(%struct.MPContext* %0) #0 {
  %2 = alloca double, align 8
  %3 = alloca %struct.MPContext*, align 8
  %4 = alloca double, align 8
  store %struct.MPContext* %0, %struct.MPContext** %3, align 8
  %5 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %6 = call double @written_audio_pts(%struct.MPContext* %5)
  store double %6, double* %4, align 8
  %7 = load double, double* %4, align 8
  %8 = load double, double* @MP_NOPTS_VALUE, align 8
  %9 = fcmp oeq double %7, %8
  br i1 %9, label %15, label %10

10:                                               ; preds = %1
  %11 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %12 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %10, %1
  %16 = load double, double* %4, align 8
  store double %16, double* %2, align 8
  br label %28

17:                                               ; preds = %10
  %18 = load double, double* %4, align 8
  %19 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %20 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %19, i32 0, i32 0
  %21 = load double, double* %20, align 8
  %22 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %23 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call double @ao_get_delay(i32 %24)
  %26 = fmul double %21, %25
  %27 = fsub double %18, %26
  store double %27, double* %2, align 8
  br label %28

28:                                               ; preds = %17, %15
  %29 = load double, double* %2, align 8
  ret double %29
}

declare dso_local double @written_audio_pts(%struct.MPContext*) #1

declare dso_local double @ao_get_delay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
