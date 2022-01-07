; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_tablecmds.c_addFkRecurseReferenced.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_tablecmds.c_addFkRecurseReferenced.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i8*, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_20__ = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i64 }
%struct.TYPE_21__ = type { i32, i32* }

@RELKIND_RELATION = common dso_local global i64 0, align 8
@RELKIND_PARTITIONED_TABLE = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_WRONG_OBJECT_TYPE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"referenced relation \22%s\22 is not a table\00", align 1
@CONSTRAINT_RELATION = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"fkey\00", align 1
@NIL = common dso_local global i32 0, align 4
@CONSTRAINT_FOREIGN = common dso_local global i32 0, align 4
@InvalidOid = common dso_local global i32 0, align 4
@ConstraintRelationId = common dso_local global i32 0, align 4
@DEPENDENCY_INTERNAL = common dso_local global i32 0, align 4
@ShareRowExclusiveLock = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"index for %u not found in partition %s\00", align 1
@NoLock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32**, %struct.TYPE_22__*, %struct.TYPE_20__*, %struct.TYPE_20__*, i32, i32, i32, i32*, i32*, i32*, i32*, i32*, i32)* @addFkRecurseReferenced to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @addFkRecurseReferenced(i32** %0, %struct.TYPE_22__* %1, %struct.TYPE_20__* %2, %struct.TYPE_20__* %3, i32 %4, i32 %5, i32 %6, i32* %7, i32* %8, i32* %9, i32* %10, i32* %11, i32 %12) #0 {
  %14 = alloca i32**, align 8
  %15 = alloca %struct.TYPE_22__*, align 8
  %16 = alloca %struct.TYPE_20__*, align 8
  %17 = alloca %struct.TYPE_20__*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i8*, align 8
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca %struct.TYPE_21__*, align 8
  %35 = alloca i32, align 4
  %36 = alloca %struct.TYPE_20__*, align 8
  %37 = alloca i32*, align 8
  %38 = alloca i32*, align 8
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  store i32** %0, i32*** %14, align 8
  store %struct.TYPE_22__* %1, %struct.TYPE_22__** %15, align 8
  store %struct.TYPE_20__* %2, %struct.TYPE_20__** %16, align 8
  store %struct.TYPE_20__* %3, %struct.TYPE_20__** %17, align 8
  store i32 %4, i32* %18, align 4
  store i32 %5, i32* %19, align 4
  store i32 %6, i32* %20, align 4
  store i32* %7, i32** %21, align 8
  store i32* %8, i32** %22, align 8
  store i32* %9, i32** %23, align 8
  store i32* %10, i32** %24, align 8
  store i32* %11, i32** %25, align 8
  store i32 %12, i32* %26, align 4
  %41 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  %42 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_19__*, %struct.TYPE_19__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @RELKIND_RELATION, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %64

48:                                               ; preds = %13
  %49 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  %50 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_19__*, %struct.TYPE_19__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @RELKIND_PARTITIONED_TABLE, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %64

56:                                               ; preds = %48
  %57 = load i32, i32* @ERROR, align 4
  %58 = load i32, i32* @ERRCODE_WRONG_OBJECT_TYPE, align 4
  %59 = call i32 @errcode(i32 %58)
  %60 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  %61 = call i32 @RelationGetRelationName(%struct.TYPE_20__* %60)
  %62 = call i32 @errmsg(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %61)
  %63 = call i32 @ereport(i32 %57, i32 %62)
  br label %64

