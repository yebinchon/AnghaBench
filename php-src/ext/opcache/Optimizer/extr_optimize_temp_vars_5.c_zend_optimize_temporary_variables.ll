; ModuleID = '/home/carl/AnghaBench/php-src/ext/opcache/Optimizer/extr_optimize_temp_vars_5.c_zend_optimize_temporary_variables.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/opcache/Optimizer/extr_optimize_temp_vars_5.c_zend_optimize_temporary_variables.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32, i32, i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32, i32, i64, i32, i32, %struct.TYPE_9__, %struct.TYPE_11__, %struct.TYPE_10__ }
%struct.TYPE_9__ = type { i8* }
%struct.TYPE_11__ = type { i8* }
%struct.TYPE_10__ = type { i8* }
%struct.TYPE_12__ = type { i32 }

@ZEND_BITSET_ELM_SIZE = common dso_local global i32 0, align 4
@IS_VAR = common dso_local global i32 0, align 4
@IS_TMP_VAR = common dso_local global i32 0, align 4
@ZEND_ROPE_END = common dso_local global i64 0, align 8
@ZEND_ACC_HAS_FINALLY_BLOCK = common dso_local global i32 0, align 4
@ZEND_RETURN = common dso_local global i64 0, align 8
@ZEND_GENERATOR_RETURN = common dso_local global i64 0, align 8
@ZEND_RETURN_BY_REF = common dso_local global i64 0, align 8
@ZEND_FREE = common dso_local global i64 0, align 8
@ZEND_FE_FREE = common dso_local global i64 0, align 8
@ZEND_FAST_CALL = common dso_local global i64 0, align 8
@ZEND_VERIFY_RETURN_TYPE = common dso_local global i64 0, align 8
@ZEND_DISCARD_EXCEPTION = common dso_local global i64 0, align 8
@ZEND_ROPE_INIT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zend_optimize_temporary_variables(%struct.TYPE_13__* %0, %struct.TYPE_12__* %1) #0 {
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_14__**, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_14__*, align 8
  %13 = alloca %struct.TYPE_14__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.TYPE_14__*, align 8
  %22 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %4, align 8
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %5, align 4
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %6, align 4
  store i32 -1, i32* %16, align 4
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i8* @zend_arena_checkpoint(i32 %31)
  store i8* %32, i8** %17, align 8
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @zend_bitset_len(i32 %33)
  store i32 %34, i32* %7, align 4
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 0
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* @ZEND_BITSET_ELM_SIZE, align 4
  %39 = mul nsw i32 %37, %38
  %40 = call i64 @zend_arena_alloc(i32* %36, i32 %39)
  store i64 %40, i64* %8, align 8
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 0
  %43 = load i32, i32* %5, align 4
  %44 = sext i32 %43 to i64
  %45 = mul i64 %44, 8
  %46 = trunc i64 %45 to i32
  %47 = call i64 @zend_arena_alloc(i32* %42, i32 %46)
  %48 = inttoptr i64 %47 to %struct.TYPE_14__**
  store %struct.TYPE_14__** %48, %struct.TYPE_14__*** %9, align 8
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 0
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* @ZEND_BITSET_ELM_SIZE, align 4
  %53 = mul nsw i32 %51, %52
  %54 = call i64 @zend_arena_alloc(i32* %50, i32 %53)
  store i64 %54, i64* %10, align 8
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 0
  %57 = load i32, i32* %5, align 4
  %58 = sext i32 %57 to i64
  %59 = mul i64 %58, 4
  %60 = trunc i64 %59 to i32
  %61 = call i64 @zend_arena_alloc(i32* %56, i32 %60)
  %62 = inttoptr i64 %61 to i32*
  store i32* %62, i32** %11, align 8
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i32 0, i32 4
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** %64, align 8
  store %struct.TYPE_14__* %65, %struct.TYPE_14__** %13, align 8
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 4
  %68 = load %struct.TYPE_14__*, %struct.TYPE_14__** %67, align 8
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = sub nsw i32 %71, 1
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %68, i64 %73
  store %struct.TYPE_14__* %74, %struct.TYPE_14__** %12, align 8
  br label %75

