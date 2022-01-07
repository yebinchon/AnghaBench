; ModuleID = '/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_nditer_constr.c_npyiter_allocate_arrays.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_nditer_constr.c_npyiter_allocate_arrays.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { i64 }

@NPY_ITFLAG_BUFFER = common dso_local global i32 0, align 4
@NPY_ITER_COPY_IF_OVERLAP = common dso_local global i32 0, align 4
@NPY_OP_ITFLAG_WRITE = common dso_local global i32 0, align 4
@NPY_OP_ITFLAG_READ = common dso_local global i32 0, align 4
@NPY_OP_ITFLAG_FORCECOPY = common dso_local global i32 0, align 4
@NPY_ITER_OVERLAP_ASSUME_ELEMENTWISE = common dso_local global i32 0, align 4
@NPY_OP_ITFLAG_WRITEMASKED = common dso_local global i32 0, align 4
@NPY_OP_ITFLAG_REDUCE = common dso_local global i32 0, align 4
@NPY_ITER_NO_SUBTYPE = common dso_local global i32 0, align 4
@PyArray_Type = common dso_local global i32 0, align 4
@NPY_OP_ITFLAG_ALIGNED = common dso_local global i32 0, align 4
@NPY_OP_ITFLAG_CAST = common dso_local global i32 0, align 4
@NPY_OP_ITFLAG_BUFNEVER = common dso_local global i32 0, align 4
@NPY_ITER_COPY = common dso_local global i32 0, align 4
@NPY_ITER_UPDATEIFCOPY = common dso_local global i32 0, align 4
@NPY_OP_ITFLAG_HAS_WRITEBACK = common dso_local global i32 0, align 4
@PyExc_TypeError = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [94 x i8] c"Iterator operand required copying or buffering, but neither copying nor buffering was enabled\00", align 1
@NPY_ITER_CONTIG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [65 x i8] c"Iterator: Setting NPY_OP_ITFLAG_CAST because of NPY_ITER_CONTIG\0A\00", align 1
@.str.2 = private unnamed_addr constant [97 x i8] c"Iterator operand required buffering, to be contiguous as requested, but buffering is not enabled\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, %struct.TYPE_25__**, i32*, i32*, i32*, i32**)* @npyiter_allocate_arrays to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @npyiter_allocate_arrays(i32* %0, i32 %1, %struct.TYPE_25__** %2, i32* %3, i32* %4, i32* %5, i32** %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_25__**, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32**, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32*, align 8
  %23 = alloca %struct.TYPE_25__**, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca %struct.TYPE_25__*, align 8
  %27 = alloca i32*, align 8
  %28 = alloca i32, align 4
  %29 = alloca %struct.TYPE_25__*, align 8
  %30 = alloca %struct.TYPE_25__*, align 8
  %31 = alloca i32, align 4
  %32 = alloca i32*, align 8
  %33 = alloca i64, align 8
  %34 = alloca i32*, align 8
  %35 = alloca i64, align 8
  %36 = alloca i64, align 8
  %37 = alloca i64, align 8
  %38 = alloca i64, align 8
  %39 = alloca i64, align 8
  store i32* %0, i32** %9, align 8
  store i32 %1, i32* %10, align 4
  store %struct.TYPE_25__** %2, %struct.TYPE_25__*** %11, align 8
  store i32* %3, i32** %12, align 8
  store i32* %4, i32** %13, align 8
  store i32* %5, i32** %14, align 8
  store i32** %6, i32*** %15, align 8
  %40 = load i32*, i32** %9, align 8
  %41 = call i32 @NIT_ITFLAGS(i32* %40)
  store i32 %41, i32* %16, align 4
  %42 = load i32*, i32** %9, align 8
  %43 = call i32 @NIT_NDIM(i32* %42)
  store i32 %43, i32* %18, align 4
  %44 = load i32*, i32** %9, align 8
  %45 = call i32 @NIT_NOP(i32* %44)
  store i32 %45, i32* %20, align 4
  store i32 0, i32* %21, align 4
  store i32* null, i32** %22, align 8
  %46 = load i32*, i32** %9, align 8
  %47 = call %struct.TYPE_25__** @NIT_OPERANDS(i32* %46)
  store %struct.TYPE_25__** %47, %struct.TYPE_25__*** %23, align 8
  %48 = load i32, i32* %16, align 4
  %49 = load i32, i32* @NPY_ITFLAG_BUFFER, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %7
  %53 = load i32*, i32** %9, align 8
  %54 = call i32* @NIT_BUFFERDATA(i32* %53)
  store i32* %54, i32** %22, align 8
  br label %55

55:                                               ; preds = %52, %7
  %56 = load i32, i32* %10, align 4
  %57 = load i32, i32* @NPY_ITER_COPY_IF_OVERLAP, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %262

60:                                               ; preds = %55
  store i32 0, i32* %19, align 4
  br label %61

61:                                               ; preds = %258, %60
  %62 = load i32, i32* %19, align 4
  %63 = load i32, i32* %20, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %261

65:                                               ; preds = %61
  store i32 0, i32* %24, align 4
  %66 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %23, align 8
  %67 = load i32, i32* %19, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_25__*, %struct.TYPE_25__** %66, i64 %68
  %70 = load %struct.TYPE_25__*, %struct.TYPE_25__** %69, align 8
  %71 = icmp eq %struct.TYPE_25__* %70, null
  br i1 %71, label %72, label %73

72:                                               ; preds = %65
  br label %258

73:                                               ; preds = %65
  %74 = load i32*, i32** %14, align 8
  %75 = load i32, i32* %19, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @NPY_OP_ITFLAG_WRITE, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %83, label %82

82:                                               ; preds = %73
  br label %258

83:                                               ; preds = %73
  store i32 0, i32* %25, align 4
  br label %84

84:                                               ; preds = %254, %83
  %85 = load i32, i32* %25, align 4
  %86 = load i32, i32* %20, align 4
  %87 = icmp slt i32 %85, %86
  br i1 %87, label %88, label %257

88:                                               ; preds = %84
  %89 = load i32, i32* %25, align 4
  %90 = load i32, i32* %19, align 4
  %91 = icmp eq i32 %89, %90
  br i1 %91, label %99, label %92

92:                                               ; preds = %88
  %93 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %23, align 8
  %94 = load i32, i32* %25, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_25__*, %struct.TYPE_25__** %93, i64 %95
  %97 = load %struct.TYPE_25__*, %struct.TYPE_25__** %96, align 8
  %98 = icmp eq %struct.TYPE_25__* %97, null
  br i1 %98, label %99, label %100

99:                                               ; preds = %92, %88
  br label %254

100:                                              ; preds = %92
  %101 = load i32*, i32** %14, align 8
  %102 = load i32, i32* %25, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %101, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* @NPY_OP_ITFLAG_READ, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %110, label %109

109:                                              ; preds = %100
  br label %254

110:                                              ; preds = %100
  %111 = load i32*, i32** %14, align 8
  %112 = load i32, i32* %25, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %111, i64 %113
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* @NPY_OP_ITFLAG_FORCECOPY, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %110
  br label %254

120:                                              ; preds = %110
  %121 = load i32*, i32** %13, align 8
  %122 = load i32, i32* %19, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %121, i64 %123
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* @NPY_ITER_OVERLAP_ASSUME_ELEMENTWISE, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %231

129:                                              ; preds = %120
  %130 = load i32*, i32** %13, align 8
  %131 = load i32, i32* %25, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %130, i64 %132
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* @NPY_ITER_OVERLAP_ASSUME_ELEMENTWISE, align 4
  %136 = and i32 %134, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %231

