; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/cache/extr_relcache.c_RelationGetExclusionInfo.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/cache/extr_relcache.c_RelationGetExclusionInfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64*, i64*, i64*, i32, i32*, i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_13__ = type { i64, i64 }

@Anum_pg_constraint_conrelid = common dso_local global i32 0, align 4
@BTEqualStrategyNumber = common dso_local global i32 0, align 4
@F_OIDEQ = common dso_local global i32 0, align 4
@ConstraintRelationId = common dso_local global i32 0, align 4
@AccessShareLock = common dso_local global i32 0, align 4
@ConstraintRelidTypidNameIndexId = common dso_local global i32 0, align 4
@CONSTRAINT_EXCLUSION = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"unexpected exclusion constraint record found for rel %s\00", align 1
@Anum_pg_constraint_conexclop = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"null conexclop for rel %s\00", align 1
@OIDOID = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [33 x i8] c"conexclop is not a 1-D Oid array\00", align 1
@.str.3 = private unnamed_addr constant [47 x i8] c"exclusion constraint record missing for rel %s\00", align 1
@InvalidStrategy = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [53 x i8] c"could not find strategy for operator %u in family %u\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @RelationGetExclusionInfo(%struct.TYPE_12__* %0, i64** %1, i64** %2, i64** %3) #0 {
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i64**, align 8
  %7 = alloca i64**, align 8
  %8 = alloca i64**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca %struct.TYPE_12__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca [1 x i32], align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.TYPE_13__*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32*, align 8
  %24 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %5, align 8
  store i64** %1, i64*** %6, align 8
  store i64** %2, i64*** %7, align 8
  store i64** %3, i64*** %8, align 8
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %26 = call i32 @IndexRelationGetNumberOfKeyAttributes(%struct.TYPE_12__* %25)
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %9, align 4
  %28 = sext i32 %27 to i64
  %29 = mul i64 8, %28
  %30 = trunc i64 %29 to i32
  %31 = call i64 @palloc(i32 %30)
  %32 = inttoptr i64 %31 to i64*
  store i64* %32, i64** %10, align 8
  %33 = load i64**, i64*** %6, align 8
  store i64* %32, i64** %33, align 8
  %34 = load i32, i32* %9, align 4
  %35 = sext i32 %34 to i64
  %36 = mul i64 8, %35
  %37 = trunc i64 %36 to i32
  %38 = call i64 @palloc(i32 %37)
  %39 = inttoptr i64 %38 to i64*
  store i64* %39, i64** %11, align 8
  %40 = load i64**, i64*** %7, align 8
  store i64* %39, i64** %40, align 8
  %41 = load i32, i32* %9, align 4
  %42 = sext i32 %41 to i64
  %43 = mul i64 8, %42
  %44 = trunc i64 %43 to i32
  %45 = call i64 @palloc(i32 %44)
  %46 = inttoptr i64 %45 to i64*
  store i64* %46, i64** %12, align 8
  %47 = load i64**, i64*** %8, align 8
  store i64* %46, i64** %47, align 8
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 0
  %50 = load i64*, i64** %49, align 8
  %51 = icmp ne i64* %50, null
  br i1 %51, label %52, label %80

52:                                               ; preds = %4
  %53 = load i64*, i64** %10, align 8
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 1
  %56 = load i64*, i64** %55, align 8
  %57 = load i32, i32* %9, align 4
  %58 = sext i32 %57 to i64
  %59 = mul i64 8, %58
  %60 = trunc i64 %59 to i32
  %61 = call i32 @memcpy(i64* %53, i64* %56, i32 %60)
  %62 = load i64*, i64** %11, align 8
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 2
  %65 = load i64*, i64** %64, align 8
  %66 = load i32, i32* %9, align 4
  %67 = sext i32 %66 to i64
  %68 = mul i64 8, %67
  %69 = trunc i64 %68 to i32
  %70 = call i32 @memcpy(i64* %62, i64* %65, i32 %69)
  %71 = load i64*, i64** %12, align 8
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 0
  %74 = load i64*, i64** %73, align 8
  %75 = load i32, i32* %9, align 4
  %76 = sext i32 %75 to i64
  %77 = mul i64 8, %76
  %78 = trunc i64 %77 to i32
  %79 = call i32 @memcpy(i64* %71, i64* %74, i32 %78)
  br label %309

