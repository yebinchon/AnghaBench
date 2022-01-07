; ModuleID = '/home/carl/AnghaBench/numpy/numpy/core/src/umath/extr_ufunc_object.c_PyUFunc_GenericReduction.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/core/src/umath/extr_ufunc_object.c_PyUFunc_GenericReduction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_68__ = type { i32, i64 }
%struct.TYPE_67__ = type { i32, i32, i32, i64 }

@NPY_MAXDIMS = common dso_local global i32 0, align 4
@PyUFunc_GenericReduction.reduce_kwlist = internal global [8 x i8*] [i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* null], align 16
@.str = private unnamed_addr constant [6 x i8] c"array\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"axis\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"dtype\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"out\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"keepdims\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"initial\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"where\00", align 1
@PyUFunc_GenericReduction.accumulate_kwlist = internal global [5 x i8*] [i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0), i8* null], align 16
@PyUFunc_GenericReduction.reduceat_kwlist = internal global [6 x i8*] [i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0), i8* null], align 16
@.str.7 = private unnamed_addr constant [8 x i8] c"indices\00", align 1
@PyUFunc_GenericReduction._reduce_type = internal global [4 x i8*] [i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i32 0, i32 0), i8* null], align 16
@.str.8 = private unnamed_addr constant [7 x i8] c"reduce\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"accumulate\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"reduceat\00", align 1
@PyExc_ValueError = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [23 x i8] c"function not supported\00", align 1
@PyExc_RuntimeError = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [46 x i8] c"Reduction not defined on ufunc with signature\00", align 1
@.str.13 = private unnamed_addr constant [39 x i8] c"%s only supported for binary functions\00", align 1
@.str.14 = private unnamed_addr constant [57 x i8] c"%s only supported for functions returning a single value\00", align 1
@npy_um_str_out = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [44 x i8] c"The 'out' tuple must have exactly one entry\00", align 1
@NPY_INTP = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [18 x i8] c"OO|OO&O&:reduceat\00", align 1
@PyArray_DescrConverter2 = common dso_local global i32 0, align 4
@PyArray_OutputConverter = common dso_local global i32 0, align 4
@NPY_ARRAY_CARRAY = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [19 x i8] c"O|OO&O&:accumulate\00", align 1
@.str.18 = private unnamed_addr constant [19 x i8] c"O|OO&O&iOO&:reduce\00", align 1
@_wheremask_converter = common dso_local global i32 0, align 4
@Generic = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [6 x i8] c"O(O)i\00", align 1
@PyExc_TypeError = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [37 x i8] c"cannot perform %s with flexible type\00", align 1
@Py_None = common dso_local global %struct.TYPE_68__* null, align 8
@.str.21 = private unnamed_addr constant [27 x i8] c"too many values for 'axis'\00", align 1
@.str.22 = private unnamed_addr constant [4 x i8] c"add\00", align 1
@.str.23 = private unnamed_addr constant [9 x i8] c"multiply\00", align 1
@NPY_LONG = common dso_local global i32 0, align 4
@NPY_ULONG = common dso_local global i32 0, align 4
@.str.24 = private unnamed_addr constant [30 x i8] c"cannot accumulate on a scalar\00", align 1
@.str.25 = private unnamed_addr constant [40 x i8] c"accumulate does not allow multiple axes\00", align 1
@.str.26 = private unnamed_addr constant [28 x i8] c"cannot reduceat on a scalar\00", align 1
@.str.27 = private unnamed_addr constant [38 x i8] c"reduceat does not allow multiple axes\00", align 1
@npy_um_str_array_wrap = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_68__* (%struct.TYPE_67__*, %struct.TYPE_68__*, %struct.TYPE_68__*, i32)* @PyUFunc_GenericReduction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_68__* @PyUFunc_GenericReduction(%struct.TYPE_67__* %0, %struct.TYPE_68__* %1, %struct.TYPE_68__* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_68__*, align 8
  %6 = alloca %struct.TYPE_67__*, align 8
  %7 = alloca %struct.TYPE_68__*, align 8
  %8 = alloca %struct.TYPE_68__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.TYPE_68__*, align 8
  %16 = alloca %struct.TYPE_68__*, align 8
  %17 = alloca %struct.TYPE_68__*, align 8
  %18 = alloca %struct.TYPE_68__*, align 8
  %19 = alloca %struct.TYPE_68__*, align 8
  %20 = alloca %struct.TYPE_68__*, align 8
  %21 = alloca %struct.TYPE_68__*, align 8
  %22 = alloca %struct.TYPE_68__*, align 8
  %23 = alloca %struct.TYPE_68__*, align 8
  %24 = alloca %struct.TYPE_68__*, align 8
  %25 = alloca i32, align 4
  %26 = alloca %struct.TYPE_68__*, align 8
  %27 = alloca i32, align 4
  %28 = alloca %struct.TYPE_68__*, align 8
  %29 = alloca %struct.TYPE_68__*, align 8
  %30 = alloca %struct.TYPE_68__*, align 8
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca %struct.TYPE_68__*, align 8
  store %struct.TYPE_67__* %0, %struct.TYPE_67__** %6, align 8
  store %struct.TYPE_68__* %1, %struct.TYPE_68__** %7, align 8
  store %struct.TYPE_68__* %2, %struct.TYPE_68__** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %11, align 4
  %35 = load i32, i32* @NPY_MAXDIMS, align 4
  %36 = zext i32 %35 to i64
  %37 = call i8* @llvm.stacksave()
  store i8* %37, i8** %13, align 8
  %38 = alloca i32, i64 %36, align 16
  store i64 %36, i64* %14, align 8
  store %struct.TYPE_68__* null, %struct.TYPE_68__** %15, align 8
  store %struct.TYPE_68__* null, %struct.TYPE_68__** %16, align 8
  store %struct.TYPE_68__* null, %struct.TYPE_68__** %17, align 8
  store %struct.TYPE_68__* null, %struct.TYPE_68__** %18, align 8
  store %struct.TYPE_68__* null, %struct.TYPE_68__** %22, align 8
  store %struct.TYPE_68__* null, %struct.TYPE_68__** %23, align 8
  store %struct.TYPE_68__* null, %struct.TYPE_68__** %24, align 8
  store i32 0, i32* %25, align 4
  store %struct.TYPE_68__* null, %struct.TYPE_68__** %26, align 8
  %39 = load %struct.TYPE_67__*, %struct.TYPE_67__** %6, align 8
  %40 = icmp eq %struct.TYPE_67__* %39, null
  br i1 %40, label %41, label %44

41:                                               ; preds = %4
  %42 = load i32, i32* @PyExc_ValueError, align 4
  %43 = call i32 @PyErr_SetString(i32 %42, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i64 0, i64 0))
  store %struct.TYPE_68__* null, %struct.TYPE_68__** %5, align 8
  store i32 1, i32* %27, align 4
  br label %487

