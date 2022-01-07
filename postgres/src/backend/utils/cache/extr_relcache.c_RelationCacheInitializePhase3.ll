; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/cache/extr_relcache.c_RelationCacheInitializePhase3.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/cache/extr_relcache.c_RelationCacheInitializePhase3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i32*, %struct.TYPE_18__*, i32*, i32*, i32*, i32*, i32*, %struct.TYPE_17__*, i64 }
%struct.TYPE_18__ = type { i64, i32, i32, i64, i64 }
%struct.TYPE_17__ = type { i64, i32 }
%struct.TYPE_21__ = type { i64 }

@criticalSharedRelcachesBuilt = common dso_local global i32 0, align 4
@CacheMemoryContext = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"pg_class\00", align 1
@RelationRelation_Rowtype_Id = common dso_local global i32 0, align 4
@Natts_pg_class = common dso_local global i32 0, align 4
@Desc_pg_class = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"pg_attribute\00", align 1
@AttributeRelation_Rowtype_Id = common dso_local global i32 0, align 4
@Natts_pg_attribute = common dso_local global i32 0, align 4
@Desc_pg_attribute = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"pg_proc\00", align 1
@ProcedureRelation_Rowtype_Id = common dso_local global i32 0, align 4
@Natts_pg_proc = common dso_local global i32 0, align 4
@Desc_pg_proc = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"pg_type\00", align 1
@TypeRelation_Rowtype_Id = common dso_local global i32 0, align 4
@Natts_pg_type = common dso_local global i32 0, align 4
@Desc_pg_type = common dso_local global i32 0, align 4
@criticalRelcachesBuilt = common dso_local global i32 0, align 4
@ClassOidIndexId = common dso_local global i32 0, align 4
@RelationRelationId = common dso_local global i32 0, align 4
@AttributeRelidNumIndexId = common dso_local global i32 0, align 4
@AttributeRelationId = common dso_local global i32 0, align 4
@IndexRelidIndexId = common dso_local global i32 0, align 4
@IndexRelationId = common dso_local global i32 0, align 4
@OpclassOidIndexId = common dso_local global i32 0, align 4
@OperatorClassRelationId = common dso_local global i32 0, align 4
@AccessMethodProcedureIndexId = common dso_local global i32 0, align 4
@AccessMethodProcedureRelationId = common dso_local global i32 0, align 4
@RewriteRelRulenameIndexId = common dso_local global i32 0, align 4
@RewriteRelationId = common dso_local global i32 0, align 4
@TriggerRelidNameIndexId = common dso_local global i32 0, align 4
@TriggerRelationId = common dso_local global i32 0, align 4
@DatabaseNameIndexId = common dso_local global i32 0, align 4
@DatabaseRelationId = common dso_local global i32 0, align 4
@DatabaseOidIndexId = common dso_local global i32 0, align 4
@AuthIdRolnameIndexId = common dso_local global i32 0, align 4
@AuthIdRelationId = common dso_local global i32 0, align 4
@AuthIdOidIndexId = common dso_local global i32 0, align 4
@AuthMemMemRoleIndexId = common dso_local global i32 0, align 4
@AuthMemRelationId = common dso_local global i32 0, align 4
@SharedSecLabelObjectIndexId = common dso_local global i32 0, align 4
@SharedSecLabelRelationId = common dso_local global i32 0, align 4
@RelationIdCache = common dso_local global i32 0, align 4
@InvalidOid = common dso_local global i64 0, align 8
@RELOID = common dso_local global i32 0, align 4
@FATAL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [36 x i8] c"cache lookup failed for relation %u\00", align 1
@CLASS_TUPLE_SIZE = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [44 x i8] c"invalid relowner in pg_class entry for \22%s\22\00", align 1
@RELKIND_PARTITIONED_TABLE = common dso_local global i64 0, align 8
@RELKIND_RELATION = common dso_local global i64 0, align 8
@RELKIND_SEQUENCE = common dso_local global i64 0, align 8
@RELKIND_TOASTVALUE = common dso_local global i64 0, align 8
@RELKIND_MATVIEW = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @RelationCacheInitializePhase3() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_20__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_21__*, align 8
  %9 = load i32, i32* @criticalSharedRelcachesBuilt, align 4
  %10 = icmp ne i32 %9, 0
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  store i32 %12, i32* %4, align 4
  %13 = call i32 (...) @RelationMapInitializePhase3()
  %14 = load i32, i32* @CacheMemoryContext, align 4
  %15 = call i32 @MemoryContextSwitchTo(i32 %14)
  store i32 %15, i32* %3, align 4
  %16 = call i64 (...) @IsBootstrapProcessingMode()
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %0
  %19 = call i32 @load_relcache_init_file(i32 0)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %38, label %21