138:                                              ; preds = %129
  %139 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %23, align 8
  %140 = load i32, i32* %19, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.TYPE_25__*, %struct.TYPE_25__** %139, i64 %141
  %143 = load %struct.TYPE_25__*, %struct.TYPE_25__** %142, align 8
  %144 = call i64 @PyArray_BYTES(%struct.TYPE_25__* %143)
  %145 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %23, align 8
  %146 = load i32, i32* %25, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds %struct.TYPE_25__*, %struct.TYPE_25__** %145, i64 %147
  %149 = load %struct.TYPE_25__*, %struct.TYPE_25__** %148, align 8
  %150 = call i64 @PyArray_BYTES(%struct.TYPE_25__* %149)
  %151 = icmp eq i64 %144, %150
  br i1 %151, label %152, label %231

152:                                              ; preds = %138
  %153 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %23, align 8
  %154 = load i32, i32* %19, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.TYPE_25__*, %struct.TYPE_25__** %153, i64 %155
  %157 = load %struct.TYPE_25__*, %struct.TYPE_25__** %156, align 8
  %158 = call i64 @PyArray_NDIM(%struct.TYPE_25__* %157)
  %159 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %23, align 8
  %160 = load i32, i32* %25, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds %struct.TYPE_25__*, %struct.TYPE_25__** %159, i64 %161
  %163 = load %struct.TYPE_25__*, %struct.TYPE_25__** %162, align 8
  %164 = call i64 @PyArray_NDIM(%struct.TYPE_25__* %163)
  %165 = icmp eq i64 %158, %164
  br i1 %165, label %166, label %231

166:                                              ; preds = %152
  %167 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %23, align 8
  %168 = load i32, i32* %19, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds %struct.TYPE_25__*, %struct.TYPE_25__** %167, i64 %169
  %171 = load %struct.TYPE_25__*, %struct.TYPE_25__** %170, align 8
  %172 = call i32* @PyArray_DIMS(%struct.TYPE_25__* %171)
  %173 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %23, align 8
  %174 = load i32, i32* %25, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds %struct.TYPE_25__*, %struct.TYPE_25__** %173, i64 %175
  %177 = load %struct.TYPE_25__*, %struct.TYPE_25__** %176, align 8
  %178 = call i32* @PyArray_DIMS(%struct.TYPE_25__* %177)
  %179 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %23, align 8
  %180 = load i32, i32* %19, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds %struct.TYPE_25__*, %struct.TYPE_25__** %179, i64 %181
  %183 = load %struct.TYPE_25__*, %struct.TYPE_25__** %182, align 8
  %184 = call i64 @PyArray_NDIM(%struct.TYPE_25__* %183)
  %185 = call i64 @PyArray_CompareLists(i32* %172, i32* %178, i64 %184)
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %231

187:                                              ; preds = %166
  %188 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %23, align 8
  %189 = load i32, i32* %19, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds %struct.TYPE_25__*, %struct.TYPE_25__** %188, i64 %190
  %192 = load %struct.TYPE_25__*, %struct.TYPE_25__** %191, align 8
  %193 = call i32* @PyArray_STRIDES(%struct.TYPE_25__* %192)
  %194 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %23, align 8
  %195 = load i32, i32* %25, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds %struct.TYPE_25__*, %struct.TYPE_25__** %194, i64 %196
  %198 = load %struct.TYPE_25__*, %struct.TYPE_25__** %197, align 8
  %199 = call i32* @PyArray_STRIDES(%struct.TYPE_25__* %198)
  %200 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %23, align 8
  %201 = load i32, i32* %19, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds %struct.TYPE_25__*, %struct.TYPE_25__** %200, i64 %202
  %204 = load %struct.TYPE_25__*, %struct.TYPE_25__** %203, align 8
  %205 = call i64 @PyArray_NDIM(%struct.TYPE_25__* %204)
  %206 = call i64 @PyArray_CompareLists(i32* %193, i32* %199, i64 %205)
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %208, label %231

208:                                              ; preds = %187
  %209 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %23, align 8
  %210 = load i32, i32* %19, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds %struct.TYPE_25__*, %struct.TYPE_25__** %209, i64 %211
  %213 = load %struct.TYPE_25__*, %struct.TYPE_25__** %212, align 8
  %214 = call i64 @PyArray_DESCR(%struct.TYPE_25__* %213)
  %215 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %23, align 8
  %216 = load i32, i32* %25, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds %struct.TYPE_25__*, %struct.TYPE_25__** %215, i64 %217
  %219 = load %struct.TYPE_25__*, %struct.TYPE_25__** %218, align 8
  %220 = call i64 @PyArray_DESCR(%struct.TYPE_25__* %219)
  %221 = icmp eq i64 %214, %220
  br i1 %221, label %222, label %231

222:                                              ; preds = %208
  %223 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %23, align 8
  %224 = load i32, i32* %19, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds %struct.TYPE_25__*, %struct.TYPE_25__** %223, i64 %225
  %227 = load %struct.TYPE_25__*, %struct.TYPE_25__** %226, align 8
  %228 = call i64 @solve_may_have_internal_overlap(%struct.TYPE_25__* %227, i32 1)
  %229 = icmp eq i64 %228, 0
  br i1 %229, label %230, label %231

230:                                              ; preds = %222
  br label %254

231:                                              ; preds = %222, %208, %187, %166, %152, %138, %129, %120
  %232 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %23, align 8
  %233 = load i32, i32* %19, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds %struct.TYPE_25__*, %struct.TYPE_25__** %232, i64 %234
  %236 = load %struct.TYPE_25__*, %struct.TYPE_25__** %235, align 8
  %237 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %23, align 8
  %238 = load i32, i32* %25, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds %struct.TYPE_25__*, %struct.TYPE_25__** %237, i64 %239
  %241 = load %struct.TYPE_25__*, %struct.TYPE_25__** %240, align 8
  %242 = call i32 @solve_may_share_memory(%struct.TYPE_25__* %236, %struct.TYPE_25__* %241, i32 1)
  store i32 %242, i32* %24, align 4
  %243 = load i32, i32* %24, align 4
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %245, label %253

245:                                              ; preds = %231
  %246 = load i32, i32* @NPY_OP_ITFLAG_FORCECOPY, align 4
  %247 = load i32*, i32** %14, align 8
  %248 = load i32, i32* %19, align 4
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds i32, i32* %247, i64 %249
  %251 = load i32, i32* %250, align 4
  %252 = or i32 %251, %246
  store i32 %252, i32* %250, align 4
  br label %257

253:                                              ; preds = %231
  br label %254

254:                                              ; preds = %253, %230, %119, %109, %99
  %255 = load i32, i32* %25, align 4
  %256 = add nsw i32 %255, 1
  store i32 %256, i32* %25, align 4
  br label %84

257:                                              ; preds = %245, %84
  br label %258

258:                                              ; preds = %257, %82, %72
  %259 = load i32, i32* %19, align 4
  %260 = add nsw i32 %259, 1
  store i32 %260, i32* %19, align 4
  br label %61

261:                                              ; preds = %61
  br label %262

262:                                              ; preds = %261, %55
  store i32 0, i32* %19, align 4
  br label %263

263:                                              ; preds = %904, %262
  %264 = load i32, i32* %19, align 4
  %265 = load i32, i32* %20, align 4
  %266 = icmp slt i32 %264, %265
  br i1 %266, label %267, label %907

267:                                              ; preds = %263
  %268 = load i32*, i32** %14, align 8
  %269 = load i32, i32* %19, align 4
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds i32, i32* %268, i64 %270
  %272 = load i32, i32* %271, align 4
  %273 = load i32, i32* @NPY_OP_ITFLAG_WRITEMASKED, align 4
  %274 = load i32, i32* @NPY_OP_ITFLAG_REDUCE, align 4
  %275 = or i32 %273, %274
  %276 = and i32 %272, %275
  %277 = load i32, i32* @NPY_OP_ITFLAG_WRITEMASKED, align 4
  %278 = load i32, i32* @NPY_OP_ITFLAG_REDUCE, align 4
  %279 = or i32 %277, %278
  %280 = icmp eq i32 %276, %279
  br i1 %280, label %281, label %282

