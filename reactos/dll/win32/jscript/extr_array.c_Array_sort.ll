; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_array.c_Array_sort.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_array.c_Array_sort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@S_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"invalid arg_cnt %d\0A\00", align 1
@E_FAIL = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [21 x i8] c"arg is not dispatch\0A\00", align 1
@JSCLASS_FUNCTION = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"cmp_func is not a function\0A\00", align 1
@DISP_E_UNKNOWNNAME = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [29 x i8] c"Could not get elem %d: %08x\0A\00", align 1
@E_OUTOFMEMORY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i32*, i32, i32, i32*****, i32*****)* @Array_sort to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @Array_sort(i32* %0, i32* %1, i32 %2, i32 %3, i32***** %4, i32***** %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*****, align 8
  %13 = alloca i32*****, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*****, align 8
  %17 = alloca i32******, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i32*****, align 8
  %22 = alloca i32******, align 8
  %23 = alloca i64, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32***** %4, i32****** %12, align 8
  store i32***** %5, i32****** %13, align 8
  store i32* null, i32** %15, align 8
  store i32****** null, i32******* %17, align 8
  %28 = load i64, i64* @S_OK, align 8
  store i64 %28, i64* %20, align 8
  %29 = call i32 @TRACE(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %30 = load i32*, i32** %8, align 8
  %31 = load i32*, i32** %9, align 8
  %32 = call i64 @get_length(i32* %30, i32* %31, i32** %14, i32* %18)
  store i64 %32, i64* %20, align 8
  %33 = load i64, i64* %20, align 8
  %34 = call i64 @FAILED(i64 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %6
  %37 = load i64, i64* %20, align 8
  store i64 %37, i64* %7, align 8
  br label %488

38:                                               ; preds = %6
  %39 = load i32, i32* %11, align 4
  %40 = icmp ugt i32 %39, 1
  br i1 %40, label %41, label %45

41:                                               ; preds = %38
  %42 = load i32, i32* %11, align 4
  %43 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %42)
  %44 = load i64, i64* @E_FAIL, align 8
  store i64 %44, i64* %7, align 8
  br label %488

45:                                               ; preds = %38
  %46 = load i32, i32* %11, align 4
  %47 = icmp eq i32 %46, 1
  br i1 %47, label %48, label %80

48:                                               ; preds = %45
  %49 = load i32*****, i32****** %12, align 8
  %50 = getelementptr inbounds i32****, i32***** %49, i64 0
  %51 = load i32****, i32***** %50, align 8
  %52 = call i32 @is_object_instance(i32**** %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %48
  %55 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %56 = load i64, i64* @E_FAIL, align 8
  store i64 %56, i64* %7, align 8
  br label %488

57:                                               ; preds = %48
  %58 = load i32*****, i32****** %12, align 8
  %59 = getelementptr inbounds i32****, i32***** %58, i64 0
  %60 = load i32****, i32***** %59, align 8
  %61 = call i32 @get_object(i32**** %60)
  %62 = call i32* @iface_to_jsdisp(i32 %61)
  store i32* %62, i32** %15, align 8
  %63 = load i32*, i32** %15, align 8
  %64 = icmp ne i32* %63, null
  br i1 %64, label %65, label %70

65:                                               ; preds = %57
  %66 = load i32*, i32** %15, align 8
  %67 = load i32, i32* @JSCLASS_FUNCTION, align 4
  %68 = call i32 @is_class(i32* %66, i32 %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %79, label %70

70:                                               ; preds = %65, %57
  %71 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %72 = load i32*, i32** %15, align 8
  %73 = icmp ne i32* %72, null
  br i1 %73, label %74, label %77

74:                                               ; preds = %70
  %75 = load i32*, i32** %15, align 8
  %76 = call i32 @jsdisp_release(i32* %75)
  br label %77

77:                                               ; preds = %74, %70
  %78 = load i64, i64* @E_FAIL, align 8
  store i64 %78, i64* %7, align 8
  br label %488

79:                                               ; preds = %65
  br label %80

80:                                               ; preds = %79, %45
  %81 = load i32, i32* %18, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %100, label %83

83:                                               ; preds = %80
  %84 = load i32*, i32** %15, align 8
  %85 = icmp ne i32* %84, null
  br i1 %85, label %86, label %89

86:                                               ; preds = %83
  %87 = load i32*, i32** %15, align 8
  %88 = call i32 @jsdisp_release(i32* %87)
  br label %89

89:                                               ; preds = %86, %83
  %90 = load i32*****, i32****** %13, align 8
  %91 = icmp ne i32***** %90, null
  br i1 %91, label %92, label %98

92:                                               ; preds = %89
  %93 = load i32*, i32** %14, align 8
  %94 = call i32 @jsdisp_addref(i32* %93)
  %95 = call i32****** @jsval_obj(i32 %94)
  %96 = bitcast i32****** %95 to i32****
  %97 = load i32*****, i32****** %13, align 8
  store i32**** %96, i32***** %97, align 8
  br label %98

98:                                               ; preds = %92, %89
  %99 = load i64, i64* @S_OK, align 8
  store i64 %99, i64* %7, align 8
  br label %488

100:                                              ; preds = %80
  %101 = load i32, i32* %18, align 4
  %102 = sext i32 %101 to i64
  %103 = mul i64 %102, 8
  %104 = trunc i64 %103 to i32
  %105 = call i32******* @heap_alloc_zero(i32 %104)
  %106 = bitcast i32******* %105 to i32*****
  store i32***** %106, i32****** %16, align 8
  %107 = load i32*****, i32****** %16, align 8
  %108 = icmp ne i32***** %107, null
  br i1 %108, label %109, label %147

109:                                              ; preds = %100
  store i32 0, i32* %19, align 4
  br label %110

110:                                              ; preds = %143, %109
  %111 = load i32, i32* %19, align 4
  %112 = load i32, i32* %18, align 4
  %113 = icmp slt i32 %111, %112
  br i1 %113, label %114, label %146

114:                                              ; preds = %110
  %115 = load i32*, i32** %14, align 8
  %116 = load i32, i32* %19, align 4
  %117 = load i32*****, i32****** %16, align 8
  %118 = load i32, i32* %19, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32****, i32***** %117, i64 %119
  %121 = call i64 @jsdisp_get_idx(i32* %115, i32 %116, i32***** %120)
  store i64 %121, i64* %20, align 8
  %122 = load i64, i64* %20, align 8
  %123 = load i64, i64* @DISP_E_UNKNOWNNAME, align 8
  %124 = icmp eq i64 %122, %123
  br i1 %124, label %125, label %133

125:                                              ; preds = %114
  %126 = call i32****** (...) @jsval_undefined()
  %127 = bitcast i32****** %126 to i32****
  %128 = load i32*****, i32****** %16, align 8
  %129 = load i32, i32* %19, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32****, i32***** %128, i64 %130
  store i32**** %127, i32***** %131, align 8
  %132 = load i64, i64* @S_OK, align 8
  store i64 %132, i64* %20, align 8
  br label %142

133:                                              ; preds = %114
  %134 = load i64, i64* %20, align 8
  %135 = call i64 @FAILED(i64 %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %141

137:                                              ; preds = %133
  %138 = load i32, i32* %19, align 4
  %139 = load i64, i64* %20, align 8
  %140 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i32 %138, i64 %139)
  br label %146

141:                                              ; preds = %133
  br label %142

142:                                              ; preds = %141, %125
  br label %143

143:                                              ; preds = %142
  %144 = load i32, i32* %19, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %19, align 4
  br label %110

146:                                              ; preds = %137, %110
  br label %149

147:                                              ; preds = %100
  %148 = load i64, i64* @E_OUTOFMEMORY, align 8
  store i64 %148, i64* %20, align 8
  br label %149

149:                                              ; preds = %147, %146
  %150 = load i64, i64* %20, align 8
  %151 = call i64 @SUCCEEDED(i64 %150)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %166

153:                                              ; preds = %149
  %154 = load i32, i32* %18, align 4
  %155 = mul nsw i32 %154, 2
  %156 = sext i32 %155 to i64
  %157 = mul i64 %156, 8
  %158 = trunc i64 %157 to i32
  %159 = call i32******** @heap_alloc(i32 %158)
  %160 = bitcast i32******** %159 to i32******
  store i32****** %160, i32******* %17, align 8
  %161 = load i32******, i32******* %17, align 8
  %162 = icmp ne i32****** %161, null
  br i1 %162, label %165, label %163

163:                                              ; preds = %153
  %164 = load i64, i64* @E_OUTOFMEMORY, align 8
  store i64 %164, i64* %20, align 8
  br label %165

165:                                              ; preds = %163, %153
  br label %166

166:                                              ; preds = %165, %149
  %167 = load i64, i64* %20, align 8
  %168 = call i64 @SUCCEEDED(i64 %167)
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %441

170:                                              ; preds = %166
  %171 = load i32******, i32******* %17, align 8
  %172 = load i32, i32* %18, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i32*****, i32****** %171, i64 %173
  store i32****** %174, i32******* %22, align 8
  store i32 0, i32* %19, align 4
  br label %175

175:                                              ; preds = %188, %170
  %176 = load i32, i32* %19, align 4
  %177 = load i32, i32* %18, align 4
  %178 = icmp slt i32 %176, %177
  br i1 %178, label %179, label %191

179:                                              ; preds = %175
  %180 = load i32*****, i32****** %16, align 8
  %181 = load i32, i32* %19, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i32****, i32***** %180, i64 %182
  %184 = load i32******, i32******* %17, align 8
  %185 = load i32, i32* %19, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i32*****, i32****** %184, i64 %186
  store i32***** %183, i32****** %187, align 8
  br label %188

188:                                              ; preds = %179
  %189 = load i32, i32* %19, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %19, align 4
  br label %175

191:                                              ; preds = %175
  store i32 0, i32* %19, align 4
  br label %192

192:                                              ; preds = %250, %191
  %193 = load i32, i32* %19, align 4
  %194 = load i32, i32* %18, align 4
  %195 = sdiv i32 %194, 2
  %196 = icmp slt i32 %193, %195
  br i1 %196, label %197, label %253

197:                                              ; preds = %192
  %198 = load i32*, i32** %8, align 8
  %199 = load i32*, i32** %15, align 8
  %200 = load i32******, i32******* %17, align 8
  %201 = load i32, i32* %19, align 4
  %202 = mul nsw i32 2, %201
  %203 = add nsw i32 %202, 1
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds i32*****, i32****** %200, i64 %204
  %206 = load i32*****, i32****** %205, align 8
  %207 = load i32****, i32***** %206, align 8
  %208 = load i32******, i32******* %17, align 8
  %209 = load i32, i32* %19, align 4
  %210 = mul nsw i32 2, %209
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds i32*****, i32****** %208, i64 %211
  %213 = load i32*****, i32****** %212, align 8
  %214 = load i32****, i32***** %213, align 8
  %215 = call i64 @sort_cmp(i32* %198, i32* %199, i32**** %207, i32**** %214, i64* %23)
  store i64 %215, i64* %20, align 8
  %216 = load i64, i64* %20, align 8
  %217 = call i64 @FAILED(i64 %216)
  %218 = icmp ne i64 %217, 0
  br i1 %218, label %219, label %220

219:                                              ; preds = %197
  br label %253

220:                                              ; preds = %197
  %221 = load i64, i64* %23, align 8
  %222 = icmp slt i64 %221, 0
  br i1 %222, label %223, label %249

223:                                              ; preds = %220
  %224 = load i32******, i32******* %17, align 8
  %225 = load i32, i32* %19, align 4
  %226 = mul nsw i32 2, %225
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds i32*****, i32****** %224, i64 %227
  %229 = load i32*****, i32****** %228, align 8
  store i32***** %229, i32****** %21, align 8
  %230 = load i32******, i32******* %17, align 8
  %231 = load i32, i32* %19, align 4
  %232 = mul nsw i32 2, %231
  %233 = add nsw i32 %232, 1
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds i32*****, i32****** %230, i64 %234
  %236 = load i32*****, i32****** %235, align 8
  %237 = load i32******, i32******* %17, align 8
  %238 = load i32, i32* %19, align 4
  %239 = mul nsw i32 2, %238
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds i32*****, i32****** %237, i64 %240
  store i32***** %236, i32****** %241, align 8
  %242 = load i32*****, i32****** %21, align 8
  %243 = load i32******, i32******* %17, align 8
  %244 = load i32, i32* %19, align 4
  %245 = mul nsw i32 2, %244
  %246 = add nsw i32 %245, 1
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds i32*****, i32****** %243, i64 %247
  store i32***** %242, i32****** %248, align 8
  br label %249

249:                                              ; preds = %223, %220
  br label %250

250:                                              ; preds = %249
  %251 = load i32, i32* %19, align 4
  %252 = add nsw i32 %251, 1
  store i32 %252, i32* %19, align 4
  br label %192

253:                                              ; preds = %219, %192
  %254 = load i64, i64* %20, align 8
  %255 = call i64 @SUCCEEDED(i64 %254)
  %256 = icmp ne i64 %255, 0
  br i1 %256, label %257, label %416

257:                                              ; preds = %253
  store i32 2, i32* %24, align 4
  br label %258

258:                                              ; preds = %412, %257
  %259 = load i32, i32* %24, align 4
  %260 = load i32, i32* %18, align 4
  %261 = icmp slt i32 %259, %260
  br i1 %261, label %262, label %415

262:                                              ; preds = %258
  store i32 0, i32* %19, align 4
  br label %263

263:                                              ; preds = %401, %262
  %264 = load i32, i32* %19, align 4
  %265 = load i32, i32* %24, align 4
  %266 = add nsw i32 %264, %265
  %267 = load i32, i32* %18, align 4
  %268 = icmp slt i32 %266, %267
  br i1 %268, label %269, label %406

269:                                              ; preds = %263
  store i32 0, i32* %26, align 4
  store i32 0, i32* %25, align 4
  %270 = load i32, i32* %19, align 4
  %271 = load i32, i32* %24, align 4
  %272 = mul nsw i32 2, %271
  %273 = add nsw i32 %270, %272
  %274 = load i32, i32* %18, align 4
  %275 = icmp sle i32 %273, %274
  br i1 %275, label %276, label %278

276:                                              ; preds = %269
  %277 = load i32, i32* %24, align 4
  store i32 %277, i32* %27, align 4
  br label %284

278:                                              ; preds = %269
  %279 = load i32, i32* %18, align 4
  %280 = load i32, i32* %19, align 4
  %281 = load i32, i32* %24, align 4
  %282 = add nsw i32 %280, %281
  %283 = sub nsw i32 %279, %282
  store i32 %283, i32* %27, align 4
  br label %284

284:                                              ; preds = %278, %276
  %285 = load i32******, i32******* %22, align 8
  %286 = load i32******, i32******* %17, align 8
  %287 = load i32, i32* %19, align 4
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds i32*****, i32****** %286, i64 %288
  %290 = load i32, i32* %24, align 4
  %291 = sext i32 %290 to i64
  %292 = mul i64 %291, 8
  %293 = trunc i64 %292 to i32
  %294 = call i32 @memcpy(i32****** %285, i32****** %289, i32 %293)
  br label %295

295:                                              ; preds = %368, %284
  %296 = load i32, i32* %25, align 4
  %297 = load i32, i32* %24, align 4
  %298 = icmp slt i32 %296, %297
  br i1 %298, label %299, label %303

299:                                              ; preds = %295
  %300 = load i32, i32* %26, align 4
  %301 = load i32, i32* %27, align 4
  %302 = icmp slt i32 %300, %301
  br label %303

303:                                              ; preds = %299, %295
  %304 = phi i1 [ false, %295 ], [ %302, %299 ]
  br i1 %304, label %305, label %369

305:                                              ; preds = %303
  %306 = load i32*, i32** %8, align 8
  %307 = load i32*, i32** %15, align 8
  %308 = load i32******, i32******* %22, align 8
  %309 = load i32, i32* %25, align 4
  %310 = sext i32 %309 to i64
  %311 = getelementptr inbounds i32*****, i32****** %308, i64 %310
  %312 = load i32*****, i32****** %311, align 8
  %313 = load i32****, i32***** %312, align 8
  %314 = load i32******, i32******* %17, align 8
  %315 = load i32, i32* %19, align 4
  %316 = load i32, i32* %24, align 4
  %317 = add nsw i32 %315, %316
  %318 = load i32, i32* %26, align 4
  %319 = add nsw i32 %317, %318
  %320 = sext i32 %319 to i64
  %321 = getelementptr inbounds i32*****, i32****** %314, i64 %320
  %322 = load i32*****, i32****** %321, align 8
  %323 = load i32****, i32***** %322, align 8
  %324 = call i64 @sort_cmp(i32* %306, i32* %307, i32**** %313, i32**** %323, i64* %23)
  store i64 %324, i64* %20, align 8
  %325 = load i64, i64* %20, align 8
  %326 = call i64 @FAILED(i64 %325)
  %327 = icmp ne i64 %326, 0
  br i1 %327, label %328, label %329

328:                                              ; preds = %305
  br label %369

329:                                              ; preds = %305
  %330 = load i64, i64* %23, align 8
  %331 = icmp slt i64 %330, 0
  br i1 %331, label %332, label %348

332:                                              ; preds = %329
  %333 = load i32******, i32******* %22, align 8
  %334 = load i32, i32* %25, align 4
  %335 = sext i32 %334 to i64
  %336 = getelementptr inbounds i32*****, i32****** %333, i64 %335
  %337 = load i32*****, i32****** %336, align 8
  %338 = load i32******, i32******* %17, align 8
  %339 = load i32, i32* %19, align 4
  %340 = load i32, i32* %25, align 4
  %341 = add nsw i32 %339, %340
  %342 = load i32, i32* %26, align 4
  %343 = add nsw i32 %341, %342
  %344 = sext i32 %343 to i64
  %345 = getelementptr inbounds i32*****, i32****** %338, i64 %344
  store i32***** %337, i32****** %345, align 8
  %346 = load i32, i32* %25, align 4
  %347 = add nsw i32 %346, 1
  store i32 %347, i32* %25, align 4
  br label %368

348:                                              ; preds = %329
  %349 = load i32******, i32******* %17, align 8
  %350 = load i32, i32* %19, align 4
  %351 = load i32, i32* %24, align 4
  %352 = add nsw i32 %350, %351
  %353 = load i32, i32* %26, align 4
  %354 = add nsw i32 %352, %353
  %355 = sext i32 %354 to i64
  %356 = getelementptr inbounds i32*****, i32****** %349, i64 %355
  %357 = load i32*****, i32****** %356, align 8
  %358 = load i32******, i32******* %17, align 8
  %359 = load i32, i32* %19, align 4
  %360 = load i32, i32* %25, align 4
  %361 = add nsw i32 %359, %360
  %362 = load i32, i32* %26, align 4
  %363 = add nsw i32 %361, %362
  %364 = sext i32 %363 to i64
  %365 = getelementptr inbounds i32*****, i32****** %358, i64 %364
  store i32***** %357, i32****** %365, align 8
  %366 = load i32, i32* %26, align 4
  %367 = add nsw i32 %366, 1
  store i32 %367, i32* %26, align 4
  br label %368

368:                                              ; preds = %348, %332
  br label %295

369:                                              ; preds = %328, %303
  %370 = load i64, i64* %20, align 8
  %371 = call i64 @FAILED(i64 %370)
  %372 = icmp ne i64 %371, 0
  br i1 %372, label %373, label %374

373:                                              ; preds = %369
  br label %406

374:                                              ; preds = %369
  %375 = load i32, i32* %25, align 4
  %376 = load i32, i32* %24, align 4
  %377 = icmp slt i32 %375, %376
  br i1 %377, label %378, label %400

378:                                              ; preds = %374
  %379 = load i32******, i32******* %17, align 8
  %380 = load i32, i32* %19, align 4
  %381 = sext i32 %380 to i64
  %382 = getelementptr inbounds i32*****, i32****** %379, i64 %381
  %383 = load i32, i32* %25, align 4
  %384 = sext i32 %383 to i64
  %385 = getelementptr inbounds i32*****, i32****** %382, i64 %384
  %386 = load i32, i32* %26, align 4
  %387 = sext i32 %386 to i64
  %388 = getelementptr inbounds i32*****, i32****** %385, i64 %387
  %389 = load i32******, i32******* %22, align 8
  %390 = load i32, i32* %25, align 4
  %391 = sext i32 %390 to i64
  %392 = getelementptr inbounds i32*****, i32****** %389, i64 %391
  %393 = load i32, i32* %24, align 4
  %394 = load i32, i32* %25, align 4
  %395 = sub nsw i32 %393, %394
  %396 = sext i32 %395 to i64
  %397 = mul i64 %396, 8
  %398 = trunc i64 %397 to i32
  %399 = call i32 @memcpy(i32****** %388, i32****** %392, i32 %398)
  br label %400

400:                                              ; preds = %378, %374
  br label %401

401:                                              ; preds = %400
  %402 = load i32, i32* %24, align 4
  %403 = mul nsw i32 2, %402
  %404 = load i32, i32* %19, align 4
  %405 = add nsw i32 %404, %403
  store i32 %405, i32* %19, align 4
  br label %263

406:                                              ; preds = %373, %263
  %407 = load i64, i64* %20, align 8
  %408 = call i64 @FAILED(i64 %407)
  %409 = icmp ne i64 %408, 0
  br i1 %409, label %410, label %411

410:                                              ; preds = %406
  br label %415

411:                                              ; preds = %406
  br label %412

412:                                              ; preds = %411
  %413 = load i32, i32* %24, align 4
  %414 = mul nsw i32 %413, 2
  store i32 %414, i32* %24, align 4
  br label %258

415:                                              ; preds = %410, %258
  br label %416

416:                                              ; preds = %415, %253
  store i32 0, i32* %19, align 4
  br label %417

417:                                              ; preds = %437, %416
  %418 = load i64, i64* %20, align 8
  %419 = call i64 @SUCCEEDED(i64 %418)
  %420 = icmp ne i64 %419, 0
  br i1 %420, label %421, label %425

421:                                              ; preds = %417
  %422 = load i32, i32* %19, align 4
  %423 = load i32, i32* %18, align 4
  %424 = icmp slt i32 %422, %423
  br label %425

425:                                              ; preds = %421, %417
  %426 = phi i1 [ false, %417 ], [ %424, %421 ]
  br i1 %426, label %427, label %440

427:                                              ; preds = %425
  %428 = load i32*, i32** %14, align 8
  %429 = load i32, i32* %19, align 4
  %430 = load i32******, i32******* %17, align 8
  %431 = load i32, i32* %19, align 4
  %432 = sext i32 %431 to i64
  %433 = getelementptr inbounds i32*****, i32****** %430, i64 %432
  %434 = load i32*****, i32****** %433, align 8
  %435 = load i32****, i32***** %434, align 8
  %436 = call i64 @jsdisp_propput_idx(i32* %428, i32 %429, i32**** %435)
  store i64 %436, i64* %20, align 8
  br label %437

437:                                              ; preds = %427
  %438 = load i32, i32* %19, align 4
  %439 = add nsw i32 %438, 1
  store i32 %439, i32* %19, align 4
  br label %417

440:                                              ; preds = %425
  br label %441

441:                                              ; preds = %440, %166
  %442 = load i32*****, i32****** %16, align 8
  %443 = icmp ne i32***** %442, null
  br i1 %443, label %444, label %463

444:                                              ; preds = %441
  store i32 0, i32* %19, align 4
  br label %445

445:                                              ; preds = %456, %444
  %446 = load i32, i32* %19, align 4
  %447 = load i32, i32* %18, align 4
  %448 = icmp slt i32 %446, %447
  br i1 %448, label %449, label %459

449:                                              ; preds = %445
  %450 = load i32*****, i32****** %16, align 8
  %451 = load i32, i32* %19, align 4
  %452 = sext i32 %451 to i64
  %453 = getelementptr inbounds i32****, i32***** %450, i64 %452
  %454 = load i32****, i32***** %453, align 8
  %455 = call i32 @jsval_release(i32**** %454)
  br label %456

456:                                              ; preds = %449
  %457 = load i32, i32* %19, align 4
  %458 = add nsw i32 %457, 1
  store i32 %458, i32* %19, align 4
  br label %445

459:                                              ; preds = %445
  %460 = load i32*****, i32****** %16, align 8
  %461 = bitcast i32***** %460 to i32******
  %462 = call i32 @heap_free(i32****** %461)
  br label %463

463:                                              ; preds = %459, %441
  %464 = load i32******, i32******* %17, align 8
  %465 = call i32 @heap_free(i32****** %464)
  %466 = load i32*, i32** %15, align 8
  %467 = icmp ne i32* %466, null
  br i1 %467, label %468, label %471

468:                                              ; preds = %463
  %469 = load i32*, i32** %15, align 8
  %470 = call i32 @jsdisp_release(i32* %469)
  br label %471

471:                                              ; preds = %468, %463
  %472 = load i64, i64* %20, align 8
  %473 = call i64 @FAILED(i64 %472)
  %474 = icmp ne i64 %473, 0
  br i1 %474, label %475, label %477

475:                                              ; preds = %471
  %476 = load i64, i64* %20, align 8
  store i64 %476, i64* %7, align 8
  br label %488

477:                                              ; preds = %471
  %478 = load i32*****, i32****** %13, align 8
  %479 = icmp ne i32***** %478, null
  br i1 %479, label %480, label %486

480:                                              ; preds = %477
  %481 = load i32*, i32** %14, align 8
  %482 = call i32 @jsdisp_addref(i32* %481)
  %483 = call i32****** @jsval_obj(i32 %482)
  %484 = bitcast i32****** %483 to i32****
  %485 = load i32*****, i32****** %13, align 8
  store i32**** %484, i32***** %485, align 8
  br label %486

486:                                              ; preds = %480, %477
  %487 = load i64, i64* @S_OK, align 8
  store i64 %487, i64* %7, align 8
  br label %488

488:                                              ; preds = %486, %475, %98, %77, %54, %41, %36
  %489 = load i64, i64* %7, align 8
  ret i64 %489
}

declare dso_local i32 @TRACE(i8*) #1

declare dso_local i64 @get_length(i32*, i32*, i32**, i32*) #1

declare dso_local i64 @FAILED(i64) #1

declare dso_local i32 @WARN(i8*, ...) #1

declare dso_local i32 @is_object_instance(i32****) #1

declare dso_local i32* @iface_to_jsdisp(i32) #1

declare dso_local i32 @get_object(i32****) #1

declare dso_local i32 @is_class(i32*, i32) #1

declare dso_local i32 @jsdisp_release(i32*) #1

declare dso_local i32****** @jsval_obj(i32) #1

declare dso_local i32 @jsdisp_addref(i32*) #1

declare dso_local i32******* @heap_alloc_zero(i32) #1

declare dso_local i64 @jsdisp_get_idx(i32*, i32, i32*****) #1

declare dso_local i32****** @jsval_undefined(...) #1

declare dso_local i64 @SUCCEEDED(i64) #1

declare dso_local i32******** @heap_alloc(i32) #1

declare dso_local i64 @sort_cmp(i32*, i32*, i32****, i32****, i64*) #1

declare dso_local i32 @memcpy(i32******, i32******, i32) #1

declare dso_local i64 @jsdisp_propput_idx(i32*, i32, i32****) #1

declare dso_local i32 @jsval_release(i32****) #1

declare dso_local i32 @heap_free(i32******) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
