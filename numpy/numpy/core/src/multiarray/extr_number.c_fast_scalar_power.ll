; ModuleID = '/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_number.c_fast_scalar_power.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_number.c_fast_scalar_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32*, i32*, i32*, i32*, i32* }

@n_ops = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@NPY_FLOAT_SCALAR = common dso_local global i64 0, align 8
@NPY_DOUBLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32, i32**)* @fast_scalar_power to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fast_scalar_power(i32* %0, i32* %1, i32 %2, i32** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32**, align 8
  %10 = alloca double, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32** %3, i32*** %9, align 8
  %14 = load i32*, i32** %6, align 8
  %15 = call i64 @PyArray_Check(i32* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %129

17:                                               ; preds = %4
  %18 = load i32*, i32** %6, align 8
  %19 = call i32 @PyArray_ISOBJECT(i32* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %129, label %21

21:                                               ; preds = %17
  %22 = load i32*, i32** %7, align 8
  %23 = call i64 @is_scalar_with_conversion(i32* %22, double* %10)
  store i64 %23, i64* %11, align 8
  %24 = icmp sgt i64 %23, 0
  br i1 %24, label %25, label %129

25:                                               ; preds = %21
  store i32* null, i32** %12, align 8
  %26 = load i32*, i32** %6, align 8
  %27 = call i64 @PyArray_ISFLOAT(i32* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %25
  %30 = load i32*, i32** %6, align 8
  %31 = call i64 @PyArray_ISCOMPLEX(i32* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %81

33:                                               ; preds = %29, %25
  %34 = load double, double* %10, align 8
  %35 = fcmp oeq double %34, 1.000000e+00
  br i1 %35, label %36, label %38

36:                                               ; preds = %33
  %37 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @n_ops, i32 0, i32 4), align 8
  store i32* %37, i32** %12, align 8
  br label %63

38:                                               ; preds = %33
  %39 = load double, double* %10, align 8
  %40 = fcmp oeq double %39, -1.000000e+00
  br i1 %40, label %41, label %43

41:                                               ; preds = %38
  %42 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @n_ops, i32 0, i32 3), align 8
  store i32* %42, i32** %12, align 8
  br label %62

43:                                               ; preds = %38
  %44 = load double, double* %10, align 8
  %45 = fcmp oeq double %44, 0.000000e+00
  br i1 %45, label %46, label %48

46:                                               ; preds = %43
  %47 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @n_ops, i32 0, i32 2), align 8
  store i32* %47, i32** %12, align 8
  br label %61

48:                                               ; preds = %43
  %49 = load double, double* %10, align 8
  %50 = fcmp oeq double %49, 5.000000e-01
  br i1 %50, label %51, label %53

51:                                               ; preds = %48
  %52 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @n_ops, i32 0, i32 1), align 8
  store i32* %52, i32** %12, align 8
  br label %60

53:                                               ; preds = %48
  %54 = load double, double* %10, align 8
  %55 = fcmp oeq double %54, 2.000000e+00
  br i1 %55, label %56, label %58

56:                                               ; preds = %53
  %57 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @n_ops, i32 0, i32 0), align 8
  store i32* %57, i32** %12, align 8
  br label %59

58:                                               ; preds = %53
  store i32 -1, i32* %5, align 4
  br label %130

59:                                               ; preds = %56
  br label %60

60:                                               ; preds = %59, %51
  br label %61

61:                                               ; preds = %60, %46
  br label %62

62:                                               ; preds = %61, %41
  br label %63

63:                                               ; preds = %62, %36
  %64 = load i32, i32* %8, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %70, label %66