281:                                              ; preds = %267
  store i32 1, i32* %21, align 4
  br label %282

282:                                              ; preds = %281, %267
  %283 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %23, align 8
  %284 = load i32, i32* %19, align 4
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds %struct.TYPE_25__*, %struct.TYPE_25__** %283, i64 %285
  %287 = load %struct.TYPE_25__*, %struct.TYPE_25__** %286, align 8
  %288 = icmp eq %struct.TYPE_25__* %287, null
  br i1 %288, label %289, label %384

289:                                              ; preds = %282
  %290 = load i32, i32* %18, align 4
  store i32 %290, i32* %28, align 4
  %291 = load i32*, i32** %13, align 8
  %292 = load i32, i32* %19, align 4
  %293 = sext i32 %292 to i64
  %294 = getelementptr inbounds i32, i32* %291, i64 %293
  %295 = load i32, i32* %294, align 4
  %296 = load i32, i32* @NPY_ITER_NO_SUBTYPE, align 4
  %297 = and i32 %295, %296
  %298 = icmp ne i32 %297, 0
  br i1 %298, label %299, label %300

299:                                              ; preds = %289
  br label %302

300:                                              ; preds = %289
  %301 = load i32*, i32** %12, align 8
  br label %302

302:                                              ; preds = %300, %299
  %303 = phi i32* [ @PyArray_Type, %299 ], [ %301, %300 ]
  store i32* %303, i32** %27, align 8
  %304 = load i32*, i32** %9, align 8
  %305 = load i32*, i32** %27, align 8
  %306 = load i32, i32* %10, align 4
  %307 = load i32*, i32** %14, align 8
  %308 = load i32, i32* %19, align 4
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds i32, i32* %307, i64 %309
  %311 = load i32, i32* %28, align 4
  %312 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %11, align 8
  %313 = load i32, i32* %19, align 4
  %314 = sext i32 %313 to i64
  %315 = getelementptr inbounds %struct.TYPE_25__*, %struct.TYPE_25__** %312, i64 %314
  %316 = load %struct.TYPE_25__*, %struct.TYPE_25__** %315, align 8
  %317 = load i32**, i32*** %15, align 8
  %318 = icmp ne i32** %317, null
  br i1 %318, label %319, label %325

319:                                              ; preds = %302
  %320 = load i32**, i32*** %15, align 8
  %321 = load i32, i32* %19, align 4
  %322 = sext i32 %321 to i64
  %323 = getelementptr inbounds i32*, i32** %320, i64 %322
  %324 = load i32*, i32** %323, align 8
  br label %326

325:                                              ; preds = %302
  br label %326

326:                                              ; preds = %325, %319
  %327 = phi i32* [ %324, %319 ], [ null, %325 ]
  %328 = call %struct.TYPE_25__* @npyiter_new_temp_array(i32* %304, i32* %305, i32 %306, i32* %310, i32 %311, i32* null, %struct.TYPE_25__* %316, i32* %327)
  store %struct.TYPE_25__* %328, %struct.TYPE_25__** %26, align 8
  %329 = load %struct.TYPE_25__*, %struct.TYPE_25__** %26, align 8
  %330 = icmp eq %struct.TYPE_25__* %329, null
  br i1 %330, label %331, label %332

331:                                              ; preds = %326
  store i32 0, i32* %8, align 4
  br label %942

332:                                              ; preds = %326
  %333 = load %struct.TYPE_25__*, %struct.TYPE_25__** %26, align 8
  %334 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %23, align 8
  %335 = load i32, i32* %19, align 4
  %336 = sext i32 %335 to i64
  %337 = getelementptr inbounds %struct.TYPE_25__*, %struct.TYPE_25__** %334, i64 %336
  store %struct.TYPE_25__* %333, %struct.TYPE_25__** %337, align 8
  %338 = load i32*, i32** %9, align 8
  %339 = load i32, i32* %19, align 4
  %340 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %23, align 8
  %341 = load i32, i32* %19, align 4
  %342 = sext i32 %341 to i64
  %343 = getelementptr inbounds %struct.TYPE_25__*, %struct.TYPE_25__** %340, i64 %342
  %344 = load %struct.TYPE_25__*, %struct.TYPE_25__** %343, align 8
  %345 = load i32, i32* %28, align 4
  %346 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %23, align 8
  %347 = load i32, i32* %19, align 4
  %348 = sext i32 %347 to i64
  %349 = getelementptr inbounds %struct.TYPE_25__*, %struct.TYPE_25__** %346, i64 %348
  %350 = load %struct.TYPE_25__*, %struct.TYPE_25__** %349, align 8
  %351 = call i32 @PyArray_DATA(%struct.TYPE_25__* %350)
  %352 = load i32**, i32*** %15, align 8
  %353 = icmp ne i32** %352, null
  br i1 %353, label %354, label %360

354:                                              ; preds = %332
  %355 = load i32**, i32*** %15, align 8
  %356 = load i32, i32* %19, align 4
  %357 = sext i32 %356 to i64
  %358 = getelementptr inbounds i32*, i32** %355, i64 %357
  %359 = load i32*, i32** %358, align 8
  br label %361

360:                                              ; preds = %332
  br label %361

361:                                              ; preds = %360, %354
  %362 = phi i32* [ %359, %354 ], [ null, %360 ]
  %363 = call i32 @npyiter_replace_axisdata(i32* %338, i32 %339, %struct.TYPE_25__* %344, i32 %345, i32 %351, i32* %362)
  %364 = load %struct.TYPE_25__*, %struct.TYPE_25__** %26, align 8
  %365 = call i64 @IsUintAligned(%struct.TYPE_25__* %364)
  %366 = icmp ne i64 %365, 0
  br i1 %366, label %367, label %375

367:                                              ; preds = %361
  %368 = load i32, i32* @NPY_OP_ITFLAG_ALIGNED, align 4
  %369 = load i32*, i32** %14, align 8
  %370 = load i32, i32* %19, align 4
  %371 = sext i32 %370 to i64
  %372 = getelementptr inbounds i32, i32* %369, i64 %371
  %373 = load i32, i32* %372, align 4
  %374 = or i32 %373, %368
  store i32 %374, i32* %372, align 4
  br label %375

375:                                              ; preds = %367, %361
  %376 = load i32, i32* @NPY_OP_ITFLAG_CAST, align 4
  %377 = xor i32 %376, -1
  %378 = load i32*, i32** %14, align 8
  %379 = load i32, i32* %19, align 4
  %380 = sext i32 %379 to i64
  %381 = getelementptr inbounds i32, i32* %378, i64 %380
  %382 = load i32, i32* %381, align 4
  %383 = and i32 %382, %377
  store i32 %383, i32* %381, align 4
  br label %722

384:                                              ; preds = %282
  %385 = load i32*, i32** %14, align 8
  %386 = load i32, i32* %19, align 4
  %387 = sext i32 %386 to i64
  %388 = getelementptr inbounds i32, i32* %385, i64 %387
  %389 = load i32, i32* %388, align 4
  %390 = load i32, i32* @NPY_OP_ITFLAG_CAST, align 4
  %391 = load i32, i32* @NPY_OP_ITFLAG_READ, align 4
  %392 = or i32 %390, %391
  %393 = load i32, i32* @NPY_OP_ITFLAG_WRITE, align 4
  %394 = or i32 %392, %393
  %395 = and i32 %389, %394
  %396 = load i32, i32* @NPY_OP_ITFLAG_CAST, align 4
  %397 = load i32, i32* @NPY_OP_ITFLAG_READ, align 4
  %398 = or i32 %396, %397
  %399 = icmp eq i32 %395, %398
  br i1 %399, label %400, label %501

