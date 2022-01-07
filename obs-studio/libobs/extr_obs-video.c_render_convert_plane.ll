; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-video.c_render_convert_plane.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-video.c_render_convert_plane.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GS_TRIS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i8*)* @render_convert_plane to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @render_convert_plane(i32* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i8* %2, i8** %6, align 8
  %12 = load i32*, i32** %4, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = call i32* @gs_effect_get_technique(i32* %12, i8* %13)
  store i32* %14, i32** %7, align 8
  %15 = load i32*, i32** %5, align 8
  %16 = call i32 @gs_texture_get_width(i32* %15)
  store i32 %16, i32* %8, align 4
  %17 = load i32*, i32** %5, align 8
  %18 = call i32 @gs_texture_get_height(i32* %17)
  store i32 %18, i32* %9, align 4
  %19 = load i32*, i32** %5, align 8
  %20 = call i32 @gs_set_render_target(i32* %19, i32* null)
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* %9, align 4
  %23 = call i32 @set_render_size(i32 %21, i32 %22)
  %24 = load i32*, i32** %7, align 8
  %25 = call i64 @gs_technique_begin(i32* %24)
  store i64 %25, i64* %10, align 8
  store i64 0, i64* %11, align 8
  br label %26

26:                                               ; preds = %38, %3
  %27 = load i64, i64* %11, align 8
  %28 = load i64, i64* %10, align 8
  %29 = icmp ult i64 %27, %28
  br i1 %29, label %30, label %41

30:                                               ; preds = %26
  %31 = load i32*, i32** %7, align 8
  %32 = load i64, i64* %11, align 8
  %33 = call i32 @gs_technique_begin_pass(i32* %31, i64 %32)
  %34 = load i32, i32* @GS_TRIS, align 4
  %35 = call i32 @gs_draw(i32 %34, i32 0, i32 3)
  %36 = load i32*, i32** %7, align 8
  %37 = call i32 @gs_technique_end_pass(i32* %36)
  br label %38

38:                                               ; preds = %30
  %39 = load i64, i64* %11, align 8
  %40 = add i64 %39, 1
  store i64 %40, i64* %11, align 8
  br label %26

41:                                               ; preds = %26
  %42 = load i32*, i32** %7, align 8
  %43 = call i32 @gs_technique_end(i32* %42)
  ret void
}

declare dso_local i32* @gs_effect_get_technique(i32*, i8*) #1

declare dso_local i32 @gs_texture_get_width(i32*) #1

declare dso_local i32 @gs_texture_get_height(i32*) #1

declare dso_local i32 @gs_set_render_target(i32*, i32*) #1

declare dso_local i32 @set_render_size(i32, i32) #1

declare dso_local i64 @gs_technique_begin(i32*) #1

declare dso_local i32 @gs_technique_begin_pass(i32*, i64) #1

declare dso_local i32 @gs_draw(i32, i32, i32) #1

declare dso_local i32 @gs_technique_end_pass(i32*) #1

declare dso_local i32 @gs_technique_end(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
