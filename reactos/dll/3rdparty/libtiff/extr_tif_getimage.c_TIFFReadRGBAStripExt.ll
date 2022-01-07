; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libtiff/extr_tif_getimage.c_TIFFReadRGBAStripExt.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libtiff/extr_tif_getimage.c_TIFFReadRGBAStripExt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i64, i32, i64, i64 }

@.str = private unnamed_addr constant [47 x i8] c"Can't use TIFFReadRGBAStrip() with tiled file.\00", align 1
@TIFFTAG_ROWSPERSTRIP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [60 x i8] c"Row passed to TIFFReadRGBAStrip() must be first in a strip.\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @TIFFReadRGBAStripExt(%struct.TYPE_13__* %0, i64 %1, i64* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca [1024 x i8], align 16
  %11 = alloca %struct.TYPE_12__, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64* %2, i64** %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = bitcast [1024 x i8]* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %15, i8 0, i64 1024, i1 false)
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %17 = call i64 @TIFFIsTiled(%struct.TYPE_13__* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %4
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %24 = call i32 @TIFFFileName(%struct.TYPE_13__* %23)
  %25 = call i32 (i32, i32, i8*, ...) @TIFFErrorExt(i32 %22, i32 %24, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %86

26:                                               ; preds = %4
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %28 = load i32, i32* @TIFFTAG_ROWSPERSTRIP, align 4
  %29 = call i32 @TIFFGetFieldDefaulted(%struct.TYPE_13__* %27, i32 %28, i64* %13)
  %30 = load i64, i64* %7, align 8
  %31 = load i64, i64* %13, align 8
  %32 = srem i64 %30, %31
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %26
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %39 = call i32 @TIFFFileName(%struct.TYPE_13__* %38)
  %40 = call i32 (i32, i32, i8*, ...) @TIFFErrorExt(i32 %37, i32 %39, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %86

41:                                               ; preds = %26
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %43 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %44 = call i64 @TIFFRGBAImageOK(%struct.TYPE_13__* %42, i8* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %76

46:                                               ; preds = %41
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %48 = load i32, i32* %9, align 4
  %49 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %50 = call i64 @TIFFRGBAImageBegin(%struct.TYPE_12__* %11, %struct.TYPE_13__* %47, i32 %48, i8* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %76

52:                                               ; preds = %46
  %53 = load i64, i64* %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 3
  store i64 %53, i64* %54, align 8
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 2
  store i64 0, i64* %55, align 8
  %56 = load i64, i64* %7, align 8
  %57 = load i64, i64* %13, align 8
  %58 = add nsw i64 %56, %57
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp sgt i64 %58, %60
  br i1 %61, label %62, label %67

62:                                               ; preds = %52
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* %7, align 8
  %66 = sub nsw i64 %64, %65
  store i64 %66, i64* %14, align 8
  br label %69

67:                                               ; preds = %52
  %68 = load i64, i64* %13, align 8
  store i64 %68, i64* %14, align 8
  br label %69

69:                                               ; preds = %67, %62
  %70 = load i64*, i64** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = load i64, i64* %14, align 8
  %74 = call i32 @TIFFRGBAImageGet(%struct.TYPE_12__* %11, i64* %70, i32 %72, i64 %73)
  store i32 %74, i32* %12, align 4
  %75 = call i32 @TIFFRGBAImageEnd(%struct.TYPE_12__* %11)
  br label %84

76:                                               ; preds = %46, %41
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %81 = call i32 @TIFFFileName(%struct.TYPE_13__* %80)
  %82 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %83 = call i32 (i32, i32, i8*, ...) @TIFFErrorExt(i32 %79, i32 %81, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %82)
  store i32 0, i32* %12, align 4
  br label %84

84:                                               ; preds = %76, %69
  %85 = load i32, i32* %12, align 4
  store i32 %85, i32* %5, align 4
  br label %86

86:                                               ; preds = %84, %34, %19
  %87 = load i32, i32* %5, align 4
  ret i32 %87
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @TIFFIsTiled(%struct.TYPE_13__*) #2

declare dso_local i32 @TIFFErrorExt(i32, i32, i8*, ...) #2

declare dso_local i32 @TIFFFileName(%struct.TYPE_13__*) #2

declare dso_local i32 @TIFFGetFieldDefaulted(%struct.TYPE_13__*, i32, i64*) #2

declare dso_local i64 @TIFFRGBAImageOK(%struct.TYPE_13__*, i8*) #2

declare dso_local i64 @TIFFRGBAImageBegin(%struct.TYPE_12__*, %struct.TYPE_13__*, i32, i8*) #2

declare dso_local i32 @TIFFRGBAImageGet(%struct.TYPE_12__*, i64*, i32, i64) #2

declare dso_local i32 @TIFFRGBAImageEnd(%struct.TYPE_12__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
