; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libtiff/extr_tif_read.c__TIFFReadEncodedTileAndAllocBuffer.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libtiff/extr_tif_read.c__TIFFReadEncodedTileAndAllocBuffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i32 (%struct.TYPE_11__*, i32*, i64)*, i64 (%struct.TYPE_11__*, i32*, i64, i32)*, i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64, i64 }

@_TIFFReadEncodedTileAndAllocBuffer.module = internal constant [35 x i8] c"_TIFFReadEncodedTileAndAllocBuffer\00", align 16
@.str = private unnamed_addr constant [32 x i8] c"%lu: Tile out of range, max %lu\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"No space for tile buffer\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @_TIFFReadEncodedTileAndAllocBuffer(%struct.TYPE_11__* %0, i64 %1, i8** %2, i64 %3, i64 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_10__*, align 8
  %13 = alloca i64, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %7, align 8
  store i64 %1, i64* %8, align 8
  store i8** %2, i8*** %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 4
  store %struct.TYPE_10__* %15, %struct.TYPE_10__** %12, align 8
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %13, align 8
  %19 = load i8**, i8*** %9, align 8
  %20 = load i8*, i8** %19, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %29

22:                                               ; preds = %5
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %24 = load i64, i64* %8, align 8
  %25 = load i8**, i8*** %9, align 8
  %26 = load i8*, i8** %25, align 8
  %27 = load i64, i64* %11, align 8
  %28 = call i64 @TIFFReadEncodedTile(%struct.TYPE_11__* %23, i64 %24, i8* %26, i64 %27)
  store i64 %28, i64* %6, align 8
  br label %116

29:                                               ; preds = %5
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %31 = call i32 @TIFFCheckRead(%struct.TYPE_11__* %30, i32 1)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %29
  store i64 -1, i64* %6, align 8
  br label %116

34:                                               ; preds = %29
  %35 = load i64, i64* %8, align 8
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp sge i64 %35, %38
  br i1 %39, label %40, label %49

40:                                               ; preds = %34
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 8
  %44 = load i64, i64* %8, align 8
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = call i32 (i32, i8*, i8*, ...) @TIFFErrorExt(i32 %43, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @_TIFFReadEncodedTileAndAllocBuffer.module, i64 0, i64 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i64 %44, i64 %47)
  store i64 -1, i64* %6, align 8
  br label %116

49:                                               ; preds = %34
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %51 = load i64, i64* %8, align 8
  %52 = call i32 @TIFFFillTile(%struct.TYPE_11__* %50, i64 %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %49
  store i64 -1, i64* %6, align 8
  br label %116

55:                                               ; preds = %49
  %56 = load i64, i64* %10, align 8
  %57 = call i8* @_TIFFmalloc(i64 %56)
  %58 = load i8**, i8*** %9, align 8
  store i8* %57, i8** %58, align 8
  %59 = load i8**, i8*** %9, align 8
  %60 = load i8*, i8** %59, align 8
  %61 = icmp eq i8* %60, null
  br i1 %61, label %62, label %71

62:                                               ; preds = %55
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %67 = call i32 @TIFFFileName(%struct.TYPE_11__* %66)
  %68 = sext i32 %67 to i64
  %69 = inttoptr i64 %68 to i8*
  %70 = call i32 (i32, i8*, i8*, ...) @TIFFErrorExt(i32 %65, i8* %69, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  store i64 -1, i64* %6, align 8
  br label %116

71:                                               ; preds = %55
  %72 = load i8**, i8*** %9, align 8
  %73 = load i8*, i8** %72, align 8
  %74 = load i64, i64* %10, align 8
  %75 = call i32 @_TIFFmemset(i8* %73, i32 0, i64 %74)
  %76 = load i64, i64* %11, align 8
  %77 = icmp eq i64 %76, -1
  br i1 %77, label %78, label %80

78:                                               ; preds = %71
  %79 = load i64, i64* %13, align 8
  store i64 %79, i64* %11, align 8
  br label %87

80:                                               ; preds = %71
  %81 = load i64, i64* %11, align 8
  %82 = load i64, i64* %13, align 8
  %83 = icmp sgt i64 %81, %82
  br i1 %83, label %84, label %86

84:                                               ; preds = %80
  %85 = load i64, i64* %13, align 8
  store i64 %85, i64* %11, align 8
  br label %86

86:                                               ; preds = %84, %80
  br label %87

87:                                               ; preds = %86, %78
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 2
  %90 = load i64 (%struct.TYPE_11__*, i32*, i64, i32)*, i64 (%struct.TYPE_11__*, i32*, i64, i32)** %89, align 8
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %92 = load i8**, i8*** %9, align 8
  %93 = load i8*, i8** %92, align 8
  %94 = bitcast i8* %93 to i32*
  %95 = load i64, i64* %11, align 8
  %96 = load i64, i64* %8, align 8
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = sdiv i64 %96, %99
  %101 = trunc i64 %100 to i32
  %102 = call i64 %90(%struct.TYPE_11__* %91, i32* %94, i64 %95, i32 %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %115

104:                                              ; preds = %87
  %105 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %106 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %105, i32 0, i32 1
  %107 = load i32 (%struct.TYPE_11__*, i32*, i64)*, i32 (%struct.TYPE_11__*, i32*, i64)** %106, align 8
  %108 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %109 = load i8**, i8*** %9, align 8
  %110 = load i8*, i8** %109, align 8
  %111 = bitcast i8* %110 to i32*
  %112 = load i64, i64* %11, align 8
  %113 = call i32 %107(%struct.TYPE_11__* %108, i32* %111, i64 %112)
  %114 = load i64, i64* %11, align 8
  store i64 %114, i64* %6, align 8
  br label %116

115:                                              ; preds = %87
  store i64 -1, i64* %6, align 8
  br label %116

116:                                              ; preds = %115, %104, %62, %54, %40, %33, %22
  %117 = load i64, i64* %6, align 8
  ret i64 %117
}

declare dso_local i64 @TIFFReadEncodedTile(%struct.TYPE_11__*, i64, i8*, i64) #1

declare dso_local i32 @TIFFCheckRead(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @TIFFErrorExt(i32, i8*, i8*, ...) #1

declare dso_local i32 @TIFFFillTile(%struct.TYPE_11__*, i64) #1

declare dso_local i8* @_TIFFmalloc(i64) #1

declare dso_local i32 @TIFFFileName(%struct.TYPE_11__*) #1

declare dso_local i32 @_TIFFmemset(i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
