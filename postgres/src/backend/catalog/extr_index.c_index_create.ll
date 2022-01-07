; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/catalog/extr_index.c_index_create.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/catalog/extr_index.c_index_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_43__ = type { %struct.TYPE_41__*, i32*, %struct.TYPE_42__* }
%struct.TYPE_41__ = type { i32 }
%struct.TYPE_42__ = type { i32, i8, i64, i64, i32 }
%struct.TYPE_45__ = type { i32, i32, i64*, i64, i64, i64, i32* }
%struct.TYPE_44__ = type { i64, i64, i8* }
%struct.TYPE_46__ = type { i32 }

@INDEX_CREATE_IS_PRIMARY = common dso_local global i32 0, align 4
@INDEX_CREATE_INVALID = common dso_local global i32 0, align 4
@INDEX_CREATE_CONCURRENT = common dso_local global i32 0, align 4
@INDEX_CREATE_PARTITIONED = common dso_local global i32 0, align 4
@INDEX_CREATE_ADD_CONSTRAINT = common dso_local global i32 0, align 4
@INDEX_CREATE_SKIP_BUILD = common dso_local global i32 0, align 4
@RELKIND_PARTITIONED_INDEX = common dso_local global i8 0, align 1
@RELKIND_INDEX = common dso_local global i8 0, align 1
@RelationRelationId = common dso_local global i8* null, align 8
@RowExclusiveLock = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"must index at least one column\00", align 1
@ERRCODE_FEATURE_NOT_SUPPORTED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [64 x i8] c"user-defined indexes on system catalog tables are not supported\00", align 1
@TEXT_BTREE_PATTERN_OPS_OID = common dso_local global i64 0, align 8
@VARCHAR_BTREE_PATTERN_OPS_OID = common dso_local global i64 0, align 8
@BPCHAR_BTREE_PATTERN_OPS_OID = common dso_local global i64 0, align 8
@CLAOID = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"cache lookup failed for operator class %u\00", align 1
@.str.3 = private unnamed_addr constant [70 x i8] c"nondeterministic collations are not supported for operator class \22%s\22\00", align 1
@.str.4 = private unnamed_addr constant [68 x i8] c"concurrent index creation on system catalog tables is not supported\00", align 1
@.str.5 = private unnamed_addr constant [69 x i8] c"concurrent index creation for exclusion constraints is not supported\00", align 1
@ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [46 x i8] c"shared indexes cannot be created after initdb\00", align 1
@GLOBALTABLESPACE_OID = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [56 x i8] c"shared relations must be placed in pg_global tablespace\00", align 1
@INDEX_CREATE_IF_NOT_EXISTS = common dso_local global i32 0, align 4
@NOTICE = common dso_local global i32 0, align 4
@ERRCODE_DUPLICATE_TABLE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [39 x i8] c"relation \22%s\22 already exists, skipping\00", align 1
@InvalidOid = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [29 x i8] c"relation \22%s\22 already exists\00", align 1
@CONSTRAINT_RELATION = common dso_local global i32 0, align 4
@ERRCODE_DUPLICATE_OBJECT = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [49 x i8] c"constraint \22%s\22 for relation \22%s\22 already exists\00", align 1
@IsBinaryUpgrade = common dso_local global i64 0, align 8
@binary_upgrade_next_index_pg_class_oid = common dso_local global i64 0, align 8
@ERRCODE_INVALID_PARAMETER_VALUE = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [61 x i8] c"pg_class index OID value not set when in binary upgrade mode\00", align 1
@InvalidTransactionId = common dso_local global i64 0, align 8
@InvalidMultiXactId = common dso_local global i64 0, align 8
@AccessExclusiveLock = common dso_local global i32 0, align 4
@INDEX_CONSTR_CREATE_DEFERRABLE = common dso_local global i32 0, align 4
@CONSTRAINT_PRIMARY = common dso_local global i8 0, align 1
@CONSTRAINT_UNIQUE = common dso_local global i8 0, align 1
@CONSTRAINT_EXCLUSION = common dso_local global i8 0, align 1
@.str.12 = private unnamed_addr constant [46 x i8] c"constraint must be PRIMARY, UNIQUE or EXCLUDE\00", align 1
@DEPENDENCY_AUTO = common dso_local global i32 0, align 4
@DEPENDENCY_PARTITION_PRI = common dso_local global i32 0, align 4
@DEPENDENCY_PARTITION_SEC = common dso_local global i32 0, align 4
@DEFAULT_COLLATION_OID = common dso_local global i64 0, align 8
@CollationRelationId = common dso_local global i8* null, align 8
@DEPENDENCY_NORMAL = common dso_local global i32 0, align 4
@OperatorClassRelationId = common dso_local global i8* null, align 8
@NoLock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @index_create(%struct.TYPE_43__* %0, i8* %1, i64 %2, i64 %3, i64 %4, i64 %5, %struct.TYPE_45__* %6, i32* %7, i64 %8, i64 %9, i64* %10, i64* %11, i32* %12, i32 %13, i32 %14, i32 %15, i32 %16, i32 %17, i64* %18) #0 {
  %20 = alloca i64, align 8
  %21 = alloca %struct.TYPE_43__*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca %struct.TYPE_45__*, align 8
  %28 = alloca i32*, align 8
  %29 = alloca i64, align 8
  %30 = alloca i64, align 8
  %31 = alloca i64*, align 8
  %32 = alloca i64*, align 8
  %33 = alloca i32*, align 8
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i64*, align 8
  %40 = alloca i64, align 8
  %41 = alloca %struct.TYPE_43__*, align 8
  %42 = alloca %struct.TYPE_43__*, align 8
  %43 = alloca i32, align 4
  %44 = alloca i32, align 4
  %45 = alloca i32, align 4
  %46 = alloca i32, align 4
  %47 = alloca i64, align 8
  %48 = alloca i32, align 4
  %49 = alloca i8, align 1
  %50 = alloca i32, align 4
  %51 = alloca i32, align 4
  %52 = alloca i32, align 4
  %53 = alloca i32, align 4
  %54 = alloca i8, align 1
  %55 = alloca i64, align 8
  %56 = alloca i64, align 8
  %57 = alloca i64, align 8
  %58 = alloca i64, align 8
  %59 = alloca i32, align 4
  %60 = alloca %struct.TYPE_44__, align 8
  %61 = alloca %struct.TYPE_44__, align 8
  %62 = alloca i8, align 1
  %63 = alloca %struct.TYPE_44__, align 8
  %64 = alloca %struct.TYPE_44__, align 8
  %65 = alloca i32, align 4
  store %struct.TYPE_43__* %0, %struct.TYPE_43__** %21, align 8
  store i8* %1, i8** %22, align 8
  store i64 %2, i64* %23, align 8
  store i64 %3, i64* %24, align 8
  store i64 %4, i64* %25, align 8
  store i64 %5, i64* %26, align 8
  store %struct.TYPE_45__* %6, %struct.TYPE_45__** %27, align 8
  store i32* %7, i32** %28, align 8
  store i64 %8, i64* %29, align 8
  store i64 %9, i64* %30, align 8
  store i64* %10, i64** %31, align 8
  store i64* %11, i64** %32, align 8
  store i32* %12, i32** %33, align 8
  store i32 %13, i32* %34, align 4
  store i32 %14, i32* %35, align 4
  store i32 %15, i32* %36, align 4
  store i32 %16, i32* %37, align 4
  store i32 %17, i32* %38, align 4
  store i64* %18, i64** %39, align 8
  %66 = load %struct.TYPE_43__*, %struct.TYPE_43__** %21, align 8
  %67 = call i64 @RelationGetRelid(%struct.TYPE_43__* %66)
  store i64 %67, i64* %40, align 8
  %68 = load i32, i32* %35, align 4
  %69 = load i32, i32* @INDEX_CREATE_IS_PRIMARY, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  %72 = zext i1 %71 to i32
  store i32 %72, i32* %50, align 4
  %73 = load i32, i32* %35, align 4
  %74 = load i32, i32* @INDEX_CREATE_INVALID, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  %77 = zext i1 %76 to i32
  store i32 %77, i32* %51, align 4
  %78 = load i32, i32* %35, align 4
  %79 = load i32, i32* @INDEX_CREATE_CONCURRENT, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  %82 = zext i1 %81 to i32
  store i32 %82, i32* %52, align 4
  %83 = load i32, i32* %35, align 4
  %84 = load i32, i32* @INDEX_CREATE_PARTITIONED, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  %87 = zext i1 %86 to i32
  store i32 %87, i32* %53, align 4
  %88 = load i32, i32* %36, align 4
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %95, label %90

