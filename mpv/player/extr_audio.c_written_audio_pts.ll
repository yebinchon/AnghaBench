; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_audio.c_written_audio_pts.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_audio.c_written_audio_pts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MPContext = type { double, %struct.ao_chain* }
%struct.ao_chain = type { double, i32 }

@MP_NOPTS_VALUE = common dso_local global double 0.000000e+00, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @written_audio_pts(%struct.MPContext* %0) #0 {
  %2 = alloca double, align 8
  %3 = alloca %struct.MPContext*, align 8
  %4 = alloca %struct.ao_chain*, align 8
  %5 = alloca double, align 8
  store %struct.MPContext* %0, %struct.MPContext** %3, align 8
  %6 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %7 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %6, i32 0, i32 1
  %8 = load %struct.ao_chain*, %struct.ao_chain** %7, align 8
  store %struct.ao_chain* %8, %struct.ao_chain** %4, align 8
  %9 = load %struct.ao_chain*, %struct.ao_chain** %4, align 8
  %10 = icmp ne %struct.ao_chain* %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %1
  %12 = load double, double* @MP_NOPTS_VALUE, align 8
  store double %12, double* %2, align 8
  br label %34

13:                                               ; preds = %1
  %14 = load %struct.ao_chain*, %struct.ao_chain** %4, align 8
  %15 = getelementptr inbounds %struct.ao_chain, %struct.ao_chain* %14, i32 0, i32 0
  %16 = load double, double* %15, align 8
  store double %16, double* %5, align 8
  %17 = load double, double* %5, align 8
  %18 = load double, double* @MP_NOPTS_VALUE, align 8
  %19 = fcmp oeq double %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %13
  %21 = load double, double* @MP_NOPTS_VALUE, align 8
  store double %21, double* %2, align 8
  br label %34

22:                                               ; preds = %13
  %23 = load %struct.ao_chain*, %struct.ao_chain** %4, align 8
  %24 = getelementptr inbounds %struct.ao_chain, %struct.ao_chain* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call double @mp_audio_buffer_seconds(i32 %25)
  %27 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %28 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %27, i32 0, i32 0
  %29 = load double, double* %28, align 8
  %30 = fmul double %26, %29
  %31 = load double, double* %5, align 8
  %32 = fsub double %31, %30
  store double %32, double* %5, align 8
  %33 = load double, double* %5, align 8
  store double %33, double* %2, align 8
  br label %34

34:                                               ; preds = %22, %20, %11
  %35 = load double, double* %2, align 8
  ret double %35
}

declare dso_local double @mp_audio_buffer_seconds(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
