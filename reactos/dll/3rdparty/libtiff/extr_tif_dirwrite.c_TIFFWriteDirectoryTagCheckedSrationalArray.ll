; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libtiff/extr_tif_dirwrite.c_TIFFWriteDirectoryTagCheckedSrationalArray.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libtiff/extr_tif_dirwrite.c_TIFFWriteDirectoryTagCheckedSrationalArray.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@TIFFWriteDirectoryTagCheckedSrationalArray.module = internal constant [43 x i8] c"TIFFWriteDirectoryTagCheckedSrationalArray\00", align 16
@.str = private unnamed_addr constant [14 x i8] c"Out of memory\00", align 1
@TIFF_SWAB = common dso_local global i32 0, align 4
@TIFF_SRATIONAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i32*, i32*, i32, i32, float*)* @TIFFWriteDirectoryTagCheckedSrationalArray to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @TIFFWriteDirectoryTagCheckedSrationalArray(%struct.TYPE_4__* %0, i32* %1, i32* %2, i32 %3, i32 %4, float* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca float*, align 8
  %14 = alloca float*, align 8
  %15 = alloca float*, align 8
  %16 = alloca float*, align 8
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
  %25 = call float* @_TIFFmalloc(i32 %24)
  store float* %25, float** %14, align 8
  %26 = load float*, float** %14, align 8
  %27 = icmp eq float* %26, null
  br i1 %27, label %28, label %33

28:                                               ; preds = %6
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @TIFFErrorExt(i32 %31, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @TIFFWriteDirectoryTagCheckedSrationalArray.module, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %164

33:                                               ; preds = %6
  %34 = load float*, float** %13, align 8
  store float* %34, float** %15, align 8
  %35 = load float*, float** %14, align 8
  store float* %35, float** %16, align 8
  store i32 0, i32* %17, align 4
  br label %36

36:                                               ; preds = %129, %33
  %37 = load i32, i32* %17, align 4
  %38 = load i32, i32* %12, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %136

40:                                               ; preds = %36
  %41 = load float*, float** %15, align 8
  %42 = load float, float* %41, align 4
  %43 = fpext float %42 to double
  %44 = fcmp olt double %43, 0.000000e+00
  br i1 %44, label %45, label %88

45:                                               ; preds = %40
  %46 = load float*, float** %15, align 8
  %47 = load float, float* %46, align 4
  %48 = load float*, float** %15, align 8
  %49 = load float, float* %48, align 4
  %50 = fcmp oeq float %47, %49
  br i1 %50, label %51, label %58

51:                                               ; preds = %45
  %52 = load float*, float** %15, align 8
  %53 = load float, float* %52, align 4
  %54 = load float*, float** %16, align 8
  %55 = getelementptr inbounds float, float* %54, i64 0
  store float %53, float* %55, align 4
  %56 = load float*, float** %16, align 8
  %57 = getelementptr inbounds float, float* %56, i64 1
  store float 1.000000e+00, float* %57, align 4
  br label %87

58:                                               ; preds = %45
  %59 = load float*, float** %15, align 8
  %60 = load float, float* %59, align 4
  %61 = fpext float %60 to double
  %62 = fcmp ogt double %61, -1.000000e+00
  br i1 %62, label %63, label %75

63:                                               ; preds = %58
  %64 = load float*, float** %15, align 8
  %65 = load float, float* %64, align 4
  %66 = fneg float %65
  %67 = fpext float %66 to double
  %68 = fmul double %67, 0x41DFFFFFFFC00000
  %69 = fptrunc double %68 to float
  %70 = fneg float %69
  %71 = load float*, float** %16, align 8
  %72 = getelementptr inbounds float, float* %71, i64 0
  store float %70, float* %72, align 4
  %73 = load float*, float** %16, align 8
  %74 = getelementptr inbounds float, float* %73, i64 1
  store float 0x41E0000000000000, float* %74, align 4
  br label %86

75:                                               ; preds = %58
  %76 = load float*, float** %16, align 8
  %77 = getelementptr inbounds float, float* %76, i64 0
  store float 0xC1E0000000000000, float* %77, align 4
  %78 = load float*, float** %15, align 8
  %79 = load float, float* %78, align 4
  %80 = fneg float %79
  %81 = fpext float %80 to double
  %82 = fdiv double 0x41DFFFFFFFC00000, %81
  %83 = fptrunc double %82 to float
  %84 = load float*, float** %16, align 8
  %85 = getelementptr inbounds float, float* %84, i64 1
  store float %83, float* %85, align 4
  br label %86

86:                                               ; preds = %75, %63
  br label %87

87:                                               ; preds = %86, %51
  br label %128

88:                                               ; preds = %40
  %89 = load float*, float** %15, align 8
  %90 = load float, float* %89, align 4
  %91 = load float*, float** %15, align 8
  %92 = load float, float* %91, align 4
  %93 = fcmp oeq float %90, %92
  br i1 %93, label %94, label %101

94:                                               ; preds = %88
  %95 = load float*, float** %15, align 8
  %96 = load float, float* %95, align 4
  %97 = load float*, float** %16, align 8
  %98 = getelementptr inbounds float, float* %97, i64 0
  store float %96, float* %98, align 4
  %99 = load float*, float** %16, align 8
  %100 = getelementptr inbounds float, float* %99, i64 1
  store float 1.000000e+00, float* %100, align 4
  br label %127

101:                                              ; preds = %88
  %102 = load float*, float** %15, align 8
  %103 = load float, float* %102, align 4
  %104 = fpext float %103 to double
  %105 = fcmp olt double %104, 1.000000e+00
  br i1 %105, label %106, label %116

106:                                              ; preds = %101
  %107 = load float*, float** %15, align 8
  %108 = load float, float* %107, align 4
  %109 = fpext float %108 to double
  %110 = fmul double %109, 0x41DFFFFFFFC00000
  %111 = fptrunc double %110 to float
  %112 = load float*, float** %16, align 8
  %113 = getelementptr inbounds float, float* %112, i64 0
  store float %111, float* %113, align 4
  %114 = load float*, float** %16, align 8
  %115 = getelementptr inbounds float, float* %114, i64 1
  store float 0x41E0000000000000, float* %115, align 4
  br label %126

116:                                              ; preds = %101
  %117 = load float*, float** %16, align 8
  %118 = getelementptr inbounds float, float* %117, i64 0
  store float 0x41E0000000000000, float* %118, align 4
  %119 = load float*, float** %15, align 8
  %120 = load float, float* %119, align 4
  %121 = fpext float %120 to double
  %122 = fdiv double 0x41DFFFFFFFC00000, %121
  %123 = fptrunc double %122 to float
  %124 = load float*, float** %16, align 8
  %125 = getelementptr inbounds float, float* %124, i64 1
  store float %123, float* %125, align 4
  br label %126

126:                                              ; preds = %116, %106
  br label %127

127:                                              ; preds = %126, %94
  br label %128

128:                                              ; preds = %127, %87
  br label %129

129:                                              ; preds = %128
  %130 = load float*, float** %15, align 8
  %131 = getelementptr inbounds float, float* %130, i32 1
  store float* %131, float** %15, align 8
  %132 = load float*, float** %16, align 8
  %133 = getelementptr inbounds float, float* %132, i64 2
  store float* %133, float** %16, align 8
  %134 = load i32, i32* %17, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %17, align 4
  br label %36

136:                                              ; preds = %36
  %137 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* @TIFF_SWAB, align 4
  %141 = and i32 %139, %140
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %149

143:                                              ; preds = %136
  %144 = load float*, float** %14, align 8
  %145 = bitcast float* %144 to i32*
  %146 = load i32, i32* %12, align 4
  %147 = mul nsw i32 %146, 2
  %148 = call i32 @TIFFSwabArrayOfLong(i32* %145, i32 %147)
  br label %149

149:                                              ; preds = %143, %136
  %150 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %151 = load i32*, i32** %9, align 8
  %152 = load i32*, i32** %10, align 8
  %153 = load i32, i32* %11, align 4
  %154 = load i32, i32* @TIFF_SRATIONAL, align 4
  %155 = load i32, i32* %12, align 4
  %156 = load i32, i32* %12, align 4
  %157 = mul nsw i32 %156, 8
  %158 = load float*, float** %14, align 8
  %159 = getelementptr inbounds float, float* %158, i64 0
  %160 = call i32 @TIFFWriteDirectoryTagData(%struct.TYPE_4__* %150, i32* %151, i32* %152, i32 %153, i32 %154, i32 %155, i32 %157, float* %159)
  store i32 %160, i32* %18, align 4
  %161 = load float*, float** %14, align 8
  %162 = call i32 @_TIFFfree(float* %161)
  %163 = load i32, i32* %18, align 4
  store i32 %163, i32* %7, align 4
  br label %164

164:                                              ; preds = %149, %28
  %165 = load i32, i32* %7, align 4
  ret i32 %165
}

declare dso_local i32 @assert(i32) #1

declare dso_local float* @_TIFFmalloc(i32) #1

declare dso_local i32 @TIFFErrorExt(i32, i8*, i8*) #1

declare dso_local i32 @TIFFSwabArrayOfLong(i32*, i32) #1

declare dso_local i32 @TIFFWriteDirectoryTagData(%struct.TYPE_4__*, i32*, i32*, i32, i32, i32, i32, float*) #1

declare dso_local i32 @_TIFFfree(float*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
