; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libtiff/extr_tif_predict.c_PredictorSetupDecode.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libtiff/extr_tif_predict.c_PredictorSetupDecode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i32, i8*, i8*, i8*, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32, i64, i64, i8*, i8*, i32 (%struct.TYPE_11__*)* }

@horAcc8 = common dso_local global i64 0, align 8
@horAcc16 = common dso_local global i64 0, align 8
@horAcc32 = common dso_local global i64 0, align 8
@PredictorDecodeRow = common dso_local global i64 0, align 8
@PredictorDecodeTile = common dso_local global i8* null, align 8
@TIFF_SWAB = common dso_local global i32 0, align 4
@swabHorAcc16 = common dso_local global i64 0, align 8
@_TIFFNoPostDecode = common dso_local global i8* null, align 8
@swabHorAcc32 = common dso_local global i64 0, align 8
@fpAcc = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*)* @PredictorSetupDecode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @PredictorSetupDecode(%struct.TYPE_11__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  %6 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %7 = call %struct.TYPE_9__* @PredictorState(%struct.TYPE_11__* %6)
  store %struct.TYPE_9__* %7, %struct.TYPE_9__** %4, align 8
  %8 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 5
  store %struct.TYPE_10__* %9, %struct.TYPE_10__** %5, align 8
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 5
  %12 = load i32 (%struct.TYPE_11__*)*, i32 (%struct.TYPE_11__*)** %11, align 8
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %14 = call i32 %12(%struct.TYPE_11__* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %1
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %18 = call i32 @PredictorSetup(%struct.TYPE_11__* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %16, %1
  store i32 0, i32* %2, align 4
  br label %162

21:                                               ; preds = %16
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp eq i32 %24, 2
  br i1 %25, label %26, label %109

26:                                               ; preds = %21
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  switch i32 %29, label %42 [
    i32 8, label %30
    i32 16, label %34
    i32 32, label %38
  ]

30:                                               ; preds = %26
  %31 = load i64, i64* @horAcc8, align 8
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 1
  store i64 %31, i64* %33, align 8
  br label %42

34:                                               ; preds = %26
  %35 = load i64, i64* @horAcc16, align 8
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 1
  store i64 %35, i64* %37, align 8
  br label %42

38:                                               ; preds = %26
  %39 = load i64, i64* @horAcc32, align 8
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 1
  store i64 %39, i64* %41, align 8
  br label %42

42:                                               ; preds = %26, %38, %34, %30
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @PredictorDecodeRow, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %73

48:                                               ; preds = %42
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 2
  store i64 %51, i64* %53, align 8
  %54 = load i64, i64* @PredictorDecodeRow, align 8
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 0
  store i64 %54, i64* %56, align 8
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 4
  %59 = load i8*, i8** %58, align 8
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 4
  store i8* %59, i8** %61, align 8
  %62 = load i8*, i8** @PredictorDecodeTile, align 8
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 4
  store i8* %62, i8** %64, align 8
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 3
  %67 = load i8*, i8** %66, align 8
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 3
  store i8* %67, i8** %69, align 8
  %70 = load i8*, i8** @PredictorDecodeTile, align 8
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 3
  store i8* %70, i8** %72, align 8
  br label %73

73:                                               ; preds = %48, %42
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @TIFF_SWAB, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %108

80:                                               ; preds = %73
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @horAcc16, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %93

86:                                               ; preds = %80
  %87 = load i64, i64* @swabHorAcc16, align 8
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 1
  store i64 %87, i64* %89, align 8
  %90 = load i8*, i8** @_TIFFNoPostDecode, align 8
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i32 0, i32 2
  store i8* %90, i8** %92, align 8
  br label %107

93:                                               ; preds = %80
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @horAcc32, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %106

99:                                               ; preds = %93
  %100 = load i64, i64* @swabHorAcc32, align 8
  %101 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 1
  store i64 %100, i64* %102, align 8
  %103 = load i8*, i8** @_TIFFNoPostDecode, align 8
  %104 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %105 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %104, i32 0, i32 2
  store i8* %103, i8** %105, align 8
  br label %106

106:                                              ; preds = %99, %93
  br label %107

107:                                              ; preds = %106, %86
  br label %108

108:                                              ; preds = %107, %73
  br label %161

109:                                              ; preds = %21
  %110 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = icmp eq i32 %112, 3
  br i1 %113, label %114, label %160

114:                                              ; preds = %109
  %115 = load i64, i64* @fpAcc, align 8
  %116 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i32 0, i32 1
  store i64 %115, i64* %117, align 8
  %118 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %119 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @PredictorDecodeRow, align 8
  %122 = icmp ne i64 %120, %121
  br i1 %122, label %123, label %148

123:                                              ; preds = %114
  %124 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %125 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %128 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %127, i32 0, i32 2
  store i64 %126, i64* %128, align 8
  %129 = load i64, i64* @PredictorDecodeRow, align 8
  %130 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %131 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %130, i32 0, i32 0
  store i64 %129, i64* %131, align 8
  %132 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %133 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %132, i32 0, i32 4
  %134 = load i8*, i8** %133, align 8
  %135 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %136 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %135, i32 0, i32 4
  store i8* %134, i8** %136, align 8
  %137 = load i8*, i8** @PredictorDecodeTile, align 8
  %138 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %139 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %138, i32 0, i32 4
  store i8* %137, i8** %139, align 8
  %140 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %141 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %140, i32 0, i32 3
  %142 = load i8*, i8** %141, align 8
  %143 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %144 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %143, i32 0, i32 3
  store i8* %142, i8** %144, align 8
  %145 = load i8*, i8** @PredictorDecodeTile, align 8
  %146 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %147 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %146, i32 0, i32 3
  store i8* %145, i8** %147, align 8
  br label %148

148:                                              ; preds = %123, %114
  %149 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %150 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 8
  %152 = load i32, i32* @TIFF_SWAB, align 4
  %153 = and i32 %151, %152
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %159

155:                                              ; preds = %148
  %156 = load i8*, i8** @_TIFFNoPostDecode, align 8
  %157 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %158 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %157, i32 0, i32 2
  store i8* %156, i8** %158, align 8
  br label %159

159:                                              ; preds = %155, %148
  br label %160

160:                                              ; preds = %159, %109
  br label %161

161:                                              ; preds = %160, %108
  store i32 1, i32* %2, align 4
  br label %162

162:                                              ; preds = %161, %20
  %163 = load i32, i32* %2, align 4
  ret i32 %163
}

declare dso_local %struct.TYPE_9__* @PredictorState(%struct.TYPE_11__*) #1

declare dso_local i32 @PredictorSetup(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