21:                                               ; preds = %18, %0
  store i32 1, i32* %4, align 4
  %22 = load i32, i32* @RelationRelation_Rowtype_Id, align 4
  %23 = load i32, i32* @Natts_pg_class, align 4
  %24 = load i32, i32* @Desc_pg_class, align 4
  %25 = call i32 @formrdesc(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %22, i32 0, i32 %23, i32 %24)
  %26 = load i32, i32* @AttributeRelation_Rowtype_Id, align 4
  %27 = load i32, i32* @Natts_pg_attribute, align 4
  %28 = load i32, i32* @Desc_pg_attribute, align 4
  %29 = call i32 @formrdesc(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %26, i32 0, i32 %27, i32 %28)
  %30 = load i32, i32* @ProcedureRelation_Rowtype_Id, align 4
  %31 = load i32, i32* @Natts_pg_proc, align 4
  %32 = load i32, i32* @Desc_pg_proc, align 4
  %33 = call i32 @formrdesc(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %30, i32 0, i32 %31, i32 %32)
  %34 = load i32, i32* @TypeRelation_Rowtype_Id, align 4
  %35 = load i32, i32* @Natts_pg_type, align 4
  %36 = load i32, i32* @Desc_pg_type, align 4
  %37 = call i32 @formrdesc(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 %34, i32 0, i32 %35, i32 %36)
  br label %38

38:                                               ; preds = %21, %18
  %39 = load i32, i32* %3, align 4
  %40 = call i32 @MemoryContextSwitchTo(i32 %39)
  %41 = call i64 (...) @IsBootstrapProcessingMode()
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  br label %362

44:                                               ; preds = %38
  %45 = load i32, i32* @criticalRelcachesBuilt, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %69, label %47

47:                                               ; preds = %44
  %48 = load i32, i32* @ClassOidIndexId, align 4
  %49 = load i32, i32* @RelationRelationId, align 4
  %50 = call i32 @load_critical_index(i32 %48, i32 %49)
  %51 = load i32, i32* @AttributeRelidNumIndexId, align 4
  %52 = load i32, i32* @AttributeRelationId, align 4
  %53 = call i32 @load_critical_index(i32 %51, i32 %52)
  %54 = load i32, i32* @IndexRelidIndexId, align 4
  %55 = load i32, i32* @IndexRelationId, align 4
  %56 = call i32 @load_critical_index(i32 %54, i32 %55)
  %57 = load i32, i32* @OpclassOidIndexId, align 4
  %58 = load i32, i32* @OperatorClassRelationId, align 4
  %59 = call i32 @load_critical_index(i32 %57, i32 %58)
  %60 = load i32, i32* @AccessMethodProcedureIndexId, align 4
  %61 = load i32, i32* @AccessMethodProcedureRelationId, align 4
  %62 = call i32 @load_critical_index(i32 %60, i32 %61)
  %63 = load i32, i32* @RewriteRelRulenameIndexId, align 4
  %64 = load i32, i32* @RewriteRelationId, align 4
  %65 = call i32 @load_critical_index(i32 %63, i32 %64)
  %66 = load i32, i32* @TriggerRelidNameIndexId, align 4
  %67 = load i32, i32* @TriggerRelationId, align 4
  %68 = call i32 @load_critical_index(i32 %66, i32 %67)
  store i32 1, i32* @criticalRelcachesBuilt, align 4
  br label %69

69:                                               ; preds = %47, %44
  %70 = load i32, i32* @criticalSharedRelcachesBuilt, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %91, label %72

