; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/catalog/extr_index.c_reindex_index.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/catalog/extr_index.c_reindex_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_28__ = type { %struct.TYPE_27__* }
%struct.TYPE_27__ = type { i64, i32 }
%struct.TYPE_29__ = type { i32, i32, i32*, i32*, i32* }
%struct.TYPE_30__ = type { i32 }
%struct.TYPE_31__ = type { i32, i32, i32, i32 }

@REINDEXOPT_REPORT_PROGRESS = common dso_local global i32 0, align 4
@ShareLock = common dso_local global i32 0, align 4
@PROGRESS_COMMAND_CREATE_INDEX = common dso_local global i32 0, align 4
@PROGRESS_CREATEIDX_COMMAND = common dso_local global i32 0, align 4
@PROGRESS_CREATEIDX_COMMAND_REINDEX = common dso_local global i32 0, align 4
@PROGRESS_CREATEIDX_INDEX_OID = common dso_local global i32 0, align 4
@AccessExclusiveLock = common dso_local global i32 0, align 4
@PROGRESS_CREATEIDX_ACCESS_METHOD_OID = common dso_local global i32 0, align 4
@RELKIND_PARTITIONED_INDEX = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"unsupported relation kind for index \22%s\22\00", align 1
@ERRCODE_FEATURE_NOT_SUPPORTED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"cannot reindex temporary tables of other sessions\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"REINDEX INDEX\00", align 1
@IndexRelationId = common dso_local global i32 0, align 4
@RowExclusiveLock = common dso_local global i32 0, align 4
@INDEXRELID = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"cache lookup failed for index %u\00", align 1
@REINDEXOPT_VERBOSE = common dso_local global i32 0, align 4
@INFO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [25 x i8] c"index \22%s\22 was reindexed\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@NoLock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @reindex_index(i32 %0, i32 %1, i8 signext %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_28__*, align 8
  %10 = alloca %struct.TYPE_28__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_29__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_28__*, align 8
  %17 = alloca %struct.TYPE_30__*, align 8
  %18 = alloca %struct.TYPE_31__*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i8 %2, i8* %7, align 1
  store i32 %3, i32* %8, align 4
  store volatile i32 0, i32* %13, align 4
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* @REINDEXOPT_REPORT_PROGRESS, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  %25 = zext i1 %24 to i32
  store i32 %25, i32* %15, align 4
  %26 = call i32 @pg_rusage_init(i32* %14)
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @IndexGetRelation(i32 %27, i32 0)
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* %11, align 4
  %30 = load i32, i32* @ShareLock, align 4
  %31 = call %struct.TYPE_28__* @table_open(i32 %29, i32 %30)
  store %struct.TYPE_28__* %31, %struct.TYPE_28__** %10, align 8
  %32 = load i32, i32* %15, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %44

34:                                               ; preds = %4
  %35 = load i32, i32* @PROGRESS_COMMAND_CREATE_INDEX, align 4
  %36 = load i32, i32* %11, align 4
  %37 = call i32 @pgstat_progress_start_command(i32 %35, i32 %36)
  %38 = load i32, i32* @PROGRESS_CREATEIDX_COMMAND, align 4
  %39 = load i32, i32* @PROGRESS_CREATEIDX_COMMAND_REINDEX, align 4
  %40 = call i32 @pgstat_progress_update_param(i32 %38, i32 %39)
  %41 = load i32, i32* @PROGRESS_CREATEIDX_INDEX_OID, align 4
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @pgstat_progress_update_param(i32 %41, i32 %42)
  br label %44

44:                                               ; preds = %34, %4
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* @AccessExclusiveLock, align 4
  %47 = call %struct.TYPE_28__* @index_open(i32 %45, i32 %46)
  store %struct.TYPE_28__* %47, %struct.TYPE_28__** %9, align 8
  %48 = load i32, i32* %15, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %58

50:                                               ; preds = %44
  %51 = load i32, i32* @PROGRESS_CREATEIDX_ACCESS_METHOD_OID, align 4
  %52 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %53 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_27__*, %struct.TYPE_27__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @pgstat_progress_update_param(i32 %51, i32 %56)
  br label %58

