; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/gdiplus/extr_graphics.c_brush_fill_path.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/gdiplus/extr_graphics.c_brush_fill_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i64, i64, i64, i64 }

@Ok = common dso_local global i32 0, align 4
@RGN_AND = common dso_local global i32 0, align 4
@GenericError = common dso_local global i32 0, align 4
@NULLREGION = common dso_local global i32 0, align 4
@OutOfMemory = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, %struct.TYPE_13__*)* @brush_fill_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @brush_fill_path(%struct.TYPE_12__* %0, %struct.TYPE_13__* %1) #0 {
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_10__, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %4, align 8
  %12 = load i32, i32* @Ok, align 4
  store i32 %12, i32* %5, align 4
  %13 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  switch i32 %15, label %78 [
    i32 128, label %16
  ]

16:                                               ; preds = %2
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %18 = bitcast %struct.TYPE_13__* %17 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %18, %struct.TYPE_11__** %6, align 8
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @ARGB2BMP(i32 %21)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %77

25:                                               ; preds = %16
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @RGN_AND, align 4
  %30 = call i32 @SelectClipPath(i32 %28, i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %25
  %33 = load i32, i32* @GenericError, align 4
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @DeleteObject(i32 %34)
  br label %102

36:                                               ; preds = %25
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @GetClipBox(i32 %39, %struct.TYPE_10__* %8)
  %41 = load i32, i32* @NULLREGION, align 4
  %42 = icmp ne i32 %40, %41
  br i1 %42, label %43, label %74

43:                                               ; preds = %36
  %44 = call i32 @CreateCompatibleDC(i32* null)
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* %9, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %43
  %48 = load i32, i32* @OutOfMemory, align 4
  store i32 %48, i32* %5, align 4
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @DeleteObject(i32 %49)
  br label %102

51:                                               ; preds = %43
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* %7, align 4
  %54 = call i32 @SelectObject(i32 %52, i32 %53)
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 3
  %61 = load i64, i64* %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = sub nsw i64 %61, %63
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = sub nsw i64 %66, %68
  %70 = load i32, i32* %9, align 4
  %71 = call i32 @gdi_alpha_blend(%struct.TYPE_12__* %55, i64 %57, i64 %59, i64 %64, i64 %69, i32 %70, i32 0, i32 0, i32 1, i32 1)
  %72 = load i32, i32* %9, align 4
  %73 = call i32 @DeleteDC(i32 %72)
  br label %74

74:                                               ; preds = %51, %36
  %75 = load i32, i32* %7, align 4
  %76 = call i32 @DeleteObject(i32 %75)
  br label %102

77:                                               ; preds = %16
  br label %78

78:                                               ; preds = %2, %77
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %80 = call i32 @create_gdi_brush(%struct.TYPE_13__* %79)
  store i32 %80, i32* %10, align 4
  %81 = load i32, i32* %10, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %85, label %83

83:                                               ; preds = %78
  %84 = load i32, i32* @OutOfMemory, align 4
  store i32 %84, i32* %5, align 4
  br label %102

85:                                               ; preds = %78
  %86 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* %10, align 4
  %90 = call i32 @SelectObject(i32 %88, i32 %89)
  store i32 %90, i32* %11, align 4
  %91 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @FillPath(i32 %93)
  %95 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* %11, align 4
  %99 = call i32 @SelectObject(i32 %97, i32 %98)
  %100 = load i32, i32* %10, align 4
  %101 = call i32 @DeleteObject(i32 %100)
  br label %102

102:                                              ; preds = %85, %83, %74, %47, %32
  %103 = load i32, i32* %5, align 4
  ret i32 %103
}

declare dso_local i32 @ARGB2BMP(i32) #1

declare dso_local i32 @SelectClipPath(i32, i32) #1

declare dso_local i32 @DeleteObject(i32) #1

declare dso_local i32 @GetClipBox(i32, %struct.TYPE_10__*) #1

declare dso_local i32 @CreateCompatibleDC(i32*) #1

declare dso_local i32 @SelectObject(i32, i32) #1

declare dso_local i32 @gdi_alpha_blend(%struct.TYPE_12__*, i64, i64, i64, i64, i32, i32, i32, i32, i32) #1

declare dso_local i32 @DeleteDC(i32) #1

declare dso_local i32 @create_gdi_brush(%struct.TYPE_13__*) #1

declare dso_local i32 @FillPath(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