44:                                               ; preds = %4
  %45 = load %struct.TYPE_67__*, %struct.TYPE_67__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_67__, %struct.TYPE_67__* %45, i32 0, i32 3
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %44
  %50 = load i32, i32* @PyExc_RuntimeError, align 4
  %51 = call i32 (i32, i8*, ...) @PyErr_Format(i32 %50, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.12, i64 0, i64 0))
  store %struct.TYPE_68__* null, %struct.TYPE_68__** %5, align 8
  store i32 1, i32* %27, align 4
  br label %487

52:                                               ; preds = %44
  %53 = load %struct.TYPE_67__*, %struct.TYPE_67__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_67__, %struct.TYPE_67__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = icmp ne i32 %55, 2
  br i1 %56, label %57, label %64

57:                                               ; preds = %52
  %58 = load i32, i32* @PyExc_ValueError, align 4
  %59 = load i32, i32* %9, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds [4 x i8*], [4 x i8*]* @PyUFunc_GenericReduction._reduce_type, i64 0, i64 %60
  %62 = load i8*, i8** %61, align 8
  %63 = call i32 (i32, i8*, ...) @PyErr_Format(i32 %58, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.13, i64 0, i64 0), i8* %62)
  store %struct.TYPE_68__* null, %struct.TYPE_68__** %5, align 8
  store i32 1, i32* %27, align 4
  br label %487

64:                                               ; preds = %52
  %65 = load %struct.TYPE_67__*, %struct.TYPE_67__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_67__, %struct.TYPE_67__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = icmp ne i32 %67, 1
  br i1 %68, label %69, label %76

69:                                               ; preds = %64
  %70 = load i32, i32* @PyExc_ValueError, align 4
  %71 = load i32, i32* %9, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds [4 x i8*], [4 x i8*]* @PyUFunc_GenericReduction._reduce_type, i64 0, i64 %72
  %74 = load i8*, i8** %73, align 8
  %75 = call i32 (i32, i8*, ...) @PyErr_Format(i32 %70, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.14, i64 0, i64 0), i8* %74)
  store %struct.TYPE_68__* null, %struct.TYPE_68__** %5, align 8
  store i32 1, i32* %27, align 4
  br label %487

76:                                               ; preds = %64
  %77 = load %struct.TYPE_68__*, %struct.TYPE_68__** %8, align 8
  %78 = icmp ne %struct.TYPE_68__* %77, null
  br i1 %78, label %79, label %104

79:                                               ; preds = %76
  %80 = load %struct.TYPE_68__*, %struct.TYPE_68__** %8, align 8
  %81 = load i32, i32* @npy_um_str_out, align 4
  %82 = call %struct.TYPE_68__* @PyDict_GetItem(%struct.TYPE_68__* %80, i32 %81)
  store %struct.TYPE_68__* %82, %struct.TYPE_68__** %28, align 8
  %83 = load %struct.TYPE_68__*, %struct.TYPE_68__** %28, align 8
  %84 = icmp ne %struct.TYPE_68__* %83, null
  br i1 %84, label %85, label %103

85:                                               ; preds = %79
  %86 = load %struct.TYPE_68__*, %struct.TYPE_68__** %28, align 8
  %87 = call i64 @PyTuple_CheckExact(%struct.TYPE_68__* %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %103

89:                                               ; preds = %85
  %90 = load %struct.TYPE_68__*, %struct.TYPE_68__** %28, align 8
  %91 = call i32 @PyTuple_GET_SIZE(%struct.TYPE_68__* %90)
  %92 = icmp ne i32 %91, 1
  br i1 %92, label %93, label %96

93:                                               ; preds = %89
  %94 = load i32, i32* @PyExc_ValueError, align 4
  %95 = call i32 @PyErr_SetString(i32 %94, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.15, i64 0, i64 0))
  store %struct.TYPE_68__* null, %struct.TYPE_68__** %5, align 8
  store i32 1, i32* %27, align 4
  br label %487

96:                                               ; preds = %89
  %97 = load %struct.TYPE_68__*, %struct.TYPE_68__** %28, align 8
  %98 = call %struct.TYPE_68__* @PyTuple_GET_ITEM(%struct.TYPE_68__* %97, i32 0)
  store %struct.TYPE_68__* %98, %struct.TYPE_68__** %28, align 8
  %99 = load %struct.TYPE_68__*, %struct.TYPE_68__** %8, align 8
  %100 = load i32, i32* @npy_um_str_out, align 4
  %101 = load %struct.TYPE_68__*, %struct.TYPE_68__** %28, align 8
  %102 = call i32 @PyDict_SetItem(%struct.TYPE_68__* %99, i32 %100, %struct.TYPE_68__* %101)
  br label %103

103:                                              ; preds = %96, %85, %79
  br label %104

104:                                              ; preds = %103, %76
  %105 = load i32, i32* %9, align 4
  %106 = icmp eq i32 %105, 128
  br i1 %106, label %107, label %131

