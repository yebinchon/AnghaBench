; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_arrayfuncs.c_array_fill_internal.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_arrayfuncs.c_array_fill_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, i32 }
%struct.TYPE_7__ = type { i64, i32, i32, i8 }

@MAXDIM = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_ARRAY_SUBSCRIPT_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"wrong number of array subscripts\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"Dimension array must be one dimensional.\00", align 1
@ERRCODE_NULL_VALUE_NOT_ALLOWED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"dimension values cannot be null\00", align 1
@ERRCODE_INVALID_PARAMETER_VALUE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"invalid number of dimensions: %d\00", align 1
@ERRCODE_PROGRAM_LIMIT_EXCEEDED = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [65 x i8] c"number of array dimensions (%d) exceeds the maximum allowed (%d)\00", align 1
@.str.5 = private unnamed_addr constant [58 x i8] c"Low bound array has different size than dimensions array.\00", align 1
@InvalidOid = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [44 x i8] c"array size exceeds the maximum allowed (%d)\00", align 1
@MaxAllocSize = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*, i32, i32, i64, %struct.TYPE_6__*)* @array_fill_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @array_fill_internal(i32* %0, i32* %1, i32 %2, i32 %3, i64 %4, %struct.TYPE_6__* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_6__*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i8, align 1
  %24 = alloca %struct.TYPE_7__*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i8*, align 8
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i64 %4, i64* %12, align 8
  store %struct.TYPE_6__* %5, %struct.TYPE_6__** %13, align 8
  %33 = load i32, i32* @MAXDIM, align 4
  %34 = zext i32 %33 to i64
  %35 = call i8* @llvm.stacksave()
  store i8* %35, i8** %19, align 8
  %36 = alloca i32, i64 %34, align 16
  store i64 %34, i64* %20, align 8
  %37 = load i32*, i32** %8, align 8
  %38 = call i32 @ARR_NDIM(i32* %37)
  %39 = icmp sgt i32 %38, 1
  br i1 %39, label %40, label %47

40:                                               ; preds = %6
  %41 = load i32, i32* @ERROR, align 4
  %42 = load i32, i32* @ERRCODE_ARRAY_SUBSCRIPT_ERROR, align 4
  %43 = call i32 @errcode(i32 %42)
  %44 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %45 = call i32 @errdetail(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %46 = call i32 @ereport(i32 %41, i32 %45)
  br label %47

47:                                               ; preds = %40, %6
  %48 = load i32*, i32** %8, align 8
  %49 = call i64 @array_contains_nulls(i32* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %47
  %52 = load i32, i32* @ERROR, align 4
  %53 = load i32, i32* @ERRCODE_NULL_VALUE_NOT_ALLOWED, align 4
  %54 = call i32 @errcode(i32 %53)
  %55 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %56 = call i32 @ereport(i32 %52, i32 %55)
  br label %57

57:                                               ; preds = %51, %47
  %58 = load i32*, i32** %8, align 8
  %59 = call i8* @ARR_DATA_PTR(i32* %58)
  %60 = bitcast i8* %59 to i32*
  store i32* %60, i32** %15, align 8
  %61 = load i32*, i32** %8, align 8
  %62 = call i32 @ARR_NDIM(i32* %61)
  %63 = icmp sgt i32 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %57
  %65 = load i32*, i32** %8, align 8
  %66 = call i32* @ARR_DIMS(i32* %65)
  %67 = getelementptr inbounds i32, i32* %66, i64 0
  %68 = load i32, i32* %67, align 4
  br label %70

69:                                               ; preds = %57
  br label %70

70:                                               ; preds = %69, %64
  %71 = phi i32 [ %68, %64 ], [ 0, %69 ]
  store i32 %71, i32* %17, align 4
  %72 = load i32, i32* %17, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %81

74:                                               ; preds = %70
  %75 = load i32, i32* @ERROR, align 4
  %76 = load i32, i32* @ERRCODE_INVALID_PARAMETER_VALUE, align 4
  %77 = call i32 @errcode(i32 %76)
  %78 = load i32, i32* %17, align 4
  %79 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %78)
  %80 = call i32 @ereport(i32 %75, i32 %79)
  br label %81

81:                                               ; preds = %74, %70
  %82 = load i32, i32* %17, align 4
  %83 = load i32, i32* @MAXDIM, align 4
  %84 = icmp sgt i32 %82, %83
  br i1 %84, label %85, label %93

85:                                               ; preds = %81
  %86 = load i32, i32* @ERROR, align 4
  %87 = load i32, i32* @ERRCODE_PROGRAM_LIMIT_EXCEEDED, align 4
  %88 = call i32 @errcode(i32 %87)
  %89 = load i32, i32* %17, align 4
  %90 = load i32, i32* @MAXDIM, align 4
  %91 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.4, i64 0, i64 0), i32 %89, i32 %90)
  %92 = call i32 @ereport(i32 %86, i32 %91)
  br label %93

