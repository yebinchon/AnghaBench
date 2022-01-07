; ModuleID = '/home/carl/AnghaBench/numpy/numpy/fft/extr__pocketfft.c_execute_real_forward.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/fft/extr__pocketfft.c_execute_real_forward.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NPY_DOUBLE = common dso_local global i32 0, align 4
@NPY_ARRAY_DEFAULT = common dso_local global i32 0, align 4
@NPY_ARRAY_ENSUREARRAY = common dso_local global i32 0, align 4
@NPY_ARRAY_FORCECAST = common dso_local global i32 0, align 4
@NPY_CDOUBLE = common dso_local global i32 0, align 4
@Py_BEGIN_ALLOW_THREADS = common dso_local global i32 0, align 4
@NPY_SIGINT_ON = common dso_local global i32 0, align 4
@NPY_SIGINT_OFF = common dso_local global i32 0, align 4
@Py_END_ALLOW_THREADS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, double)* @execute_real_forward to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @execute_real_forward(i32* %0, double %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca double, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca double*, align 8
  %18 = alloca double*, align 8
  %19 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store double %1, double* %5, align 8
  store i32* null, i32** %6, align 8
  store i32 0, i32* %7, align 4
  %20 = load i32*, i32** %4, align 8
  %21 = load i32, i32* @NPY_DOUBLE, align 4
  %22 = call i32 @PyArray_DescrFromType(i32 %21)
  %23 = load i32, i32* @NPY_ARRAY_DEFAULT, align 4
  %24 = load i32, i32* @NPY_ARRAY_ENSUREARRAY, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @NPY_ARRAY_FORCECAST, align 4
  %27 = or i32 %25, %26
  %28 = call i64 @PyArray_FromAny(i32* %20, i32 %22, i32 1, i32 0, i32 %27, i32* null)
  %29 = inttoptr i64 %28 to i32*
  store i32* %29, i32** %8, align 8
  %30 = load i32*, i32** %8, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %2
  store i32* null, i32** %3, align 8
  br label %193

33:                                               ; preds = %2
  %34 = load i32*, i32** %8, align 8
  %35 = call i32 @PyArray_NDIM(i32* %34)
  store i32 %35, i32* %9, align 4
  %36 = load i32*, i32** %8, align 8
  %37 = call i32* @PyArray_DIMS(i32* %36)
  store i32* %37, i32** %10, align 8
  %38 = load i32*, i32** %10, align 8
  %39 = load i32, i32* %9, align 4
  %40 = sub nsw i32 %39, 1
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %38, i64 %41
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %11, align 4
  %44 = load i32, i32* %9, align 4
  %45 = sext i32 %44 to i64
  %46 = mul i64 %45, 4
  %47 = trunc i64 %46 to i32
  %48 = call i64 @malloc(i32 %47)
  %49 = inttoptr i64 %48 to i32*
  store i32* %49, i32** %12, align 8
  %50 = load i32*, i32** %12, align 8
  %51 = icmp ne i32* %50, null
  br i1 %51, label %55, label %52

52:                                               ; preds = %33
  %53 = load i32*, i32** %8, align 8
  %54 = call i32 @Py_XDECREF(i32* %53)
  store i32* null, i32** %3, align 8
  br label %193

55:                                               ; preds = %33
  store i32 0, i32* %13, align 4
  br label %56

56:                                               ; preds = %71, %55
  %57 = load i32, i32* %13, align 4
  %58 = load i32, i32* %9, align 4
  %59 = sub nsw i32 %58, 1
  %60 = icmp slt i32 %57, %59
  br i1 %60, label %61, label %74

61:                                               ; preds = %56
  %62 = load i32*, i32** %10, align 8
  %63 = load i32, i32* %13, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = load i32*, i32** %12, align 8
  %68 = load i32, i32* %13, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  store i32 %66, i32* %70, align 4
  br label %71

71:                                               ; preds = %61
  %72 = load i32, i32* %13, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %13, align 4
  br label %56

74:                                               ; preds = %56
  %75 = load i32, i32* %11, align 4
  %76 = sdiv i32 %75, 2
  %77 = add nsw i32 %76, 1
  %78 = load i32*, i32** %12, align 8
  %79 = load i32, i32* %9, align 4
  %80 = sub nsw i32 %79, 1
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %78, i64 %81
  store i32 %77, i32* %82, align 4
  %83 = load i32, i32* %9, align 4
  %84 = load i32*, i32** %12, align 8
  %85 = load i32, i32* @NPY_CDOUBLE, align 4
  %86 = call i32 @PyArray_DescrFromType(i32 %85)
  %87 = call i64 @PyArray_Empty(i32 %83, i32* %84, i32 %86, i32 0)
  %88 = inttoptr i64 %87 to i32*
  store i32* %88, i32** %14, align 8
  %89 = load i32*, i32** %12, align 8
  %90 = call i32 @free(i32* %89)
  %91 = load i32*, i32** %14, align 8
  %92 = icmp ne i32* %91, null
  br i1 %92, label %94, label %93

93:                                               ; preds = %74
  store i32 1, i32* %7, align 4
  br label %94

94:                                               ; preds = %93, %74
  %95 = load i32, i32* %7, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %180, label %97

97:                                               ; preds = %94
  %98 = load i32*, i32** %14, align 8
  %99 = load i32*, i32** %14, align 8
  %100 = call i32 @PyArray_NDIM(i32* %99)
  %101 = sub nsw i32 %100, 1
  %102 = call i32 @PyArray_DIM(i32* %98, i32 %101)
  %103 = mul nsw i32 %102, 2
  store i32 %103, i32* %15, align 4
  %104 = load i32*, i32** %8, align 8
  %105 = call i32 @PyArray_SIZE(i32* %104)
  %106 = load i32, i32* %11, align 4
  %107 = sdiv i32 %105, %106
  store i32 %107, i32* %16, align 4
  %108 = load i32*, i32** %14, align 8
  %109 = call i64 @PyArray_DATA(i32* %108)
  %110 = inttoptr i64 %109 to double*
  store double* %110, double** %17, align 8
  %111 = load i32*, i32** %8, align 8
  %112 = call i64 @PyArray_DATA(i32* %111)
  %113 = inttoptr i64 %112 to double*
  store double* %113, double** %18, align 8
  %114 = load i32, i32* @Py_BEGIN_ALLOW_THREADS, align 4
  %115 = load i32, i32* @NPY_SIGINT_ON, align 4
  %116 = load i32, i32* %11, align 4
  %117 = call i32* @make_rfft_plan(i32 %116)
  store i32* %117, i32** %6, align 8
  %118 = load i32*, i32** %6, align 8
  %119 = icmp ne i32* %118, null
  br i1 %119, label %121, label %120

120:                                              ; preds = %97
  store i32 1, i32* %7, align 4
  br label %121

121:                                              ; preds = %120, %97
  %122 = load i32, i32* %7, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %171, label %124

124:                                              ; preds = %121
  store i32 0, i32* %19, align 4
  br label %125

125:                                              ; preds = %167, %124
  %126 = load i32, i32* %19, align 4
  %127 = load i32, i32* %16, align 4
  %128 = icmp slt i32 %126, %127
  br i1 %128, label %129, label %170

129:                                              ; preds = %125
  %130 = load double*, double** %17, align 8
  %131 = load i32, i32* %15, align 4
  %132 = sub nsw i32 %131, 1
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds double, double* %130, i64 %133
  store double 0.000000e+00, double* %134, align 8
  %135 = load double*, double** %17, align 8
  %136 = getelementptr inbounds double, double* %135, i64 1
  %137 = bitcast double* %136 to i8*
  %138 = load double*, double** %18, align 8
  %139 = load i32, i32* %11, align 4
  %140 = sext i32 %139 to i64
  %141 = mul i64 %140, 8
  %142 = trunc i64 %141 to i32
  %143 = call i32 @memcpy(i8* %137, double* %138, i32 %142)
  %144 = load i32*, i32** %6, align 8
  %145 = load double*, double** %17, align 8
  %146 = getelementptr inbounds double, double* %145, i64 1
  %147 = load double, double* %5, align 8
  %148 = call i64 @rfft_forward(i32* %144, double* %146, double %147)
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %151

150:                                              ; preds = %129
  store i32 1, i32* %7, align 4
  br label %170

151:                                              ; preds = %129
  %152 = load double*, double** %17, align 8
  %153 = getelementptr inbounds double, double* %152, i64 1
  %154 = load double, double* %153, align 8
  %155 = load double*, double** %17, align 8
  %156 = getelementptr inbounds double, double* %155, i64 0
  store double %154, double* %156, align 8
  %157 = load double*, double** %17, align 8
  %158 = getelementptr inbounds double, double* %157, i64 1
  store double 0.000000e+00, double* %158, align 8
  %159 = load i32, i32* %15, align 4
  %160 = load double*, double** %17, align 8
  %161 = sext i32 %159 to i64
  %162 = getelementptr inbounds double, double* %160, i64 %161
  store double* %162, double** %17, align 8
  %163 = load i32, i32* %11, align 4
  %164 = load double*, double** %18, align 8
  %165 = sext i32 %163 to i64
  %166 = getelementptr inbounds double, double* %164, i64 %165
  store double* %166, double** %18, align 8
  br label %167

167:                                              ; preds = %151
  %168 = load i32, i32* %19, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %19, align 4
  br label %125

170:                                              ; preds = %150, %125
  br label %171

171:                                              ; preds = %170, %121
  %172 = load i32*, i32** %6, align 8
  %173 = icmp ne i32* %172, null
  br i1 %173, label %174, label %177

174:                                              ; preds = %171
  %175 = load i32*, i32** %6, align 8
  %176 = call i32 @destroy_rfft_plan(i32* %175)
  br label %177

177:                                              ; preds = %174, %171
  %178 = load i32, i32* @NPY_SIGINT_OFF, align 4
  %179 = load i32, i32* @Py_END_ALLOW_THREADS, align 4
  br label %180

180:                                              ; preds = %177, %94
  %181 = load i32, i32* %7, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %189

183:                                              ; preds = %180
  %184 = load i32*, i32** %8, align 8
  %185 = call i32 @Py_XDECREF(i32* %184)
  %186 = load i32*, i32** %14, align 8
  %187 = call i32 @Py_XDECREF(i32* %186)
  %188 = call i32* (...) @PyErr_NoMemory()
  store i32* %188, i32** %3, align 8
  br label %193

189:                                              ; preds = %180
  %190 = load i32*, i32** %8, align 8
  %191 = call i32 @Py_DECREF(i32* %190)
  %192 = load i32*, i32** %14, align 8
  store i32* %192, i32** %3, align 8
  br label %193

193:                                              ; preds = %189, %183, %52, %32
  %194 = load i32*, i32** %3, align 8
  ret i32* %194
}

declare dso_local i64 @PyArray_FromAny(i32*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @PyArray_DescrFromType(i32) #1

declare dso_local i32 @PyArray_NDIM(i32*) #1

declare dso_local i32* @PyArray_DIMS(i32*) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @Py_XDECREF(i32*) #1

declare dso_local i64 @PyArray_Empty(i32, i32*, i32, i32) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @PyArray_DIM(i32*, i32) #1

declare dso_local i32 @PyArray_SIZE(i32*) #1

declare dso_local i64 @PyArray_DATA(i32*) #1

declare dso_local i32* @make_rfft_plan(i32) #1

declare dso_local i32 @memcpy(i8*, double*, i32) #1

declare dso_local i64 @rfft_forward(i32*, double*, double) #1

declare dso_local i32 @destroy_rfft_plan(i32*) #1

declare dso_local i32* @PyErr_NoMemory(...) #1

declare dso_local i32 @Py_DECREF(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