72:                                               ; preds = %69
  %73 = load i32, i32* @DatabaseNameIndexId, align 4
  %74 = load i32, i32* @DatabaseRelationId, align 4
  %75 = call i32 @load_critical_index(i32 %73, i32 %74)
  %76 = load i32, i32* @DatabaseOidIndexId, align 4
  %77 = load i32, i32* @DatabaseRelationId, align 4
  %78 = call i32 @load_critical_index(i32 %76, i32 %77)
  %79 = load i32, i32* @AuthIdRolnameIndexId, align 4
  %80 = load i32, i32* @AuthIdRelationId, align 4
  %81 = call i32 @load_critical_index(i32 %79, i32 %80)
  %82 = load i32, i32* @AuthIdOidIndexId, align 4
  %83 = load i32, i32* @AuthIdRelationId, align 4
  %84 = call i32 @load_critical_index(i32 %82, i32 %83)
  %85 = load i32, i32* @AuthMemMemRoleIndexId, align 4
  %86 = load i32, i32* @AuthMemRelationId, align 4
  %87 = call i32 @load_critical_index(i32 %85, i32 %86)
  %88 = load i32, i32* @SharedSecLabelObjectIndexId, align 4
  %89 = load i32, i32* @SharedSecLabelRelationId, align 4
  %90 = call i32 @load_critical_index(i32 %88, i32 %89)
  store i32 1, i32* @criticalSharedRelcachesBuilt, align 4
  br label %91

91:                                               ; preds = %72, %69
  %92 = load i32, i32* @RelationIdCache, align 4
  %93 = call i32 @hash_seq_init(i32* %1, i32 %92)
  br label %94

94:                                               ; preds = %354, %91
  %95 = call i64 @hash_seq_search(i32* %1)
  %96 = inttoptr i64 %95 to %struct.TYPE_20__*
  store %struct.TYPE_20__* %96, %struct.TYPE_20__** %2, align 8
  %97 = icmp ne %struct.TYPE_20__* %96, null
  br i1 %97, label %98, label %355

98:                                               ; preds = %94
  %99 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %100 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %99, i32 0, i32 0
  %101 = load %struct.TYPE_19__*, %struct.TYPE_19__** %100, align 8
  store %struct.TYPE_19__* %101, %struct.TYPE_19__** %5, align 8
  store i32 0, i32* %6, align 4
  %102 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %103 = call i32 @RelationIncrementReferenceCount(%struct.TYPE_19__* %102)
  %104 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %104, i32 0, i32 1
  %106 = load %struct.TYPE_18__*, %struct.TYPE_18__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @InvalidOid, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %111, label %184

111:                                              ; preds = %98
  %112 = load i32, i32* @RELOID, align 4
  %113 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %114 = call i32 @RelationGetRelid(%struct.TYPE_19__* %113)
  %115 = call i32 @ObjectIdGetDatum(i32 %114)
  %116 = call i32 @SearchSysCache1(i32 %112, i32 %115)
  store i32 %116, i32* %7, align 4
  %117 = load i32, i32* %7, align 4
  %118 = call i32 @HeapTupleIsValid(i32 %117)
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %125, label %120

120:                                              ; preds = %111
  %121 = load i32, i32* @FATAL, align 4
  %122 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %123 = call i32 @RelationGetRelid(%struct.TYPE_19__* %122)
  %124 = call i32 @elog(i32 %121, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i32 %123)
  br label %125

125:                                              ; preds = %120, %111
  %126 = load i32, i32* %7, align 4
  %127 = call i64 @GETSTRUCT(i32 %126)
  %128 = inttoptr i64 %127 to %struct.TYPE_21__*
  store %struct.TYPE_21__* %128, %struct.TYPE_21__** %8, align 8
  %129 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %130 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %129, i32 0, i32 1
  %131 = load %struct.TYPE_18__*, %struct.TYPE_18__** %130, align 8
  %132 = bitcast %struct.TYPE_18__* %131 to i8*
  %133 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %134 = bitcast %struct.TYPE_21__* %133 to i8*
  %135 = load i32, i32* @CLASS_TUPLE_SIZE, align 4
  %136 = call i32 @memcpy(i8* %132, i8* %134, i32 %135)
  %137 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %138 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %137, i32 0, i32 8
  %139 = load i64, i64* %138, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %146

141:                                              ; preds = %125
  %142 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %143 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %142, i32 0, i32 8
  %144 = load i64, i64* %143, align 8
  %145 = call i32 @pfree(i64 %144)
  br label %146