58:                                               ; preds = %50, %44
  %59 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %60 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_27__*, %struct.TYPE_27__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @RELKIND_PARTITIONED_INDEX, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %71

66:                                               ; preds = %58
  %67 = load i32, i32* @ERROR, align 4
  %68 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %69 = call i32 @RelationGetRelationName(%struct.TYPE_28__* %68)
  %70 = call i32 @elog(i32 %67, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %69)
  br label %71

71:                                               ; preds = %66, %58
  %72 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %73 = call i64 @RELATION_IS_OTHER_TEMP(%struct.TYPE_28__* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %71
  %76 = load i32, i32* @ERROR, align 4
  %77 = load i32, i32* @ERRCODE_FEATURE_NOT_SUPPORTED, align 4
  %78 = call i32 @errcode(i32 %77)
  %79 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0))
  %80 = call i32 @ereport(i32 %76, i32 %79)
  br label %81

81:                                               ; preds = %75, %71
  %82 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %83 = call i32 @CheckTableNotInUse(%struct.TYPE_28__* %82, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %84 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %85 = call i32 @TransferPredicateLocksToHeapRelation(%struct.TYPE_28__* %84)
  %86 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %87 = call %struct.TYPE_29__* @BuildIndexInfo(%struct.TYPE_28__* %86)
  store %struct.TYPE_29__* %87, %struct.TYPE_29__** %12, align 8
  %88 = load i32, i32* %6, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %110

90:                                               ; preds = %81
  %91 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %92 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %100, label %95

95:                                               ; preds = %90
  %96 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %97 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %96, i32 0, i32 4
  %98 = load i32*, i32** %97, align 8
  %99 = icmp ne i32* %98, null
  br i1 %99, label %100, label %101

100:                                              ; preds = %95, %90
  store volatile i32 1, i32* %13, align 4
  br label %101

101:                                              ; preds = %100, %95
  %102 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %103 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %102, i32 0, i32 0
  store i32 0, i32* %103, align 8
  %104 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %105 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %104, i32 0, i32 4
  store i32* null, i32** %105, align 8
  %106 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %107 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %106, i32 0, i32 3
  store i32* null, i32** %107, align 8
  %108 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %109 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %108, i32 0, i32 2
  store i32* null, i32** %109, align 8
  br label %110

110:                                              ; preds = %101, %81
  %111 = call i32 (...) @PG_TRY()
  %112 = load i32, i32* %11, align 4
  %113 = load i32, i32* %5, align 4
  %114 = call i32 @SetReindexProcessing(i32 %112, i32 %113)
  %115 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %116 = load i8, i8* %7, align 1
  %117 = call i32 @RelationSetNewRelfilenode(%struct.TYPE_28__* %115, i8 signext %116)
  %118 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %119 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %120 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %121 = call i32 @index_build(%struct.TYPE_28__* %118, %struct.TYPE_28__* %119, %struct.TYPE_29__* %120, i32 1, i32 1)
  %122 = call i32 (...) @PG_FINALLY()
  %123 = call i32 (...) @ResetReindexProcessing()
  %124 = call i32 (...) @PG_END_TRY()
  %125 = load volatile i32, i32* %13, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %220, label %127

127:                                              ; preds = %110
  %128 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %129 = call i32 @EarlyPruningEnabled(%struct.TYPE_28__* %128)
  store i32 %129, i32* %20, align 4
  %130 = load i32, i32* @IndexRelationId, align 4
  %131 = load i32, i32* @RowExclusiveLock, align 4
  %132 = call %struct.TYPE_28__* @table_open(i32 %130, i32 %131)
  store %struct.TYPE_28__* %132, %struct.TYPE_28__** %16, align 8
  %133 = load i32, i32* @INDEXRELID, align 4
  %134 = load i32, i32* %5, align 4
  %135 = call i32 @ObjectIdGetDatum(i32 %134)
  %136 = call %struct.TYPE_30__* @SearchSysCacheCopy1(i32 %133, i32 %135)
  store %struct.TYPE_30__* %136, %struct.TYPE_30__** %17, align 8
  %137 = load %struct.TYPE_30__*, %struct.TYPE_30__** %17, align 8
  %138 = call i32 @HeapTupleIsValid(%struct.TYPE_30__* %137)
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %144, label %140

140:                                              ; preds = %127
  %141 = load i32, i32* @ERROR, align 4
  %142 = load i32, i32* %5, align 4
  %143 = call i32 @elog(i32 %141, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %142)
  br label %144

144:                                              ; preds = %140, %127
  %145 = load %struct.TYPE_30__*, %struct.TYPE_30__** %17, align 8
  %146 = call i64 @GETSTRUCT(%struct.TYPE_30__* %145)
  %147 = inttoptr i64 %146 to %struct.TYPE_31__*
  store %struct.TYPE_31__* %147, %struct.TYPE_31__** %18, align 8
  %148 = load %struct.TYPE_31__*, %struct.TYPE_31__** %18, align 8
  %149 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %163

152:                                              ; preds = %144
  %153 = load %struct.TYPE_31__*, %struct.TYPE_31__** %18, align 8
  %154 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %163

157:                                              ; preds = %152
  %158 = load %struct.TYPE_31__*, %struct.TYPE_31__** %18, align 8
  %159 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %158, i32 0, i32 2
  %160 = load i32, i32* %159, align 4
  %161 = icmp ne i32 %160, 0
  %162 = xor i1 %161, true
  br label %163

163:                                              ; preds = %157, %152, %144
  %164 = phi i1 [ true, %152 ], [ true, %144 ], [ %162, %157 ]
  %165 = zext i1 %164 to i32
  store i32 %165, i32* %19, align 4
  %166 = load i32, i32* %19, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %181, label %168

168:                                              ; preds = %163
  %169 = load %struct.TYPE_31__*, %struct.TYPE_31__** %18, align 8
  %170 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %169, i32 0, i32 3
  %171 = load i32, i32* %170, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %178

173:                                              ; preds = %168
  %174 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %175 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %181

178:                                              ; preds = %173, %168
  %179 = load i32, i32* %20, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %216

181:                                              ; preds = %178, %173, %163
  %182 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %183 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %192, label %186

186:                                              ; preds = %181
  %187 = load i32, i32* %20, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %192, label %189

189:                                              ; preds = %186
  %190 = load %struct.TYPE_31__*, %struct.TYPE_31__** %18, align 8
  %191 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %190, i32 0, i32 3
  store i32 0, i32* %191, align 4
  br label %202

192:                                              ; preds = %186, %181
  %193 = load i32, i32* %19, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %198, label %195

195:                                              ; preds = %192
  %196 = load i32, i32* %20, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %201

198:                                              ; preds = %195, %192
  %199 = load %struct.TYPE_31__*, %struct.TYPE_31__** %18, align 8
  %200 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %199, i32 0, i32 3
  store i32 1, i32* %200, align 4
  br label %201

201:                                              ; preds = %198, %195
  br label %202

202:                                              ; preds = %201, %189
  %203 = load %struct.TYPE_31__*, %struct.TYPE_31__** %18, align 8
  %204 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %203, i32 0, i32 0
  store i32 1, i32* %204, align 4
  %205 = load %struct.TYPE_31__*, %struct.TYPE_31__** %18, align 8
  %206 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %205, i32 0, i32 1
  store i32 1, i32* %206, align 4
  %207 = load %struct.TYPE_31__*, %struct.TYPE_31__** %18, align 8
  %208 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %207, i32 0, i32 2
  store i32 1, i32* %208, align 4
  %209 = load %struct.TYPE_28__*, %struct.TYPE_28__** %16, align 8
  %210 = load %struct.TYPE_30__*, %struct.TYPE_30__** %17, align 8
  %211 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %210, i32 0, i32 0
  %212 = load %struct.TYPE_30__*, %struct.TYPE_30__** %17, align 8
  %213 = call i32 @CatalogTupleUpdate(%struct.TYPE_28__* %209, i32* %211, %struct.TYPE_30__* %212)
  %214 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %215 = call i32 @CacheInvalidateRelcache(%struct.TYPE_28__* %214)
  br label %216

216:                                              ; preds = %202, %178
  %217 = load %struct.TYPE_28__*, %struct.TYPE_28__** %16, align 8
  %218 = load i32, i32* @RowExclusiveLock, align 4
  %219 = call i32 @table_close(%struct.TYPE_28__* %217, i32 %218)
  br label %220

220:                                              ; preds = %216, %110
  %221 = load i32, i32* %8, align 4
  %222 = load i32, i32* @REINDEXOPT_VERBOSE, align 4
  %223 = and i32 %221, %222
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %233

225:                                              ; preds = %220
  %226 = load i32, i32* @INFO, align 4
  %227 = load i32, i32* %5, align 4
  %228 = call i32 @get_rel_name(i32 %227)
  %229 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i32 %228)
  %230 = call i32 @pg_rusage_show(i32* %14)
  %231 = call i32 @errdetail_internal(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32 %230)
  %232 = call i32 @ereport(i32 %226, i32 %231)
  br label %233