75:                                               ; preds = %100, %2
  %76 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %77 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %78 = icmp uge %struct.TYPE_14__* %76, %77
  br i1 %78, label %79, label %103

79:                                               ; preds = %75
  %80 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %81 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @IS_VAR, align 4
  %84 = load i32, i32* @IS_TMP_VAR, align 4
  %85 = or i32 %83, %84
  %86 = and i32 %82, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %100

88:                                               ; preds = %79
  %89 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %90 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %9, align 8
  %91 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %92 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %91, i32 0, i32 5
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 0
  %94 = load i8*, i8** %93, align 8
  %95 = call i32 @VAR_NUM(i8* %94)
  %96 = load i32, i32* %6, align 4
  %97 = sub nsw i32 %95, %96
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %90, i64 %98
  store %struct.TYPE_14__* %89, %struct.TYPE_14__** %99, align 8
  br label %100

100:                                              ; preds = %88, %79
  %101 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %102 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %101, i32 -1
  store %struct.TYPE_14__* %102, %struct.TYPE_14__** %12, align 8
  br label %75

103:                                              ; preds = %75
  %104 = load i64, i64* %10, align 8
  %105 = load i32, i32* %7, align 4
  %106 = call i32 @zend_bitset_clear(i64 %104, i32 %105)
  %107 = load i64, i64* %8, align 8
  %108 = load i32, i32* %7, align 4
  %109 = call i32 @zend_bitset_clear(i64 %107, i32 %108)
  %110 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %111 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %110, i32 0, i32 4
  %112 = load %struct.TYPE_14__*, %struct.TYPE_14__** %111, align 8
  store %struct.TYPE_14__* %112, %struct.TYPE_14__** %13, align 8
  %113 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %114 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %113, i32 0, i32 4
  %115 = load %struct.TYPE_14__*, %struct.TYPE_14__** %114, align 8
  %116 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %117 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = sub nsw i32 %118, 1
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %115, i64 %120
  store %struct.TYPE_14__* %121, %struct.TYPE_14__** %12, align 8
  br label %122

122:                                              ; preds = %485, %103
  %123 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %124 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %125 = icmp uge %struct.TYPE_14__* %123, %124
  br i1 %125, label %126, label %488

126:                                              ; preds = %122
  %127 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %128 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* @IS_VAR, align 4
  %131 = load i32, i32* @IS_TMP_VAR, align 4
  %132 = or i32 %130, %131
  %133 = and i32 %129, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %328

135:                                              ; preds = %126
  %136 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %137 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %136, i32 0, i32 7
  %138 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %137, i32 0, i32 0
  %139 = load i8*, i8** %138, align 8
  %140 = call i32 @VAR_NUM(i8* %139)
  %141 = load i32, i32* %6, align 4
  %142 = sub nsw i32 %140, %141
  store i32 %142, i32* %14, align 4
  %143 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %144 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %143, i32 0, i32 2
  %145 = load i64, i64* %144, align 8
  %146 = load i64, i64* @ZEND_ROPE_END, align 8
  %147 = icmp eq i64 %145, %146
  br i1 %147, label %148, label %211

148:                                              ; preds = %135
  %149 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %150 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %149, i32 0, i32 3
  %151 = load i32, i32* %150, align 8
  %152 = add nsw i32 %151, 1
  %153 = sext i32 %152 to i64
  %154 = mul i64 %153, 8
  %155 = add i64 %154, 3
  %156 = udiv i64 %155, 4
  %157 = trunc i64 %156 to i32
  store i32 %157, i32* %18, align 4
  %158 = load i32, i32* %16, align 4
  store i32 %158, i32* %19, align 4
  br label %159