107:                                              ; preds = %104
  %108 = load i32, i32* @NPY_INTP, align 4
  %109 = call %struct.TYPE_68__* @PyArray_DescrFromType(i32 %108)
  store %struct.TYPE_68__* %109, %struct.TYPE_68__** %29, align 8
  %110 = load %struct.TYPE_68__*, %struct.TYPE_68__** %7, align 8
  %111 = load %struct.TYPE_68__*, %struct.TYPE_68__** %8, align 8
  %112 = load i32, i32* @PyArray_DescrConverter2, align 4
  %113 = sext i32 %112 to i64
  %114 = inttoptr i64 %113 to %struct.TYPE_68__**
  %115 = load i32, i32* @PyArray_OutputConverter, align 4
  %116 = sext i32 %115 to i64
  %117 = inttoptr i64 %116 to %struct.TYPE_68__**
  %118 = call i32 (%struct.TYPE_68__*, %struct.TYPE_68__*, i8*, i8**, %struct.TYPE_68__**, %struct.TYPE_68__**, %struct.TYPE_68__**, %struct.TYPE_68__**, %struct.TYPE_68__**, %struct.TYPE_68__**, ...) @PyArg_ParseTupleAndKeywords(%struct.TYPE_68__* %110, %struct.TYPE_68__* %111, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.16, i64 0, i64 0), i8** getelementptr inbounds ([6 x i8*], [6 x i8*]* @PyUFunc_GenericReduction.reduceat_kwlist, i64 0, i64 0), %struct.TYPE_68__** %19, %struct.TYPE_68__** %20, %struct.TYPE_68__** %15, %struct.TYPE_68__** %114, %struct.TYPE_68__** %23, %struct.TYPE_68__** %117, %struct.TYPE_68__** %24)
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %121, label %120

120:                                              ; preds = %107
  br label %480

121:                                              ; preds = %107
  %122 = load %struct.TYPE_68__*, %struct.TYPE_68__** %20, align 8
  %123 = load %struct.TYPE_68__*, %struct.TYPE_68__** %29, align 8
  %124 = load i32, i32* @NPY_ARRAY_CARRAY, align 4
  %125 = call i64 @PyArray_FromAny(%struct.TYPE_68__* %122, %struct.TYPE_68__* %123, i32 1, i32 1, i32 %124, %struct.TYPE_68__* null)
  %126 = inttoptr i64 %125 to %struct.TYPE_68__*
  store %struct.TYPE_68__* %126, %struct.TYPE_68__** %22, align 8
  %127 = load %struct.TYPE_68__*, %struct.TYPE_68__** %22, align 8
  %128 = icmp eq %struct.TYPE_68__* %127, null
  br i1 %128, label %129, label %130

129:                                              ; preds = %121
  br label %480

130:                                              ; preds = %121
  br label %162

131:                                              ; preds = %104
  %132 = load i32, i32* %9, align 4
  %133 = icmp eq i32 %132, 130
  br i1 %133, label %134, label %147

134:                                              ; preds = %131
  %135 = load %struct.TYPE_68__*, %struct.TYPE_68__** %7, align 8
  %136 = load %struct.TYPE_68__*, %struct.TYPE_68__** %8, align 8
  %137 = load i32, i32* @PyArray_DescrConverter2, align 4
  %138 = sext i32 %137 to i64
  %139 = inttoptr i64 %138 to %struct.TYPE_68__**
  %140 = load i32, i32* @PyArray_OutputConverter, align 4
  %141 = sext i32 %140 to i64
  %142 = inttoptr i64 %141 to %struct.TYPE_68__**
  %143 = call i32 (%struct.TYPE_68__*, %struct.TYPE_68__*, i8*, i8**, %struct.TYPE_68__**, %struct.TYPE_68__**, %struct.TYPE_68__**, %struct.TYPE_68__**, %struct.TYPE_68__**, %struct.TYPE_68__**, ...) @PyArg_ParseTupleAndKeywords(%struct.TYPE_68__* %135, %struct.TYPE_68__* %136, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.17, i64 0, i64 0), i8** getelementptr inbounds ([5 x i8*], [5 x i8*]* @PyUFunc_GenericReduction.accumulate_kwlist, i64 0, i64 0), %struct.TYPE_68__** %19, %struct.TYPE_68__** %15, %struct.TYPE_68__** %139, %struct.TYPE_68__** %23, %struct.TYPE_68__** %142, %struct.TYPE_68__** %24)
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %146, label %145

145:                                              ; preds = %134
  br label %480

146:                                              ; preds = %134
  br label %161

147:                                              ; preds = %131
  %148 = load %struct.TYPE_68__*, %struct.TYPE_68__** %7, align 8
  %149 = load %struct.TYPE_68__*, %struct.TYPE_68__** %8, align 8
  %150 = load i32, i32* @PyArray_DescrConverter2, align 4
  %151 = sext i32 %150 to i64
  %152 = inttoptr i64 %151 to %struct.TYPE_68__**
  %153 = load i32, i32* @PyArray_OutputConverter, align 4
  %154 = sext i32 %153 to i64
  %155 = inttoptr i64 %154 to %struct.TYPE_68__**
  %156 = load i32, i32* @_wheremask_converter, align 4
  %157 = call i32 (%struct.TYPE_68__*, %struct.TYPE_68__*, i8*, i8**, %struct.TYPE_68__**, %struct.TYPE_68__**, %struct.TYPE_68__**, %struct.TYPE_68__**, %struct.TYPE_68__**, %struct.TYPE_68__**, ...) @PyArg_ParseTupleAndKeywords(%struct.TYPE_68__* %148, %struct.TYPE_68__* %149, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i64 0, i64 0), i8** getelementptr inbounds ([8 x i8*], [8 x i8*]* @PyUFunc_GenericReduction.reduce_kwlist, i64 0, i64 0), %struct.TYPE_68__** %19, %struct.TYPE_68__** %15, %struct.TYPE_68__** %152, %struct.TYPE_68__** %23, %struct.TYPE_68__** %155, %struct.TYPE_68__** %24, i32* %25, %struct.TYPE_68__** %26, i32 %156, %struct.TYPE_68__** %17)
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %160, label %159

159:                                              ; preds = %147
  br label %480

160:                                              ; preds = %147
  br label %161

161:                                              ; preds = %160, %146
  br label %162

162:                                              ; preds = %161, %130
  %163 = load %struct.TYPE_68__*, %struct.TYPE_68__** %19, align 8
  %164 = call i32 @PyArray_Check(%struct.TYPE_68__* %163)
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %175, label %166

