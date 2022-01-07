; ModuleID = '/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_getset.c_array_descr_set.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_getset.c_array_descr_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_32__ = type { i64, i32 }
%struct.TYPE_33__ = type { i32*, i32, i32*, %struct.TYPE_32__* }

@PyExc_AttributeError = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Cannot delete array dtype\00", align 1
@PyExc_TypeError = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"invalid data-type for array\00", align 1
@array_descr_set.checkfunc = internal global %struct.TYPE_32__* null, align 8
@.str.2 = private unnamed_addr constant [21 x i8] c"numpy.core._internal\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"_view_is_safe\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"OO\00", align 1
@NPY_VOID = common dso_local global i64 0, align 8
@PyExc_ValueError = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [80 x i8] c"Changing the dtype of a 0d array is only supported if the itemsize is unchanged\00", align 1
@.str.6 = private unnamed_addr constant [91 x i8] c"Changing the dtype to a subarray type is only supported if the total itemsize is unchanged\00", align 1
@.str.7 = private unnamed_addr constant [186 x i8] c"Changing the shape of an F-contiguous array by descriptor assignment is deprecated. To maintain the Fortran contiguity of a multidimensional Fortran array, use 'a.T.view(...).T' instead\00", align 1
@.str.8 = private unnamed_addr constant [73 x i8] c"To change to a dtype of a different size, the array must be C-contiguous\00", align 1
@.str.9 = private unnamed_addr constant [91 x i8] c"When changing to a smaller dtype, its size must be a divisor of the size of original dtype\00", align 1
@.str.10 = private unnamed_addr constant [118 x i8] c"When changing to a larger dtype, its size must be a divisor of the total size in bytes of the last axis of the array.\00", align 1
@PyArray_Type = common dso_local global i32 0, align 4
@NPY_ARRAY_UPDATE_ALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_32__*, %struct.TYPE_32__*)* @array_descr_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @array_descr_set(%struct.TYPE_32__* %0, %struct.TYPE_32__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_32__*, align 8
  %5 = alloca %struct.TYPE_32__*, align 8
  %6 = alloca %struct.TYPE_32__*, align 8
  %7 = alloca %struct.TYPE_32__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_32__*, align 8
  store %struct.TYPE_32__* %0, %struct.TYPE_32__** %4, align 8
  store %struct.TYPE_32__* %1, %struct.TYPE_32__** %5, align 8
  store %struct.TYPE_32__* null, %struct.TYPE_32__** %6, align 8
  %11 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %12 = icmp eq %struct.TYPE_32__* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load i32, i32* @PyExc_AttributeError, align 4
  %15 = call i32 @PyErr_SetString(i32 %14, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %298

16:                                               ; preds = %2
  %17 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %18 = call i32 @PyArray_DescrConverter(%struct.TYPE_32__* %17, %struct.TYPE_32__** %6)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %16
  %21 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %22 = icmp eq %struct.TYPE_32__* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %20, %16
  %24 = load i32, i32* @PyExc_TypeError, align 4
  %25 = call i32 @PyErr_SetString(i32 %24, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %298

26:                                               ; preds = %20
  %27 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %28 = call %struct.TYPE_32__* @PyArray_DESCR(%struct.TYPE_32__* %27)
  %29 = call i64 @_may_have_objects(%struct.TYPE_32__* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %26
  %32 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %33 = call i64 @_may_have_objects(%struct.TYPE_32__* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %52

35:                                               ; preds = %31, %26
  %36 = call i32 @npy_cache_import(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), %struct.TYPE_32__** @array_descr_set.checkfunc)
  %37 = load %struct.TYPE_32__*, %struct.TYPE_32__** @array_descr_set.checkfunc, align 8
  %38 = icmp eq %struct.TYPE_32__* %37, null
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  br label %295

40:                                               ; preds = %35
  %41 = load %struct.TYPE_32__*, %struct.TYPE_32__** @array_descr_set.checkfunc, align 8
  %42 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %43 = call %struct.TYPE_32__* @PyArray_DESCR(%struct.TYPE_32__* %42)
  %44 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %45 = call %struct.TYPE_32__* @PyObject_CallFunction(%struct.TYPE_32__* %41, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), %struct.TYPE_32__* %43, %struct.TYPE_32__* %44)
  store %struct.TYPE_32__* %45, %struct.TYPE_32__** %7, align 8
  %46 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %47 = icmp eq %struct.TYPE_32__* %46, null
  br i1 %47, label %48, label %49

48:                                               ; preds = %40
  br label %295

49:                                               ; preds = %40
  %50 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %51 = call i32 @Py_DECREF(%struct.TYPE_32__* %50)
  br label %52

52:                                               ; preds = %49, %31
  %53 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @NPY_VOID, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %84

58:                                               ; preds = %52
  %59 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %60 = call i64 @PyDataType_ISUNSIZED(%struct.TYPE_32__* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %84

62:                                               ; preds = %58
  %63 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %67 = call %struct.TYPE_32__* @PyArray_DESCR(%struct.TYPE_32__* %66)
  %68 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = icmp ne i32 %65, %69
  br i1 %70, label %71, label %84

71:                                               ; preds = %62
  %72 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %73 = call i32 @PyArray_DESCR_REPLACE(%struct.TYPE_32__* %72)
  %74 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %75 = icmp eq %struct.TYPE_32__* %74, null
  br i1 %75, label %76, label %77

76:                                               ; preds = %71
  store i32 -1, i32* %3, align 4
  br label %298

77:                                               ; preds = %71
  %78 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %79 = call %struct.TYPE_32__* @PyArray_DESCR(%struct.TYPE_32__* %78)
  %80 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %82, i32 0, i32 1
  store i32 %81, i32* %83, align 8
  br label %84

84:                                               ; preds = %77, %62, %58, %52
  %85 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %89 = call %struct.TYPE_32__* @PyArray_DESCR(%struct.TYPE_32__* %88)
  %90 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = icmp ne i32 %87, %91
  br i1 %92, label %93, label %232

93:                                               ; preds = %84
  %94 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %95 = call i32 @PyArray_NDIM(%struct.TYPE_32__* %94)
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %93
  %98 = load i32, i32* @PyExc_ValueError, align 4
  %99 = call i32 @PyErr_SetString(i32 %98, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.5, i64 0, i64 0))
  br label %295

100:                                              ; preds = %93
  %101 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %102 = call i64 @PyDataType_HASSUBARRAY(%struct.TYPE_32__* %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %100
  %105 = load i32, i32* @PyExc_ValueError, align 4
  %106 = call i32 @PyErr_SetString(i32 %105, i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str.6, i64 0, i64 0))
  br label %295

107:                                              ; preds = %100
  br label %108

108:                                              ; preds = %107
  %109 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %110 = call i64 @PyArray_IS_C_CONTIGUOUS(%struct.TYPE_32__* %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %116

112:                                              ; preds = %108
  %113 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %114 = call i32 @PyArray_NDIM(%struct.TYPE_32__* %113)
  %115 = sub nsw i32 %114, 1
  store i32 %115, i32* %8, align 4
  br label %129

116:                                              ; preds = %108
  %117 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %118 = call i64 @PyArray_IS_F_CONTIGUOUS(%struct.TYPE_32__* %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %125

120:                                              ; preds = %116
  %121 = call i64 @DEPRECATE(i8* getelementptr inbounds ([186 x i8], [186 x i8]* @.str.7, i64 0, i64 0))
  %122 = icmp slt i64 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %120
  br label %295

124:                                              ; preds = %120
  store i32 0, i32* %8, align 4
  br label %128

125:                                              ; preds = %116
  %126 = load i32, i32* @PyExc_ValueError, align 4
  %127 = call i32 @PyErr_SetString(i32 %126, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.8, i64 0, i64 0))
  br label %295

128:                                              ; preds = %124
  br label %129

129:                                              ; preds = %128, %112
  %130 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %131 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 8
  %133 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %134 = call %struct.TYPE_32__* @PyArray_DESCR(%struct.TYPE_32__* %133)
  %135 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 8
  %137 = icmp slt i32 %132, %136
  br i1 %137, label %138, label %181

138:                                              ; preds = %129
  %139 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %140 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 8
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %153, label %143

143:                                              ; preds = %138
  %144 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %145 = call %struct.TYPE_32__* @PyArray_DESCR(%struct.TYPE_32__* %144)
  %146 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 8
  %148 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %149 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 8
  %151 = srem i32 %147, %150
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %156

153:                                              ; preds = %143, %138
  %154 = load i32, i32* @PyExc_ValueError, align 4
  %155 = call i32 @PyErr_SetString(i32 %154, i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str.9, i64 0, i64 0))
  br label %295

156:                                              ; preds = %143
  %157 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %158 = call %struct.TYPE_32__* @PyArray_DESCR(%struct.TYPE_32__* %157)
  %159 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 8
  %161 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %162 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 8
  %164 = sdiv i32 %160, %163
  store i32 %164, i32* %9, align 4
  %165 = load i32, i32* %9, align 4
  %166 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %167 = call i32* @PyArray_DIMS(%struct.TYPE_32__* %166)
  %168 = load i32, i32* %8, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i32, i32* %167, i64 %169
  %171 = load i32, i32* %170, align 4
  %172 = mul nsw i32 %171, %165
  store i32 %172, i32* %170, align 4
  %173 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %174 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 8
  %176 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %177 = call i32* @PyArray_STRIDES(%struct.TYPE_32__* %176)
  %178 = load i32, i32* %8, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i32, i32* %177, i64 %179
  store i32 %175, i32* %180, align 4
  br label %231

181:                                              ; preds = %129
  %182 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %183 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 8
  %185 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %186 = call %struct.TYPE_32__* @PyArray_DESCR(%struct.TYPE_32__* %185)
  %187 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 8
  %189 = icmp sgt i32 %184, %188
  br i1 %189, label %190, label %230

190:                                              ; preds = %181
  %191 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %192 = call i32* @PyArray_DIMS(%struct.TYPE_32__* %191)
  %193 = load i32, i32* %8, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i32, i32* %192, i64 %194
  %196 = load i32, i32* %195, align 4
  %197 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %198 = call %struct.TYPE_32__* @PyArray_DESCR(%struct.TYPE_32__* %197)
  %199 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 8
  %201 = mul nsw i32 %196, %200
  store i32 %201, i32* %9, align 4
  %202 = load i32, i32* %9, align 4
  %203 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %204 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 8
  %206 = srem i32 %202, %205
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %211

208:                                              ; preds = %190
  %209 = load i32, i32* @PyExc_ValueError, align 4
  %210 = call i32 @PyErr_SetString(i32 %209, i8* getelementptr inbounds ([118 x i8], [118 x i8]* @.str.10, i64 0, i64 0))
  br label %295

211:                                              ; preds = %190
  %212 = load i32, i32* %9, align 4
  %213 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %214 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %213, i32 0, i32 1
  %215 = load i32, i32* %214, align 8
  %216 = sdiv i32 %212, %215
  %217 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %218 = call i32* @PyArray_DIMS(%struct.TYPE_32__* %217)
  %219 = load i32, i32* %8, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds i32, i32* %218, i64 %220
  store i32 %216, i32* %221, align 4
  %222 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %223 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %222, i32 0, i32 1
  %224 = load i32, i32* %223, align 8
  %225 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %226 = call i32* @PyArray_STRIDES(%struct.TYPE_32__* %225)
  %227 = load i32, i32* %8, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds i32, i32* %226, i64 %228
  store i32 %224, i32* %229, align 4
  br label %230

230:                                              ; preds = %211, %181
  br label %231

231:                                              ; preds = %230, %156
  br label %232

232:                                              ; preds = %231, %84
  %233 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %234 = call i64 @PyDataType_HASSUBARRAY(%struct.TYPE_32__* %233)
  %235 = icmp ne i64 %234, 0
  br i1 %235, label %236, label %284

236:                                              ; preds = %232
  %237 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %238 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %239 = call i32 @PyArray_NDIM(%struct.TYPE_32__* %238)
  %240 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %241 = call i32* @PyArray_DIMS(%struct.TYPE_32__* %240)
  %242 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %243 = call i32* @PyArray_STRIDES(%struct.TYPE_32__* %242)
  %244 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %245 = call i32 @PyArray_DATA(%struct.TYPE_32__* %244)
  %246 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %247 = call i32 @PyArray_FLAGS(%struct.TYPE_32__* %246)
  %248 = call i64 @PyArray_NewFromDescr(i32* @PyArray_Type, %struct.TYPE_32__* %237, i32 %239, i32* %241, i32* %243, i32 %245, i32 %247, i32* null)
  %249 = inttoptr i64 %248 to %struct.TYPE_32__*
  store %struct.TYPE_32__* %249, %struct.TYPE_32__** %10, align 8
  %250 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %251 = icmp eq %struct.TYPE_32__* %250, null
  br i1 %251, label %252, label %253

252:                                              ; preds = %236
  store i32 -1, i32* %3, align 4
  br label %298

253:                                              ; preds = %236
  %254 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %255 = call i32 @npy_free_cache_dim_array(%struct.TYPE_32__* %254)
  %256 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %257 = call i32* @PyArray_DIMS(%struct.TYPE_32__* %256)
  %258 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %259 = bitcast %struct.TYPE_32__* %258 to %struct.TYPE_33__*
  %260 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %259, i32 0, i32 0
  store i32* %257, i32** %260, align 8
  %261 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %262 = call i32 @PyArray_NDIM(%struct.TYPE_32__* %261)
  %263 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %264 = bitcast %struct.TYPE_32__* %263 to %struct.TYPE_33__*
  %265 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %264, i32 0, i32 1
  store i32 %262, i32* %265, align 8
  %266 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %267 = call i32* @PyArray_STRIDES(%struct.TYPE_32__* %266)
  %268 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %269 = bitcast %struct.TYPE_32__* %268 to %struct.TYPE_33__*
  %270 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %269, i32 0, i32 2
  store i32* %267, i32** %270, align 8
  %271 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %272 = call %struct.TYPE_32__* @PyArray_DESCR(%struct.TYPE_32__* %271)
  store %struct.TYPE_32__* %272, %struct.TYPE_32__** %6, align 8
  %273 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %274 = call %struct.TYPE_32__* @PyArray_DESCR(%struct.TYPE_32__* %273)
  %275 = call i32 @Py_INCREF(%struct.TYPE_32__* %274)
  %276 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %277 = bitcast %struct.TYPE_32__* %276 to %struct.TYPE_33__*
  %278 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %277, i32 0, i32 1
  store i32 0, i32* %278, align 8
  %279 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %280 = bitcast %struct.TYPE_32__* %279 to %struct.TYPE_33__*
  %281 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %280, i32 0, i32 0
  store i32* null, i32** %281, align 8
  %282 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %283 = call i32 @Py_DECREF(%struct.TYPE_32__* %282)
  br label %284

284:                                              ; preds = %253, %232
  %285 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %286 = call %struct.TYPE_32__* @PyArray_DESCR(%struct.TYPE_32__* %285)
  %287 = call i32 @Py_DECREF(%struct.TYPE_32__* %286)
  %288 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %289 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %290 = bitcast %struct.TYPE_32__* %289 to %struct.TYPE_33__*
  %291 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %290, i32 0, i32 3
  store %struct.TYPE_32__* %288, %struct.TYPE_32__** %291, align 8
  %292 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %293 = load i32, i32* @NPY_ARRAY_UPDATE_ALL, align 4
  %294 = call i32 @PyArray_UpdateFlags(%struct.TYPE_32__* %292, i32 %293)
  store i32 0, i32* %3, align 4
  br label %298

295:                                              ; preds = %208, %153, %125, %123, %104, %97, %48, %39
  %296 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %297 = call i32 @Py_DECREF(%struct.TYPE_32__* %296)
  store i32 -1, i32* %3, align 4
  br label %298

298:                                              ; preds = %295, %284, %252, %76, %23, %13
  %299 = load i32, i32* %3, align 4
  ret i32 %299
}

declare dso_local i32 @PyErr_SetString(i32, i8*) #1

declare dso_local i32 @PyArray_DescrConverter(%struct.TYPE_32__*, %struct.TYPE_32__**) #1

declare dso_local i64 @_may_have_objects(%struct.TYPE_32__*) #1

declare dso_local %struct.TYPE_32__* @PyArray_DESCR(%struct.TYPE_32__*) #1

declare dso_local i32 @npy_cache_import(i8*, i8*, %struct.TYPE_32__**) #1

declare dso_local %struct.TYPE_32__* @PyObject_CallFunction(%struct.TYPE_32__*, i8*, %struct.TYPE_32__*, %struct.TYPE_32__*) #1

declare dso_local i32 @Py_DECREF(%struct.TYPE_32__*) #1

declare dso_local i64 @PyDataType_ISUNSIZED(%struct.TYPE_32__*) #1

declare dso_local i32 @PyArray_DESCR_REPLACE(%struct.TYPE_32__*) #1

declare dso_local i32 @PyArray_NDIM(%struct.TYPE_32__*) #1

declare dso_local i64 @PyDataType_HASSUBARRAY(%struct.TYPE_32__*) #1

declare dso_local i64 @PyArray_IS_C_CONTIGUOUS(%struct.TYPE_32__*) #1

declare dso_local i64 @PyArray_IS_F_CONTIGUOUS(%struct.TYPE_32__*) #1

declare dso_local i64 @DEPRECATE(i8*) #1

declare dso_local i32* @PyArray_DIMS(%struct.TYPE_32__*) #1

declare dso_local i32* @PyArray_STRIDES(%struct.TYPE_32__*) #1

declare dso_local i64 @PyArray_NewFromDescr(i32*, %struct.TYPE_32__*, i32, i32*, i32*, i32, i32, i32*) #1

declare dso_local i32 @PyArray_DATA(%struct.TYPE_32__*) #1

declare dso_local i32 @PyArray_FLAGS(%struct.TYPE_32__*) #1

declare dso_local i32 @npy_free_cache_dim_array(%struct.TYPE_32__*) #1

declare dso_local i32 @Py_INCREF(%struct.TYPE_32__*) #1

declare dso_local i32 @PyArray_UpdateFlags(%struct.TYPE_32__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