159:                                              ; preds = %170, %148
  %160 = load i32, i32* %19, align 4
  %161 = icmp sge i32 %160, 0
  br i1 %161, label %162, label %168

162:                                              ; preds = %159
  %163 = load i64, i64* %8, align 8
  %164 = load i32, i32* %19, align 4
  %165 = call i64 @zend_bitset_in(i64 %163, i32 %164)
  %166 = icmp ne i64 %165, 0
  %167 = xor i1 %166, true
  br label %168

168:                                              ; preds = %162, %159
  %169 = phi i1 [ false, %159 ], [ %167, %162 ]
  br i1 %169, label %170, label %173

170:                                              ; preds = %168
  %171 = load i32, i32* %19, align 4
  %172 = add nsw i32 %171, -1
  store i32 %172, i32* %19, align 4
  br label %159

173:                                              ; preds = %168
  %174 = load i32, i32* %16, align 4
  %175 = load i32, i32* %19, align 4
  %176 = load i32, i32* %18, align 4
  %177 = add nsw i32 %175, %176
  %178 = call i32 @MAX(i32 %174, i32 %177)
  store i32 %178, i32* %16, align 4
  %179 = load i32, i32* %19, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %19, align 4
  %181 = load i32, i32* %19, align 4
  %182 = load i32*, i32** %11, align 8
  %183 = load i32, i32* %14, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i32, i32* %182, i64 %184
  store i32 %181, i32* %185, align 4
  %186 = load i64, i64* %10, align 8
  %187 = load i32, i32* %14, align 4
  %188 = call i32 @zend_bitset_incl(i64 %186, i32 %187)
  %189 = load i64, i64* %8, align 8
  %190 = load i32, i32* %19, align 4
  %191 = call i32 @zend_bitset_incl(i64 %189, i32 %190)
  %192 = load i32, i32* %19, align 4
  %193 = load i32, i32* %6, align 4
  %194 = add nsw i32 %192, %193
  %195 = call i8* @NUM_VAR(i32 %194)
  %196 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %197 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %196, i32 0, i32 7
  %198 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %197, i32 0, i32 0
  store i8* %195, i8** %198, align 8
  br label %199

199:                                              ; preds = %202, %173
  %200 = load i32, i32* %18, align 4
  %201 = icmp sgt i32 %200, 1
  br i1 %201, label %202, label %210

202:                                              ; preds = %199
  %203 = load i32, i32* %18, align 4
  %204 = add nsw i32 %203, -1
  store i32 %204, i32* %18, align 4
  %205 = load i64, i64* %8, align 8
  %206 = load i32, i32* %19, align 4
  %207 = load i32, i32* %18, align 4
  %208 = add nsw i32 %206, %207
  %209 = call i32 @zend_bitset_incl(i64 %205, i32 %208)
  br label %199

210:                                              ; preds = %199
  br label %327

211:                                              ; preds = %135
  %212 = load i64, i64* %10, align 8
  %213 = load i32, i32* %14, align 4
  %214 = call i64 @zend_bitset_in(i64 %212, i32 %213)
  %215 = icmp ne i64 %214, 0
  br i1 %215, label %315, label %216

216:                                              ; preds = %211
  store i32 0, i32* %20, align 4
  %217 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %218 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %217, i32 0, i32 3
  %219 = load i32, i32* %218, align 4
  %220 = load i32, i32* @ZEND_ACC_HAS_FINALLY_BLOCK, align 4
  %221 = and i32 %219, %220
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %295

223:                                              ; preds = %216
  %224 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %225 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %224, i32 0, i32 2
  %226 = load i64, i64* %225, align 8
  %227 = load i64, i64* @ZEND_RETURN, align 8
  %228 = icmp eq i64 %226, %227
  br i1 %228, label %253, label %229