93:                                               ; preds = %85, %81
  %94 = load i32*, i32** %9, align 8
  %95 = icmp ne i32* %94, null
  br i1 %95, label %96, label %142

96:                                               ; preds = %93
  %97 = load i32*, i32** %9, align 8
  %98 = call i32 @ARR_NDIM(i32* %97)
  %99 = icmp sgt i32 %98, 1
  br i1 %99, label %100, label %107

100:                                              ; preds = %96
  %101 = load i32, i32* @ERROR, align 4
  %102 = load i32, i32* @ERRCODE_ARRAY_SUBSCRIPT_ERROR, align 4
  %103 = call i32 @errcode(i32 %102)
  %104 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %105 = call i32 @errdetail(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %106 = call i32 @ereport(i32 %101, i32 %105)
  br label %107

107:                                              ; preds = %100, %96
  %108 = load i32*, i32** %9, align 8
  %109 = call i64 @array_contains_nulls(i32* %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %117

111:                                              ; preds = %107
  %112 = load i32, i32* @ERROR, align 4
  %113 = load i32, i32* @ERRCODE_NULL_VALUE_NOT_ALLOWED, align 4
  %114 = call i32 @errcode(i32 %113)
  %115 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %116 = call i32 @ereport(i32 %112, i32 %115)
  br label %117

117:                                              ; preds = %111, %107
  %118 = load i32, i32* %17, align 4
  %119 = load i32*, i32** %9, align 8
  %120 = call i32 @ARR_NDIM(i32* %119)
  %121 = icmp sgt i32 %120, 0
  br i1 %121, label %122, label %127

122:                                              ; preds = %117
  %123 = load i32*, i32** %9, align 8
  %124 = call i32* @ARR_DIMS(i32* %123)
  %125 = getelementptr inbounds i32, i32* %124, i64 0
  %126 = load i32, i32* %125, align 4
  br label %128

127:                                              ; preds = %117
  br label %128

128:                                              ; preds = %127, %122
  %129 = phi i32 [ %126, %122 ], [ 0, %127 ]
  %130 = icmp ne i32 %118, %129
  br i1 %130, label %131, label %138

131:                                              ; preds = %128
  %132 = load i32, i32* @ERROR, align 4
  %133 = load i32, i32* @ERRCODE_ARRAY_SUBSCRIPT_ERROR, align 4
  %134 = call i32 @errcode(i32 %133)
  %135 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %136 = call i32 @errdetail(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.5, i64 0, i64 0))
  %137 = call i32 @ereport(i32 %132, i32 %136)
  br label %138

138:                                              ; preds = %131, %128
  %139 = load i32*, i32** %9, align 8
  %140 = call i8* @ARR_DATA_PTR(i32* %139)
  %141 = bitcast i8* %140 to i32*
  store i32* %141, i32** %16, align 8
  br label %155

142:                                              ; preds = %93
  store i32 0, i32* %25, align 4
  br label %143

143:                                              ; preds = %151, %142
  %144 = load i32, i32* %25, align 4
  %145 = load i32, i32* @MAXDIM, align 4
  %146 = icmp slt i32 %144, %145
  br i1 %146, label %147, label %154

147:                                              ; preds = %143
  %148 = load i32, i32* %25, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i32, i32* %36, i64 %149
  store i32 1, i32* %150, align 4
  br label %151

151:                                              ; preds = %147
  %152 = load i32, i32* %25, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %25, align 4
  br label %143

154:                                              ; preds = %143
  store i32* %36, i32** %16, align 8
  br label %155

155:                                              ; preds = %154, %138
  %156 = load i32, i32* %17, align 4
  %157 = load i32*, i32** %15, align 8
  %158 = call i32 @ArrayGetNItems(i32 %156, i32* %157)
  store i32 %158, i32* %18, align 4
  %159 = load i32, i32* %18, align 4
  %160 = icmp sle i32 %159, 0
  br i1 %160, label %161, label %164

161:                                              ; preds = %155
  %162 = load i64, i64* %12, align 8
  %163 = call i32* @construct_empty_array(i64 %162)
  store i32* %163, i32** %7, align 8
  store i32 1, i32* %26, align 4
  br label %308

164:                                              ; preds = %155
  %165 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %166 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %165, i32 0, i32 0
  %167 = load %struct.TYPE_5__*, %struct.TYPE_5__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = inttoptr i64 %169 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %170, %struct.TYPE_7__** %24, align 8
  %171 = load %struct.TYPE_7__*, %struct.TYPE_7__** %24, align 8
  %172 = icmp eq %struct.TYPE_7__* %171, null
  br i1 %172, label %173, label %193

173:                                              ; preds = %164
  %174 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %175 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %174, i32 0, i32 0
  %176 = load %struct.TYPE_5__*, %struct.TYPE_5__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 8
  %179 = call i64 @MemoryContextAlloc(i32 %178, i32 24)
  %180 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %181 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %180, i32 0, i32 0
  %182 = load %struct.TYPE_5__*, %struct.TYPE_5__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %182, i32 0, i32 0
  store i64 %179, i64* %183, align 8
  %184 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %185 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %184, i32 0, i32 0
  %186 = load %struct.TYPE_5__*, %struct.TYPE_5__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %186, i32 0, i32 0
  %188 = load i64, i64* %187, align 8
  %189 = inttoptr i64 %188 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %189, %struct.TYPE_7__** %24, align 8
  %190 = load i64, i64* @InvalidOid, align 8
  %191 = load %struct.TYPE_7__*, %struct.TYPE_7__** %24, align 8
  %192 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %191, i32 0, i32 0
  store i64 %190, i64* %192, align 8
  br label %193

193:                                              ; preds = %173, %164
  %194 = load %struct.TYPE_7__*, %struct.TYPE_7__** %24, align 8
  %195 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %194, i32 0, i32 0
  %196 = load i64, i64* %195, align 8
  %197 = load i64, i64* %12, align 8
  %198 = icmp ne i64 %196, %197
  br i1 %198, label %199, label %211

199:                                              ; preds = %193
  %200 = load i64, i64* %12, align 8
  %201 = load %struct.TYPE_7__*, %struct.TYPE_7__** %24, align 8
  %202 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %201, i32 0, i32 1
  %203 = load %struct.TYPE_7__*, %struct.TYPE_7__** %24, align 8
  %204 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %203, i32 0, i32 2
  %205 = load %struct.TYPE_7__*, %struct.TYPE_7__** %24, align 8
  %206 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %205, i32 0, i32 3
  %207 = call i32 @get_typlenbyvalalign(i64 %200, i32* %202, i32* %204, i8* %206)
  %208 = load i64, i64* %12, align 8
  %209 = load %struct.TYPE_7__*, %struct.TYPE_7__** %24, align 8
  %210 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %209, i32 0, i32 0
  store i64 %208, i64* %210, align 8
  br label %211

211:                                              ; preds = %199, %193
  %212 = load %struct.TYPE_7__*, %struct.TYPE_7__** %24, align 8
  %213 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %212, i32 0, i32 1
  %214 = load i32, i32* %213, align 8
  store i32 %214, i32* %21, align 4
  %215 = load %struct.TYPE_7__*, %struct.TYPE_7__** %24, align 8
  %216 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %215, i32 0, i32 2
  %217 = load i32, i32* %216, align 4
  store i32 %217, i32* %22, align 4
  %218 = load %struct.TYPE_7__*, %struct.TYPE_7__** %24, align 8
  %219 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %218, i32 0, i32 3
  %220 = load i8, i8* %219, align 8
  store i8 %220, i8* %23, align 1
  %221 = load i32, i32* %11, align 4
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %294, label %223

223:                                              ; preds = %211
  %224 = load i32, i32* %21, align 4
  %225 = icmp eq i32 %224, -1
  br i1 %225, label %226, label %230

226:                                              ; preds = %223
  %227 = load i32, i32* %10, align 4
  %228 = call i32 @PG_DETOAST_DATUM(i32 %227)
  %229 = call i32 @PointerGetDatum(i32 %228)
  store i32 %229, i32* %10, align 4
  br label %230

230:                                              ; preds = %226, %223
  %231 = load i32, i32* %21, align 4
  %232 = load i32, i32* %10, align 4
  %233 = call i32 @att_addlength_datum(i32 0, i32 %231, i32 %232)
  store i32 %233, i32* %29, align 4
  %234 = load i32, i32* %29, align 4
  %235 = load i8, i8* %23, align 1
  %236 = call i32 @att_align_nominal(i32 %234, i8 signext %235)
  store i32 %236, i32* %29, align 4
  %237 = load i32, i32* %29, align 4
  %238 = icmp sgt i32 %237, 0
  %239 = zext i1 %238 to i32
  %240 = call i32 @Assert(i32 %239)
  %241 = load i32, i32* %29, align 4
  %242 = load i32, i32* %18, align 4
  %243 = mul nsw i32 %241, %242
  store i32 %243, i32* %30, align 4
  %244 = load i32, i32* %30, align 4
  %245 = load i32, i32* %29, align 4
  %246 = sdiv i32 %244, %245
  %247 = load i32, i32* %18, align 4
  %248 = icmp ne i32 %246, %247
  br i1 %248, label %253, label %249

249:                                              ; preds = %230
  %250 = load i32, i32* %30, align 4
  %251 = call i32 @AllocSizeIsValid(i32 %250)
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %261, label %253

253:                                              ; preds = %249, %230
  %254 = load i32, i32* @ERROR, align 4
  %255 = load i32, i32* @ERRCODE_PROGRAM_LIMIT_EXCEEDED, align 4
  %256 = call i32 @errcode(i32 %255)
  %257 = load i64, i64* @MaxAllocSize, align 8
  %258 = trunc i64 %257 to i32
  %259 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.6, i64 0, i64 0), i32 %258)
  %260 = call i32 @ereport(i32 %254, i32 %259)
  br label %261