233:                                              ; preds = %225, %220
  %234 = load i32, i32* %15, align 4
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %236, label %238

236:                                              ; preds = %233
  %237 = call i32 (...) @pgstat_progress_end_command()
  br label %238

238:                                              ; preds = %236, %233
  %239 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %240 = load i32, i32* @NoLock, align 4
  %241 = call i32 @index_close(%struct.TYPE_28__* %239, i32 %240)
  %242 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %243 = load i32, i32* @NoLock, align 4
  %244 = call i32 @table_close(%struct.TYPE_28__* %242, i32 %243)
  ret void
}

declare dso_local i32 @pg_rusage_init(i32*) #1

declare dso_local i32 @IndexGetRelation(i32, i32) #1

declare dso_local %struct.TYPE_28__* @table_open(i32, i32) #1

declare dso_local i32 @pgstat_progress_start_command(i32, i32) #1

declare dso_local i32 @pgstat_progress_update_param(i32, i32) #1

declare dso_local %struct.TYPE_28__* @index_open(i32, i32) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

declare dso_local i32 @RelationGetRelationName(%struct.TYPE_28__*) #1

declare dso_local i64 @RELATION_IS_OTHER_TEMP(%struct.TYPE_28__*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, ...) #1

declare dso_local i32 @CheckTableNotInUse(%struct.TYPE_28__*, i8*) #1