400:                                              ; preds = %384
  %401 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %23, align 8
  %402 = load i32, i32* %19, align 4
  %403 = sext i32 %402 to i64
  %404 = getelementptr inbounds %struct.TYPE_25__*, %struct.TYPE_25__** %401, i64 %403
  %405 = load %struct.TYPE_25__*, %struct.TYPE_25__** %404, align 8
  %406 = call i64 @PyArray_NDIM(%struct.TYPE_25__* %405)
  %407 = icmp eq i64 %406, 0
  br i1 %407, label %408, label %501

408:                                              ; preds = %400
  %409 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %11, align 8
  %410 = load i32, i32* %19, align 4
  %411 = sext i32 %410 to i64
  %412 = getelementptr inbounds %struct.TYPE_25__*, %struct.TYPE_25__** %409, i64 %411
  %413 = load %struct.TYPE_25__*, %struct.TYPE_25__** %412, align 8
  %414 = call i32 @Py_INCREF(%struct.TYPE_25__* %413)
  %415 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %11, align 8
  %416 = load i32, i32* %19, align 4
  %417 = sext i32 %416 to i64
  %418 = getelementptr inbounds %struct.TYPE_25__*, %struct.TYPE_25__** %415, i64 %417
  %419 = load %struct.TYPE_25__*, %struct.TYPE_25__** %418, align 8
  %420 = call i64 @PyArray_NewFromDescr(i32* @PyArray_Type, %struct.TYPE_25__* %419, i32 0, i32* null, i32* null, i32* null, i32 0, i32* null)
  %421 = inttoptr i64 %420 to %struct.TYPE_25__*
  store %struct.TYPE_25__* %421, %struct.TYPE_25__** %29, align 8
  %422 = load %struct.TYPE_25__*, %struct.TYPE_25__** %29, align 8
  %423 = icmp eq %struct.TYPE_25__* %422, null
  br i1 %423, label %424, label %425

424:                                              ; preds = %408
  store i32 0, i32* %8, align 4
  br label %942

425:                                              ; preds = %408
  %426 = load %struct.TYPE_25__*, %struct.TYPE_25__** %29, align 8
  %427 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %23, align 8
  %428 = load i32, i32* %19, align 4
  %429 = sext i32 %428 to i64
  %430 = getelementptr inbounds %struct.TYPE_25__*, %struct.TYPE_25__** %427, i64 %429
  %431 = load %struct.TYPE_25__*, %struct.TYPE_25__** %430, align 8
  %432 = call i64 @PyArray_CopyInto(%struct.TYPE_25__* %426, %struct.TYPE_25__* %431)
  %433 = icmp ne i64 %432, 0
  br i1 %433, label %434, label %437

434:                                              ; preds = %425
  %435 = load %struct.TYPE_25__*, %struct.TYPE_25__** %29, align 8
  %436 = call i32 @Py_DECREF(%struct.TYPE_25__* %435)
  store i32 0, i32* %8, align 4
  br label %942

437:                                              ; preds = %425
  %438 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %23, align 8
  %439 = load i32, i32* %19, align 4
  %440 = sext i32 %439 to i64
  %441 = getelementptr inbounds %struct.TYPE_25__*, %struct.TYPE_25__** %438, i64 %440
  %442 = load %struct.TYPE_25__*, %struct.TYPE_25__** %441, align 8
  %443 = call i32 @Py_DECREF(%struct.TYPE_25__* %442)
  %444 = load %struct.TYPE_25__*, %struct.TYPE_25__** %29, align 8
  %445 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %23, align 8
  %446 = load i32, i32* %19, align 4
  %447 = sext i32 %446 to i64
  %448 = getelementptr inbounds %struct.TYPE_25__*, %struct.TYPE_25__** %445, i64 %447
  store %struct.TYPE_25__* %444, %struct.TYPE_25__** %448, align 8
  %449 = load i32*, i32** %9, align 8
  %450 = load i32, i32* %19, align 4
  %451 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %23, align 8
  %452 = load i32, i32* %19, align 4
  %453 = sext i32 %452 to i64
  %454 = getelementptr inbounds %struct.TYPE_25__*, %struct.TYPE_25__** %451, i64 %453
  %455 = load %struct.TYPE_25__*, %struct.TYPE_25__** %454, align 8
  %456 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %23, align 8
  %457 = load i32, i32* %19, align 4
  %458 = sext i32 %457 to i64
  %459 = getelementptr inbounds %struct.TYPE_25__*, %struct.TYPE_25__** %456, i64 %458
  %460 = load %struct.TYPE_25__*, %struct.TYPE_25__** %459, align 8
  %461 = call i32 @PyArray_DATA(%struct.TYPE_25__* %460)
  %462 = call i32 @npyiter_replace_axisdata(i32* %449, i32 %450, %struct.TYPE_25__* %455, i32 0, i32 %461, i32* null)
  %463 = load %struct.TYPE_25__*, %struct.TYPE_25__** %29, align 8
  %464 = call i64 @IsUintAligned(%struct.TYPE_25__* %463)
  %465 = icmp ne i64 %464, 0
  br i1 %465, label %466, label %474

466:                                              ; preds = %437
  %467 = load i32, i32* @NPY_OP_ITFLAG_ALIGNED, align 4
  %468 = load i32*, i32** %14, align 8
  %469 = load i32, i32* %19, align 4
  %470 = sext i32 %469 to i64
  %471 = getelementptr inbounds i32, i32* %468, i64 %470
  %472 = load i32, i32* %471, align 4
  %473 = or i32 %472, %467
  store i32 %473, i32* %471, align 4
  br label %474

474:                                              ; preds = %466, %437
  %475 = load i32, i32* @NPY_OP_ITFLAG_BUFNEVER, align 4
  %476 = load i32*, i32** %14, align 8
  %477 = load i32, i32* %19, align 4
  %478 = sext i32 %477 to i64
  %479 = getelementptr inbounds i32, i32* %476, i64 %478
  %480 = load i32, i32* %479, align 4
  %481 = or i32 %480, %475
  store i32 %481, i32* %479, align 4
  %482 = load i32, i32* @NPY_OP_ITFLAG_CAST, align 4
  %483 = xor i32 %482, -1
  %484 = load i32*, i32** %14, align 8
  %485 = load i32, i32* %19, align 4
  %486 = sext i32 %485 to i64
  %487 = getelementptr inbounds i32, i32* %484, i64 %486
  %488 = load i32, i32* %487, align 4
  %489 = and i32 %488, %483
  store i32 %489, i32* %487, align 4
  %490 = load i32, i32* %16, align 4
  %491 = load i32, i32* @NPY_ITFLAG_BUFFER, align 4
  %492 = and i32 %490, %491
  %493 = icmp ne i32 %492, 0
  br i1 %493, label %494, label %500

494:                                              ; preds = %474
  %495 = load i32*, i32** %22, align 8
  %496 = call i8** @NBF_STRIDES(i32* %495)
  %497 = load i32, i32* %19, align 4
  %498 = sext i32 %497 to i64
  %499 = getelementptr inbounds i8*, i8** %496, i64 %498
  store i8* null, i8** %499, align 8
  br label %500

500:                                              ; preds = %494, %474
  br label %721

