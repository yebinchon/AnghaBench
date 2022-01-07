; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libtiff/extr_tif_dirread.c_TIFFReadDirEntryIfd8Array.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libtiff/extr_tif_dirread.c_TIFFReadDirEntryIfd8Array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }

@TIFFReadDirEntryErrType = common dso_local global i32 0, align 4
@TIFFReadDirEntryErrOk = common dso_local global i32 0, align 4
@TIFF_SWAB = common dso_local global i32 0, align 4
@TIFFReadDirEntryErrAlloc = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, %struct.TYPE_7__*, i32**)* @TIFFReadDirEntryIfd8Array to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @TIFFReadDirEntryIfd8Array(%struct.TYPE_8__* %0, %struct.TYPE_7__* %1, i32** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %6, align 8
  store i32** %2, i32*** %7, align 8
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  switch i32 %17, label %19 [
    i32 129, label %18
    i32 128, label %18
    i32 131, label %18
    i32 130, label %18
  ]

18:                                               ; preds = %3, %3, %3, %3
  br label %21

19:                                               ; preds = %3
  %20 = load i32, i32* @TIFFReadDirEntryErrType, align 4
  store i32 %20, i32* %4, align 4
  br label %104

21:                                               ; preds = %18
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %24 = call i32 @TIFFReadDirEntryArray(%struct.TYPE_8__* %22, %struct.TYPE_7__* %23, i32* %9, i32 8, i8** %10)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* @TIFFReadDirEntryErrOk, align 4
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %31, label %28

28:                                               ; preds = %21
  %29 = load i8*, i8** %10, align 8
  %30 = icmp eq i8* %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %28, %21
  %32 = load i32**, i32*** %7, align 8
  store i32* null, i32** %32, align 8
  %33 = load i32, i32* %8, align 4
  store i32 %33, i32* %4, align 4
  br label %104

34:                                               ; preds = %28
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  switch i32 %37, label %55 [
    i32 128, label %38
    i32 130, label %38
  ]

38:                                               ; preds = %34, %34
  %39 = load i8*, i8** %10, align 8
  %40 = bitcast i8* %39 to i32*
  %41 = load i32**, i32*** %7, align 8
  store i32* %40, i32** %41, align 8
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @TIFF_SWAB, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %38
  %49 = load i32**, i32*** %7, align 8
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* %9, align 4
  %52 = call i32 @TIFFSwabArrayOfLong8(i32* %50, i32 %51)
  br label %53

53:                                               ; preds = %48, %38
  %54 = load i32, i32* @TIFFReadDirEntryErrOk, align 4
  store i32 %54, i32* %4, align 4
  br label %104

55:                                               ; preds = %34
  %56 = load i32, i32* %9, align 4
  %57 = mul nsw i32 %56, 8
  %58 = call i64 @_TIFFmalloc(i32 %57)
  %59 = inttoptr i64 %58 to i32*
  store i32* %59, i32** %11, align 8
  %60 = load i32*, i32** %11, align 8
  %61 = icmp eq i32* %60, null
  br i1 %61, label %62, label %66

62:                                               ; preds = %55
  %63 = load i8*, i8** %10, align 8
  %64 = call i32 @_TIFFfree(i8* %63)
  %65 = load i32, i32* @TIFFReadDirEntryErrAlloc, align 4
  store i32 %65, i32* %4, align 4
  br label %104

66:                                               ; preds = %55
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  switch i32 %69, label %98 [
    i32 129, label %70
    i32 131, label %70
  ]

70:                                               ; preds = %66, %66
  %71 = load i8*, i8** %10, align 8
  %72 = bitcast i8* %71 to i32*
  store i32* %72, i32** %12, align 8
  %73 = load i32*, i32** %11, align 8
  store i32* %73, i32** %13, align 8
  store i32 0, i32* %14, align 4
  br label %74

74:                                               ; preds = %94, %70
  %75 = load i32, i32* %14, align 4
  %76 = load i32, i32* %9, align 4
  %77 = icmp slt i32 %75, %76
  br i1 %77, label %78, label %97

78:                                               ; preds = %74
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @TIFF_SWAB, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %78
  %86 = load i32*, i32** %12, align 8
  %87 = call i32 @TIFFSwabLong(i32* %86)
  br label %88

88:                                               ; preds = %85, %78
  %89 = load i32*, i32** %12, align 8
  %90 = getelementptr inbounds i32, i32* %89, i32 1
  store i32* %90, i32** %12, align 8
  %91 = load i32, i32* %89, align 4
  %92 = load i32*, i32** %13, align 8
  %93 = getelementptr inbounds i32, i32* %92, i32 1
  store i32* %93, i32** %13, align 8
  store i32 %91, i32* %92, align 4
  br label %94

94:                                               ; preds = %88
  %95 = load i32, i32* %14, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %14, align 4
  br label %74

97:                                               ; preds = %74
  br label %98

98:                                               ; preds = %66, %97
  %99 = load i8*, i8** %10, align 8
  %100 = call i32 @_TIFFfree(i8* %99)
  %101 = load i32*, i32** %11, align 8
  %102 = load i32**, i32*** %7, align 8
  store i32* %101, i32** %102, align 8
  %103 = load i32, i32* @TIFFReadDirEntryErrOk, align 4
  store i32 %103, i32* %4, align 4
  br label %104

104:                                              ; preds = %98, %62, %53, %31, %19
  %105 = load i32, i32* %4, align 4
  ret i32 %105
}

declare dso_local i32 @TIFFReadDirEntryArray(%struct.TYPE_8__*, %struct.TYPE_7__*, i32*, i32, i8**) #1

declare dso_local i32 @TIFFSwabArrayOfLong8(i32*, i32) #1

declare dso_local i64 @_TIFFmalloc(i32) #1

declare dso_local i32 @_TIFFfree(i8*) #1

declare dso_local i32 @TIFFSwabLong(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