261:                                              ; preds = %253, %249
  %262 = load i32, i32* %17, align 4
  %263 = call i64 @ARR_OVERHEAD_NONULLS(i32 %262)
  %264 = load i32, i32* %30, align 4
  %265 = sext i32 %264 to i64
  %266 = add nsw i64 %265, %263
  %267 = trunc i64 %266 to i32
  store i32 %267, i32* %30, align 4
  %268 = load i32, i32* %17, align 4
  %269 = load i32*, i32** %15, align 8
  %270 = load i32*, i32** %16, align 8
  %271 = load i32, i32* %30, align 4
  %272 = load i64, i64* %12, align 8
  %273 = call i32* @create_array_envelope(i32 %268, i32* %269, i32* %270, i32 %271, i64 %272, i32 0)
  store i32* %273, i32** %14, align 8
  %274 = load i32*, i32** %14, align 8
  %275 = call i8* @ARR_DATA_PTR(i32* %274)
  store i8* %275, i8** %28, align 8
  store i32 0, i32* %27, align 4
  br label %276

276:                                              ; preds = %290, %261
  %277 = load i32, i32* %27, align 4
  %278 = load i32, i32* %18, align 4
  %279 = icmp slt i32 %277, %278
  br i1 %279, label %280, label %293

280:                                              ; preds = %276
  %281 = load i32, i32* %10, align 4
  %282 = load i32, i32* %21, align 4
  %283 = load i32, i32* %22, align 4
  %284 = load i8, i8* %23, align 1
  %285 = load i8*, i8** %28, align 8
  %286 = call i32 @ArrayCastAndSet(i32 %281, i32 %282, i32 %283, i8 signext %284, i8* %285)
  %287 = load i8*, i8** %28, align 8
  %288 = sext i32 %286 to i64
  %289 = getelementptr inbounds i8, i8* %287, i64 %288
  store i8* %289, i8** %28, align 8
  br label %290