64:                                               ; preds = %56, %48, %13
  %65 = load i32, i32* @CONSTRAINT_RELATION, align 4
  %66 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %67 = call i32 @RelationGetRelid(%struct.TYPE_20__* %66)
  %68 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %69 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %68, i32 0, i32 0
  %70 = load i8*, i8** %69, align 8
  %71 = call i64 @ConstraintNameIsUsed(i32 %65, i32 %67, i8* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %84

73:                                               ; preds = %64
  %74 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %75 = call i32 @RelationGetRelationName(%struct.TYPE_20__* %74)
  %76 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %77 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %76, i32 0, i32 7
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @ChooseForeignKeyConstraintNameAddition(i32 %78)
  %80 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %81 = call i32 @RelationGetNamespace(%struct.TYPE_20__* %80)
  %82 = load i32, i32* @NIL, align 4
  %83 = call i8* @ChooseConstraintName(i32 %75, i32 %79, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %81, i32 %82)
  store i8* %83, i8** %29, align 8
  br label %88

84:                                               ; preds = %64
  %85 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %86 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %85, i32 0, i32 0
  %87 = load i8*, i8** %86, align 8
  store i8* %87, i8** %29, align 8
  br label %88

88:                                               ; preds = %84, %73
  %89 = load i32, i32* %19, align 4
  %90 = call i64 @OidIsValid(i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %88
  store i32 0, i32* %30, align 4
  store i32 1, i32* %31, align 4
  store i32 0, i32* %32, align 4
  br label %102

93:                                               ; preds = %88
  store i32 1, i32* %30, align 4
  store i32 0, i32* %31, align 4
  %94 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %95 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %94, i32 0, i32 0
  %96 = load %struct.TYPE_19__*, %struct.TYPE_19__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @RELKIND_PARTITIONED_TABLE, align 8
  %100 = icmp ne i64 %98, %99
  %101 = zext i1 %100 to i32
  store i32 %101, i32* %32, align 4
  br label %102

102:                                              ; preds = %93, %92
  %103 = load i8*, i8** %29, align 8
  %104 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %105 = call i32 @RelationGetNamespace(%struct.TYPE_20__* %104)
  %106 = load i32, i32* @CONSTRAINT_FOREIGN, align 4
  %107 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %108 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %107, i32 0, i32 6
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %111 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %110, i32 0, i32 5
  %112 = load i32, i32* %111, align 8
  %113 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %114 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %113, i32 0, i32 4
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* %19, align 4
  %117 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %118 = call i32 @RelationGetRelid(%struct.TYPE_20__* %117)
  %119 = load i32*, i32** %22, align 8
  %120 = load i32, i32* %20, align 4
  %121 = load i32, i32* %20, align 4
  %122 = load i32, i32* @InvalidOid, align 4
  %123 = load i32, i32* %18, align 4
  %124 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  %125 = call i32 @RelationGetRelid(%struct.TYPE_20__* %124)
  %126 = load i32*, i32** %21, align 8
  %127 = load i32*, i32** %23, align 8
  %128 = load i32*, i32** %24, align 8
  %129 = load i32*, i32** %25, align 8
  %130 = load i32, i32* %20, align 4
  %131 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %132 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %131, i32 0, i32 3
  %133 = load i32, i32* %132, align 8
  %134 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %135 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %138 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 8
  %140 = load i32, i32* %30, align 4
  %141 = load i32, i32* %31, align 4
  %142 = load i32, i32* %32, align 4
  %143 = call i32 @CreateConstraintEntry(i8* %103, i32 %105, i32 %106, i32 %109, i32 %112, i32 %115, i32 %116, i32 %118, i32* %119, i32 %120, i32 %121, i32 %122, i32 %123, i32 %125, i32* %126, i32* %127, i32* %128, i32* %129, i32 %130, i32 %133, i32 %136, i32 %139, i32* null, i32* null, i32* null, i32 %140, i32 %141, i32 %142, i32 0)
  store i32 %143, i32* %28, align 4
  %144 = load i32, i32* %27, align 4
  %145 = load i32, i32* @ConstraintRelationId, align 4
  %146 = load i32, i32* %28, align 4
  %147 = call i32 @ObjectAddressSet(i32 %144, i32 %145, i32 %146)
  %148 = load i32, i32* %19, align 4
  %149 = call i64 @OidIsValid(i32 %148)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %158

151:                                              ; preds = %102
  %152 = load i32, i32* %33, align 4
  %153 = load i32, i32* @ConstraintRelationId, align 4
  %154 = load i32, i32* %19, align 4
  %155 = call i32 @ObjectAddressSet(i32 %152, i32 %153, i32 %154)
  %156 = load i32, i32* @DEPENDENCY_INTERNAL, align 4
  %157 = call i32 @recordDependencyOn(i32* %27, i32* %33, i32 %156)
  br label %158

158:                                              ; preds = %151, %102
  %159 = call i32 (...) @CommandCounterIncrement()
  %160 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  %161 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %160, i32 0, i32 0
  %162 = load %struct.TYPE_19__*, %struct.TYPE_19__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = load i64, i64* @RELKIND_RELATION, align 8
  %166 = icmp eq i64 %164, %165
  br i1 %166, label %167, label %175

167:                                              ; preds = %158
  %168 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %169 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  %170 = call i32 @RelationGetRelid(%struct.TYPE_20__* %169)
  %171 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %172 = load i32, i32* %28, align 4
  %173 = load i32, i32* %18, align 4
  %174 = call i32 @createForeignKeyActionTriggers(%struct.TYPE_20__* %168, i32 %170, %struct.TYPE_22__* %171, i32 %172, i32 %173)
  br label %175

175:                                              ; preds = %167, %158
  %176 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  %177 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %176, i32 0, i32 0
  %178 = load %struct.TYPE_19__*, %struct.TYPE_19__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %178, i32 0, i32 0
  %180 = load i64, i64* %179, align 8
  %181 = load i64, i64* @RELKIND_PARTITIONED_TABLE, align 8
  %182 = icmp eq i64 %180, %181
  br i1 %182, label %183, label %283

183:                                              ; preds = %175
  %184 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  %185 = call %struct.TYPE_21__* @RelationGetPartitionDesc(%struct.TYPE_20__* %184)
  store %struct.TYPE_21__* %185, %struct.TYPE_21__** %34, align 8
  store i32 0, i32* %35, align 4
  br label %186

186:                                              ; preds = %279, %183
  %187 = load i32, i32* %35, align 4
  %188 = load %struct.TYPE_21__*, %struct.TYPE_21__** %34, align 8
  %189 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = icmp slt i32 %187, %190
  br i1 %191, label %192, label %282

192:                                              ; preds = %186
  %193 = load %struct.TYPE_21__*, %struct.TYPE_21__** %34, align 8
  %194 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %193, i32 0, i32 1
  %195 = load i32*, i32** %194, align 8
  %196 = load i32, i32* %35, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds i32, i32* %195, i64 %197
  %199 = load i32, i32* %198, align 4
  %200 = load i32, i32* @ShareRowExclusiveLock, align 4
  %201 = call %struct.TYPE_20__* @table_open(i32 %199, i32 %200)
  store %struct.TYPE_20__* %201, %struct.TYPE_20__** %36, align 8
  %202 = load %struct.TYPE_20__*, %struct.TYPE_20__** %36, align 8
  %203 = call i32 @RelationGetDescr(%struct.TYPE_20__* %202)
  %204 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  %205 = call i32 @RelationGetDescr(%struct.TYPE_20__* %204)
  %206 = call i32* @convert_tuples_by_name_map_if_req(i32 %203, i32 %205)
  store i32* %206, i32** %37, align 8
  %207 = load i32*, i32** %37, align 8
  %208 = icmp ne i32* %207, null
  br i1 %208, label %209, label %238

209:                                              ; preds = %192
  %210 = load i32, i32* %20, align 4
  %211 = sext i32 %210 to i64
  %212 = mul i64 4, %211
  %213 = trunc i64 %212 to i32
  %214 = call i32* @palloc(i32 %213)
  store i32* %214, i32** %38, align 8
  store i32 0, i32* %40, align 4
  br label %215

215:                                              ; preds = %234, %209
  %216 = load i32, i32* %40, align 4
  %217 = load i32, i32* %20, align 4
  %218 = icmp slt i32 %216, %217
  br i1 %218, label %219, label %237

219:                                              ; preds = %215
  %220 = load i32*, i32** %37, align 8
  %221 = load i32*, i32** %21, align 8
  %222 = load i32, i32* %40, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds i32, i32* %221, i64 %223
  %225 = load i32, i32* %224, align 4
  %226 = sub nsw i32 %225, 1
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds i32, i32* %220, i64 %227
  %229 = load i32, i32* %228, align 4
  %230 = load i32*, i32** %38, align 8
  %231 = load i32, i32* %40, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds i32, i32* %230, i64 %232
  store i32 %229, i32* %233, align 4
  br label %234

234:                                              ; preds = %219
  %235 = load i32, i32* %40, align 4
  %236 = add nsw i32 %235, 1
  store i32 %236, i32* %40, align 4
  br label %215

237:                                              ; preds = %215
  br label %240

238:                                              ; preds = %192
  %239 = load i32*, i32** %21, align 8
  store i32* %239, i32** %38, align 8
  br label %240

240:                                              ; preds = %238, %237
  %241 = load %struct.TYPE_20__*, %struct.TYPE_20__** %36, align 8
  %242 = load i32, i32* %18, align 4
  %243 = call i32 @index_get_partition(%struct.TYPE_20__* %241, i32 %242)
  store i32 %243, i32* %39, align 4
  %244 = load i32, i32* %39, align 4
  %245 = call i64 @OidIsValid(i32 %244)
  %246 = icmp ne i64 %245, 0
  br i1 %246, label %253, label %247

247:                                              ; preds = %240
  %248 = load i32, i32* @ERROR, align 4
  %249 = load i32, i32* %18, align 4
  %250 = load %struct.TYPE_20__*, %struct.TYPE_20__** %36, align 8
  %251 = call i32 @RelationGetRelationName(%struct.TYPE_20__* %250)
  %252 = call i32 @elog(i32 %248, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %249, i32 %251)
  br label %253

253:                                              ; preds = %247, %240
  %254 = load i32**, i32*** %14, align 8
  %255 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %256 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %257 = load %struct.TYPE_20__*, %struct.TYPE_20__** %36, align 8
  %258 = load i32, i32* %39, align 4
  %259 = load i32, i32* %28, align 4
  %260 = load i32, i32* %20, align 4
  %261 = load i32*, i32** %38, align 8
  %262 = load i32*, i32** %22, align 8
  %263 = load i32*, i32** %23, align 8
  %264 = load i32*, i32** %24, align 8
  %265 = load i32*, i32** %25, align 8
  %266 = load i32, i32* %26, align 4
  %267 = call i32 @addFkRecurseReferenced(i32** %254, %struct.TYPE_22__* %255, %struct.TYPE_20__* %256, %struct.TYPE_20__* %257, i32 %258, i32 %259, i32 %260, i32* %261, i32* %262, i32* %263, i32* %264, i32* %265, i32 %266)
  %268 = load %struct.TYPE_20__*, %struct.TYPE_20__** %36, align 8
  %269 = load i32, i32* @NoLock, align 4
  %270 = call i32 @table_close(%struct.TYPE_20__* %268, i32 %269)
  %271 = load i32*, i32** %37, align 8
  %272 = icmp ne i32* %271, null
  br i1 %272, label %273, label %278

273:                                              ; preds = %253
  %274 = load i32*, i32** %38, align 8
  %275 = call i32 @pfree(i32* %274)
  %276 = load i32*, i32** %37, align 8
  %277 = call i32 @pfree(i32* %276)
  br label %278

278:                                              ; preds = %273, %253
  br label %279

279:                                              ; preds = %278
  %280 = load i32, i32* %35, align 4
  %281 = add nsw i32 %280, 1
  store i32 %281, i32* %35, align 4
  br label %186

282:                                              ; preds = %186
  br label %283

283:                                              ; preds = %282, %175
  %284 = load i32, i32* %27, align 4
  ret i32 %284
}

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i32) #1

