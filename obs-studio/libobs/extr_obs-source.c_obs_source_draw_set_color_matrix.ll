; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-source.c_obs_source_draw_set_color_matrix.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-source.c_obs_source_draw_set_color_matrix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.matrix4 = type { i32 }
%struct.vec3 = type { i32 }

@LOG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"obs_source_draw_set_color_matrix: no active effect!\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"obs_source_draw_set_color_matrix\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"color_matrix\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"color_range_min\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"color_range_max\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @obs_source_draw_set_color_matrix(%struct.matrix4* %0, %struct.vec3* %1, %struct.vec3* %2) #0 {
  %4 = alloca %struct.matrix4*, align 8
  %5 = alloca %struct.vec3*, align 8
  %6 = alloca %struct.vec3*, align 8
  %7 = alloca %struct.vec3, align 4
  %8 = alloca %struct.vec3, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  store %struct.matrix4* %0, %struct.matrix4** %4, align 8
  store %struct.vec3* %1, %struct.vec3** %5, align 8
  store %struct.vec3* %2, %struct.vec3** %6, align 8
  %13 = call i32 @vec3_set(%struct.vec3* %7, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00)
  %14 = call i32 @vec3_set(%struct.vec3* %8, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00)
  %15 = call i32* (...) @gs_get_effect()
  store i32* %15, i32** %9, align 8
  %16 = load i32*, i32** %9, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* @LOG_WARNING, align 4
  %20 = call i32 @blog(i32 %19, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  br label %50

21:                                               ; preds = %3
  %22 = load %struct.matrix4*, %struct.matrix4** %4, align 8
  %23 = call i32 @obs_ptr_valid(%struct.matrix4* %22, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %21
  br label %50

26:                                               ; preds = %21
  %27 = load %struct.vec3*, %struct.vec3** %5, align 8
  %28 = icmp ne %struct.vec3* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %26
  store %struct.vec3* %7, %struct.vec3** %5, align 8
  br label %30

30:                                               ; preds = %29, %26
  %31 = load %struct.vec3*, %struct.vec3** %6, align 8
  %32 = icmp ne %struct.vec3* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %30
  store %struct.vec3* %8, %struct.vec3** %6, align 8
  br label %34

34:                                               ; preds = %33, %30
  %35 = load i32*, i32** %9, align 8
  %36 = call i32* @gs_effect_get_param_by_name(i32* %35, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  store i32* %36, i32** %10, align 8
  %37 = load i32*, i32** %9, align 8
  %38 = call i32* @gs_effect_get_param_by_name(i32* %37, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  store i32* %38, i32** %11, align 8
  %39 = load i32*, i32** %9, align 8
  %40 = call i32* @gs_effect_get_param_by_name(i32* %39, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  store i32* %40, i32** %12, align 8
  %41 = load i32*, i32** %10, align 8
  %42 = load %struct.matrix4*, %struct.matrix4** %4, align 8
  %43 = call i32 @gs_effect_set_matrix4(i32* %41, %struct.matrix4* %42)
  %44 = load i32*, i32** %11, align 8
  %45 = load %struct.vec3*, %struct.vec3** %5, align 8
  %46 = call i32 @gs_effect_set_val(i32* %44, %struct.vec3* %45, i32 12)
  %47 = load i32*, i32** %12, align 8
  %48 = load %struct.vec3*, %struct.vec3** %6, align 8
  %49 = call i32 @gs_effect_set_val(i32* %47, %struct.vec3* %48, i32 12)
  br label %50

50:                                               ; preds = %34, %25, %18
  ret void
}

declare dso_local i32 @vec3_set(%struct.vec3*, float, float, float) #1

declare dso_local i32* @gs_get_effect(...) #1

declare dso_local i32 @blog(i32, i8*) #1

declare dso_local i32 @obs_ptr_valid(%struct.matrix4*, i8*) #1

declare dso_local i32* @gs_effect_get_param_by_name(i32*, i8*) #1

declare dso_local i32 @gs_effect_set_matrix4(i32*, %struct.matrix4*) #1

declare dso_local i32 @gs_effect_set_val(i32*, %struct.vec3*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
