; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-source.c_render_filter_tex.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-source.c_render_filter_tex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"image\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32, i32, i8*)* @render_filter_tex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @render_filter_tex(i32* %0, i32* %1, i32 %2, i32 %3, i8* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i8* %4, i8** %10, align 8
  %15 = load i32*, i32** %7, align 8
  %16 = load i8*, i8** %10, align 8
  %17 = call i32* @gs_effect_get_technique(i32* %15, i8* %16)
  store i32* %17, i32** %11, align 8
  %18 = load i32*, i32** %7, align 8
  %19 = call i32* @gs_effect_get_param_by_name(i32* %18, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i32* %19, i32** %12, align 8
  %20 = load i32*, i32** %12, align 8
  %21 = load i32*, i32** %6, align 8
  %22 = call i32 @gs_effect_set_texture(i32* %20, i32* %21)
  %23 = load i32*, i32** %11, align 8
  %24 = call i64 @gs_technique_begin(i32* %23)
  store i64 %24, i64* %13, align 8
  store i64 0, i64* %14, align 8
  br label %25

25:                                               ; preds = %39, %5
  %26 = load i64, i64* %14, align 8
  %27 = load i64, i64* %13, align 8
  %28 = icmp ult i64 %26, %27
  br i1 %28, label %29, label %42

29:                                               ; preds = %25
  %30 = load i32*, i32** %11, align 8
  %31 = load i64, i64* %14, align 8
  %32 = call i32 @gs_technique_begin_pass(i32* %30, i64 %31)
  %33 = load i32*, i32** %6, align 8
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* %9, align 4
  %36 = call i32 @gs_draw_sprite(i32* %33, i32 0, i32 %34, i32 %35)
  %37 = load i32*, i32** %11, align 8
  %38 = call i32 @gs_technique_end_pass(i32* %37)
  br label %39

39:                                               ; preds = %29
  %40 = load i64, i64* %14, align 8
  %41 = add i64 %40, 1
  store i64 %41, i64* %14, align 8
  br label %25

42:                                               ; preds = %25
  %43 = load i32*, i32** %11, align 8
  %44 = call i32 @gs_technique_end(i32* %43)
  ret void
}

declare dso_local i32* @gs_effect_get_technique(i32*, i8*) #1

declare dso_local i32* @gs_effect_get_param_by_name(i32*, i8*) #1

declare dso_local i32 @gs_effect_set_texture(i32*, i32*) #1

declare dso_local i64 @gs_technique_begin(i32*) #1

declare dso_local i32 @gs_technique_begin_pass(i32*, i64) #1

declare dso_local i32 @gs_draw_sprite(i32*, i32, i32, i32) #1

declare dso_local i32 @gs_technique_end_pass(i32*) #1

declare dso_local i32 @gs_technique_end(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
