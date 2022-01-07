; ModuleID = '/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_multiarraymodule.c_array_shares_memory_impl.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_multiarraymodule.c_array_shares_memory_impl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@array_shares_memory_impl.kwlist = internal global [4 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i8* null], align 16
@.str = private unnamed_addr constant [5 x i8] c"self\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"other\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"max_work\00", align 1
@array_shares_memory_impl.too_hard_cls = internal global i32* null, align 8
@NPY_BEGIN_THREADS_DEF = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"OO|O:shares_memory_impl\00", align 1
@Py_None = common dso_local global i32* null, align 8
@PyExc_ValueError = common dso_local global i32* null, align 8
@.str.4 = private unnamed_addr constant [28 x i8] c"max_work must be an integer\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"Invalid value for max_work\00", align 1
@NPY_BEGIN_THREADS = common dso_local global i32 0, align 4
@NPY_END_THREADS = common dso_local global i32 0, align 4
@MEM_OVERLAP_NO = common dso_local global i64 0, align 8
@Py_RETURN_FALSE = common dso_local global i32 0, align 4
@MEM_OVERLAP_YES = common dso_local global i64 0, align 8
@Py_RETURN_TRUE = common dso_local global i32 0, align 4
@MEM_OVERLAP_OVERFLOW = common dso_local global i64 0, align 8
@PyExc_OverflowError = common dso_local global i32* null, align 8
@.str.6 = private unnamed_addr constant [38 x i8] c"Integer overflow in computing overlap\00", align 1
@MEM_OVERLAP_TOO_HARD = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [23 x i8] c"numpy.core._exceptions\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"TooHardError\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"Exceeded max_work\00", align 1
@PyExc_RuntimeError = common dso_local global i32* null, align 8
@.str.10 = private unnamed_addr constant [27 x i8] c"Error in computing overlap\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*, i32, i32)* @array_shares_memory_impl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @array_shares_memory_impl(i32* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32* null, i32** %10, align 8
  store i32* null, i32** %11, align 8
  store i32* null, i32** %12, align 8
  store i32* null, i32** %13, align 8
  store i32* null, i32** %14, align 8
  %17 = load i32, i32* @NPY_BEGIN_THREADS_DEF, align 4
  %18 = load i32, i32* %8, align 4
  store i32 %18, i32* %16, align 4
  %19 = load i32*, i32** %6, align 8
  %20 = load i32*, i32** %7, align 8
  %21 = call i32 @PyArg_ParseTupleAndKeywords(i32* %19, i32* %20, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @array_shares_memory_impl.kwlist, i64 0, i64 0), i32** %10, i32** %11, i32** %14)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %4
  store i32* null, i32** %5, align 8
  br label %158

