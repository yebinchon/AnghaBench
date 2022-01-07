; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_audio.c_audio_update_volume.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_audio.c_audio_update_volume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MPContext = type { %struct.ao_chain*, %struct.MPOpts* }
%struct.ao_chain = type { i32 }
%struct.MPOpts = type { double, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @audio_update_volume(%struct.MPContext* %0) #0 {
  %2 = alloca %struct.MPContext*, align 8
  %3 = alloca %struct.MPOpts*, align 8
  %4 = alloca %struct.ao_chain*, align 8
  %5 = alloca float, align 4
  store %struct.MPContext* %0, %struct.MPContext** %2, align 8
  %6 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %7 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %6, i32 0, i32 1
  %8 = load %struct.MPOpts*, %struct.MPOpts** %7, align 8
  store %struct.MPOpts* %8, %struct.MPOpts** %3, align 8
  %9 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %10 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %9, i32 0, i32 0
  %11 = load %struct.ao_chain*, %struct.ao_chain** %10, align 8
  store %struct.ao_chain* %11, %struct.ao_chain** %4, align 8
  %12 = load %struct.ao_chain*, %struct.ao_chain** %4, align 8
  %13 = icmp ne %struct.ao_chain* %12, null
  br i1 %13, label %14, label %19

14:                                               ; preds = %1
  %15 = load %struct.ao_chain*, %struct.ao_chain** %4, align 8
  %16 = getelementptr inbounds %struct.ao_chain, %struct.ao_chain* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %14, %1
  br label %43

20:                                               ; preds = %14
  %21 = load %struct.MPOpts*, %struct.MPOpts** %3, align 8
  %22 = getelementptr inbounds %struct.MPOpts, %struct.MPOpts* %21, i32 0, i32 0
  %23 = load double, double* %22, align 8
  %24 = fdiv double %23, 1.000000e+02
  %25 = call float @MPMAX(double %24, i32 0)
  store float %25, float* %5, align 4
  %26 = load float, float* %5, align 4
  %27 = call float @pow(float %26, i32 3)
  store float %27, float* %5, align 4
  %28 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %29 = call float @compute_replaygain(%struct.MPContext* %28)
  %30 = load float, float* %5, align 4
  %31 = fmul float %30, %29
  store float %31, float* %5, align 4
  %32 = load %struct.MPOpts*, %struct.MPOpts** %3, align 8
  %33 = getelementptr inbounds %struct.MPOpts, %struct.MPOpts* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = icmp eq i32 %34, 1
  br i1 %35, label %36, label %37

36:                                               ; preds = %20
  store float 0.000000e+00, float* %5, align 4
  br label %37

37:                                               ; preds = %36, %20
  %38 = load %struct.ao_chain*, %struct.ao_chain** %4, align 8
  %39 = getelementptr inbounds %struct.ao_chain, %struct.ao_chain* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load float, float* %5, align 4
  %42 = call i32 @ao_set_gain(i32 %40, float %41)
  br label %43

43:                                               ; preds = %37, %19
  ret void
}

declare dso_local float @MPMAX(double, i32) #1

declare dso_local float @pow(float, i32) #1

declare dso_local float @compute_replaygain(%struct.MPContext*) #1

declare dso_local i32 @ao_set_gain(i32, float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