290:                                              ; preds = %280
  %291 = load i32, i32* %27, align 4
  %292 = add nsw i32 %291, 1
  store i32 %292, i32* %27, align 4
  br label %276

293:                                              ; preds = %276
  br label %306

294:                                              ; preds = %211
  %295 = load i32, i32* %17, align 4
  %296 = load i32, i32* %18, align 4
  %297 = call i32 @ARR_OVERHEAD_WITHNULLS(i32 %295, i32 %296)
  store i32 %297, i32* %32, align 4
  %298 = load i32, i32* %32, align 4
  store i32 %298, i32* %31, align 4
  %299 = load i32, i32* %17, align 4
  %300 = load i32*, i32** %15, align 8
  %301 = load i32*, i32** %16, align 8
  %302 = load i32, i32* %31, align 4
  %303 = load i64, i64* %12, align 8
  %304 = load i32, i32* %32, align 4
  %305 = call i32* @create_array_envelope(i32 %299, i32* %300, i32* %301, i32 %302, i64 %303, i32 %304)
  store i32* %305, i32** %14, align 8
  br label %306

306:                                              ; preds = %294, %293
  %307 = load i32*, i32** %14, align 8
  store i32* %307, i32** %7, align 8
  store i32 1, i32* %26, align 4
  br label %308

