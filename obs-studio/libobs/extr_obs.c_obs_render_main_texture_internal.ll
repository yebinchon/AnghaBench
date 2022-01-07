; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs.c_obs_render_main_texture_internal.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs.c_obs_render_main_texture_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.obs_core_video }
%struct.obs_core_video = type { i32*, i32 }

@obs = common dso_local global %struct.TYPE_2__* null, align 8
@OBS_EFFECT_DEFAULT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"image\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"Draw\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i32)* @obs_render_main_texture_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @obs_render_main_texture_internal(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.obs_core_video*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** @obs, align 8
  %14 = icmp ne %struct.TYPE_2__* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %4
  br label %50

16:                                               ; preds = %4
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** @obs, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  store %struct.obs_core_video* %18, %struct.obs_core_video** %9, align 8
  %19 = load %struct.obs_core_video*, %struct.obs_core_video** %9, align 8
  %20 = getelementptr inbounds %struct.obs_core_video, %struct.obs_core_video* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %16
  br label %50

24:                                               ; preds = %16
  %25 = load %struct.obs_core_video*, %struct.obs_core_video** %9, align 8
  %26 = getelementptr inbounds %struct.obs_core_video, %struct.obs_core_video* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  store i32* %27, i32** %10, align 8
  %28 = load i32, i32* @OBS_EFFECT_DEFAULT, align 4
  %29 = call i32* @obs_get_base_effect(i32 %28)
  store i32* %29, i32** %11, align 8
  %30 = load i32*, i32** %11, align 8
  %31 = call i32* @gs_effect_get_param_by_name(i32* %30, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i32* %31, i32** %12, align 8
  %32 = load i32*, i32** %12, align 8
  %33 = load i32*, i32** %10, align 8
  %34 = call i32 @gs_effect_set_texture(i32* %32, i32* %33)
  %35 = call i32 (...) @gs_blend_state_push()
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* %8, align 4
  %40 = call i32 @gs_blend_function_separate(i32 %36, i32 %37, i32 %38, i32 %39)
  br label %41

41:                                               ; preds = %45, %24
  %42 = load i32*, i32** %11, align 8
  %43 = call i64 @gs_effect_loop(i32* %42, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %41
  %46 = load i32*, i32** %10, align 8
  %47 = call i32 @gs_draw_sprite(i32* %46, i32 0, i32 0, i32 0)
  br label %41

48:                                               ; preds = %41
  %49 = call i32 (...) @gs_blend_state_pop()
  br label %50

50:                                               ; preds = %48, %23, %15
  ret void
}

declare dso_local i32* @obs_get_base_effect(i32) #1

declare dso_local i32* @gs_effect_get_param_by_name(i32*, i8*) #1

declare dso_local i32 @gs_effect_set_texture(i32*, i32*) #1

declare dso_local i32 @gs_blend_state_push(...) #1

declare dso_local i32 @gs_blend_function_separate(i32, i32, i32, i32) #1

declare dso_local i64 @gs_effect_loop(i32*, i8*) #1

declare dso_local i32 @gs_draw_sprite(i32*, i32, i32, i32) #1

declare dso_local i32 @gs_blend_state_pop(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