90:                                               ; preds = %19
  %91 = load i32, i32* %35, align 4
  %92 = load i32, i32* @INDEX_CREATE_ADD_CONSTRAINT, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br label %95

95:                                               ; preds = %90, %19
  %96 = phi i1 [ true, %19 ], [ %94, %90 ]
  %97 = zext i1 %96 to i32
  %98 = call i32 @Assert(i32 %97)
  %99 = load i32, i32* %53, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %106

101:                                              ; preds = %95
  %102 = load i32, i32* %35, align 4
  %103 = load i32, i32* @INDEX_CREATE_SKIP_BUILD, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br label %106

106:                                              ; preds = %101, %95
  %107 = phi i1 [ true, %95 ], [ %105, %101 ]
  %108 = zext i1 %107 to i32
  %109 = call i32 @Assert(i32 %108)
  %110 = load i32, i32* %53, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %106
  %113 = load i8, i8* @RELKIND_PARTITIONED_INDEX, align 1
  %114 = sext i8 %113 to i32
  br label %118

115:                                              ; preds = %106
  %116 = load i8, i8* @RELKIND_INDEX, align 1
  %117 = sext i8 %116 to i32
  br label %118

118:                                              ; preds = %115, %112
  %119 = phi i32 [ %114, %112 ], [ %117, %115 ]
  %120 = trunc i32 %119 to i8
  store i8 %120, i8* %54, align 1
  %121 = load %struct.TYPE_45__*, %struct.TYPE_45__** %27, align 8
  %122 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %121, i32 0, i32 6
  %123 = load i32*, i32** %122, align 8
  %124 = icmp ne i32* %123, null
  %125 = zext i1 %124 to i32
  store i32 %125, i32* %46, align 4
  %126 = load i8*, i8** @RelationRelationId, align 8
  %127 = load i32, i32* @RowExclusiveLock, align 4
  %128 = call %struct.TYPE_43__* @table_open(i8* %126, i32 %127)
  store %struct.TYPE_43__* %128, %struct.TYPE_43__** %41, align 8
  %129 = load %struct.TYPE_43__*, %struct.TYPE_43__** %21, align 8
  %130 = call i64 @RelationGetNamespace(%struct.TYPE_43__* %129)
  store i64 %130, i64* %47, align 8
  %131 = load %struct.TYPE_43__*, %struct.TYPE_43__** %21, align 8
  %132 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %131, i32 0, i32 2
  %133 = load %struct.TYPE_42__*, %struct.TYPE_42__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  store i32 %135, i32* %44, align 4
  %136 = load %struct.TYPE_43__*, %struct.TYPE_43__** %21, align 8
  %137 = call i32 @RelationIsMapped(%struct.TYPE_43__* %136)
  store i32 %137, i32* %45, align 4
  %138 = load %struct.TYPE_43__*, %struct.TYPE_43__** %21, align 8
  %139 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %138, i32 0, i32 2
  %140 = load %struct.TYPE_42__*, %struct.TYPE_42__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %140, i32 0, i32 1
  %142 = load i8, i8* %141, align 4
  store i8 %142, i8* %49, align 1
  %143 = load %struct.TYPE_45__*, %struct.TYPE_45__** %27, align 8
  %144 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = icmp slt i32 %145, 1
  br i1 %146, label %147, label %150

147:                                              ; preds = %118
  %148 = load i32, i32* @ERROR, align 4
  %149 = call i32 (i32, i8*, ...) @elog(i32 %148, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %150

150:                                              ; preds = %147, %118
  %151 = load i32, i32* %37, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %166, label %153

153:                                              ; preds = %150
  %154 = load %struct.TYPE_43__*, %struct.TYPE_43__** %21, align 8
  %155 = call i64 @IsSystemRelation(%struct.TYPE_43__* %154)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %166

157:                                              ; preds = %153
  %158 = call i64 (...) @IsNormalProcessingMode()
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %166

160:                                              ; preds = %157
  %161 = load i32, i32* @ERROR, align 4
  %162 = load i32, i32* @ERRCODE_FEATURE_NOT_SUPPORTED, align 4
  %163 = call i32 @errcode(i32 %162)
  %164 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.1, i64 0, i64 0))
  %165 = call i32 @ereport(i32 %161, i32 %164)
  br label %166

166:                                              ; preds = %160, %157, %153, %150
  store i32 0, i32* %48, align 4
  br label %167

167:                                              ; preds = %230, %166
  %168 = load i32, i32* %48, align 4
  %169 = load %struct.TYPE_45__*, %struct.TYPE_45__** %27, align 8
  %170 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = icmp slt i32 %168, %171
  br i1 %172, label %173, label %233

173:                                              ; preds = %167
  %174 = load i64*, i64** %31, align 8
  %175 = load i32, i32* %48, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i64, i64* %174, i64 %176
  %178 = load i64, i64* %177, align 8
  store i64 %178, i64* %57, align 8
  %179 = load i64*, i64** %32, align 8
  %180 = load i32, i32* %48, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i64, i64* %179, i64 %181
  %183 = load i64, i64* %182, align 8
  store i64 %183, i64* %58, align 8
  %184 = load i64, i64* %57, align 8
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %229