501:                                              ; preds = %400, %384
  %502 = load i32*, i32** %14, align 8
  %503 = load i32, i32* %19, align 4
  %504 = sext i32 %503 to i64
  %505 = getelementptr inbounds i32, i32* %502, i64 %504
  %506 = load i32, i32* %505, align 4
  %507 = load i32, i32* @NPY_OP_ITFLAG_CAST, align 4
  %508 = and i32 %506, %507
  %509 = icmp ne i32 %508, 0
  br i1 %509, label %510, label %521

510:                                              ; preds = %501
  %511 = load i32*, i32** %13, align 8
  %512 = load i32, i32* %19, align 4
  %513 = sext i32 %512 to i64
  %514 = getelementptr inbounds i32, i32* %511, i64 %513
  %515 = load i32, i32* %514, align 4
  %516 = load i32, i32* @NPY_ITER_COPY, align 4
  %517 = load i32, i32* @NPY_ITER_UPDATEIFCOPY, align 4
  %518 = or i32 %516, %517
  %519 = and i32 %515, %518
  %520 = icmp ne i32 %519, 0
  br i1 %520, label %530, label %521

521:                                              ; preds = %510, %501
  %522 = load i32*, i32** %14, align 8
  %523 = load i32, i32* %19, align 4
  %524 = sext i32 %523 to i64
  %525 = getelementptr inbounds i32, i32* %522, i64 %524
  %526 = load i32, i32* %525, align 4
  %527 = load i32, i32* @NPY_OP_ITFLAG_FORCECOPY, align 4
  %528 = and i32 %526, %527
  %529 = icmp ne i32 %528, 0
  br i1 %529, label %530, label %686

530:                                              ; preds = %521, %510
  %531 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %23, align 8
  %532 = load i32, i32* %19, align 4
  %533 = sext i32 %532 to i64
  %534 = getelementptr inbounds %struct.TYPE_25__*, %struct.TYPE_25__** %531, i64 %533
  %535 = load %struct.TYPE_25__*, %struct.TYPE_25__** %534, align 8
  %536 = call i64 @PyArray_NDIM(%struct.TYPE_25__* %535)
  %537 = trunc i64 %536 to i32
  store i32 %537, i32* %31, align 4
  %538 = load i32*, i32** %9, align 8
  %539 = load i32, i32* %10, align 4
  %540 = load i32*, i32** %14, align 8
  %541 = load i32, i32* %19, align 4
  %542 = sext i32 %541 to i64
  %543 = getelementptr inbounds i32, i32* %540, i64 %542
  %544 = load i32, i32* %31, align 4
  %545 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %23, align 8
  %546 = load i32, i32* %19, align 4
  %547 = sext i32 %546 to i64
  %548 = getelementptr inbounds %struct.TYPE_25__*, %struct.TYPE_25__** %545, i64 %547
  %549 = load %struct.TYPE_25__*, %struct.TYPE_25__** %548, align 8
  %550 = call i32* @PyArray_DIMS(%struct.TYPE_25__* %549)
  %551 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %11, align 8
  %552 = load i32, i32* %19, align 4
  %553 = sext i32 %552 to i64
  %554 = getelementptr inbounds %struct.TYPE_25__*, %struct.TYPE_25__** %551, i64 %553
  %555 = load %struct.TYPE_25__*, %struct.TYPE_25__** %554, align 8
  %556 = load i32**, i32*** %15, align 8
  %557 = icmp ne i32** %556, null
  br i1 %557, label %558, label %564

558:                                              ; preds = %530
  %559 = load i32**, i32*** %15, align 8
  %560 = load i32, i32* %19, align 4
  %561 = sext i32 %560 to i64
  %562 = getelementptr inbounds i32*, i32** %559, i64 %561
  %563 = load i32*, i32** %562, align 8
  br label %565

564:                                              ; preds = %530
  br label %565

565:                                              ; preds = %564, %558
  %566 = phi i32* [ %563, %558 ], [ null, %564 ]
  %567 = call %struct.TYPE_25__* @npyiter_new_temp_array(i32* %538, i32* @PyArray_Type, i32 %539, i32* %543, i32 %544, i32* %550, %struct.TYPE_25__* %555, i32* %566)
  store %struct.TYPE_25__* %567, %struct.TYPE_25__** %30, align 8
  %568 = load %struct.TYPE_25__*, %struct.TYPE_25__** %30, align 8
  %569 = icmp eq %struct.TYPE_25__* %568, null
  br i1 %569, label %570, label %571

570:                                              ; preds = %565
  store i32 0, i32* %8, align 4
  br label %942

571:                                              ; preds = %565
  %572 = load i32*, i32** %14, align 8
  %573 = load i32, i32* %19, align 4
  %574 = sext i32 %573 to i64
  %575 = getelementptr inbounds i32, i32* %572, i64 %574
  %576 = load i32, i32* %575, align 4
  %577 = load i32, i32* @NPY_OP_ITFLAG_READ, align 4
  %578 = and i32 %576, %577
  %579 = icmp ne i32 %578, 0
  br i1 %579, label %580, label %593

580:                                              ; preds = %571
  %581 = load %struct.TYPE_25__*, %struct.TYPE_25__** %30, align 8
  %582 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %23, align 8
  %583 = load i32, i32* %19, align 4
  %584 = sext i32 %583 to i64
  %585 = getelementptr inbounds %struct.TYPE_25__*, %struct.TYPE_25__** %582, i64 %584
  %586 = load %struct.TYPE_25__*, %struct.TYPE_25__** %585, align 8
  %587 = call i64 @PyArray_CopyInto(%struct.TYPE_25__* %581, %struct.TYPE_25__* %586)
  %588 = icmp ne i64 %587, 0
  br i1 %588, label %589, label %592

589:                                              ; preds = %580
  %590 = load %struct.TYPE_25__*, %struct.TYPE_25__** %30, align 8
  %591 = call i32 @Py_DECREF(%struct.TYPE_25__* %590)
  store i32 0, i32* %8, align 4
  br label %942

592:                                              ; preds = %580
  br label %593

593:                                              ; preds = %592, %571
  %594 = load i32*, i32** %14, align 8
  %595 = load i32, i32* %19, align 4
  %596 = sext i32 %595 to i64
  %597 = getelementptr inbounds i32, i32* %594, i64 %596
  %598 = load i32, i32* %597, align 4
  %599 = load i32, i32* @NPY_OP_ITFLAG_WRITE, align 4
  %600 = and i32 %598, %599
  %601 = icmp ne i32 %600, 0
  br i1 %601, label %602, label %628

602:                                              ; preds = %593
  %603 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %23, align 8
  %604 = load i32, i32* %19, align 4
  %605 = sext i32 %604 to i64
  %606 = getelementptr inbounds %struct.TYPE_25__*, %struct.TYPE_25__** %603, i64 %605
  %607 = load %struct.TYPE_25__*, %struct.TYPE_25__** %606, align 8
  %608 = call i32 @Py_INCREF(%struct.TYPE_25__* %607)
  %609 = load %struct.TYPE_25__*, %struct.TYPE_25__** %30, align 8
  %610 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %23, align 8
  %611 = load i32, i32* %19, align 4
  %612 = sext i32 %611 to i64
  %613 = getelementptr inbounds %struct.TYPE_25__*, %struct.TYPE_25__** %610, i64 %612
  %614 = load %struct.TYPE_25__*, %struct.TYPE_25__** %613, align 8
  %615 = call i64 @PyArray_SetWritebackIfCopyBase(%struct.TYPE_25__* %609, %struct.TYPE_25__* %614)
  %616 = icmp slt i64 %615, 0
  br i1 %616, label %617, label %620

617:                                              ; preds = %602
  %618 = load %struct.TYPE_25__*, %struct.TYPE_25__** %30, align 8
  %619 = call i32 @Py_DECREF(%struct.TYPE_25__* %618)
  store i32 0, i32* %8, align 4
  br label %942

