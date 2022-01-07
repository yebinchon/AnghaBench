; ModuleID = '/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_number.c_is_scalar_with_conversion.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_number.c_is_scalar_with_conversion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32* (i32*)* }

@NPY_INTPOS_SCALAR = common dso_local global i32 0, align 4
@NPY_FLOAT_SCALAR = common dso_local global i32 0, align 4
@NPY_NOSCALAR = common dso_local global i32 0, align 4
@Integer = common dso_local global i32 0, align 4
@Floating = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, double*)* @is_scalar_with_conversion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_scalar_with_conversion(i32* %0, double* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca double*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store double* %1, double** %5, align 8
  store i32 1, i32* %7, align 4
  %10 = load i32*, i32** %4, align 8
  %11 = call i64 @PyInt_Check(i32* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %2
  %14 = load i32*, i32** %4, align 8
  %15 = call i64 @PyInt_AsLong(i32* %14)
  %16 = sitofp i64 %15 to double
  %17 = load double*, double** %5, align 8
  store double %16, double* %17, align 8
  %18 = load i32, i32* @NPY_INTPOS_SCALAR, align 4
  store i32 %18, i32* %3, align 4
  br label %142

19:                                               ; preds = %2
  %20 = load i32*, i32** %4, align 8
  %21 = call i64 @PyFloat_Check(i32* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %19
  %24 = load i32*, i32** %4, align 8
  %25 = call double @PyFloat_AsDouble(i32* %24)
  %26 = load double*, double** %5, align 8
  store double %25, double* %26, align 8
  %27 = load i32, i32* @NPY_FLOAT_SCALAR, align 4
  store i32 %27, i32* %3, align 4
  br label %142

28:                                               ; preds = %19
  %29 = load i32*, i32** %4, align 8
  %30 = call i64 @PyArray_Check(i32* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %71

32:                                               ; preds = %28
  %33 = load i32*, i32** %4, align 8
  %34 = call i64 @PyArray_NDIM(i32* %33)
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %70

36:                                               ; preds = %32
  %37 = load i32*, i32** %4, align 8
  %38 = call i64 @PyArray_ISINTEGER(i32* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %36
  %41 = load i32*, i32** %4, align 8
  %42 = call i64 @PyArray_ISFLOAT(i32* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %70

44:                                               ; preds = %40, %36
  %45 = load i32*, i32** %4, align 8
  %46 = call %struct.TYPE_4__* @Py_TYPE(i32* %45)
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i32* (i32*)*, i32* (i32*)** %49, align 8
  %51 = load i32*, i32** %4, align 8
  %52 = call i32* %50(i32* %51)
  store i32* %52, i32** %6, align 8
  %53 = load i32*, i32** %6, align 8
  %54 = icmp eq i32* %53, null
  br i1 %54, label %55, label %57

55:                                               ; preds = %44
  %56 = load i32, i32* @NPY_NOSCALAR, align 4
  store i32 %56, i32* %3, align 4
  br label %142

57:                                               ; preds = %44
  %58 = load i32*, i32** %4, align 8
  %59 = call double @PyFloat_AsDouble(i32* %58)
  %60 = load double*, double** %5, align 8
  store double %59, double* %60, align 8
  %61 = load i32*, i32** %6, align 8
  %62 = call i32 @Py_DECREF(i32* %61)
  %63 = load i32*, i32** %4, align 8
  %64 = call i64 @PyArray_ISINTEGER(i32* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %57
  %67 = load i32, i32* @NPY_INTPOS_SCALAR, align 4
  store i32 %67, i32* %3, align 4
  br label %142

68:                                               ; preds = %57
  %69 = load i32, i32* @NPY_FLOAT_SCALAR, align 4
  store i32 %69, i32* %3, align 4
  br label %142

70:                                               ; preds = %40, %32
  br label %140

71:                                               ; preds = %28
  %72 = load i32*, i32** %4, align 8
  %73 = load i32, i32* @Integer, align 4
  %74 = call i64 @PyArray_IsScalar(i32* %72, i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %81, label %76

76:                                               ; preds = %71
  %77 = load i32*, i32** %4, align 8
  %78 = load i32, i32* @Floating, align 4
  %79 = call i64 @PyArray_IsScalar(i32* %77, i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %108

81:                                               ; preds = %76, %71
  %82 = load i32*, i32** %4, align 8
  %83 = call %struct.TYPE_4__* @Py_TYPE(i32* %82)
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 0
  %87 = load i32* (i32*)*, i32* (i32*)** %86, align 8
  %88 = load i32*, i32** %4, align 8
  %89 = call i32* %87(i32* %88)
  store i32* %89, i32** %6, align 8
  %90 = load i32*, i32** %6, align 8
  %91 = icmp eq i32* %90, null
  br i1 %91, label %92, label %94

92:                                               ; preds = %81
  %93 = load i32, i32* @NPY_NOSCALAR, align 4
  store i32 %93, i32* %3, align 4
  br label %142

94:                                               ; preds = %81
  %95 = load i32*, i32** %4, align 8
  %96 = call double @PyFloat_AsDouble(i32* %95)
  %97 = load double*, double** %5, align 8
  store double %96, double* %97, align 8
  %98 = load i32*, i32** %6, align 8
  %99 = call i32 @Py_DECREF(i32* %98)
  %100 = load i32*, i32** %4, align 8
  %101 = load i32, i32* @Integer, align 4
  %102 = call i64 @PyArray_IsScalar(i32* %100, i32 %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %94
  %105 = load i32, i32* @NPY_INTPOS_SCALAR, align 4
  store i32 %105, i32* %3, align 4
  br label %142

106:                                              ; preds = %94
  %107 = load i32, i32* @NPY_FLOAT_SCALAR, align 4
  store i32 %107, i32* %3, align 4
  br label %142

108:                                              ; preds = %76
  %109 = load i32*, i32** %4, align 8
  %110 = call i64 @PyIndex_Check(i32* %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %138

112:                                              ; preds = %108
  %113 = load i32*, i32** %4, align 8
  %114 = call i32* @PyNumber_Index(i32* %113)
  store i32* %114, i32** %8, align 8
  %115 = load i32*, i32** %8, align 8
  %116 = icmp eq i32* %115, null
  br i1 %116, label %117, label %124

117:                                              ; preds = %112
  %118 = call i64 (...) @PyErr_Occurred()
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %117
  %121 = call i32 (...) @PyErr_Clear()
  br label %122

122:                                              ; preds = %120, %117
  %123 = load i32, i32* @NPY_NOSCALAR, align 4
  store i32 %123, i32* %3, align 4
  br label %142

124:                                              ; preds = %112
  %125 = load i32*, i32** %8, align 8
  %126 = call i64 @PyInt_AsSsize_t(i32* %125)
  store i64 %126, i64* %9, align 8
  %127 = load i64, i64* %9, align 8
  %128 = call i64 @error_converting(i64 %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %133

130:                                              ; preds = %124
  %131 = call i32 (...) @PyErr_Clear()
  %132 = load i32, i32* @NPY_NOSCALAR, align 4
  store i32 %132, i32* %3, align 4
  br label %142

133:                                              ; preds = %124
  %134 = load i64, i64* %9, align 8
  %135 = sitofp i64 %134 to double
  %136 = load double*, double** %5, align 8
  store double %135, double* %136, align 8
  %137 = load i32, i32* @NPY_INTPOS_SCALAR, align 4
  store i32 %137, i32* %3, align 4
  br label %142

138:                                              ; preds = %108
  br label %139

139:                                              ; preds = %138
  br label %140

140:                                              ; preds = %139, %70
  %141 = load i32, i32* @NPY_NOSCALAR, align 4
  store i32 %141, i32* %3, align 4
  br label %142

142:                                              ; preds = %140, %133, %130, %122, %106, %104, %92, %68, %66, %55, %23, %13
  %143 = load i32, i32* %3, align 4
  ret i32 %143
}

declare dso_local i64 @PyInt_Check(i32*) #1

declare dso_local i64 @PyInt_AsLong(i32*) #1

declare dso_local i64 @PyFloat_Check(i32*) #1

declare dso_local double @PyFloat_AsDouble(i32*) #1

declare dso_local i64 @PyArray_Check(i32*) #1

declare dso_local i64 @PyArray_NDIM(i32*) #1

declare dso_local i64 @PyArray_ISINTEGER(i32*) #1

declare dso_local i64 @PyArray_ISFLOAT(i32*) #1

declare dso_local %struct.TYPE_4__* @Py_TYPE(i32*) #1

declare dso_local i32 @Py_DECREF(i32*) #1

declare dso_local i64 @PyArray_IsScalar(i32*, i32) #1

declare dso_local i64 @PyIndex_Check(i32*) #1

declare dso_local i32* @PyNumber_Index(i32*) #1

declare dso_local i64 @PyErr_Occurred(...) #1

declare dso_local i32 @PyErr_Clear(...) #1

declare dso_local i64 @PyInt_AsSsize_t(i32*) #1

declare dso_local i64 @error_converting(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