308:                                              ; preds = %306, %161
  %309 = load i8*, i8** %19, align 8
  call void @llvm.stackrestore(i8* %309)
  %310 = load i32*, i32** %7, align 8
  ret i32* %310
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ARR_NDIM(i32*) #2

declare dso_local i32 @ereport(i32, i32) #2

declare dso_local i32 @errcode(i32) #2

declare dso_local i32 @errmsg(i8*, ...) #2

declare dso_local i32 @errdetail(i8*) #2

declare dso_local i64 @array_contains_nulls(i32*) #2

declare dso_local i8* @ARR_DATA_PTR(i32*) #2

declare dso_local i32* @ARR_DIMS(i32*) #2

declare dso_local i32 @ArrayGetNItems(i32, i32*) #2

declare dso_local i32* @construct_empty_array(i64) #2

declare dso_local i64 @MemoryContextAlloc(i32, i32) #2

declare dso_local i32 @get_typlenbyvalalign(i64, i32*, i32*, i8*) #2

declare dso_local i32 @PointerGetDatum(i32) #2

declare dso_local i32 @PG_DETOAST_DATUM(i32) #2

declare dso_local i32 @att_addlength_datum(i32, i32, i32) #2

declare dso_local i32 @att_align_nominal(i32, i8 signext) #2

declare dso_local i32 @Assert(i32) #2

declare dso_local i32 @AllocSizeIsValid(i32) #2

declare dso_local i64 @ARR_OVERHEAD_NONULLS(i32) #2

declare dso_local i32* @create_array_envelope(i32, i32*, i32*, i32, i64, i32) #2

declare dso_local i32 @ArrayCastAndSet(i32, i32, i32, i8 signext, i8*) #2

declare dso_local i32 @ARR_OVERHEAD_WITHNULLS(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
