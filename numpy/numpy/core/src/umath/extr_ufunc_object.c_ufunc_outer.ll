; ModuleID = '/home/carl/AnghaBench/numpy/numpy/core/src/umath/extr_ufunc_object.c_ufunc_outer.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/core/src/umath/extr_ufunc_object.c_ufunc_outer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i64 }

@ufunc_outer._numpy_matrix = internal global i32* null, align 8
@.str = private unnamed_addr constant [6 x i8] c"outer\00", align 1
@PyExc_TypeError = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [64 x i8] c"method outer is not allowed in ufunc with non-trivial signature\00", align 1
@PyExc_ValueError = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [50 x i8] c"outer product only supported for binary functions\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"exactly two arguments expected\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"numpy\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"matrix\00", align 1
@NPY_NOTYPE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [5 x i8] c"(OO)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_5__*, i32*, i32*)* @ufunc_outer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @ufunc_outer(%struct.TYPE_5__* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* null, i32** %10, align 8
  store i32* null, i32** %12, align 8
  store i32* null, i32** %13, align 8
  store i32* null, i32** %14, align 8
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %21 = load i32*, i32** %6, align 8
  %22 = load i32*, i32** %7, align 8
  %23 = call i32 @PyUFunc_CheckOverride(%struct.TYPE_5__* %20, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32* %21, i32* %22, i32** %10)
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %9, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %3
  store i32* null, i32** %4, align 8
  br label %207

27:                                               ; preds = %3
  %28 = load i32*, i32** %10, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %32

30:                                               ; preds = %27
  %31 = load i32*, i32** %10, align 8
  store i32* %31, i32** %4, align 8
  br label %207

32:                                               ; preds = %27
  br label %33

33:                                               ; preds = %32
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = load i32, i32* @PyExc_TypeError, align 4
  %40 = call i32 @PyErr_Format(i32 %39, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.1, i64 0, i64 0))
  store i32* null, i32** %4, align 8
  br label %207

41:                                               ; preds = %33
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp ne i32 %44, 2
  br i1 %45, label %46, label %49

46:                                               ; preds = %41
  %47 = load i32, i32* @PyExc_ValueError, align 4
  %48 = call i32 @PyErr_SetString(i32 %47, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0))
  store i32* null, i32** %4, align 8
  br label %207

49:                                               ; preds = %41
  %50 = load i32*, i32** %6, align 8
  %51 = call i32 @PySequence_Length(i32* %50)
  %52 = icmp ne i32 %51, 2
  br i1 %52, label %53, label %56

