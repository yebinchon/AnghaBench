; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-source.c_obs_source_draw_texture.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-source.c_obs_source_draw_texture.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.obs_source = type { i64, i64, i32** }

@.str = private unnamed_addr constant [6 x i8] c"image\00", align 1
@GS_FLIP_V = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.obs_source*, i32*)* @obs_source_draw_texture to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @obs_source_draw_texture(%struct.obs_source* %0, i32* %1) #0 {
  %3 = alloca %struct.obs_source*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  store %struct.obs_source* %0, %struct.obs_source** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load %struct.obs_source*, %struct.obs_source** %3, align 8
  %8 = getelementptr inbounds %struct.obs_source, %struct.obs_source* %7, i32 0, i32 2
  %9 = load i32**, i32*** %8, align 8
  %10 = getelementptr inbounds i32*, i32** %9, i64 0
  %11 = load i32*, i32** %10, align 8
  store i32* %11, i32** %5, align 8
  %12 = load %struct.obs_source*, %struct.obs_source** %3, align 8
  %13 = getelementptr inbounds %struct.obs_source, %struct.obs_source* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %2
  %17 = load %struct.obs_source*, %struct.obs_source** %3, align 8
  %18 = getelementptr inbounds %struct.obs_source, %struct.obs_source* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = call i32* @gs_texrender_get_texture(i64 %19)
  store i32* %20, i32** %5, align 8
  br label %21

21:                                               ; preds = %16, %2
  %22 = load i32*, i32** %4, align 8
  %23 = call i32* @gs_effect_get_param_by_name(i32* %22, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i32* %23, i32** %6, align 8
  %24 = load i32*, i32** %6, align 8
  %25 = load i32*, i32** %5, align 8
  %26 = call i32 @gs_effect_set_texture(i32* %24, i32* %25)
  %27 = load i32*, i32** %5, align 8
  %28 = load %struct.obs_source*, %struct.obs_source** %3, align 8
  %29 = getelementptr inbounds %struct.obs_source, %struct.obs_source* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %21
  %33 = load i32, i32* @GS_FLIP_V, align 4
  br label %35

34:                                               ; preds = %21
  br label %35

35:                                               ; preds = %34, %32
  %36 = phi i32 [ %33, %32 ], [ 0, %34 ]
  %37 = call i32 @gs_draw_sprite(i32* %27, i32 %36, i32 0, i32 0)
  ret void
}

declare dso_local i32* @gs_texrender_get_texture(i64) #1

declare dso_local i32* @gs_effect_get_param_by_name(i32*, i8*) #1

declare dso_local i32 @gs_effect_set_texture(i32*, i32*) #1

declare dso_local i32 @gs_draw_sprite(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
