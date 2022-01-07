; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/text-freetype2/extr_text-functionality.c_get_ft2_text_width.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/text-freetype2/extr_text-functionality.c_get_ft2_text_width.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ft2_source = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@FT_LOAD_DEFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @get_ft2_text_width(i32* %0, %struct.ft2_source* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.ft2_source*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store %struct.ft2_source* %1, %struct.ft2_source** %5, align 8
  %12 = load %struct.ft2_source*, %struct.ft2_source** %5, align 8
  %13 = getelementptr inbounds %struct.ft2_source, %struct.ft2_source* %12, i32 0, i32 0
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  store %struct.TYPE_6__* %16, %struct.TYPE_6__** %6, align 8
  store i32 0, i32* %7, align 4
  store i64 0, i64* %8, align 8
  store i64 0, i64* %9, align 8
  %17 = load i32*, i32** %4, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %2
  store i64 0, i64* %3, align 8
  br label %69

20:                                               ; preds = %2
  %21 = load i32*, i32** %4, align 8
  %22 = call i64 @wcslen(i32* %21)
  store i64 %22, i64* %10, align 8
  store i64 0, i64* %11, align 8
  br label %23

23:                                               ; preds = %64, %20
  %24 = load i64, i64* %11, align 8
  %25 = load i64, i64* %10, align 8
  %26 = icmp ult i64 %24, %25
  br i1 %26, label %27, label %67

27:                                               ; preds = %23
  %28 = load %struct.ft2_source*, %struct.ft2_source** %5, align 8
  %29 = getelementptr inbounds %struct.ft2_source, %struct.ft2_source* %28, i32 0, i32 0
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %29, align 8
  %31 = load i32*, i32** %4, align 8
  %32 = load i64, i64* %11, align 8
  %33 = getelementptr inbounds i32, i32* %31, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @FT_Get_Char_Index(%struct.TYPE_7__* %30, i32 %34)
  store i32 %35, i32* %7, align 4
  %36 = load %struct.ft2_source*, %struct.ft2_source** %5, align 8
  %37 = getelementptr inbounds %struct.ft2_source, %struct.ft2_source* %36, i32 0, i32 0
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %37, align 8
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* @FT_LOAD_DEFAULT, align 4
  %41 = call i32 @FT_Load_Glyph(%struct.TYPE_7__* %38, i32 %39, i32 %40)
  %42 = load i32*, i32** %4, align 8
  %43 = load i64, i64* %11, align 8
  %44 = getelementptr inbounds i32, i32* %42, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = icmp eq i32 %45, 10
  br i1 %46, label %47, label %48

47:                                               ; preds = %27
  store i64 0, i64* %8, align 8
  br label %63

48:                                               ; preds = %27
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = ashr i32 %52, 6
  %54 = sext i32 %53 to i64
  %55 = load i64, i64* %8, align 8
  %56 = add nsw i64 %55, %54
  store i64 %56, i64* %8, align 8
  %57 = load i64, i64* %8, align 8
  %58 = load i64, i64* %9, align 8
  %59 = icmp sgt i64 %57, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %48
  %61 = load i64, i64* %8, align 8
  store i64 %61, i64* %9, align 8
  br label %62

62:                                               ; preds = %60, %48
  br label %63

63:                                               ; preds = %62, %47
  br label %64

64:                                               ; preds = %63
  %65 = load i64, i64* %11, align 8
  %66 = add i64 %65, 1
  store i64 %66, i64* %11, align 8
  br label %23

67:                                               ; preds = %23
  %68 = load i64, i64* %9, align 8
  store i64 %68, i64* %3, align 8
  br label %69

69:                                               ; preds = %67, %19
  %70 = load i64, i64* %3, align 8
  ret i64 %70
}

declare dso_local i64 @wcslen(i32*) #1

declare dso_local i32 @FT_Get_Char_Index(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @FT_Load_Glyph(%struct.TYPE_7__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