186:                                              ; preds = %173
  %187 = load i64, i64* %58, align 8
  %188 = load i64, i64* @TEXT_BTREE_PATTERN_OPS_OID, align 8
  %189 = icmp eq i64 %187, %188
  br i1 %189, label %198, label %190

190:                                              ; preds = %186
  %191 = load i64, i64* %58, align 8
  %192 = load i64, i64* @VARCHAR_BTREE_PATTERN_OPS_OID, align 8
  %193 = icmp eq i64 %191, %192
  br i1 %193, label %198, label %194

194:                                              ; preds = %190
  %195 = load i64, i64* %58, align 8
  %196 = load i64, i64* @BPCHAR_BTREE_PATTERN_OPS_OID, align 8
  %197 = icmp eq i64 %195, %196
  br i1 %197, label %198, label %228

198:                                              ; preds = %194, %190, %186
  %199 = load i64, i64* %57, align 8
  %200 = call i32 @get_collation_isdeterministic(i64 %199)
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %228, label %202

202:                                              ; preds = %198
  %203 = load i32, i32* @CLAOID, align 4
  %204 = load i64, i64* %58, align 8
  %205 = call i32 @ObjectIdGetDatum(i64 %204)
  %206 = call i32 @SearchSysCache1(i32 %203, i32 %205)
  store i32 %206, i32* %59, align 4
  %207 = load i32, i32* %59, align 4
  %208 = call i32 @HeapTupleIsValid(i32 %207)
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %214, label %210

210:                                              ; preds = %202
  %211 = load i32, i32* @ERROR, align 4
  %212 = load i64, i64* %58, align 8
  %213 = call i32 (i32, i8*, ...) @elog(i32 %211, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i64 %212)
  br label %214

214:                                              ; preds = %210, %202
  %215 = load i32, i32* @ERROR, align 4
  %216 = load i32, i32* @ERRCODE_FEATURE_NOT_SUPPORTED, align 4
  %217 = call i32 @errcode(i32 %216)
  %218 = load i32, i32* %59, align 4
  %219 = call i64 @GETSTRUCT(i32 %218)
  %220 = inttoptr i64 %219 to %struct.TYPE_46__*
  %221 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 4
  %223 = call i32 @NameStr(i32 %222)
  %224 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.3, i64 0, i64 0), i32 %223)
  %225 = call i32 @ereport(i32 %215, i32 %224)
  %226 = load i32, i32* %59, align 4
  %227 = call i32 @ReleaseSysCache(i32 %226)
  br label %228

228:                                              ; preds = %214, %198, %194
  br label %229

229:                                              ; preds = %228, %173
  br label %230

230:                                              ; preds = %229
  %231 = load i32, i32* %48, align 4
  %232 = add nsw i32 %231, 1
  store i32 %232, i32* %48, align 4
  br label %167

233:                                              ; preds = %167
  %234 = load i32, i32* %52, align 4
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %236, label %246

236:                                              ; preds = %233
  %237 = load %struct.TYPE_43__*, %struct.TYPE_43__** %21, align 8
  %238 = call i64 @IsCatalogRelation(%struct.TYPE_43__* %237)
  %239 = icmp ne i64 %238, 0
  br i1 %239, label %240, label %246

240:                                              ; preds = %236
  %241 = load i32, i32* @ERROR, align 4
  %242 = load i32, i32* @ERRCODE_FEATURE_NOT_SUPPORTED, align 4
  %243 = call i32 @errcode(i32 %242)
  %244 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.4, i64 0, i64 0))
  %245 = call i32 @ereport(i32 %241, i32 %244)
  br label %246

246:                                              ; preds = %240, %236, %233
  %247 = load i32, i32* %52, align 4
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %249, label %258

249:                                              ; preds = %246
  %250 = load i32, i32* %46, align 4
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %252, label %258

252:                                              ; preds = %249
  %253 = load i32, i32* @ERROR, align 4
  %254 = load i32, i32* @ERRCODE_FEATURE_NOT_SUPPORTED, align 4
  %255 = call i32 @errcode(i32 %254)
  %256 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.5, i64 0, i64 0))
  %257 = call i32 @ereport(i32 %253, i32 %256)
  br label %258

258:                                              ; preds = %252, %249, %246
  %259 = load i32, i32* %44, align 4
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %261, label %270

261:                                              ; preds = %258
  %262 = call i64 (...) @IsBootstrapProcessingMode()
  %263 = icmp ne i64 %262, 0
  br i1 %263, label %270, label %264

264:                                              ; preds = %261
  %265 = load i32, i32* @ERROR, align 4
  %266 = load i32, i32* @ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE, align 4
  %267 = call i32 @errcode(i32 %266)
  %268 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.6, i64 0, i64 0))
  %269 = call i32 @ereport(i32 %265, i32 %268)
  br label %270

270:                                              ; preds = %264, %261, %258
  %271 = load i32, i32* %44, align 4
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %273, label %280

273:                                              ; preds = %270
  %274 = load i64, i64* %30, align 8
  %275 = load i64, i64* @GLOBALTABLESPACE_OID, align 8
  %276 = icmp ne i64 %274, %275
  br i1 %276, label %277, label %280

277:                                              ; preds = %273
  %278 = load i32, i32* @ERROR, align 4
  %279 = call i32 (i32, i8*, ...) @elog(i32 %278, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.7, i64 0, i64 0))
  br label %280

280:                                              ; preds = %277, %273, %270
  %281 = load i8*, i8** %22, align 8
  %282 = load i64, i64* %47, align 8
  %283 = call i64 @get_relname_relid(i8* %281, i64 %282)
  %284 = icmp ne i64 %283, 0
  br i1 %284, label %285, label %308

285:                                              ; preds = %280
  %286 = load i32, i32* %35, align 4
  %287 = load i32, i32* @INDEX_CREATE_IF_NOT_EXISTS, align 4
  %288 = and i32 %286, %287
  %289 = icmp ne i32 %288, 0
  br i1 %289, label %290, label %301

290:                                              ; preds = %285
  %291 = load i32, i32* @NOTICE, align 4
  %292 = load i32, i32* @ERRCODE_DUPLICATE_TABLE, align 4
  %293 = call i32 @errcode(i32 %292)
  %294 = load i8*, i8** %22, align 8
  %295 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.8, i64 0, i64 0), i8* %294)
  %296 = call i32 @ereport(i32 %291, i32 %295)
  %297 = load %struct.TYPE_43__*, %struct.TYPE_43__** %41, align 8
  %298 = load i32, i32* @RowExclusiveLock, align 4
  %299 = call i32 @table_close(%struct.TYPE_43__* %297, i32 %298)
  %300 = load i64, i64* @InvalidOid, align 8
  store i64 %300, i64* %20, align 8
  br label %743

