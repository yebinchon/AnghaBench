; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libtiff/extr_tif_getimage.c_initCIELabConversion.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libtiff/extr_tif_getimage.c_initCIELabConversion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32*, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@initCIELabConversion.module = internal constant [21 x i8] c"initCIELabConversion\00", align 16
@TIFFTAG_WHITEPOINT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Invalid value for WhitePoint tag.\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"No space for CIE L*a*b*->RGB conversion state.\00", align 1
@display_sRGB = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [55 x i8] c"Failed to initialize CIE L*a*b*->RGB conversion state.\00", align 1
@putcontig8bitCIELab = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_4__*)* @initCIELabConversion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @initCIELabConversion(%struct.TYPE_4__* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca float*, align 8
  %5 = alloca [3 x float], align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 1
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %9 = load i32, i32* @TIFFTAG_WHITEPOINT, align 4
  %10 = call i32 @TIFFGetFieldDefaulted(%struct.TYPE_5__* %8, i32 %9, float** %4)
  %11 = load float*, float** %4, align 8
  %12 = getelementptr inbounds float, float* %11, i64 1
  %13 = load float, float* %12, align 4
  %14 = fcmp oeq float %13, 0.000000e+00
  br i1 %14, label %15, label %22

15:                                               ; preds = %1
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @TIFFErrorExt(i32 %20, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @initCIELabConversion.module, i64 0, i64 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  store i32* null, i32** %2, align 8
  br label %92

22:                                               ; preds = %1
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %44, label %27

27:                                               ; preds = %22
  %28 = call i64 @_TIFFmalloc(i32 4)
  %29 = inttoptr i64 %28 to i32*
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  store i32* %29, i32** %31, align 8
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %43, label %36

36:                                               ; preds = %27
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @TIFFErrorExt(i32 %41, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @initCIELabConversion.module, i64 0, i64 0), i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  store i32* null, i32** %2, align 8
  br label %92

43:                                               ; preds = %27
  br label %44

44:                                               ; preds = %43, %22
  %45 = getelementptr inbounds [3 x float], [3 x float]* %5, i64 0, i64 1
  store float 1.000000e+02, float* %45, align 4
  %46 = load float*, float** %4, align 8
  %47 = getelementptr inbounds float, float* %46, i64 0
  %48 = load float, float* %47, align 4
  %49 = load float*, float** %4, align 8
  %50 = getelementptr inbounds float, float* %49, i64 1
  %51 = load float, float* %50, align 4
  %52 = fdiv float %48, %51
  %53 = getelementptr inbounds [3 x float], [3 x float]* %5, i64 0, i64 1
  %54 = load float, float* %53, align 4
  %55 = fmul float %52, %54
  %56 = getelementptr inbounds [3 x float], [3 x float]* %5, i64 0, i64 0
  store float %55, float* %56, align 4
  %57 = load float*, float** %4, align 8
  %58 = getelementptr inbounds float, float* %57, i64 0
  %59 = load float, float* %58, align 4
  %60 = fsub float 1.000000e+00, %59
  %61 = load float*, float** %4, align 8
  %62 = getelementptr inbounds float, float* %61, i64 1
  %63 = load float, float* %62, align 4
  %64 = fsub float %60, %63
  %65 = load float*, float** %4, align 8
  %66 = getelementptr inbounds float, float* %65, i64 1
  %67 = load float, float* %66, align 4
  %68 = fdiv float %64, %67
  %69 = getelementptr inbounds [3 x float], [3 x float]* %5, i64 0, i64 1
  %70 = load float, float* %69, align 4
  %71 = fmul float %68, %70
  %72 = getelementptr inbounds [3 x float], [3 x float]* %5, i64 0, i64 2
  store float %71, float* %72, align 4
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = getelementptr inbounds [3 x float], [3 x float]* %5, i64 0, i64 0
  %77 = call i64 @TIFFCIELabToRGBInit(i32* %75, i32* @display_sRGB, float* %76)
  %78 = icmp slt i64 %77, 0
  br i1 %78, label %79, label %90

79:                                               ; preds = %44
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 1
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @TIFFErrorExt(i32 %84, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @initCIELabConversion.module, i64 0, i64 0), i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0))
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  %89 = call i32 @_TIFFfree(i32* %88)
  store i32* null, i32** %2, align 8
  br label %92

90:                                               ; preds = %44
  %91 = load i32*, i32** @putcontig8bitCIELab, align 8
  store i32* %91, i32** %2, align 8
  br label %92

92:                                               ; preds = %90, %79, %36, %15
  %93 = load i32*, i32** %2, align 8
  ret i32* %93
}

declare dso_local i32 @TIFFGetFieldDefaulted(%struct.TYPE_5__*, i32, float**) #1

declare dso_local i32 @TIFFErrorExt(i32, i8*, i8*) #1

declare dso_local i64 @_TIFFmalloc(i32) #1

declare dso_local i64 @TIFFCIELabToRGBInit(i32*, i32*, float*) #1

declare dso_local i32 @_TIFFfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