166:                                              ; preds = %162
  %167 = load %struct.TYPE_68__*, %struct.TYPE_68__** %19, align 8
  %168 = load i32, i32* @Generic, align 4
  %169 = call i32 @PyArray_IsScalar(%struct.TYPE_68__* %167, i32 %168)
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %175, label %171

171:                                              ; preds = %166
  %172 = load %struct.TYPE_67__*, %struct.TYPE_67__** %6, align 8
  %173 = load %struct.TYPE_68__*, %struct.TYPE_68__** %19, align 8
  %174 = call %struct.TYPE_68__* @Py_BuildValue(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i64 0, i64 0), %struct.TYPE_67__* %172, %struct.TYPE_68__* %173, i32 0)
  store %struct.TYPE_68__* %174, %struct.TYPE_68__** %21, align 8
  br label %176

175:                                              ; preds = %166, %162
  store %struct.TYPE_68__* null, %struct.TYPE_68__** %21, align 8
  br label %176

176:                                              ; preds = %175, %171
  %177 = load %struct.TYPE_68__*, %struct.TYPE_68__** %19, align 8
  %178 = load %struct.TYPE_68__*, %struct.TYPE_68__** %21, align 8
  %179 = call i64 @PyArray_FromAny(%struct.TYPE_68__* %177, %struct.TYPE_68__* null, i32 0, i32 0, i32 0, %struct.TYPE_68__* %178)
  %180 = inttoptr i64 %179 to %struct.TYPE_68__*
  store %struct.TYPE_68__* %180, %struct.TYPE_68__** %16, align 8
  %181 = load %struct.TYPE_68__*, %struct.TYPE_68__** %21, align 8
  %182 = call i32 @Py_XDECREF(%struct.TYPE_68__* %181)
  %183 = load %struct.TYPE_68__*, %struct.TYPE_68__** %16, align 8
  %184 = icmp eq %struct.TYPE_68__* %183, null
  br i1 %184, label %185, label %186

185:                                              ; preds = %176
  br label %480

186:                                              ; preds = %176
  %187 = load %struct.TYPE_68__*, %struct.TYPE_68__** %16, align 8
  %188 = call i32 @PyArray_NDIM(%struct.TYPE_68__* %187)
  store i32 %188, i32* %12, align 4
  %189 = load %struct.TYPE_68__*, %struct.TYPE_68__** %16, align 8
  %190 = call i64 @PyArray_ISFLEXIBLE(%struct.TYPE_68__* %189)
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %201, label %192

192:                                              ; preds = %186
  %193 = load %struct.TYPE_68__*, %struct.TYPE_68__** %23, align 8
  %194 = icmp ne %struct.TYPE_68__* %193, null
  br i1 %194, label %195, label %208

195:                                              ; preds = %192
  %196 = load %struct.TYPE_68__*, %struct.TYPE_68__** %23, align 8
  %197 = getelementptr inbounds %struct.TYPE_68__, %struct.TYPE_68__* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  %199 = call i64 @PyTypeNum_ISFLEXIBLE(i32 %198)
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %208

201:                                              ; preds = %195, %186
  %202 = load i32, i32* @PyExc_TypeError, align 4
  %203 = load i32, i32* %9, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds [4 x i8*], [4 x i8*]* @PyUFunc_GenericReduction._reduce_type, i64 0, i64 %204
  %206 = load i8*, i8** %205, align 8
  %207 = call i32 (i32, i8*, ...) @PyErr_Format(i32 %202, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.20, i64 0, i64 0), i8* %206)
  br label %480

208:                                              ; preds = %195, %192
  %209 = load %struct.TYPE_68__*, %struct.TYPE_68__** %15, align 8
  %210 = icmp eq %struct.TYPE_68__* %209, null
  br i1 %210, label %211, label %218

211:                                              ; preds = %208
  %212 = load i32, i32* %12, align 4
  %213 = icmp eq i32 %212, 0
  br i1 %213, label %214, label %215

214:                                              ; preds = %211
  store i32 0, i32* %11, align 4
  br label %217

215:                                              ; preds = %211
  store i32 1, i32* %11, align 4
  %216 = getelementptr inbounds i32, i32* %38, i64 0
  store i32 0, i32* %216, align 16
  br label %217

217:                                              ; preds = %215, %214
  br label %311

218:                                              ; preds = %208
  %219 = load %struct.TYPE_68__*, %struct.TYPE_68__** %15, align 8
  %220 = load %struct.TYPE_68__*, %struct.TYPE_68__** @Py_None, align 8
  %221 = icmp eq %struct.TYPE_68__* %219, %220
  br i1 %221, label %222, label %237

222:                                              ; preds = %218
  %223 = load i32, i32* %12, align 4
  store i32 %223, i32* %11, align 4
  store i32 0, i32* %10, align 4
  br label %224

224:                                              ; preds = %233, %222
  %225 = load i32, i32* %10, align 4
  %226 = load i32, i32* %11, align 4
  %227 = icmp slt i32 %225, %226
  br i1 %227, label %228, label %236

228:                                              ; preds = %224
  %229 = load i32, i32* %10, align 4
  %230 = load i32, i32* %10, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds i32, i32* %38, i64 %231
  store i32 %229, i32* %232, align 4
  br label %233

233:                                              ; preds = %228
  %234 = load i32, i32* %10, align 4
  %235 = add nsw i32 %234, 1
  store i32 %235, i32* %10, align 4
  br label %224

236:                                              ; preds = %224
  br label %310

237:                                              ; preds = %218
  %238 = load %struct.TYPE_68__*, %struct.TYPE_68__** %15, align 8
  %239 = call i64 @PyTuple_Check(%struct.TYPE_68__* %238)
  %240 = icmp ne i64 %239, 0
  br i1 %240, label %241, label %282

241:                                              ; preds = %237
  %242 = load %struct.TYPE_68__*, %struct.TYPE_68__** %15, align 8
  %243 = call i32 @PyTuple_Size(%struct.TYPE_68__* %242)
  store i32 %243, i32* %11, align 4
  %244 = load i32, i32* %11, align 4
  %245 = icmp slt i32 %244, 0
  br i1 %245, label %250, label %246