301:                                              ; preds = %285
  %302 = load i32, i32* @ERROR, align 4
  %303 = load i32, i32* @ERRCODE_DUPLICATE_TABLE, align 4
  %304 = call i32 @errcode(i32 %303)
  %305 = load i8*, i8** %22, align 8
  %306 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9, i64 0, i64 0), i8* %305)
  %307 = call i32 @ereport(i32 %302, i32 %306)
  br label %308

308:                                              ; preds = %301, %280
  %309 = load i32, i32* %35, align 4
  %310 = load i32, i32* @INDEX_CREATE_ADD_CONSTRAINT, align 4
  %311 = and i32 %309, %310
  %312 = icmp ne i32 %311, 0
  br i1 %312, label %313, label %328

313:                                              ; preds = %308
  %314 = load i32, i32* @CONSTRAINT_RELATION, align 4
  %315 = load i64, i64* %40, align 8
  %316 = load i8*, i8** %22, align 8
  %317 = call i64 @ConstraintNameIsUsed(i32 %314, i64 %315, i8* %316)
  %318 = icmp ne i64 %317, 0
  br i1 %318, label %319, label %328

319:                                              ; preds = %313
  %320 = load i32, i32* @ERROR, align 4
  %321 = load i32, i32* @ERRCODE_DUPLICATE_OBJECT, align 4
  %322 = call i32 @errcode(i32 %321)
  %323 = load i8*, i8** %22, align 8
  %324 = load %struct.TYPE_43__*, %struct.TYPE_43__** %21, align 8
  %325 = call i32 @RelationGetRelationName(%struct.TYPE_43__* %324)
  %326 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.10, i64 0, i64 0), i8* %323, i32 %325)
  %327 = call i32 @ereport(i32 %320, i32 %326)
  br label %328

328:                                              ; preds = %319, %313, %308
  %329 = load %struct.TYPE_43__*, %struct.TYPE_43__** %21, align 8
  %330 = load %struct.TYPE_45__*, %struct.TYPE_45__** %27, align 8
  %331 = load i32*, i32** %28, align 8
  %332 = load i64, i64* %29, align 8
  %333 = load i64*, i64** %31, align 8
  %334 = load i64*, i64** %32, align 8
  %335 = call i32 @ConstructTupleDescriptor(%struct.TYPE_43__* %329, %struct.TYPE_45__* %330, i32* %331, i64 %332, i64* %333, i64* %334)
  store i32 %335, i32* %43, align 4
  %336 = load i64, i64* %23, align 8
  %337 = call i64 @OidIsValid(i64 %336)
  %338 = icmp ne i64 %337, 0
  br i1 %338, label %361, label %339

339:                                              ; preds = %328
  %340 = load i64, i64* @IsBinaryUpgrade, align 8
  %341 = icmp ne i64 %340, 0
  br i1 %341, label %342, label %355

342:                                              ; preds = %339
  %343 = load i64, i64* @binary_upgrade_next_index_pg_class_oid, align 8
  %344 = call i64 @OidIsValid(i64 %343)
  %345 = icmp ne i64 %344, 0
  br i1 %345, label %352, label %346

346:                                              ; preds = %342
  %347 = load i32, i32* @ERROR, align 4
  %348 = load i32, i32* @ERRCODE_INVALID_PARAMETER_VALUE, align 4
  %349 = call i32 @errcode(i32 %348)
  %350 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.11, i64 0, i64 0))
  %351 = call i32 @ereport(i32 %347, i32 %350)
  br label %352

352:                                              ; preds = %346, %342
  %353 = load i64, i64* @binary_upgrade_next_index_pg_class_oid, align 8
  store i64 %353, i64* %23, align 8
  %354 = load i64, i64* @InvalidOid, align 8
  store i64 %354, i64* @binary_upgrade_next_index_pg_class_oid, align 8
  br label %360

355:                                              ; preds = %339
  %356 = load i64, i64* %30, align 8
  %357 = load %struct.TYPE_43__*, %struct.TYPE_43__** %41, align 8
  %358 = load i8, i8* %49, align 1
  %359 = call i64 @GetNewRelFileNode(i64 %356, %struct.TYPE_43__* %357, i8 signext %358)
  store i64 %359, i64* %23, align 8
  br label %360

360:                                              ; preds = %355, %352
  br label %361