declare dso_local i32 @TransferPredicateLocksToHeapRelation(%struct.TYPE_28__*) #1

declare dso_local %struct.TYPE_29__* @BuildIndexInfo(%struct.TYPE_28__*) #1

declare dso_local i32 @PG_TRY(...) #1

declare dso_local i32 @SetReindexProcessing(i32, i32) #1

declare dso_local i32 @RelationSetNewRelfilenode(%struct.TYPE_28__*, i8 signext) #1

declare dso_local i32 @index_build(%struct.TYPE_28__*, %struct.TYPE_28__*, %struct.TYPE_29__*, i32, i32) #1

declare dso_local i32 @PG_FINALLY(...) #1

declare dso_local i32 @ResetReindexProcessing(...) #1

declare dso_local i32 @PG_END_TRY(...) #1

declare dso_local i32 @EarlyPruningEnabled(%struct.TYPE_28__*) #1

declare dso_local %struct.TYPE_30__* @SearchSysCacheCopy1(i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i32) #1

declare dso_local i32 @HeapTupleIsValid(%struct.TYPE_30__*) #1

declare dso_local i64 @GETSTRUCT(%struct.TYPE_30__*) #1

declare dso_local i32 @CatalogTupleUpdate(%struct.TYPE_28__*, i32*, %struct.TYPE_30__*) #1

declare dso_local i32 @CacheInvalidateRelcache(%struct.TYPE_28__*) #1

declare dso_local i32 @table_close(%struct.TYPE_28__*, i32) #1

declare dso_local i32 @get_rel_name(i32) #1

declare dso_local i32 @errdetail_internal(i8*, i32) #1

declare dso_local i32 @pg_rusage_show(i32*) #1

declare dso_local i32 @pgstat_progress_end_command(...) #1

declare dso_local i32 @index_close(%struct.TYPE_28__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
