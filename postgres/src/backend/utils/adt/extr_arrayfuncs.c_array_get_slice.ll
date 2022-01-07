; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_arrayfuncs.c_array_get_slice.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_arrayfuncs.c_array_get_slice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32, i64 }

@MAXDIM = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_FEATURE_NOT_SUPPORTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"slices of fixed-length arrays not implemented\00", align 1
@InvalidOid = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @array_get_slice(i32 %0, i32 %1, i32* %2, i32* %3, i32* %4, i32* %5, i32 %6, i32 %7, i32 %8, i8 signext %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i8, align 1
  %22 = alloca %struct.TYPE_13__*, align 8
  %23 = alloca %struct.TYPE_13__*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32*, align 8
  %27 = alloca i32*, align 8
  %28 = alloca i32*, align 8
  %29 = alloca [1 x i32], align 4
  %30 = alloca [1 x i32], align 4
  %31 = alloca i32, align 4
  %32 = alloca i8*, align 8
  %33 = alloca i32*, align 8
  %34 = alloca i64, align 8
  %35 = alloca i32, align 4
  %36 = alloca i8*, align 8
  %37 = alloca i64, align 8
  %38 = alloca i32, align 4
  store i32 %0, i32* %12, align 4
  store i32 %1, i32* %13, align 4
  store i32* %2, i32** %14, align 8
  store i32* %3, i32** %15, align 8
  store i32* %4, i32** %16, align 8
  store i32* %5, i32** %17, align 8
  store i32 %6, i32* %18, align 4
  store i32 %7, i32* %19, align 4
  store i32 %8, i32* %20, align 4
  store i8 %9, i8* %21, align 1
  %39 = load i32, i32* @MAXDIM, align 4
  %40 = zext i32 %39 to i64
  %41 = call i8* @llvm.stacksave()
  store i8* %41, i8** %36, align 8
  %42 = alloca i32, i64 %40, align 16
  store i64 %40, i64* %37, align 8
  %43 = load i32, i32* %18, align 4
  %44 = icmp sgt i32 %43, 0
  br i1 %44, label %45, label %62

45:                                               ; preds = %10
  %46 = load i32, i32* @ERROR, align 4
  %47 = load i32, i32* @ERRCODE_FEATURE_NOT_SUPPORTED, align 4
  %48 = call i32 @errcode(i32 %47)
  %49 = call i32 @errmsg(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %50 = call i32 @ereport(i32 %46, i32 %49)
  store i32 1, i32* %25, align 4
  %51 = load i32, i32* %18, align 4
  %52 = load i32, i32* %19, align 4
  %53 = sdiv i32 %51, %52
  %54 = getelementptr inbounds [1 x i32], [1 x i32]* %29, i64 0, i64 0
  store i32 %53, i32* %54, align 4
  %55 = getelementptr inbounds [1 x i32], [1 x i32]* %30, i64 0, i64 0
  store i32 0, i32* %55, align 4
  %56 = getelementptr inbounds [1 x i32], [1 x i32]* %29, i64 0, i64 0
  store i32* %56, i32** %26, align 8
  %57 = getelementptr inbounds [1 x i32], [1 x i32]* %30, i64 0, i64 0
  store i32* %57, i32** %27, align 8
  %58 = load i32, i32* @InvalidOid, align 4
  store i32 %58, i32* %31, align 4
  %59 = load i32, i32* %12, align 4
  %60 = call i64 @DatumGetPointer(i32 %59)
  %61 = inttoptr i64 %60 to i8*
  store i8* %61, i8** %32, align 8
  store i32* null, i32** %33, align 8
  br label %77

62:                                               ; preds = %10
  %63 = load i32, i32* %12, align 4
  %64 = call %struct.TYPE_13__* @DatumGetArrayTypeP(i32 %63)
  store %struct.TYPE_13__* %64, %struct.TYPE_13__** %22, align 8
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** %22, align 8
  %66 = call i32 @ARR_NDIM(%struct.TYPE_13__* %65)
  store i32 %66, i32* %25, align 4
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %22, align 8
  %68 = call i32* @ARR_DIMS(%struct.TYPE_13__* %67)
  store i32* %68, i32** %26, align 8
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %22, align 8
  %70 = call i32* @ARR_LBOUND(%struct.TYPE_13__* %69)
  store i32* %70, i32** %27, align 8
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** %22, align 8
  %72 = call i32 @ARR_ELEMTYPE(%struct.TYPE_13__* %71)
  store i32 %72, i32* %31, align 4
  %73 = load %struct.TYPE_13__*, %struct.TYPE_13__** %22, align 8
  %74 = call i8* @ARR_DATA_PTR(%struct.TYPE_13__* %73)
  store i8* %74, i8** %32, align 8
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %22, align 8
  %76 = call i32* @ARR_NULLBITMAP(%struct.TYPE_13__* %75)
  store i32* %76, i32** %33, align 8
  br label %77

77:                                               ; preds = %62, %45
  %78 = load i32, i32* %25, align 4
  %79 = load i32, i32* %13, align 4
  %80 = icmp slt i32 %78, %79
  br i1 %80, label %88, label %81

81:                                               ; preds = %77
  %82 = load i32, i32* %25, align 4
  %83 = icmp sle i32 %82, 0
  br i1 %83, label %88, label %84

84:                                               ; preds = %81
  %85 = load i32, i32* %25, align 4
  %86 = load i32, i32* @MAXDIM, align 4
  %87 = icmp sgt i32 %85, %86
  br i1 %87, label %88, label %92

88:                                               ; preds = %84, %81, %77
  %89 = load i32, i32* %31, align 4
  %90 = call %struct.TYPE_13__* @construct_empty_array(i32 %89)
  %91 = call i32 @PointerGetDatum(%struct.TYPE_13__* %90)
  store i32 %91, i32* %11, align 4
  store i32 1, i32* %38, align 4
  br label %325

92:                                               ; preds = %84
  store i32 0, i32* %24, align 4
  br label %93

93:                                               ; preds = %185, %92
  %94 = load i32, i32* %24, align 4
  %95 = load i32, i32* %13, align 4
  %96 = icmp slt i32 %94, %95
  br i1 %96, label %97, label %188

97:                                               ; preds = %93
  %98 = load i32*, i32** %17, align 8
  %99 = load i32, i32* %24, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %98, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %116

104:                                              ; preds = %97
  %105 = load i32*, i32** %15, align 8
  %106 = load i32, i32* %24, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %105, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = load i32*, i32** %27, align 8
  %111 = load i32, i32* %24, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %110, i64 %112
  %114 = load i32, i32* %113, align 4
  %115 = icmp slt i32 %109, %114
  br i1 %115, label %116, label %126

116:                                              ; preds = %104, %97
  %117 = load i32*, i32** %27, align 8
  %118 = load i32, i32* %24, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %117, i64 %119
  %121 = load i32, i32* %120, align 4
  %122 = load i32*, i32** %15, align 8
  %123 = load i32, i32* %24, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32, i32* %122, i64 %124
  store i32 %121, i32* %125, align 4
  br label %126

126:                                              ; preds = %116, %104
  %127 = load i32*, i32** %16, align 8
  %128 = load i32, i32* %24, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %127, i64 %129
  %131 = load i32, i32* %130, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %151

133:                                              ; preds = %126
  %134 = load i32*, i32** %14, align 8
  %135 = load i32, i32* %24, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i32, i32* %134, i64 %136
  %138 = load i32, i32* %137, align 4
  %139 = load i32*, i32** %26, align 8
  %140 = load i32, i32* %24, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i32, i32* %139, i64 %141
  %143 = load i32, i32* %142, align 4
  %144 = load i32*, i32** %27, align 8
  %145 = load i32, i32* %24, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i32, i32* %144, i64 %146
  %148 = load i32, i32* %147, align 4
  %149 = add nsw i32 %143, %148
  %150 = icmp sge i32 %138, %149
  br i1 %150, label %151, label %168

151:                                              ; preds = %133, %126
  %152 = load i32*, i32** %26, align 8
  %153 = load i32, i32* %24, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i32, i32* %152, i64 %154
  %156 = load i32, i32* %155, align 4
  %157 = load i32*, i32** %27, align 8
  %158 = load i32, i32* %24, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i32, i32* %157, i64 %159
  %161 = load i32, i32* %160, align 4
  %162 = add nsw i32 %156, %161
  %163 = sub nsw i32 %162, 1
  %164 = load i32*, i32** %14, align 8
  %165 = load i32, i32* %24, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i32, i32* %164, i64 %166
  store i32 %163, i32* %167, align 4
  br label %168

168:                                              ; preds = %151, %133
  %169 = load i32*, i32** %15, align 8
  %170 = load i32, i32* %24, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i32, i32* %169, i64 %171
  %173 = load i32, i32* %172, align 4
  %174 = load i32*, i32** %14, align 8
  %175 = load i32, i32* %24, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i32, i32* %174, i64 %176
  %178 = load i32, i32* %177, align 4
  %179 = icmp sgt i32 %173, %178
  br i1 %179, label %180, label %184

180:                                              ; preds = %168
  %181 = load i32, i32* %31, align 4
  %182 = call %struct.TYPE_13__* @construct_empty_array(i32 %181)
  %183 = call i32 @PointerGetDatum(%struct.TYPE_13__* %182)
  store i32 %183, i32* %11, align 4
  store i32 1, i32* %38, align 4
  br label %325

184:                                              ; preds = %168
  br label %185

185:                                              ; preds = %184
  %186 = load i32, i32* %24, align 4
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* %24, align 4
  br label %93

188:                                              ; preds = %93
  br label %189

189:                                              ; preds = %235, %188
  %190 = load i32, i32* %24, align 4
  %191 = load i32, i32* %25, align 4
  %192 = icmp slt i32 %190, %191
  br i1 %192, label %193, label %238

193:                                              ; preds = %189
  %194 = load i32*, i32** %27, align 8
  %195 = load i32, i32* %24, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds i32, i32* %194, i64 %196
  %198 = load i32, i32* %197, align 4
  %199 = load i32*, i32** %15, align 8
  %200 = load i32, i32* %24, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds i32, i32* %199, i64 %201
  store i32 %198, i32* %202, align 4
  %203 = load i32*, i32** %26, align 8
  %204 = load i32, i32* %24, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds i32, i32* %203, i64 %205
  %207 = load i32, i32* %206, align 4
  %208 = load i32*, i32** %27, align 8
  %209 = load i32, i32* %24, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds i32, i32* %208, i64 %210
  %212 = load i32, i32* %211, align 4
  %213 = add nsw i32 %207, %212
  %214 = sub nsw i32 %213, 1
  %215 = load i32*, i32** %14, align 8
  %216 = load i32, i32* %24, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds i32, i32* %215, i64 %217
  store i32 %214, i32* %218, align 4
  %219 = load i32*, i32** %15, align 8
  %220 = load i32, i32* %24, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds i32, i32* %219, i64 %221
  %223 = load i32, i32* %222, align 4
  %224 = load i32*, i32** %14, align 8
  %225 = load i32, i32* %24, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds i32, i32* %224, i64 %226
  %228 = load i32, i32* %227, align 4
  %229 = icmp sgt i32 %223, %228
  br i1 %229, label %230, label %234

230:                                              ; preds = %193
  %231 = load i32, i32* %31, align 4
  %232 = call %struct.TYPE_13__* @construct_empty_array(i32 %231)
  %233 = call i32 @PointerGetDatum(%struct.TYPE_13__* %232)
  store i32 %233, i32* %11, align 4
  store i32 1, i32* %38, align 4
  br label %325

234:                                              ; preds = %193
  br label %235

235:                                              ; preds = %234
  %236 = load i32, i32* %24, align 4
  %237 = add nsw i32 %236, 1
  store i32 %237, i32* %24, align 4
  br label %189

238:                                              ; preds = %189
  %239 = load i32, i32* %25, align 4
  %240 = load i32*, i32** %15, align 8
  %241 = load i32*, i32** %14, align 8
  %242 = call i32 @mda_get_range(i32 %239, i32* %42, i32* %240, i32* %241)
  %243 = load i8*, i8** %32, align 8
  %244 = load i32*, i32** %33, align 8
  %245 = load i32, i32* %25, align 4
  %246 = load i32*, i32** %26, align 8
  %247 = load i32*, i32** %27, align 8
  %248 = load i32*, i32** %15, align 8
  %249 = load i32*, i32** %14, align 8
  %250 = load i32, i32* %19, align 4
  %251 = load i32, i32* %20, align 4
  %252 = load i8, i8* %21, align 1
  %253 = call i32 @array_slice_size(i8* %243, i32* %244, i32 %245, i32* %246, i32* %247, i32* %248, i32* %249, i32 %250, i32 %251, i8 signext %252)
  store i32 %253, i32* %35, align 4
  %254 = load i32*, i32** %33, align 8
  %255 = icmp ne i32* %254, null
  br i1 %255, label %256, label %266

256:                                              ; preds = %238
  %257 = load i32, i32* %25, align 4
  %258 = load i32, i32* %25, align 4
  %259 = call i32 @ArrayGetNItems(i32 %258, i32* %42)
  %260 = call i64 @ARR_OVERHEAD_WITHNULLS(i32 %257, i32 %259)
  store i64 %260, i64* %34, align 8
  %261 = load i64, i64* %34, align 8
  %262 = load i32, i32* %35, align 4
  %263 = sext i32 %262 to i64
  %264 = add nsw i64 %263, %261
  %265 = trunc i64 %264 to i32
  store i32 %265, i32* %35, align 4
  br label %273

266:                                              ; preds = %238
  store i64 0, i64* %34, align 8
  %267 = load i32, i32* %25, align 4
  %268 = call i64 @ARR_OVERHEAD_NONULLS(i32 %267)
  %269 = load i32, i32* %35, align 4
  %270 = sext i32 %269 to i64
  %271 = add nsw i64 %270, %268
  %272 = trunc i64 %271 to i32
  store i32 %272, i32* %35, align 4
  br label %273

273:                                              ; preds = %266, %256
  %274 = load i32, i32* %35, align 4
  %275 = call i64 @palloc0(i32 %274)
  %276 = inttoptr i64 %275 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %276, %struct.TYPE_13__** %23, align 8
  %277 = load %struct.TYPE_13__*, %struct.TYPE_13__** %23, align 8
  %278 = load i32, i32* %35, align 4
  %279 = call i32 @SET_VARSIZE(%struct.TYPE_13__* %277, i32 %278)
  %280 = load i32, i32* %25, align 4
  %281 = load %struct.TYPE_13__*, %struct.TYPE_13__** %23, align 8
  %282 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %281, i32 0, i32 0
  store i32 %280, i32* %282, align 8
  %283 = load i64, i64* %34, align 8
  %284 = load %struct.TYPE_13__*, %struct.TYPE_13__** %23, align 8
  %285 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %284, i32 0, i32 2
  store i64 %283, i64* %285, align 8
  %286 = load i32, i32* %31, align 4
  %287 = load %struct.TYPE_13__*, %struct.TYPE_13__** %23, align 8
  %288 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %287, i32 0, i32 1
  store i32 %286, i32* %288, align 4
  %289 = load %struct.TYPE_13__*, %struct.TYPE_13__** %23, align 8
  %290 = call i32* @ARR_DIMS(%struct.TYPE_13__* %289)
  %291 = load i32, i32* %25, align 4
  %292 = sext i32 %291 to i64
  %293 = mul i64 %292, 4
  %294 = trunc i64 %293 to i32
  %295 = call i32 @memcpy(i32* %290, i32* %42, i32 %294)
  %296 = load %struct.TYPE_13__*, %struct.TYPE_13__** %23, align 8
  %297 = call i32* @ARR_LBOUND(%struct.TYPE_13__* %296)
  store i32* %297, i32** %28, align 8
  store i32 0, i32* %24, align 4
  br label %298

298:                                              ; preds = %307, %273
  %299 = load i32, i32* %24, align 4
  %300 = load i32, i32* %25, align 4
  %301 = icmp slt i32 %299, %300
  br i1 %301, label %302, label %310

302:                                              ; preds = %298
  %303 = load i32*, i32** %28, align 8
  %304 = load i32, i32* %24, align 4
  %305 = sext i32 %304 to i64
  %306 = getelementptr inbounds i32, i32* %303, i64 %305
  store i32 1, i32* %306, align 4
  br label %307

307:                                              ; preds = %302
  %308 = load i32, i32* %24, align 4
  %309 = add nsw i32 %308, 1
  store i32 %309, i32* %24, align 4
  br label %298

310:                                              ; preds = %298
  %311 = load %struct.TYPE_13__*, %struct.TYPE_13__** %23, align 8
  %312 = load i32, i32* %25, align 4
  %313 = load i32*, i32** %26, align 8
  %314 = load i32*, i32** %27, align 8
  %315 = load i8*, i8** %32, align 8
  %316 = load i32*, i32** %33, align 8
  %317 = load i32*, i32** %15, align 8
  %318 = load i32*, i32** %14, align 8
  %319 = load i32, i32* %19, align 4
  %320 = load i32, i32* %20, align 4
  %321 = load i8, i8* %21, align 1
  %322 = call i32 @array_extract_slice(%struct.TYPE_13__* %311, i32 %312, i32* %313, i32* %314, i8* %315, i32* %316, i32* %317, i32* %318, i32 %319, i32 %320, i8 signext %321)
  %323 = load %struct.TYPE_13__*, %struct.TYPE_13__** %23, align 8
  %324 = call i32 @PointerGetDatum(%struct.TYPE_13__* %323)
  store i32 %324, i32* %11, align 4
  store i32 1, i32* %38, align 4
  br label %325

325:                                              ; preds = %310, %230, %180, %88
  %326 = load i8*, i8** %36, align 8
  call void @llvm.stackrestore(i8* %326)
  %327 = load i32, i32* %11, align 4
  ret i32 %327
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ereport(i32, i32) #2

declare dso_local i32 @errcode(i32) #2

declare dso_local i32 @errmsg(i8*) #2

declare dso_local i64 @DatumGetPointer(i32) #2

declare dso_local %struct.TYPE_13__* @DatumGetArrayTypeP(i32) #2

declare dso_local i32 @ARR_NDIM(%struct.TYPE_13__*) #2

declare dso_local i32* @ARR_DIMS(%struct.TYPE_13__*) #2

declare dso_local i32* @ARR_LBOUND(%struct.TYPE_13__*) #2

declare dso_local i32 @ARR_ELEMTYPE(%struct.TYPE_13__*) #2

declare dso_local i8* @ARR_DATA_PTR(%struct.TYPE_13__*) #2

declare dso_local i32* @ARR_NULLBITMAP(%struct.TYPE_13__*) #2

declare dso_local i32 @PointerGetDatum(%struct.TYPE_13__*) #2

declare dso_local %struct.TYPE_13__* @construct_empty_array(i32) #2

declare dso_local i32 @mda_get_range(i32, i32*, i32*, i32*) #2

declare dso_local i32 @array_slice_size(i8*, i32*, i32, i32*, i32*, i32*, i32*, i32, i32, i8 signext) #2

declare dso_local i64 @ARR_OVERHEAD_WITHNULLS(i32, i32) #2

declare dso_local i32 @ArrayGetNItems(i32, i32*) #2

declare dso_local i64 @ARR_OVERHEAD_NONULLS(i32) #2

declare dso_local i64 @palloc0(i32) #2

declare dso_local i32 @SET_VARSIZE(%struct.TYPE_13__*, i32) #2

declare dso_local i32 @memcpy(i32*, i32*, i32) #2

declare dso_local i32 @array_extract_slice(%struct.TYPE_13__*, i32, i32*, i32*, i8*, i32*, i32*, i32*, i32, i32, i8 signext) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