146:                                              ; preds = %141, %125
  %147 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %148 = load i32, i32* %7, align 4
  %149 = call i32 @RelationParseRelOptions(%struct.TYPE_19__* %147, i32 %148)
  %150 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %151 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %150, i32 0, i32 7
  %152 = load %struct.TYPE_17__*, %struct.TYPE_17__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %156 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = icmp eq i64 %154, %157
  %159 = zext i1 %158 to i32
  %160 = call i32 @Assert(i32 %159)
  %161 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %162 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %161, i32 0, i32 7
  %163 = load %struct.TYPE_17__*, %struct.TYPE_17__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 8
  %166 = icmp eq i32 %165, -1
  %167 = zext i1 %166 to i32
  %168 = call i32 @Assert(i32 %167)
  %169 = load i32, i32* %7, align 4
  %170 = call i32 @ReleaseSysCache(i32 %169)
  %171 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %172 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %171, i32 0, i32 1
  %173 = load %struct.TYPE_18__*, %struct.TYPE_18__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %173, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  %176 = load i64, i64* @InvalidOid, align 8
  %177 = icmp eq i64 %175, %176
  br i1 %177, label %178, label %183

178:                                              ; preds = %146
  %179 = load i32, i32* @ERROR, align 4
  %180 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %181 = call i32 @RelationGetRelationName(%struct.TYPE_19__* %180)
  %182 = call i32 @elog(i32 %179, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0), i32 %181)
  br label %183

183:                                              ; preds = %178, %146
  store i32 1, i32* %6, align 4
  br label %184

184:                                              ; preds = %183, %98
  %185 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %186 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %185, i32 0, i32 1
  %187 = load %struct.TYPE_18__*, %struct.TYPE_18__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 8
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %209

191:                                              ; preds = %184
  %192 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %193 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %192, i32 0, i32 6
  %194 = load i32*, i32** %193, align 8
  %195 = icmp eq i32* %194, null
  br i1 %195, label %196, label %209

196:                                              ; preds = %191
  %197 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %198 = call i32 @RelationBuildRuleLock(%struct.TYPE_19__* %197)
  %199 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %200 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %199, i32 0, i32 6
  %201 = load i32*, i32** %200, align 8
  %202 = icmp eq i32* %201, null
  br i1 %202, label %203, label %208

203:                                              ; preds = %196
  %204 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %205 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %204, i32 0, i32 1
  %206 = load %struct.TYPE_18__*, %struct.TYPE_18__** %205, align 8
  %207 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %206, i32 0, i32 1
  store i32 0, i32* %207, align 8
  br label %208

208:                                              ; preds = %203, %196
  store i32 1, i32* %6, align 4
  br label %209

209:                                              ; preds = %208, %191, %184
  %210 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %211 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %210, i32 0, i32 1
  %212 = load %struct.TYPE_18__*, %struct.TYPE_18__** %211, align 8
  %213 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %212, i32 0, i32 2
  %214 = load i32, i32* %213, align 4
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %234

216:                                              ; preds = %209
  %217 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %218 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %217, i32 0, i32 5
  %219 = load i32*, i32** %218, align 8
  %220 = icmp eq i32* %219, null
  br i1 %220, label %221, label %234

221:                                              ; preds = %216
  %222 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %223 = call i32 @RelationBuildTriggers(%struct.TYPE_19__* %222)
  %224 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %225 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %224, i32 0, i32 5
  %226 = load i32*, i32** %225, align 8
  %227 = icmp eq i32* %226, null
  br i1 %227, label %228, label %233

228:                                              ; preds = %221
  %229 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %230 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %229, i32 0, i32 1
  %231 = load %struct.TYPE_18__*, %struct.TYPE_18__** %230, align 8
  %232 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %231, i32 0, i32 2
  store i32 0, i32* %232, align 4
  br label %233

233:                                              ; preds = %228, %221
  store i32 1, i32* %6, align 4
  br label %234

234:                                              ; preds = %233, %216, %209
  %235 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %236 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %235, i32 0, i32 1
  %237 = load %struct.TYPE_18__*, %struct.TYPE_18__** %236, align 8
  %238 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %237, i32 0, i32 4
  %239 = load i64, i64* %238, align 8
  %240 = icmp ne i64 %239, 0
  br i1 %240, label %241, label %255