80:                                               ; preds = %4
  %81 = getelementptr inbounds [1 x i32], [1 x i32]* %15, i64 0, i64 0
  %82 = load i32, i32* @Anum_pg_constraint_conrelid, align 4
  %83 = load i32, i32* @BTEqualStrategyNumber, align 4
  %84 = load i32, i32* @F_OIDEQ, align 4
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %85, i32 0, i32 6
  %87 = load %struct.TYPE_11__*, %struct.TYPE_11__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @ObjectIdGetDatum(i32 %89)
  %91 = call i32 @ScanKeyInit(i32* %81, i32 %82, i32 %83, i32 %84, i32 %90)
  %92 = load i32, i32* @ConstraintRelationId, align 4
  %93 = load i32, i32* @AccessShareLock, align 4
  %94 = call %struct.TYPE_12__* @table_open(i32 %92, i32 %93)
  store %struct.TYPE_12__* %94, %struct.TYPE_12__** %13, align 8
  %95 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %96 = load i32, i32* @ConstraintRelidTypidNameIndexId, align 4
  %97 = getelementptr inbounds [1 x i32], [1 x i32]* %15, i64 0, i64 0
  %98 = call i32 @systable_beginscan(%struct.TYPE_12__* %95, i32 %96, i32 1, i32* null, i32 1, i32* %97)
  store i32 %98, i32* %14, align 4
  store i32 0, i32* %17, align 4
  br label %99