620:                                              ; preds = %602
  %621 = load i32, i32* @NPY_OP_ITFLAG_HAS_WRITEBACK, align 4
  %622 = load i32*, i32** %14, align 8
  %623 = load i32, i32* %19, align 4
  %624 = sext i32 %623 to i64
  %625 = getelementptr inbounds i32, i32* %622, i64 %624
  %626 = load i32, i32* %625, align 4
  %627 = or i32 %626, %621
  store i32 %627, i32* %625, align 4
  br label %628

628:                                              ; preds = %620, %593
  %629 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %23, align 8
  %630 = load i32, i32* %19, align 4
  %631 = sext i32 %630 to i64
  %632 = getelementptr inbounds %struct.TYPE_25__*, %struct.TYPE_25__** %629, i64 %631
  %633 = load %struct.TYPE_25__*, %struct.TYPE_25__** %632, align 8
  %634 = call i32 @Py_DECREF(%struct.TYPE_25__* %633)
  %635 = load %struct.TYPE_25__*, %struct.TYPE_25__** %30, align 8
  %636 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %23, align 8
  %637 = load i32, i32* %19, align 4
  %638 = sext i32 %637 to i64
  %639 = getelementptr inbounds %struct.TYPE_25__*, %struct.TYPE_25__** %636, i64 %638
  store %struct.TYPE_25__* %635, %struct.TYPE_25__** %639, align 8
  %640 = load i32*, i32** %9, align 8
  %641 = load i32, i32* %19, align 4
  %642 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %23, align 8
  %643 = load i32, i32* %19, align 4
  %644 = sext i32 %643 to i64
  %645 = getelementptr inbounds %struct.TYPE_25__*, %struct.TYPE_25__** %642, i64 %644
  %646 = load %struct.TYPE_25__*, %struct.TYPE_25__** %645, align 8
  %647 = load i32, i32* %31, align 4
  %648 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %23, align 8
  %649 = load i32, i32* %19, align 4
  %650 = sext i32 %649 to i64
  %651 = getelementptr inbounds %struct.TYPE_25__*, %struct.TYPE_25__** %648, i64 %650
  %652 = load %struct.TYPE_25__*, %struct.TYPE_25__** %651, align 8
  %653 = call i32 @PyArray_DATA(%struct.TYPE_25__* %652)
  %654 = load i32**, i32*** %15, align 8
  %655 = icmp ne i32** %654, null
  br i1 %655, label %656, label %662

656:                                              ; preds = %628
  %657 = load i32**, i32*** %15, align 8
  %658 = load i32, i32* %19, align 4
  %659 = sext i32 %658 to i64
  %660 = getelementptr inbounds i32*, i32** %657, i64 %659
  %661 = load i32*, i32** %660, align 8
  br label %663

662:                                              ; preds = %628
  br label %663

663:                                              ; preds = %662, %656
  %664 = phi i32* [ %661, %656 ], [ null, %662 ]
  %665 = call i32 @npyiter_replace_axisdata(i32* %640, i32 %641, %struct.TYPE_25__* %646, i32 %647, i32 %653, i32* %664)
  %666 = load %struct.TYPE_25__*, %struct.TYPE_25__** %30, align 8
  %667 = call i64 @IsUintAligned(%struct.TYPE_25__* %666)
  %668 = icmp ne i64 %667, 0
  br i1 %668, label %669, label %677

669:                                              ; preds = %663
  %670 = load i32, i32* @NPY_OP_ITFLAG_ALIGNED, align 4
  %671 = load i32*, i32** %14, align 8
  %672 = load i32, i32* %19, align 4
  %673 = sext i32 %672 to i64
  %674 = getelementptr inbounds i32, i32* %671, i64 %673
  %675 = load i32, i32* %674, align 4
  %676 = or i32 %675, %670
  store i32 %676, i32* %674, align 4
  br label %677

677:                                              ; preds = %669, %663
  %678 = load i32, i32* @NPY_OP_ITFLAG_CAST, align 4
  %679 = xor i32 %678, -1
  %680 = load i32*, i32** %14, align 8
  %681 = load i32, i32* %19, align 4
  %682 = sext i32 %681 to i64
  %683 = getelementptr inbounds i32, i32* %680, i64 %682
  %684 = load i32, i32* %683, align 4
  %685 = and i32 %684, %679
  store i32 %685, i32* %683, align 4
  br label %720

686:                                              ; preds = %521
  %687 = load i32*, i32** %14, align 8
  %688 = load i32, i32* %19, align 4
  %689 = sext i32 %688 to i64
  %690 = getelementptr inbounds i32, i32* %687, i64 %689
  %691 = load i32, i32* %690, align 4
  %692 = load i32, i32* @NPY_OP_ITFLAG_CAST, align 4
  %693 = and i32 %691, %692
  %694 = icmp ne i32 %693, 0
  br i1 %694, label %695, label %703

695:                                              ; preds = %686
  %696 = load i32, i32* %16, align 4
  %697 = load i32, i32* @NPY_ITFLAG_BUFFER, align 4
  %698 = and i32 %696, %697
  %699 = icmp ne i32 %698, 0
  br i1 %699, label %703, label %700