246:                                              ; preds = %241
  %247 = load i32, i32* %11, align 4
  %248 = load i32, i32* @NPY_MAXDIMS, align 4
  %249 = icmp sgt i32 %247, %248
  br i1 %249, label %250, label %253

250:                                              ; preds = %246, %241
  %251 = load i32, i32* @PyExc_ValueError, align 4
  %252 = call i32 @PyErr_SetString(i32 %251, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.21, i64 0, i64 0))
  br label %480

253:                                              ; preds = %246
  store i32 0, i32* %10, align 4
  br label %254

254:                                              ; preds = %278, %253
  %255 = load i32, i32* %10, align 4
  %256 = load i32, i32* %11, align 4
  %257 = icmp slt i32 %255, %256
  br i1 %257, label %258, label %281

258:                                              ; preds = %254
  %259 = load %struct.TYPE_68__*, %struct.TYPE_68__** %15, align 8
  %260 = load i32, i32* %10, align 4
  %261 = call %struct.TYPE_68__* @PyTuple_GET_ITEM(%struct.TYPE_68__* %259, i32 %260)
  store %struct.TYPE_68__* %261, %struct.TYPE_68__** %30, align 8
  %262 = load %struct.TYPE_68__*, %struct.TYPE_68__** %30, align 8
  %263 = call i32 @PyArray_PyIntAsInt(%struct.TYPE_68__* %262)
  store i32 %263, i32* %31, align 4
  %264 = load i32, i32* %31, align 4
  %265 = call i64 @error_converting(i32 %264)
  %266 = icmp ne i64 %265, 0
  br i1 %266, label %267, label %268

267:                                              ; preds = %258
  br label %480

268:                                              ; preds = %258
  %269 = load i32, i32* %12, align 4
  %270 = call i64 @check_and_adjust_axis(i32* %31, i32 %269)
  %271 = icmp slt i64 %270, 0
  br i1 %271, label %272, label %273

272:                                              ; preds = %268
  br label %480

273:                                              ; preds = %268
  %274 = load i32, i32* %31, align 4
  %275 = load i32, i32* %10, align 4
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds i32, i32* %38, i64 %276
  store i32 %274, i32* %277, align 4
  br label %278

278:                                              ; preds = %273
  %279 = load i32, i32* %10, align 4
  %280 = add nsw i32 %279, 1
  store i32 %280, i32* %10, align 4
  br label %254

281:                                              ; preds = %254
  br label %309

282:                                              ; preds = %237
  %283 = load %struct.TYPE_68__*, %struct.TYPE_68__** %15, align 8
  %284 = call i32 @PyArray_PyIntAsInt(%struct.TYPE_68__* %283)
  store i32 %284, i32* %32, align 4
  %285 = load i32, i32* %32, align 4
  %286 = call i64 @error_converting(i32 %285)
  %287 = icmp ne i64 %286, 0
  br i1 %287, label %288, label %289

288:                                              ; preds = %282
  br label %480

289:                                              ; preds = %282
  %290 = load i32, i32* %12, align 4
  %291 = icmp eq i32 %290, 0
  br i1 %291, label %292, label %299

292:                                              ; preds = %289
  %293 = load i32, i32* %32, align 4
  %294 = icmp eq i32 %293, 0
  br i1 %294, label %298, label %295

295:                                              ; preds = %292
  %296 = load i32, i32* %32, align 4
  %297 = icmp eq i32 %296, -1
  br i1 %297, label %298, label %299

298:                                              ; preds = %295, %292
  store i32 0, i32* %11, align 4
  br label %308

299:                                              ; preds = %295, %289
  %300 = load i32, i32* %12, align 4
  %301 = call i64 @check_and_adjust_axis(i32* %32, i32 %300)
  %302 = icmp slt i64 %301, 0
  br i1 %302, label %303, label %304

303:                                              ; preds = %299
  br label %480

304:                                              ; preds = %299
  %305 = load i32, i32* %32, align 4
  %306 = getelementptr inbounds i32, i32* %38, i64 0
  store i32 %305, i32* %306, align 16
  store i32 1, i32* %11, align 4
  br label %307

307:                                              ; preds = %304
  br label %308

308:                                              ; preds = %307, %298
  br label %309

309:                                              ; preds = %308, %281
  br label %310

310:                                              ; preds = %309, %236
  br label %311

311:                                              ; preds = %310, %217
  %312 = load %struct.TYPE_68__*, %struct.TYPE_68__** %23, align 8
  %313 = icmp eq %struct.TYPE_68__* %312, null
  br i1 %313, label %314, label %322

314:                                              ; preds = %311
  %315 = load %struct.TYPE_68__*, %struct.TYPE_68__** %24, align 8
  %316 = icmp ne %struct.TYPE_68__* %315, null
  br i1 %316, label %317, label %322

317:                                              ; preds = %314
  %318 = load %struct.TYPE_68__*, %struct.TYPE_68__** %24, align 8
  %319 = call %struct.TYPE_68__* @PyArray_DESCR(%struct.TYPE_68__* %318)
  store %struct.TYPE_68__* %319, %struct.TYPE_68__** %23, align 8
  %320 = load %struct.TYPE_68__*, %struct.TYPE_68__** %23, align 8
  %321 = call i32 @Py_INCREF(%struct.TYPE_68__* %320)
  br label %322

322:                                              ; preds = %317, %314, %311
  %323 = load %struct.TYPE_68__*, %struct.TYPE_68__** %23, align 8
  %324 = icmp eq %struct.TYPE_68__* %323, null
  br i1 %324, label %325, label %373

325:                                              ; preds = %322
  %326 = load %struct.TYPE_68__*, %struct.TYPE_68__** %16, align 8
  %327 = call i32 @PyArray_TYPE(%struct.TYPE_68__* %326)
  store i32 %327, i32* %33, align 4
  %328 = load i32, i32* %33, align 4
  %329 = call i64 @PyTypeNum_ISBOOL(i32 %328)
  %330 = icmp ne i64 %329, 0
  br i1 %330, label %335, label %331

