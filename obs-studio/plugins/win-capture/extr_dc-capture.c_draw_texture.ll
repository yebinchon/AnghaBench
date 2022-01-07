; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/win-capture/extr_dc-capture.c_draw_texture.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/win-capture/extr_dc-capture.c_draw_texture.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc_capture = type { i64, i32* }

@.str = private unnamed_addr constant [5 x i8] c"Draw\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"image\00", align 1
@GS_FLIP_V = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dc_capture*, i32*)* @draw_texture to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @draw_texture(%struct.dc_capture* %0, i32* %1) #0 {
  %3 = alloca %struct.dc_capture*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.dc_capture* %0, %struct.dc_capture** %3, align 8
  store i32* %1, i32** %4, align 8
  %10 = load %struct.dc_capture*, %struct.dc_capture** %3, align 8
  %11 = getelementptr inbounds %struct.dc_capture, %struct.dc_capture* %10, i32 0, i32 1
  %12 = load i32*, i32** %11, align 8
  store i32* %12, i32** %5, align 8
  %13 = load i32*, i32** %4, align 8
  %14 = call i32* @gs_effect_get_technique(i32* %13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i32* %14, i32** %6, align 8
  %15 = load i32*, i32** %4, align 8
  %16 = call i32* @gs_effect_get_param_by_name(i32* %15, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  store i32* %16, i32** %7, align 8
  %17 = load i32*, i32** %7, align 8
  %18 = load i32*, i32** %5, align 8
  %19 = call i32 @gs_effect_set_texture(i32* %17, i32* %18)
  %20 = load i32*, i32** %6, align 8
  %21 = call i64 @gs_technique_begin(i32* %20)
  store i64 %21, i64* %8, align 8
  store i64 0, i64* %9, align 8
  br label %22

22:                                               ; preds = %47, %2
  %23 = load i64, i64* %9, align 8
  %24 = load i64, i64* %8, align 8
  %25 = icmp ult i64 %23, %24
  br i1 %25, label %26, label %50

26:                                               ; preds = %22
  %27 = load i32*, i32** %6, align 8
  %28 = load i64, i64* %9, align 8
  %29 = call i64 @gs_technique_begin_pass(i32* %27, i64 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %46

31:                                               ; preds = %26
  %32 = load %struct.dc_capture*, %struct.dc_capture** %3, align 8
  %33 = getelementptr inbounds %struct.dc_capture, %struct.dc_capture* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %31
  %37 = load i32*, i32** %5, align 8
  %38 = load i32, i32* @GS_FLIP_V, align 4
  %39 = call i32 @gs_draw_sprite(i32* %37, i32 %38, i32 0, i32 0)
  br label %43

40:                                               ; preds = %31
  %41 = load i32*, i32** %5, align 8
  %42 = call i32 @gs_draw_sprite(i32* %41, i32 0, i32 0, i32 0)
  br label %43

43:                                               ; preds = %40, %36
  %44 = load i32*, i32** %6, align 8
  %45 = call i32 @gs_technique_end_pass(i32* %44)
  br label %46

46:                                               ; preds = %43, %26
  br label %47

47:                                               ; preds = %46
  %48 = load i64, i64* %9, align 8
  %49 = add i64 %48, 1
  store i64 %49, i64* %9, align 8
  br label %22

50:                                               ; preds = %22
  %51 = load i32*, i32** %6, align 8
  %52 = call i32 @gs_technique_end(i32* %51)
  ret void
}

declare dso_local i32* @gs_effect_get_technique(i32*, i8*) #1

declare dso_local i32* @gs_effect_get_param_by_name(i32*, i8*) #1

declare dso_local i32 @gs_effect_set_texture(i32*, i32*) #1

declare dso_local i64 @gs_technique_begin(i32*) #1

declare dso_local i64 @gs_technique_begin_pass(i32*, i64) #1

declare dso_local i32 @gs_draw_sprite(i32*, i32, i32, i32) #1

declare dso_local i32 @gs_technique_end_pass(i32*) #1

declare dso_local i32 @gs_technique_end(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
