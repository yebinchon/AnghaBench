; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libtiff/extr_tif_predict.c_PredictorSetup.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libtiff/extr_tif_predict.c_PredictorSetup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32, i64, i32 }
%struct.TYPE_10__ = type { i32, i32, i64 }

@PredictorSetup.module = internal constant [15 x i8] c"PredictorSetup\00", align 1
@.str = private unnamed_addr constant [70 x i8] c"Horizontal differencing \22Predictor\22 not supported with %d-bit samples\00", align 1
@SAMPLEFORMAT_IEEEFP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [61 x i8] c"Floating point \22Predictor\22 not supported with %d data format\00", align 1
@.str.2 = private unnamed_addr constant [61 x i8] c"Floating point \22Predictor\22 not supported with %d-bit samples\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"\22Predictor\22 value %d not supported\00", align 1
@PLANARCONFIG_CONTIG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*)* @PredictorSetup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @PredictorSetup(%struct.TYPE_12__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  %6 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %7 = call %struct.TYPE_10__* @PredictorState(%struct.TYPE_12__* %6)
  store %struct.TYPE_10__* %7, %struct.TYPE_10__** %4, align 8
  %8 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 1
  store %struct.TYPE_11__* %9, %struct.TYPE_11__** %5, align 8
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  switch i32 %12, label %81 [
    i32 128, label %13
    i32 129, label %14
    i32 130, label %38
  ]

13:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %124

14:                                               ; preds = %1
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 8
  br i1 %18, label %19, label %37

19:                                               ; preds = %14
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 16
  br i1 %23, label %24, label %37

24:                                               ; preds = %19
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 32
  br i1 %28, label %29, label %37

29:                                               ; preds = %24
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @TIFFErrorExt(i32 %32, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @PredictorSetup.module, i64 0, i64 0), i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str, i64 0, i64 0), i32 %35)
  store i32 0, i32* %2, align 4
  br label %124

37:                                               ; preds = %24, %19, %14
  br label %89

38:                                               ; preds = %1
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @SAMPLEFORMAT_IEEEFP, align 4
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %44, label %52

44:                                               ; preds = %38
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @TIFFErrorExt(i32 %47, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @PredictorSetup.module, i64 0, i64 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0), i32 %50)
  store i32 0, i32* %2, align 4
  br label %124

52:                                               ; preds = %38
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = icmp ne i32 %55, 16
  br i1 %56, label %57, label %80

57:                                               ; preds = %52
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = icmp ne i32 %60, 24
  br i1 %61, label %62, label %80

62:                                               ; preds = %57
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = icmp ne i32 %65, 32
  br i1 %66, label %67, label %80

67:                                               ; preds = %62
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = icmp ne i32 %70, 64
  br i1 %71, label %72, label %80

72:                                               ; preds = %67
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @TIFFErrorExt(i32 %75, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @PredictorSetup.module, i64 0, i64 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.2, i64 0, i64 0), i32 %78)
  store i32 0, i32* %2, align 4
  br label %124

80:                                               ; preds = %67, %62, %57, %52
  br label %89

81:                                               ; preds = %1
  %82 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @TIFFErrorExt(i32 %84, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @PredictorSetup.module, i64 0, i64 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %87)
  store i32 0, i32* %2, align 4
  br label %124

89:                                               ; preds = %80, %37
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i32 0, i32 2
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @PLANARCONFIG_CONTIG, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %99

95:                                               ; preds = %89
  %96 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 8
  br label %100

99:                                               ; preds = %89
  br label %100

100:                                              ; preds = %99, %95
  %101 = phi i32 [ %98, %95 ], [ 1, %99 ]
  %102 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 1
  store i32 %101, i32* %103, align 4
  %104 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %105 = call i64 @isTiled(%struct.TYPE_12__* %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %112

107:                                              ; preds = %100
  %108 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %109 = call i64 @TIFFTileRowSize(%struct.TYPE_12__* %108)
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 2
  store i64 %109, i64* %111, align 8
  br label %117

112:                                              ; preds = %100
  %113 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %114 = call i64 @TIFFScanlineSize(%struct.TYPE_12__* %113)
  %115 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i32 0, i32 2
  store i64 %114, i64* %116, align 8
  br label %117

117:                                              ; preds = %112, %107
  %118 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %118, i32 0, i32 2
  %120 = load i64, i64* %119, align 8
  %121 = icmp eq i64 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %117
  store i32 0, i32* %2, align 4
  br label %124

123:                                              ; preds = %117
  store i32 1, i32* %2, align 4
  br label %124

124:                                              ; preds = %123, %122, %81, %72, %44, %29, %13
  %125 = load i32, i32* %2, align 4
  ret i32 %125
}

declare dso_local %struct.TYPE_10__* @PredictorState(%struct.TYPE_12__*) #1

declare dso_local i32 @TIFFErrorExt(i32, i8*, i8*, i32) #1

declare dso_local i64 @isTiled(%struct.TYPE_12__*) #1

declare dso_local i64 @TIFFTileRowSize(%struct.TYPE_12__*) #1

declare dso_local i64 @TIFFScanlineSize(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
