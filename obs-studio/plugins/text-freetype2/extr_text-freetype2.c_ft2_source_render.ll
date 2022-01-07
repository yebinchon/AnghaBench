; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/text-freetype2/extr_text-freetype2.c_ft2_source_render.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/text-freetype2/extr_text-freetype2.c_ft2_source_render.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ft2_source = type { i64*, i32, i32*, i32*, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*)* @ft2_source_render to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ft2_source_render(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.ft2_source*, align 8
  store i8* %0, i8** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.ft2_source*
  store %struct.ft2_source* %7, %struct.ft2_source** %5, align 8
  %8 = load %struct.ft2_source*, %struct.ft2_source** %5, align 8
  %9 = icmp eq %struct.ft2_source* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  br label %70

11:                                               ; preds = %2
  %12 = load %struct.ft2_source*, %struct.ft2_source** %5, align 8
  %13 = getelementptr inbounds %struct.ft2_source, %struct.ft2_source* %12, i32 0, i32 2
  %14 = load i32*, i32** %13, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %21, label %16

16:                                               ; preds = %11
  %17 = load %struct.ft2_source*, %struct.ft2_source** %5, align 8
  %18 = getelementptr inbounds %struct.ft2_source, %struct.ft2_source* %17, i32 0, i32 3
  %19 = load i32*, i32** %18, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %16, %11
  br label %70

22:                                               ; preds = %16
  %23 = load %struct.ft2_source*, %struct.ft2_source** %5, align 8
  %24 = getelementptr inbounds %struct.ft2_source, %struct.ft2_source* %23, i32 0, i32 0
  %25 = load i64*, i64** %24, align 8
  %26 = icmp eq i64* %25, null
  br i1 %26, label %33, label %27

27:                                               ; preds = %22
  %28 = load %struct.ft2_source*, %struct.ft2_source** %5, align 8
  %29 = getelementptr inbounds %struct.ft2_source, %struct.ft2_source* %28, i32 0, i32 0
  %30 = load i64*, i64** %29, align 8
  %31 = load i64, i64* %30, align 8
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %27, %22
  br label %70

34:                                               ; preds = %27
  %35 = call i32 (...) @gs_reset_blend_state()
  %36 = load %struct.ft2_source*, %struct.ft2_source** %5, align 8
  %37 = getelementptr inbounds %struct.ft2_source, %struct.ft2_source* %36, i32 0, i32 5
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %34
  %41 = load %struct.ft2_source*, %struct.ft2_source** %5, align 8
  %42 = call i32 @draw_outlines(%struct.ft2_source* %41)
  br label %43

43:                                               ; preds = %40, %34
  %44 = load %struct.ft2_source*, %struct.ft2_source** %5, align 8
  %45 = getelementptr inbounds %struct.ft2_source, %struct.ft2_source* %44, i32 0, i32 4
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %43
  %49 = load %struct.ft2_source*, %struct.ft2_source** %5, align 8
  %50 = call i32 @draw_drop_shadow(%struct.ft2_source* %49)
  br label %51

51:                                               ; preds = %48, %43
  %52 = load %struct.ft2_source*, %struct.ft2_source** %5, align 8
  %53 = getelementptr inbounds %struct.ft2_source, %struct.ft2_source* %52, i32 0, i32 3
  %54 = load i32*, i32** %53, align 8
  %55 = load %struct.ft2_source*, %struct.ft2_source** %5, align 8
  %56 = getelementptr inbounds %struct.ft2_source, %struct.ft2_source* %55, i32 0, i32 2
  %57 = load i32*, i32** %56, align 8
  %58 = load %struct.ft2_source*, %struct.ft2_source** %5, align 8
  %59 = getelementptr inbounds %struct.ft2_source, %struct.ft2_source* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.ft2_source*, %struct.ft2_source** %5, align 8
  %62 = getelementptr inbounds %struct.ft2_source, %struct.ft2_source* %61, i32 0, i32 0
  %63 = load i64*, i64** %62, align 8
  %64 = call i64 @wcslen(i64* %63)
  %65 = trunc i64 %64 to i32
  %66 = mul nsw i32 %65, 6
  %67 = call i32 @draw_uv_vbuffer(i32* %54, i32* %57, i32 %60, i32 %66)
  %68 = load i32*, i32** %4, align 8
  %69 = call i32 @UNUSED_PARAMETER(i32* %68)
  br label %70

70:                                               ; preds = %51, %33, %21, %10
  ret void
}

declare dso_local i32 @gs_reset_blend_state(...) #1

declare dso_local i32 @draw_outlines(%struct.ft2_source*) #1

declare dso_local i32 @draw_drop_shadow(%struct.ft2_source*) #1

declare dso_local i32 @draw_uv_vbuffer(i32*, i32*, i32, i32) #1

declare dso_local i64 @wcslen(i64*) #1

declare dso_local i32 @UNUSED_PARAMETER(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
