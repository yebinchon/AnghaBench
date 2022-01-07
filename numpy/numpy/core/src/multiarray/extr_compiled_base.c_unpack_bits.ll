; ModuleID = '/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_compiled_base.c_unpack_bits.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_compiled_base.c_unpack_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.anon = type { [8 x i32] }
%struct.TYPE_3__ = type { i32, i32*, i32* }

@unpack_bits.unpack_init = internal global i32 0, align 4
@unpack_bits.unpack_lookup_big = internal global [256 x %union.anon] zeroinitializer, align 16
@NPY_MAXDIMS = common dso_local global i32 0, align 4
@NPY_BEGIN_THREADS_DEF = common dso_local global i32 0, align 4
@NPY_UBYTE = common dso_local global i64 0, align 8
@PyExc_TypeError = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"Expected an input array of unsigned byte data type\00", align 1
@__const.unpack_bits.newdim = private unnamed_addr constant %struct.TYPE_3__ { i32 0, i32* inttoptr (i64 1 to i32*), i32* null }, align 8
@NPY_CORDER = common dso_local global i32 0, align 4
@Py_None = common dso_local global i32* null, align 8
@PyExc_ValueError = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"-count larger than number of elements\00", align 1
@NPY_END_THREADS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32, i32*, i8)* @unpack_bits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @unpack_bits(i32* %0, i32 %1, i32* %2, i8 signext %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i8, align 1
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32*, align 8
  %26 = alloca %struct.TYPE_3__, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i8*, align 8
  %33 = alloca i8*, align 8
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i8 %3, i8* %9, align 1
  store i32* null, i32** %11, align 8
  store i32* null, i32** %12, align 8
  %37 = load i32, i32* @NPY_MAXDIMS, align 4
  %38 = zext i32 %37 to i64
  %39 = call i8* @llvm.stacksave()
  store i8* %39, i8** %13, align 8
  %40 = alloca i32, i64 %38, align 16
  store i64 %38, i64* %14, align 8
  %41 = load i32, i32* @NPY_BEGIN_THREADS_DEF, align 4
  %42 = load i32*, i32** %6, align 8
  %43 = call i64 @PyArray_FROM_O(i32* %42)
  %44 = inttoptr i64 %43 to i32*
  store i32* %44, i32** %10, align 8
  %45 = load i32*, i32** %10, align 8
  %46 = icmp eq i32* %45, null
  br i1 %46, label %47, label %48

47:                                               ; preds = %4
  store i32* null, i32** %5, align 8
  store i32 1, i32* %24, align 4
  br label %507

48:                                               ; preds = %4
  %49 = load i32*, i32** %10, align 8
  %50 = call i64 @PyArray_TYPE(i32* %49)
  %51 = load i64, i64* @NPY_UBYTE, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %53, label %58

53:                                               ; preds = %48
  %54 = load i32, i32* @PyExc_TypeError, align 4
  %55 = call i32 @PyErr_SetString(i32 %54, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  %56 = load i32*, i32** %10, align 8
  %57 = call i32 @Py_DECREF(i32* %56)
  br label %502

58:                                               ; preds = %48
  %59 = load i32*, i32** %10, align 8
  %60 = call i64 @PyArray_CheckAxis(i32* %59, i32* %7, i32 0)
  %61 = inttoptr i64 %60 to i32*
  store i32* %61, i32** %11, align 8
  %62 = load i32*, i32** %10, align 8
  %63 = call i32 @Py_DECREF(i32* %62)
  %64 = load i32*, i32** %11, align 8
  %65 = icmp eq i32* %64, null
  br i1 %65, label %66, label %67

66:                                               ; preds = %58
  store i32* null, i32** %5, align 8
  store i32 1, i32* %24, align 4
  br label %507

67:                                               ; preds = %58
  %68 = load i32*, i32** %11, align 8
  %69 = call i32 @PyArray_NDIM(i32* %68)
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %85

71:                                               ; preds = %67
  %72 = bitcast %struct.TYPE_3__* %26 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %72, i8* align 8 bitcast (%struct.TYPE_3__* @__const.unpack_bits.newdim to i8*), i64 24, i1 false)
  store i32 1, i32* %27, align 4
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  store i32* %27, i32** %73, align 8
  %74 = load i32*, i32** %11, align 8
  %75 = load i32, i32* @NPY_CORDER, align 4
  %76 = call i64 @PyArray_Newshape(i32* %74, %struct.TYPE_3__* %26, i32 %75)
  %77 = inttoptr i64 %76 to i32*
  store i32* %77, i32** %25, align 8
  %78 = load i32*, i32** %11, align 8
  %79 = call i32 @Py_DECREF(i32* %78)
  %80 = load i32*, i32** %25, align 8
  %81 = icmp eq i32* %80, null
  br i1 %81, label %82, label %83

82:                                               ; preds = %71
  store i32* null, i32** %5, align 8
  store i32 1, i32* %24, align 4
  br label %507

83:                                               ; preds = %71
  %84 = load i32*, i32** %25, align 8
  store i32* %84, i32** %11, align 8
  br label %85

85:                                               ; preds = %83, %67
  store i32 0, i32* %15, align 4
  br label %86

86:                                               ; preds = %98, %85
  %87 = load i32, i32* %15, align 4
  %88 = load i32*, i32** %11, align 8
  %89 = call i32 @PyArray_NDIM(i32* %88)
  %90 = icmp slt i32 %87, %89
  br i1 %90, label %91, label %101

91:                                               ; preds = %86
  %92 = load i32*, i32** %11, align 8
  %93 = load i32, i32* %15, align 4
  %94 = call i32 @PyArray_DIM(i32* %92, i32 %93)
  %95 = load i32, i32* %15, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %40, i64 %96
  store i32 %94, i32* %97, align 4
  br label %98

98:                                               ; preds = %91
  %99 = load i32, i32* %15, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %15, align 4
  br label %86

101:                                              ; preds = %86
  %102 = load i32, i32* %7, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %40, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = mul nsw i32 %105, 8
  store i32 %106, i32* %104, align 4
  %107 = load i32*, i32** %8, align 8
  %108 = load i32*, i32** @Py_None, align 8
  %109 = icmp ne i32* %107, %108
  br i1 %109, label %110, label %142

110:                                              ; preds = %101
  %111 = load i32*, i32** %8, align 8
  %112 = call i32 @PyArray_PyIntAsIntp(i32* %111)
  store i32 %112, i32* %18, align 4
  %113 = load i32, i32* %18, align 4
  %114 = call i64 @error_converting(i32 %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %110
  br label %502

117:                                              ; preds = %110
  %118 = load i32, i32* %18, align 4
  %119 = icmp slt i32 %118, 0
  br i1 %119, label %120, label %136

120:                                              ; preds = %117
  %121 = load i32, i32* %18, align 4
  %122 = load i32, i32* %7, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %40, i64 %123
  %125 = load i32, i32* %124, align 4
  %126 = add nsw i32 %125, %121
  store i32 %126, i32* %124, align 4
  %127 = load i32, i32* %7, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32, i32* %40, i64 %128
  %130 = load i32, i32* %129, align 4
  %131 = icmp slt i32 %130, 0
  br i1 %131, label %132, label %135

132:                                              ; preds = %120
  %133 = load i32, i32* @PyExc_ValueError, align 4
  %134 = call i32 @PyErr_Format(i32 %133, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  br label %502

135:                                              ; preds = %120
  br label %141

136:                                              ; preds = %117
  %137 = load i32, i32* %18, align 4
  %138 = load i32, i32* %7, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i32, i32* %40, i64 %139
  store i32 %137, i32* %140, align 4
  br label %141

141:                                              ; preds = %136, %135
  br label %142

142:                                              ; preds = %141, %101
  %143 = load i32*, i32** %11, align 8
  %144 = call i32 @Py_TYPE(i32* %143)
  %145 = load i64, i64* @NPY_UBYTE, align 8
  %146 = call i32 @PyArray_DescrFromType(i64 %145)
  %147 = load i32*, i32** %11, align 8
  %148 = call i32 @PyArray_NDIM(i32* %147)
  %149 = load i32*, i32** %11, align 8
  %150 = call i32 @PyArray_ISFORTRAN(i32* %149)
  %151 = call i64 @PyArray_NewFromDescr(i32 %144, i32 %146, i32 %148, i32* %40, i32* null, i32* null, i32 %150, i32* null)
  %152 = inttoptr i64 %151 to i32*
  store i32* %152, i32** %12, align 8
  %153 = load i32*, i32** %12, align 8
  %154 = icmp eq i32* %153, null
  br i1 %154, label %155, label %156

155:                                              ; preds = %142
  br label %502

156:                                              ; preds = %142
  %157 = load i32*, i32** %11, align 8
  %158 = call i64 @PyArray_IterAllButAxis(i32* %157, i32* %7)
  %159 = inttoptr i64 %158 to i32*
  store i32* %159, i32** %16, align 8
  %160 = load i32*, i32** %12, align 8
  %161 = call i64 @PyArray_IterAllButAxis(i32* %160, i32* %7)
  %162 = inttoptr i64 %161 to i32*
  store i32* %162, i32** %17, align 8
  %163 = load i32*, i32** %16, align 8
  %164 = icmp eq i32* %163, null
  br i1 %164, label %168, label %165

165:                                              ; preds = %156
  %166 = load i32*, i32** %17, align 8
  %167 = icmp eq i32* %166, null
  br i1 %167, label %168, label %173

168:                                              ; preds = %165, %156
  %169 = load i32*, i32** %16, align 8
  %170 = call i32 @Py_XDECREF(i32* %169)
  %171 = load i32*, i32** %17, align 8
  %172 = call i32 @Py_XDECREF(i32* %171)
  br label %502

173:                                              ; preds = %165
  %174 = load i32, i32* @unpack_bits.unpack_init, align 4
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %176, label %210

176:                                              ; preds = %173
  store i32 0, i32* %28, align 4
  br label %177

177:                                              ; preds = %206, %176
  %178 = load i32, i32* %28, align 4
  %179 = icmp slt i32 %178, 256
  br i1 %179, label %180, label %209

180:                                              ; preds = %177
  store i32 0, i32* %29, align 4
  br label %181

181:                                              ; preds = %202, %180
  %182 = load i32, i32* %29, align 4
  %183 = icmp slt i32 %182, 8
  br i1 %183, label %184, label %205

184:                                              ; preds = %181
  %185 = load i32, i32* %28, align 4
  %186 = load i32, i32* %29, align 4
  %187 = shl i32 1, %186
  %188 = and i32 %185, %187
  %189 = load i32, i32* %29, align 4
  %190 = shl i32 1, %189
  %191 = icmp eq i32 %188, %190
  %192 = zext i1 %191 to i32
  store i32 %192, i32* %30, align 4
  %193 = load i32, i32* %30, align 4
  %194 = load i32, i32* %28, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds [256 x %union.anon], [256 x %union.anon]* @unpack_bits.unpack_lookup_big, i64 0, i64 %195
  %197 = bitcast %union.anon* %196 to [8 x i32]*
  %198 = load i32, i32* %29, align 4
  %199 = sub nsw i32 7, %198
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds [8 x i32], [8 x i32]* %197, i64 0, i64 %200
  store i32 %193, i32* %201, align 4
  br label %202

202:                                              ; preds = %184
  %203 = load i32, i32* %29, align 4
  %204 = add nsw i32 %203, 1
  store i32 %204, i32* %29, align 4
  br label %181

205:                                              ; preds = %181
  br label %206

206:                                              ; preds = %205
  %207 = load i32, i32* %28, align 4
  %208 = add nsw i32 %207, 1
  store i32 %208, i32* %28, align 4
  br label %177

209:                                              ; preds = %177
  store i32 1, i32* @unpack_bits.unpack_init, align 4
  br label %210

210:                                              ; preds = %209, %173
  %211 = load i32*, i32** %11, align 8
  %212 = load i32, i32* %7, align 4
  %213 = call i32 @PyArray_DIM(i32* %211, i32 %212)
  %214 = mul nsw i32 %213, 8
  store i32 %214, i32* %18, align 4
  %215 = load i32, i32* %7, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds i32, i32* %40, i64 %216
  %218 = load i32, i32* %217, align 4
  %219 = load i32, i32* %18, align 4
  %220 = icmp sgt i32 %218, %219
  br i1 %220, label %221, label %230

221:                                              ; preds = %210
  %222 = load i32, i32* %18, align 4
  %223 = sdiv i32 %222, 8
  store i32 %223, i32* %19, align 4
  store i32 0, i32* %20, align 4
  %224 = load i32, i32* %7, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds i32, i32* %40, i64 %225
  %227 = load i32, i32* %226, align 4
  %228 = load i32, i32* %18, align 4
  %229 = sub nsw i32 %227, %228
  store i32 %229, i32* %21, align 4
  br label %241

230:                                              ; preds = %210
  %231 = load i32, i32* %7, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds i32, i32* %40, i64 %232
  %234 = load i32, i32* %233, align 4
  %235 = sdiv i32 %234, 8
  store i32 %235, i32* %19, align 4
  %236 = load i32, i32* %7, align 4
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds i32, i32* %40, i64 %237
  %239 = load i32, i32* %238, align 4
  %240 = srem i32 %239, 8
  store i32 %240, i32* %20, align 4
  store i32 0, i32* %21, align 4
  br label %241

241:                                              ; preds = %230, %221
  %242 = load i32*, i32** %11, align 8
  %243 = load i32, i32* %7, align 4
  %244 = call i32 @PyArray_STRIDE(i32* %242, i32 %243)
  store i32 %244, i32* %22, align 4
  %245 = load i32*, i32** %12, align 8
  %246 = load i32, i32* %7, align 4
  %247 = call i32 @PyArray_STRIDE(i32* %245, i32 %246)
  store i32 %247, i32* %23, align 4
  %248 = load i32*, i32** %12, align 8
  %249 = call i32 @PyArray_Size(i32* %248)
  %250 = sdiv i32 %249, 8
  %251 = call i32 @NPY_BEGIN_THREADS_THRESHOLDED(i32 %250)
  br label %252

252:                                              ; preds = %488, %241
  %253 = load i32*, i32** %16, align 8
  %254 = call i64 @PyArray_ITER_NOTDONE(i32* %253)
  %255 = icmp ne i64 %254, 0
  br i1 %255, label %256, label %493

256:                                              ; preds = %252
  %257 = load i32*, i32** %16, align 8
  %258 = call i8* @PyArray_ITER_DATA(i32* %257)
  store i8* %258, i8** %32, align 8
  %259 = load i32*, i32** %17, align 8
  %260 = call i8* @PyArray_ITER_DATA(i32* %259)
  store i8* %260, i8** %33, align 8
  %261 = load i32, i32* %23, align 4
  %262 = icmp eq i32 %261, 1
  br i1 %262, label %263, label %351

263:                                              ; preds = %256
  %264 = load i8, i8* %9, align 1
  %265 = sext i8 %264 to i32
  %266 = icmp eq i32 %265, 98
  br i1 %266, label %267, label %291

267:                                              ; preds = %263
  store i32 0, i32* %31, align 4
  br label %268

268:                                              ; preds = %287, %267
  %269 = load i32, i32* %31, align 4
  %270 = load i32, i32* %19, align 4
  %271 = icmp slt i32 %269, %270
  br i1 %271, label %272, label %290

272:                                              ; preds = %268
  %273 = load i8*, i8** %32, align 8
  %274 = load i8, i8* %273, align 1
  %275 = zext i8 %274 to i64
  %276 = getelementptr inbounds [256 x %union.anon], [256 x %union.anon]* @unpack_bits.unpack_lookup_big, i64 0, i64 %275
  %277 = bitcast %union.anon* %276 to i32*
  %278 = load i32, i32* %277, align 16
  store i32 %278, i32* %34, align 4
  %279 = load i8*, i8** %33, align 8
  %280 = call i32 @memcpy(i8* %279, i32* %34, i32 8)
  %281 = load i8*, i8** %33, align 8
  %282 = getelementptr inbounds i8, i8* %281, i64 8
  store i8* %282, i8** %33, align 8
  %283 = load i32, i32* %22, align 4
  %284 = load i8*, i8** %32, align 8
  %285 = sext i32 %283 to i64
  %286 = getelementptr inbounds i8, i8* %284, i64 %285
  store i8* %286, i8** %32, align 8
  br label %287

287:                                              ; preds = %272
  %288 = load i32, i32* %31, align 4
  %289 = add nsw i32 %288, 1
  store i32 %289, i32* %31, align 4
  br label %268

290:                                              ; preds = %268
  br label %322

291:                                              ; preds = %263
  store i32 0, i32* %31, align 4
  br label %292

292:                                              ; preds = %318, %291
  %293 = load i32, i32* %31, align 4
  %294 = load i32, i32* %19, align 4
  %295 = icmp slt i32 %293, %294
  br i1 %295, label %296, label %321

296:                                              ; preds = %292
  %297 = load i8*, i8** %32, align 8
  %298 = load i8, i8* %297, align 1
  %299 = zext i8 %298 to i64
  %300 = getelementptr inbounds [256 x %union.anon], [256 x %union.anon]* @unpack_bits.unpack_lookup_big, i64 0, i64 %299
  %301 = bitcast %union.anon* %300 to i32*
  %302 = load i32, i32* %301, align 16
  store i32 %302, i32* %35, align 4
  %303 = load i8, i8* %9, align 1
  %304 = sext i8 %303 to i32
  %305 = icmp ne i32 %304, 98
  br i1 %305, label %306, label %309

306:                                              ; preds = %296
  %307 = load i32, i32* %35, align 4
  %308 = call i32 @npy_bswap8(i32 %307)
  store i32 %308, i32* %35, align 4
  br label %309

309:                                              ; preds = %306, %296
  %310 = load i8*, i8** %33, align 8
  %311 = call i32 @memcpy(i8* %310, i32* %35, i32 8)
  %312 = load i8*, i8** %33, align 8
  %313 = getelementptr inbounds i8, i8* %312, i64 8
  store i8* %313, i8** %33, align 8
  %314 = load i32, i32* %22, align 4
  %315 = load i8*, i8** %32, align 8
  %316 = sext i32 %314 to i64
  %317 = getelementptr inbounds i8, i8* %315, i64 %316
  store i8* %317, i8** %32, align 8
  br label %318

318:                                              ; preds = %309
  %319 = load i32, i32* %31, align 4
  %320 = add nsw i32 %319, 1
  store i32 %320, i32* %31, align 4
  br label %292

321:                                              ; preds = %292
  br label %322

322:                                              ; preds = %321, %290
  %323 = load i32, i32* %20, align 4
  %324 = icmp ne i32 %323, 0
  br i1 %324, label %325, label %342

325:                                              ; preds = %322
  %326 = load i8*, i8** %32, align 8
  %327 = load i8, i8* %326, align 1
  %328 = zext i8 %327 to i64
  %329 = getelementptr inbounds [256 x %union.anon], [256 x %union.anon]* @unpack_bits.unpack_lookup_big, i64 0, i64 %328
  %330 = bitcast %union.anon* %329 to i32*
  %331 = load i32, i32* %330, align 16
  store i32 %331, i32* %36, align 4
  %332 = load i8, i8* %9, align 1
  %333 = sext i8 %332 to i32
  %334 = icmp ne i32 %333, 98
  br i1 %334, label %335, label %338

335:                                              ; preds = %325
  %336 = load i32, i32* %36, align 4
  %337 = call i32 @npy_bswap8(i32 %336)
  store i32 %337, i32* %36, align 4
  br label %338

338:                                              ; preds = %335, %325
  %339 = load i8*, i8** %33, align 8
  %340 = load i32, i32* %20, align 4
  %341 = call i32 @memcpy(i8* %339, i32* %36, i32 %340)
  br label %350

342:                                              ; preds = %322
  %343 = load i32, i32* %21, align 4
  %344 = icmp ne i32 %343, 0
  br i1 %344, label %345, label %349

345:                                              ; preds = %342
  %346 = load i8*, i8** %33, align 8
  %347 = load i32, i32* %21, align 4
  %348 = call i32 @memset(i8* %346, i32 0, i32 %347)
  br label %349

349:                                              ; preds = %345, %342
  br label %350

350:                                              ; preds = %349, %338
  br label %488

351:                                              ; preds = %256
  %352 = load i8, i8* %9, align 1
  %353 = sext i8 %352 to i32
  %354 = icmp eq i32 %353, 98
  br i1 %354, label %355, label %414

355:                                              ; preds = %351
  store i32 0, i32* %31, align 4
  br label %356

356:                                              ; preds = %387, %355
  %357 = load i32, i32* %31, align 4
  %358 = load i32, i32* %19, align 4
  %359 = icmp slt i32 %357, %358
  br i1 %359, label %360, label %390

360:                                              ; preds = %356
  store i32 0, i32* %15, align 4
  br label %361

361:                                              ; preds = %379, %360
  %362 = load i32, i32* %15, align 4
  %363 = icmp slt i32 %362, 8
  br i1 %363, label %364, label %382

364:                                              ; preds = %361
  %365 = load i8*, i8** %32, align 8
  %366 = load i8, i8* %365, align 1
  %367 = zext i8 %366 to i32
  %368 = load i32, i32* %15, align 4
  %369 = ashr i32 128, %368
  %370 = and i32 %367, %369
  %371 = icmp ne i32 %370, 0
  %372 = zext i1 %371 to i32
  %373 = trunc i32 %372 to i8
  %374 = load i8*, i8** %33, align 8
  store i8 %373, i8* %374, align 1
  %375 = load i32, i32* %23, align 4
  %376 = load i8*, i8** %33, align 8
  %377 = sext i32 %375 to i64
  %378 = getelementptr inbounds i8, i8* %376, i64 %377
  store i8* %378, i8** %33, align 8
  br label %379

379:                                              ; preds = %364
  %380 = load i32, i32* %15, align 4
  %381 = add nsw i32 %380, 1
  store i32 %381, i32* %15, align 4
  br label %361

382:                                              ; preds = %361
  %383 = load i32, i32* %22, align 4
  %384 = load i8*, i8** %32, align 8
  %385 = sext i32 %383 to i64
  %386 = getelementptr inbounds i8, i8* %384, i64 %385
  store i8* %386, i8** %32, align 8
  br label %387

387:                                              ; preds = %382
  %388 = load i32, i32* %31, align 4
  %389 = add nsw i32 %388, 1
  store i32 %389, i32* %31, align 4
  br label %356

390:                                              ; preds = %356
  store i32 0, i32* %15, align 4
  br label %391

391:                                              ; preds = %410, %390
  %392 = load i32, i32* %15, align 4
  %393 = load i32, i32* %20, align 4
  %394 = icmp slt i32 %392, %393
  br i1 %394, label %395, label %413

395:                                              ; preds = %391
  %396 = load i8*, i8** %32, align 8
  %397 = load i8, i8* %396, align 1
  %398 = zext i8 %397 to i32
  %399 = load i32, i32* %15, align 4
  %400 = ashr i32 128, %399
  %401 = and i32 %398, %400
  %402 = icmp ne i32 %401, 0
  %403 = zext i1 %402 to i32
  %404 = trunc i32 %403 to i8
  %405 = load i8*, i8** %33, align 8
  store i8 %404, i8* %405, align 1
  %406 = load i32, i32* %23, align 4
  %407 = load i8*, i8** %33, align 8
  %408 = sext i32 %406 to i64
  %409 = getelementptr inbounds i8, i8* %407, i64 %408
  store i8* %409, i8** %33, align 8
  br label %410

410:                                              ; preds = %395
  %411 = load i32, i32* %15, align 4
  %412 = add nsw i32 %411, 1
  store i32 %412, i32* %15, align 4
  br label %391

413:                                              ; preds = %391
  br label %473

414:                                              ; preds = %351
  store i32 0, i32* %31, align 4
  br label %415

415:                                              ; preds = %446, %414
  %416 = load i32, i32* %31, align 4
  %417 = load i32, i32* %19, align 4
  %418 = icmp slt i32 %416, %417
  br i1 %418, label %419, label %449

419:                                              ; preds = %415
  store i32 0, i32* %15, align 4
  br label %420

420:                                              ; preds = %438, %419
  %421 = load i32, i32* %15, align 4
  %422 = icmp slt i32 %421, 8
  br i1 %422, label %423, label %441

423:                                              ; preds = %420
  %424 = load i8*, i8** %32, align 8
  %425 = load i8, i8* %424, align 1
  %426 = zext i8 %425 to i32
  %427 = load i32, i32* %15, align 4
  %428 = shl i32 1, %427
  %429 = and i32 %426, %428
  %430 = icmp ne i32 %429, 0
  %431 = zext i1 %430 to i32
  %432 = trunc i32 %431 to i8
  %433 = load i8*, i8** %33, align 8
  store i8 %432, i8* %433, align 1
  %434 = load i32, i32* %23, align 4
  %435 = load i8*, i8** %33, align 8
  %436 = sext i32 %434 to i64
  %437 = getelementptr inbounds i8, i8* %435, i64 %436
  store i8* %437, i8** %33, align 8
  br label %438

438:                                              ; preds = %423
  %439 = load i32, i32* %15, align 4
  %440 = add nsw i32 %439, 1
  store i32 %440, i32* %15, align 4
  br label %420

441:                                              ; preds = %420
  %442 = load i32, i32* %22, align 4
  %443 = load i8*, i8** %32, align 8
  %444 = sext i32 %442 to i64
  %445 = getelementptr inbounds i8, i8* %443, i64 %444
  store i8* %445, i8** %32, align 8
  br label %446

446:                                              ; preds = %441
  %447 = load i32, i32* %31, align 4
  %448 = add nsw i32 %447, 1
  store i32 %448, i32* %31, align 4
  br label %415

449:                                              ; preds = %415
  store i32 0, i32* %15, align 4
  br label %450

450:                                              ; preds = %469, %449
  %451 = load i32, i32* %15, align 4
  %452 = load i32, i32* %20, align 4
  %453 = icmp slt i32 %451, %452
  br i1 %453, label %454, label %472

454:                                              ; preds = %450
  %455 = load i8*, i8** %32, align 8
  %456 = load i8, i8* %455, align 1
  %457 = zext i8 %456 to i32
  %458 = load i32, i32* %15, align 4
  %459 = shl i32 1, %458
  %460 = and i32 %457, %459
  %461 = icmp ne i32 %460, 0
  %462 = zext i1 %461 to i32
  %463 = trunc i32 %462 to i8
  %464 = load i8*, i8** %33, align 8
  store i8 %463, i8* %464, align 1
  %465 = load i32, i32* %23, align 4
  %466 = load i8*, i8** %33, align 8
  %467 = sext i32 %465 to i64
  %468 = getelementptr inbounds i8, i8* %466, i64 %467
  store i8* %468, i8** %33, align 8
  br label %469

469:                                              ; preds = %454
  %470 = load i32, i32* %15, align 4
  %471 = add nsw i32 %470, 1
  store i32 %471, i32* %15, align 4
  br label %450

472:                                              ; preds = %450
  br label %473

473:                                              ; preds = %472, %413
  store i32 0, i32* %31, align 4
  br label %474

474:                                              ; preds = %484, %473
  %475 = load i32, i32* %31, align 4
  %476 = load i32, i32* %21, align 4
  %477 = icmp slt i32 %475, %476
  br i1 %477, label %478, label %487

478:                                              ; preds = %474
  %479 = load i8*, i8** %33, align 8
  store i8 0, i8* %479, align 1
  %480 = load i32, i32* %23, align 4
  %481 = load i8*, i8** %33, align 8
  %482 = sext i32 %480 to i64
  %483 = getelementptr inbounds i8, i8* %481, i64 %482
  store i8* %483, i8** %33, align 8
  br label %484

484:                                              ; preds = %478
  %485 = load i32, i32* %31, align 4
  %486 = add nsw i32 %485, 1
  store i32 %486, i32* %31, align 4
  br label %474

487:                                              ; preds = %474
  br label %488

488:                                              ; preds = %487, %350
  %489 = load i32*, i32** %16, align 8
  %490 = call i32 @PyArray_ITER_NEXT(i32* %489)
  %491 = load i32*, i32** %17, align 8
  %492 = call i32 @PyArray_ITER_NEXT(i32* %491)
  br label %252

493:                                              ; preds = %252
  %494 = load i32, i32* @NPY_END_THREADS, align 4
  %495 = load i32*, i32** %16, align 8
  %496 = call i32 @Py_DECREF(i32* %495)
  %497 = load i32*, i32** %17, align 8
  %498 = call i32 @Py_DECREF(i32* %497)
  %499 = load i32*, i32** %11, align 8
  %500 = call i32 @Py_DECREF(i32* %499)
  %501 = load i32*, i32** %12, align 8
  store i32* %501, i32** %5, align 8
  store i32 1, i32* %24, align 4
  br label %507

502:                                              ; preds = %168, %155, %132, %116, %53
  %503 = load i32*, i32** %11, align 8
  %504 = call i32 @Py_XDECREF(i32* %503)
  %505 = load i32*, i32** %12, align 8
  %506 = call i32 @Py_XDECREF(i32* %505)
  store i32* null, i32** %5, align 8
  store i32 1, i32* %24, align 4
  br label %507

507:                                              ; preds = %502, %493, %82, %66, %47
  %508 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %508)
  %509 = load i32*, i32** %5, align 8
  ret i32* %509
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @PyArray_FROM_O(i32*) #2

declare dso_local i64 @PyArray_TYPE(i32*) #2

declare dso_local i32 @PyErr_SetString(i32, i8*) #2

declare dso_local i32 @Py_DECREF(i32*) #2

declare dso_local i64 @PyArray_CheckAxis(i32*, i32*, i32) #2

declare dso_local i32 @PyArray_NDIM(i32*) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local i64 @PyArray_Newshape(i32*, %struct.TYPE_3__*, i32) #2

declare dso_local i32 @PyArray_DIM(i32*, i32) #2

declare dso_local i32 @PyArray_PyIntAsIntp(i32*) #2

declare dso_local i64 @error_converting(i32) #2

declare dso_local i32 @PyErr_Format(i32, i8*) #2

declare dso_local i64 @PyArray_NewFromDescr(i32, i32, i32, i32*, i32*, i32*, i32, i32*) #2

declare dso_local i32 @Py_TYPE(i32*) #2

declare dso_local i32 @PyArray_DescrFromType(i64) #2

declare dso_local i32 @PyArray_ISFORTRAN(i32*) #2

declare dso_local i64 @PyArray_IterAllButAxis(i32*, i32*) #2

declare dso_local i32 @Py_XDECREF(i32*) #2

declare dso_local i32 @PyArray_STRIDE(i32*, i32) #2

declare dso_local i32 @NPY_BEGIN_THREADS_THRESHOLDED(i32) #2

declare dso_local i32 @PyArray_Size(i32*) #2

declare dso_local i64 @PyArray_ITER_NOTDONE(i32*) #2

declare dso_local i8* @PyArray_ITER_DATA(i32*) #2

declare dso_local i32 @memcpy(i8*, i32*, i32) #2

declare dso_local i32 @npy_bswap8(i32) #2

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i32 @PyArray_ITER_NEXT(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