99:                                               ; preds = %170, %121, %80
  %100 = load i32, i32* %14, align 4
  %101 = call i32 @systable_getnext(i32 %100)
  store i32 %101, i32* %16, align 4
  %102 = call i64 @HeapTupleIsValid(i32 %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %179

104:                                              ; preds = %99
  %105 = load i32, i32* %16, align 4
  %106 = call i32 @GETSTRUCT(i32 %105)
  %107 = sext i32 %106 to i64
  %108 = inttoptr i64 %107 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %108, %struct.TYPE_13__** %20, align 8
  %109 = load %struct.TYPE_13__*, %struct.TYPE_13__** %20, align 8
  %110 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @CONSTRAINT_EXCLUSION, align 8
  %113 = icmp ne i64 %111, %112
  br i1 %113, label %121, label %114

114:                                              ; preds = %104
  %115 = load %struct.TYPE_13__*, %struct.TYPE_13__** %20, align 8
  %116 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %119 = call i64 @RelationGetRelid(%struct.TYPE_12__* %118)
  %120 = icmp ne i64 %117, %119
  br i1 %120, label %121, label %122

121:                                              ; preds = %114, %104
  br label %99

122:                                              ; preds = %114
  %123 = load i32, i32* %17, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %130

125:                                              ; preds = %122
  %126 = load i32, i32* @ERROR, align 4
  %127 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %128 = call i32 @RelationGetRelationName(%struct.TYPE_12__* %127)
  %129 = call i32 (i32, i8*, ...) @elog(i32 %126, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 %128)
  br label %130

130:                                              ; preds = %125, %122
  store i32 1, i32* %17, align 4
  %131 = load i32, i32* %16, align 4
  %132 = load i32, i32* @Anum_pg_constraint_conexclop, align 4
  %133 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %134 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %133, i32 0, i32 5
  %135 = load i32, i32* %134, align 8
  %136 = call i32 @fastgetattr(i32 %131, i32 %132, i32 %135, i32* %22)
  store i32 %136, i32* %21, align 4
  %137 = load i32, i32* %22, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %144

139:                                              ; preds = %130
  %140 = load i32, i32* @ERROR, align 4
  %141 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %142 = call i32 @RelationGetRelationName(%struct.TYPE_12__* %141)
  %143 = call i32 (i32, i8*, ...) @elog(i32 %140, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %142)
  br label %144

144:                                              ; preds = %139, %130
  %145 = load i32, i32* %21, align 4
  %146 = call i32* @DatumGetArrayTypeP(i32 %145)
  store i32* %146, i32** %23, align 8
  %147 = load i32*, i32** %23, align 8
  %148 = call i32* @ARR_DIMS(i32* %147)
  %149 = getelementptr inbounds i32, i32* %148, i64 0
  %150 = load i32, i32* %149, align 4
  store i32 %150, i32* %24, align 4
  %151 = load i32*, i32** %23, align 8
  %152 = call i32 @ARR_NDIM(i32* %151)
  %153 = icmp ne i32 %152, 1
  br i1 %153, label %167, label %154

154:                                              ; preds = %144
  %155 = load i32, i32* %24, align 4
  %156 = load i32, i32* %9, align 4
  %157 = icmp ne i32 %155, %156
  br i1 %157, label %167, label %158

158:                                              ; preds = %154
  %159 = load i32*, i32** %23, align 8
  %160 = call i64 @ARR_HASNULL(i32* %159)
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %167, label %162

162:                                              ; preds = %158
  %163 = load i32*, i32** %23, align 8
  %164 = call i64 @ARR_ELEMTYPE(i32* %163)
  %165 = load i64, i64* @OIDOID, align 8
  %166 = icmp ne i64 %164, %165
  br i1 %166, label %167, label %170

167:                                              ; preds = %162, %158, %154, %144
  %168 = load i32, i32* @ERROR, align 4
  %169 = call i32 (i32, i8*, ...) @elog(i32 %168, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  br label %170

170:                                              ; preds = %167, %162
  %171 = load i64*, i64** %10, align 8
  %172 = load i32*, i32** %23, align 8
  %173 = call i64* @ARR_DATA_PTR(i32* %172)
  %174 = load i32, i32* %9, align 4
  %175 = sext i32 %174 to i64
  %176 = mul i64 8, %175
  %177 = trunc i64 %176 to i32
  %178 = call i32 @memcpy(i64* %171, i64* %173, i32 %177)
  br label %99

179:                                              ; preds = %99
  %180 = load i32, i32* %14, align 4
  %181 = call i32 @systable_endscan(i32 %180)
  %182 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %183 = load i32, i32* @AccessShareLock, align 4
  %184 = call i32 @table_close(%struct.TYPE_12__* %182, i32 %183)
  %185 = load i32, i32* %17, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %192, label %187

187:                                              ; preds = %179
  %188 = load i32, i32* @ERROR, align 4
  %189 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %190 = call i32 @RelationGetRelationName(%struct.TYPE_12__* %189)
  %191 = call i32 (i32, i8*, ...) @elog(i32 %188, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0), i32 %190)
  br label %192

192:                                              ; preds = %187, %179
  store i32 0, i32* %19, align 4
  br label %193

193:                                              ; preds = %248, %192
  %194 = load i32, i32* %19, align 4
  %195 = load i32, i32* %9, align 4
  %196 = icmp slt i32 %194, %195
  br i1 %196, label %197, label %251

197:                                              ; preds = %193
  %198 = load i64*, i64** %10, align 8
  %199 = load i32, i32* %19, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds i64, i64* %198, i64 %200
  %202 = load i64, i64* %201, align 8
  %203 = call i64 @get_opcode(i64 %202)
  %204 = load i64*, i64** %11, align 8
  %205 = load i32, i32* %19, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds i64, i64* %204, i64 %206
  store i64 %203, i64* %207, align 8
  %208 = load i64*, i64** %10, align 8
  %209 = load i32, i32* %19, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds i64, i64* %208, i64 %210
  %212 = load i64, i64* %211, align 8
  %213 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %214 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %213, i32 0, i32 4
  %215 = load i32*, i32** %214, align 8
  %216 = load i32, i32* %19, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds i32, i32* %215, i64 %217
  %219 = load i32, i32* %218, align 4
  %220 = call i64 @get_op_opfamily_strategy(i64 %212, i32 %219)
  %221 = load i64*, i64** %12, align 8
  %222 = load i32, i32* %19, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds i64, i64* %221, i64 %223
  store i64 %220, i64* %224, align 8
  %225 = load i64*, i64** %12, align 8
  %226 = load i32, i32* %19, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds i64, i64* %225, i64 %227
  %229 = load i64, i64* %228, align 8
  %230 = load i64, i64* @InvalidStrategy, align 8
  %231 = icmp eq i64 %229, %230
  br i1 %231, label %232, label %247

232:                                              ; preds = %197
  %233 = load i32, i32* @ERROR, align 4
  %234 = load i64*, i64** %10, align 8
  %235 = load i32, i32* %19, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds i64, i64* %234, i64 %236
  %238 = load i64, i64* %237, align 8
  %239 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %240 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %239, i32 0, i32 4
  %241 = load i32*, i32** %240, align 8
  %242 = load i32, i32* %19, align 4
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds i32, i32* %241, i64 %243
  %245 = load i32, i32* %244, align 4
  %246 = call i32 (i32, i8*, ...) @elog(i32 %233, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.4, i64 0, i64 0), i64 %238, i32 %245)
  br label %247

247:                                              ; preds = %232, %197
  br label %248

248:                                              ; preds = %247
  %249 = load i32, i32* %19, align 4
  %250 = add nsw i32 %249, 1
  store i32 %250, i32* %19, align 4
  br label %193

