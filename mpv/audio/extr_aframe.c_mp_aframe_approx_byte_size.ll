; ModuleID = '/home/carl/AnghaBench/mpv/audio/extr_aframe.c_mp_aframe_approx_byte_size.c'
source_filename = "/home/carl/AnghaBench/mpv/audio/extr_aframe.c_mp_aframe_approx_byte_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_aframe = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mp_aframe_approx_byte_size(%struct.mp_aframe* %0) #0 {
  %2 = alloca %struct.mp_aframe*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mp_aframe* %0, %struct.mp_aframe** %2, align 8
  %7 = load %struct.mp_aframe*, %struct.mp_aframe** %2, align 8
  %8 = call i32 @mp_aframe_get_planes(%struct.mp_aframe* %7)
  store i32 %8, i32* %3, align 4
  %9 = load %struct.mp_aframe*, %struct.mp_aframe** %2, align 8
  %10 = call i64 @mp_aframe_get_sstride(%struct.mp_aframe* %9)
  store i64 %10, i64* %4, align 8
  %11 = load %struct.mp_aframe*, %struct.mp_aframe** %2, align 8
  %12 = getelementptr inbounds %struct.mp_aframe, %struct.mp_aframe* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %5, align 4
  %16 = load i64, i64* %4, align 8
  %17 = load i32, i32* %5, align 4
  %18 = call i64 @MPMAX(i32 %17, i32 1)
  %19 = mul i64 %16, %18
  %20 = call i32 @MP_ALIGN_UP(i64 %19, i32 32)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* %3, align 4
  %23 = mul nsw i32 %21, %22
  %24 = sext i32 %23 to i64
  %25 = add i64 %24, 8
  %26 = trunc i64 %25 to i32
  ret i32 %26
}

declare dso_local i32 @mp_aframe_get_planes(%struct.mp_aframe*) #1

declare dso_local i64 @mp_aframe_get_sstride(%struct.mp_aframe*) #1

declare dso_local i32 @MP_ALIGN_UP(i64, i32) #1

declare dso_local i64 @MPMAX(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