declare dso_local i32 @RelationGetRelationName(%struct.TYPE_20__*) #1

declare dso_local i64 @ConstraintNameIsUsed(i32, i32, i8*) #1

declare dso_local i32 @RelationGetRelid(%struct.TYPE_20__*) #1

declare dso_local i8* @ChooseConstraintName(i32, i32, i8*, i32, i32) #1

declare dso_local i32 @ChooseForeignKeyConstraintNameAddition(i32) #1

declare dso_local i32 @RelationGetNamespace(%struct.TYPE_20__*) #1

declare dso_local i64 @OidIsValid(i32) #1

declare dso_local i32 @CreateConstraintEntry(i8*, i32, i32, i32, i32, i32, i32, i32, i32*, i32, i32, i32, i32, i32, i32*, i32*, i32*, i32*, i32, i32, i32, i32, i32*, i32*, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @ObjectAddressSet(i32, i32, i32) #1

declare dso_local i32 @recordDependencyOn(i32*, i32*, i32) #1

declare dso_local i32 @CommandCounterIncrement(...) #1

declare dso_local i32 @createForeignKeyActionTriggers(%struct.TYPE_20__*, i32, %struct.TYPE_22__*, i32, i32) #1

declare dso_local %struct.TYPE_21__* @RelationGetPartitionDesc(%struct.TYPE_20__*) #1

declare dso_local %struct.TYPE_20__* @table_open(i32, i32) #1

declare dso_local i32* @convert_tuples_by_name_map_if_req(i32, i32) #1

declare dso_local i32 @RelationGetDescr(%struct.TYPE_20__*) #1

declare dso_local i32* @palloc(i32) #1

declare dso_local i32 @index_get_partition(%struct.TYPE_20__*, i32) #1

declare dso_local i32 @elog(i32, i8*, i32, i32) #1

declare dso_local i32 @table_close(%struct.TYPE_20__*, i32) #1

declare dso_local i32 @pfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
