; ModuleID = '/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_ctors.c__calc_length.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_ctors.c__calc_length.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PyExc_TypeError = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"arange: scalar arguments expected instead of a tuple.\00", align 1
@Py_NE = common dso_local global i32 0, align 4
@Py_EQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*, i32**, i32)* @_calc_length to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_calc_length(i32* %0, i32* %1, i32* %2, i32** %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32**, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca double, align 8
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32** %3, i32*** %10, align 8
  store i32 %4, i32* %11, align 4
  %19 = load i32*, i32** %8, align 8
  %20 = load i32*, i32** %7, align 8
  %21 = call i32* @PyNumber_Subtract(i32* %19, i32* %20)
  %22 = load i32**, i32*** %10, align 8
  store i32* %21, i32** %22, align 8
  %23 = load i32**, i32*** %10, align 8
  %24 = load i32*, i32** %23, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %35, label %26

26:                                               ; preds = %5
  %27 = load i32*, i32** %8, align 8
  %28 = call i64 @PyTuple_Check(i32* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %26
  %31 = call i32 (...) @PyErr_Clear()
  %32 = load i32, i32* @PyExc_TypeError, align 4
  %33 = call i32 @PyErr_SetString(i32 %32, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0))
  br label %34

34:                                               ; preds = %30, %26
  store i32 -1, i32* %6, align 4
  br label %179

35:                                               ; preds = %5
  %36 = call i32* @PyInt_FromLong(i32 0)
  store i32* %36, i32** %14, align 8
  %37 = load i32*, i32** %14, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %44, label %39

39:                                               ; preds = %35
  %40 = load i32**, i32*** %10, align 8
  %41 = load i32*, i32** %40, align 8
  %42 = call i32 @Py_DECREF(i32* %41)
  %43 = load i32**, i32*** %10, align 8
  store i32* null, i32** %43, align 8
  store i32 -1, i32* %6, align 4
  br label %179

44:                                               ; preds = %35
  %45 = load i32**, i32*** %10, align 8
  %46 = load i32*, i32** %45, align 8
  %47 = load i32*, i32** %14, align 8
  %48 = load i32, i32* @Py_NE, align 4
  %49 = call i32 @PyObject_RichCompareBool(i32* %46, i32* %47, i32 %48)
  store i32 %49, i32* %16, align 4
  %50 = load i32, i32* %16, align 4
  %51 = icmp eq i32 %50, -1
  br i1 %51, label %52, label %59

52:                                               ; preds = %44
  %53 = load i32*, i32** %14, align 8
  %54 = call i32 @Py_DECREF(i32* %53)
  %55 = load i32**, i32*** %10, align 8
  %56 = load i32*, i32** %55, align 8
  %57 = call i32 @Py_DECREF(i32* %56)
  %58 = load i32**, i32*** %10, align 8
  store i32* null, i32** %58, align 8
  store i32 -1, i32* %6, align 4
  br label %179

59:                                               ; preds = %44
  %60 = load i32**, i32*** %10, align 8
  %61 = load i32*, i32** %60, align 8
  %62 = load i32*, i32** %9, align 8
  %63 = call i32* @PyNumber_TrueDivide(i32* %61, i32* %62)
  store i32* %63, i32** %15, align 8
  %64 = load i32**, i32*** %10, align 8
  %65 = load i32*, i32** %64, align 8
  %66 = call i32 @Py_DECREF(i32* %65)
  %67 = load i32**, i32*** %10, align 8
  store i32* null, i32** %67, align 8
  %68 = load i32*, i32** %15, align 8
  %69 = icmp ne i32* %68, null
  br i1 %69, label %73, label %70

70:                                               ; preds = %59
  %71 = load i32*, i32** %14, align 8
  %72 = call i32 @Py_DECREF(i32* %71)
  store i32 -1, i32* %6, align 4
  br label %179

73:                                               ; preds = %59
  %74 = load i32*, i32** %15, align 8
  %75 = load i32*, i32** %14, align 8
  %76 = load i32, i32* @Py_EQ, align 4
  %77 = call i32 @PyObject_RichCompareBool(i32* %74, i32* %75, i32 %76)
  store i32 %77, i32* %17, align 4
  %78 = load i32*, i32** %14, align 8
  %79 = call i32 @Py_DECREF(i32* %78)
  %80 = load i32, i32* %17, align 4
  %81 = icmp eq i32 %80, -1
  br i1 %81, label %82, label %85

82:                                               ; preds = %73
  %83 = load i32*, i32** %15, align 8
  %84 = call i32 @Py_DECREF(i32* %83)
  store i32 -1, i32* %6, align 4
  br label %179

85:                                               ; preds = %73
  %86 = load i32, i32* %11, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %132

88:                                               ; preds = %85
  %89 = load i32*, i32** %15, align 8
  %90 = call i64 @PyComplex_Check(i32* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %132

92:                                               ; preds = %88
  %93 = load i32*, i32** %15, align 8
  %94 = call double @PyComplex_RealAsDouble(i32* %93)
  store double %94, double* %18, align 8
  %95 = load double, double* %18, align 8
  %96 = fptosi double %95 to i32
  %97 = call i64 @error_converting(i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %92
  %100 = load i32*, i32** %15, align 8
  %101 = call i32 @Py_DECREF(i32* %100)
  store i32 -1, i32* %6, align 4
  br label %179

102:                                              ; preds = %92
  %103 = load double, double* %18, align 8
  %104 = call i32 @_arange_safe_ceil_to_intp(double %103)
  store i32 %104, i32* %12, align 4
  %105 = load i32, i32* %12, align 4
  %106 = call i64 @error_converting(i32 %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %102
  %109 = load i32*, i32** %15, align 8
  %110 = call i32 @Py_DECREF(i32* %109)
  store i32 -1, i32* %6, align 4
  br label %179

111:                                              ; preds = %102
  %112 = load i32*, i32** %15, align 8
  %113 = call double @PyComplex_ImagAsDouble(i32* %112)
  store double %113, double* %18, align 8
  %114 = load i32*, i32** %15, align 8
  %115 = call i32 @Py_DECREF(i32* %114)
  %116 = load double, double* %18, align 8
  %117 = fptosi double %116 to i32
  %118 = call i64 @error_converting(i32 %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %111
  store i32 -1, i32* %6, align 4
  br label %179

121:                                              ; preds = %111
  %122 = load double, double* %18, align 8
  %123 = call i32 @_arange_safe_ceil_to_intp(double %122)
  store i32 %123, i32* %13, align 4
  %124 = load i32, i32* %13, align 4
  %125 = call i64 @error_converting(i32 %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %121
  store i32 -1, i32* %6, align 4
  br label %179

128:                                              ; preds = %121
  %129 = load i32, i32* %12, align 4
  %130 = load i32, i32* %13, align 4
  %131 = call i32 @PyArray_MIN(i32 %129, i32 %130)
  store i32 %131, i32* %12, align 4
  br label %164

132:                                              ; preds = %88, %85
  %133 = load i32*, i32** %15, align 8
  %134 = call double @PyFloat_AsDouble(i32* %133)
  store double %134, double* %18, align 8
  %135 = load i32*, i32** %15, align 8
  %136 = call i32 @Py_DECREF(i32* %135)
  %137 = load double, double* %18, align 8
  %138 = fptosi double %137 to i32
  %139 = call i64 @error_converting(i32 %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %132
  store i32 -1, i32* %6, align 4
  br label %179

142:                                              ; preds = %132
  %143 = load i32, i32* %17, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %155

145:                                              ; preds = %142
  %146 = load i32, i32* %16, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %155

148:                                              ; preds = %145
  %149 = load double, double* %18, align 8
  %150 = call i64 @npy_signbit(double %149)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %153

152:                                              ; preds = %148
  store i32 0, i32* %12, align 4
  br label %154

153:                                              ; preds = %148
  store i32 1, i32* %12, align 4
  br label %154

154:                                              ; preds = %153, %152
  br label %163

155:                                              ; preds = %145, %142
  %156 = load double, double* %18, align 8
  %157 = call i32 @_arange_safe_ceil_to_intp(double %156)
  store i32 %157, i32* %12, align 4
  %158 = load i32, i32* %12, align 4
  %159 = call i64 @error_converting(i32 %158)
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %162

161:                                              ; preds = %155
  store i32 -1, i32* %6, align 4
  br label %179

162:                                              ; preds = %155
  br label %163

163:                                              ; preds = %162, %154
  br label %164

164:                                              ; preds = %163, %128
  %165 = load i32, i32* %12, align 4
  %166 = icmp sgt i32 %165, 0
  br i1 %166, label %167, label %177

167:                                              ; preds = %164
  %168 = load i32*, i32** %7, align 8
  %169 = load i32*, i32** %9, align 8
  %170 = call i32* @PyNumber_Add(i32* %168, i32* %169)
  %171 = load i32**, i32*** %10, align 8
  store i32* %170, i32** %171, align 8
  %172 = load i32**, i32*** %10, align 8
  %173 = load i32*, i32** %172, align 8
  %174 = icmp ne i32* %173, null
  br i1 %174, label %176, label %175

175:                                              ; preds = %167
  store i32 -1, i32* %6, align 4
  br label %179

176:                                              ; preds = %167
  br label %177

177:                                              ; preds = %176, %164
  %178 = load i32, i32* %12, align 4
  store i32 %178, i32* %6, align 4
  br label %179

179:                                              ; preds = %177, %175, %161, %141, %127, %120, %108, %99, %82, %70, %52, %39, %34
  %180 = load i32, i32* %6, align 4
  ret i32 %180
}

declare dso_local i32* @PyNumber_Subtract(i32*, i32*) #1

declare dso_local i64 @PyTuple_Check(i32*) #1

declare dso_local i32 @PyErr_Clear(...) #1

declare dso_local i32 @PyErr_SetString(i32, i8*) #1

declare dso_local i32* @PyInt_FromLong(i32) #1

declare dso_local i32 @Py_DECREF(i32*) #1

declare dso_local i32 @PyObject_RichCompareBool(i32*, i32*, i32) #1

declare dso_local i32* @PyNumber_TrueDivide(i32*, i32*) #1

declare dso_local i64 @PyComplex_Check(i32*) #1

declare dso_local double @PyComplex_RealAsDouble(i32*) #1

declare dso_local i64 @error_converting(i32) #1

declare dso_local i32 @_arange_safe_ceil_to_intp(double) #1

declare dso_local double @PyComplex_ImagAsDouble(i32*) #1

declare dso_local i32 @PyArray_MIN(i32, i32) #1

declare dso_local double @PyFloat_AsDouble(i32*) #1

declare dso_local i64 @npy_signbit(double) #1

declare dso_local i32* @PyNumber_Add(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
