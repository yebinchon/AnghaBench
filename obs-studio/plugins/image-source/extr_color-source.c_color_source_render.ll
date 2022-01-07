; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/image-source/extr_color-source.c_color_source_render.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/image-source/extr_color-source.c_color_source_render.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.color_source = type { i32, i32, i32 }
%struct.vec4 = type { i32 }

@OBS_EFFECT_SOLID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"color\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"Solid\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*)* @color_source_render to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @color_source_render(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.color_source*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.vec4, align 4
  store i8* %0, i8** %3, align 8
  store i32* %1, i32** %4, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = call i32 @UNUSED_PARAMETER(i32* %10)
  %12 = load i8*, i8** %3, align 8
  %13 = bitcast i8* %12 to %struct.color_source*
  store %struct.color_source* %13, %struct.color_source** %5, align 8
  %14 = load i32, i32* @OBS_EFFECT_SOLID, align 4
  %15 = call i32* @obs_get_base_effect(i32 %14)
  store i32* %15, i32** %6, align 8
  %16 = load i32*, i32** %6, align 8
  %17 = call i32* @gs_effect_get_param_by_name(i32* %16, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i32* %17, i32** %7, align 8
  %18 = load i32*, i32** %6, align 8
  %19 = call i32* @gs_effect_get_technique(i32* %18, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  store i32* %19, i32** %8, align 8
  %20 = load %struct.color_source*, %struct.color_source** %5, align 8
  %21 = getelementptr inbounds %struct.color_source, %struct.color_source* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @vec4_from_rgba(%struct.vec4* %9, i32 %22)
  %24 = load i32*, i32** %7, align 8
  %25 = call i32 @gs_effect_set_vec4(i32* %24, %struct.vec4* %9)
  %26 = load i32*, i32** %8, align 8
  %27 = call i32 @gs_technique_begin(i32* %26)
  %28 = load i32*, i32** %8, align 8
  %29 = call i32 @gs_technique_begin_pass(i32* %28, i32 0)
  %30 = load %struct.color_source*, %struct.color_source** %5, align 8
  %31 = getelementptr inbounds %struct.color_source, %struct.color_source* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.color_source*, %struct.color_source** %5, align 8
  %34 = getelementptr inbounds %struct.color_source, %struct.color_source* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @gs_draw_sprite(i32 0, i32 0, i32 %32, i32 %35)
  %37 = load i32*, i32** %8, align 8
  %38 = call i32 @gs_technique_end_pass(i32* %37)
  %39 = load i32*, i32** %8, align 8
  %40 = call i32 @gs_technique_end(i32* %39)
  ret void
}

declare dso_local i32 @UNUSED_PARAMETER(i32*) #1

declare dso_local i32* @obs_get_base_effect(i32) #1

declare dso_local i32* @gs_effect_get_param_by_name(i32*, i8*) #1

declare dso_local i32* @gs_effect_get_technique(i32*, i8*) #1

declare dso_local i32 @vec4_from_rgba(%struct.vec4*, i32) #1

declare dso_local i32 @gs_effect_set_vec4(i32*, %struct.vec4*) #1

declare dso_local i32 @gs_technique_begin(i32*) #1

declare dso_local i32 @gs_technique_begin_pass(i32*, i32) #1

declare dso_local i32 @gs_draw_sprite(i32, i32, i32, i32) #1

declare dso_local i32 @gs_technique_end_pass(i32*) #1

declare dso_local i32 @gs_technique_end(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
