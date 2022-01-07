; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/linux-capture/extr_xshm-input.c_xshm_video_render.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/linux-capture/extr_xshm-input.c_xshm_video_render.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64, i32 }

@OBS_EFFECT_OPAQUE = common dso_local global i32 0, align 4
@data = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [6 x i8] c"image\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"Draw\00", align 1
@OBS_EFFECT_DEFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*)* @xshm_video_render to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xshm_video_render(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  store i8* %0, i8** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = call i32 @XSHM_DATA(i8* %6)
  %8 = load i32, i32* @OBS_EFFECT_OPAQUE, align 4
  %9 = call i32* @obs_get_base_effect(i32 %8)
  store i32* %9, i32** %4, align 8
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** @data, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  br label %50

15:                                               ; preds = %2
  %16 = load i32*, i32** %4, align 8
  %17 = call i32* @gs_effect_get_param_by_name(i32* %16, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i32* %17, i32** %5, align 8
  %18 = load i32*, i32** %5, align 8
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** @data, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @gs_effect_set_texture(i32* %18, i32 %21)
  br label %23

23:                                               ; preds = %27, %15
  %24 = load i32*, i32** %4, align 8
  %25 = call i64 @gs_effect_loop(i32* %24, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %23
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** @data, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @gs_draw_sprite(i32 %30, i32 0, i32 0, i32 0)
  br label %23

32:                                               ; preds = %23
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** @data, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %50

37:                                               ; preds = %32
  %38 = load i32, i32* @OBS_EFFECT_DEFAULT, align 4
  %39 = call i32* @obs_get_base_effect(i32 %38)
  store i32* %39, i32** %4, align 8
  br label %40

40:                                               ; preds = %44, %37
  %41 = load i32*, i32** %4, align 8
  %42 = call i64 @gs_effect_loop(i32* %41, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %40
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** @data, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @xcb_xcursor_render(i32 %47)
  br label %40

49:                                               ; preds = %40
  br label %50

50:                                               ; preds = %14, %49, %32
  ret void
}

declare dso_local i32 @XSHM_DATA(i8*) #1

declare dso_local i32* @obs_get_base_effect(i32) #1

declare dso_local i32* @gs_effect_get_param_by_name(i32*, i8*) #1

declare dso_local i32 @gs_effect_set_texture(i32*, i32) #1

declare dso_local i64 @gs_effect_loop(i32*, i8*) #1

declare dso_local i32 @gs_draw_sprite(i32, i32, i32, i32) #1

declare dso_local i32 @xcb_xcursor_render(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
