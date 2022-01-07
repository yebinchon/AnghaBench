; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libtiff/extr_tif_read.c_TIFFReadRawTile.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libtiff/extr_tif_read.c_TIFFReadRawTile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i64* }

@TIFFReadRawTile.module = internal constant [16 x i8] c"TIFFReadRawTile\00", align 16
@.str = private unnamed_addr constant [32 x i8] c"%lu: Tile out of range, max %lu\00", align 1
@TIFF_NOREADRAW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [68 x i8] c"Compression scheme does not support access to raw uncompressed data\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"Integer overflow\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @TIFFReadRawTile(%struct.TYPE_7__* %0, i64 %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %6, align 8
  store i64 %1, i64* %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 2
  store %struct.TYPE_6__* %14, %struct.TYPE_6__** %10, align 8
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %16 = call i32 @TIFFCheckRead(%struct.TYPE_7__* %15, i32 1)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %4
  store i64 -1, i64* %5, align 8
  br label %77

19:                                               ; preds = %4
  %20 = load i64, i64* %7, align 8
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp uge i64 %20, %23
  br i1 %24, label %25, label %34

25:                                               ; preds = %19
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i64, i64* %7, align 8
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = call i32 (i32, i8*, i8*, ...) @TIFFErrorExt(i32 %28, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @TIFFReadRawTile.module, i64 0, i64 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i64 %29, i64 %32)
  store i64 -1, i64* %5, align 8
  br label %77

34:                                               ; preds = %19
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @TIFF_NOREADRAW, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %34
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 (i32, i8*, i8*, ...) @TIFFErrorExt(i32 %44, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @TIFFReadRawTile.module, i64 0, i64 0), i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.1, i64 0, i64 0))
  store i64 -1, i64* %5, align 8
  br label %77

46:                                               ; preds = %34
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 1
  %49 = load i64*, i64** %48, align 8
  %50 = load i64, i64* %7, align 8
  %51 = getelementptr inbounds i64, i64* %49, i64 %50
  %52 = load i64, i64* %51, align 8
  store i64 %52, i64* %11, align 8
  %53 = load i64, i64* %9, align 8
  %54 = icmp ne i64 %53, -1
  br i1 %54, label %55, label %61

55:                                               ; preds = %46
  %56 = load i64, i64* %9, align 8
  %57 = load i64, i64* %11, align 8
  %58 = icmp slt i64 %56, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %55
  %60 = load i64, i64* %9, align 8
  store i64 %60, i64* %11, align 8
  br label %61

61:                                               ; preds = %59, %55, %46
  %62 = load i64, i64* %11, align 8
  store i64 %62, i64* %12, align 8
  %63 = load i64, i64* %12, align 8
  %64 = load i64, i64* %11, align 8
  %65 = icmp ne i64 %63, %64
  br i1 %65, label %66, label %71

66:                                               ; preds = %61
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i32 (i32, i8*, i8*, ...) @TIFFErrorExt(i32 %69, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @TIFFReadRawTile.module, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  store i64 -1, i64* %5, align 8
  br label %77

71:                                               ; preds = %61
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %73 = load i64, i64* %7, align 8
  %74 = load i8*, i8** %8, align 8
  %75 = load i64, i64* %12, align 8
  %76 = call i64 @TIFFReadRawTile1(%struct.TYPE_7__* %72, i64 %73, i8* %74, i64 %75, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @TIFFReadRawTile.module, i64 0, i64 0))
  store i64 %76, i64* %5, align 8
  br label %77

77:                                               ; preds = %71, %66, %41, %25, %18
  %78 = load i64, i64* %5, align 8
  ret i64 %78
}

declare dso_local i32 @TIFFCheckRead(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @TIFFErrorExt(i32, i8*, i8*, ...) #1

declare dso_local i64 @TIFFReadRawTile1(%struct.TYPE_7__*, i64, i8*, i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