241:                                              ; preds = %234
  %242 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %243 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %242, i32 0, i32 4
  %244 = load i32*, i32** %243, align 8
  %245 = icmp eq i32* %244, null
  br i1 %245, label %246, label %255

246:                                              ; preds = %241
  %247 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %248 = call i32 @RelationBuildRowSecurity(%struct.TYPE_19__* %247)
  %249 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %250 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %249, i32 0, i32 4
  %251 = load i32*, i32** %250, align 8
  %252 = icmp ne i32* %251, null
  %253 = zext i1 %252 to i32
  %254 = call i32 @Assert(i32 %253)
  store i32 1, i32* %6, align 4
  br label %255

255:                                              ; preds = %246, %241, %234
  %256 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %257 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %256, i32 0, i32 1
  %258 = load %struct.TYPE_18__*, %struct.TYPE_18__** %257, align 8
  %259 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %258, i32 0, i32 3
  %260 = load i64, i64* %259, align 8
  %261 = load i64, i64* @RELKIND_PARTITIONED_TABLE, align 8
  %262 = icmp eq i64 %260, %261
  br i1 %262, label %263, label %277

263:                                              ; preds = %255
  %264 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %265 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %264, i32 0, i32 3
  %266 = load i32*, i32** %265, align 8
  %267 = icmp eq i32* %266, null
  br i1 %267, label %268, label %277

268:                                              ; preds = %263
  %269 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %270 = call i32 @RelationBuildPartitionKey(%struct.TYPE_19__* %269)
  %271 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %272 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %271, i32 0, i32 3
  %273 = load i32*, i32** %272, align 8
  %274 = icmp ne i32* %273, null
  %275 = zext i1 %274 to i32
  %276 = call i32 @Assert(i32 %275)
  store i32 1, i32* %6, align 4
  br label %277

277:                                              ; preds = %268, %263, %255
  %278 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %279 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %278, i32 0, i32 1
  %280 = load %struct.TYPE_18__*, %struct.TYPE_18__** %279, align 8
  %281 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %280, i32 0, i32 3
  %282 = load i64, i64* %281, align 8
  %283 = load i64, i64* @RELKIND_PARTITIONED_TABLE, align 8
  %284 = icmp eq i64 %282, %283
  br i1 %284, label %285, label %299

285:                                              ; preds = %277
  %286 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %287 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %286, i32 0, i32 2
  %288 = load i32*, i32** %287, align 8
  %289 = icmp eq i32* %288, null
  br i1 %289, label %290, label %299

290:                                              ; preds = %285
  %291 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %292 = call i32 @RelationBuildPartitionDesc(%struct.TYPE_19__* %291)
  %293 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %294 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %293, i32 0, i32 2
  %295 = load i32*, i32** %294, align 8
  %296 = icmp ne i32* %295, null
  %297 = zext i1 %296 to i32
  %298 = call i32 @Assert(i32 %297)
  store i32 1, i32* %6, align 4
  br label %299

299:                                              ; preds = %290, %285, %277
  %300 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %301 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %300, i32 0, i32 0
  %302 = load i32*, i32** %301, align 8
  %303 = icmp eq i32* %302, null
  br i1 %303, label %304, label %345

304:                                              ; preds = %299
  %305 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %306 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %305, i32 0, i32 1
  %307 = load %struct.TYPE_18__*, %struct.TYPE_18__** %306, align 8
  %308 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %307, i32 0, i32 3
  %309 = load i64, i64* %308, align 8
  %310 = load i64, i64* @RELKIND_RELATION, align 8
  %311 = icmp eq i64 %309, %310
  br i1 %311, label %336, label %312

312:                                              ; preds = %304
  %313 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %314 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %313, i32 0, i32 1
  %315 = load %struct.TYPE_18__*, %struct.TYPE_18__** %314, align 8
  %316 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %315, i32 0, i32 3
  %317 = load i64, i64* %316, align 8
  %318 = load i64, i64* @RELKIND_SEQUENCE, align 8
  %319 = icmp eq i64 %317, %318
  br i1 %319, label %336, label %320

