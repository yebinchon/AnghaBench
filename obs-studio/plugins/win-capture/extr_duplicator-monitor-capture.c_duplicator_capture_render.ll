; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/win-capture/extr_duplicator-monitor-capture.c_duplicator_capture_render.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/win-capture/extr_duplicator-monitor-capture.c_duplicator_capture_render.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.duplicator_capture = type { i32, i64, i64, i64, i32 }

@OBS_EFFECT_OPAQUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"Draw\00", align 1
@OBS_EFFECT_DEFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*)* @duplicator_capture_render to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @duplicator_capture_render(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.duplicator_capture*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  store i8* %0, i8** %3, align 8
  store i32* %1, i32** %4, align 8
  %10 = load i8*, i8** %3, align 8
  %11 = bitcast i8* %10 to %struct.duplicator_capture*
  store %struct.duplicator_capture* %11, %struct.duplicator_capture** %5, align 8
  %12 = load %struct.duplicator_capture*, %struct.duplicator_capture** %5, align 8
  %13 = getelementptr inbounds %struct.duplicator_capture, %struct.duplicator_capture* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  br label %92

17:                                               ; preds = %2
  %18 = load %struct.duplicator_capture*, %struct.duplicator_capture** %5, align 8
  %19 = getelementptr inbounds %struct.duplicator_capture, %struct.duplicator_capture* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 8
  %21 = call i32* @gs_duplicator_get_texture(i32 %20)
  store i32* %21, i32** %6, align 8
  %22 = load i32*, i32** %6, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %17
  br label %92

25:                                               ; preds = %17
  %26 = load i32, i32* @OBS_EFFECT_OPAQUE, align 4
  %27 = call i32* @obs_get_base_effect(i32 %26)
  store i32* %27, i32** %4, align 8
  %28 = load %struct.duplicator_capture*, %struct.duplicator_capture** %5, align 8
  %29 = getelementptr inbounds %struct.duplicator_capture, %struct.duplicator_capture* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %7, align 4
  br label %31

31:                                               ; preds = %75, %25
  %32 = load i32*, i32** %4, align 8
  %33 = call i64 @gs_effect_loop(i32* %32, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %76

35:                                               ; preds = %31
  %36 = load i32, i32* %7, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %68

38:                                               ; preds = %35
  store float 0.000000e+00, float* %8, align 4
  store float 0.000000e+00, float* %9, align 4
  %39 = load i32, i32* %7, align 4
  switch i32 %39, label %59 [
    i32 90, label %40
    i32 180, label %45
    i32 270, label %54
  ]

40:                                               ; preds = %38
  %41 = load %struct.duplicator_capture*, %struct.duplicator_capture** %5, align 8
  %42 = getelementptr inbounds %struct.duplicator_capture, %struct.duplicator_capture* %41, i32 0, i32 3
  %43 = load i64, i64* %42, align 8
  %44 = sitofp i64 %43 to float
  store float %44, float* %8, align 4
  br label %59

45:                                               ; preds = %38
  %46 = load %struct.duplicator_capture*, %struct.duplicator_capture** %5, align 8
  %47 = getelementptr inbounds %struct.duplicator_capture, %struct.duplicator_capture* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = sitofp i64 %48 to float
  store float %49, float* %8, align 4
  %50 = load %struct.duplicator_capture*, %struct.duplicator_capture** %5, align 8
  %51 = getelementptr inbounds %struct.duplicator_capture, %struct.duplicator_capture* %50, i32 0, i32 3
  %52 = load i64, i64* %51, align 8
  %53 = sitofp i64 %52 to float
  store float %53, float* %9, align 4
  br label %59

54:                                               ; preds = %38
  %55 = load %struct.duplicator_capture*, %struct.duplicator_capture** %5, align 8
  %56 = getelementptr inbounds %struct.duplicator_capture, %struct.duplicator_capture* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = sitofp i64 %57 to float
  store float %58, float* %9, align 4
  br label %59

59:                                               ; preds = %38, %54, %45, %40
  %60 = call i32 (...) @gs_matrix_push()
  %61 = load float, float* %8, align 4
  %62 = load float, float* %9, align 4
  %63 = call i32 @gs_matrix_translate3f(float %61, float %62, float 0.000000e+00)
  %64 = load i32, i32* %7, align 4
  %65 = sitofp i32 %64 to float
  %66 = call i32 @RAD(float %65)
  %67 = call i32 @gs_matrix_rotaa4f(float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, i32 %66)
  br label %68

68:                                               ; preds = %59, %35
  %69 = load i32*, i32** %6, align 8
  %70 = call i32 @obs_source_draw(i32* %69, i32 0, i32 0, i32 0, i32 0, i32 0)
  %71 = load i32, i32* %7, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %68
  %74 = call i32 (...) @gs_matrix_pop()
  br label %75

75:                                               ; preds = %73, %68
  br label %31

76:                                               ; preds = %31
  %77 = load %struct.duplicator_capture*, %struct.duplicator_capture** %5, align 8
  %78 = getelementptr inbounds %struct.duplicator_capture, %struct.duplicator_capture* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %92

81:                                               ; preds = %76
  %82 = load i32, i32* @OBS_EFFECT_DEFAULT, align 4
  %83 = call i32* @obs_get_base_effect(i32 %82)
  store i32* %83, i32** %4, align 8
  br label %84

84:                                               ; preds = %88, %81
  %85 = load i32*, i32** %4, align 8
  %86 = call i64 @gs_effect_loop(i32* %85, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %84
  %89 = load %struct.duplicator_capture*, %struct.duplicator_capture** %5, align 8
  %90 = call i32 @draw_cursor(%struct.duplicator_capture* %89)
  br label %84

91:                                               ; preds = %84
  br label %92

92:                                               ; preds = %16, %24, %91, %76
  ret void
}

declare dso_local i32* @gs_duplicator_get_texture(i32) #1

declare dso_local i32* @obs_get_base_effect(i32) #1

declare dso_local i64 @gs_effect_loop(i32*, i8*) #1

declare dso_local i32 @gs_matrix_push(...) #1

declare dso_local i32 @gs_matrix_translate3f(float, float, float) #1

declare dso_local i32 @gs_matrix_rotaa4f(float, float, float, i32) #1

declare dso_local i32 @RAD(float) #1

declare dso_local i32 @obs_source_draw(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @gs_matrix_pop(...) #1

declare dso_local i32 @draw_cursor(%struct.duplicator_capture*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
