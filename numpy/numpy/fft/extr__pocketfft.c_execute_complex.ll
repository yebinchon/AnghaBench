; ModuleID = '/home/carl/AnghaBench/numpy/numpy/fft/extr__pocketfft.c_execute_complex.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/fft/extr__pocketfft.c_execute_complex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NPY_CDOUBLE = common dso_local global i32 0, align 4
@NPY_ARRAY_ENSURECOPY = common dso_local global i32 0, align 4
@NPY_ARRAY_DEFAULT = common dso_local global i32 0, align 4
@NPY_ARRAY_ENSUREARRAY = common dso_local global i32 0, align 4
@NPY_ARRAY_FORCECAST = common dso_local global i32 0, align 4
@Py_BEGIN_ALLOW_THREADS = common dso_local global i32 0, align 4
@NPY_SIGINT_ON = common dso_local global i32 0, align 4
@NPY_SIGINT_OFF = common dso_local global i32 0, align 4
@Py_END_ALLOW_THREADS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32, double)* @execute_complex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @execute_complex(i32* %0, i32 %1, double %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca double, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca double*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store double %2, double* %7, align 8
  %16 = load i32*, i32** %5, align 8
  %17 = load i32, i32* @NPY_CDOUBLE, align 4
  %18 = call i32 @PyArray_DescrFromType(i32 %17)
  %19 = load i32, i32* @NPY_ARRAY_ENSURECOPY, align 4
  %20 = load i32, i32* @NPY_ARRAY_DEFAULT, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @NPY_ARRAY_ENSUREARRAY, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @NPY_ARRAY_FORCECAST, align 4
  %25 = or i32 %23, %24
  %26 = call i64 @PyArray_FromAny(i32* %16, i32 %18, i32 1, i32 0, i32 %25, i32* null)
  %27 = inttoptr i64 %26 to i32*
  store i32* %27, i32** %8, align 8
  %28 = load i32*, i32** %8, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %3
  store i32* null, i32** %4, align 8
  br label %104

31:                                               ; preds = %3
  %32 = load i32*, i32** %8, align 8
  %33 = load i32*, i32** %8, align 8
  %34 = call i64 @PyArray_NDIM(i32* %33)
  %35 = sub nsw i64 %34, 1
  %36 = call i32 @PyArray_DIM(i32* %32, i64 %35)
  store i32 %36, i32* %9, align 4
  store i32* null, i32** %10, align 8
  %37 = load i32*, i32** %8, align 8
  %38 = call i32 @PyArray_SIZE(i32* %37)
  %39 = load i32, i32* %9, align 4
  %40 = sdiv i32 %38, %39
  store i32 %40, i32* %11, align 4
  %41 = load i32*, i32** %8, align 8
  %42 = call i64 @PyArray_DATA(i32* %41)
  %43 = inttoptr i64 %42 to double*
  store double* %43, double** %12, align 8
  store i32 0, i32* %13, align 4
  %44 = load i32, i32* @Py_BEGIN_ALLOW_THREADS, align 4
  %45 = load i32, i32* @NPY_SIGINT_ON, align 4
  %46 = load i32, i32* %9, align 4
  %47 = call i32* @make_cfft_plan(i32 %46)
  store i32* %47, i32** %10, align 8
  %48 = load i32*, i32** %10, align 8
  %49 = icmp ne i32* %48, null
  br i1 %49, label %51, label %50

50:                                               ; preds = %31
  store i32 1, i32* %13, align 4
  br label %51

51:                                               ; preds = %50, %31
  %52 = load i32, i32* %13, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %87, label %54

54:                                               ; preds = %51
  store i32 0, i32* %14, align 4
  br label %55

55:                                               ; preds = %83, %54
  %56 = load i32, i32* %14, align 4
  %57 = load i32, i32* %11, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %86

59:                                               ; preds = %55
  %60 = load i32, i32* %6, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %59
  %63 = load i32*, i32** %10, align 8
  %64 = load double*, double** %12, align 8
  %65 = load double, double* %7, align 8
  %66 = call i32 @cfft_forward(i32* %63, double* %64, double %65)
  br label %72

67:                                               ; preds = %59
  %68 = load i32*, i32** %10, align 8
  %69 = load double*, double** %12, align 8
  %70 = load double, double* %7, align 8
  %71 = call i32 @cfft_backward(i32* %68, double* %69, double %70)
  br label %72

72:                                               ; preds = %67, %62
  %73 = phi i32 [ %66, %62 ], [ %71, %67 ]
  store i32 %73, i32* %15, align 4
  %74 = load i32, i32* %15, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %72
  store i32 1, i32* %13, align 4
  br label %86

77:                                               ; preds = %72
  %78 = load i32, i32* %9, align 4
  %79 = mul nsw i32 %78, 2
  %80 = load double*, double** %12, align 8
  %81 = sext i32 %79 to i64
  %82 = getelementptr inbounds double, double* %80, i64 %81
  store double* %82, double** %12, align 8
  br label %83

83:                                               ; preds = %77
  %84 = load i32, i32* %14, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %14, align 4
  br label %55

86:                                               ; preds = %76, %55
  br label %87

87:                                               ; preds = %86, %51
  %88 = load i32*, i32** %10, align 8
  %89 = icmp ne i32* %88, null
  br i1 %89, label %90, label %93

90:                                               ; preds = %87
  %91 = load i32*, i32** %10, align 8
  %92 = call i32 @destroy_cfft_plan(i32* %91)
  br label %93

93:                                               ; preds = %90, %87
  %94 = load i32, i32* @NPY_SIGINT_OFF, align 4
  %95 = load i32, i32* @Py_END_ALLOW_THREADS, align 4
  %96 = load i32, i32* %13, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %93
  %99 = load i32*, i32** %8, align 8
  %100 = call i32 @Py_XDECREF(i32* %99)
  %101 = call i32* (...) @PyErr_NoMemory()
  store i32* %101, i32** %4, align 8
  br label %104

102:                                              ; preds = %93
  %103 = load i32*, i32** %8, align 8
  store i32* %103, i32** %4, align 8
  br label %104

104:                                              ; preds = %102, %98, %30
  %105 = load i32*, i32** %4, align 8
  ret i32* %105
}

declare dso_local i64 @PyArray_FromAny(i32*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @PyArray_DescrFromType(i32) #1

declare dso_local i32 @PyArray_DIM(i32*, i64) #1

declare dso_local i64 @PyArray_NDIM(i32*) #1

declare dso_local i32 @PyArray_SIZE(i32*) #1

declare dso_local i64 @PyArray_DATA(i32*) #1

declare dso_local i32* @make_cfft_plan(i32) #1

declare dso_local i32 @cfft_forward(i32*, double*, double) #1

declare dso_local i32 @cfft_backward(i32*, double*, double) #1

declare dso_local i32 @destroy_cfft_plan(i32*) #1

declare dso_local i32 @Py_XDECREF(i32*) #1

declare dso_local i32* @PyErr_NoMemory(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
