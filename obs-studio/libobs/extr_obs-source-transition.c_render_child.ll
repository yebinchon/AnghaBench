; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-source-transition.c_render_child.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-source-transition.c_render_child.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32*, i32* }
%struct.vec4 = type { i32 }

@GS_CLEAR_COLOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, %struct.TYPE_7__*, i64)* @render_child to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @render_child(%struct.TYPE_7__* %0, %struct.TYPE_7__* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.vec4, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %11 = call i64 @get_cx(%struct.TYPE_7__* %10)
  store i64 %11, i64* %7, align 8
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %13 = call i64 @get_cy(%struct.TYPE_7__* %12)
  store i64 %13, i64* %8, align 8
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %15 = icmp ne %struct.TYPE_7__* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %3
  br label %54

17:                                               ; preds = %3
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = load i64, i64* %6, align 8
  %22 = getelementptr inbounds i32, i32* %20, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = load i64, i64* %7, align 8
  %25 = load i64, i64* %8, align 8
  %26 = call i64 @gs_texrender_begin(i32 %23, i64 %24, i64 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %54

28:                                               ; preds = %17
  %29 = call i32 @vec4_zero(%struct.vec4* %9)
  %30 = load i32, i32* @GS_CLEAR_COLOR, align 4
  %31 = call i32 @gs_clear(i32 %30, %struct.vec4* %9, float 0.000000e+00, i32 0)
  %32 = load i64, i64* %7, align 8
  %33 = sitofp i64 %32 to float
  %34 = load i64, i64* %8, align 8
  %35 = sitofp i64 %34 to float
  %36 = call i32 @gs_ortho(float 0.000000e+00, float %33, float 0.000000e+00, float %35, float -1.000000e+02, float 1.000000e+02)
  %37 = call i32 (...) @gs_matrix_push()
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = load i64, i64* %6, align 8
  %42 = getelementptr inbounds i32, i32* %40, i64 %41
  %43 = call i32 @gs_matrix_mul(i32* %42)
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %45 = call i32 @obs_source_video_render(%struct.TYPE_7__* %44)
  %46 = call i32 (...) @gs_matrix_pop()
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = load i64, i64* %6, align 8
  %51 = getelementptr inbounds i32, i32* %49, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @gs_texrender_end(i32 %52)
  br label %54

54:                                               ; preds = %16, %28, %17
  ret void
}

declare dso_local i64 @get_cx(%struct.TYPE_7__*) #1

declare dso_local i64 @get_cy(%struct.TYPE_7__*) #1

declare dso_local i64 @gs_texrender_begin(i32, i64, i64) #1

declare dso_local i32 @vec4_zero(%struct.vec4*) #1

declare dso_local i32 @gs_clear(i32, %struct.vec4*, float, i32) #1

declare dso_local i32 @gs_ortho(float, float, float, float, float, float) #1

declare dso_local i32 @gs_matrix_push(...) #1

declare dso_local i32 @gs_matrix_mul(i32*) #1

declare dso_local i32 @obs_source_video_render(%struct.TYPE_7__*) #1

declare dso_local i32 @gs_matrix_pop(...) #1

declare dso_local i32 @gs_texrender_end(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