700:                                              ; preds = %695
  %701 = load i32, i32* @PyExc_TypeError, align 4
  %702 = call i32 @PyErr_SetString(i32 %701, i8* getelementptr inbounds ([94 x i8], [94 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %8, align 4
  br label %942

703:                                              ; preds = %695, %686
  %704 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %23, align 8
  %705 = load i32, i32* %19, align 4
  %706 = sext i32 %705 to i64
  %707 = getelementptr inbounds %struct.TYPE_25__*, %struct.TYPE_25__** %704, i64 %706
  %708 = load %struct.TYPE_25__*, %struct.TYPE_25__** %707, align 8
  %709 = call i64 @IsUintAligned(%struct.TYPE_25__* %708)
  %710 = icmp ne i64 %709, 0
  br i1 %710, label %711, label %719

711:                                              ; preds = %703
  %712 = load i32, i32* @NPY_OP_ITFLAG_ALIGNED, align 4
  %713 = load i32*, i32** %14, align 8
  %714 = load i32, i32* %19, align 4
  %715 = sext i32 %714 to i64
  %716 = getelementptr inbounds i32, i32* %713, i64 %715
  %717 = load i32, i32* %716, align 4
  %718 = or i32 %717, %712
  store i32 %718, i32* %716, align 4
  br label %719

719:                                              ; preds = %711, %703
  br label %720

720:                                              ; preds = %719, %677
  br label %721

721:                                              ; preds = %720, %500
  br label %722

722:                                              ; preds = %721, %375
  %723 = load i32*, i32** %13, align 8
  %724 = load i32, i32* %19, align 4
  %725 = sext i32 %724 to i64
  %726 = getelementptr inbounds i32, i32* %723, i64 %725
  %727 = load i32, i32* %726, align 4
  %728 = load i32, i32* @NPY_ITER_CONTIG, align 4
  %729 = and i32 %727, %728
  %730 = icmp ne i32 %729, 0
  br i1 %730, label %731, label %768

731:                                              ; preds = %722
  %732 = load i32*, i32** %9, align 8
  %733 = call i32* @NIT_AXISDATA(i32* %732)
  store i32* %733, i32** %32, align 8
  %734 = load i32*, i32** %32, align 8
  %735 = call i8** @NAD_STRIDES(i32* %734)
  %736 = load i32, i32* %19, align 4
  %737 = sext i32 %736 to i64
  %738 = getelementptr inbounds i8*, i8** %735, i64 %737
  %739 = load i8*, i8** %738, align 8
  %740 = ptrtoint i8* %739 to i64
  store i64 %740, i64* %33, align 8
  %741 = load i64, i64* %33, align 8
  %742 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %11, align 8
  %743 = load i32, i32* %19, align 4
  %744 = sext i32 %743 to i64
  %745 = getelementptr inbounds %struct.TYPE_25__*, %struct.TYPE_25__** %742, i64 %744
  %746 = load %struct.TYPE_25__*, %struct.TYPE_25__** %745, align 8
  %747 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %746, i32 0, i32 0
  %748 = load i64, i64* %747, align 8
  %749 = icmp ne i64 %741, %748
  br i1 %749, label %750, label %767

750:                                              ; preds = %731
  %751 = call i32 @NPY_IT_DBG_PRINT(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.1, i64 0, i64 0))
  %752 = load i32, i32* @NPY_OP_ITFLAG_CAST, align 4
  %753 = load i32*, i32** %14, align 8
  %754 = load i32, i32* %19, align 4
  %755 = sext i32 %754 to i64
  %756 = getelementptr inbounds i32, i32* %753, i64 %755
  %757 = load i32, i32* %756, align 4
  %758 = or i32 %757, %752
  store i32 %758, i32* %756, align 4
  %759 = load i32, i32* %16, align 4
  %760 = load i32, i32* @NPY_ITFLAG_BUFFER, align 4
  %761 = and i32 %759, %760
  %762 = icmp ne i32 %761, 0
  br i1 %762, label %766, label %763

763:                                              ; preds = %750
  %764 = load i32, i32* @PyExc_TypeError, align 4
  %765 = call i32 @PyErr_SetString(i32 %764, i8* getelementptr inbounds ([97 x i8], [97 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %8, align 4
  br label %942

766:                                              ; preds = %750
  br label %767

767:                                              ; preds = %766, %731
  br label %768

768:                                              ; preds = %767, %722
  %769 = load i32, i32* %16, align 4
  %770 = load i32, i32* @NPY_ITFLAG_BUFFER, align 4
  %771 = and i32 %769, %770
  %772 = icmp ne i32 %771, 0
  br i1 %772, label %773, label %903

773:                                              ; preds = %768
  %774 = load i32*, i32** %14, align 8
  %775 = load i32, i32* %19, align 4
  %776 = sext i32 %775 to i64
  %777 = getelementptr inbounds i32, i32* %774, i64 %776
  %778 = load i32, i32* %777, align 4
  %779 = load i32, i32* @NPY_OP_ITFLAG_CAST, align 4
  %780 = and i32 %778, %779
  %781 = icmp ne i32 %780, 0
  br i1 %781, label %903, label %782

782:                                              ; preds = %773
  %783 = load i32*, i32** %9, align 8
  %784 = call i32* @NIT_AXISDATA(i32* %783)
  store i32* %784, i32** %34, align 8
  %785 = load i32, i32* %18, align 4
  %786 = icmp sle i32 %785, 1
  br i1 %786, label %787, label %806

787:                                              ; preds = %782
  %788 = load i32, i32* @NPY_OP_ITFLAG_BUFNEVER, align 4
  %789 = load i32*, i32** %14, align 8
  %790 = load i32, i32* %19, align 4
  %791 = sext i32 %790 to i64
  %792 = getelementptr inbounds i32, i32* %789, i64 %791
  %793 = load i32, i32* %792, align 4
  %794 = or i32 %793, %788
  store i32 %794, i32* %792, align 4
  %795 = load i32*, i32** %34, align 8
  %796 = call i8** @NAD_STRIDES(i32* %795)
  %797 = load i32, i32* %19, align 4
  %798 = sext i32 %797 to i64
  %799 = getelementptr inbounds i8*, i8** %796, i64 %798
  %800 = load i8*, i8** %799, align 8
  %801 = load i32*, i32** %22, align 8
  %802 = call i8** @NBF_STRIDES(i32* %801)
  %803 = load i32, i32* %19, align 4
  %804 = sext i32 %803 to i64
  %805 = getelementptr inbounds i8*, i8** %802, i64 %804
  store i8* %800, i8** %805, align 8
  br label %902

806:                                              ; preds = %782
  %807 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %23, align 8
  %808 = load i32, i32* %19, align 4
  %809 = sext i32 %808 to i64
  %810 = getelementptr inbounds %struct.TYPE_25__*, %struct.TYPE_25__** %807, i64 %809
  %811 = load %struct.TYPE_25__*, %struct.TYPE_25__** %810, align 8
  %812 = call i64 @PyArray_NDIM(%struct.TYPE_25__* %811)
  %813 = icmp sgt i64 %812, 0
  br i1 %813, label %814, label %901

814:                                              ; preds = %806
  store i64 0, i64* %37, align 8
  %815 = load i32, i32* %16, align 4
  %816 = load i32, i32* %18, align 4
  %817 = load i32, i32* %20, align 4
  %818 = call i64 @NIT_AXISDATA_SIZEOF(i32 %815, i32 %816, i32 %817)
  store i64 %818, i64* %39, align 8
  store i32 0, i32* %17, align 4
  br label %819

819:                                              ; preds = %839, %814
  %820 = load i32, i32* %17, align 4
  %821 = load i32, i32* %18, align 4
  %822 = icmp slt i32 %820, %821
  br i1 %822, label %823, label %842

823:                                              ; preds = %819
  %824 = load i32*, i32** %34, align 8
  %825 = call i64 @NAD_SHAPE(i32* %824)
  store i64 %825, i64* %38, align 8
  %826 = load i64, i64* %38, align 8
  %827 = icmp ne i64 %826, 1
  br i1 %827, label %828, label %836

828:                                              ; preds = %823
  %829 = load i32*, i32** %34, align 8
  %830 = call i8** @NAD_STRIDES(i32* %829)
  %831 = load i32, i32* %19, align 4
  %832 = sext i32 %831 to i64
  %833 = getelementptr inbounds i8*, i8** %830, i64 %832
  %834 = load i8*, i8** %833, align 8
  %835 = ptrtoint i8* %834 to i64
  store i64 %835, i64* %37, align 8
  br label %842

836:                                              ; preds = %823
  %837 = load i32*, i32** %34, align 8
  %838 = call i32 @NIT_ADVANCE_AXISDATA(i32* %837, i32 1)
  br label %839

839:                                              ; preds = %836
  %840 = load i32, i32* %17, align 4
  %841 = add nsw i32 %840, 1
  store i32 %841, i32* %17, align 4
  br label %819

842:                                              ; preds = %828, %819
  %843 = load i32, i32* %17, align 4
  %844 = add nsw i32 %843, 1
  store i32 %844, i32* %17, align 4
  %845 = load i32*, i32** %34, align 8
  %846 = call i32 @NIT_ADVANCE_AXISDATA(i32* %845, i32 1)
  br label %847

847:                                              ; preds = %878, %842
  %848 = load i32, i32* %17, align 4
  %849 = load i32, i32* %18, align 4
  %850 = icmp slt i32 %848, %849
  br i1 %850, label %851, label %881

851:                                              ; preds = %847
  %852 = load i32*, i32** %34, align 8
  %853 = call i8** @NAD_STRIDES(i32* %852)
  %854 = load i32, i32* %19, align 4
  %855 = sext i32 %854 to i64
  %856 = getelementptr inbounds i8*, i8** %853, i64 %855
  %857 = load i8*, i8** %856, align 8
  %858 = ptrtoint i8* %857 to i64
  store i64 %858, i64* %35, align 8
  %859 = load i32*, i32** %34, align 8
  %860 = call i64 @NAD_SHAPE(i32* %859)
  store i64 %860, i64* %36, align 8
  %861 = load i64, i64* %36, align 8
  %862 = icmp ne i64 %861, 1
  br i1 %862, label %863, label %875

863:                                              ; preds = %851
  %864 = load i64, i64* %37, align 8
  %865 = load i64, i64* %38, align 8
  %866 = mul nsw i64 %864, %865
  %867 = load i64, i64* %35, align 8
  %868 = icmp ne i64 %866, %867
  br i1 %868, label %869, label %870

869:                                              ; preds = %863
  br label %881

870:                                              ; preds = %863
  %871 = load i64, i64* %36, align 8
  %872 = load i64, i64* %38, align 8
  %873 = mul nsw i64 %872, %871
  store i64 %873, i64* %38, align 8
  br label %874

874:                                              ; preds = %870
  br label %875

875:                                              ; preds = %874, %851
  %876 = load i32*, i32** %34, align 8
  %877 = call i32 @NIT_ADVANCE_AXISDATA(i32* %876, i32 1)
  br label %878

878:                                              ; preds = %875
  %879 = load i32, i32* %17, align 4
  %880 = add nsw i32 %879, 1
  store i32 %880, i32* %17, align 4
  br label %847

881:                                              ; preds = %869, %847
  %882 = load i32, i32* %17, align 4
  %883 = load i32, i32* %18, align 4
  %884 = icmp eq i32 %882, %883
  br i1 %884, label %885, label %900

885:                                              ; preds = %881
  %886 = load i32, i32* @NPY_OP_ITFLAG_BUFNEVER, align 4
  %887 = load i32*, i32** %14, align 8
  %888 = load i32, i32* %19, align 4
  %889 = sext i32 %888 to i64
  %890 = getelementptr inbounds i32, i32* %887, i64 %889
  %891 = load i32, i32* %890, align 4
  %892 = or i32 %891, %886
  store i32 %892, i32* %890, align 4
  %893 = load i64, i64* %37, align 8
  %894 = inttoptr i64 %893 to i8*
  %895 = load i32*, i32** %22, align 8
  %896 = call i8** @NBF_STRIDES(i32* %895)
  %897 = load i32, i32* %19, align 4
  %898 = sext i32 %897 to i64
  %899 = getelementptr inbounds i8*, i8** %896, i64 %898
  store i8* %894, i8** %899, align 8
  br label %900

900:                                              ; preds = %885, %881
  br label %901

901:                                              ; preds = %900, %806
  br label %902

902:                                              ; preds = %901, %787
  br label %903

903:                                              ; preds = %902, %773, %768
  br label %904

904:                                              ; preds = %903
  %905 = load i32, i32* %19, align 4
  %906 = add nsw i32 %905, 1
  store i32 %906, i32* %19, align 4
  br label %263

907:                                              ; preds = %263
  %908 = load i32, i32* %21, align 4
  %909 = icmp ne i32 %908, 0
  br i1 %909, label %910, label %941

910:                                              ; preds = %907
  store i32 0, i32* %19, align 4
  br label %911

911:                                              ; preds = %937, %910
  %912 = load i32, i32* %19, align 4
  %913 = load i32, i32* %20, align 4
  %914 = icmp slt i32 %912, %913
  br i1 %914, label %915, label %940

915:                                              ; preds = %911
  %916 = load i32*, i32** %14, align 8
  %917 = load i32, i32* %19, align 4
  %918 = sext i32 %917 to i64
  %919 = getelementptr inbounds i32, i32* %916, i64 %918
  %920 = load i32, i32* %919, align 4
  %921 = load i32, i32* @NPY_OP_ITFLAG_WRITEMASKED, align 4
  %922 = load i32, i32* @NPY_OP_ITFLAG_REDUCE, align 4
  %923 = or i32 %921, %922
  %924 = and i32 %920, %923
  %925 = load i32, i32* @NPY_OP_ITFLAG_WRITEMASKED, align 4
  %926 = load i32, i32* @NPY_OP_ITFLAG_REDUCE, align 4
  %927 = or i32 %925, %926
  %928 = icmp eq i32 %924, %927
  br i1 %928, label %929, label %936

929:                                              ; preds = %915
  %930 = load i32*, i32** %9, align 8
  %931 = load i32, i32* %19, align 4
  %932 = call i32 @check_mask_for_writemasked_reduction(i32* %930, i32 %931)
  %933 = icmp ne i32 %932, 0
  br i1 %933, label %935, label %934

934:                                              ; preds = %929
  store i32 0, i32* %8, align 4
  br label %942

935:                                              ; preds = %929
  br label %936

936:                                              ; preds = %935, %915
  br label %937

937:                                              ; preds = %936
  %938 = load i32, i32* %19, align 4
  %939 = add nsw i32 %938, 1
  store i32 %939, i32* %19, align 4
  br label %911

940:                                              ; preds = %911
  br label %941

941:                                              ; preds = %940, %907
  store i32 1, i32* %8, align 4
  br label %942

942:                                              ; preds = %941, %934, %763, %700, %617, %589, %570, %434, %424, %331
  %943 = load i32, i32* %8, align 4
  ret i32 %943
}

declare dso_local i32 @NIT_ITFLAGS(i32*) #1

declare dso_local i32 @NIT_NDIM(i32*) #1

declare dso_local i32 @NIT_NOP(i32*) #1

declare dso_local %struct.TYPE_25__** @NIT_OPERANDS(i32*) #1

declare dso_local i32* @NIT_BUFFERDATA(i32*) #1

declare dso_local i64 @PyArray_BYTES(%struct.TYPE_25__*) #1

declare dso_local i64 @PyArray_NDIM(%struct.TYPE_25__*) #1

declare dso_local i64 @PyArray_CompareLists(i32*, i32*, i64) #1

declare dso_local i32* @PyArray_DIMS(%struct.TYPE_25__*) #1

declare dso_local i32* @PyArray_STRIDES(%struct.TYPE_25__*) #1

declare dso_local i64 @PyArray_DESCR(%struct.TYPE_25__*) #1

declare dso_local i64 @solve_may_have_internal_overlap(%struct.TYPE_25__*, i32) #1

declare dso_local i32 @solve_may_share_memory(%struct.TYPE_25__*, %struct.TYPE_25__*, i32) #1

declare dso_local %struct.TYPE_25__* @npyiter_new_temp_array(i32*, i32*, i32, i32*, i32, i32*, %struct.TYPE_25__*, i32*) #1

declare dso_local i32 @npyiter_replace_axisdata(i32*, i32, %struct.TYPE_25__*, i32, i32, i32*) #1

declare dso_local i32 @PyArray_DATA(%struct.TYPE_25__*) #1

declare dso_local i64 @IsUintAligned(%struct.TYPE_25__*) #1

declare dso_local i32 @Py_INCREF(%struct.TYPE_25__*) #1

declare dso_local i64 @PyArray_NewFromDescr(i32*, %struct.TYPE_25__*, i32, i32*, i32*, i32*, i32, i32*) #1

declare dso_local i64 @PyArray_CopyInto(%struct.TYPE_25__*, %struct.TYPE_25__*) #1

declare dso_local i32 @Py_DECREF(%struct.TYPE_25__*) #1

declare dso_local i8** @NBF_STRIDES(i32*) #1

declare dso_local i64 @PyArray_SetWritebackIfCopyBase(%struct.TYPE_25__*, %struct.TYPE_25__*) #1

declare dso_local i32 @PyErr_SetString(i32, i8*) #1

declare dso_local i32* @NIT_AXISDATA(i32*) #1

declare dso_local i8** @NAD_STRIDES(i32*) #1

declare dso_local i32 @NPY_IT_DBG_PRINT(i8*) #1

declare dso_local i64 @NIT_AXISDATA_SIZEOF(i32, i32, i32) #1

declare dso_local i64 @NAD_SHAPE(i32*) #1

declare dso_local i32 @NIT_ADVANCE_AXISDATA(i32*, i32) #1

declare dso_local i32 @check_mask_for_writemasked_reduction(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
