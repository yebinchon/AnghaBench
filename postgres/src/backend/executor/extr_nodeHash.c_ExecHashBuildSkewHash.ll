; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/executor/extr_nodeHash.c_ExecHashBuildSkewHash.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/executor/extr_nodeHash.c_ExecHashBuildSkewHash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i32*, i64, i32, i64, i64, %struct.TYPE_9__**, i32, i32*, i32* }
%struct.TYPE_9__ = type { i32, i32* }
%struct.TYPE_11__ = type { i32, i32, i32 }
%struct.TYPE_12__ = type { i32, i32*, i64* }

@STATRELATTINH = common dso_local global i32 0, align 4
@STATISTIC_KIND_MCV = common dso_local global i32 0, align 4
@InvalidOid = common dso_local global i32 0, align 4
@ATTSTATSSLOT_VALUES = common dso_local global i32 0, align 4
@ATTSTATSSLOT_NUMBERS = common dso_local global i32 0, align 4
@SKEW_MIN_OUTER_FRACTION = common dso_local global double 0.000000e+00, align 8
@SKEW_BUCKET_OVERHEAD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*, %struct.TYPE_11__*, i32)* @ExecHashBuildSkewHash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ExecHashBuildSkewHash(%struct.TYPE_10__* %0, %struct.TYPE_11__* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_12__, align 8
  %9 = alloca double, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %5, align 8
  store i32 %2, i32* %6, align 4
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @OidIsValid(i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %3
  br label %304

21:                                               ; preds = %3
  %22 = load i32, i32* %6, align 4
  %23 = icmp sle i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  br label %304

25:                                               ; preds = %21
  %26 = load i32, i32* @STATRELATTINH, align 4
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @ObjectIdGetDatum(i32 %29)
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @Int16GetDatum(i32 %33)
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @BoolGetDatum(i32 %37)
  %39 = call i32* @SearchSysCache3(i32 %26, i32 %30, i32 %34, i32 %38)
  store i32* %39, i32** %7, align 8
  %40 = load i32*, i32** %7, align 8
  %41 = call i32 @HeapTupleIsValid(i32* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %25
  br label %304

44:                                               ; preds = %25
  %45 = load i32*, i32** %7, align 8
  %46 = load i32, i32* @STATISTIC_KIND_MCV, align 4
  %47 = load i32, i32* @InvalidOid, align 4
  %48 = load i32, i32* @ATTSTATSSLOT_VALUES, align 4
  %49 = load i32, i32* @ATTSTATSSLOT_NUMBERS, align 4
  %50 = or i32 %48, %49
  %51 = call i64 @get_attstatsslot(%struct.TYPE_12__* %8, i32* %45, i32 %46, i32 %47, i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %301

53:                                               ; preds = %44
  %54 = load i32, i32* %6, align 4
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp sgt i32 %54, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %53
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  store i32 %60, i32* %6, align 4
  br label %61

61:                                               ; preds = %58, %53
  store double 0.000000e+00, double* %9, align 8
  store i32 0, i32* %12, align 4
  br label %62

62:                                               ; preds = %76, %61
  %63 = load i32, i32* %12, align 4
  %64 = load i32, i32* %6, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %79

66:                                               ; preds = %62
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 2
  %68 = load i64*, i64** %67, align 8
  %69 = load i32, i32* %12, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i64, i64* %68, i64 %70
  %72 = load i64, i64* %71, align 8
  %73 = sitofp i64 %72 to double
  %74 = load double, double* %9, align 8
  %75 = fadd double %74, %73
  store double %75, double* %9, align 8
  br label %76

76:                                               ; preds = %66
  %77 = load i32, i32* %12, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %12, align 4
  br label %62

79:                                               ; preds = %62
  %80 = load double, double* %9, align 8
  %81 = load double, double* @SKEW_MIN_OUTER_FRACTION, align 8
  %82 = fcmp olt double %80, %81
  br i1 %82, label %83, label %87

83:                                               ; preds = %79
  %84 = call i32 @free_attstatsslot(%struct.TYPE_12__* %8)
  %85 = load i32*, i32** %7, align 8
  %86 = call i32 @ReleaseSysCache(i32* %85)
  br label %304

87:                                               ; preds = %79
  store i32 2, i32* %10, align 4
  br label %88

88:                                               ; preds = %92, %87
  %89 = load i32, i32* %10, align 4
  %90 = load i32, i32* %6, align 4
  %91 = icmp sle i32 %89, %90
  br i1 %91, label %92, label %95

92:                                               ; preds = %88
  %93 = load i32, i32* %10, align 4
  %94 = shl i32 %93, 1
  store i32 %94, i32* %10, align 4
  br label %88

95:                                               ; preds = %88
  %96 = load i32, i32* %10, align 4
  %97 = shl i32 %96, 2
  store i32 %97, i32* %10, align 4
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 0
  store i32 1, i32* %99, align 8
  %100 = load i32, i32* %10, align 4
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 1
  store i32 %100, i32* %102, align 4
  %103 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 8
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* %10, align 4
  %107 = sext i32 %106 to i64
  %108 = mul i64 %107, 8
  %109 = trunc i64 %108 to i32
  %110 = call i64 @MemoryContextAllocZero(i32 %105, i32 %109)
  %111 = inttoptr i64 %110 to %struct.TYPE_9__**
  %112 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %112, i32 0, i32 7
  store %struct.TYPE_9__** %111, %struct.TYPE_9__*** %113, align 8
  %114 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %114, i32 0, i32 8
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* %6, align 4
  %118 = sext i32 %117 to i64
  %119 = mul i64 %118, 4
  %120 = trunc i64 %119 to i32
  %121 = call i64 @MemoryContextAllocZero(i32 %116, i32 %120)
  %122 = inttoptr i64 %121 to i32*
  %123 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %124 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %123, i32 0, i32 2
  store i32* %122, i32** %124, align 8
  %125 = load i32, i32* %10, align 4
  %126 = sext i32 %125 to i64
  %127 = mul i64 %126, 8
  %128 = load i32, i32* %6, align 4
  %129 = sext i32 %128 to i64
  %130 = mul i64 %129, 4
  %131 = add i64 %127, %130
  %132 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %133 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %132, i32 0, i32 3
  %134 = load i64, i64* %133, align 8
  %135 = add i64 %134, %131
  store i64 %135, i64* %133, align 8
  %136 = load i32, i32* %10, align 4
  %137 = sext i32 %136 to i64
  %138 = mul i64 %137, 8
  %139 = load i32, i32* %6, align 4
  %140 = sext i32 %139 to i64
  %141 = mul i64 %140, 4
  %142 = add i64 %138, %141
  %143 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %144 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %143, i32 0, i32 4
  %145 = load i32, i32* %144, align 8
  %146 = sext i32 %145 to i64
  %147 = add i64 %146, %142
  %148 = trunc i64 %147 to i32
  store i32 %148, i32* %144, align 8
  %149 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %150 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %149, i32 0, i32 3
  %151 = load i64, i64* %150, align 8
  %152 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %153 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %152, i32 0, i32 5
  %154 = load i64, i64* %153, align 8
  %155 = icmp sgt i64 %151, %154
  br i1 %155, label %156, label %162

156:                                              ; preds = %95
  %157 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %158 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %157, i32 0, i32 3
  %159 = load i64, i64* %158, align 8
  %160 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %161 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %160, i32 0, i32 5
  store i64 %159, i64* %161, align 8
  br label %162

162:                                              ; preds = %156, %95
  %163 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %164 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %163, i32 0, i32 10
  %165 = load i32*, i32** %164, align 8
  store i32* %165, i32** %11, align 8
  store i32 0, i32* %12, align 4
  br label %166

166:                                              ; preds = %296, %162
  %167 = load i32, i32* %12, align 4
  %168 = load i32, i32* %6, align 4
  %169 = icmp slt i32 %167, %168
  br i1 %169, label %170, label %299

170:                                              ; preds = %166
  %171 = load i32*, i32** %11, align 8
  %172 = getelementptr inbounds i32, i32* %171, i64 0
  %173 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %174 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %173, i32 0, i32 9
  %175 = load i32*, i32** %174, align 8
  %176 = getelementptr inbounds i32, i32* %175, i64 0
  %177 = load i32, i32* %176, align 4
  %178 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 1
  %179 = load i32*, i32** %178, align 8
  %180 = load i32, i32* %12, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i32, i32* %179, i64 %181
  %183 = load i32, i32* %182, align 4
  %184 = call i32 @FunctionCall1Coll(i32* %172, i32 %177, i32 %183)
  %185 = call i32 @DatumGetUInt32(i32 %184)
  store i32 %185, i32* %13, align 4
  %186 = load i32, i32* %13, align 4
  %187 = load i32, i32* %10, align 4
  %188 = sub nsw i32 %187, 1
  %189 = and i32 %186, %188
  store i32 %189, i32* %14, align 4
  br label %190

190:                                              ; preds = %213, %170
  %191 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %192 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %191, i32 0, i32 7
  %193 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %192, align 8
  %194 = load i32, i32* %14, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %193, i64 %195
  %197 = load %struct.TYPE_9__*, %struct.TYPE_9__** %196, align 8
  %198 = icmp ne %struct.TYPE_9__* %197, null
  br i1 %198, label %199, label %211

199:                                              ; preds = %190
  %200 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %201 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %200, i32 0, i32 7
  %202 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %201, align 8
  %203 = load i32, i32* %14, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %202, i64 %204
  %206 = load %struct.TYPE_9__*, %struct.TYPE_9__** %205, align 8
  %207 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 8
  %209 = load i32, i32* %13, align 4
  %210 = icmp ne i32 %208, %209
  br label %211

211:                                              ; preds = %199, %190
  %212 = phi i1 [ false, %190 ], [ %210, %199 ]
  br i1 %212, label %213, label %219

213:                                              ; preds = %211
  %214 = load i32, i32* %14, align 4
  %215 = add nsw i32 %214, 1
  %216 = load i32, i32* %10, align 4
  %217 = sub nsw i32 %216, 1
  %218 = and i32 %215, %217
  store i32 %218, i32* %14, align 4
  br label %190

219:                                              ; preds = %211
  %220 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %221 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %220, i32 0, i32 7
  %222 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %221, align 8
  %223 = load i32, i32* %14, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %222, i64 %224
  %226 = load %struct.TYPE_9__*, %struct.TYPE_9__** %225, align 8
  %227 = icmp ne %struct.TYPE_9__* %226, null
  br i1 %227, label %228, label %229

228:                                              ; preds = %219
  br label %296

229:                                              ; preds = %219
  %230 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %231 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %230, i32 0, i32 8
  %232 = load i32, i32* %231, align 8
  %233 = call i64 @MemoryContextAlloc(i32 %232, i32 16)
  %234 = inttoptr i64 %233 to %struct.TYPE_9__*
  %235 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %236 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %235, i32 0, i32 7
  %237 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %236, align 8
  %238 = load i32, i32* %14, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %237, i64 %239
  store %struct.TYPE_9__* %234, %struct.TYPE_9__** %240, align 8
  %241 = load i32, i32* %13, align 4
  %242 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %243 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %242, i32 0, i32 7
  %244 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %243, align 8
  %245 = load i32, i32* %14, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %244, i64 %246
  %248 = load %struct.TYPE_9__*, %struct.TYPE_9__** %247, align 8
  %249 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %248, i32 0, i32 0
  store i32 %241, i32* %249, align 8
  %250 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %251 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %250, i32 0, i32 7
  %252 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %251, align 8
  %253 = load i32, i32* %14, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %252, i64 %254
  %256 = load %struct.TYPE_9__*, %struct.TYPE_9__** %255, align 8
  %257 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %256, i32 0, i32 1
  store i32* null, i32** %257, align 8
  %258 = load i32, i32* %14, align 4
  %259 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %260 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %259, i32 0, i32 2
  %261 = load i32*, i32** %260, align 8
  %262 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %263 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %262, i32 0, i32 6
  %264 = load i64, i64* %263, align 8
  %265 = getelementptr inbounds i32, i32* %261, i64 %264
  store i32 %258, i32* %265, align 4
  %266 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %267 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %266, i32 0, i32 6
  %268 = load i64, i64* %267, align 8
  %269 = add i64 %268, 1
  store i64 %269, i64* %267, align 8
  %270 = load i64, i64* @SKEW_BUCKET_OVERHEAD, align 8
  %271 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %272 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %271, i32 0, i32 3
  %273 = load i64, i64* %272, align 8
  %274 = add nsw i64 %273, %270
  store i64 %274, i64* %272, align 8
  %275 = load i64, i64* @SKEW_BUCKET_OVERHEAD, align 8
  %276 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %277 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %276, i32 0, i32 4
  %278 = load i32, i32* %277, align 8
  %279 = sext i32 %278 to i64
  %280 = add nsw i64 %279, %275
  %281 = trunc i64 %280 to i32
  store i32 %281, i32* %277, align 8
  %282 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %283 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %282, i32 0, i32 3
  %284 = load i64, i64* %283, align 8
  %285 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %286 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %285, i32 0, i32 5
  %287 = load i64, i64* %286, align 8
  %288 = icmp sgt i64 %284, %287
  br i1 %288, label %289, label %295

289:                                              ; preds = %229
  %290 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %291 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %290, i32 0, i32 3
  %292 = load i64, i64* %291, align 8
  %293 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %294 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %293, i32 0, i32 5
  store i64 %292, i64* %294, align 8
  br label %295

295:                                              ; preds = %289, %229
  br label %296

296:                                              ; preds = %295, %228
  %297 = load i32, i32* %12, align 4
  %298 = add nsw i32 %297, 1
  store i32 %298, i32* %12, align 4
  br label %166

299:                                              ; preds = %166
  %300 = call i32 @free_attstatsslot(%struct.TYPE_12__* %8)
  br label %301

301:                                              ; preds = %299, %44
  %302 = load i32*, i32** %7, align 8
  %303 = call i32 @ReleaseSysCache(i32* %302)
  br label %304

304:                                              ; preds = %301, %83, %43, %24, %20
  ret void
}

declare dso_local i32 @OidIsValid(i32) #1

declare dso_local i32* @SearchSysCache3(i32, i32, i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i32) #1

declare dso_local i32 @Int16GetDatum(i32) #1

declare dso_local i32 @BoolGetDatum(i32) #1

declare dso_local i32 @HeapTupleIsValid(i32*) #1

declare dso_local i64 @get_attstatsslot(%struct.TYPE_12__*, i32*, i32, i32, i32) #1

declare dso_local i32 @free_attstatsslot(%struct.TYPE_12__*) #1

declare dso_local i32 @ReleaseSysCache(i32*) #1

declare dso_local i64 @MemoryContextAllocZero(i32, i32) #1

declare dso_local i32 @DatumGetUInt32(i32) #1

declare dso_local i32 @FunctionCall1Coll(i32*, i32, i32) #1

declare dso_local i64 @MemoryContextAlloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
