; ModuleID = '/home/carl/AnghaBench/mpv/video/filter/extr_vf_vapoursynth.c_set_vs_frame_props.c'
source_filename = "/home/carl/AnghaBench/mpv/video/filter/extr_vf_vapoursynth.c_set_vs_frame_props.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.priv = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32*, i8*, i32, i32)*, i32* (i32*)* }
%struct.mp_image = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"_DurationNum\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"_DurationDen\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.priv*, i32*, %struct.mp_image*, i32, i32)* @set_vs_frame_props to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_vs_frame_props(%struct.priv* %0, i32* %1, %struct.mp_image* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.priv*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.mp_image*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  store %struct.priv* %0, %struct.priv** %7, align 8
  store i32* %1, i32** %8, align 8
  store %struct.mp_image* %2, %struct.mp_image** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %13 = load %struct.priv*, %struct.priv** %7, align 8
  %14 = getelementptr inbounds %struct.priv, %struct.priv* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = load i32* (i32*)*, i32* (i32*)** %16, align 8
  %18 = load i32*, i32** %8, align 8
  %19 = call i32* %17(i32* %18)
  store i32* %19, i32** %12, align 8
  %20 = load i32*, i32** %12, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %5
  store i32 -1, i32* %6, align 4
  br label %44

23:                                               ; preds = %5
  %24 = load %struct.priv*, %struct.priv** %7, align 8
  %25 = getelementptr inbounds %struct.priv, %struct.priv* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32 (i32*, i8*, i32, i32)*, i32 (i32*, i8*, i32, i32)** %27, align 8
  %29 = load i32*, i32** %12, align 8
  %30 = load i32, i32* %10, align 4
  %31 = call i32 %28(i32* %29, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %30, i32 0)
  %32 = load %struct.priv*, %struct.priv** %7, align 8
  %33 = getelementptr inbounds %struct.priv, %struct.priv* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32 (i32*, i8*, i32, i32)*, i32 (i32*, i8*, i32, i32)** %35, align 8
  %37 = load i32*, i32** %12, align 8
  %38 = load i32, i32* %11, align 4
  %39 = call i32 %36(i32* %37, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %38, i32 0)
  %40 = load %struct.priv*, %struct.priv** %7, align 8
  %41 = load i32*, i32** %12, align 8
  %42 = load %struct.mp_image*, %struct.mp_image** %9, align 8
  %43 = call i32 @copy_mp_to_vs_frame_props_map(%struct.priv* %40, i32* %41, %struct.mp_image* %42)
  store i32 0, i32* %6, align 4
  br label %44

44:                                               ; preds = %23, %22
  %45 = load i32, i32* %6, align 4
  ret i32 %45
}

declare dso_local i32 @copy_mp_to_vs_frame_props_map(%struct.priv*, i32*, %struct.mp_image*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
