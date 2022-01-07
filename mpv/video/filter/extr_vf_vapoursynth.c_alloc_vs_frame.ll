; ModuleID = '/home/carl/AnghaBench/mpv/video/filter/extr_vf_vapoursynth.c_alloc_vs_frame.c'
source_filename = "/home/carl/AnghaBench/mpv/video/filter/extr_vf_vapoursynth.c_alloc_vs_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.priv = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* (i32*, i32, i32, i32*, i32)*, i32* (i32, i32)* }
%struct.mp_image_params = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.priv*, %struct.mp_image_params*)* @alloc_vs_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @alloc_vs_frame(%struct.priv* %0, %struct.mp_image_params* %1) #0 {
  %3 = alloca %struct.priv*, align 8
  %4 = alloca %struct.mp_image_params*, align 8
  %5 = alloca i32*, align 8
  store %struct.priv* %0, %struct.priv** %3, align 8
  store %struct.mp_image_params* %1, %struct.mp_image_params** %4, align 8
  %6 = load %struct.priv*, %struct.priv** %3, align 8
  %7 = getelementptr inbounds %struct.priv, %struct.priv* %6, i32 0, i32 1
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 1
  %10 = load i32* (i32, i32)*, i32* (i32, i32)** %9, align 8
  %11 = load %struct.mp_image_params*, %struct.mp_image_params** %4, align 8
  %12 = getelementptr inbounds %struct.mp_image_params, %struct.mp_image_params* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @mp_to_vs(i32 %13)
  %15 = load %struct.priv*, %struct.priv** %3, align 8
  %16 = getelementptr inbounds %struct.priv, %struct.priv* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i32* %10(i32 %14, i32 %17)
  store i32* %18, i32** %5, align 8
  %19 = load %struct.priv*, %struct.priv** %3, align 8
  %20 = getelementptr inbounds %struct.priv, %struct.priv* %19, i32 0, i32 1
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32* (i32*, i32, i32, i32*, i32)*, i32* (i32*, i32, i32, i32*, i32)** %22, align 8
  %24 = load i32*, i32** %5, align 8
  %25 = load %struct.mp_image_params*, %struct.mp_image_params** %4, align 8
  %26 = getelementptr inbounds %struct.mp_image_params, %struct.mp_image_params* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.mp_image_params*, %struct.mp_image_params** %4, align 8
  %29 = getelementptr inbounds %struct.mp_image_params, %struct.mp_image_params* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.priv*, %struct.priv** %3, align 8
  %32 = getelementptr inbounds %struct.priv, %struct.priv* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32* %23(i32* %24, i32 %27, i32 %30, i32* null, i32 %33)
  ret i32* %34
}

declare dso_local i32 @mp_to_vs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
