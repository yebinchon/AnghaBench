; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-source.c_obs_source_draw.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-source.c_obs_source_draw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LOG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"obs_source_draw: no active effect!\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"obs_source_draw\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"image\00", align 1
@GS_FLIP_V = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @obs_source_draw(i32* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %16 = call i32* (...) @gs_get_effect()
  store i32* %16, i32** %13, align 8
  %17 = load i32, i32* %8, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %6
  %20 = load i32, i32* %9, align 4
  %21 = icmp ne i32 %20, 0
  br label %22

22:                                               ; preds = %19, %6
  %23 = phi i1 [ true, %6 ], [ %21, %19 ]
  %24 = zext i1 %23 to i32
  store i32 %24, i32* %14, align 4
  %25 = load i32*, i32** %13, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %22
  %28 = load i32, i32* @LOG_WARNING, align 4
  %29 = call i32 @blog(i32 %28, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %66

30:                                               ; preds = %22
  %31 = load i32*, i32** %7, align 8
  %32 = call i32 @obs_ptr_valid(i32* %31, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %30
  br label %66

35:                                               ; preds = %30
  %36 = load i32*, i32** %13, align 8
  %37 = call i32* @gs_effect_get_param_by_name(i32* %36, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  store i32* %37, i32** %15, align 8
  %38 = load i32*, i32** %15, align 8
  %39 = load i32*, i32** %7, align 8
  %40 = call i32 @gs_effect_set_texture(i32* %38, i32* %39)
  %41 = load i32, i32* %14, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %35
  %44 = call i32 (...) @gs_matrix_push()
  %45 = load i32, i32* %8, align 4
  %46 = sitofp i32 %45 to float
  %47 = load i32, i32* %9, align 4
  %48 = sitofp i32 %47 to float
  %49 = call i32 @gs_matrix_translate3f(float %46, float %48, float 0.000000e+00)
  br label %50

50:                                               ; preds = %43, %35
  %51 = load i32*, i32** %7, align 8
  %52 = load i32, i32* %12, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %50
  %55 = load i32, i32* @GS_FLIP_V, align 4
  br label %57

56:                                               ; preds = %50
  br label %57

57:                                               ; preds = %56, %54
  %58 = phi i32 [ %55, %54 ], [ 0, %56 ]
  %59 = load i32, i32* %10, align 4
  %60 = load i32, i32* %11, align 4
  %61 = call i32 @gs_draw_sprite(i32* %51, i32 %58, i32 %59, i32 %60)
  %62 = load i32, i32* %14, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %57
  %65 = call i32 (...) @gs_matrix_pop()
  br label %66

66:                                               ; preds = %27, %34, %64, %57
  ret void
}

declare dso_local i32* @gs_get_effect(...) #1

declare dso_local i32 @blog(i32, i8*) #1

declare dso_local i32 @obs_ptr_valid(i32*, i8*) #1

declare dso_local i32* @gs_effect_get_param_by_name(i32*, i8*) #1

declare dso_local i32 @gs_effect_set_texture(i32*, i32*) #1

declare dso_local i32 @gs_matrix_push(...) #1

declare dso_local i32 @gs_matrix_translate3f(float, float, float) #1

declare dso_local i32 @gs_draw_sprite(i32*, i32, i32, i32) #1

declare dso_local i32 @gs_matrix_pop(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
