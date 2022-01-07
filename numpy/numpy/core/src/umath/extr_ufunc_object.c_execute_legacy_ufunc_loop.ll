; ModuleID = '/home/carl/AnghaBench/numpy/numpy/core/src/umath/extr_ufunc_object.c_execute_legacy_ufunc_loop.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/core/src/umath/extr_ufunc_object.c_execute_legacy_ufunc_loop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i64 (%struct.TYPE_6__*, i32**, i32*, i8**, i32*)* }

@NPY_ANYORDER = common dso_local global i64 0, align 8
@NPY_KEEPORDER = common dso_local global i64 0, align 8
@PyArray_Type = common dso_local global i32 0, align 4
@NPY_ARRAY_F_CONTIGUOUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"trivial 1 input with allocated output\0A\00", align 1
@PyArray_TRIVIALLY_ITERABLE_OP_READ = common dso_local global i32 0, align 4
@PyArray_TRIVIALLY_ITERABLE_OP_NOREAD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"trivial 1 input\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"trivial 2 input with allocated output\0A\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"trivial 2 input\0A\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"iterator loop\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32, i32**, i32**, i64, i32, i32**, i32, i32*)* @execute_legacy_ufunc_loop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @execute_legacy_ufunc_loop(%struct.TYPE_6__* %0, i32 %1, i32** %2, i32** %3, i64 %4, i32 %5, i32** %6, i32 %7, i32* %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_6__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32**, align 8
  %14 = alloca i32**, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32**, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i8*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %11, align 8
  store i32 %1, i32* %12, align 4
  store i32** %2, i32*** %13, align 8
  store i32** %3, i32*** %14, align 8
  store i64 %4, i64* %15, align 8
  store i32 %5, i32* %16, align 4
  store i32** %6, i32*** %17, align 8
  store i32 %7, i32* %18, align 4
  store i32* %8, i32** %19, align 8
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %20, align 4
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %21, align 4
  store i32 0, i32* %24, align 4
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 2
  %34 = load i64 (%struct.TYPE_6__*, i32**, i32*, i8**, i32*)*, i64 (%struct.TYPE_6__*, i32**, i32*, i8**, i32*)** %33, align 8
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %36 = load i32**, i32*** %14, align 8
  %37 = call i64 %34(%struct.TYPE_6__* %35, i32** %36, i32* %22, i8** %23, i32* %24)
  %38 = icmp slt i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %9
  store i32 -1, i32* %10, align 4
  br label %343

40:                                               ; preds = %9
  %41 = load i8*, i8** %23, align 8
  %42 = call i64 @_does_loop_use_arrays(i8* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %40
  %45 = load i32**, i32*** %13, align 8
  %46 = bitcast i32** %45 to i8*
  store i8* %46, i8** %23, align 8
  br label %47

47:                                               ; preds = %44, %40
  %48 = load i32, i32* %12, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %327

50:                                               ; preds = %47
  %51 = load i32, i32* %20, align 4
  %52 = icmp eq i32 %51, 1
  br i1 %52, label %53, label %172

53:                                               ; preds = %50
  %54 = load i32, i32* %21, align 4
  %55 = icmp eq i32 %54, 1
  br i1 %55, label %56, label %172

56:                                               ; preds = %53
  %57 = load i32**, i32*** %13, align 8
  %58 = getelementptr inbounds i32*, i32** %57, i64 1
  %59 = load i32*, i32** %58, align 8
  %60 = icmp eq i32* %59, null
  br i1 %60, label %61, label %127

61:                                               ; preds = %56
  %62 = load i64, i64* %15, align 8
  %63 = load i64, i64* @NPY_ANYORDER, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %69, label %65

65:                                               ; preds = %61
  %66 = load i64, i64* %15, align 8
  %67 = load i64, i64* @NPY_KEEPORDER, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %127

69:                                               ; preds = %65, %61
  %70 = load i32**, i32*** %13, align 8
  %71 = getelementptr inbounds i32*, i32** %70, i64 0
  %72 = load i32*, i32** %71, align 8
  %73 = call i64 @PyArray_TRIVIALLY_ITERABLE(i32* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %127

75:                                               ; preds = %69
  %76 = load i32**, i32*** %14, align 8
  %77 = getelementptr inbounds i32*, i32** %76, i64 1
  %78 = load i32*, i32** %77, align 8
  %79 = call i32 @Py_INCREF(i32* %78)
  %80 = load i32**, i32*** %14, align 8
  %81 = getelementptr inbounds i32*, i32** %80, i64 1
  %82 = load i32*, i32** %81, align 8
  %83 = load i32**, i32*** %13, align 8
  %84 = getelementptr inbounds i32*, i32** %83, i64 0
  %85 = load i32*, i32** %84, align 8
  %86 = call i64 @PyArray_NDIM(i32* %85)
  %87 = load i32**, i32*** %13, align 8
  %88 = getelementptr inbounds i32*, i32** %87, i64 0
  %89 = load i32*, i32** %88, align 8
  %90 = call i32 @PyArray_DIMS(i32* %89)
  %91 = load i32**, i32*** %13, align 8
  %92 = getelementptr inbounds i32*, i32** %91, i64 0
  %93 = load i32*, i32** %92, align 8
  %94 = call i64 @PyArray_ISFORTRAN(i32* %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %75
  %97 = load i32, i32* @NPY_ARRAY_F_CONTIGUOUS, align 4
  br label %99

98:                                               ; preds = %75
  br label %99

99:                                               ; preds = %98, %96
  %100 = phi i32 [ %97, %96 ], [ 0, %98 ]
  %101 = call i64 @PyArray_NewFromDescr(i32* @PyArray_Type, i32* %82, i64 %86, i32 %90, i32* null, i32* null, i32 %100, i32* null)
  %102 = inttoptr i64 %101 to i32*
  %103 = load i32**, i32*** %13, align 8
  %104 = getelementptr inbounds i32*, i32** %103, i64 1
  store i32* %102, i32** %104, align 8
  %105 = load i32**, i32*** %13, align 8
  %106 = getelementptr inbounds i32*, i32** %105, i64 1
  %107 = load i32*, i32** %106, align 8
  %108 = icmp eq i32* %107, null
  br i1 %108, label %109, label %110

109:                                              ; preds = %99
  store i32 -1, i32* %10, align 4
  br label %343

110:                                              ; preds = %99
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %112 = load i32**, i32*** %13, align 8
  %113 = getelementptr inbounds i32*, i32** %112, i64 1
  %114 = load i32**, i32*** %17, align 8
  %115 = getelementptr inbounds i32*, i32** %114, i64 0
  %116 = load i32*, i32** %115, align 8
  %117 = load i32, i32* %18, align 4
  %118 = call i64 @prepare_ufunc_output(%struct.TYPE_6__* %111, i32** %113, i32* %116, i32 %117, i32 0)
  %119 = icmp slt i64 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %110
  store i32 -1, i32* %10, align 4
  br label %343

121:                                              ; preds = %110
  %122 = call i32 @NPY_UF_DBG_PRINT(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %123 = load i32**, i32*** %13, align 8
  %124 = load i32, i32* %22, align 4
  %125 = load i8*, i8** %23, align 8
  %126 = call i32 @trivial_two_operand_loop(i32** %123, i32 %124, i8* %125)
  store i32 0, i32* %10, align 4
  br label %343

127:                                              ; preds = %69, %65, %56
  %128 = load i32**, i32*** %13, align 8
  %129 = getelementptr inbounds i32*, i32** %128, i64 1
  %130 = load i32*, i32** %129, align 8
  %131 = icmp ne i32* %130, null
  br i1 %131, label %132, label %170

132:                                              ; preds = %127
  %133 = load i32**, i32*** %13, align 8
  %134 = getelementptr inbounds i32*, i32** %133, i64 1
  %135 = load i32*, i32** %134, align 8
  %136 = call i64 @PyArray_NDIM(i32* %135)
  %137 = load i32**, i32*** %13, align 8
  %138 = getelementptr inbounds i32*, i32** %137, i64 0
  %139 = load i32*, i32** %138, align 8
  %140 = call i64 @PyArray_NDIM(i32* %139)
  %141 = icmp sge i64 %136, %140
  br i1 %141, label %142, label %170

142:                                              ; preds = %132
  %143 = load i32**, i32*** %13, align 8
  %144 = getelementptr inbounds i32*, i32** %143, i64 0
  %145 = load i32*, i32** %144, align 8
  %146 = load i32**, i32*** %13, align 8
  %147 = getelementptr inbounds i32*, i32** %146, i64 1
  %148 = load i32*, i32** %147, align 8
  %149 = load i32, i32* @PyArray_TRIVIALLY_ITERABLE_OP_READ, align 4
  %150 = load i32, i32* @PyArray_TRIVIALLY_ITERABLE_OP_NOREAD, align 4
  %151 = call i64 @PyArray_TRIVIALLY_ITERABLE_PAIR(i32* %145, i32* %148, i32 %149, i32 %150)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %170

153:                                              ; preds = %142
  %154 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %155 = load i32**, i32*** %13, align 8
  %156 = getelementptr inbounds i32*, i32** %155, i64 1
  %157 = load i32**, i32*** %17, align 8
  %158 = getelementptr inbounds i32*, i32** %157, i64 0
  %159 = load i32*, i32** %158, align 8
  %160 = load i32, i32* %18, align 4
  %161 = call i64 @prepare_ufunc_output(%struct.TYPE_6__* %154, i32** %156, i32* %159, i32 %160, i32 0)
  %162 = icmp slt i64 %161, 0
  br i1 %162, label %163, label %164

163:                                              ; preds = %153
  store i32 -1, i32* %10, align 4
  br label %343

164:                                              ; preds = %153
  %165 = call i32 @NPY_UF_DBG_PRINT(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %166 = load i32**, i32*** %13, align 8
  %167 = load i32, i32* %22, align 4
  %168 = load i8*, i8** %23, align 8
  %169 = call i32 @trivial_two_operand_loop(i32** %166, i32 %167, i8* %168)
  store i32 0, i32* %10, align 4
  br label %343

170:                                              ; preds = %142, %132, %127
  br label %171

171:                                              ; preds = %170
  br label %326

172:                                              ; preds = %53, %50
  %173 = load i32, i32* %20, align 4
  %174 = icmp eq i32 %173, 2
  br i1 %174, label %175, label %325

175:                                              ; preds = %172
  %176 = load i32, i32* %21, align 4
  %177 = icmp eq i32 %176, 1
  br i1 %177, label %178, label %325

178:                                              ; preds = %175
  %179 = load i32**, i32*** %13, align 8
  %180 = getelementptr inbounds i32*, i32** %179, i64 2
  %181 = load i32*, i32** %180, align 8
  %182 = icmp eq i32* %181, null
  br i1 %182, label %183, label %266

183:                                              ; preds = %178
  %184 = load i64, i64* %15, align 8
  %185 = load i64, i64* @NPY_ANYORDER, align 8
  %186 = icmp eq i64 %184, %185
  br i1 %186, label %191, label %187

187:                                              ; preds = %183
  %188 = load i64, i64* %15, align 8
  %189 = load i64, i64* @NPY_KEEPORDER, align 8
  %190 = icmp eq i64 %188, %189
  br i1 %190, label %191, label %266

191:                                              ; preds = %187, %183
  %192 = load i32**, i32*** %13, align 8
  %193 = getelementptr inbounds i32*, i32** %192, i64 0
  %194 = load i32*, i32** %193, align 8
  %195 = load i32**, i32*** %13, align 8
  %196 = getelementptr inbounds i32*, i32** %195, i64 1
  %197 = load i32*, i32** %196, align 8
  %198 = load i32, i32* @PyArray_TRIVIALLY_ITERABLE_OP_READ, align 4
  %199 = load i32, i32* @PyArray_TRIVIALLY_ITERABLE_OP_READ, align 4
  %200 = call i64 @PyArray_TRIVIALLY_ITERABLE_PAIR(i32* %194, i32* %197, i32 %198, i32 %199)
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %266

202:                                              ; preds = %191
  %203 = load i32**, i32*** %13, align 8
  %204 = getelementptr inbounds i32*, i32** %203, i64 0
  %205 = load i32*, i32** %204, align 8
  %206 = call i64 @PyArray_NDIM(i32* %205)
  %207 = load i32**, i32*** %13, align 8
  %208 = getelementptr inbounds i32*, i32** %207, i64 1
  %209 = load i32*, i32** %208, align 8
  %210 = call i64 @PyArray_NDIM(i32* %209)
  %211 = icmp sge i64 %206, %210
  br i1 %211, label %212, label %216

212:                                              ; preds = %202
  %213 = load i32**, i32*** %13, align 8
  %214 = getelementptr inbounds i32*, i32** %213, i64 0
  %215 = load i32*, i32** %214, align 8
  store i32* %215, i32** %25, align 8
  br label %220

216:                                              ; preds = %202
  %217 = load i32**, i32*** %13, align 8
  %218 = getelementptr inbounds i32*, i32** %217, i64 1
  %219 = load i32*, i32** %218, align 8
  store i32* %219, i32** %25, align 8
  br label %220

220:                                              ; preds = %216, %212
  %221 = load i32**, i32*** %14, align 8
  %222 = getelementptr inbounds i32*, i32** %221, i64 2
  %223 = load i32*, i32** %222, align 8
  %224 = call i32 @Py_INCREF(i32* %223)
  %225 = load i32**, i32*** %14, align 8
  %226 = getelementptr inbounds i32*, i32** %225, i64 2
  %227 = load i32*, i32** %226, align 8
  %228 = load i32*, i32** %25, align 8
  %229 = call i64 @PyArray_NDIM(i32* %228)
  %230 = load i32*, i32** %25, align 8
  %231 = call i32 @PyArray_DIMS(i32* %230)
  %232 = load i32*, i32** %25, align 8
  %233 = call i64 @PyArray_ISFORTRAN(i32* %232)
  %234 = icmp ne i64 %233, 0
  br i1 %234, label %235, label %237

235:                                              ; preds = %220
  %236 = load i32, i32* @NPY_ARRAY_F_CONTIGUOUS, align 4
  br label %238

237:                                              ; preds = %220
  br label %238

238:                                              ; preds = %237, %235
  %239 = phi i32 [ %236, %235 ], [ 0, %237 ]
  %240 = call i64 @PyArray_NewFromDescr(i32* @PyArray_Type, i32* %227, i64 %229, i32 %231, i32* null, i32* null, i32 %239, i32* null)
  %241 = inttoptr i64 %240 to i32*
  %242 = load i32**, i32*** %13, align 8
  %243 = getelementptr inbounds i32*, i32** %242, i64 2
  store i32* %241, i32** %243, align 8
  %244 = load i32**, i32*** %13, align 8
  %245 = getelementptr inbounds i32*, i32** %244, i64 2
  %246 = load i32*, i32** %245, align 8
  %247 = icmp eq i32* %246, null
  br i1 %247, label %248, label %249

248:                                              ; preds = %238
  store i32 -1, i32* %10, align 4
  br label %343

249:                                              ; preds = %238
  %250 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %251 = load i32**, i32*** %13, align 8
  %252 = getelementptr inbounds i32*, i32** %251, i64 2
  %253 = load i32**, i32*** %17, align 8
  %254 = getelementptr inbounds i32*, i32** %253, i64 0
  %255 = load i32*, i32** %254, align 8
  %256 = load i32, i32* %18, align 4
  %257 = call i64 @prepare_ufunc_output(%struct.TYPE_6__* %250, i32** %252, i32* %255, i32 %256, i32 0)
  %258 = icmp slt i64 %257, 0
  br i1 %258, label %259, label %260

259:                                              ; preds = %249
  store i32 -1, i32* %10, align 4
  br label %343

260:                                              ; preds = %249
  %261 = call i32 @NPY_UF_DBG_PRINT(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  %262 = load i32**, i32*** %13, align 8
  %263 = load i32, i32* %22, align 4
  %264 = load i8*, i8** %23, align 8
  %265 = call i32 @trivial_three_operand_loop(i32** %262, i32 %263, i8* %264)
  store i32 0, i32* %10, align 4
  br label %343

266:                                              ; preds = %191, %187, %178
  %267 = load i32**, i32*** %13, align 8
  %268 = getelementptr inbounds i32*, i32** %267, i64 2
  %269 = load i32*, i32** %268, align 8
  %270 = icmp ne i32* %269, null
  br i1 %270, label %271, label %323

271:                                              ; preds = %266
  %272 = load i32**, i32*** %13, align 8
  %273 = getelementptr inbounds i32*, i32** %272, i64 2
  %274 = load i32*, i32** %273, align 8
  %275 = call i64 @PyArray_NDIM(i32* %274)
  %276 = load i32**, i32*** %13, align 8
  %277 = getelementptr inbounds i32*, i32** %276, i64 0
  %278 = load i32*, i32** %277, align 8
  %279 = call i64 @PyArray_NDIM(i32* %278)
  %280 = icmp sge i64 %275, %279
  br i1 %280, label %281, label %323

281:                                              ; preds = %271
  %282 = load i32**, i32*** %13, align 8
  %283 = getelementptr inbounds i32*, i32** %282, i64 2
  %284 = load i32*, i32** %283, align 8
  %285 = call i64 @PyArray_NDIM(i32* %284)
  %286 = load i32**, i32*** %13, align 8
  %287 = getelementptr inbounds i32*, i32** %286, i64 1
  %288 = load i32*, i32** %287, align 8
  %289 = call i64 @PyArray_NDIM(i32* %288)
  %290 = icmp sge i64 %285, %289
  br i1 %290, label %291, label %323

291:                                              ; preds = %281
  %292 = load i32**, i32*** %13, align 8
  %293 = getelementptr inbounds i32*, i32** %292, i64 0
  %294 = load i32*, i32** %293, align 8
  %295 = load i32**, i32*** %13, align 8
  %296 = getelementptr inbounds i32*, i32** %295, i64 1
  %297 = load i32*, i32** %296, align 8
  %298 = load i32**, i32*** %13, align 8
  %299 = getelementptr inbounds i32*, i32** %298, i64 2
  %300 = load i32*, i32** %299, align 8
  %301 = load i32, i32* @PyArray_TRIVIALLY_ITERABLE_OP_READ, align 4
  %302 = load i32, i32* @PyArray_TRIVIALLY_ITERABLE_OP_READ, align 4
  %303 = load i32, i32* @PyArray_TRIVIALLY_ITERABLE_OP_NOREAD, align 4
  %304 = call i64 @PyArray_TRIVIALLY_ITERABLE_TRIPLE(i32* %294, i32* %297, i32* %300, i32 %301, i32 %302, i32 %303)
  %305 = icmp ne i64 %304, 0
  br i1 %305, label %306, label %323

306:                                              ; preds = %291
  %307 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %308 = load i32**, i32*** %13, align 8
  %309 = getelementptr inbounds i32*, i32** %308, i64 2
  %310 = load i32**, i32*** %17, align 8
  %311 = getelementptr inbounds i32*, i32** %310, i64 0
  %312 = load i32*, i32** %311, align 8
  %313 = load i32, i32* %18, align 4
  %314 = call i64 @prepare_ufunc_output(%struct.TYPE_6__* %307, i32** %309, i32* %312, i32 %313, i32 0)
  %315 = icmp slt i64 %314, 0
  br i1 %315, label %316, label %317

316:                                              ; preds = %306
  store i32 -1, i32* %10, align 4
  br label %343

317:                                              ; preds = %306
  %318 = call i32 @NPY_UF_DBG_PRINT(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  %319 = load i32**, i32*** %13, align 8
  %320 = load i32, i32* %22, align 4
  %321 = load i8*, i8** %23, align 8
  %322 = call i32 @trivial_three_operand_loop(i32** %319, i32 %320, i8* %321)
  store i32 0, i32* %10, align 4
  br label %343

323:                                              ; preds = %291, %281, %271, %266
  br label %324

324:                                              ; preds = %323
  br label %325

325:                                              ; preds = %324, %175, %172
  br label %326

326:                                              ; preds = %325, %171
  br label %327

327:                                              ; preds = %326, %47
  %328 = call i32 @NPY_UF_DBG_PRINT(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  %329 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %330 = load i32**, i32*** %13, align 8
  %331 = load i32**, i32*** %14, align 8
  %332 = load i64, i64* %15, align 8
  %333 = load i32, i32* %16, align 4
  %334 = load i32**, i32*** %17, align 8
  %335 = load i32, i32* %18, align 4
  %336 = load i32, i32* %22, align 4
  %337 = load i8*, i8** %23, align 8
  %338 = load i32*, i32** %19, align 8
  %339 = call i64 @iterator_loop(%struct.TYPE_6__* %329, i32** %330, i32** %331, i64 %332, i32 %333, i32** %334, i32 %335, i32 %336, i8* %337, i32* %338)
  %340 = icmp slt i64 %339, 0
  br i1 %340, label %341, label %342

341:                                              ; preds = %327
  store i32 -1, i32* %10, align 4
  br label %343

342:                                              ; preds = %327
  store i32 0, i32* %10, align 4
  br label %343

343:                                              ; preds = %342, %341, %317, %316, %260, %259, %248, %164, %163, %121, %120, %109, %39
  %344 = load i32, i32* %10, align 4
  ret i32 %344
}

declare dso_local i64 @_does_loop_use_arrays(i8*) #1

declare dso_local i64 @PyArray_TRIVIALLY_ITERABLE(i32*) #1

declare dso_local i32 @Py_INCREF(i32*) #1

declare dso_local i64 @PyArray_NewFromDescr(i32*, i32*, i64, i32, i32*, i32*, i32, i32*) #1

declare dso_local i64 @PyArray_NDIM(i32*) #1

declare dso_local i32 @PyArray_DIMS(i32*) #1

declare dso_local i64 @PyArray_ISFORTRAN(i32*) #1

declare dso_local i64 @prepare_ufunc_output(%struct.TYPE_6__*, i32**, i32*, i32, i32) #1

declare dso_local i32 @NPY_UF_DBG_PRINT(i8*) #1

declare dso_local i32 @trivial_two_operand_loop(i32**, i32, i8*) #1

declare dso_local i64 @PyArray_TRIVIALLY_ITERABLE_PAIR(i32*, i32*, i32, i32) #1

declare dso_local i32 @trivial_three_operand_loop(i32**, i32, i8*) #1

declare dso_local i64 @PyArray_TRIVIALLY_ITERABLE_TRIPLE(i32*, i32*, i32*, i32, i32, i32) #1

declare dso_local i64 @iterator_loop(%struct.TYPE_6__*, i32**, i32**, i64, i32, i32**, i32, i32, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