229:                                              ; preds = %223
  %230 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %231 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %230, i32 0, i32 2
  %232 = load i64, i64* %231, align 8
  %233 = load i64, i64* @ZEND_GENERATOR_RETURN, align 8
  %234 = icmp eq i64 %232, %233
  br i1 %234, label %253, label %235

235:                                              ; preds = %229
  %236 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %237 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %236, i32 0, i32 2
  %238 = load i64, i64* %237, align 8
  %239 = load i64, i64* @ZEND_RETURN_BY_REF, align 8
  %240 = icmp eq i64 %238, %239
  br i1 %240, label %253, label %241

241:                                              ; preds = %235
  %242 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %243 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %242, i32 0, i32 2
  %244 = load i64, i64* %243, align 8
  %245 = load i64, i64* @ZEND_FREE, align 8
  %246 = icmp eq i64 %244, %245
  br i1 %246, label %253, label %247

247:                                              ; preds = %241
  %248 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %249 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %248, i32 0, i32 2
  %250 = load i64, i64* %249, align 8
  %251 = load i64, i64* @ZEND_FE_FREE, align 8
  %252 = icmp eq i64 %250, %251
  br i1 %252, label %253, label %295

253:                                              ; preds = %247, %241, %235, %229, %223
  %254 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  store %struct.TYPE_14__* %254, %struct.TYPE_14__** %21, align 8
  br label %255

255:                                              ; preds = %293, %253
  %256 = load %struct.TYPE_14__*, %struct.TYPE_14__** %21, align 8
  %257 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %256, i32 -1
  store %struct.TYPE_14__* %257, %struct.TYPE_14__** %21, align 8
  %258 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %259 = icmp uge %struct.TYPE_14__* %257, %258
  br i1 %259, label %260, label %294

260:                                              ; preds = %255
  %261 = load %struct.TYPE_14__*, %struct.TYPE_14__** %21, align 8
  %262 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %261, i32 0, i32 2
  %263 = load i64, i64* %262, align 8
  %264 = load i64, i64* @ZEND_FAST_CALL, align 8
  %265 = icmp eq i64 %263, %264
  br i1 %265, label %266, label %267

266:                                              ; preds = %260
  store i32 1, i32* %20, align 4
  br label %294

267:                                              ; preds = %260
  %268 = load %struct.TYPE_14__*, %struct.TYPE_14__** %21, align 8
  %269 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %268, i32 0, i32 2
  %270 = load i64, i64* %269, align 8
  %271 = load i64, i64* @ZEND_FREE, align 8
  %272 = icmp ne i64 %270, %271
  br i1 %272, label %273, label %292

273:                                              ; preds = %267
  %274 = load %struct.TYPE_14__*, %struct.TYPE_14__** %21, align 8
  %275 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %274, i32 0, i32 2
  %276 = load i64, i64* %275, align 8
  %277 = load i64, i64* @ZEND_FE_FREE, align 8
  %278 = icmp ne i64 %276, %277
  br i1 %278, label %279, label %292

279:                                              ; preds = %273
  %280 = load %struct.TYPE_14__*, %struct.TYPE_14__** %21, align 8
  %281 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %280, i32 0, i32 2
  %282 = load i64, i64* %281, align 8
  %283 = load i64, i64* @ZEND_VERIFY_RETURN_TYPE, align 8
  %284 = icmp ne i64 %282, %283
  br i1 %284, label %285, label %292

285:                                              ; preds = %279
  %286 = load %struct.TYPE_14__*, %struct.TYPE_14__** %21, align 8
  %287 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %286, i32 0, i32 2
  %288 = load i64, i64* %287, align 8
  %289 = load i64, i64* @ZEND_DISCARD_EXCEPTION, align 8
  %290 = icmp ne i64 %288, %289
  br i1 %290, label %291, label %292

291:                                              ; preds = %285
  br label %294

292:                                              ; preds = %285, %279, %273, %267
  br label %293

293:                                              ; preds = %292
  br label %255

294:                                              ; preds = %291, %266, %255
  br label %295

