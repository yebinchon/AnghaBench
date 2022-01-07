; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_toolbar.c_TOOLBAR_GetImageListForDrawing.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_toolbar.c_TOOLBAR_GetImageListForDrawing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }
%struct.TYPE_13__ = type { i64 }

@I_IMAGENONE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [77 x i8] c"bitmap for ID %d, index %d is not valid, number of bitmaps in imagelist: %d\0A\00", align 1
@I_IMAGECALLBACK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [43 x i8] c"TBN_GETDISPINFO returned invalid index %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"Shouldn't reach here\0A\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"no image list\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_12__*, %struct.TYPE_13__*, i32, i64*)* @TOOLBAR_GetImageListForDrawing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @TOOLBAR_GetImageListForDrawing(%struct.TYPE_12__* %0, %struct.TYPE_13__* %1, i32 %2, i64* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca i32*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %6, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64* %3, i64** %9, align 8
  %11 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %12 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %13 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = call i32 @TOOLBAR_IsValidBitmapIndex(%struct.TYPE_12__* %11, i64 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %37, label %17

17:                                               ; preds = %4
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @I_IMAGENONE, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  store i32* null, i32** %5, align 8
  br label %93

24:                                               ; preds = %17
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @HIWORD(i64 %27)
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @LOWORD(i64 %31)
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @WARN(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str, i64 0, i64 0), i32 %28, i32 %32, i32 %35)
  store i32* null, i32** %5, align 8
  br label %93

37:                                               ; preds = %4
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %40 = call i64 @TOOLBAR_GetBitmapIndex(%struct.TYPE_12__* %38, %struct.TYPE_13__* %39)
  %41 = load i64*, i64** %9, align 8
  store i64 %40, i64* %41, align 8
  %42 = icmp slt i64 %40, 0
  br i1 %42, label %43, label %58

43:                                               ; preds = %37
  %44 = load i64*, i64** %9, align 8
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @I_IMAGECALLBACK, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %53, label %48

48:                                               ; preds = %43
  %49 = load i64*, i64** %9, align 8
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @I_IMAGENONE, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %48, %43
  store i32* null, i32** %5, align 8
  br label %93

54:                                               ; preds = %48
  %55 = load i64*, i64** %9, align 8
  %56 = load i64, i64* %55, align 8
  %57 = call i32 @ERR(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i64 %56)
  store i32* null, i32** %5, align 8
  br label %93

58:                                               ; preds = %37
  %59 = load i32, i32* %8, align 4
  switch i32 %59, label %84 [
    i32 130, label %60
    i32 128, label %68
    i32 129, label %76
  ]

60:                                               ; preds = %58
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = call i32 @GETHIMLID(%struct.TYPE_12__* %62, i64 %65)
  %67 = call i32* @GETDEFIMAGELIST(%struct.TYPE_12__* %61, i32 %66)
  store i32* %67, i32** %10, align 8
  br label %86

68:                                               ; preds = %58
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = call i32 @GETHIMLID(%struct.TYPE_12__* %70, i64 %73)
  %75 = call i32* @GETHOTIMAGELIST(%struct.TYPE_12__* %69, i32 %74)
  store i32* %75, i32** %10, align 8
  br label %86

76:                                               ; preds = %58
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = call i32 @GETHIMLID(%struct.TYPE_12__* %78, i64 %81)
  %83 = call i32* @GETDISIMAGELIST(%struct.TYPE_12__* %77, i32 %82)
  store i32* %83, i32** %10, align 8
  br label %86

84:                                               ; preds = %58
  store i32* null, i32** %10, align 8
  %85 = call i32 @FIXME(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  br label %86

86:                                               ; preds = %84, %76, %68, %60
  %87 = load i32*, i32** %10, align 8
  %88 = icmp ne i32* %87, null
  br i1 %88, label %91, label %89

89:                                               ; preds = %86
  %90 = call i32 @TRACE(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  br label %91

91:                                               ; preds = %89, %86
  %92 = load i32*, i32** %10, align 8
  store i32* %92, i32** %5, align 8
  br label %93

93:                                               ; preds = %91, %54, %53, %24, %23
  %94 = load i32*, i32** %5, align 8
  ret i32* %94
}

declare dso_local i32 @TOOLBAR_IsValidBitmapIndex(%struct.TYPE_12__*, i64) #1

declare dso_local i32 @WARN(i8*, i32, i32, i32) #1

declare dso_local i32 @HIWORD(i64) #1

declare dso_local i32 @LOWORD(i64) #1

declare dso_local i64 @TOOLBAR_GetBitmapIndex(%struct.TYPE_12__*, %struct.TYPE_13__*) #1

declare dso_local i32 @ERR(i8*, i64) #1

declare dso_local i32* @GETDEFIMAGELIST(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @GETHIMLID(%struct.TYPE_12__*, i64) #1

declare dso_local i32* @GETHOTIMAGELIST(%struct.TYPE_12__*, i32) #1

declare dso_local i32* @GETDISIMAGELIST(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @FIXME(i8*) #1

declare dso_local i32 @TRACE(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