331:                                              ; preds = %325
  %332 = load i32, i32* %33, align 4
  %333 = call i64 @PyTypeNum_ISINTEGER(i32 %332)
  %334 = icmp ne i64 %333, 0
  br i1 %334, label %335, label %370

335:                                              ; preds = %331, %325
  %336 = load %struct.TYPE_67__*, %struct.TYPE_67__** %6, align 8
  %337 = getelementptr inbounds %struct.TYPE_67__, %struct.TYPE_67__* %336, i32 0, i32 2
  %338 = load i32, i32* %337, align 8
  %339 = call i64 @strcmp(i32 %338, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i64 0, i64 0))
  %340 = icmp eq i64 %339, 0
  br i1 %340, label %347, label %341

341:                                              ; preds = %335
  %342 = load %struct.TYPE_67__*, %struct.TYPE_67__** %6, align 8
  %343 = getelementptr inbounds %struct.TYPE_67__, %struct.TYPE_67__* %342, i32 0, i32 2
  %344 = load i32, i32* %343, align 8
  %345 = call i64 @strcmp(i32 %344, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.23, i64 0, i64 0))
  %346 = icmp eq i64 %345, 0
  br i1 %346, label %347, label %370

347:                                              ; preds = %341, %335
  %348 = load i32, i32* %33, align 4
  %349 = call i64 @PyTypeNum_ISBOOL(i32 %348)
  %350 = icmp ne i64 %349, 0
  br i1 %350, label %351, label %353

351:                                              ; preds = %347
  %352 = load i32, i32* @NPY_LONG, align 4
  store i32 %352, i32* %33, align 4
  br label %369

353:                                              ; preds = %347
  %354 = load %struct.TYPE_68__*, %struct.TYPE_68__** %16, align 8
  %355 = call %struct.TYPE_68__* @PyArray_DESCR(%struct.TYPE_68__* %354)
  %356 = getelementptr inbounds %struct.TYPE_68__, %struct.TYPE_68__* %355, i32 0, i32 1
  %357 = load i64, i64* %356, align 8
  %358 = icmp ult i64 %357, 8
  br i1 %358, label %359, label %368

359:                                              ; preds = %353
  %360 = load i32, i32* %33, align 4
  %361 = call i64 @PyTypeNum_ISUNSIGNED(i32 %360)
  %362 = icmp ne i64 %361, 0
  br i1 %362, label %363, label %365

363:                                              ; preds = %359
  %364 = load i32, i32* @NPY_ULONG, align 4
  store i32 %364, i32* %33, align 4
  br label %367

365:                                              ; preds = %359
  %366 = load i32, i32* @NPY_LONG, align 4
  store i32 %366, i32* %33, align 4
  br label %367

367:                                              ; preds = %365, %363
  br label %368

368:                                              ; preds = %367, %353
  br label %369

369:                                              ; preds = %368, %351
  br label %370

370:                                              ; preds = %369, %341, %331
  %371 = load i32, i32* %33, align 4
  %372 = call %struct.TYPE_68__* @PyArray_DescrFromType(i32 %371)
  store %struct.TYPE_68__* %372, %struct.TYPE_68__** %23, align 8
  br label %373

373:                                              ; preds = %370, %322
  %374 = load i32, i32* %9, align 4
  switch i32 %374, label %436 [
    i32 129, label %375
    i32 130, label %387
    i32 128, label %410
  ]

375:                                              ; preds = %373
  %376 = load %struct.TYPE_67__*, %struct.TYPE_67__** %6, align 8
  %377 = load %struct.TYPE_68__*, %struct.TYPE_68__** %16, align 8
  %378 = load %struct.TYPE_68__*, %struct.TYPE_68__** %24, align 8
  %379 = load i32, i32* %11, align 4
  %380 = load %struct.TYPE_68__*, %struct.TYPE_68__** %23, align 8
  %381 = load i32, i32* %25, align 4
  %382 = load %struct.TYPE_68__*, %struct.TYPE_68__** %26, align 8
  %383 = load %struct.TYPE_68__*, %struct.TYPE_68__** %17, align 8
  %384 = call %struct.TYPE_68__* @PyUFunc_Reduce(%struct.TYPE_67__* %376, %struct.TYPE_68__* %377, %struct.TYPE_68__* %378, i32 %379, i32* %38, %struct.TYPE_68__* %380, i32 %381, %struct.TYPE_68__* %382, %struct.TYPE_68__* %383)
  store %struct.TYPE_68__* %384, %struct.TYPE_68__** %18, align 8
  %385 = load %struct.TYPE_68__*, %struct.TYPE_68__** %17, align 8
  %386 = call i32 @Py_XDECREF(%struct.TYPE_68__* %385)
  br label %436

387:                                              ; preds = %373
  %388 = load i32, i32* %12, align 4
  %389 = icmp eq i32 %388, 0
  br i1 %389, label %390, label %393

390:                                              ; preds = %387
  %391 = load i32, i32* @PyExc_TypeError, align 4
  %392 = call i32 @PyErr_SetString(i32 %391, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.24, i64 0, i64 0))
  br label %480

393:                                              ; preds = %387
  %394 = load i32, i32* %11, align 4
  %395 = icmp ne i32 %394, 1
  br i1 %395, label %396, label %399

396:                                              ; preds = %393
  %397 = load i32, i32* @PyExc_ValueError, align 4
  %398 = call i32 @PyErr_SetString(i32 %397, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.25, i64 0, i64 0))
  br label %480

399:                                              ; preds = %393
  %400 = load %struct.TYPE_67__*, %struct.TYPE_67__** %6, align 8
  %401 = load %struct.TYPE_68__*, %struct.TYPE_68__** %16, align 8
  %402 = load %struct.TYPE_68__*, %struct.TYPE_68__** %24, align 8
  %403 = getelementptr inbounds i32, i32* %38, i64 0
  %404 = load i32, i32* %403, align 16
  %405 = load %struct.TYPE_68__*, %struct.TYPE_68__** %23, align 8
  %406 = getelementptr inbounds %struct.TYPE_68__, %struct.TYPE_68__* %405, i32 0, i32 0
  %407 = load i32, i32* %406, align 8
  %408 = call i64 @PyUFunc_Accumulate(%struct.TYPE_67__* %400, %struct.TYPE_68__* %401, %struct.TYPE_68__* %402, i32 %404, i32 %407)
  %409 = inttoptr i64 %408 to %struct.TYPE_68__*
  store %struct.TYPE_68__* %409, %struct.TYPE_68__** %18, align 8
  br label %436