295:                                              ; preds = %294, %247, %216
  %296 = load i32, i32* %20, align 4
  %297 = icmp ne i32 %296, 0
  br i1 %297, label %298, label %304

298:                                              ; preds = %295
  %299 = load i32, i32* %16, align 4
  %300 = add nsw i32 %299, 1
  store i32 %300, i32* %16, align 4
  store i32 %300, i32* %15, align 4
  %301 = load i64, i64* %8, align 8
  %302 = load i32, i32* %15, align 4
  %303 = call i32 @zend_bitset_incl(i64 %301, i32 %302)
  br label %306

304:                                              ; preds = %295
  %305 = call i32 (...) @GET_AVAILABLE_T()
  br label %306

306:                                              ; preds = %304, %298
  %307 = load i32, i32* %15, align 4
  %308 = load i32*, i32** %11, align 8
  %309 = load i32, i32* %14, align 4
  %310 = sext i32 %309 to i64
  %311 = getelementptr inbounds i32, i32* %308, i64 %310
  store i32 %307, i32* %311, align 4
  %312 = load i64, i64* %10, align 8
  %313 = load i32, i32* %14, align 4
  %314 = call i32 @zend_bitset_incl(i64 %312, i32 %313)
  br label %315

315:                                              ; preds = %306, %211
  %316 = load i32*, i32** %11, align 8
  %317 = load i32, i32* %14, align 4
  %318 = sext i32 %317 to i64
  %319 = getelementptr inbounds i32, i32* %316, i64 %318
  %320 = load i32, i32* %319, align 4
  %321 = load i32, i32* %6, align 4
  %322 = add nsw i32 %320, %321
  %323 = call i8* @NUM_VAR(i32 %322)
  %324 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %325 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %324, i32 0, i32 7
  %326 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %325, i32 0, i32 0
  store i8* %323, i8** %326, align 8
  br label %327

327:                                              ; preds = %315, %210
  br label %328

328:                                              ; preds = %327, %126
  %329 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %330 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %329, i32 0, i32 4
  %331 = load i32, i32* %330, align 4
  %332 = load i32, i32* @IS_VAR, align 4
  %333 = load i32, i32* @IS_TMP_VAR, align 4
  %334 = or i32 %332, %333
  %335 = and i32 %331, %334
  %336 = icmp ne i32 %335, 0
  br i1 %336, label %337, label %371

337:                                              ; preds = %328
  %338 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %339 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %338, i32 0, i32 6
  %340 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %339, i32 0, i32 0
  %341 = load i8*, i8** %340, align 8
  %342 = call i32 @VAR_NUM(i8* %341)
  %343 = load i32, i32* %6, align 4
  %344 = sub nsw i32 %342, %343
  store i32 %344, i32* %14, align 4
  %345 = load i64, i64* %10, align 8
  %346 = load i32, i32* %14, align 4
  %347 = call i64 @zend_bitset_in(i64 %345, i32 %346)
  %348 = icmp ne i64 %347, 0
  br i1 %348, label %359, label %349

349:                                              ; preds = %337
  %350 = call i32 (...) @GET_AVAILABLE_T()
  %351 = load i32, i32* %15, align 4
  %352 = load i32*, i32** %11, align 8
  %353 = load i32, i32* %14, align 4
  %354 = sext i32 %353 to i64
  %355 = getelementptr inbounds i32, i32* %352, i64 %354
  store i32 %351, i32* %355, align 4
  %356 = load i64, i64* %10, align 8
  %357 = load i32, i32* %14, align 4
  %358 = call i32 @zend_bitset_incl(i64 %356, i32 %357)
  br label %359

