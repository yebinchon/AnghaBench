; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libtiff/extr_tif_dirwrite.c_TIFFWriteDirectoryTagCheckedRationalArray.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libtiff/extr_tif_dirwrite.c_TIFFWriteDirectoryTagCheckedRationalArray.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@TIFFWriteDirectoryTagCheckedRationalArray.module = internal constant [42 x i8] c"TIFFWriteDirectoryTagCheckedRationalArray\00", align 16
@.str = private unnamed_addr constant [14 x i8] c"Out of memory\00", align 1
@TIFF_SWAB = common dso_local global i32 0, align 4
@TIFF_RATIONAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i32*, i32*, i32, i32, float*)* @TIFFWriteDirectoryTagCheckedRationalArray to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @TIFFWriteDirectoryTagCheckedRationalArray(%struct.TYPE_4__* %0, i32* %1, i32* %2, i32 %3, i32 %4, float* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca float*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca float*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store float* %5, float** %13, align 8
  %19 = call i32 @assert(i32 1)
  %20 = load i32, i32* %12, align 4
  %21 = mul nsw i32 %20, 2
  %22 = sext i32 %21 to i64
  %23 = mul i64 %22, 4
  %24 = trunc i64 %23 to i32
  %25 = call i32* @_TIFFmalloc(i32 %24)
  store i32* %25, i32** %14, align 8
  %26 = load i32*, i32** %14, align 8
  %27 = icmp eq i32* %26, null
  br i1 %27, label %28, label %33

28:                                               ; preds = %6
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @TIFFErrorExt(i32 %31, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @TIFFWriteDirectoryTagCheckedRationalArray.module, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %142

33:                                               ; preds = %6
  %34 = load float*, float** %13, align 8
  store float* %34, float** %15, align 8
  %35 = load i32*, i32** %14, align 8
  store i32* %35, i32** %16, align 8
  store i32 0, i32* %17, align 4
  br label %36

36:                                               ; preds = %108, %33
  %37 = load i32, i32* %17, align 4
  %38 = load i32, i32* %12, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %115

40:                                               ; preds = %36
  %41 = load float*, float** %15, align 8
  %42 = load float, float* %41, align 4
  %43 = fpext float %42 to double
  %44 = fcmp ole double %43, 0.000000e+00
  br i1 %44, label %51, label %45

45:                                               ; preds = %40
  %46 = load float*, float** %15, align 8
  %47 = load float, float* %46, align 4
  %48 = load float*, float** %15, align 8
  %49 = load float, float* %48, align 4
  %50 = fcmp une float %47, %49
  br i1 %50, label %51, label %56

51:                                               ; preds = %45, %40
  %52 = load i32*, i32** %16, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 0
  store i32 0, i32* %53, align 4
  %54 = load i32*, i32** %16, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 1
  store i32 1, i32* %55, align 4
  br label %107

56:                                               ; preds = %45
  %57 = load float*, float** %15, align 8
  %58 = load float, float* %57, align 4
  %59 = fcmp oge float %58, 0.000000e+00
  br i1 %59, label %60, label %80

60:                                               ; preds = %56
  %61 = load float*, float** %15, align 8
  %62 = load float, float* %61, align 4
  %63 = fcmp ole float %62, 0x41F0000000000000
  br i1 %63, label %64, label %80

64:                                               ; preds = %60
  %65 = load float*, float** %15, align 8
  %66 = load float, float* %65, align 4
  %67 = load float*, float** %15, align 8
  %68 = load float, float* %67, align 4
  %69 = fptosi float %68 to i32
  %70 = sitofp i32 %69 to float
  %71 = fcmp oeq float %66, %70
  br i1 %71, label %72, label %80

72:                                               ; preds = %64
  %73 = load float*, float** %15, align 8
  %74 = load float, float* %73, align 4
  %75 = fptosi float %74 to i32
  %76 = load i32*, i32** %16, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 0
  store i32 %75, i32* %77, align 4
  %78 = load i32*, i32** %16, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 1
  store i32 1, i32* %79, align 4
  br label %106

80:                                               ; preds = %64, %60, %56
  %81 = load float*, float** %15, align 8
  %82 = load float, float* %81, align 4
  %83 = fpext float %82 to double
  %84 = fcmp olt double %83, 1.000000e+00
  br i1 %84, label %85, label %95

85:                                               ; preds = %80
  %86 = load float*, float** %15, align 8
  %87 = load float, float* %86, align 4
  %88 = fpext float %87 to double
  %89 = fmul double %88, 0x41EFFFFFFFE00000
  %90 = fptosi double %89 to i32
  %91 = load i32*, i32** %16, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 0
  store i32 %90, i32* %92, align 4
  %93 = load i32*, i32** %16, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 1
  store i32 -1, i32* %94, align 4
  br label %105

95:                                               ; preds = %80
  %96 = load i32*, i32** %16, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 0
  store i32 -1, i32* %97, align 4
  %98 = load float*, float** %15, align 8
  %99 = load float, float* %98, align 4
  %100 = fpext float %99 to double
  %101 = fdiv double 0x41EFFFFFFFE00000, %100
  %102 = fptosi double %101 to i32
  %103 = load i32*, i32** %16, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 1
  store i32 %102, i32* %104, align 4
  br label %105

105:                                              ; preds = %95, %85
  br label %106

106:                                              ; preds = %105, %72
  br label %107

107:                                              ; preds = %106, %51
  br label %108

108:                                              ; preds = %107
  %109 = load float*, float** %15, align 8
  %110 = getelementptr inbounds float, float* %109, i32 1
  store float* %110, float** %15, align 8
  %111 = load i32*, i32** %16, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 2
  store i32* %112, i32** %16, align 8
  %113 = load i32, i32* %17, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %17, align 4
  br label %36

115:                                              ; preds = %36
  %116 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* @TIFF_SWAB, align 4
  %120 = and i32 %118, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %127

122:                                              ; preds = %115
  %123 = load i32*, i32** %14, align 8
  %124 = load i32, i32* %12, align 4
  %125 = mul nsw i32 %124, 2
  %126 = call i32 @TIFFSwabArrayOfLong(i32* %123, i32 %125)
  br label %127

127:                                              ; preds = %122, %115
  %128 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %129 = load i32*, i32** %9, align 8
  %130 = load i32*, i32** %10, align 8
  %131 = load i32, i32* %11, align 4
  %132 = load i32, i32* @TIFF_RATIONAL, align 4
  %133 = load i32, i32* %12, align 4
  %134 = load i32, i32* %12, align 4
  %135 = mul nsw i32 %134, 8
  %136 = load i32*, i32** %14, align 8
  %137 = getelementptr inbounds i32, i32* %136, i64 0
  %138 = call i32 @TIFFWriteDirectoryTagData(%struct.TYPE_4__* %128, i32* %129, i32* %130, i32 %131, i32 %132, i32 %133, i32 %135, i32* %137)
  store i32 %138, i32* %18, align 4
  %139 = load i32*, i32** %14, align 8
  %140 = call i32 @_TIFFfree(i32* %139)
  %141 = load i32, i32* %18, align 4
  store i32 %141, i32* %7, align 4
  br label %142

142:                                              ; preds = %127, %28
  %143 = load i32, i32* %7, align 4
  ret i32 %143
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32* @_TIFFmalloc(i32) #1

declare dso_local i32 @TIFFErrorExt(i32, i8*, i8*) #1

declare dso_local i32 @TIFFSwabArrayOfLong(i32*, i32) #1

declare dso_local i32 @TIFFWriteDirectoryTagData(%struct.TYPE_4__*, i32*, i32*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @_TIFFfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