361:                                              ; preds = %360, %328
  %362 = load i8*, i8** %22, align 8
  %363 = load i64, i64* %47, align 8
  %364 = load i64, i64* %30, align 8
  %365 = load i64, i64* %23, align 8
  %366 = load i64, i64* %26, align 8
  %367 = load i64, i64* %29, align 8
  %368 = load i32, i32* %43, align 4
  %369 = load i8, i8* %54, align 1
  %370 = load i8, i8* %49, align 1
  %371 = load i32, i32* %44, align 4
  %372 = load i32, i32* %45, align 4
  %373 = load i32, i32* %37, align 4
  %374 = call %struct.TYPE_43__* @heap_create(i8* %362, i64 %363, i64 %364, i64 %365, i64 %366, i64 %367, i32 %368, i8 signext %369, i8 signext %370, i32 %371, i32 %372, i32 %373, i64* %55, i64* %56)
  store %struct.TYPE_43__* %374, %struct.TYPE_43__** %42, align 8
  %375 = load i64, i64* %55, align 8
  %376 = load i64, i64* @InvalidTransactionId, align 8
  %377 = icmp eq i64 %375, %376
  %378 = zext i1 %377 to i32
  %379 = call i32 @Assert(i32 %378)
  %380 = load i64, i64* %56, align 8
  %381 = load i64, i64* @InvalidMultiXactId, align 8
  %382 = icmp eq i64 %380, %381
  %383 = zext i1 %382 to i32
  %384 = call i32 @Assert(i32 %383)
  %385 = load i64, i64* %23, align 8
  %386 = load %struct.TYPE_43__*, %struct.TYPE_43__** %42, align 8
  %387 = call i64 @RelationGetRelid(%struct.TYPE_43__* %386)
  %388 = icmp eq i64 %385, %387
  %389 = zext i1 %388 to i32
  %390 = call i32 @Assert(i32 %389)
  %391 = load %struct.TYPE_43__*, %struct.TYPE_43__** %42, align 8
  %392 = load i32, i32* @AccessExclusiveLock, align 4
  %393 = call i32 @LockRelation(%struct.TYPE_43__* %391, i32 %392)
  %394 = load %struct.TYPE_43__*, %struct.TYPE_43__** %21, align 8
  %395 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %394, i32 0, i32 2
  %396 = load %struct.TYPE_42__*, %struct.TYPE_42__** %395, align 8
  %397 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %396, i32 0, i32 4
  %398 = load i32, i32* %397, align 8
  %399 = load %struct.TYPE_43__*, %struct.TYPE_43__** %42, align 8
  %400 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %399, i32 0, i32 2
  %401 = load %struct.TYPE_42__*, %struct.TYPE_42__** %400, align 8
  %402 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %401, i32 0, i32 4
  store i32 %398, i32* %402, align 8
  %403 = load i64, i64* %29, align 8
  %404 = load %struct.TYPE_43__*, %struct.TYPE_43__** %42, align 8
  %405 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %404, i32 0, i32 2
  %406 = load %struct.TYPE_42__*, %struct.TYPE_42__** %405, align 8
  %407 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %406, i32 0, i32 3
  store i64 %403, i64* %407, align 8
  %408 = load i64, i64* %24, align 8
  %409 = call i64 @OidIsValid(i64 %408)
  %410 = load %struct.TYPE_43__*, %struct.TYPE_43__** %42, align 8
  %411 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %410, i32 0, i32 2
  %412 = load %struct.TYPE_42__*, %struct.TYPE_42__** %411, align 8
  %413 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %412, i32 0, i32 2
  store i64 %409, i64* %413, align 8
  %414 = load %struct.TYPE_43__*, %struct.TYPE_43__** %41, align 8
  %415 = load %struct.TYPE_43__*, %struct.TYPE_43__** %42, align 8
  %416 = load %struct.TYPE_43__*, %struct.TYPE_43__** %42, align 8
  %417 = call i64 @RelationGetRelid(%struct.TYPE_43__* %416)
  %418 = load i32, i32* %34, align 4
  %419 = call i32 @InsertPgClassTuple(%struct.TYPE_43__* %414, %struct.TYPE_43__* %415, i64 %417, i32 0, i32 %418)
  %420 = load %struct.TYPE_43__*, %struct.TYPE_43__** %41, align 8
  %421 = load i32, i32* @RowExclusiveLock, align 4
  %422 = call i32 @table_close(%struct.TYPE_43__* %420, i32 %421)
  %423 = load %struct.TYPE_43__*, %struct.TYPE_43__** %42, align 8
  %424 = load %struct.TYPE_45__*, %struct.TYPE_45__** %27, align 8
  %425 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %424, i32 0, i32 0
  %426 = load i32, i32* %425, align 8
  %427 = load i64, i64* %23, align 8
  %428 = call i32 @InitializeAttributeOids(%struct.TYPE_43__* %423, i32 %426, i64 %427)
  %429 = load %struct.TYPE_43__*, %struct.TYPE_43__** %42, align 8
  %430 = load %struct.TYPE_45__*, %struct.TYPE_45__** %27, align 8
  %431 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %430, i32 0, i32 0
  %432 = load i32, i32* %431, align 8
  %433 = call i32 @AppendAttributeTuples(%struct.TYPE_43__* %429, i32 %432)
  %434 = load i64, i64* %23, align 8
  %435 = load i64, i64* %40, align 8
  %436 = load i64, i64* %24, align 8
  %437 = load %struct.TYPE_45__*, %struct.TYPE_45__** %27, align 8
  %438 = load i64*, i64** %31, align 8
  %439 = load i64*, i64** %32, align 8
  %440 = load i32*, i32** %33, align 8
  %441 = load i32, i32* %50, align 4
  %442 = load i32, i32* %46, align 4
  %443 = load i32, i32* %36, align 4
  %444 = load i32, i32* @INDEX_CONSTR_CREATE_DEFERRABLE, align 4
  %445 = and i32 %443, %444
  %446 = icmp eq i32 %445, 0
  %447 = zext i1 %446 to i32
  %448 = load i32, i32* %52, align 4
  %449 = icmp ne i32 %448, 0
  br i1 %449, label %454, label %450

450:                                              ; preds = %361
  %451 = load i32, i32* %51, align 4
  %452 = icmp ne i32 %451, 0
  %453 = xor i1 %452, true
  br label %454

454:                                              ; preds = %450, %361
  %455 = phi i1 [ false, %361 ], [ %453, %450 ]
  %456 = zext i1 %455 to i32
  %457 = load i32, i32* %52, align 4
  %458 = icmp ne i32 %457, 0
  %459 = xor i1 %458, true
  %460 = zext i1 %459 to i32
  %461 = call i32 @UpdateIndexRelation(i64 %434, i64 %435, i64 %436, %struct.TYPE_45__* %437, i64* %438, i64* %439, i32* %440, i32 %441, i32 %442, i32 %447, i32 %456, i32 %460)
  %462 = load %struct.TYPE_43__*, %struct.TYPE_43__** %21, align 8
  %463 = call i32 @CacheInvalidateRelcache(%struct.TYPE_43__* %462)
  %464 = load i64, i64* %24, align 8
  %465 = call i64 @OidIsValid(i64 %464)
  %466 = icmp ne i64 %465, 0
  br i1 %466, label %467, label %473

467:                                              ; preds = %454
  %468 = load i64, i64* %23, align 8
  %469 = load i64, i64* %24, align 8
  %470 = call i32 @StoreSingleInheritance(i64 %468, i64 %469, i32 1)
  %471 = load i64, i64* %24, align 8
  %472 = call i32 @SetRelationHasSubclass(i64 %471, i32 1)
  br label %473

473:                                              ; preds = %467, %454
  %474 = call i64 (...) @IsBootstrapProcessingMode()
  %475 = icmp ne i64 %474, 0
  br i1 %475, label %683, label %476

476:                                              ; preds = %473
  %477 = load i8*, i8** @RelationRelationId, align 8
  %478 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %60, i32 0, i32 2
  store i8* %477, i8** %478, align 8
  %479 = load i64, i64* %23, align 8
  %480 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %60, i32 0, i32 0
  store i64 %479, i64* %480, align 8
  %481 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %60, i32 0, i32 1
  store i64 0, i64* %481, align 8
  %482 = load i32, i32* %35, align 4
  %483 = load i32, i32* @INDEX_CREATE_ADD_CONSTRAINT, align 4
  %484 = and i32 %482, %483
  %485 = icmp ne i32 %484, 0
  br i1 %485, label %486, label %527

486:                                              ; preds = %476
  %487 = load i32, i32* %50, align 4
  %488 = icmp ne i32 %487, 0
  br i1 %488, label %489, label %491

489:                                              ; preds = %486
  %490 = load i8, i8* @CONSTRAINT_PRIMARY, align 1
  store i8 %490, i8* %62, align 1
  br label %508

491:                                              ; preds = %486
  %492 = load %struct.TYPE_45__*, %struct.TYPE_45__** %27, align 8
  %493 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %492, i32 0, i32 5
  %494 = load i64, i64* %493, align 8
  %495 = icmp ne i64 %494, 0
  br i1 %495, label %496, label %498

496:                                              ; preds = %491
  %497 = load i8, i8* @CONSTRAINT_UNIQUE, align 1
  store i8 %497, i8* %62, align 1
  br label %507

498:                                              ; preds = %491
  %499 = load i32, i32* %46, align 4
  %500 = icmp ne i32 %499, 0
  br i1 %500, label %501, label %503

501:                                              ; preds = %498
  %502 = load i8, i8* @CONSTRAINT_EXCLUSION, align 1
  store i8 %502, i8* %62, align 1
  br label %506

