; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libtiff/extr_tif_dirread.c_TIFFFetchSubjectDistance.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libtiff/extr_tif_dirread.c_TIFFFetchSubjectDistance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32, i64, i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_11__ = type { i32*, i64 }

@TIFFFetchSubjectDistance.module = internal constant [25 x i8] c"TIFFFetchSubjectDistance\00", align 16
@TIFFReadDirEntryErrCount = common dso_local global i32 0, align 4
@TIFF_RATIONAL = common dso_local global i64 0, align 8
@TIFFReadDirEntryErrType = common dso_local global i32 0, align 4
@TIFF_BIGTIFF = common dso_local global i32 0, align 4
@TIFF_SWAB = common dso_local global i32 0, align 4
@TIFFReadDirEntryErrOk = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"SubjectDistance\00", align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, %struct.TYPE_12__*)* @TIFFFetchSubjectDistance to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @TIFFFetchSubjectDistance(%struct.TYPE_13__* %0, %struct.TYPE_12__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_11__, align 8
  %8 = alloca i32, align 4
  %9 = alloca double, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %4, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 1
  store i64 0, i64* %10, align 8
  %11 = call i32 @assert(i32 1)
  %12 = call i32 @assert(i32 0)
  %13 = call i32 @assert(i32 1)
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 1
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* @TIFFReadDirEntryErrCount, align 4
  store i32 %19, i32* %6, align 4
  br label %63

20:                                               ; preds = %2
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @TIFF_RATIONAL, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %20
  %27 = load i32, i32* @TIFFReadDirEntryErrType, align 4
  store i32 %27, i32* %6, align 4
  br label %62

28:                                               ; preds = %20
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @TIFF_BIGTIFF, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %54, label %35

35:                                               ; preds = %28
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 3
  %38 = bitcast %struct.TYPE_10__* %37 to i32*
  %39 = load i32, i32* %38, align 8
  store i32 %39, i32* %8, align 4
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @TIFF_SWAB, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %35
  %47 = call i32 @TIFFSwabLong(i32* %8)
  br label %48

48:                                               ; preds = %46, %35
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %50 = load i32, i32* %8, align 4
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = call i32 @TIFFReadDirEntryData(%struct.TYPE_13__* %49, i32 %50, i32 8, i32* %52)
  store i32 %53, i32* %6, align 4
  br label %61

54:                                               ; preds = %28
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 3
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 1
  store i64 %58, i64* %59, align 8
  %60 = load i32, i32* @TIFFReadDirEntryErrOk, align 4
  store i32 %60, i32* %6, align 4
  br label %61

61:                                               ; preds = %54, %48
  br label %62

62:                                               ; preds = %61, %26
  br label %63

63:                                               ; preds = %62, %18
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* @TIFFReadDirEntryErrOk, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %112

67:                                               ; preds = %63
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @TIFF_SWAB, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %67
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = call i32 @TIFFSwabArrayOfLong(i32* %76, i32 2)
  br label %78

78:                                               ; preds = %74, %67
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 0
  %82 = load i32, i32* %81, align 4
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %78
  store double 0.000000e+00, double* %9, align 8
  br label %105

85:                                               ; preds = %78
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 0
  %89 = load i32, i32* %88, align 4
  %90 = icmp eq i32 %89, -1
  br i1 %90, label %91, label %92

91:                                               ; preds = %85
  store double -1.000000e+00, double* %9, align 8
  br label %104

92:                                               ; preds = %85
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 0
  %94 = load i32*, i32** %93, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 0
  %96 = load i32, i32* %95, align 4
  %97 = sitofp i32 %96 to double
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 0
  %99 = load i32*, i32** %98, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 1
  %101 = load i32, i32* %100, align 4
  %102 = sitofp i32 %101 to double
  %103 = fdiv double %97, %102
  store double %103, double* %9, align 8
  br label %104

104:                                              ; preds = %92, %91
  br label %105

105:                                              ; preds = %104, %84
  %106 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %107 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = load double, double* %9, align 8
  %111 = call i32 @TIFFSetField(%struct.TYPE_13__* %106, i32 %109, double %110)
  store i32 %111, i32* %3, align 4
  br label %117

112:                                              ; preds = %63
  %113 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %114 = load i32, i32* %6, align 4
  %115 = load i32, i32* @TRUE, align 4
  %116 = call i32 @TIFFReadDirEntryOutputErr(%struct.TYPE_13__* %113, i32 %114, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @TIFFFetchSubjectDistance.module, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %115)
  store i32 0, i32* %3, align 4
  br label %117

117:                                              ; preds = %112, %105
  %118 = load i32, i32* %3, align 4
  ret i32 %118
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @TIFFSwabLong(i32*) #1

declare dso_local i32 @TIFFReadDirEntryData(%struct.TYPE_13__*, i32, i32, i32*) #1

declare dso_local i32 @TIFFSwabArrayOfLong(i32*, i32) #1

declare dso_local i32 @TIFFSetField(%struct.TYPE_13__*, i32, double) #1

declare dso_local i32 @TIFFReadDirEntryOutputErr(%struct.TYPE_13__*, i32, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
