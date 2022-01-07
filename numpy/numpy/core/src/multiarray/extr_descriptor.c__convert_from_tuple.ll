; ModuleID = '/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_descriptor.c__convert_from_tuple.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_descriptor.c__convert_from_tuple.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, i32, i32*, i32* }
%struct.TYPE_18__ = type { i64, i32, %struct.TYPE_16__*, %struct.TYPE_18__*, %struct.TYPE_18__*, i32, i32, i64 }
%struct.TYPE_16__ = type { i32*, %struct.TYPE_18__* }

@PyExc_ValueError = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"invalid itemsize in generic type tuple\00", align 1
@NPY_UNICODE = common dso_local global i64 0, align 8
@__const._convert_from_tuple.shape = private unnamed_addr constant %struct.TYPE_17__ { i32 0, i32 -1, i32* null, i32* null }, align 8
@NPY_MAXDIMS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"invalid shape in fixed-type tuple.\00", align 1
@.str.2 = private unnamed_addr constant [147 x i8] c"Passing (type, 1) or '1type' as a synonym of type is deprecated; in a future version of numpy, it will be understood as (type, (1,)) / '(1,)type'.\00", align 1
@.str.3 = private unnamed_addr constant [64 x i8] c"invalid shape in fixed-type tuple: dimension smaller then zero.\00", align 1
@NPY_MAX_INT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [72 x i8] c"invalid shape in fixed-type tuple: dimension does not fit into a C int.\00", align 1
@.str.5 = private unnamed_addr constant [78 x i8] c"invalid shape in fixed-type tuple: dtype size in bytes must fit into a C int.\00", align 1
@NPY_VOID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_18__* (i32*, i32)* @_convert_from_tuple to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_18__* @_convert_from_tuple(i32* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_18__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca %struct.TYPE_18__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_17__, align 8
  %12 = alloca %struct.TYPE_18__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %17 = load i32*, i32** %4, align 8
  %18 = call i32 @PyTuple_GET_SIZE(i32* %17)
  %19 = icmp ne i32 %18, 2
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %3, align 8
  br label %326

21:                                               ; preds = %2
  %22 = load i32, i32* %5, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %21
  %25 = load i32*, i32** %4, align 8
  %26 = call i32* @PyTuple_GET_ITEM(i32* %25, i32 0)
  %27 = call i32 @PyArray_DescrAlignConverter(i32* %26, %struct.TYPE_18__** %6)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %24
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %3, align 8
  br label %326

30:                                               ; preds = %24
  br label %38

31:                                               ; preds = %21
  %32 = load i32*, i32** %4, align 8
  %33 = call i32* @PyTuple_GET_ITEM(i32* %32, i32 0)
  %34 = call i32 @PyArray_DescrConverter(i32* %33, %struct.TYPE_18__** %6)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %31
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %3, align 8
  br label %326

37:                                               ; preds = %31
  br label %38

38:                                               ; preds = %37, %30
  %39 = load i32*, i32** %4, align 8
  %40 = call i32* @PyTuple_GET_ITEM(i32* %39, i32 1)
  store i32* %40, i32** %8, align 8
  %41 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %42 = load i32*, i32** %8, align 8
  %43 = call %struct.TYPE_18__* @_use_inherit(%struct.TYPE_18__* %41, i32* %42, i32* %9)
  store %struct.TYPE_18__* %43, %struct.TYPE_18__** %7, align 8
  %44 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %45 = icmp ne %struct.TYPE_18__* %44, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %38
  %47 = load i32, i32* %9, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %46, %38
  %50 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %51 = call i32 @Py_DECREF(%struct.TYPE_18__* %50)
  %52 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  store %struct.TYPE_18__* %52, %struct.TYPE_18__** %3, align 8
  br label %326

53:                                               ; preds = %46
  %54 = call i32 (...) @PyErr_Clear()
  %55 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %56 = call i64 @PyDataType_ISUNSIZED(%struct.TYPE_18__* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %93

58:                                               ; preds = %53
  %59 = load i32*, i32** %4, align 8
  %60 = call i32* @PyTuple_GET_ITEM(i32* %59, i32 1)
  %61 = call i32 @PyArray_PyIntAsInt(i32* %60)
  store i32 %61, i32* %10, align 4
  %62 = load i32, i32* %10, align 4
  %63 = call i64 @error_converting(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %58
  %66 = load i32, i32* @PyExc_ValueError, align 4
  %67 = call i32 @PyErr_SetString(i32 %66, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %68 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %69 = call i32 @Py_DECREF(%struct.TYPE_18__* %68)
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %3, align 8
  br label %326

70:                                               ; preds = %58
  %71 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %72 = call i32 @PyArray_DESCR_REPLACE(%struct.TYPE_18__* %71)
  %73 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %74 = icmp eq %struct.TYPE_18__* %73, null
  br i1 %74, label %75, label %76

75:                                               ; preds = %70
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %3, align 8
  br label %326

76:                                               ; preds = %70
  %77 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @NPY_UNICODE, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %87

82:                                               ; preds = %76
  %83 = load i32, i32* %10, align 4
  %84 = shl i32 %83, 2
  %85 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %85, i32 0, i32 1
  store i32 %84, i32* %86, align 8
  br label %91

87:                                               ; preds = %76
  %88 = load i32, i32* %10, align 4
  %89 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %89, i32 0, i32 1
  store i32 %88, i32* %90, align 8
  br label %91

91:                                               ; preds = %87, %82
  %92 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  store %struct.TYPE_18__* %92, %struct.TYPE_18__** %3, align 8
  br label %326

93:                                               ; preds = %53
  %94 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %94, i32 0, i32 7
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %118

98:                                               ; preds = %93
  %99 = load i32*, i32** %8, align 8
  %100 = call i64 @PyDict_Check(i32* %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %106, label %102

102:                                              ; preds = %98
  %103 = load i32*, i32** %8, align 8
  %104 = call i64 @PyDictProxy_Check(i32* %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %118

106:                                              ; preds = %102, %98
  %107 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %108 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %107, i32 0, i32 7
  %109 = load i64, i64* %108, align 8
  %110 = load i32*, i32** %8, align 8
  %111 = call i32 @PyDict_Merge(i64 %109, i32* %110, i32 0)
  %112 = icmp eq i32 %111, -1
  br i1 %112, label %113, label %116

113:                                              ; preds = %106
  %114 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %115 = call i32 @Py_DECREF(%struct.TYPE_18__* %114)
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %3, align 8
  br label %326

116:                                              ; preds = %106
  %117 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  store %struct.TYPE_18__* %117, %struct.TYPE_18__** %3, align 8
  br label %326

118:                                              ; preds = %102, %93
  %119 = bitcast %struct.TYPE_17__* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %119, i8* align 8 bitcast (%struct.TYPE_17__* @__const._convert_from_tuple.shape to i8*), i64 24, i1 false)
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %12, align 8
  %120 = load i32*, i32** %8, align 8
  %121 = call i32 @PyArray_IntpConverter(i32* %120, %struct.TYPE_17__* %11)
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %128

123:                                              ; preds = %118
  %124 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %11, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* @NPY_MAXDIMS, align 4
  %127 = icmp sgt i32 %125, %126
  br i1 %127, label %128, label %131

128:                                              ; preds = %123, %118
  %129 = load i32, i32* @PyExc_ValueError, align 4
  %130 = call i32 @PyErr_SetString(i32 %129, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %320

131:                                              ; preds = %123
  %132 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %11, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %135, label %142

135:                                              ; preds = %131
  %136 = load i32*, i32** %8, align 8
  %137 = call i64 @PyTuple_Check(i32* %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %142

139:                                              ; preds = %135
  %140 = call i32 @npy_free_cache_dim_obj(%struct.TYPE_17__* byval(%struct.TYPE_17__) align 8 %11)
  %141 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  store %struct.TYPE_18__* %141, %struct.TYPE_18__** %3, align 8
  br label %326

142:                                              ; preds = %135, %131
  %143 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %11, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = icmp eq i32 %144, 1
  br i1 %145, label %146, label %163

146:                                              ; preds = %142
  %147 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %11, i32 0, i32 2
  %148 = load i32*, i32** %147, align 8
  %149 = getelementptr inbounds i32, i32* %148, i64 0
  %150 = load i32, i32* %149, align 4
  %151 = icmp eq i32 %150, 1
  br i1 %151, label %152, label %163

152:                                              ; preds = %146
  %153 = load i32*, i32** %8, align 8
  %154 = call i64 @PyNumber_Check(i32* %153)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %163

156:                                              ; preds = %152
  %157 = call i64 @DEPRECATE_FUTUREWARNING(i8* getelementptr inbounds ([147 x i8], [147 x i8]* @.str.2, i64 0, i64 0))
  %158 = icmp slt i64 %157, 0
  br i1 %158, label %159, label %160

159:                                              ; preds = %156
  br label %320

160:                                              ; preds = %156
  %161 = call i32 @npy_free_cache_dim_obj(%struct.TYPE_17__* byval(%struct.TYPE_17__) align 8 %11)
  %162 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  store %struct.TYPE_18__* %162, %struct.TYPE_18__** %3, align 8
  br label %326

163:                                              ; preds = %152, %146, %142
  store i32 0, i32* %14, align 4
  br label %164

164:                                              ; preds = %193, %163
  %165 = load i32, i32* %14, align 4
  %166 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %11, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = icmp slt i32 %165, %167
  br i1 %168, label %169, label %196

169:                                              ; preds = %164
  %170 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %11, i32 0, i32 2
  %171 = load i32*, i32** %170, align 8
  %172 = load i32, i32* %14, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i32, i32* %171, i64 %173
  %175 = load i32, i32* %174, align 4
  %176 = icmp slt i32 %175, 0
  br i1 %176, label %177, label %180

177:                                              ; preds = %169
  %178 = load i32, i32* @PyExc_ValueError, align 4
  %179 = call i32 @PyErr_SetString(i32 %178, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.3, i64 0, i64 0))
  br label %320

180:                                              ; preds = %169
  %181 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %11, i32 0, i32 2
  %182 = load i32*, i32** %181, align 8
  %183 = load i32, i32* %14, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i32, i32* %182, i64 %184
  %186 = load i32, i32* %185, align 4
  %187 = load i32, i32* @NPY_MAX_INT, align 4
  %188 = icmp sgt i32 %186, %187
  br i1 %188, label %189, label %192

189:                                              ; preds = %180
  %190 = load i32, i32* @PyExc_ValueError, align 4
  %191 = call i32 @PyErr_SetString(i32 %190, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.4, i64 0, i64 0))
  br label %320

192:                                              ; preds = %180
  br label %193

193:                                              ; preds = %192
  %194 = load i32, i32* %14, align 4
  %195 = add nsw i32 %194, 1
  store i32 %195, i32* %14, align 4
  br label %164

196:                                              ; preds = %164
  %197 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %11, i32 0, i32 2
  %198 = load i32*, i32** %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %11, i32 0, i32 1
  %200 = load i32, i32* %199, align 4
  %201 = call i32 @PyArray_OverflowMultiplyList(i32* %198, i32 %200)
  store i32 %201, i32* %13, align 4
  %202 = load i32, i32* %13, align 4
  %203 = icmp slt i32 %202, 0
  br i1 %203, label %208, label %204

204:                                              ; preds = %196
  %205 = load i32, i32* %13, align 4
  %206 = load i32, i32* @NPY_MAX_INT, align 4
  %207 = icmp sgt i32 %205, %206
  br i1 %207, label %208, label %209

208:                                              ; preds = %204, %196
  store i32 1, i32* %15, align 4
  br label %215

209:                                              ; preds = %204
  %210 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %211 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %210, i32 0, i32 1
  %212 = load i32, i32* %211, align 8
  %213 = load i32, i32* %13, align 4
  %214 = call i32 @npy_mul_with_overflow_int(i32* %16, i32 %212, i32 %213)
  store i32 %214, i32* %15, align 4
  br label %215

215:                                              ; preds = %209, %208
  %216 = load i32, i32* %15, align 4
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %221

218:                                              ; preds = %215
  %219 = load i32, i32* @PyExc_ValueError, align 4
  %220 = call i32 @PyErr_SetString(i32 %219, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.5, i64 0, i64 0))
  br label %320

221:                                              ; preds = %215
  %222 = load i32, i32* @NPY_VOID, align 4
  %223 = call %struct.TYPE_18__* @PyArray_DescrNewFromType(i32 %222)
  store %struct.TYPE_18__* %223, %struct.TYPE_18__** %12, align 8
  %224 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %225 = icmp eq %struct.TYPE_18__* %224, null
  br i1 %225, label %226, label %227

226:                                              ; preds = %221
  br label %320

227:                                              ; preds = %221
  %228 = load i32, i32* %16, align 4
  %229 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %230 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %229, i32 0, i32 1
  store i32 %228, i32* %230, align 8
  %231 = call %struct.TYPE_16__* @PyArray_malloc(i32 4)
  %232 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %233 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %232, i32 0, i32 2
  store %struct.TYPE_16__* %231, %struct.TYPE_16__** %233, align 8
  %234 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %235 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %234, i32 0, i32 2
  %236 = load %struct.TYPE_16__*, %struct.TYPE_16__** %235, align 8
  %237 = icmp eq %struct.TYPE_16__* %236, null
  br i1 %237, label %238, label %240

238:                                              ; preds = %227
  %239 = call i32 (...) @PyErr_NoMemory()
  br label %320

240:                                              ; preds = %227
  %241 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %242 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %241, i32 0, i32 6
  %243 = load i32, i32* %242, align 4
  %244 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %245 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %244, i32 0, i32 6
  store i32 %243, i32* %245, align 4
  %246 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %247 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %246, i32 0, i32 5
  %248 = load i32, i32* %247, align 8
  %249 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %250 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %249, i32 0, i32 5
  store i32 %248, i32* %250, align 8
  %251 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %252 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %253 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %252, i32 0, i32 2
  %254 = load %struct.TYPE_16__*, %struct.TYPE_16__** %253, align 8
  %255 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %254, i32 0, i32 1
  store %struct.TYPE_18__* %251, %struct.TYPE_18__** %255, align 8
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %6, align 8
  %256 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %257 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %256, i32 0, i32 4
  %258 = load %struct.TYPE_18__*, %struct.TYPE_18__** %257, align 8
  %259 = call i32 @Py_XDECREF(%struct.TYPE_18__* %258)
  %260 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %261 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %260, i32 0, i32 3
  %262 = load %struct.TYPE_18__*, %struct.TYPE_18__** %261, align 8
  %263 = call i32 @Py_XDECREF(%struct.TYPE_18__* %262)
  %264 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %265 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %264, i32 0, i32 4
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %265, align 8
  %266 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %267 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %266, i32 0, i32 3
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %267, align 8
  %268 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %11, i32 0, i32 1
  %269 = load i32, i32* %268, align 4
  %270 = call i32* @PyTuple_New(i32 %269)
  %271 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %272 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %271, i32 0, i32 2
  %273 = load %struct.TYPE_16__*, %struct.TYPE_16__** %272, align 8
  %274 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %273, i32 0, i32 0
  store i32* %270, i32** %274, align 8
  %275 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %276 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %275, i32 0, i32 2
  %277 = load %struct.TYPE_16__*, %struct.TYPE_16__** %276, align 8
  %278 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %277, i32 0, i32 0
  %279 = load i32*, i32** %278, align 8
  %280 = icmp eq i32* %279, null
  br i1 %280, label %281, label %282

281:                                              ; preds = %240
  br label %320

282:                                              ; preds = %240
  store i32 0, i32* %14, align 4
  br label %283

283:                                              ; preds = %314, %282
  %284 = load i32, i32* %14, align 4
  %285 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %11, i32 0, i32 1
  %286 = load i32, i32* %285, align 4
  %287 = icmp slt i32 %284, %286
  br i1 %287, label %288, label %317

288:                                              ; preds = %283
  %289 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %290 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %289, i32 0, i32 2
  %291 = load %struct.TYPE_16__*, %struct.TYPE_16__** %290, align 8
  %292 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %291, i32 0, i32 0
  %293 = load i32*, i32** %292, align 8
  %294 = load i32, i32* %14, align 4
  %295 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %11, i32 0, i32 2
  %296 = load i32*, i32** %295, align 8
  %297 = load i32, i32* %14, align 4
  %298 = sext i32 %297 to i64
  %299 = getelementptr inbounds i32, i32* %296, i64 %298
  %300 = load i32, i32* %299, align 4
  %301 = sext i32 %300 to i64
  %302 = call i32 @PyInt_FromLong(i64 %301)
  %303 = call i32 @PyTuple_SET_ITEM(i32* %293, i32 %294, i32 %302)
  %304 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %305 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %304, i32 0, i32 2
  %306 = load %struct.TYPE_16__*, %struct.TYPE_16__** %305, align 8
  %307 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %306, i32 0, i32 0
  %308 = load i32*, i32** %307, align 8
  %309 = load i32, i32* %14, align 4
  %310 = call i32* @PyTuple_GET_ITEM(i32* %308, i32 %309)
  %311 = icmp eq i32* %310, null
  br i1 %311, label %312, label %313

312:                                              ; preds = %288
  br label %320

313:                                              ; preds = %288
  br label %314

314:                                              ; preds = %313
  %315 = load i32, i32* %14, align 4
  %316 = add nsw i32 %315, 1
  store i32 %316, i32* %14, align 4
  br label %283

317:                                              ; preds = %283
  %318 = call i32 @npy_free_cache_dim_obj(%struct.TYPE_17__* byval(%struct.TYPE_17__) align 8 %11)
  %319 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  store %struct.TYPE_18__* %319, %struct.TYPE_18__** %3, align 8
  br label %326

320:                                              ; preds = %312, %281, %238, %226, %218, %189, %177, %159, %128
  %321 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %322 = call i32 @Py_XDECREF(%struct.TYPE_18__* %321)
  %323 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %324 = call i32 @Py_XDECREF(%struct.TYPE_18__* %323)
  %325 = call i32 @npy_free_cache_dim_obj(%struct.TYPE_17__* byval(%struct.TYPE_17__) align 8 %11)
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %3, align 8
  br label %326

326:                                              ; preds = %320, %317, %160, %139, %116, %113, %91, %75, %65, %49, %36, %29, %20
  %327 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  ret %struct.TYPE_18__* %327
}

declare dso_local i32 @PyTuple_GET_SIZE(i32*) #1

declare dso_local i32 @PyArray_DescrAlignConverter(i32*, %struct.TYPE_18__**) #1

declare dso_local i32* @PyTuple_GET_ITEM(i32*, i32) #1

declare dso_local i32 @PyArray_DescrConverter(i32*, %struct.TYPE_18__**) #1

declare dso_local %struct.TYPE_18__* @_use_inherit(%struct.TYPE_18__*, i32*, i32*) #1

declare dso_local i32 @Py_DECREF(%struct.TYPE_18__*) #1

declare dso_local i32 @PyErr_Clear(...) #1

declare dso_local i64 @PyDataType_ISUNSIZED(%struct.TYPE_18__*) #1

declare dso_local i32 @PyArray_PyIntAsInt(i32*) #1

declare dso_local i64 @error_converting(i32) #1

declare dso_local i32 @PyErr_SetString(i32, i8*) #1

declare dso_local i32 @PyArray_DESCR_REPLACE(%struct.TYPE_18__*) #1

declare dso_local i64 @PyDict_Check(i32*) #1

declare dso_local i64 @PyDictProxy_Check(i32*) #1

declare dso_local i32 @PyDict_Merge(i64, i32*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @PyArray_IntpConverter(i32*, %struct.TYPE_17__*) #1

declare dso_local i64 @PyTuple_Check(i32*) #1

declare dso_local i32 @npy_free_cache_dim_obj(%struct.TYPE_17__* byval(%struct.TYPE_17__) align 8) #1

declare dso_local i64 @PyNumber_Check(i32*) #1

declare dso_local i64 @DEPRECATE_FUTUREWARNING(i8*) #1

declare dso_local i32 @PyArray_OverflowMultiplyList(i32*, i32) #1

declare dso_local i32 @npy_mul_with_overflow_int(i32*, i32, i32) #1

declare dso_local %struct.TYPE_18__* @PyArray_DescrNewFromType(i32) #1

declare dso_local %struct.TYPE_16__* @PyArray_malloc(i32) #1

declare dso_local i32 @PyErr_NoMemory(...) #1

declare dso_local i32 @Py_XDECREF(%struct.TYPE_18__*) #1

declare dso_local i32* @PyTuple_New(i32) #1

declare dso_local i32 @PyTuple_SET_ITEM(i32*, i32, i32) #1

declare dso_local i32 @PyInt_FromLong(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
