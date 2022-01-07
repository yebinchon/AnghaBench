; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libtiff/extr_tif_dirread.c_TIFFFetchStripThing.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libtiff/extr_tif_dirread.c_TIFFFetchStripThing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i32 }
%struct.TYPE_6__ = type { i8* }

@TIFFFetchStripThing.module = internal constant [20 x i8] c"TIFFFetchStripThing\00", align 16
@TIFFReadDirEntryErrOk = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"unknown tagname\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"LIBTIFF_STRILE_ARRAY_MAX_RESIZE_COUNT\00", align 1
@TIFFReadDirEntryErrCount = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"for strip array\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_7__*, i64, i64**)* @TIFFFetchStripThing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @TIFFFetchStripThing(i32* %0, %struct.TYPE_7__* %1, i64 %2, i64** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64*, align 8
  %12 = alloca %struct.TYPE_6__*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca %struct.TYPE_6__*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64** %3, i64*** %9, align 8
  %17 = load i32*, i32** %6, align 8
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %19 = load i64, i64* %8, align 8
  %20 = call i32 @TIFFReadDirEntryLong8ArrayWithLimit(i32* %17, %struct.TYPE_7__* %18, i64** %11, i64 %19)
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %10, align 4
  %22 = load i32, i32* @TIFFReadDirEntryErrOk, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %24, label %42

24:                                               ; preds = %4
  %25 = load i32*, i32** %6, align 8
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = call %struct.TYPE_6__* @TIFFFieldWithTag(i32* %25, i32 %28)
  store %struct.TYPE_6__* %29, %struct.TYPE_6__** %12, align 8
  %30 = load i32*, i32** %6, align 8
  %31 = load i32, i32* %10, align 4
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %33 = icmp ne %struct.TYPE_6__* %32, null
  br i1 %33, label %34, label %38

34:                                               ; preds = %24
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  br label %39

38:                                               ; preds = %24
  br label %39

39:                                               ; preds = %38, %34
  %40 = phi i8* [ %37, %34 ], [ getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), %38 ]
  %41 = call i32 @TIFFReadDirEntryOutputErr(i32* %30, i32 %31, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @TIFFFetchStripThing.module, i64 0, i64 0), i8* %40, i32 0)
  store i32 0, i32* %5, align 4
  br label %119

42:                                               ; preds = %4
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* %8, align 8
  %47 = icmp slt i64 %45, %46
  br i1 %47, label %48, label %116

48:                                               ; preds = %42
  %49 = load i32*, i32** %6, align 8
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = call %struct.TYPE_6__* @TIFFFieldWithTag(i32* %49, i32 %52)
  store %struct.TYPE_6__* %53, %struct.TYPE_6__** %14, align 8
  %54 = call i8* @getenv(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  store i8* %54, i8** %15, align 8
  store i64 1000000, i64* %16, align 8
  %55 = load i8*, i8** %15, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %57, label %60

57:                                               ; preds = %48
  %58 = load i8*, i8** %15, align 8
  %59 = call i64 @atoi(i8* %58)
  store i64 %59, i64* %16, align 8
  br label %60

60:                                               ; preds = %57, %48
  %61 = load i32*, i32** %6, align 8
  %62 = load i32, i32* @TIFFReadDirEntryErrCount, align 4
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %64 = icmp ne %struct.TYPE_6__* %63, null
  br i1 %64, label %65, label %69

65:                                               ; preds = %60
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = load i8*, i8** %67, align 8
  br label %70

69:                                               ; preds = %60
  br label %70

70:                                               ; preds = %69, %65
  %71 = phi i8* [ %68, %65 ], [ getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), %69 ]
  %72 = load i64, i64* %8, align 8
  %73 = load i64, i64* %16, align 8
  %74 = icmp sle i64 %72, %73
  %75 = zext i1 %74 to i32
  %76 = call i32 @TIFFReadDirEntryOutputErr(i32* %61, i32 %62, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @TIFFFetchStripThing.module, i64 0, i64 0), i8* %71, i32 %75)
  %77 = load i64, i64* %8, align 8
  %78 = load i64, i64* %16, align 8
  %79 = icmp sgt i64 %77, %78
  br i1 %79, label %80, label %83

80:                                               ; preds = %70
  %81 = load i64*, i64** %11, align 8
  %82 = call i32 @_TIFFfree(i64* %81)
  store i32 0, i32* %5, align 4
  br label %119

83:                                               ; preds = %70
  %84 = load i32*, i32** %6, align 8
  %85 = load i64, i64* %8, align 8
  %86 = call i64 @_TIFFCheckMalloc(i32* %84, i64 %85, i32 8, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %87 = inttoptr i64 %86 to i64*
  store i64* %87, i64** %13, align 8
  %88 = load i64*, i64** %13, align 8
  %89 = icmp eq i64* %88, null
  br i1 %89, label %90, label %93

90:                                               ; preds = %83
  %91 = load i64*, i64** %11, align 8
  %92 = call i32 @_TIFFfree(i64* %91)
  store i32 0, i32* %5, align 4
  br label %119

93:                                               ; preds = %83
  %94 = load i64*, i64** %13, align 8
  %95 = load i64*, i64** %11, align 8
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = mul i64 %98, 8
  %100 = call i32 @_TIFFmemcpy(i64* %94, i64* %95, i64 %99)
  %101 = load i64*, i64** %13, align 8
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = getelementptr inbounds i64, i64* %101, i64 %104
  %106 = load i64, i64* %8, align 8
  %107 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = sub nsw i64 %106, %109
  %111 = mul i64 %110, 8
  %112 = call i32 @_TIFFmemset(i64* %105, i32 0, i64 %111)
  %113 = load i64*, i64** %11, align 8
  %114 = call i32 @_TIFFfree(i64* %113)
  %115 = load i64*, i64** %13, align 8
  store i64* %115, i64** %11, align 8
  br label %116

116:                                              ; preds = %93, %42
  %117 = load i64*, i64** %11, align 8
  %118 = load i64**, i64*** %9, align 8
  store i64* %117, i64** %118, align 8
  store i32 1, i32* %5, align 4
  br label %119

119:                                              ; preds = %116, %90, %80, %39
  %120 = load i32, i32* %5, align 4
  ret i32 %120
}

declare dso_local i32 @TIFFReadDirEntryLong8ArrayWithLimit(i32*, %struct.TYPE_7__*, i64**, i64) #1

declare dso_local %struct.TYPE_6__* @TIFFFieldWithTag(i32*, i32) #1

declare dso_local i32 @TIFFReadDirEntryOutputErr(i32*, i32, i8*, i8*, i32) #1

declare dso_local i8* @getenv(i8*) #1

declare dso_local i64 @atoi(i8*) #1

declare dso_local i32 @_TIFFfree(i64*) #1

declare dso_local i64 @_TIFFCheckMalloc(i32*, i64, i32, i8*) #1

declare dso_local i32 @_TIFFmemcpy(i64*, i64*, i64) #1

declare dso_local i32 @_TIFFmemset(i64*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