24:                                               ; preds = %4
  %25 = load i32*, i32** %10, align 8
  %26 = call i64 @PyArray_Check(i32* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %24
  %29 = load i32*, i32** %10, align 8
  store i32* %29, i32** %12, align 8
  %30 = load i32*, i32** %12, align 8
  %31 = call i32 @Py_INCREF(i32* %30)
  br label %40

32:                                               ; preds = %24
  %33 = load i32*, i32** %10, align 8
  %34 = call i64 @PyArray_FROM_O(i32* %33)
  %35 = inttoptr i64 %34 to i32*
  store i32* %35, i32** %12, align 8
  %36 = load i32*, i32** %12, align 8
  %37 = icmp eq i32* %36, null
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  br label %153

39:                                               ; preds = %32
  br label %40

40:                                               ; preds = %39, %28
  %41 = load i32*, i32** %11, align 8
  %42 = call i64 @PyArray_Check(i32* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %40
  %45 = load i32*, i32** %11, align 8
  store i32* %45, i32** %13, align 8
  %46 = load i32*, i32** %13, align 8
  %47 = call i32 @Py_INCREF(i32* %46)
  br label %56

48:                                               ; preds = %40
  %49 = load i32*, i32** %11, align 8
  %50 = call i64 @PyArray_FROM_O(i32* %49)
  %51 = inttoptr i64 %50 to i32*
  store i32* %51, i32** %13, align 8
  %52 = load i32*, i32** %13, align 8
  %53 = icmp eq i32* %52, null
  br i1 %53, label %54, label %55

54:                                               ; preds = %48
  br label %153

55:                                               ; preds = %48
  br label %56

56:                                               ; preds = %55, %44
  %57 = load i32*, i32** %14, align 8
  %58 = icmp eq i32* %57, null
  br i1 %58, label %63, label %59

59:                                               ; preds = %56
  %60 = load i32*, i32** %14, align 8
  %61 = load i32*, i32** @Py_None, align 8
  %62 = icmp eq i32* %60, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %59, %56
  br label %87

64:                                               ; preds = %59
  %65 = load i32*, i32** %14, align 8
  %66 = call i64 @PyLong_Check(i32* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %75

68:                                               ; preds = %64
  %69 = load i32*, i32** %14, align 8
  %70 = call i32 @PyLong_AsSsize_t(i32* %69)
  store i32 %70, i32* %16, align 4
  %71 = call i64 (...) @PyErr_Occurred()
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %68
  br label %153

74:                                               ; preds = %68
  br label %86

75:                                               ; preds = %64
  %76 = load i32*, i32** %14, align 8
  %77 = call i64 @PyInt_Check(i32* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %75
  %80 = load i32*, i32** %14, align 8
  %81 = call i32 @PyInt_AsSsize_t(i32* %80)
  store i32 %81, i32* %16, align 4
  br label %85

82:                                               ; preds = %75
  %83 = load i32*, i32** @PyExc_ValueError, align 8
  %84 = call i32 @PyErr_SetString(i32* %83, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  br label %153

85:                                               ; preds = %79
  br label %86

86:                                               ; preds = %85, %74
  br label %87

87:                                               ; preds = %86, %63
  %88 = load i32, i32* %16, align 4
  %89 = icmp slt i32 %88, -2
  br i1 %89, label %90, label %93

90:                                               ; preds = %87
  %91 = load i32*, i32** @PyExc_ValueError, align 8
  %92 = call i32 @PyErr_SetString(i32* %91, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  br label %153

93:                                               ; preds = %87
  %94 = load i32, i32* @NPY_BEGIN_THREADS, align 4
  %95 = load i32*, i32** %12, align 8
  %96 = load i32*, i32** %13, align 8
  %97 = load i32, i32* %16, align 4
  %98 = call i64 @solve_may_share_memory(i32* %95, i32* %96, i32 %97)
  store i64 %98, i64* %15, align 8
  %99 = load i32, i32* @NPY_END_THREADS, align 4
  %100 = load i32*, i32** %12, align 8
  %101 = call i32 @Py_XDECREF(i32* %100)
  %102 = load i32*, i32** %13, align 8
  %103 = call i32 @Py_XDECREF(i32* %102)
  %104 = load i64, i64* %15, align 8
  %105 = load i64, i64* @MEM_OVERLAP_NO, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %109

107:                                              ; preds = %93
  %108 = load i32, i32* @Py_RETURN_FALSE, align 4
  br label %152

109:                                              ; preds = %93
  %110 = load i64, i64* %15, align 8
  %111 = load i64, i64* @MEM_OVERLAP_YES, align 8
  %112 = icmp eq i64 %110, %111
  br i1 %112, label %113, label %115

113:                                              ; preds = %109
  %114 = load i32, i32* @Py_RETURN_TRUE, align 4
  br label %151

115:                                              ; preds = %109
  %116 = load i64, i64* %15, align 8
  %117 = load i64, i64* @MEM_OVERLAP_OVERFLOW, align 8
  %118 = icmp eq i64 %116, %117
  br i1 %118, label %119, label %128

119:                                              ; preds = %115
  %120 = load i32, i32* %9, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %119
  %123 = load i32*, i32** @PyExc_OverflowError, align 8
  %124 = call i32 @PyErr_SetString(i32* %123, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0))
  store i32* null, i32** %5, align 8
  br label %158

125:                                              ; preds = %119
  %126 = load i32, i32* @Py_RETURN_TRUE, align 4
  br label %127

127:                                              ; preds = %125
  br label %150

128:                                              ; preds = %115
  %129 = load i64, i64* %15, align 8
  %130 = load i64, i64* @MEM_OVERLAP_TOO_HARD, align 8
  %131 = icmp eq i64 %129, %130
  br i1 %131, label %132, label %146

132:                                              ; preds = %128
  %133 = load i32, i32* %9, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %143

135:                                              ; preds = %132
  %136 = call i32 @npy_cache_import(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0), i32** @array_shares_memory_impl.too_hard_cls)
  %137 = load i32*, i32** @array_shares_memory_impl.too_hard_cls, align 8
  %138 = icmp ne i32* %137, null
  br i1 %138, label %139, label %142

139:                                              ; preds = %135
  %140 = load i32*, i32** @array_shares_memory_impl.too_hard_cls, align 8
  %141 = call i32 @PyErr_SetString(i32* %140, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0))
  br label %142

142:                                              ; preds = %139, %135
  store i32* null, i32** %5, align 8
  br label %158

143:                                              ; preds = %132
  %144 = load i32, i32* @Py_RETURN_TRUE, align 4
  br label %145

145:                                              ; preds = %143
  br label %149

146:                                              ; preds = %128
  %147 = load i32*, i32** @PyExc_RuntimeError, align 8
  %148 = call i32 @PyErr_SetString(i32* %147, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.10, i64 0, i64 0))
  store i32* null, i32** %5, align 8
  br label %158

149:                                              ; preds = %145
  br label %150

150:                                              ; preds = %149, %127
  br label %151

151:                                              ; preds = %150, %113
  br label %152

152:                                              ; preds = %151, %107
  br label %153

153:                                              ; preds = %152, %90, %82, %73, %54, %38
  %154 = load i32*, i32** %12, align 8
  %155 = call i32 @Py_XDECREF(i32* %154)
  %156 = load i32*, i32** %13, align 8
  %157 = call i32 @Py_XDECREF(i32* %156)
  store i32* null, i32** %5, align 8
  br label %158

158:                                              ; preds = %153, %146, %142, %122, %23
  %159 = load i32*, i32** %5, align 8
  ret i32* %159
}

declare dso_local i32 @PyArg_ParseTupleAndKeywords(i32*, i32*, i8*, i8**, i32**, i32**, i32**) #1

declare dso_local i64 @PyArray_Check(i32*) #1

declare dso_local i32 @Py_INCREF(i32*) #1

declare dso_local i64 @PyArray_FROM_O(i32*) #1

declare dso_local i64 @PyLong_Check(i32*) #1

declare dso_local i32 @PyLong_AsSsize_t(i32*) #1

declare dso_local i64 @PyErr_Occurred(...) #1

declare dso_local i64 @PyInt_Check(i32*) #1

declare dso_local i32 @PyInt_AsSsize_t(i32*) #1

declare dso_local i32 @PyErr_SetString(i32*, i8*) #1

declare dso_local i64 @solve_may_share_memory(i32*, i32*, i32) #1

declare dso_local i32 @Py_XDECREF(i32*) #1

declare dso_local i32 @npy_cache_import(i8*, i8*, i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