503:                                              ; preds = %498
  %504 = load i32, i32* @ERROR, align 4
  %505 = call i32 (i32, i8*, ...) @elog(i32 %504, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.12, i64 0, i64 0))
  store i8 0, i8* %62, align 1
  br label %506

506:                                              ; preds = %503, %501
  br label %507

507:                                              ; preds = %506, %496
  br label %508

508:                                              ; preds = %507, %489
  %509 = load %struct.TYPE_43__*, %struct.TYPE_43__** %21, align 8
  %510 = load i64, i64* %23, align 8
  %511 = load i64, i64* %25, align 8
  %512 = load %struct.TYPE_45__*, %struct.TYPE_45__** %27, align 8
  %513 = load i8*, i8** %22, align 8
  %514 = load i8, i8* %62, align 1
  %515 = load i32, i32* %36, align 4
  %516 = load i32, i32* %37, align 4
  %517 = load i32, i32* %38, align 4
  call void @index_constraint_create(%struct.TYPE_44__* sret %64, %struct.TYPE_43__* %509, i64 %510, i64 %511, %struct.TYPE_45__* %512, i8* %513, i8 signext %514, i32 %515, i32 %516, i32 %517)
  %518 = bitcast %struct.TYPE_44__* %63 to i8*
  %519 = bitcast %struct.TYPE_44__* %64 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %518, i8* align 8 %519, i64 24, i1 false)
  %520 = load i64*, i64** %39, align 8
  %521 = icmp ne i64* %520, null
  br i1 %521, label %522, label %526

522:                                              ; preds = %508
  %523 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %63, i32 0, i32 0
  %524 = load i64, i64* %523, align 8
  %525 = load i64*, i64** %39, align 8
  store i64 %524, i64* %525, align 8
  br label %526

526:                                              ; preds = %522, %508
  br label %574

527:                                              ; preds = %476
  store i32 0, i32* %65, align 4
  store i32 0, i32* %48, align 4
  br label %528

528:                                              ; preds = %559, %527
  %529 = load i32, i32* %48, align 4
  %530 = load %struct.TYPE_45__*, %struct.TYPE_45__** %27, align 8
  %531 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %530, i32 0, i32 0
  %532 = load i32, i32* %531, align 8
  %533 = icmp slt i32 %529, %532
  br i1 %533, label %534, label %562

534:                                              ; preds = %528
  %535 = load %struct.TYPE_45__*, %struct.TYPE_45__** %27, align 8
  %536 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %535, i32 0, i32 2
  %537 = load i64*, i64** %536, align 8
  %538 = load i32, i32* %48, align 4
  %539 = sext i32 %538 to i64
  %540 = getelementptr inbounds i64, i64* %537, i64 %539
  %541 = load i64, i64* %540, align 8
  %542 = icmp ne i64 %541, 0
  br i1 %542, label %543, label %558

543:                                              ; preds = %534
  %544 = load i8*, i8** @RelationRelationId, align 8
  %545 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %61, i32 0, i32 2
  store i8* %544, i8** %545, align 8
  %546 = load i64, i64* %40, align 8
  %547 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %61, i32 0, i32 0
  store i64 %546, i64* %547, align 8
  %548 = load %struct.TYPE_45__*, %struct.TYPE_45__** %27, align 8
  %549 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %548, i32 0, i32 2
  %550 = load i64*, i64** %549, align 8
  %551 = load i32, i32* %48, align 4
  %552 = sext i32 %551 to i64
  %553 = getelementptr inbounds i64, i64* %550, i64 %552
  %554 = load i64, i64* %553, align 8
  %555 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %61, i32 0, i32 1
  store i64 %554, i64* %555, align 8
  %556 = load i32, i32* @DEPENDENCY_AUTO, align 4
  %557 = call i32 @recordDependencyOn(%struct.TYPE_44__* %60, %struct.TYPE_44__* %61, i32 %556)
  store i32 1, i32* %65, align 4
  br label %558

558:                                              ; preds = %543, %534
  br label %559

559:                                              ; preds = %558
  %560 = load i32, i32* %48, align 4
  %561 = add nsw i32 %560, 1
  store i32 %561, i32* %48, align 4
  br label %528

562:                                              ; preds = %528
  %563 = load i32, i32* %65, align 4
  %564 = icmp ne i32 %563, 0
  br i1 %564, label %573, label %565

565:                                              ; preds = %562
  %566 = load i8*, i8** @RelationRelationId, align 8
  %567 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %61, i32 0, i32 2
  store i8* %566, i8** %567, align 8
  %568 = load i64, i64* %40, align 8
  %569 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %61, i32 0, i32 0
  store i64 %568, i64* %569, align 8
  %570 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %61, i32 0, i32 1
  store i64 0, i64* %570, align 8
  %571 = load i32, i32* @DEPENDENCY_AUTO, align 4
  %572 = call i32 @recordDependencyOn(%struct.TYPE_44__* %60, %struct.TYPE_44__* %61, i32 %571)
  br label %573

573:                                              ; preds = %565, %562
  br label %574

574:                                              ; preds = %573, %526
  %575 = load i64, i64* %24, align 8
  %576 = call i64 @OidIsValid(i64 %575)
  %577 = icmp ne i64 %576, 0
  br i1 %577, label %578, label %593

578:                                              ; preds = %574
  %579 = load i8*, i8** @RelationRelationId, align 8
  %580 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %61, i32 0, i32 2
  store i8* %579, i8** %580, align 8
  %581 = load i64, i64* %24, align 8
  %582 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %61, i32 0, i32 0
  store i64 %581, i64* %582, align 8
  %583 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %61, i32 0, i32 1
  store i64 0, i64* %583, align 8
  %584 = load i32, i32* @DEPENDENCY_PARTITION_PRI, align 4
  %585 = call i32 @recordDependencyOn(%struct.TYPE_44__* %60, %struct.TYPE_44__* %61, i32 %584)
  %586 = load i8*, i8** @RelationRelationId, align 8
  %587 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %61, i32 0, i32 2
  store i8* %586, i8** %587, align 8
  %588 = load i64, i64* %40, align 8
  %589 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %61, i32 0, i32 0
  store i64 %588, i64* %589, align 8
  %590 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %61, i32 0, i32 1
  store i64 0, i64* %590, align 8
  %591 = load i32, i32* @DEPENDENCY_PARTITION_SEC, align 4
  %592 = call i32 @recordDependencyOn(%struct.TYPE_44__* %60, %struct.TYPE_44__* %61, i32 %591)
  br label %593

593:                                              ; preds = %578, %574
  store i32 0, i32* %48, align 4
  br label %594

594:                                              ; preds = %629, %593
  %595 = load i32, i32* %48, align 4
  %596 = load %struct.TYPE_45__*, %struct.TYPE_45__** %27, align 8
  %597 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %596, i32 0, i32 1
  %598 = load i32, i32* %597, align 4
  %599 = icmp slt i32 %595, %598
  br i1 %599, label %600, label %632