359:                                              ; preds = %349, %337
  %360 = load i32*, i32** %11, align 8
  %361 = load i32, i32* %14, align 4
  %362 = sext i32 %361 to i64
  %363 = getelementptr inbounds i32, i32* %360, i64 %362
  %364 = load i32, i32* %363, align 4
  %365 = load i32, i32* %6, align 4
  %366 = add nsw i32 %364, %365
  %367 = call i8* @NUM_VAR(i32 %366)
  %368 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %369 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %368, i32 0, i32 6
  %370 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %369, i32 0, i32 0
  store i8* %367, i8** %370, align 8
  br label %371

371:                                              ; preds = %359, %328
  %372 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %373 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %372, i32 0, i32 0
  %374 = load i32, i32* %373, align 8
  %375 = load i32, i32* @IS_VAR, align 4
  %376 = load i32, i32* @IS_TMP_VAR, align 4
  %377 = or i32 %375, %376
  %378 = and i32 %374, %377
  %379 = icmp ne i32 %378, 0
  br i1 %379, label %380, label %485

380:                                              ; preds = %371
  %381 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %382 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %381, i32 0, i32 5
  %383 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %382, i32 0, i32 0
  %384 = load i8*, i8** %383, align 8
  %385 = call i32 @VAR_NUM(i8* %384)
  %386 = load i32, i32* %6, align 4
  %387 = sub nsw i32 %385, %386
  store i32 %387, i32* %14, align 4
  %388 = load i64, i64* %10, align 8
  %389 = load i32, i32* %14, align 4
  %390 = call i64 @zend_bitset_in(i64 %388, i32 %389)
  %391 = icmp ne i64 %390, 0
  br i1 %391, label %392, label %467

392:                                              ; preds = %380
  %393 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %9, align 8
  %394 = load i32, i32* %14, align 4
  %395 = sext i32 %394 to i64
  %396 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %393, i64 %395
  %397 = load %struct.TYPE_14__*, %struct.TYPE_14__** %396, align 8
  %398 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %399 = icmp eq %struct.TYPE_14__* %397, %398
  br i1 %399, label %400, label %415

400:                                              ; preds = %392
  %401 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %402 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %401, i32 0, i32 2
  %403 = load i64, i64* %402, align 8
  %404 = load i64, i64* @ZEND_FAST_CALL, align 8
  %405 = icmp ne i64 %403, %404
  br i1 %405, label %406, label %414

406:                                              ; preds = %400
  %407 = load i64, i64* %8, align 8
  %408 = load i32*, i32** %11, align 8
  %409 = load i32, i32* %14, align 4
  %410 = sext i32 %409 to i64
  %411 = getelementptr inbounds i32, i32* %408, i64 %410
  %412 = load i32, i32* %411, align 4
  %413 = call i32 @zend_bitset_excl(i64 %407, i32 %412)
  br label %414

414:                                              ; preds = %406, %400
  br label %415

415:                                              ; preds = %414, %392
  %416 = load i32*, i32** %11, align 8
  %417 = load i32, i32* %14, align 4
  %418 = sext i32 %417 to i64
  %419 = getelementptr inbounds i32, i32* %416, i64 %418
  %420 = load i32, i32* %419, align 4
  %421 = load i32, i32* %6, align 4
  %422 = add nsw i32 %420, %421
  %423 = call i8* @NUM_VAR(i32 %422)
  %424 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %425 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %424, i32 0, i32 5
  %426 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %425, i32 0, i32 0
  store i8* %423, i8** %426, align 8
  %427 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %428 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %427, i32 0, i32 2
  %429 = load i64, i64* %428, align 8
  %430 = load i64, i64* @ZEND_ROPE_INIT, align 8
  %431 = icmp eq i64 %429, %430
  br i1 %431, label %432, label %466

432:                                              ; preds = %415
  %433 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %9, align 8
  %434 = load i32, i32* %14, align 4
  %435 = sext i32 %434 to i64
  %436 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %433, i64 %435
  %437 = load %struct.TYPE_14__*, %struct.TYPE_14__** %436, align 8
  %438 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %439 = icmp eq %struct.TYPE_14__* %437, %438
  br i1 %439, label %440, label %465