66:                                               ; preds = %63
  %67 = load i32*, i32** %6, align 8
  %68 = call i64 @can_elide_temp_unary(i32* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %66, %63
  %71 = load i32*, i32** %6, align 8
  %72 = load i32*, i32** %12, align 8
  %73 = call i32* @PyArray_GenericInplaceUnaryFunction(i32* %71, i32* %72)
  %74 = load i32**, i32*** %9, align 8
  store i32* %73, i32** %74, align 8
  br label %80

75:                                               ; preds = %66
  %76 = load i32*, i32** %6, align 8
  %77 = load i32*, i32** %12, align 8
  %78 = call i32* @PyArray_GenericUnaryFunction(i32* %76, i32* %77)
  %79 = load i32**, i32*** %9, align 8
  store i32* %78, i32** %79, align 8
  br label %80

80:                                               ; preds = %75, %70
  store i32 0, i32* %5, align 4
  br label %130

81:                                               ; preds = %29
  %82 = load double, double* %10, align 8
  %83 = fcmp oeq double %82, 2.000000e+00
  br i1 %83, label %84, label %127

84:                                               ; preds = %81
  %85 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @n_ops, i32 0, i32 0), align 8
  store i32* %85, i32** %12, align 8
  %86 = load i32, i32* %8, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %84
  %89 = load i32*, i32** %6, align 8
  %90 = load i32*, i32** %12, align 8
  %91 = call i32* @PyArray_GenericInplaceUnaryFunction(i32* %89, i32* %90)
  %92 = load i32**, i32*** %9, align 8
  store i32* %91, i32** %92, align 8
  br label %126

93:                                               ; preds = %84
  %94 = load i64, i64* %11, align 8
  %95 = load i64, i64* @NPY_FLOAT_SCALAR, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %120

97:                                               ; preds = %93
  %98 = load i32*, i32** %6, align 8
  %99 = call i64 @PyArray_ISINTEGER(i32* %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %120

101:                                              ; preds = %97
  %102 = load i32, i32* @NPY_DOUBLE, align 4
  %103 = call i32* @PyArray_DescrFromType(i32 %102)
  store i32* %103, i32** %13, align 8
  %104 = load i32*, i32** %6, align 8
  %105 = load i32*, i32** %13, align 8
  %106 = load i32*, i32** %6, align 8
  %107 = call i32 @PyArray_ISFORTRAN(i32* %106)
  %108 = call i64 @PyArray_CastToType(i32* %104, i32* %105, i32 %107)
  %109 = inttoptr i64 %108 to i32*
  store i32* %109, i32** %6, align 8
  %110 = load i32*, i32** %6, align 8
  %111 = icmp ne i32* %110, null
  br i1 %111, label %112, label %119

112:                                              ; preds = %101
  %113 = load i32*, i32** %6, align 8
  %114 = load i32*, i32** %12, align 8
  %115 = call i32* @PyArray_GenericInplaceUnaryFunction(i32* %113, i32* %114)
  %116 = load i32**, i32*** %9, align 8
  store i32* %115, i32** %116, align 8
  %117 = load i32*, i32** %6, align 8
  %118 = call i32 @Py_DECREF(i32* %117)
  br label %119

119:                                              ; preds = %112, %101
  br label %125

120:                                              ; preds = %97, %93
  %121 = load i32*, i32** %6, align 8
  %122 = load i32*, i32** %12, align 8
  %123 = call i32* @PyArray_GenericUnaryFunction(i32* %121, i32* %122)
  %124 = load i32**, i32*** %9, align 8
  store i32* %123, i32** %124, align 8
  br label %125

125:                                              ; preds = %120, %119
  br label %126

126:                                              ; preds = %125, %88
  store i32 0, i32* %5, align 4
  br label %130

127:                                              ; preds = %81
  br label %128

128:                                              ; preds = %127
  br label %129

129:                                              ; preds = %128, %21, %17, %4
  store i32 -1, i32* %5, align 4
  br label %130

130:                                              ; preds = %129, %126, %80, %58
  %131 = load i32, i32* %5, align 4
  ret i32 %131
}

declare dso_local i64 @PyArray_Check(i32*) #1

declare dso_local i32 @PyArray_ISOBJECT(i32*) #1

declare dso_local i64 @is_scalar_with_conversion(i32*, double*) #1

declare dso_local i64 @PyArray_ISFLOAT(i32*) #1

declare dso_local i64 @PyArray_ISCOMPLEX(i32*) #1

declare dso_local i64 @can_elide_temp_unary(i32*) #1

declare dso_local i32* @PyArray_GenericInplaceUnaryFunction(i32*, i32*) #1

declare dso_local i32* @PyArray_GenericUnaryFunction(i32*, i32*) #1

declare dso_local i64 @PyArray_ISINTEGER(i32*) #1

declare dso_local i32* @PyArray_DescrFromType(i32) #1

declare dso_local i64 @PyArray_CastToType(i32*, i32*, i32) #1

declare dso_local i32 @PyArray_ISFORTRAN(i32*) #1

declare dso_local i32 @Py_DECREF(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
