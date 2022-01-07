; ModuleID = '/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_ctors.c_discover_dimensions.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_ctors.c_discover_dimensions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32*, i32 }
%struct.TYPE_7__ = type { i32, i32, i32* }

@Generic = common dso_local global i32 0, align 4
@PyBUF_STRIDES = common dso_local global i32 0, align 4
@PyBUF_SIMPLE = common dso_local global i32 0, align 4
@PyBUF_ND = common dso_local global i32 0, align 4
@PyExc_BufferError = common dso_local global i32 0, align 4
@PyExc_TypeError = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"__array_struct__\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"__array_interface__\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"shape\00", align 1
@PyExc_RuntimeError = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [37 x i8] c"Invalid shape in __array_interface__\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"Could not convert object to sequence\00", align 1
@PyExc_KeyError = common dso_local global i32 0, align 4
@NPY_MAXDIMS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*, i32, i32, i32, i32*)* @discover_dimensions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @discover_dimensions(i32* %0, i32* %1, i32* %2, i32 %3, i32 %4, i32 %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_6__, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca %struct.TYPE_7__*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32*, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32*, align 8
  %29 = alloca i32, align 4
  %30 = alloca i32*, align 8
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i8*, align 8
  %34 = alloca i64, align 8
  %35 = alloca i32*, align 8
  %36 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store i32* %1, i32** %10, align 8
  store i32* %2, i32** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32* %6, i32** %15, align 8
  %37 = load i32*, i32** %10, align 8
  %38 = load i32, i32* %37, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %7
  store i32 0, i32* %8, align 4
  br label %500

41:                                               ; preds = %7
  %42 = load i32*, i32** %9, align 8
  %43 = call i64 @PyArray_Check(i32* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %74

45:                                               ; preds = %41
  %46 = load i32*, i32** %9, align 8
  store i32* %46, i32** %21, align 8
  %47 = load i32*, i32** %21, align 8
  %48 = call i32 @PyArray_NDIM(i32* %47)
  %49 = load i32*, i32** %10, align 8
  %50 = load i32, i32* %49, align 4
  %51 = icmp slt i32 %48, %50
  br i1 %51, label %52, label %56

52:                                               ; preds = %45
  %53 = load i32*, i32** %21, align 8
  %54 = call i32 @PyArray_NDIM(i32* %53)
  %55 = load i32*, i32** %10, align 8
  store i32 %54, i32* %55, align 4
  br label %56

56:                                               ; preds = %52, %45
  store i32 0, i32* %18, align 4
  br label %57

57:                                               ; preds = %70, %56
  %58 = load i32, i32* %18, align 4
  %59 = load i32*, i32** %10, align 8
  %60 = load i32, i32* %59, align 4
  %61 = icmp slt i32 %58, %60
  br i1 %61, label %62, label %73

62:                                               ; preds = %57
  %63 = load i32*, i32** %21, align 8
  %64 = load i32, i32* %18, align 4
  %65 = call i32 @PyArray_DIM(i32* %63, i32 %64)
  %66 = load i32*, i32** %11, align 8
  %67 = load i32, i32* %18, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  store i32 %65, i32* %69, align 4
  br label %70

70:                                               ; preds = %62
  %71 = load i32, i32* %18, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %18, align 4
  br label %57

73:                                               ; preds = %57
  store i32 0, i32* %8, align 4
  br label %500

74:                                               ; preds = %41
  %75 = load i32*, i32** %9, align 8
  %76 = load i32, i32* @Generic, align 4
  %77 = call i64 @PyArray_IsScalar(i32* %75, i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %74
  %80 = load i32*, i32** %10, align 8
  store i32 0, i32* %80, align 4
  store i32 0, i32* %8, align 4
  br label %500

81:                                               ; preds = %74
  %82 = load i32*, i32** %9, align 8
  %83 = call i32 @PySequence_Check(i32* %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %81
  %86 = load i32*, i32** %9, align 8
  %87 = call i64 @PySequence_Length(i32* %86)
  %88 = icmp slt i64 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %85, %81
  %90 = load i32*, i32** %10, align 8
  store i32 0, i32* %90, align 4
  %91 = call i32 (...) @PyErr_Clear()
  store i32 0, i32* %8, align 4
  br label %500

92:                                               ; preds = %85
  %93 = load i32*, i32** %9, align 8
  %94 = call i64 @PyString_Check(i32* %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %104, label %96

96:                                               ; preds = %92
  %97 = load i32*, i32** %9, align 8
  %98 = call i64 @PyBuffer_Check(i32* %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %104, label %100

100:                                              ; preds = %96
  %101 = load i32*, i32** %9, align 8
  %102 = call i64 @PyUnicode_Check(i32* %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %117

104:                                              ; preds = %100, %96, %92
  %105 = load i32, i32* %13, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %104
  %108 = load i32*, i32** %10, align 8
  store i32 0, i32* %108, align 4
  br label %116

109:                                              ; preds = %104
  %110 = load i32*, i32** %9, align 8
  %111 = call i64 @PySequence_Length(i32* %110)
  %112 = trunc i64 %111 to i32
  %113 = load i32*, i32** %11, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 0
  store i32 %112, i32* %114, align 4
  %115 = load i32*, i32** %10, align 8
  store i32 1, i32* %115, align 4
  br label %116

116:                                              ; preds = %109, %107
  store i32 0, i32* %8, align 4
  br label %500

117:                                              ; preds = %100
  %118 = load i32, i32* %14, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %126

120:                                              ; preds = %117
  %121 = load i32*, i32** %9, align 8
  %122 = call i64 @PyTuple_Check(i32* %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %120
  %125 = load i32*, i32** %10, align 8
  store i32 0, i32* %125, align 4
  store i32 0, i32* %8, align 4
  br label %500

126:                                              ; preds = %120, %117
  %127 = load i32*, i32** %9, align 8
  %128 = call i32 @PyObject_CheckBuffer(i32* %127)
  %129 = icmp eq i32 %128, 1
  br i1 %129, label %130, label %227

130:                                              ; preds = %126
  %131 = call i32 @memset(%struct.TYPE_6__* %19, i32 0, i32 24)
  %132 = load i32*, i32** %9, align 8
  %133 = load i32, i32* @PyBUF_STRIDES, align 4
  %134 = load i32, i32* @PyBUF_SIMPLE, align 4
  %135 = or i32 %133, %134
  %136 = call i64 @PyObject_GetBuffer(i32* %132, %struct.TYPE_6__* %19, i32 %135)
  %137 = icmp eq i64 %136, 0
  br i1 %137, label %145, label %138

138:                                              ; preds = %130
  %139 = load i32*, i32** %9, align 8
  %140 = load i32, i32* @PyBUF_ND, align 4
  %141 = load i32, i32* @PyBUF_SIMPLE, align 4
  %142 = or i32 %140, %141
  %143 = call i64 @PyObject_GetBuffer(i32* %139, %struct.TYPE_6__* %19, i32 %142)
  %144 = icmp eq i64 %143, 0
  br i1 %144, label %145, label %179

145:                                              ; preds = %138, %130
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  store i32 %147, i32* %22, align 4
  %148 = load i32, i32* %22, align 4
  %149 = load i32*, i32** %10, align 8
  %150 = load i32, i32* %149, align 4
  %151 = icmp slt i32 %148, %150
  br i1 %151, label %152, label %155

152:                                              ; preds = %145
  %153 = load i32, i32* %22, align 4
  %154 = load i32*, i32** %10, align 8
  store i32 %153, i32* %154, align 4
  br label %155

155:                                              ; preds = %152, %145
  store i32 0, i32* %18, align 4
  br label %156

156:                                              ; preds = %172, %155
  %157 = load i32, i32* %18, align 4
  %158 = load i32*, i32** %10, align 8
  %159 = load i32, i32* %158, align 4
  %160 = icmp slt i32 %157, %159
  br i1 %160, label %161, label %175

161:                                              ; preds = %156
  %162 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 1
  %163 = load i32*, i32** %162, align 8
  %164 = load i32, i32* %18, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i32, i32* %163, i64 %165
  %167 = load i32, i32* %166, align 4
  %168 = load i32*, i32** %11, align 8
  %169 = load i32, i32* %18, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i32, i32* %168, i64 %170
  store i32 %167, i32* %171, align 4
  br label %172

172:                                              ; preds = %161
  %173 = load i32, i32* %18, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %18, align 4
  br label %156

175:                                              ; preds = %156
  %176 = call i32 @PyBuffer_Release(%struct.TYPE_6__* %19)
  %177 = load i32*, i32** %9, align 8
  %178 = call i32 @_dealloc_cached_buffer_info(i32* %177)
  store i32 0, i32* %8, align 4
  br label %500

179:                                              ; preds = %138
  %180 = call i64 (...) @PyErr_Occurred()
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %194

182:                                              ; preds = %179
  %183 = load i32, i32* @PyExc_BufferError, align 4
  %184 = call i64 @PyErr_ExceptionMatches(i32 %183)
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %190, label %186

186:                                              ; preds = %182
  %187 = load i32, i32* @PyExc_TypeError, align 4
  %188 = call i64 @PyErr_ExceptionMatches(i32 %187)
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %192

190:                                              ; preds = %186, %182
  %191 = call i32 (...) @PyErr_Clear()
  br label %193

192:                                              ; preds = %186
  store i32 -1, i32* %8, align 4
  br label %500

193:                                              ; preds = %190
  br label %225

194:                                              ; preds = %179
  %195 = load i32*, i32** %9, align 8
  %196 = load i32, i32* @PyBUF_SIMPLE, align 4
  %197 = call i64 @PyObject_GetBuffer(i32* %195, %struct.TYPE_6__* %19, i32 %196)
  %198 = icmp eq i64 %197, 0
  br i1 %198, label %199, label %208

199:                                              ; preds = %194
  %200 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 2
  %201 = load i32, i32* %200, align 8
  %202 = load i32*, i32** %11, align 8
  %203 = getelementptr inbounds i32, i32* %202, i64 0
  store i32 %201, i32* %203, align 4
  %204 = load i32*, i32** %10, align 8
  store i32 1, i32* %204, align 4
  %205 = call i32 @PyBuffer_Release(%struct.TYPE_6__* %19)
  %206 = load i32*, i32** %9, align 8
  %207 = call i32 @_dealloc_cached_buffer_info(i32* %206)
  store i32 0, i32* %8, align 4
  br label %500

208:                                              ; preds = %194
  %209 = call i64 (...) @PyErr_Occurred()
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %211, label %223

211:                                              ; preds = %208
  %212 = load i32, i32* @PyExc_BufferError, align 4
  %213 = call i64 @PyErr_ExceptionMatches(i32 %212)
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %219, label %215

215:                                              ; preds = %211
  %216 = load i32, i32* @PyExc_TypeError, align 4
  %217 = call i64 @PyErr_ExceptionMatches(i32 %216)
  %218 = icmp ne i64 %217, 0
  br i1 %218, label %219, label %221

219:                                              ; preds = %215, %211
  %220 = call i32 (...) @PyErr_Clear()
  br label %222

221:                                              ; preds = %215
  store i32 -1, i32* %8, align 4
  br label %500

222:                                              ; preds = %219
  br label %223

223:                                              ; preds = %222, %208
  br label %224

224:                                              ; preds = %223
  br label %225

225:                                              ; preds = %224, %193
  br label %226

226:                                              ; preds = %225
  br label %227

227:                                              ; preds = %226, %126
  %228 = load i32*, i32** %9, align 8
  %229 = call i32* @PyArray_LookupSpecial_OnInstance(i32* %228, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  store i32* %229, i32** %16, align 8
  %230 = load i32*, i32** %16, align 8
  %231 = icmp ne i32* %230, null
  br i1 %231, label %232, label %289

232:                                              ; preds = %227
  store i32 -1, i32* %23, align 4
  %233 = load i32*, i32** %16, align 8
  %234 = call i64 @NpyCapsule_Check(i32* %233)
  %235 = icmp ne i64 %234, 0
  br i1 %235, label %236, label %282

236:                                              ; preds = %232
  %237 = load i32*, i32** %16, align 8
  %238 = call i64 @NpyCapsule_AsVoidPtr(i32* %237)
  %239 = inttoptr i64 %238 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %239, %struct.TYPE_7__** %24, align 8
  %240 = load %struct.TYPE_7__*, %struct.TYPE_7__** %24, align 8
  %241 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 8
  %243 = icmp eq i32 %242, 2
  br i1 %243, label %244, label %281

244:                                              ; preds = %236
  %245 = load %struct.TYPE_7__*, %struct.TYPE_7__** %24, align 8
  %246 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %245, i32 0, i32 1
  %247 = load i32, i32* %246, align 4
  store i32 %247, i32* %23, align 4
  %248 = load i32, i32* %23, align 4
  %249 = icmp sge i32 %248, 0
  br i1 %249, label %250, label %280

250:                                              ; preds = %244
  %251 = load i32, i32* %23, align 4
  %252 = load i32*, i32** %10, align 8
  %253 = load i32, i32* %252, align 4
  %254 = icmp slt i32 %251, %253
  br i1 %254, label %255, label %258

255:                                              ; preds = %250
  %256 = load i32, i32* %23, align 4
  %257 = load i32*, i32** %10, align 8
  store i32 %256, i32* %257, align 4
  br label %258

258:                                              ; preds = %255, %250
  store i32 0, i32* %18, align 4
  br label %259

259:                                              ; preds = %276, %258
  %260 = load i32, i32* %18, align 4
  %261 = load i32*, i32** %10, align 8
  %262 = load i32, i32* %261, align 4
  %263 = icmp slt i32 %260, %262
  br i1 %263, label %264, label %279

264:                                              ; preds = %259
  %265 = load %struct.TYPE_7__*, %struct.TYPE_7__** %24, align 8
  %266 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %265, i32 0, i32 2
  %267 = load i32*, i32** %266, align 8
  %268 = load i32, i32* %18, align 4
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds i32, i32* %267, i64 %269
  %271 = load i32, i32* %270, align 4
  %272 = load i32*, i32** %11, align 8
  %273 = load i32, i32* %18, align 4
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds i32, i32* %272, i64 %274
  store i32 %271, i32* %275, align 4
  br label %276

276:                                              ; preds = %264
  %277 = load i32, i32* %18, align 4
  %278 = add nsw i32 %277, 1
  store i32 %278, i32* %18, align 4
  br label %259

279:                                              ; preds = %259
  br label %280

280:                                              ; preds = %279, %244
  br label %281

281:                                              ; preds = %280, %236
  br label %282

282:                                              ; preds = %281, %232
  %283 = load i32*, i32** %16, align 8
  %284 = call i32 @Py_DECREF(i32* %283)
  %285 = load i32, i32* %23, align 4
  %286 = icmp sge i32 %285, 0
  br i1 %286, label %287, label %288

287:                                              ; preds = %282
  store i32 0, i32* %8, align 4
  br label %500

288:                                              ; preds = %282
  br label %295

289:                                              ; preds = %227
  %290 = call i64 (...) @PyErr_Occurred()
  %291 = icmp ne i64 %290, 0
  br i1 %291, label %292, label %294

292:                                              ; preds = %289
  %293 = call i32 (...) @PyErr_Clear()
  br label %294

294:                                              ; preds = %292, %289
  br label %295

295:                                              ; preds = %294, %288
  %296 = load i32*, i32** %9, align 8
  %297 = call i32* @PyArray_LookupSpecial_OnInstance(i32* %296, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  store i32* %297, i32** %16, align 8
  %298 = load i32*, i32** %16, align 8
  %299 = icmp ne i32* %298, null
  br i1 %299, label %300, label %362

300:                                              ; preds = %295
  store i32 -1, i32* %25, align 4
  %301 = load i32*, i32** %16, align 8
  %302 = call i64 @PyDict_Check(i32* %301)
  %303 = icmp ne i64 %302, 0
  br i1 %303, label %304, label %355

304:                                              ; preds = %300
  %305 = load i32*, i32** %16, align 8
  %306 = call i32* @PyDict_GetItemString(i32* %305, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  store i32* %306, i32** %26, align 8
  %307 = load i32*, i32** %26, align 8
  %308 = icmp ne i32* %307, null
  br i1 %308, label %309, label %354

309:                                              ; preds = %304
  %310 = load i32*, i32** %26, align 8
  %311 = call i64 @PyTuple_Check(i32* %310)
  %312 = icmp ne i64 %311, 0
  br i1 %312, label %313, label %354

313:                                              ; preds = %309
  %314 = load i32*, i32** %26, align 8
  %315 = call i32 @PyTuple_GET_SIZE(i32* %314)
  store i32 %315, i32* %25, align 4
  %316 = load i32, i32* %25, align 4
  %317 = load i32*, i32** %10, align 8
  %318 = load i32, i32* %317, align 4
  %319 = icmp slt i32 %316, %318
  br i1 %319, label %320, label %323

320:                                              ; preds = %313
  %321 = load i32, i32* %25, align 4
  %322 = load i32*, i32** %10, align 8
  store i32 %321, i32* %322, align 4
  br label %323

323:                                              ; preds = %320, %313
  store i32 0, i32* %18, align 4
  br label %324

324:                                              ; preds = %350, %323
  %325 = load i32, i32* %18, align 4
  %326 = load i32*, i32** %10, align 8
  %327 = load i32, i32* %326, align 4
  %328 = icmp slt i32 %325, %327
  br i1 %328, label %329, label %353

329:                                              ; preds = %324
  %330 = load i32*, i32** %26, align 8
  %331 = load i32, i32* %18, align 4
  %332 = call i32 @PyTuple_GET_ITEM(i32* %330, i32 %331)
  %333 = call i32 @PyInt_AsSsize_t(i32 %332)
  %334 = load i32*, i32** %11, align 8
  %335 = load i32, i32* %18, align 4
  %336 = sext i32 %335 to i64
  %337 = getelementptr inbounds i32, i32* %334, i64 %336
  store i32 %333, i32* %337, align 4
  %338 = load i32*, i32** %11, align 8
  %339 = load i32, i32* %18, align 4
  %340 = sext i32 %339 to i64
  %341 = getelementptr inbounds i32, i32* %338, i64 %340
  %342 = load i32, i32* %341, align 4
  %343 = icmp slt i32 %342, 0
  br i1 %343, label %344, label %349

344:                                              ; preds = %329
  %345 = load i32, i32* @PyExc_RuntimeError, align 4
  %346 = call i32 @PyErr_SetString(i32 %345, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  %347 = load i32*, i32** %16, align 8
  %348 = call i32 @Py_DECREF(i32* %347)
  store i32 -1, i32* %8, align 4
  br label %500

349:                                              ; preds = %329
  br label %350

350:                                              ; preds = %349
  %351 = load i32, i32* %18, align 4
  %352 = add nsw i32 %351, 1
  store i32 %352, i32* %18, align 4
  br label %324

353:                                              ; preds = %324
  br label %354

354:                                              ; preds = %353, %309, %304
  br label %355

355:                                              ; preds = %354, %300
  %356 = load i32*, i32** %16, align 8
  %357 = call i32 @Py_DECREF(i32* %356)
  %358 = load i32, i32* %25, align 4
  %359 = icmp sge i32 %358, 0
  br i1 %359, label %360, label %361

360:                                              ; preds = %355
  store i32 0, i32* %8, align 4
  br label %500

361:                                              ; preds = %355
  br label %368

362:                                              ; preds = %295
  %363 = call i64 (...) @PyErr_Occurred()
  %364 = icmp ne i64 %363, 0
  br i1 %364, label %365, label %367

365:                                              ; preds = %362
  %366 = call i32 (...) @PyErr_Clear()
  br label %367

367:                                              ; preds = %365, %362
  br label %368

368:                                              ; preds = %367, %361
  %369 = load i32*, i32** %9, align 8
  %370 = call i32* @PySequence_Fast(i32* %369, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0))
  store i32* %370, i32** %20, align 8
  %371 = load i32*, i32** %20, align 8
  %372 = icmp eq i32* %371, null
  br i1 %372, label %373, label %382

373:                                              ; preds = %368
  %374 = load i32, i32* @PyExc_KeyError, align 4
  %375 = call i64 @PyErr_ExceptionMatches(i32 %374)
  %376 = icmp ne i64 %375, 0
  br i1 %376, label %377, label %381

377:                                              ; preds = %373
  %378 = call i32 (...) @PyErr_Clear()
  %379 = load i32*, i32** %10, align 8
  store i32 0, i32* %379, align 4
  %380 = load i32*, i32** %15, align 8
  store i32 1, i32* %380, align 4
  store i32 0, i32* %8, align 4
  br label %500

381:                                              ; preds = %373
  store i32 -1, i32* %8, align 4
  br label %500

382:                                              ; preds = %368
  %383 = load i32*, i32** %20, align 8
  %384 = call i32 @PySequence_Fast_GET_SIZE(i32* %383)
  store i32 %384, i32* %17, align 4
  %385 = load i32, i32* %17, align 4
  %386 = load i32*, i32** %11, align 8
  %387 = getelementptr inbounds i32, i32* %386, i64 0
  store i32 %385, i32* %387, align 4
  %388 = load i32, i32* %17, align 4
  %389 = icmp eq i32 %388, 0
  br i1 %389, label %394, label %390

390:                                              ; preds = %382
  %391 = load i32*, i32** %10, align 8
  %392 = load i32, i32* %391, align 4
  %393 = icmp eq i32 %392, 1
  br i1 %393, label %394, label %398

394:                                              ; preds = %390, %382
  %395 = load i32*, i32** %10, align 8
  store i32 1, i32* %395, align 4
  %396 = load i32*, i32** %20, align 8
  %397 = call i32 @Py_DECREF(i32* %396)
  store i32 0, i32* %8, align 4
  br label %500

398:                                              ; preds = %390
  %399 = load i32*, i32** %10, align 8
  %400 = load i32, i32* %399, align 4
  %401 = sub nsw i32 %400, 1
  store i32 %401, i32* %27, align 4
  %402 = load i32*, i32** %11, align 8
  %403 = getelementptr inbounds i32, i32* %402, i64 1
  store i32* %403, i32** %28, align 8
  store i32 1, i32* %29, align 4
  %404 = load i32*, i32** %20, align 8
  %405 = call i32* @PySequence_Fast_GET_ITEM(i32* %404, i32 0)
  store i32* %405, i32** %30, align 8
  %406 = load i32*, i32** %30, align 8
  %407 = load i32*, i32** %28, align 8
  %408 = load i32, i32* %12, align 4
  %409 = load i32, i32* %13, align 4
  %410 = load i32, i32* %14, align 4
  %411 = load i32*, i32** %15, align 8
  %412 = call i32 @discover_dimensions(i32* %406, i32* %27, i32* %407, i32 %408, i32 %409, i32 %410, i32* %411)
  %413 = icmp slt i32 %412, 0
  br i1 %413, label %414, label %417

414:                                              ; preds = %398
  %415 = load i32*, i32** %20, align 8
  %416 = call i32 @Py_DECREF(i32* %415)
  store i32 -1, i32* %8, align 4
  br label %500

417:                                              ; preds = %398
  store i32 1, i32* %18, align 4
  br label %418

418:                                              ; preds = %485, %417
  %419 = load i32, i32* %18, align 4
  %420 = load i32, i32* %17, align 4
  %421 = icmp slt i32 %419, %420
  br i1 %421, label %422, label %488

422:                                              ; preds = %418
  %423 = load i32*, i32** %10, align 8
  %424 = load i32, i32* %423, align 4
  %425 = sub nsw i32 %424, 1
  store i32 %425, i32* %32, align 4
  %426 = load i32, i32* @NPY_MAXDIMS, align 4
  %427 = zext i32 %426 to i64
  %428 = call i8* @llvm.stacksave()
  store i8* %428, i8** %33, align 8
  %429 = alloca i32, i64 %427, align 16
  store i64 %427, i64* %34, align 8
  %430 = load i32*, i32** %20, align 8
  %431 = load i32, i32* %18, align 4
  %432 = call i32* @PySequence_Fast_GET_ITEM(i32* %430, i32 %431)
  store i32* %432, i32** %35, align 8
  %433 = load i32*, i32** %35, align 8
  %434 = load i32, i32* %12, align 4
  %435 = load i32, i32* %13, align 4
  %436 = load i32, i32* %14, align 4
  %437 = load i32*, i32** %15, align 8
  %438 = call i32 @discover_dimensions(i32* %433, i32* %32, i32* %429, i32 %434, i32 %435, i32 %436, i32* %437)
  %439 = icmp slt i32 %438, 0
  br i1 %439, label %440, label %443

440:                                              ; preds = %422
  %441 = load i32*, i32** %20, align 8
  %442 = call i32 @Py_DECREF(i32* %441)
  store i32 -1, i32* %8, align 4
  store i32 1, i32* %36, align 4
  br label %481

443:                                              ; preds = %422
  store i32 0, i32* %31, align 4
  br label %444

444:                                              ; preds = %467, %443
  %445 = load i32, i32* %31, align 4
  %446 = load i32, i32* %32, align 4
  %447 = icmp slt i32 %445, %446
  br i1 %447, label %448, label %452

448:                                              ; preds = %444
  %449 = load i32, i32* %31, align 4
  %450 = load i32, i32* %27, align 4
  %451 = icmp slt i32 %449, %450
  br label %452

452:                                              ; preds = %448, %444
  %453 = phi i1 [ false, %444 ], [ %451, %448 ]
  br i1 %453, label %454, label %470

454:                                              ; preds = %452
  %455 = load i32, i32* %31, align 4
  %456 = sext i32 %455 to i64
  %457 = getelementptr inbounds i32, i32* %429, i64 %456
  %458 = load i32, i32* %457, align 4
  %459 = load i32*, i32** %28, align 8
  %460 = load i32, i32* %31, align 4
  %461 = sext i32 %460 to i64
  %462 = getelementptr inbounds i32, i32* %459, i64 %461
  %463 = load i32, i32* %462, align 4
  %464 = icmp ne i32 %458, %463
  br i1 %464, label %465, label %466

465:                                              ; preds = %454
  br label %470

466:                                              ; preds = %454
  br label %467

467:                                              ; preds = %466
  %468 = load i32, i32* %31, align 4
  %469 = add nsw i32 %468, 1
  store i32 %469, i32* %31, align 4
  br label %444

470:                                              ; preds = %465, %452
  %471 = load i32, i32* %31, align 4
  %472 = load i32, i32* %32, align 4
  %473 = icmp ne i32 %471, %472
  br i1 %473, label %478, label %474

474:                                              ; preds = %470
  %475 = load i32, i32* %31, align 4
  %476 = load i32, i32* %27, align 4
  %477 = icmp ne i32 %475, %476
  br i1 %477, label %478, label %479

478:                                              ; preds = %474, %470
  store i32 0, i32* %29, align 4
  br label %479

479:                                              ; preds = %478, %474
  %480 = load i32, i32* %31, align 4
  store i32 %480, i32* %27, align 4
  store i32 0, i32* %36, align 4
  br label %481

481:                                              ; preds = %479, %440
  %482 = load i8*, i8** %33, align 8
  call void @llvm.stackrestore(i8* %482)
  %483 = load i32, i32* %36, align 4
  switch i32 %483, label %502 [
    i32 0, label %484
    i32 1, label %500
  ]

484:                                              ; preds = %481
  br label %485

485:                                              ; preds = %484
  %486 = load i32, i32* %18, align 4
  %487 = add nsw i32 %486, 1
  store i32 %487, i32* %18, align 4
  br label %418

488:                                              ; preds = %418
  %489 = load i32, i32* %27, align 4
  %490 = add nsw i32 %489, 1
  %491 = load i32*, i32** %10, align 8
  store i32 %490, i32* %491, align 4
  %492 = load i32, i32* %29, align 4
  %493 = icmp ne i32 %492, 0
  br i1 %493, label %496, label %494

494:                                              ; preds = %488
  %495 = load i32*, i32** %15, align 8
  store i32 1, i32* %495, align 4
  br label %496

496:                                              ; preds = %494, %488
  br label %497

497:                                              ; preds = %496
  %498 = load i32*, i32** %20, align 8
  %499 = call i32 @Py_DECREF(i32* %498)
  store i32 0, i32* %8, align 4
  br label %500

500:                                              ; preds = %497, %481, %414, %394, %381, %377, %360, %344, %287, %221, %199, %192, %175, %124, %116, %89, %79, %73, %40
  %501 = load i32, i32* %8, align 4
  ret i32 %501

502:                                              ; preds = %481
  unreachable
}

declare dso_local i64 @PyArray_Check(i32*) #1

declare dso_local i32 @PyArray_NDIM(i32*) #1

declare dso_local i32 @PyArray_DIM(i32*, i32) #1

declare dso_local i64 @PyArray_IsScalar(i32*, i32) #1

declare dso_local i32 @PySequence_Check(i32*) #1

declare dso_local i64 @PySequence_Length(i32*) #1

declare dso_local i32 @PyErr_Clear(...) #1

declare dso_local i64 @PyString_Check(i32*) #1

declare dso_local i64 @PyBuffer_Check(i32*) #1

declare dso_local i64 @PyUnicode_Check(i32*) #1

declare dso_local i64 @PyTuple_Check(i32*) #1

declare dso_local i32 @PyObject_CheckBuffer(i32*) #1

declare dso_local i32 @memset(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i64 @PyObject_GetBuffer(i32*, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @PyBuffer_Release(%struct.TYPE_6__*) #1

declare dso_local i32 @_dealloc_cached_buffer_info(i32*) #1

declare dso_local i64 @PyErr_Occurred(...) #1

declare dso_local i64 @PyErr_ExceptionMatches(i32) #1

declare dso_local i32* @PyArray_LookupSpecial_OnInstance(i32*, i8*) #1

declare dso_local i64 @NpyCapsule_Check(i32*) #1

declare dso_local i64 @NpyCapsule_AsVoidPtr(i32*) #1

declare dso_local i32 @Py_DECREF(i32*) #1

declare dso_local i64 @PyDict_Check(i32*) #1

declare dso_local i32* @PyDict_GetItemString(i32*, i8*) #1

declare dso_local i32 @PyTuple_GET_SIZE(i32*) #1

declare dso_local i32 @PyInt_AsSsize_t(i32) #1

declare dso_local i32 @PyTuple_GET_ITEM(i32*, i32) #1

declare dso_local i32 @PyErr_SetString(i32, i8*) #1

declare dso_local i32* @PySequence_Fast(i32*, i8*) #1

declare dso_local i32 @PySequence_Fast_GET_SIZE(i32*) #1

declare dso_local i32* @PySequence_Fast_GET_ITEM(i32*, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
