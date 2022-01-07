; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_indexcmds.c_CheckIndexCompatible.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_indexcmds.c_CheckIndexCompatible.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32, i64 }
%struct.TYPE_20__ = type { i64, i32 }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_17__ = type { i64* }
%struct.TYPE_15__ = type { i64* }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_14__ = type { i64 }

@INDEX_MAX_KEYS = common dso_local global i32 0, align 4
@AMNAME = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_UNDEFINED_OBJECT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"access method \22%s\22 does not exist\00", align 1
@NIL = common dso_local global i32 0, align 4
@INDEXRELID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"cache lookup failed for index %u\00", align 1
@Anum_pg_index_indpred = common dso_local global i32 0, align 4
@Anum_pg_index_indexprs = common dso_local global i32 0, align 4
@Anum_pg_index_indcollation = common dso_local global i32 0, align 4
@Anum_pg_index_indclass = common dso_local global i32 0, align 4
@AccessShareLock = common dso_local global i32 0, align 4
@NoLock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CheckIndexCompatible(i64 %0, i8* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_19__*, align 8
  %18 = alloca %struct.TYPE_20__*, align 8
  %19 = alloca %struct.TYPE_18__*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32*, align 8
  %22 = alloca %struct.TYPE_17__*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca %struct.TYPE_15__*, align 8
  %28 = alloca %struct.TYPE_15__*, align 8
  %29 = alloca %struct.TYPE_16__*, align 8
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i64*, align 8
  %33 = alloca i64*, align 8
  %34 = alloca i32*, align 8
  %35 = alloca i64, align 8
  %36 = alloca i64, align 8
  store i64 %0, i64* %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 1, i32* %26, align 4
  %37 = load i64, i64* %6, align 8
  %38 = call i64 @IndexGetRelation(i64 %37, i32 0)
  store i64 %38, i64* %15, align 8
  store i32 0, i32* %10, align 4
  %39 = load i32*, i32** %8, align 8
  %40 = call i32 @list_length(i32* %39)
  store i32 %40, i32* %23, align 4
  %41 = load i32, i32* %23, align 4
  %42 = icmp sgt i32 %41, 0
  %43 = zext i1 %42 to i32
  %44 = call i32 @Assert(i32 %43)
  %45 = load i32, i32* %23, align 4
  %46 = load i32, i32* @INDEX_MAX_KEYS, align 4
  %47 = icmp sle i32 %45, %46
  %48 = zext i1 %47 to i32
  %49 = call i32 @Assert(i32 %48)
  %50 = load i32, i32* @AMNAME, align 4
  %51 = load i8*, i8** %7, align 8
  %52 = call i32 @PointerGetDatum(i8* %51)
  %53 = call i32 @SearchSysCache1(i32 %50, i32 %52)
  store i32 %53, i32* %16, align 4
  %54 = load i32, i32* %16, align 4
  %55 = call i32 @HeapTupleIsValid(i32 %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %64, label %57

57:                                               ; preds = %4
  %58 = load i32, i32* @ERROR, align 4
  %59 = load i32, i32* @ERRCODE_UNDEFINED_OBJECT, align 4
  %60 = call i32 @errcode(i32 %59)
  %61 = load i8*, i8** %7, align 8
  %62 = call i32 @errmsg(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8* %61)
  %63 = call i32 @ereport(i32 %58, i32 %62)
  br label %64

64:                                               ; preds = %57, %4
  %65 = load i32, i32* %16, align 4
  %66 = call i64 @GETSTRUCT(i32 %65)
  %67 = inttoptr i64 %66 to %struct.TYPE_20__*
  store %struct.TYPE_20__* %67, %struct.TYPE_20__** %18, align 8
  %68 = load %struct.TYPE_20__*, %struct.TYPE_20__** %18, align 8
  %69 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  store i64 %70, i64* %14, align 8
  %71 = load %struct.TYPE_20__*, %struct.TYPE_20__** %18, align 8
  %72 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = call %struct.TYPE_18__* @GetIndexAmRoutine(i32 %73)
  store %struct.TYPE_18__* %74, %struct.TYPE_18__** %19, align 8
  %75 = load i32, i32* %16, align 4
  %76 = call i32 @ReleaseSysCache(i32 %75)
  %77 = load %struct.TYPE_18__*, %struct.TYPE_18__** %19, align 8
  %78 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  store i32 %79, i32* %20, align 4
  %80 = load i32, i32* %23, align 4
  %81 = load i32, i32* %23, align 4
  %82 = load i64, i64* %14, align 8
  %83 = load i32, i32* @NIL, align 4
  %84 = load i32, i32* @NIL, align 4
  %85 = call %struct.TYPE_17__* @makeIndexInfo(i32 %80, i32 %81, i64 %82, i32 %83, i32 %84, i32 0, i32 0, i32 0)
  store %struct.TYPE_17__* %85, %struct.TYPE_17__** %22, align 8
  %86 = load i32, i32* %23, align 4
  %87 = sext i32 %86 to i64
  %88 = mul i64 %87, 8
  %89 = trunc i64 %88 to i32
  %90 = call i64 @palloc(i32 %89)
  %91 = inttoptr i64 %90 to i64*
  store i64* %91, i64** %11, align 8
  %92 = load i32, i32* %23, align 4
  %93 = sext i32 %92 to i64
  %94 = mul i64 %93, 8
  %95 = trunc i64 %94 to i32
  %96 = call i64 @palloc(i32 %95)
  %97 = inttoptr i64 %96 to i64*
  store i64* %97, i64** %12, align 8
  %98 = load i32, i32* %23, align 4
  %99 = sext i32 %98 to i64
  %100 = mul i64 %99, 8
  %101 = trunc i64 %100 to i32
  %102 = call i64 @palloc(i32 %101)
  %103 = inttoptr i64 %102 to i64*
  store i64* %103, i64** %13, align 8
  %104 = load i32, i32* %23, align 4
  %105 = sext i32 %104 to i64
  %106 = mul i64 %105, 4
  %107 = trunc i64 %106 to i32
  %108 = call i64 @palloc(i32 %107)
  %109 = inttoptr i64 %108 to i32*
  store i32* %109, i32** %21, align 8
  %110 = load %struct.TYPE_17__*, %struct.TYPE_17__** %22, align 8
  %111 = load i64*, i64** %11, align 8
  %112 = load i64*, i64** %12, align 8
  %113 = load i64*, i64** %13, align 8
  %114 = load i32*, i32** %21, align 8
  %115 = load i32*, i32** %8, align 8
  %116 = load i32*, i32** %9, align 8
  %117 = load i64, i64* %15, align 8
  %118 = load i8*, i8** %7, align 8
  %119 = load i64, i64* %14, align 8
  %120 = load i32, i32* %20, align 4
  %121 = load i32, i32* %10, align 4
  %122 = call i32 @ComputeIndexAttrs(%struct.TYPE_17__* %110, i64* %111, i64* %112, i64* %113, i32* %114, i32* %115, i32* %116, i64 %117, i8* %118, i64 %119, i32 %120, i32 %121)
  %123 = load i32, i32* @INDEXRELID, align 4
  %124 = load i64, i64* %6, align 8
  %125 = call i32 @ObjectIdGetDatum(i64 %124)
  %126 = call i32 @SearchSysCache1(i32 %123, i32 %125)
  store i32 %126, i32* %16, align 4
  %127 = load i32, i32* %16, align 4
  %128 = call i32 @HeapTupleIsValid(i32 %127)
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %134, label %130

130:                                              ; preds = %64
  %131 = load i32, i32* @ERROR, align 4
  %132 = load i64, i64* %6, align 8
  %133 = call i32 @elog(i32 %131, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i64 %132)
  br label %134

134:                                              ; preds = %130, %64
  %135 = load i32, i32* %16, align 4
  %136 = call i64 @GETSTRUCT(i32 %135)
  %137 = inttoptr i64 %136 to %struct.TYPE_19__*
  store %struct.TYPE_19__* %137, %struct.TYPE_19__** %17, align 8
  %138 = load i32, i32* %16, align 4
  %139 = load i32, i32* @Anum_pg_index_indpred, align 4
  %140 = call i64 @heap_attisnull(i32 %138, i32 %139, i32* null)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %152

142:                                              ; preds = %134
  %143 = load i32, i32* %16, align 4
  %144 = load i32, i32* @Anum_pg_index_indexprs, align 4
  %145 = call i64 @heap_attisnull(i32 %143, i32 %144, i32* null)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %152

147:                                              ; preds = %142
  %148 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %149 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %148, i32 0, i32 1
  %150 = load i64, i64* %149, align 8
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %155, label %152

152:                                              ; preds = %147, %142, %134
  %153 = load i32, i32* %16, align 4
  %154 = call i32 @ReleaseSysCache(i32 %153)
  store i32 0, i32* %5, align 4
  br label %329

155:                                              ; preds = %147
  %156 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %157 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  store i32 %158, i32* %24, align 4
  %159 = load i32, i32* %24, align 4
  %160 = load i32, i32* %23, align 4
  %161 = icmp eq i32 %159, %160
  %162 = zext i1 %161 to i32
  %163 = call i32 @Assert(i32 %162)
  %164 = load i32, i32* @INDEXRELID, align 4
  %165 = load i32, i32* %16, align 4
  %166 = load i32, i32* @Anum_pg_index_indcollation, align 4
  %167 = call i32 @SysCacheGetAttr(i32 %164, i32 %165, i32 %166, i32* %25)
  store i32 %167, i32* %31, align 4
  %168 = load i32, i32* %25, align 4
  %169 = icmp ne i32 %168, 0
  %170 = xor i1 %169, true
  %171 = zext i1 %170 to i32
  %172 = call i32 @Assert(i32 %171)
  %173 = load i32, i32* %31, align 4
  %174 = call i64 @DatumGetPointer(i32 %173)
  %175 = inttoptr i64 %174 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %175, %struct.TYPE_15__** %28, align 8
  %176 = load i32, i32* @INDEXRELID, align 4
  %177 = load i32, i32* %16, align 4
  %178 = load i32, i32* @Anum_pg_index_indclass, align 4
  %179 = call i32 @SysCacheGetAttr(i32 %176, i32 %177, i32 %178, i32* %25)
  store i32 %179, i32* %31, align 4
  %180 = load i32, i32* %25, align 4
  %181 = icmp ne i32 %180, 0
  %182 = xor i1 %181, true
  %183 = zext i1 %182 to i32
  %184 = call i32 @Assert(i32 %183)
  %185 = load i32, i32* %31, align 4
  %186 = call i64 @DatumGetPointer(i32 %185)
  %187 = inttoptr i64 %186 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %187, %struct.TYPE_15__** %27, align 8
  %188 = load %struct.TYPE_15__*, %struct.TYPE_15__** %27, align 8
  %189 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %188, i32 0, i32 0
  %190 = load i64*, i64** %189, align 8
  %191 = load i64*, i64** %13, align 8
  %192 = load i32, i32* %24, align 4
  %193 = sext i32 %192 to i64
  %194 = mul i64 %193, 8
  %195 = trunc i64 %194 to i32
  %196 = call i64 @memcmp(i64* %190, i64* %191, i32 %195)
  %197 = icmp eq i64 %196, 0
  br i1 %197, label %198, label %209

198:                                              ; preds = %155
  %199 = load %struct.TYPE_15__*, %struct.TYPE_15__** %28, align 8
  %200 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %199, i32 0, i32 0
  %201 = load i64*, i64** %200, align 8
  %202 = load i64*, i64** %12, align 8
  %203 = load i32, i32* %24, align 4
  %204 = sext i32 %203 to i64
  %205 = mul i64 %204, 8
  %206 = trunc i64 %205 to i32
  %207 = call i64 @memcmp(i64* %201, i64* %202, i32 %206)
  %208 = icmp eq i64 %207, 0
  br label %209

209:                                              ; preds = %198, %155
  %210 = phi i1 [ false, %155 ], [ %208, %198 ]
  %211 = zext i1 %210 to i32
  store i32 %211, i32* %26, align 4
  %212 = load i32, i32* %16, align 4
  %213 = call i32 @ReleaseSysCache(i32 %212)
  %214 = load i32, i32* %26, align 4
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %217, label %216

216:                                              ; preds = %209
  store i32 0, i32* %5, align 4
  br label %329

217:                                              ; preds = %209
  %218 = load i64, i64* %6, align 8
  %219 = load i32, i32* @AccessShareLock, align 4
  %220 = call %struct.TYPE_16__* @index_open(i64 %218, i32 %219)
  store %struct.TYPE_16__* %220, %struct.TYPE_16__** %29, align 8
  store i32 0, i32* %30, align 4
  br label %221

221:                                              ; preds = %250, %217
  %222 = load i32, i32* %30, align 4
  %223 = load i32, i32* %24, align 4
  %224 = icmp slt i32 %222, %223
  br i1 %224, label %225, label %253

225:                                              ; preds = %221
  %226 = load i64*, i64** %13, align 8
  %227 = load i32, i32* %30, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds i64, i64* %226, i64 %228
  %230 = load i64, i64* %229, align 8
  %231 = call i64 @get_opclass_input_type(i64 %230)
  %232 = call i64 @IsPolymorphicType(i64 %231)
  %233 = icmp ne i64 %232, 0
  br i1 %233, label %234, label %249

234:                                              ; preds = %225
  %235 = load %struct.TYPE_16__*, %struct.TYPE_16__** %29, align 8
  %236 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 4
  %238 = load i32, i32* %30, align 4
  %239 = call %struct.TYPE_14__* @TupleDescAttr(i32 %237, i32 %238)
  %240 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %239, i32 0, i32 0
  %241 = load i64, i64* %240, align 8
  %242 = load i64*, i64** %11, align 8
  %243 = load i32, i32* %30, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds i64, i64* %242, i64 %244
  %246 = load i64, i64* %245, align 8
  %247 = icmp ne i64 %241, %246
  br i1 %247, label %248, label %249

248:                                              ; preds = %234
  store i32 0, i32* %26, align 4
  br label %253

249:                                              ; preds = %234, %225
  br label %250

250:                                              ; preds = %249
  %251 = load i32, i32* %30, align 4
  %252 = add nsw i32 %251, 1
  store i32 %252, i32* %30, align 4
  br label %221

253:                                              ; preds = %248, %221
  %254 = load i32, i32* %26, align 4
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %256, label %324

256:                                              ; preds = %253
  %257 = load %struct.TYPE_17__*, %struct.TYPE_17__** %22, align 8
  %258 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %257, i32 0, i32 0
  %259 = load i64*, i64** %258, align 8
  %260 = icmp ne i64* %259, null
  br i1 %260, label %261, label %324

261:                                              ; preds = %256
  %262 = load %struct.TYPE_16__*, %struct.TYPE_16__** %29, align 8
  %263 = call i32 @RelationGetExclusionInfo(%struct.TYPE_16__* %262, i64** %32, i64** %33, i32** %34)
  %264 = load i64*, i64** %32, align 8
  %265 = load %struct.TYPE_17__*, %struct.TYPE_17__** %22, align 8
  %266 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %265, i32 0, i32 0
  %267 = load i64*, i64** %266, align 8
  %268 = load i32, i32* %24, align 4
  %269 = sext i32 %268 to i64
  %270 = mul i64 %269, 8
  %271 = trunc i64 %270 to i32
  %272 = call i64 @memcmp(i64* %264, i64* %267, i32 %271)
  %273 = icmp eq i64 %272, 0
  %274 = zext i1 %273 to i32
  store i32 %274, i32* %26, align 4
  %275 = load i32, i32* %26, align 4
  %276 = icmp ne i32 %275, 0
  br i1 %276, label %277, label %323

277:                                              ; preds = %261
  store i32 0, i32* %30, align 4
  br label %278

278:                                              ; preds = %319, %277
  %279 = load i32, i32* %30, align 4
  %280 = load i32, i32* %24, align 4
  %281 = icmp slt i32 %279, %280
  br i1 %281, label %282, label %285

282:                                              ; preds = %278
  %283 = load i32, i32* %26, align 4
  %284 = icmp ne i32 %283, 0
  br label %285

285:                                              ; preds = %282, %278
  %286 = phi i1 [ false, %278 ], [ %284, %282 ]
  br i1 %286, label %287, label %322

287:                                              ; preds = %285
  %288 = load %struct.TYPE_17__*, %struct.TYPE_17__** %22, align 8
  %289 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %288, i32 0, i32 0
  %290 = load i64*, i64** %289, align 8
  %291 = load i32, i32* %30, align 4
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds i64, i64* %290, i64 %292
  %294 = load i64, i64* %293, align 8
  %295 = call i32 @op_input_types(i64 %294, i64* %35, i64* %36)
  %296 = load i64, i64* %35, align 8
  %297 = call i64 @IsPolymorphicType(i64 %296)
  %298 = icmp ne i64 %297, 0
  br i1 %298, label %303, label %299

299:                                              ; preds = %287
  %300 = load i64, i64* %36, align 8
  %301 = call i64 @IsPolymorphicType(i64 %300)
  %302 = icmp ne i64 %301, 0
  br i1 %302, label %303, label %318

303:                                              ; preds = %299, %287
  %304 = load %struct.TYPE_16__*, %struct.TYPE_16__** %29, align 8
  %305 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %304, i32 0, i32 0
  %306 = load i32, i32* %305, align 4
  %307 = load i32, i32* %30, align 4
  %308 = call %struct.TYPE_14__* @TupleDescAttr(i32 %306, i32 %307)
  %309 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %308, i32 0, i32 0
  %310 = load i64, i64* %309, align 8
  %311 = load i64*, i64** %11, align 8
  %312 = load i32, i32* %30, align 4
  %313 = sext i32 %312 to i64
  %314 = getelementptr inbounds i64, i64* %311, i64 %313
  %315 = load i64, i64* %314, align 8
  %316 = icmp ne i64 %310, %315
  br i1 %316, label %317, label %318

317:                                              ; preds = %303
  store i32 0, i32* %26, align 4
  br label %322

318:                                              ; preds = %303, %299
  br label %319

319:                                              ; preds = %318
  %320 = load i32, i32* %30, align 4
  %321 = add nsw i32 %320, 1
  store i32 %321, i32* %30, align 4
  br label %278

322:                                              ; preds = %317, %285
  br label %323

323:                                              ; preds = %322, %261
  br label %324

324:                                              ; preds = %323, %256, %253
  %325 = load %struct.TYPE_16__*, %struct.TYPE_16__** %29, align 8
  %326 = load i32, i32* @NoLock, align 4
  %327 = call i32 @index_close(%struct.TYPE_16__* %325, i32 %326)
  %328 = load i32, i32* %26, align 4
  store i32 %328, i32* %5, align 4
  br label %329

329:                                              ; preds = %324, %216, %152
  %330 = load i32, i32* %5, align 4
  ret i32 %330
}

declare dso_local i64 @IndexGetRelation(i64, i32) #1

declare dso_local i32 @list_length(i32*) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @SearchSysCache1(i32, i32) #1

declare dso_local i32 @PointerGetDatum(i8*) #1

declare dso_local i32 @HeapTupleIsValid(i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i8*) #1

declare dso_local i64 @GETSTRUCT(i32) #1

declare dso_local %struct.TYPE_18__* @GetIndexAmRoutine(i32) #1

declare dso_local i32 @ReleaseSysCache(i32) #1

declare dso_local %struct.TYPE_17__* @makeIndexInfo(i32, i32, i64, i32, i32, i32, i32, i32) #1

declare dso_local i64 @palloc(i32) #1

declare dso_local i32 @ComputeIndexAttrs(%struct.TYPE_17__*, i64*, i64*, i64*, i32*, i32*, i32*, i64, i8*, i64, i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i64) #1

declare dso_local i32 @elog(i32, i8*, i64) #1

declare dso_local i64 @heap_attisnull(i32, i32, i32*) #1

declare dso_local i32 @SysCacheGetAttr(i32, i32, i32, i32*) #1

declare dso_local i64 @DatumGetPointer(i32) #1

declare dso_local i64 @memcmp(i64*, i64*, i32) #1

declare dso_local %struct.TYPE_16__* @index_open(i64, i32) #1

declare dso_local i64 @IsPolymorphicType(i64) #1

declare dso_local i64 @get_opclass_input_type(i64) #1

declare dso_local %struct.TYPE_14__* @TupleDescAttr(i32, i32) #1

declare dso_local i32 @RelationGetExclusionInfo(%struct.TYPE_16__*, i64**, i64**, i32**) #1

declare dso_local i32 @op_input_types(i64, i64*, i64*) #1

declare dso_local i32 @index_close(%struct.TYPE_16__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