600:                                              ; preds = %594
  %601 = load i64*, i64** %31, align 8
  %602 = load i32, i32* %48, align 4
  %603 = sext i32 %602 to i64
  %604 = getelementptr inbounds i64, i64* %601, i64 %603
  %605 = load i64, i64* %604, align 8
  %606 = call i64 @OidIsValid(i64 %605)
  %607 = icmp ne i64 %606, 0
  br i1 %607, label %608, label %628

608:                                              ; preds = %600
  %609 = load i64*, i64** %31, align 8
  %610 = load i32, i32* %48, align 4
  %611 = sext i32 %610 to i64
  %612 = getelementptr inbounds i64, i64* %609, i64 %611
  %613 = load i64, i64* %612, align 8
  %614 = load i64, i64* @DEFAULT_COLLATION_OID, align 8
  %615 = icmp ne i64 %613, %614
  br i1 %615, label %616, label %628

616:                                              ; preds = %608
  %617 = load i8*, i8** @CollationRelationId, align 8
  %618 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %61, i32 0, i32 2
  store i8* %617, i8** %618, align 8
  %619 = load i64*, i64** %31, align 8
  %620 = load i32, i32* %48, align 4
  %621 = sext i32 %620 to i64
  %622 = getelementptr inbounds i64, i64* %619, i64 %621
  %623 = load i64, i64* %622, align 8
  %624 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %61, i32 0, i32 0
  store i64 %623, i64* %624, align 8
  %625 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %61, i32 0, i32 1
  store i64 0, i64* %625, align 8
  %626 = load i32, i32* @DEPENDENCY_NORMAL, align 4
  %627 = call i32 @recordDependencyOn(%struct.TYPE_44__* %60, %struct.TYPE_44__* %61, i32 %626)
  br label %628

628:                                              ; preds = %616, %608, %600
  br label %629

629:                                              ; preds = %628
  %630 = load i32, i32* %48, align 4
  %631 = add nsw i32 %630, 1
  store i32 %631, i32* %48, align 4
  br label %594

632:                                              ; preds = %594
  store i32 0, i32* %48, align 4
  br label %633

633:                                              ; preds = %651, %632
  %634 = load i32, i32* %48, align 4
  %635 = load %struct.TYPE_45__*, %struct.TYPE_45__** %27, align 8
  %636 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %635, i32 0, i32 1
  %637 = load i32, i32* %636, align 4
  %638 = icmp slt i32 %634, %637
  br i1 %638, label %639, label %654

639:                                              ; preds = %633
  %640 = load i8*, i8** @OperatorClassRelationId, align 8
  %641 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %61, i32 0, i32 2
  store i8* %640, i8** %641, align 8
  %642 = load i64*, i64** %32, align 8
  %643 = load i32, i32* %48, align 4
  %644 = sext i32 %643 to i64
  %645 = getelementptr inbounds i64, i64* %642, i64 %644
  %646 = load i64, i64* %645, align 8
  %647 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %61, i32 0, i32 0
  store i64 %646, i64* %647, align 8
  %648 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %61, i32 0, i32 1
  store i64 0, i64* %648, align 8
  %649 = load i32, i32* @DEPENDENCY_NORMAL, align 4
  %650 = call i32 @recordDependencyOn(%struct.TYPE_44__* %60, %struct.TYPE_44__* %61, i32 %649)
  br label %651

651:                                              ; preds = %639
  %652 = load i32, i32* %48, align 4
  %653 = add nsw i32 %652, 1
  store i32 %653, i32* %48, align 4
  br label %633

654:                                              ; preds = %633
  %655 = load %struct.TYPE_45__*, %struct.TYPE_45__** %27, align 8
  %656 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %655, i32 0, i32 4
  %657 = load i64, i64* %656, align 8
  %658 = icmp ne i64 %657, 0
  br i1 %658, label %659, label %668

659:                                              ; preds = %654
  %660 = load %struct.TYPE_45__*, %struct.TYPE_45__** %27, align 8
  %661 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %660, i32 0, i32 4
  %662 = load i64, i64* %661, align 8
  %663 = inttoptr i64 %662 to i32*
  %664 = load i64, i64* %40, align 8
  %665 = load i32, i32* @DEPENDENCY_NORMAL, align 4
  %666 = load i32, i32* @DEPENDENCY_AUTO, align 4
  %667 = call i32 @recordDependencyOnSingleRelExpr(%struct.TYPE_44__* %60, i32* %663, i64 %664, i32 %665, i32 %666, i32 0)
  br label %668

668:                                              ; preds = %659, %654
  %669 = load %struct.TYPE_45__*, %struct.TYPE_45__** %27, align 8
  %670 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %669, i32 0, i32 3
  %671 = load i64, i64* %670, align 8
  %672 = icmp ne i64 %671, 0
  br i1 %672, label %673, label %682

673:                                              ; preds = %668
  %674 = load %struct.TYPE_45__*, %struct.TYPE_45__** %27, align 8
  %675 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %674, i32 0, i32 3
  %676 = load i64, i64* %675, align 8
  %677 = inttoptr i64 %676 to i32*
  %678 = load i64, i64* %40, align 8
  %679 = load i32, i32* @DEPENDENCY_NORMAL, align 4
  %680 = load i32, i32* @DEPENDENCY_AUTO, align 4
  %681 = call i32 @recordDependencyOnSingleRelExpr(%struct.TYPE_44__* %60, i32* %677, i64 %678, i32 %679, i32 %680, i32 0)
  br label %682

682:                                              ; preds = %673, %668
  br label %690

683:                                              ; preds = %473
  %684 = load i32, i32* %35, align 4
  %685 = load i32, i32* @INDEX_CREATE_ADD_CONSTRAINT, align 4
  %686 = and i32 %684, %685
  %687 = icmp eq i32 %686, 0
  %688 = zext i1 %687 to i32
  %689 = call i32 @Assert(i32 %688)
  br label %690

690:                                              ; preds = %683, %682
  %691 = load i8*, i8** @RelationRelationId, align 8
  %692 = load i64, i64* %23, align 8
  %693 = load i32, i32* %38, align 4
  %694 = call i32 @InvokeObjectPostCreateHookArg(i8* %691, i64 %692, i32 0, i32 %693)
  %695 = call i32 (...) @CommandCounterIncrement()
  %696 = call i64 (...) @IsBootstrapProcessingMode()
  %697 = icmp ne i64 %696, 0
  br i1 %697, label %698, label %701

698:                                              ; preds = %690
  %699 = load %struct.TYPE_43__*, %struct.TYPE_43__** %42, align 8
  %700 = call i32 @RelationInitIndexAccessInfo(%struct.TYPE_43__* %699)
  br label %708