410:                                              ; preds = %373
  %411 = load i32, i32* %12, align 4
  %412 = icmp eq i32 %411, 0
  br i1 %412, label %413, label %416

413:                                              ; preds = %410
  %414 = load i32, i32* @PyExc_TypeError, align 4
  %415 = call i32 @PyErr_SetString(i32 %414, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.26, i64 0, i64 0))
  br label %480

416:                                              ; preds = %410
  %417 = load i32, i32* %11, align 4
  %418 = icmp ne i32 %417, 1
  br i1 %418, label %419, label %422

419:                                              ; preds = %416
  %420 = load i32, i32* @PyExc_ValueError, align 4
  %421 = call i32 @PyErr_SetString(i32 %420, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.27, i64 0, i64 0))
  br label %480

422:                                              ; preds = %416
  %423 = load %struct.TYPE_67__*, %struct.TYPE_67__** %6, align 8
  %424 = load %struct.TYPE_68__*, %struct.TYPE_68__** %16, align 8
  %425 = load %struct.TYPE_68__*, %struct.TYPE_68__** %22, align 8
  %426 = load %struct.TYPE_68__*, %struct.TYPE_68__** %24, align 8
  %427 = getelementptr inbounds i32, i32* %38, i64 0
  %428 = load i32, i32* %427, align 16
  %429 = load %struct.TYPE_68__*, %struct.TYPE_68__** %23, align 8
  %430 = getelementptr inbounds %struct.TYPE_68__, %struct.TYPE_68__* %429, i32 0, i32 0
  %431 = load i32, i32* %430, align 8
  %432 = call i64 @PyUFunc_Reduceat(%struct.TYPE_67__* %423, %struct.TYPE_68__* %424, %struct.TYPE_68__* %425, %struct.TYPE_68__* %426, i32 %428, i32 %431)
  %433 = inttoptr i64 %432 to %struct.TYPE_68__*
  store %struct.TYPE_68__* %433, %struct.TYPE_68__** %18, align 8
  %434 = load %struct.TYPE_68__*, %struct.TYPE_68__** %22, align 8
  %435 = call i32 @Py_DECREF(%struct.TYPE_68__* %434)
  br label %436

436:                                              ; preds = %373, %422, %399, %375
  %437 = load %struct.TYPE_68__*, %struct.TYPE_68__** %16, align 8
  %438 = call i32 @Py_DECREF(%struct.TYPE_68__* %437)
  %439 = load %struct.TYPE_68__*, %struct.TYPE_68__** %23, align 8
  %440 = call i32 @Py_DECREF(%struct.TYPE_68__* %439)
  %441 = load %struct.TYPE_68__*, %struct.TYPE_68__** %18, align 8
  %442 = icmp eq %struct.TYPE_68__* %441, null
  br i1 %442, label %443, label %444

443:                                              ; preds = %436
  store %struct.TYPE_68__* null, %struct.TYPE_68__** %5, align 8
  store i32 1, i32* %27, align 4
  br label %487

444:                                              ; preds = %436
  %445 = load %struct.TYPE_68__*, %struct.TYPE_68__** %24, align 8
  %446 = icmp ne %struct.TYPE_68__* %445, null
  br i1 %446, label %447, label %451

447:                                              ; preds = %444
  %448 = load %struct.TYPE_68__*, %struct.TYPE_68__** @Py_None, align 8
  store %struct.TYPE_68__* %448, %struct.TYPE_68__** %34, align 8
  %449 = load %struct.TYPE_68__*, %struct.TYPE_68__** %34, align 8
  %450 = call i32 @Py_INCREF(%struct.TYPE_68__* %449)
  br label %476

451:                                              ; preds = %444
  %452 = load %struct.TYPE_68__*, %struct.TYPE_68__** %19, align 8
  %453 = call i64 @Py_TYPE(%struct.TYPE_68__* %452)
  %454 = load %struct.TYPE_68__*, %struct.TYPE_68__** %18, align 8
  %455 = call i64 @Py_TYPE(%struct.TYPE_68__* %454)
  %456 = icmp ne i64 %453, %455
  br i1 %456, label %457, label %474

457:                                              ; preds = %451
  %458 = load %struct.TYPE_68__*, %struct.TYPE_68__** %19, align 8
  %459 = load i32, i32* @npy_um_str_array_wrap, align 4
  %460 = call %struct.TYPE_68__* @PyObject_GetAttr(%struct.TYPE_68__* %458, i32 %459)
  store %struct.TYPE_68__* %460, %struct.TYPE_68__** %34, align 8
  %461 = load %struct.TYPE_68__*, %struct.TYPE_68__** %34, align 8
  %462 = icmp eq %struct.TYPE_68__* %461, null
  br i1 %462, label %463, label %465

463:                                              ; preds = %457
  %464 = call i32 (...) @PyErr_Clear()
  br label %473

465:                                              ; preds = %457
  %466 = load %struct.TYPE_68__*, %struct.TYPE_68__** %34, align 8
  %467 = call i32 @PyCallable_Check(%struct.TYPE_68__* %466)
  %468 = icmp ne i32 %467, 0
  br i1 %468, label %472, label %469

469:                                              ; preds = %465
  %470 = load %struct.TYPE_68__*, %struct.TYPE_68__** %34, align 8
  %471 = call i32 @Py_DECREF(%struct.TYPE_68__* %470)
  store %struct.TYPE_68__* null, %struct.TYPE_68__** %34, align 8
  br label %472

472:                                              ; preds = %469, %465
  br label %473

473:                                              ; preds = %472, %463
  br label %475

