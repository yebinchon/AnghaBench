; ModuleID = '/home/carl/AnghaBench/mpv/audio/extr_aframe.c_mp_aframe_reset.c'
source_filename = "/home/carl/AnghaBench/mpv/audio/extr_aframe.c_mp_aframe_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_aframe = type { double, i32, i64, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64 }

@MP_NOPTS_VALUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mp_aframe_reset(%struct.mp_aframe* %0) #0 {
  %2 = alloca %struct.mp_aframe*, align 8
  store %struct.mp_aframe* %0, %struct.mp_aframe** %2, align 8
  %3 = load %struct.mp_aframe*, %struct.mp_aframe** %2, align 8
  %4 = getelementptr inbounds %struct.mp_aframe, %struct.mp_aframe* %3, i32 0, i32 4
  %5 = load i32, i32* %4, align 8
  %6 = call i32 @av_frame_unref(i32 %5)
  %7 = load %struct.mp_aframe*, %struct.mp_aframe** %2, align 8
  %8 = getelementptr inbounds %struct.mp_aframe, %struct.mp_aframe* %7, i32 0, i32 3
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  store i64 0, i64* %9, align 8
  %10 = load %struct.mp_aframe*, %struct.mp_aframe** %2, align 8
  %11 = getelementptr inbounds %struct.mp_aframe, %struct.mp_aframe* %10, i32 0, i32 2
  store i64 0, i64* %11, align 8
  %12 = load i32, i32* @MP_NOPTS_VALUE, align 4
  %13 = load %struct.mp_aframe*, %struct.mp_aframe** %2, align 8
  %14 = getelementptr inbounds %struct.mp_aframe, %struct.mp_aframe* %13, i32 0, i32 1
  store i32 %12, i32* %14, align 8
  %15 = load %struct.mp_aframe*, %struct.mp_aframe** %2, align 8
  %16 = getelementptr inbounds %struct.mp_aframe, %struct.mp_aframe* %15, i32 0, i32 0
  store double 1.000000e+00, double* %16, align 8
  ret void
}

declare dso_local i32 @av_frame_unref(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