701:                                              ; preds = %690
  %702 = load %struct.TYPE_43__*, %struct.TYPE_43__** %42, align 8
  %703 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %702, i32 0, i32 1
  %704 = load i32*, i32** %703, align 8
  %705 = icmp ne i32* %704, null
  %706 = zext i1 %705 to i32
  %707 = call i32 @Assert(i32 %706)
  br label %708

708:                                              ; preds = %701, %698
  %709 = load %struct.TYPE_45__*, %struct.TYPE_45__** %27, align 8
  %710 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %709, i32 0, i32 1
  %711 = load i32, i32* %710, align 4
  %712 = load %struct.TYPE_43__*, %struct.TYPE_43__** %42, align 8
  %713 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %712, i32 0, i32 0
  %714 = load %struct.TYPE_41__*, %struct.TYPE_41__** %713, align 8
  %715 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %714, i32 0, i32 0
  store i32 %711, i32* %715, align 4
  %716 = call i64 (...) @IsBootstrapProcessingMode()
  %717 = icmp ne i64 %716, 0
  br i1 %717, label %718, label %723

718:                                              ; preds = %708
  %719 = load i64, i64* %40, align 8
  %720 = load i64, i64* %23, align 8
  %721 = load %struct.TYPE_45__*, %struct.TYPE_45__** %27, align 8
  %722 = call i32 @index_register(i64 %719, i64 %720, %struct.TYPE_45__* %721)
  br label %738

723:                                              ; preds = %708
  %724 = load i32, i32* %35, align 4
  %725 = load i32, i32* @INDEX_CREATE_SKIP_BUILD, align 4
  %726 = and i32 %724, %725
  %727 = icmp ne i32 %726, 0
  br i1 %727, label %728, label %732

728:                                              ; preds = %723
  %729 = load %struct.TYPE_43__*, %struct.TYPE_43__** %21, align 8
  %730 = call i32 @index_update_stats(%struct.TYPE_43__* %729, i32 1, double -1.000000e+00)
  %731 = call i32 (...) @CommandCounterIncrement()
  br label %737

732:                                              ; preds = %723
  %733 = load %struct.TYPE_43__*, %struct.TYPE_43__** %21, align 8
  %734 = load %struct.TYPE_43__*, %struct.TYPE_43__** %42, align 8
  %735 = load %struct.TYPE_45__*, %struct.TYPE_45__** %27, align 8
  %736 = call i32 @index_build(%struct.TYPE_43__* %733, %struct.TYPE_43__* %734, %struct.TYPE_45__* %735, i32 0, i32 1)
  br label %737

737:                                              ; preds = %732, %728
  br label %738

738:                                              ; preds = %737, %718
  %739 = load %struct.TYPE_43__*, %struct.TYPE_43__** %42, align 8
  %740 = load i32, i32* @NoLock, align 4
  %741 = call i32 @index_close(%struct.TYPE_43__* %739, i32 %740)
  %742 = load i64, i64* %23, align 8
  store i64 %742, i64* %20, align 8
  br label %743

743:                                              ; preds = %738, %290
  %744 = load i64, i64* %20, align 8
  ret i64 %744
}

declare dso_local i64 @RelationGetRelid(%struct.TYPE_43__*) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local %struct.TYPE_43__* @table_open(i8*, i32) #1

declare dso_local i64 @RelationGetNamespace(%struct.TYPE_43__*) #1

declare dso_local i32 @RelationIsMapped(%struct.TYPE_43__*) #1

declare dso_local i32 @elog(i32, i8*, ...) #1

declare dso_local i64 @IsSystemRelation(%struct.TYPE_43__*) #1

declare dso_local i64 @IsNormalProcessingMode(...) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, ...) #1

declare dso_local i32 @get_collation_isdeterministic(i64) #1

declare dso_local i32 @SearchSysCache1(i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i64) #1

declare dso_local i32 @HeapTupleIsValid(i32) #1

declare dso_local i32 @NameStr(i32) #1

declare dso_local i64 @GETSTRUCT(i32) #1

declare dso_local i32 @ReleaseSysCache(i32) #1

declare dso_local i64 @IsCatalogRelation(%struct.TYPE_43__*) #1

declare dso_local i64 @IsBootstrapProcessingMode(...) #1

declare dso_local i64 @get_relname_relid(i8*, i64) #1

declare dso_local i32 @table_close(%struct.TYPE_43__*, i32) #1

declare dso_local i64 @ConstraintNameIsUsed(i32, i64, i8*) #1

declare dso_local i32 @RelationGetRelationName(%struct.TYPE_43__*) #1

declare dso_local i32 @ConstructTupleDescriptor(%struct.TYPE_43__*, %struct.TYPE_45__*, i32*, i64, i64*, i64*) #1

declare dso_local i64 @OidIsValid(i64) #1

declare dso_local i64 @GetNewRelFileNode(i64, %struct.TYPE_43__*, i8 signext) #1

declare dso_local %struct.TYPE_43__* @heap_create(i8*, i64, i64, i64, i64, i64, i32, i8 signext, i8 signext, i32, i32, i32, i64*, i64*) #1

declare dso_local i32 @LockRelation(%struct.TYPE_43__*, i32) #1

declare dso_local i32 @InsertPgClassTuple(%struct.TYPE_43__*, %struct.TYPE_43__*, i64, i32, i32) #1

declare dso_local i32 @InitializeAttributeOids(%struct.TYPE_43__*, i32, i64) #1

declare dso_local i32 @AppendAttributeTuples(%struct.TYPE_43__*, i32) #1

declare dso_local i32 @UpdateIndexRelation(i64, i64, i64, %struct.TYPE_45__*, i64*, i64*, i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @CacheInvalidateRelcache(%struct.TYPE_43__*) #1

declare dso_local i32 @StoreSingleInheritance(i64, i64, i32) #1

declare dso_local i32 @SetRelationHasSubclass(i64, i32) #1

declare dso_local void @index_constraint_create(%struct.TYPE_44__* sret, %struct.TYPE_43__*, i64, i64, %struct.TYPE_45__*, i8*, i8 signext, i32, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @recordDependencyOn(%struct.TYPE_44__*, %struct.TYPE_44__*, i32) #1

declare dso_local i32 @recordDependencyOnSingleRelExpr(%struct.TYPE_44__*, i32*, i64, i32, i32, i32) #1

declare dso_local i32 @InvokeObjectPostCreateHookArg(i8*, i64, i32, i32) #1

declare dso_local i32 @CommandCounterIncrement(...) #1

declare dso_local i32 @RelationInitIndexAccessInfo(%struct.TYPE_43__*) #1

declare dso_local i32 @index_register(i64, i64, %struct.TYPE_45__*) #1

declare dso_local i32 @index_update_stats(%struct.TYPE_43__*, i32, double) #1

declare dso_local i32 @index_build(%struct.TYPE_43__*, %struct.TYPE_43__*, %struct.TYPE_45__*, i32, i32) #1

declare dso_local i32 @index_close(%struct.TYPE_43__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