53:                                               ; preds = %49
  %54 = load i32, i32* @PyExc_TypeError, align 4
  %55 = call i32 @PyErr_SetString(i32 %54, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  store i32* null, i32** %4, align 8
  br label %207

56:                                               ; preds = %49
  %57 = load i32*, i32** %6, align 8
  %58 = call i32* @PySequence_GetItem(i32* %57, i32 0)
  store i32* %58, i32** %16, align 8
  %59 = load i32*, i32** %16, align 8
  %60 = icmp eq i32* %59, null
  br i1 %60, label %61, label %62

61:                                               ; preds = %56
  store i32* null, i32** %4, align 8
  br label %207

62:                                               ; preds = %56
  %63 = call i32 @npy_cache_import(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i32** @ufunc_outer._numpy_matrix)
  %64 = load i32*, i32** %16, align 8
  %65 = load i32*, i32** @ufunc_outer._numpy_matrix, align 8
  %66 = call i64 @PyObject_IsInstance(i32* %64, i32* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %62
  %69 = load i32*, i32** %16, align 8
  %70 = load i32, i32* @NPY_NOTYPE, align 4
  %71 = call i64 @PyArray_FromObject(i32* %69, i32 %70, i32 0, i32 0)
  %72 = inttoptr i64 %71 to i32*
  store i32* %72, i32** %12, align 8
  br label %77

73:                                               ; preds = %62
  %74 = load i32*, i32** %16, align 8
  %75 = call i64 @PyArray_FROM_O(i32* %74)
  %76 = inttoptr i64 %75 to i32*
  store i32* %76, i32** %12, align 8
  br label %77

77:                                               ; preds = %73, %68
  %78 = load i32*, i32** %16, align 8
  %79 = call i32 @Py_DECREF(i32* %78)
  %80 = load i32*, i32** %12, align 8
  %81 = icmp eq i32* %80, null
  br i1 %81, label %82, label %83

82:                                               ; preds = %77
  store i32* null, i32** %4, align 8
  br label %207

83:                                               ; preds = %77
  %84 = load i32*, i32** %6, align 8
  %85 = call i32* @PySequence_GetItem(i32* %84, i32 1)
  store i32* %85, i32** %16, align 8
  %86 = load i32*, i32** %16, align 8
  %87 = icmp eq i32* %86, null
  br i1 %87, label %88, label %89

88:                                               ; preds = %83
  store i32* null, i32** %4, align 8
  br label %207

89:                                               ; preds = %83
  %90 = load i32*, i32** %16, align 8
  %91 = load i32*, i32** @ufunc_outer._numpy_matrix, align 8
  %92 = call i64 @PyObject_IsInstance(i32* %90, i32* %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %99

94:                                               ; preds = %89
  %95 = load i32*, i32** %16, align 8
  %96 = load i32, i32* @NPY_NOTYPE, align 4
  %97 = call i64 @PyArray_FromObject(i32* %95, i32 %96, i32 0, i32 0)
  %98 = inttoptr i64 %97 to i32*
  store i32* %98, i32** %13, align 8
  br label %103

99:                                               ; preds = %89
  %100 = load i32*, i32** %16, align 8
  %101 = call i64 @PyArray_FROM_O(i32* %100)
  %102 = inttoptr i64 %101 to i32*
  store i32* %102, i32** %13, align 8
  br label %103

103:                                              ; preds = %99, %94
  %104 = load i32*, i32** %16, align 8
  %105 = call i32 @Py_DECREF(i32* %104)
  %106 = load i32*, i32** %13, align 8
  %107 = icmp eq i32* %106, null
  br i1 %107, label %108, label %111

108:                                              ; preds = %103
  %109 = load i32*, i32** %12, align 8
  %110 = call i32 @Py_DECREF(i32* %109)
  store i32* null, i32** %4, align 8
  br label %207

111:                                              ; preds = %103
  %112 = load i32*, i32** %12, align 8
  %113 = call i32 @PyArray_NDIM(i32* %112)
  %114 = call i32* @PyTuple_New(i32 %113)
  store i32* %114, i32** %17, align 8
  %115 = load i32*, i32** %17, align 8
  %116 = icmp eq i32* %115, null
  br i1 %116, label %117, label %118

117:                                              ; preds = %111
  br label %200

118:                                              ; preds = %111
  store i32 0, i32* %8, align 4
  br label %119

119:                                              ; preds = %136, %118
  %120 = load i32, i32* %8, align 4
  %121 = load i32*, i32** %12, align 8
  %122 = call i32 @PyArray_NDIM(i32* %121)
  %123 = icmp slt i32 %120, %122
  br i1 %123, label %124, label %139

124:                                              ; preds = %119
  %125 = load i32*, i32** %17, align 8
  %126 = load i32, i32* %8, align 4
  %127 = load i32*, i32** %12, align 8
  %128 = call i64* @PyArray_DIMS(i32* %127)
  %129 = load i32, i32* %8, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i64, i64* %128, i64 %130
  %132 = load i64, i64* %131, align 8
  %133 = trunc i64 %132 to i32
  %134 = call i32 @PyLong_FromLongLong(i32 %133)
  %135 = call i32 @PyTuple_SET_ITEM(i32* %125, i32 %126, i32 %134)
  br label %136

136:                                              ; preds = %124
  %137 = load i32, i32* %8, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %8, align 4
  br label %119

139:                                              ; preds = %119
  %140 = load i32*, i32** %13, align 8
  %141 = call i32 @PyArray_NDIM(i32* %140)
  %142 = call i32* @PyTuple_New(i32 %141)
  store i32* %142, i32** %18, align 8
  store i32 0, i32* %8, align 4
  br label %143

143:                                              ; preds = %153, %139
  %144 = load i32, i32* %8, align 4
  %145 = load i32*, i32** %13, align 8
  %146 = call i32 @PyArray_NDIM(i32* %145)
  %147 = icmp slt i32 %144, %146
  br i1 %147, label %148, label %156

148:                                              ; preds = %143
  %149 = load i32*, i32** %18, align 8
  %150 = load i32, i32* %8, align 4
  %151 = call i32 @PyInt_FromLong(i64 1)
  %152 = call i32 @PyTuple_SET_ITEM(i32* %149, i32 %150, i32 %151)
  br label %153

153:                                              ; preds = %148
  %154 = load i32, i32* %8, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %8, align 4
  br label %143

156:                                              ; preds = %143
  %157 = load i32*, i32** %18, align 8
  %158 = icmp eq i32* %157, null
  br i1 %158, label %159, label %162

159:                                              ; preds = %156
  %160 = load i32*, i32** %17, align 8
  %161 = call i32 @Py_DECREF(i32* %160)
  br label %200

162:                                              ; preds = %156
  %163 = load i32*, i32** %17, align 8
  %164 = load i32*, i32** %18, align 8
  %165 = call i32* @PyNumber_Add(i32* %163, i32* %164)
  store i32* %165, i32** %19, align 8
  %166 = load i32*, i32** %17, align 8
  %167 = call i32 @Py_DECREF(i32* %166)
  %168 = load i32*, i32** %18, align 8
  %169 = call i32 @Py_DECREF(i32* %168)
  %170 = load i32*, i32** %19, align 8
  %171 = icmp eq i32* %170, null
  br i1 %171, label %172, label %173

172:                                              ; preds = %162
  br label %200

173:                                              ; preds = %162
  %174 = load i32*, i32** %12, align 8
  %175 = load i32*, i32** %19, align 8
  %176 = call i64 @PyArray_Reshape(i32* %174, i32* %175)
  %177 = inttoptr i64 %176 to i32*
  store i32* %177, i32** %14, align 8
  %178 = load i32*, i32** %19, align 8
  %179 = call i32 @Py_DECREF(i32* %178)
  %180 = load i32*, i32** %14, align 8
  %181 = icmp eq i32* %180, null
  br i1 %181, label %182, label %183

182:                                              ; preds = %173
  br label %200

183:                                              ; preds = %173
  %184 = load i32*, i32** %14, align 8
  %185 = load i32*, i32** %13, align 8
  %186 = call i32* @Py_BuildValue(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i32* %184, i32* %185)
  store i32* %186, i32** %15, align 8
  %187 = load i32*, i32** %12, align 8
  %188 = call i32 @Py_DECREF(i32* %187)
  %189 = load i32*, i32** %13, align 8
  %190 = call i32 @Py_DECREF(i32* %189)
  %191 = load i32*, i32** %14, align 8
  %192 = call i32 @Py_DECREF(i32* %191)
  %193 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %194 = load i32*, i32** %15, align 8
  %195 = load i32*, i32** %7, align 8
  %196 = call i32* @ufunc_generic_call(%struct.TYPE_5__* %193, i32* %194, i32* %195)
  store i32* %196, i32** %11, align 8
  %197 = load i32*, i32** %15, align 8
  %198 = call i32 @Py_DECREF(i32* %197)
  %199 = load i32*, i32** %11, align 8
  store i32* %199, i32** %4, align 8
  br label %207

200:                                              ; preds = %182, %172, %159, %117
  %201 = load i32*, i32** %12, align 8
  %202 = call i32 @Py_XDECREF(i32* %201)
  %203 = load i32*, i32** %13, align 8
  %204 = call i32 @Py_XDECREF(i32* %203)
  %205 = load i32*, i32** %14, align 8
  %206 = call i32 @Py_XDECREF(i32* %205)
  store i32* null, i32** %4, align 8
  br label %207

207:                                              ; preds = %200, %183, %108, %88, %82, %61, %53, %46, %38, %30, %26
  %208 = load i32*, i32** %4, align 8
  ret i32* %208
}

declare dso_local i32 @PyUFunc_CheckOverride(%struct.TYPE_5__*, i8*, i32*, i32*, i32**) #1

declare dso_local i32 @PyErr_Format(i32, i8*) #1

declare dso_local i32 @PyErr_SetString(i32, i8*) #1

declare dso_local i32 @PySequence_Length(i32*) #1

declare dso_local i32* @PySequence_GetItem(i32*, i32) #1

declare dso_local i32 @npy_cache_import(i8*, i8*, i32**) #1

declare dso_local i64 @PyObject_IsInstance(i32*, i32*) #1

declare dso_local i64 @PyArray_FromObject(i32*, i32, i32, i32) #1

declare dso_local i64 @PyArray_FROM_O(i32*) #1

declare dso_local i32 @Py_DECREF(i32*) #1

declare dso_local i32* @PyTuple_New(i32) #1

declare dso_local i32 @PyArray_NDIM(i32*) #1

declare dso_local i32 @PyTuple_SET_ITEM(i32*, i32, i32) #1

declare dso_local i32 @PyLong_FromLongLong(i32) #1

declare dso_local i64* @PyArray_DIMS(i32*) #1

declare dso_local i32 @PyInt_FromLong(i64) #1

declare dso_local i32* @PyNumber_Add(i32*, i32*) #1

declare dso_local i64 @PyArray_Reshape(i32*, i32*) #1

declare dso_local i32* @Py_BuildValue(i8*, i32*, i32*) #1

declare dso_local i32* @ufunc_generic_call(%struct.TYPE_5__*, i32*, i32*) #1

declare dso_local i32 @Py_XDECREF(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