440:                                              ; preds = %432
  %441 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %442 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %441, i32 0, i32 3
  %443 = load i32, i32* %442, align 8
  %444 = sext i32 %443 to i64
  %445 = mul i64 %444, 8
  %446 = add i64 %445, 3
  %447 = udiv i64 %446, 4
  %448 = trunc i64 %447 to i32
  store i32 %448, i32* %22, align 4
  br label %449

449:                                              ; preds = %452, %440
  %450 = load i32, i32* %22, align 4
  %451 = icmp sgt i32 %450, 1
  br i1 %451, label %452, label %464

452:                                              ; preds = %449
  %453 = load i32, i32* %22, align 4
  %454 = add nsw i32 %453, -1
  store i32 %454, i32* %22, align 4
  %455 = load i64, i64* %8, align 8
  %456 = load i32*, i32** %11, align 8
  %457 = load i32, i32* %14, align 4
  %458 = sext i32 %457 to i64
  %459 = getelementptr inbounds i32, i32* %456, i64 %458
  %460 = load i32, i32* %459, align 4
  %461 = load i32, i32* %22, align 4
  %462 = add nsw i32 %460, %461
  %463 = call i32 @zend_bitset_excl(i64 %455, i32 %462)
  br label %449

464:                                              ; preds = %449
  br label %465

465:                                              ; preds = %464, %432
  br label %466

466:                                              ; preds = %465, %415
  br label %484

467:                                              ; preds = %380
  %468 = call i32 (...) @GET_AVAILABLE_T()
  %469 = load i32, i32* %15, align 4
  %470 = load i32*, i32** %11, align 8
  %471 = load i32, i32* %14, align 4
  %472 = sext i32 %471 to i64
  %473 = getelementptr inbounds i32, i32* %470, i64 %472
  store i32 %469, i32* %473, align 4
  %474 = load i64, i64* %10, align 8
  %475 = load i32, i32* %14, align 4
  %476 = call i32 @zend_bitset_incl(i64 %474, i32 %475)
  %477 = load i32, i32* %15, align 4
  %478 = load i32, i32* %6, align 4
  %479 = add nsw i32 %477, %478
  %480 = call i8* @NUM_VAR(i32 %479)
  %481 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %482 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %481, i32 0, i32 5
  %483 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %482, i32 0, i32 0
  store i8* %480, i8** %483, align 8
  br label %484

484:                                              ; preds = %467, %466
  br label %485

485:                                              ; preds = %484, %371
  %486 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %487 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %486, i32 -1
  store %struct.TYPE_14__* %487, %struct.TYPE_14__** %12, align 8
  br label %122

488:                                              ; preds = %122
  %489 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %490 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %489, i32 0, i32 0
  %491 = load i8*, i8** %17, align 8
  %492 = call i32 @zend_arena_release(i32* %490, i8* %491)
  %493 = load i32, i32* %16, align 4
  %494 = add nsw i32 %493, 1
  %495 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %496 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %495, i32 0, i32 0
  store i32 %494, i32* %496, align 8
  ret void
}

declare dso_local i8* @zend_arena_checkpoint(i32) #1

declare dso_local i32 @zend_bitset_len(i32) #1

declare dso_local i64 @zend_arena_alloc(i32*, i32) #1

declare dso_local i32 @VAR_NUM(i8*) #1

declare dso_local i32 @zend_bitset_clear(i64, i32) #1

declare dso_local i64 @zend_bitset_in(i64, i32) #1

declare dso_local i32 @MAX(i32, i32) #1

declare dso_local i32 @zend_bitset_incl(i64, i32) #1

declare dso_local i8* @NUM_VAR(i32) #1

declare dso_local i32 @GET_AVAILABLE_T(...) #1

declare dso_local i32 @zend_bitset_excl(i64, i32) #1

declare dso_local i32 @zend_arena_release(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
