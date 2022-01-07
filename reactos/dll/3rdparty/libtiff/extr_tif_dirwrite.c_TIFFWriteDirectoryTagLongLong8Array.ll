; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libtiff/extr_tif_dirwrite.c_TIFFWriteDirectoryTagLongLong8Array.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libtiff/extr_tif_dirwrite.c_TIFFWriteDirectoryTagLongLong8Array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }

@TIFFWriteDirectoryTagLongLong8Array.module = internal constant [36 x i8] c"TIFFWriteDirectoryTagLongLong8Array\00", align 16
@TIFF_BIGTIFF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"Out of memory\00", align 1
@.str.1 = private unnamed_addr constant [68 x i8] c"Attempt to write value larger than 0xFFFFFFFF in Classic TIFF file.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32*, i32*, i32, i32, i32*)* @TIFFWriteDirectoryTagLongLong8Array to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @TIFFWriteDirectoryTagLongLong8Array(%struct.TYPE_5__* %0, i32* %1, i32* %2, i32 %3, i32 %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  %19 = load i32*, i32** %10, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %25

21:                                               ; preds = %6
  %22 = load i32*, i32** %9, align 8
  %23 = load i32, i32* %22, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %22, align 4
  store i32 1, i32* %7, align 4
  br label %93

25:                                               ; preds = %6
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @TIFF_BIGTIFF, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %25
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %34 = load i32*, i32** %9, align 8
  %35 = load i32*, i32** %10, align 8
  %36 = load i32, i32* %11, align 4
  %37 = load i32, i32* %12, align 4
  %38 = load i32*, i32** %13, align 8
  %39 = call i32 @TIFFWriteDirectoryTagCheckedLong8Array(%struct.TYPE_5__* %33, i32* %34, i32* %35, i32 %36, i32 %37, i32* %38)
  store i32 %39, i32* %7, align 4
  br label %93

40:                                               ; preds = %25
  %41 = load i32, i32* %12, align 4
  %42 = sext i32 %41 to i64
  %43 = mul i64 %42, 4
  %44 = trunc i64 %43 to i32
  %45 = call i32* @_TIFFmalloc(i32 %44)
  store i32* %45, i32** %16, align 8
  %46 = load i32*, i32** %16, align 8
  %47 = icmp eq i32* %46, null
  br i1 %47, label %48, label %53

48:                                               ; preds = %40
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @TIFFErrorExt(i32 %51, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @TIFFWriteDirectoryTagLongLong8Array.module, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %93

53:                                               ; preds = %40
  %54 = load i32*, i32** %16, align 8
  store i32* %54, i32** %17, align 8
  %55 = load i32*, i32** %13, align 8
  store i32* %55, i32** %14, align 8
  store i32 0, i32* %15, align 4
  br label %56

56:                                               ; preds = %75, %53
  %57 = load i32, i32* %15, align 4
  %58 = load i32, i32* %12, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %82

60:                                               ; preds = %56
  %61 = load i32*, i32** %14, align 8
  %62 = load i32, i32* %61, align 4
  %63 = icmp ugt i32 %62, -1
  br i1 %63, label %64, label %71

64:                                               ; preds = %60
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @TIFFErrorExt(i32 %67, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @TIFFWriteDirectoryTagLongLong8Array.module, i64 0, i64 0), i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.1, i64 0, i64 0))
  %69 = load i32*, i32** %16, align 8
  %70 = call i32 @_TIFFfree(i32* %69)
  store i32 0, i32* %7, align 4
  br label %93

71:                                               ; preds = %60
  %72 = load i32*, i32** %14, align 8
  %73 = load i32, i32* %72, align 4
  %74 = load i32*, i32** %17, align 8
  store i32 %73, i32* %74, align 4
  br label %75

75:                                               ; preds = %71
  %76 = load i32*, i32** %14, align 8
  %77 = getelementptr inbounds i32, i32* %76, i32 1
  store i32* %77, i32** %14, align 8
  %78 = load i32, i32* %15, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %15, align 4
  %80 = load i32*, i32** %17, align 8
  %81 = getelementptr inbounds i32, i32* %80, i32 1
  store i32* %81, i32** %17, align 8
  br label %56

82:                                               ; preds = %56
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %84 = load i32*, i32** %9, align 8
  %85 = load i32*, i32** %10, align 8
  %86 = load i32, i32* %11, align 4
  %87 = load i32, i32* %12, align 4
  %88 = load i32*, i32** %16, align 8
  %89 = call i32 @TIFFWriteDirectoryTagCheckedLongArray(%struct.TYPE_5__* %83, i32* %84, i32* %85, i32 %86, i32 %87, i32* %88)
  store i32 %89, i32* %18, align 4
  %90 = load i32*, i32** %16, align 8
  %91 = call i32 @_TIFFfree(i32* %90)
  %92 = load i32, i32* %18, align 4
  store i32 %92, i32* %7, align 4
  br label %93

93:                                               ; preds = %82, %64, %48, %32, %21
  %94 = load i32, i32* %7, align 4
  ret i32 %94
}

declare dso_local i32 @TIFFWriteDirectoryTagCheckedLong8Array(%struct.TYPE_5__*, i32*, i32*, i32, i32, i32*) #1

declare dso_local i32* @_TIFFmalloc(i32) #1

declare dso_local i32 @TIFFErrorExt(i32, i8*, i8*) #1

declare dso_local i32 @_TIFFfree(i32*) #1

declare dso_local i32 @TIFFWriteDirectoryTagCheckedLongArray(%struct.TYPE_5__*, i32*, i32*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