474:                                              ; preds = %451
  store %struct.TYPE_68__* null, %struct.TYPE_68__** %34, align 8
  br label %475

475:                                              ; preds = %474, %473
  br label %476

476:                                              ; preds = %475, %447
  %477 = load %struct.TYPE_68__*, %struct.TYPE_68__** %34, align 8
  %478 = load %struct.TYPE_68__*, %struct.TYPE_68__** %18, align 8
  %479 = call %struct.TYPE_68__* @_apply_array_wrap(%struct.TYPE_68__* %477, %struct.TYPE_68__* %478, i32* null)
  store %struct.TYPE_68__* %479, %struct.TYPE_68__** %5, align 8
  store i32 1, i32* %27, align 4
  br label %487

480:                                              ; preds = %419, %413, %396, %390, %303, %288, %272, %267, %250, %201, %185, %159, %145, %129, %120
  %481 = load %struct.TYPE_68__*, %struct.TYPE_68__** %23, align 8
  %482 = call i32 @Py_XDECREF(%struct.TYPE_68__* %481)
  %483 = load %struct.TYPE_68__*, %struct.TYPE_68__** %16, align 8
  %484 = call i32 @Py_XDECREF(%struct.TYPE_68__* %483)
  %485 = load %struct.TYPE_68__*, %struct.TYPE_68__** %17, align 8
  %486 = call i32 @Py_XDECREF(%struct.TYPE_68__* %485)
  store %struct.TYPE_68__* null, %struct.TYPE_68__** %5, align 8
  store i32 1, i32* %27, align 4
  br label %487

487:                                              ; preds = %480, %476, %443, %93, %69, %57, %49, %41
  %488 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %488)
  %489 = load %struct.TYPE_68__*, %struct.TYPE_68__** %5, align 8
  ret %struct.TYPE_68__* %489
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @PyErr_SetString(i32, i8*) #2

declare dso_local i32 @PyErr_Format(i32, i8*, ...) #2

declare dso_local %struct.TYPE_68__* @PyDict_GetItem(%struct.TYPE_68__*, i32) #2

declare dso_local i64 @PyTuple_CheckExact(%struct.TYPE_68__*) #2

declare dso_local i32 @PyTuple_GET_SIZE(%struct.TYPE_68__*) #2

declare dso_local %struct.TYPE_68__* @PyTuple_GET_ITEM(%struct.TYPE_68__*, i32) #2

declare dso_local i32 @PyDict_SetItem(%struct.TYPE_68__*, i32, %struct.TYPE_68__*) #2

declare dso_local %struct.TYPE_68__* @PyArray_DescrFromType(i32) #2

declare dso_local i32 @PyArg_ParseTupleAndKeywords(%struct.TYPE_68__*, %struct.TYPE_68__*, i8*, i8**, %struct.TYPE_68__**, %struct.TYPE_68__**, %struct.TYPE_68__**, %struct.TYPE_68__**, %struct.TYPE_68__**, %struct.TYPE_68__**, ...) #2

declare dso_local i64 @PyArray_FromAny(%struct.TYPE_68__*, %struct.TYPE_68__*, i32, i32, i32, %struct.TYPE_68__*) #2

declare dso_local i32 @PyArray_Check(%struct.TYPE_68__*) #2

declare dso_local i32 @PyArray_IsScalar(%struct.TYPE_68__*, i32) #2

declare dso_local %struct.TYPE_68__* @Py_BuildValue(i8*, %struct.TYPE_67__*, %struct.TYPE_68__*, i32) #2

declare dso_local i32 @Py_XDECREF(%struct.TYPE_68__*) #2

declare dso_local i32 @PyArray_NDIM(%struct.TYPE_68__*) #2

declare dso_local i64 @PyArray_ISFLEXIBLE(%struct.TYPE_68__*) #2

declare dso_local i64 @PyTypeNum_ISFLEXIBLE(i32) #2

declare dso_local i64 @PyTuple_Check(%struct.TYPE_68__*) #2

declare dso_local i32 @PyTuple_Size(%struct.TYPE_68__*) #2

declare dso_local i32 @PyArray_PyIntAsInt(%struct.TYPE_68__*) #2

declare dso_local i64 @error_converting(i32) #2

declare dso_local i64 @check_and_adjust_axis(i32*, i32) #2

declare dso_local %struct.TYPE_68__* @PyArray_DESCR(%struct.TYPE_68__*) #2

declare dso_local i32 @Py_INCREF(%struct.TYPE_68__*) #2

declare dso_local i32 @PyArray_TYPE(%struct.TYPE_68__*) #2

declare dso_local i64 @PyTypeNum_ISBOOL(i32) #2

declare dso_local i64 @PyTypeNum_ISINTEGER(i32) #2

declare dso_local i64 @strcmp(i32, i8*) #2

declare dso_local i64 @PyTypeNum_ISUNSIGNED(i32) #2

declare dso_local %struct.TYPE_68__* @PyUFunc_Reduce(%struct.TYPE_67__*, %struct.TYPE_68__*, %struct.TYPE_68__*, i32, i32*, %struct.TYPE_68__*, i32, %struct.TYPE_68__*, %struct.TYPE_68__*) #2

declare dso_local i64 @PyUFunc_Accumulate(%struct.TYPE_67__*, %struct.TYPE_68__*, %struct.TYPE_68__*, i32, i32) #2

declare dso_local i64 @PyUFunc_Reduceat(%struct.TYPE_67__*, %struct.TYPE_68__*, %struct.TYPE_68__*, %struct.TYPE_68__*, i32, i32) #2

declare dso_local i32 @Py_DECREF(%struct.TYPE_68__*) #2

declare dso_local i64 @Py_TYPE(%struct.TYPE_68__*) #2

declare dso_local %struct.TYPE_68__* @PyObject_GetAttr(%struct.TYPE_68__*, i32) #2

declare dso_local i32 @PyErr_Clear(...) #2

declare dso_local i32 @PyCallable_Check(%struct.TYPE_68__*) #2

declare dso_local %struct.TYPE_68__* @_apply_array_wrap(%struct.TYPE_68__*, %struct.TYPE_68__*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