251:                                              ; preds = %193
  %252 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %253 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %252, i32 0, i32 3
  %254 = load i32, i32* %253, align 8
  %255 = call i32 @MemoryContextSwitchTo(i32 %254)
  store i32 %255, i32* %18, align 4
  %256 = load i32, i32* %9, align 4
  %257 = sext i32 %256 to i64
  %258 = mul i64 8, %257
  %259 = trunc i64 %258 to i32
  %260 = call i64 @palloc(i32 %259)
  %261 = inttoptr i64 %260 to i64*
  %262 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %263 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %262, i32 0, i32 1
  store i64* %261, i64** %263, align 8
  %264 = load i32, i32* %9, align 4
  %265 = sext i32 %264 to i64
  %266 = mul i64 8, %265
  %267 = trunc i64 %266 to i32
  %268 = call i64 @palloc(i32 %267)
  %269 = inttoptr i64 %268 to i64*
  %270 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %271 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %270, i32 0, i32 2
  store i64* %269, i64** %271, align 8
  %272 = load i32, i32* %9, align 4
  %273 = sext i32 %272 to i64
  %274 = mul i64 8, %273
  %275 = trunc i64 %274 to i32
  %276 = call i64 @palloc(i32 %275)
  %277 = inttoptr i64 %276 to i64*
  %278 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %279 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %278, i32 0, i32 0
  store i64* %277, i64** %279, align 8
  %280 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %281 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %280, i32 0, i32 1
  %282 = load i64*, i64** %281, align 8
  %283 = load i64*, i64** %10, align 8
  %284 = load i32, i32* %9, align 4
  %285 = sext i32 %284 to i64
  %286 = mul i64 8, %285
  %287 = trunc i64 %286 to i32
  %288 = call i32 @memcpy(i64* %282, i64* %283, i32 %287)
  %289 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %290 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %289, i32 0, i32 2
  %291 = load i64*, i64** %290, align 8
  %292 = load i64*, i64** %11, align 8
  %293 = load i32, i32* %9, align 4
  %294 = sext i32 %293 to i64
  %295 = mul i64 8, %294
  %296 = trunc i64 %295 to i32
  %297 = call i32 @memcpy(i64* %291, i64* %292, i32 %296)
  %298 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %299 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %298, i32 0, i32 0
  %300 = load i64*, i64** %299, align 8
  %301 = load i64*, i64** %12, align 8
  %302 = load i32, i32* %9, align 4
  %303 = sext i32 %302 to i64
  %304 = mul i64 8, %303
  %305 = trunc i64 %304 to i32
  %306 = call i32 @memcpy(i64* %300, i64* %301, i32 %305)
  %307 = load i32, i32* %18, align 4
  %308 = call i32 @MemoryContextSwitchTo(i32 %307)
  br label %309

309:                                              ; preds = %251, %52
  ret void
}

declare dso_local i32 @IndexRelationGetNumberOfKeyAttributes(%struct.TYPE_12__*) #1

declare dso_local i64 @palloc(i32) #1

declare dso_local i32 @memcpy(i64*, i64*, i32) #1

declare dso_local i32 @ScanKeyInit(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i32) #1

declare dso_local %struct.TYPE_12__* @table_open(i32, i32) #1

declare dso_local i32 @systable_beginscan(%struct.TYPE_12__*, i32, i32, i32*, i32, i32*) #1

declare dso_local i64 @HeapTupleIsValid(i32) #1

declare dso_local i32 @systable_getnext(i32) #1

declare dso_local i32 @GETSTRUCT(i32) #1

declare dso_local i64 @RelationGetRelid(%struct.TYPE_12__*) #1

declare dso_local i32 @elog(i32, i8*, ...) #1

declare dso_local i32 @RelationGetRelationName(%struct.TYPE_12__*) #1

declare dso_local i32 @fastgetattr(i32, i32, i32, i32*) #1

declare dso_local i32* @DatumGetArrayTypeP(i32) #1

declare dso_local i32* @ARR_DIMS(i32*) #1

declare dso_local i32 @ARR_NDIM(i32*) #1

declare dso_local i64 @ARR_HASNULL(i32*) #1

declare dso_local i64 @ARR_ELEMTYPE(i32*) #1

declare dso_local i64* @ARR_DATA_PTR(i32*) #1

declare dso_local i32 @systable_endscan(i32) #1

declare dso_local i32 @table_close(%struct.TYPE_12__*, i32) #1

declare dso_local i64 @get_opcode(i64) #1

declare dso_local i64 @get_op_opfamily_strategy(i64, i32) #1

declare dso_local i32 @MemoryContextSwitchTo(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
