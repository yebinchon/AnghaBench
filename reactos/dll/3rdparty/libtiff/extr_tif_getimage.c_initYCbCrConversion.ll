; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libtiff/extr_tif_getimage.c_initYCbCrConversion.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libtiff/extr_tif_getimage.c_initYCbCrConversion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32*, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@initYCbCrConversion.module = internal constant [20 x i8] c"initYCbCrConversion\00", align 16
@.str = private unnamed_addr constant [41 x i8] c"No space for YCbCr->RGB conversion state\00", align 1
@TIFFTAG_YCBCRCOEFFICIENTS = common dso_local global i32 0, align 4
@TIFFTAG_REFERENCEBLACKWHITE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"Invalid values for YCbCrCoefficients tag\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"Invalid values for ReferenceBlackWhite tag\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*)* @initYCbCrConversion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @initYCbCrConversion(%struct.TYPE_4__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca float*, align 8
  %5 = alloca float*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = load i32*, i32** %7, align 8
  %9 = icmp eq i32* %8, null
  br i1 %9, label %10, label %31

10:                                               ; preds = %1
  %11 = call i64 @TIFFroundup_32(i32 4, i32 8)
  %12 = add i64 %11, 4096
  %13 = add i64 %12, 2048
  %14 = add i64 %13, 3072
  %15 = call i64 @_TIFFmalloc(i64 %14)
  %16 = inttoptr i64 %15 to i32*
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  store i32* %16, i32** %18, align 8
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %30

23:                                               ; preds = %10
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @TIFFErrorExt(i32 %28, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @initYCbCrConversion.module, i64 0, i64 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %131

30:                                               ; preds = %10
  br label %31

31:                                               ; preds = %30, %1
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %33, align 8
  %35 = load i32, i32* @TIFFTAG_YCBCRCOEFFICIENTS, align 4
  %36 = call i32 @TIFFGetFieldDefaulted(%struct.TYPE_5__* %34, i32 %35, float** %4)
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %38, align 8
  %40 = load i32, i32* @TIFFTAG_REFERENCEBLACKWHITE, align 4
  %41 = call i32 @TIFFGetFieldDefaulted(%struct.TYPE_5__* %39, i32 %40, float** %5)
  %42 = load float*, float** %4, align 8
  %43 = getelementptr inbounds float, float* %42, i64 0
  %44 = load float, float* %43, align 4
  %45 = load float*, float** %4, align 8
  %46 = getelementptr inbounds float, float* %45, i64 0
  %47 = load float, float* %46, align 4
  %48 = fcmp une float %44, %47
  br i1 %48, label %71, label %49

49:                                               ; preds = %31
  %50 = load float*, float** %4, align 8
  %51 = getelementptr inbounds float, float* %50, i64 1
  %52 = load float, float* %51, align 4
  %53 = load float*, float** %4, align 8
  %54 = getelementptr inbounds float, float* %53, i64 1
  %55 = load float, float* %54, align 4
  %56 = fcmp une float %52, %55
  br i1 %56, label %71, label %57

57:                                               ; preds = %49
  %58 = load float*, float** %4, align 8
  %59 = getelementptr inbounds float, float* %58, i64 1
  %60 = load float, float* %59, align 4
  %61 = fpext float %60 to double
  %62 = fcmp oeq double %61, 0.000000e+00
  br i1 %62, label %71, label %63

63:                                               ; preds = %57
  %64 = load float*, float** %4, align 8
  %65 = getelementptr inbounds float, float* %64, i64 2
  %66 = load float, float* %65, align 4
  %67 = load float*, float** %4, align 8
  %68 = getelementptr inbounds float, float* %67, i64 2
  %69 = load float, float* %68, align 4
  %70 = fcmp une float %66, %69
  br i1 %70, label %71, label %78

71:                                               ; preds = %63, %57, %49, %31
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 1
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @TIFFErrorExt(i32 %76, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @initYCbCrConversion.module, i64 0, i64 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %131

78:                                               ; preds = %63
  %79 = load float*, float** %5, align 8
  %80 = getelementptr inbounds float, float* %79, i64 0
  %81 = load float, float* %80, align 4
  %82 = call i32 @isInRefBlackWhiteRange(float %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %114

84:                                               ; preds = %78
  %85 = load float*, float** %5, align 8
  %86 = getelementptr inbounds float, float* %85, i64 1
  %87 = load float, float* %86, align 4
  %88 = call i32 @isInRefBlackWhiteRange(float %87)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %114

90:                                               ; preds = %84
  %91 = load float*, float** %5, align 8
  %92 = getelementptr inbounds float, float* %91, i64 2
  %93 = load float, float* %92, align 4
  %94 = call i32 @isInRefBlackWhiteRange(float %93)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %114

96:                                               ; preds = %90
  %97 = load float*, float** %5, align 8
  %98 = getelementptr inbounds float, float* %97, i64 3
  %99 = load float, float* %98, align 4
  %100 = call i32 @isInRefBlackWhiteRange(float %99)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %114

102:                                              ; preds = %96
  %103 = load float*, float** %5, align 8
  %104 = getelementptr inbounds float, float* %103, i64 4
  %105 = load float, float* %104, align 4
  %106 = call i32 @isInRefBlackWhiteRange(float %105)
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %114

108:                                              ; preds = %102
  %109 = load float*, float** %5, align 8
  %110 = getelementptr inbounds float, float* %109, i64 5
  %111 = load float, float* %110, align 4
  %112 = call i32 @isInRefBlackWhiteRange(float %111)
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %121, label %114

114:                                              ; preds = %108, %102, %96, %90, %84, %78
  %115 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 1
  %117 = load %struct.TYPE_5__*, %struct.TYPE_5__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @TIFFErrorExt(i32 %119, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @initYCbCrConversion.module, i64 0, i64 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %131

121:                                              ; preds = %108
  %122 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 0
  %124 = load i32*, i32** %123, align 8
  %125 = load float*, float** %4, align 8
  %126 = load float*, float** %5, align 8
  %127 = call i64 @TIFFYCbCrToRGBInit(i32* %124, float* %125, float* %126)
  %128 = icmp slt i64 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %121
  store i32 0, i32* %2, align 4
  br label %131

130:                                              ; preds = %121
  store i32 1, i32* %2, align 4
  br label %131

131:                                              ; preds = %130, %129, %114, %71, %23
  %132 = load i32, i32* %2, align 4
  ret i32 %132
}

declare dso_local i64 @_TIFFmalloc(i64) #1

declare dso_local i64 @TIFFroundup_32(i32, i32) #1

declare dso_local i32 @TIFFErrorExt(i32, i8*, i8*) #1

declare dso_local i32 @TIFFGetFieldDefaulted(%struct.TYPE_5__*, i32, float**) #1

declare dso_local i32 @isInRefBlackWhiteRange(float) #1

declare dso_local i64 @TIFFYCbCrToRGBInit(i32*, float*, float*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