320:                                              ; preds = %312
  %321 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %322 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %321, i32 0, i32 1
  %323 = load %struct.TYPE_18__*, %struct.TYPE_18__** %322, align 8
  %324 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %323, i32 0, i32 3
  %325 = load i64, i64* %324, align 8
  %326 = load i64, i64* @RELKIND_TOASTVALUE, align 8
  %327 = icmp eq i64 %325, %326
  br i1 %327, label %336, label %328

328:                                              ; preds = %320
  %329 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %330 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %329, i32 0, i32 1
  %331 = load %struct.TYPE_18__*, %struct.TYPE_18__** %330, align 8
  %332 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %331, i32 0, i32 3
  %333 = load i64, i64* %332, align 8
  %334 = load i64, i64* @RELKIND_MATVIEW, align 8
  %335 = icmp eq i64 %333, %334
  br i1 %335, label %336, label %345

336:                                              ; preds = %328, %320, %312, %304
  %337 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %338 = call i32 @RelationInitTableAccessMethod(%struct.TYPE_19__* %337)
  %339 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %340 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %339, i32 0, i32 0
  %341 = load i32*, i32** %340, align 8
  %342 = icmp ne i32* %341, null
  %343 = zext i1 %342 to i32
  %344 = call i32 @Assert(i32 %343)
  store i32 1, i32* %6, align 4
  br label %345

345:                                              ; preds = %336, %328, %299
  %346 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %347 = call i32 @RelationDecrementReferenceCount(%struct.TYPE_19__* %346)
  %348 = load i32, i32* %6, align 4
  %349 = icmp ne i32 %348, 0
  br i1 %349, label %350, label %354

350:                                              ; preds = %345
  %351 = call i32 @hash_seq_term(i32* %1)
  %352 = load i32, i32* @RelationIdCache, align 4
  %353 = call i32 @hash_seq_init(i32* %1, i32 %352)
  br label %354

354:                                              ; preds = %350, %345
  br label %94

355:                                              ; preds = %94
  %356 = load i32, i32* %4, align 4
  %357 = icmp ne i32 %356, 0
  br i1 %357, label %358, label %362

358:                                              ; preds = %355
  %359 = call i32 (...) @InitCatalogCachePhase2()
  %360 = call i32 @write_relcache_init_file(i32 1)
  %361 = call i32 @write_relcache_init_file(i32 0)
  br label %362

362:                                              ; preds = %43, %358, %355
  ret void
}

declare dso_local i32 @RelationMapInitializePhase3(...) #1

declare dso_local i32 @MemoryContextSwitchTo(i32) #1

declare dso_local i64 @IsBootstrapProcessingMode(...) #1

declare dso_local i32 @load_relcache_init_file(i32) #1

declare dso_local i32 @formrdesc(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @load_critical_index(i32, i32) #1

declare dso_local i32 @hash_seq_init(i32*, i32) #1

declare dso_local i64 @hash_seq_search(i32*) #1

declare dso_local i32 @RelationIncrementReferenceCount(%struct.TYPE_19__*) #1

declare dso_local i32 @SearchSysCache1(i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i32) #1

declare dso_local i32 @RelationGetRelid(%struct.TYPE_19__*) #1

declare dso_local i32 @HeapTupleIsValid(i32) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

declare dso_local i64 @GETSTRUCT(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @pfree(i64) #1

declare dso_local i32 @RelationParseRelOptions(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @ReleaseSysCache(i32) #1

declare dso_local i32 @RelationGetRelationName(%struct.TYPE_19__*) #1

declare dso_local i32 @RelationBuildRuleLock(%struct.TYPE_19__*) #1

declare dso_local i32 @RelationBuildTriggers(%struct.TYPE_19__*) #1

declare dso_local i32 @RelationBuildRowSecurity(%struct.TYPE_19__*) #1

declare dso_local i32 @RelationBuildPartitionKey(%struct.TYPE_19__*) #1

declare dso_local i32 @RelationBuildPartitionDesc(%struct.TYPE_19__*) #1

declare dso_local i32 @RelationInitTableAccessMethod(%struct.TYPE_19__*) #1

declare dso_local i32 @RelationDecrementReferenceCount(%struct.TYPE_19__*) #1

declare dso_local i32 @hash_seq_term(i32*) #1

declare dso_local i32 @InitCatalogCachePhase2(...) #1

declare dso_local i32 @write_relcache_init_file(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
