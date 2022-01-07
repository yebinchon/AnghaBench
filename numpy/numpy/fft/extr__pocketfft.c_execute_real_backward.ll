; ModuleID = '/home/carl/AnghaBench/numpy/numpy/fft/extr__pocketfft.c_execute_real_backward.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/fft/extr__pocketfft.c_execute_real_backward.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NPY_CDOUBLE = common dso_local global i32 0, align 4
@NPY_ARRAY_DEFAULT = common dso_local global i32 0, align 4
@NPY_ARRAY_ENSUREARRAY = common dso_local global i32 0, align 4
@NPY_ARRAY_FORCECAST = common dso_local global i32 0, align 4
@NPY_DOUBLE = common dso_local global i32 0, align 4
@Py_BEGIN_ALLOW_THREADS = common dso_local global i32 0, align 4
@NPY_SIGINT_ON = common dso_local global i32 0, align 4
@NPY_SIGINT_OFF = common dso_local global i32 0, align 4
@Py_END_ALLOW_THREADS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, double)* @execute_real_backward to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @execute_real_backward(i32* %0, double %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca double, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca double*, align 8
  %13 = alloca double*, align 8
  %14 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store double %1, double* %5, align 8
  store i32* null, i32** %6, align 8
  %15 = load i32*, i32** %4, align 8
  %16 = load i32, i32* @NPY_CDOUBLE, align 4
  %17 = call i32 @PyArray_DescrFromType(i32 %16)
  %18 = load i32, i32* @NPY_ARRAY_DEFAULT, align 4
  %19 = load i32, i32* @NPY_ARRAY_ENSUREARRAY, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @NPY_ARRAY_FORCECAST, align 4
  %22 = or i32 %20, %21
  %23 = call i64 @PyArray_FromAny(i32* %15, i32 %17, i32 1, i32 0, i32 %22, i32* null)
  %24 = inttoptr i64 %23 to i32*
  store i32* %24, i32** %7, align 8
  %25 = load i32*, i32** %7, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %2
  store i32* null, i32** %3, align 8
  br label %133

28:                                               ; preds = %2
  %29 = load i32*, i32** %7, align 8
  %30 = load i32*, i32** %7, align 8
  %31 = call i64 @PyArray_NDIM(i32* %30)
  %32 = sub nsw i64 %31, 1
  %33 = call i32 @PyArray_DIM(i32* %29, i64 %32)
  store i32 %33, i32* %8, align 4
  %34 = load i32*, i32** %7, align 8
  %35 = call i64 @PyArray_NDIM(i32* %34)
  %36 = load i32*, i32** %7, align 8
  %37 = call i32 @PyArray_DIMS(i32* %36)
  %38 = load i32, i32* @NPY_DOUBLE, align 4
  %39 = call i32 @PyArray_DescrFromType(i32 %38)
  %40 = call i64 @PyArray_Empty(i64 %35, i32 %37, i32 %39, i32 0)
  %41 = inttoptr i64 %40 to i32*
  store i32* %41, i32** %9, align 8
  store i32 0, i32* %10, align 4
  %42 = load i32*, i32** %9, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %28
  store i32 1, i32* %10, align 4
  br label %45

45:                                               ; preds = %44, %28
  %46 = load i32, i32* %10, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %120, label %48

48:                                               ; preds = %45
  %49 = load i32*, i32** %9, align 8
  %50 = call i32 @PyArray_SIZE(i32* %49)
  %51 = load i32, i32* %8, align 4
  %52 = sdiv i32 %50, %51
  store i32 %52, i32* %11, align 4
  %53 = load i32*, i32** %9, align 8
  %54 = call i64 @PyArray_DATA(i32* %53)
  %55 = inttoptr i64 %54 to double*
  store double* %55, double** %12, align 8
  %56 = load i32*, i32** %7, align 8
  %57 = call i64 @PyArray_DATA(i32* %56)
  %58 = inttoptr i64 %57 to double*
  store double* %58, double** %13, align 8
  %59 = load i32, i32* @Py_BEGIN_ALLOW_THREADS, align 4
  %60 = load i32, i32* @NPY_SIGINT_ON, align 4
  %61 = load i32, i32* %8, align 4
  %62 = call i32* @make_rfft_plan(i32 %61)
  store i32* %62, i32** %6, align 8
  %63 = load i32*, i32** %6, align 8
  %64 = icmp ne i32* %63, null
  br i1 %64, label %66, label %65

65:                                               ; preds = %48
  store i32 1, i32* %10, align 4
  br label %66

66:                                               ; preds = %65, %48
  %67 = load i32, i32* %10, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %111, label %69

69:                                               ; preds = %66
  store i32 0, i32* %14, align 4
  br label %70

70:                                               ; preds = %107, %69
  %71 = load i32, i32* %14, align 4
  %72 = load i32, i32* %11, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %110

74:                                               ; preds = %70
  %75 = load double*, double** %12, align 8
  %76 = getelementptr inbounds double, double* %75, i64 1
  %77 = bitcast double* %76 to i8*
  %78 = load double*, double** %13, align 8
  %79 = getelementptr inbounds double, double* %78, i64 2
  %80 = load i32, i32* %8, align 4
  %81 = sub nsw i32 %80, 1
  %82 = sext i32 %81 to i64
  %83 = mul i64 %82, 8
  %84 = trunc i64 %83 to i32
  %85 = call i32 @memcpy(i8* %77, double* %79, i32 %84)
  %86 = load double*, double** %13, align 8
  %87 = getelementptr inbounds double, double* %86, i64 0
  %88 = load double, double* %87, align 8
  %89 = load double*, double** %12, align 8
  %90 = getelementptr inbounds double, double* %89, i64 0
  store double %88, double* %90, align 8
  %91 = load i32*, i32** %6, align 8
  %92 = load double*, double** %12, align 8
  %93 = load double, double* %5, align 8
  %94 = call i64 @rfft_backward(i32* %91, double* %92, double %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %74
  store i32 1, i32* %10, align 4
  br label %110

97:                                               ; preds = %74
  %98 = load i32, i32* %8, align 4
  %99 = load double*, double** %12, align 8
  %100 = sext i32 %98 to i64
  %101 = getelementptr inbounds double, double* %99, i64 %100
  store double* %101, double** %12, align 8
  %102 = load i32, i32* %8, align 4
  %103 = mul nsw i32 %102, 2
  %104 = load double*, double** %13, align 8
  %105 = sext i32 %103 to i64
  %106 = getelementptr inbounds double, double* %104, i64 %105
  store double* %106, double** %13, align 8
  br label %107

107:                                              ; preds = %97
  %108 = load i32, i32* %14, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %14, align 4
  br label %70

110:                                              ; preds = %96, %70
  br label %111

111:                                              ; preds = %110, %66
  %112 = load i32*, i32** %6, align 8
  %113 = icmp ne i32* %112, null
  br i1 %113, label %114, label %117

114:                                              ; preds = %111
  %115 = load i32*, i32** %6, align 8
  %116 = call i32 @destroy_rfft_plan(i32* %115)
  br label %117

117:                                              ; preds = %114, %111
  %118 = load i32, i32* @NPY_SIGINT_OFF, align 4
  %119 = load i32, i32* @Py_END_ALLOW_THREADS, align 4
  br label %120

120:                                              ; preds = %117, %45
  %121 = load i32, i32* %10, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %129

123:                                              ; preds = %120
  %124 = load i32*, i32** %7, align 8
  %125 = call i32 @Py_XDECREF(i32* %124)
  %126 = load i32*, i32** %9, align 8
  %127 = call i32 @Py_XDECREF(i32* %126)
  %128 = call i32* (...) @PyErr_NoMemory()
  store i32* %128, i32** %3, align 8
  br label %133

129:                                              ; preds = %120
  %130 = load i32*, i32** %7, align 8
  %131 = call i32 @Py_DECREF(i32* %130)
  %132 = load i32*, i32** %9, align 8
  store i32* %132, i32** %3, align 8
  br label %133

133:                                              ; preds = %129, %123, %27
  %134 = load i32*, i32** %3, align 8
  ret i32* %134
}

declare dso_local i64 @PyArray_FromAny(i32*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @PyArray_DescrFromType(i32) #1

declare dso_local i32 @PyArray_DIM(i32*, i64) #1

declare dso_local i64 @PyArray_NDIM(i32*) #1

declare dso_local i64 @PyArray_Empty(i64, i32, i32, i32) #1

declare dso_local i32 @PyArray_DIMS(i32*) #1

declare dso_local i32 @PyArray_SIZE(i32*) #1

declare dso_local i64 @PyArray_DATA(i32*) #1

declare dso_local i32* @make_rfft_plan(i32) #1

declare dso_local i32 @memcpy(i8*, double*, i32) #1

declare dso_local i64 @rfft_backward(i32*, double*, double) #1

declare dso_local i32 @destroy_rfft_plan(i32*) #1

declare dso_local i32 @Py_XDECREF(i32*) #1

declare dso_local i32* @PyErr_NoMemory(...) #1

declare dso_local i32 @Py_DECREF(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
