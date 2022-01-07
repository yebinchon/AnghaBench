; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/text-freetype2/extr_obs-convenience.c_draw_uv_vbuffer.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/text-freetype2/extr_obs-convenience.c_draw_uv_vbuffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"Draw\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"image\00", align 1
@GS_TRIS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @draw_uv_vbuffer(i32* %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %14 = load i32*, i32** %6, align 8
  store i32* %14, i32** %9, align 8
  %15 = load i32*, i32** %7, align 8
  %16 = call i32* @gs_effect_get_technique(i32* %15, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i32* %16, i32** %10, align 8
  %17 = load i32*, i32** %7, align 8
  %18 = call i32* @gs_effect_get_param_by_name(i32* %17, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  store i32* %18, i32** %11, align 8
  %19 = load i32*, i32** %5, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %4
  %22 = load i32*, i32** %6, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %21, %4
  br label %58

25:                                               ; preds = %21
  %26 = load i32*, i32** %5, align 8
  %27 = call i32 @gs_vertexbuffer_flush(i32* %26)
  %28 = load i32*, i32** %5, align 8
  %29 = call i32 @gs_load_vertexbuffer(i32* %28)
  %30 = call i32 @gs_load_indexbuffer(i32* null)
  %31 = load i32*, i32** %10, align 8
  %32 = call i64 @gs_technique_begin(i32* %31)
  store i64 %32, i64* %12, align 8
  store i64 0, i64* %13, align 8
  br label %33

33:                                               ; preds = %52, %25
  %34 = load i64, i64* %13, align 8
  %35 = load i64, i64* %12, align 8
  %36 = icmp ult i64 %34, %35
  br i1 %36, label %37, label %55

37:                                               ; preds = %33
  %38 = load i32*, i32** %10, align 8
  %39 = load i64, i64* %13, align 8
  %40 = call i64 @gs_technique_begin_pass(i32* %38, i64 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %51

42:                                               ; preds = %37
  %43 = load i32*, i32** %11, align 8
  %44 = load i32*, i32** %9, align 8
  %45 = call i32 @gs_effect_set_texture(i32* %43, i32* %44)
  %46 = load i32, i32* @GS_TRIS, align 4
  %47 = load i32, i32* %8, align 4
  %48 = call i32 @gs_draw(i32 %46, i32 0, i32 %47)
  %49 = load i32*, i32** %10, align 8
  %50 = call i32 @gs_technique_end_pass(i32* %49)
  br label %51

51:                                               ; preds = %42, %37
  br label %52

52:                                               ; preds = %51
  %53 = load i64, i64* %13, align 8
  %54 = add i64 %53, 1
  store i64 %54, i64* %13, align 8
  br label %33

55:                                               ; preds = %33
  %56 = load i32*, i32** %10, align 8
  %57 = call i32 @gs_technique_end(i32* %56)
  br label %58

58:                                               ; preds = %55, %24
  ret void
}

declare dso_local i32* @gs_effect_get_technique(i32*, i8*) #1

declare dso_local i32* @gs_effect_get_param_by_name(i32*, i8*) #1

declare dso_local i32 @gs_vertexbuffer_flush(i32*) #1

declare dso_local i32 @gs_load_vertexbuffer(i32*) #1

declare dso_local i32 @gs_load_indexbuffer(i32*) #1

declare dso_local i64 @gs_technique_begin(i32*) #1

declare dso_local i64 @gs_technique_begin_pass(i32*, i64) #1

declare dso_local i32 @gs_effect_set_texture(i32*, i32*) #1

declare dso_local i32 @gs_draw(i32, i32, i32) #1

declare dso_local i32 @gs_technique_end_pass(i32*) #1

declare dso_local i32 @gs_technique_end(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
