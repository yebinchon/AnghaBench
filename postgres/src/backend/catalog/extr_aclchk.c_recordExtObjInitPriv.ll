; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/catalog/extr_aclchk.c_recordExtObjInitPriv.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/catalog/extr_aclchk.c_recordExtObjInitPriv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32 }
%struct.TYPE_4__ = type { i64 }

@RelationRelationId = common dso_local global i64 0, align 8
@RELOID = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"cache lookup failed for relation %u\00", align 1
@RELKIND_INDEX = common dso_local global i64 0, align 8
@RELKIND_PARTITIONED_INDEX = common dso_local global i64 0, align 8
@RELKIND_COMPOSITE_TYPE = common dso_local global i64 0, align 8
@RELKIND_SEQUENCE = common dso_local global i64 0, align 8
@ATTNUM = common dso_local global i32 0, align 4
@Anum_pg_attribute_attacl = common dso_local global i32 0, align 4
@Anum_pg_class_relacl = common dso_local global i32 0, align 4
@ForeignDataWrapperRelationId = common dso_local global i64 0, align 8
@FOREIGNDATAWRAPPEROID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"cache lookup failed for foreign data wrapper %u\00", align 1
@Anum_pg_foreign_data_wrapper_fdwacl = common dso_local global i32 0, align 4
@ForeignServerRelationId = common dso_local global i64 0, align 8
@FOREIGNSERVEROID = common dso_local global i32 0, align 4
@Anum_pg_foreign_server_srvacl = common dso_local global i32 0, align 4
@LanguageRelationId = common dso_local global i64 0, align 8
@LANGOID = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"cache lookup failed for language %u\00", align 1
@Anum_pg_language_lanacl = common dso_local global i32 0, align 4
@LargeObjectMetadataRelationId = common dso_local global i64 0, align 8
@RowExclusiveLock = common dso_local global i32 0, align 4
@Anum_pg_largeobject_metadata_oid = common dso_local global i32 0, align 4
@BTEqualStrategyNumber = common dso_local global i32 0, align 4
@F_OIDEQ = common dso_local global i32 0, align 4
@LargeObjectMetadataOidIndexId = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [41 x i8] c"could not find tuple for large object %u\00", align 1
@Anum_pg_largeobject_metadata_lomacl = common dso_local global i32 0, align 4
@NamespaceRelationId = common dso_local global i64 0, align 8
@NAMESPACEOID = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [36 x i8] c"cache lookup failed for function %u\00", align 1
@Anum_pg_namespace_nspacl = common dso_local global i32 0, align 4
@ProcedureRelationId = common dso_local global i64 0, align 8
@PROCOID = common dso_local global i32 0, align 4
@Anum_pg_proc_proacl = common dso_local global i32 0, align 4
@TypeRelationId = common dso_local global i64 0, align 8
@TYPEOID = common dso_local global i32 0, align 4
@Anum_pg_type_typacl = common dso_local global i32 0, align 4
@AccessMethodRelationId = common dso_local global i64 0, align 8
@AggregateRelationId = common dso_local global i64 0, align 8
@CastRelationId = common dso_local global i64 0, align 8
@CollationRelationId = common dso_local global i64 0, align 8
@ConversionRelationId = common dso_local global i64 0, align 8
@EventTriggerRelationId = common dso_local global i64 0, align 8
@OperatorRelationId = common dso_local global i64 0, align 8
@OperatorClassRelationId = common dso_local global i64 0, align 8
@OperatorFamilyRelationId = common dso_local global i64 0, align 8
@TSConfigRelationId = common dso_local global i64 0, align 8
@TSDictionaryRelationId = common dso_local global i64 0, align 8
@TSParserRelationId = common dso_local global i64 0, align 8
@TSTemplateRelationId = common dso_local global i64 0, align 8
@TransformRelationId = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [42 x i8] c"unrecognized or unsupported class OID: %u\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @recordExtObjInitPriv(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca [1 x i32], align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %37 = load i64, i64* %4, align 8
  %38 = load i64, i64* @RelationRelationId, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %149

40:                                               ; preds = %2
  %41 = load i32, i32* @RELOID, align 4
  %42 = load i64, i64* %3, align 8
  %43 = call i32 @ObjectIdGetDatum(i64 %42)
  %44 = call i32 @SearchSysCache1(i32 %41, i32 %43)
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %8, align 4
  %46 = call i32 @HeapTupleIsValid(i32 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %40
  %49 = load i32, i32* @ERROR, align 4
  %50 = load i64, i64* %3, align 8
  %51 = call i32 @elog(i32 %49, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i64 %50)
  br label %52

52:                                               ; preds = %48, %40
  %53 = load i32, i32* %8, align 4
  %54 = call i64 @GETSTRUCT(i32 %53)
  %55 = inttoptr i64 %54 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %55, %struct.TYPE_3__** %5, align 8
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @RELKIND_INDEX, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %67, label %61

61:                                               ; preds = %52
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @RELKIND_PARTITIONED_INDEX, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %61, %52
  br label %459

68:                                               ; preds = %61
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @RELKIND_COMPOSITE_TYPE, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %68
  br label %459

75:                                               ; preds = %68
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @RELKIND_SEQUENCE, align 8
  %80 = icmp ne i64 %78, %79
  br i1 %80, label %81, label %133

81:                                               ; preds = %75
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  store i32 %84, i32* %10, align 4
  store i32 1, i32* %9, align 4
  br label %85

85:                                               ; preds = %129, %81
  %86 = load i32, i32* %9, align 4
  %87 = load i32, i32* %10, align 4
  %88 = icmp sle i32 %86, %87
  br i1 %88, label %89, label %132

89:                                               ; preds = %85
  %90 = load i32, i32* @ATTNUM, align 4
  %91 = load i64, i64* %3, align 8
  %92 = call i32 @ObjectIdGetDatum(i64 %91)
  %93 = load i32, i32* %9, align 4
  %94 = call i32 @Int16GetDatum(i32 %93)
  %95 = call i32 @SearchSysCache2(i32 %90, i32 %92, i32 %94)
  store i32 %95, i32* %11, align 4
  %96 = load i32, i32* %11, align 4
  %97 = call i32 @HeapTupleIsValid(i32 %96)
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %100, label %99

99:                                               ; preds = %89
  br label %129

100:                                              ; preds = %89
  %101 = load i32, i32* %11, align 4
  %102 = call i64 @GETSTRUCT(i32 %101)
  %103 = inttoptr i64 %102 to %struct.TYPE_4__*
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %100
  %108 = load i32, i32* %11, align 4
  %109 = call i32 @ReleaseSysCache(i32 %108)
  br label %129

110:                                              ; preds = %100
  %111 = load i32, i32* @ATTNUM, align 4
  %112 = load i32, i32* %11, align 4
  %113 = load i32, i32* @Anum_pg_attribute_attacl, align 4
  %114 = call i32 @SysCacheGetAttr(i32 %111, i32 %112, i32 %113, i32* %7)
  store i32 %114, i32* %12, align 4
  %115 = load i32, i32* %7, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %110
  %118 = load i32, i32* %11, align 4
  %119 = call i32 @ReleaseSysCache(i32 %118)
  br label %129

120:                                              ; preds = %110
  %121 = load i64, i64* %3, align 8
  %122 = load i64, i64* %4, align 8
  %123 = load i32, i32* %9, align 4
  %124 = load i32, i32* %12, align 4
  %125 = call i32 @DatumGetAclP(i32 %124)
  %126 = call i32 @recordExtensionInitPrivWorker(i64 %121, i64 %122, i32 %123, i32 %125)
  %127 = load i32, i32* %11, align 4
  %128 = call i32 @ReleaseSysCache(i32 %127)
  br label %129

129:                                              ; preds = %120, %117, %107, %99
  %130 = load i32, i32* %9, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %9, align 4
  br label %85

132:                                              ; preds = %85
  br label %133

133:                                              ; preds = %132, %75
  %134 = load i32, i32* @RELOID, align 4
  %135 = load i32, i32* %8, align 4
  %136 = load i32, i32* @Anum_pg_class_relacl, align 4
  %137 = call i32 @SysCacheGetAttr(i32 %134, i32 %135, i32 %136, i32* %7)
  store i32 %137, i32* %6, align 4
  %138 = load i32, i32* %7, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %146, label %140

140:                                              ; preds = %133
  %141 = load i64, i64* %3, align 8
  %142 = load i64, i64* %4, align 8
  %143 = load i32, i32* %6, align 4
  %144 = call i32 @DatumGetAclP(i32 %143)
  %145 = call i32 @recordExtensionInitPrivWorker(i64 %141, i64 %142, i32 0, i32 %144)
  br label %146

146:                                              ; preds = %140, %133
  %147 = load i32, i32* %8, align 4
  %148 = call i32 @ReleaseSysCache(i32 %147)
  br label %459

149:                                              ; preds = %2
  %150 = load i64, i64* %4, align 8
  %151 = load i64, i64* @ForeignDataWrapperRelationId, align 8
  %152 = icmp eq i64 %150, %151
  br i1 %152, label %153, label %181

153:                                              ; preds = %149
  %154 = load i32, i32* @FOREIGNDATAWRAPPEROID, align 4
  %155 = load i64, i64* %3, align 8
  %156 = call i32 @ObjectIdGetDatum(i64 %155)
  %157 = call i32 @SearchSysCache1(i32 %154, i32 %156)
  store i32 %157, i32* %15, align 4
  %158 = load i32, i32* %15, align 4
  %159 = call i32 @HeapTupleIsValid(i32 %158)
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %165, label %161

161:                                              ; preds = %153
  %162 = load i32, i32* @ERROR, align 4
  %163 = load i64, i64* %3, align 8
  %164 = call i32 @elog(i32 %162, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i64 %163)
  br label %165

165:                                              ; preds = %161, %153
  %166 = load i32, i32* @FOREIGNDATAWRAPPEROID, align 4
  %167 = load i32, i32* %15, align 4
  %168 = load i32, i32* @Anum_pg_foreign_data_wrapper_fdwacl, align 4
  %169 = call i32 @SysCacheGetAttr(i32 %166, i32 %167, i32 %168, i32* %14)
  store i32 %169, i32* %13, align 4
  %170 = load i32, i32* %14, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %178, label %172

172:                                              ; preds = %165
  %173 = load i64, i64* %3, align 8
  %174 = load i64, i64* %4, align 8
  %175 = load i32, i32* %13, align 4
  %176 = call i32 @DatumGetAclP(i32 %175)
  %177 = call i32 @recordExtensionInitPrivWorker(i64 %173, i64 %174, i32 0, i32 %176)
  br label %178

178:                                              ; preds = %172, %165
  %179 = load i32, i32* %15, align 4
  %180 = call i32 @ReleaseSysCache(i32 %179)
  br label %458

181:                                              ; preds = %149
  %182 = load i64, i64* %4, align 8
  %183 = load i64, i64* @ForeignServerRelationId, align 8
  %184 = icmp eq i64 %182, %183
  br i1 %184, label %185, label %213

185:                                              ; preds = %181
  %186 = load i32, i32* @FOREIGNSERVEROID, align 4
  %187 = load i64, i64* %3, align 8
  %188 = call i32 @ObjectIdGetDatum(i64 %187)
  %189 = call i32 @SearchSysCache1(i32 %186, i32 %188)
  store i32 %189, i32* %18, align 4
  %190 = load i32, i32* %18, align 4
  %191 = call i32 @HeapTupleIsValid(i32 %190)
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %197, label %193

193:                                              ; preds = %185
  %194 = load i32, i32* @ERROR, align 4
  %195 = load i64, i64* %3, align 8
  %196 = call i32 @elog(i32 %194, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i64 %195)
  br label %197

197:                                              ; preds = %193, %185
  %198 = load i32, i32* @FOREIGNSERVEROID, align 4
  %199 = load i32, i32* %18, align 4
  %200 = load i32, i32* @Anum_pg_foreign_server_srvacl, align 4
  %201 = call i32 @SysCacheGetAttr(i32 %198, i32 %199, i32 %200, i32* %17)
  store i32 %201, i32* %16, align 4
  %202 = load i32, i32* %17, align 4
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %210, label %204

204:                                              ; preds = %197
  %205 = load i64, i64* %3, align 8
  %206 = load i64, i64* %4, align 8
  %207 = load i32, i32* %16, align 4
  %208 = call i32 @DatumGetAclP(i32 %207)
  %209 = call i32 @recordExtensionInitPrivWorker(i64 %205, i64 %206, i32 0, i32 %208)
  br label %210

210:                                              ; preds = %204, %197
  %211 = load i32, i32* %18, align 4
  %212 = call i32 @ReleaseSysCache(i32 %211)
  br label %457

213:                                              ; preds = %181
  %214 = load i64, i64* %4, align 8
  %215 = load i64, i64* @LanguageRelationId, align 8
  %216 = icmp eq i64 %214, %215
  br i1 %216, label %217, label %245

217:                                              ; preds = %213
  %218 = load i32, i32* @LANGOID, align 4
  %219 = load i64, i64* %3, align 8
  %220 = call i32 @ObjectIdGetDatum(i64 %219)
  %221 = call i32 @SearchSysCache1(i32 %218, i32 %220)
  store i32 %221, i32* %21, align 4
  %222 = load i32, i32* %21, align 4
  %223 = call i32 @HeapTupleIsValid(i32 %222)
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %229, label %225

225:                                              ; preds = %217
  %226 = load i32, i32* @ERROR, align 4
  %227 = load i64, i64* %3, align 8
  %228 = call i32 @elog(i32 %226, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i64 %227)
  br label %229

229:                                              ; preds = %225, %217
  %230 = load i32, i32* @LANGOID, align 4
  %231 = load i32, i32* %21, align 4
  %232 = load i32, i32* @Anum_pg_language_lanacl, align 4
  %233 = call i32 @SysCacheGetAttr(i32 %230, i32 %231, i32 %232, i32* %20)
  store i32 %233, i32* %19, align 4
  %234 = load i32, i32* %20, align 4
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %242, label %236

236:                                              ; preds = %229
  %237 = load i64, i64* %3, align 8
  %238 = load i64, i64* %4, align 8
  %239 = load i32, i32* %19, align 4
  %240 = call i32 @DatumGetAclP(i32 %239)
  %241 = call i32 @recordExtensionInitPrivWorker(i64 %237, i64 %238, i32 0, i32 %240)
  br label %242

242:                                              ; preds = %236, %229
  %243 = load i32, i32* %21, align 4
  %244 = call i32 @ReleaseSysCache(i32 %243)
  br label %456

245:                                              ; preds = %213
  %246 = load i64, i64* %4, align 8
  %247 = load i64, i64* @LargeObjectMetadataRelationId, align 8
  %248 = icmp eq i64 %246, %247
  br i1 %248, label %249, label %290

249:                                              ; preds = %245
  %250 = load i64, i64* @LargeObjectMetadataRelationId, align 8
  %251 = load i32, i32* @RowExclusiveLock, align 4
  %252 = call i32 @table_open(i64 %250, i32 %251)
  store i32 %252, i32* %27, align 4
  %253 = getelementptr inbounds [1 x i32], [1 x i32]* %25, i64 0, i64 0
  %254 = load i32, i32* @Anum_pg_largeobject_metadata_oid, align 4
  %255 = load i32, i32* @BTEqualStrategyNumber, align 4
  %256 = load i32, i32* @F_OIDEQ, align 4
  %257 = load i64, i64* %3, align 8
  %258 = call i32 @ObjectIdGetDatum(i64 %257)
  %259 = call i32 @ScanKeyInit(i32* %253, i32 %254, i32 %255, i32 %256, i32 %258)
  %260 = load i32, i32* %27, align 4
  %261 = load i32, i32* @LargeObjectMetadataOidIndexId, align 4
  %262 = getelementptr inbounds [1 x i32], [1 x i32]* %25, i64 0, i64 0
  %263 = call i32 @systable_beginscan(i32 %260, i32 %261, i32 1, i32* null, i32 1, i32* %262)
  store i32 %263, i32* %26, align 4
  %264 = load i32, i32* %26, align 4
  %265 = call i32 @systable_getnext(i32 %264)
  store i32 %265, i32* %24, align 4
  %266 = load i32, i32* %24, align 4
  %267 = call i32 @HeapTupleIsValid(i32 %266)
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %273, label %269

269:                                              ; preds = %249
  %270 = load i32, i32* @ERROR, align 4
  %271 = load i64, i64* %3, align 8
  %272 = call i32 @elog(i32 %270, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i64 %271)
  br label %273

273:                                              ; preds = %269, %249
  %274 = load i32, i32* %24, align 4
  %275 = load i32, i32* @Anum_pg_largeobject_metadata_lomacl, align 4
  %276 = load i32, i32* %27, align 4
  %277 = call i32 @RelationGetDescr(i32 %276)
  %278 = call i32 @heap_getattr(i32 %274, i32 %275, i32 %277, i32* %23)
  store i32 %278, i32* %22, align 4
  %279 = load i32, i32* %23, align 4
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %287, label %281

281:                                              ; preds = %273
  %282 = load i64, i64* %3, align 8
  %283 = load i64, i64* %4, align 8
  %284 = load i32, i32* %22, align 4
  %285 = call i32 @DatumGetAclP(i32 %284)
  %286 = call i32 @recordExtensionInitPrivWorker(i64 %282, i64 %283, i32 0, i32 %285)
  br label %287

287:                                              ; preds = %281, %273
  %288 = load i32, i32* %26, align 4
  %289 = call i32 @systable_endscan(i32 %288)
  br label %455

290:                                              ; preds = %245
  %291 = load i64, i64* %4, align 8
  %292 = load i64, i64* @NamespaceRelationId, align 8
  %293 = icmp eq i64 %291, %292
  br i1 %293, label %294, label %322

294:                                              ; preds = %290
  %295 = load i32, i32* @NAMESPACEOID, align 4
  %296 = load i64, i64* %3, align 8
  %297 = call i32 @ObjectIdGetDatum(i64 %296)
  %298 = call i32 @SearchSysCache1(i32 %295, i32 %297)
  store i32 %298, i32* %30, align 4
  %299 = load i32, i32* %30, align 4
  %300 = call i32 @HeapTupleIsValid(i32 %299)
  %301 = icmp ne i32 %300, 0
  br i1 %301, label %306, label %302

302:                                              ; preds = %294
  %303 = load i32, i32* @ERROR, align 4
  %304 = load i64, i64* %3, align 8
  %305 = call i32 @elog(i32 %303, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i64 %304)
  br label %306

306:                                              ; preds = %302, %294
  %307 = load i32, i32* @NAMESPACEOID, align 4
  %308 = load i32, i32* %30, align 4
  %309 = load i32, i32* @Anum_pg_namespace_nspacl, align 4
  %310 = call i32 @SysCacheGetAttr(i32 %307, i32 %308, i32 %309, i32* %29)
  store i32 %310, i32* %28, align 4
  %311 = load i32, i32* %29, align 4
  %312 = icmp ne i32 %311, 0
  br i1 %312, label %319, label %313

313:                                              ; preds = %306
  %314 = load i64, i64* %3, align 8
  %315 = load i64, i64* %4, align 8
  %316 = load i32, i32* %28, align 4
  %317 = call i32 @DatumGetAclP(i32 %316)
  %318 = call i32 @recordExtensionInitPrivWorker(i64 %314, i64 %315, i32 0, i32 %317)
  br label %319

319:                                              ; preds = %313, %306
  %320 = load i32, i32* %30, align 4
  %321 = call i32 @ReleaseSysCache(i32 %320)
  br label %454

322:                                              ; preds = %290
  %323 = load i64, i64* %4, align 8
  %324 = load i64, i64* @ProcedureRelationId, align 8
  %325 = icmp eq i64 %323, %324
  br i1 %325, label %326, label %354

326:                                              ; preds = %322
  %327 = load i32, i32* @PROCOID, align 4
  %328 = load i64, i64* %3, align 8
  %329 = call i32 @ObjectIdGetDatum(i64 %328)
  %330 = call i32 @SearchSysCache1(i32 %327, i32 %329)
  store i32 %330, i32* %33, align 4
  %331 = load i32, i32* %33, align 4
  %332 = call i32 @HeapTupleIsValid(i32 %331)
  %333 = icmp ne i32 %332, 0
  br i1 %333, label %338, label %334

334:                                              ; preds = %326
  %335 = load i32, i32* @ERROR, align 4
  %336 = load i64, i64* %3, align 8
  %337 = call i32 @elog(i32 %335, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i64 %336)
  br label %338

338:                                              ; preds = %334, %326
  %339 = load i32, i32* @PROCOID, align 4
  %340 = load i32, i32* %33, align 4
  %341 = load i32, i32* @Anum_pg_proc_proacl, align 4
  %342 = call i32 @SysCacheGetAttr(i32 %339, i32 %340, i32 %341, i32* %32)
  store i32 %342, i32* %31, align 4
  %343 = load i32, i32* %32, align 4
  %344 = icmp ne i32 %343, 0
  br i1 %344, label %351, label %345

345:                                              ; preds = %338
  %346 = load i64, i64* %3, align 8
  %347 = load i64, i64* %4, align 8
  %348 = load i32, i32* %31, align 4
  %349 = call i32 @DatumGetAclP(i32 %348)
  %350 = call i32 @recordExtensionInitPrivWorker(i64 %346, i64 %347, i32 0, i32 %349)
  br label %351

351:                                              ; preds = %345, %338
  %352 = load i32, i32* %33, align 4
  %353 = call i32 @ReleaseSysCache(i32 %352)
  br label %453

354:                                              ; preds = %322
  %355 = load i64, i64* %4, align 8
  %356 = load i64, i64* @TypeRelationId, align 8
  %357 = icmp eq i64 %355, %356
  br i1 %357, label %358, label %386

358:                                              ; preds = %354
  %359 = load i32, i32* @TYPEOID, align 4
  %360 = load i64, i64* %3, align 8
  %361 = call i32 @ObjectIdGetDatum(i64 %360)
  %362 = call i32 @SearchSysCache1(i32 %359, i32 %361)
  store i32 %362, i32* %36, align 4
  %363 = load i32, i32* %36, align 4
  %364 = call i32 @HeapTupleIsValid(i32 %363)
  %365 = icmp ne i32 %364, 0
  br i1 %365, label %370, label %366

366:                                              ; preds = %358
  %367 = load i32, i32* @ERROR, align 4
  %368 = load i64, i64* %3, align 8
  %369 = call i32 @elog(i32 %367, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i64 %368)
  br label %370

370:                                              ; preds = %366, %358
  %371 = load i32, i32* @TYPEOID, align 4
  %372 = load i32, i32* %36, align 4
  %373 = load i32, i32* @Anum_pg_type_typacl, align 4
  %374 = call i32 @SysCacheGetAttr(i32 %371, i32 %372, i32 %373, i32* %35)
  store i32 %374, i32* %34, align 4
  %375 = load i32, i32* %35, align 4
  %376 = icmp ne i32 %375, 0
  br i1 %376, label %383, label %377

377:                                              ; preds = %370
  %378 = load i64, i64* %3, align 8
  %379 = load i64, i64* %4, align 8
  %380 = load i32, i32* %34, align 4
  %381 = call i32 @DatumGetAclP(i32 %380)
  %382 = call i32 @recordExtensionInitPrivWorker(i64 %378, i64 %379, i32 0, i32 %381)
  br label %383

383:                                              ; preds = %377, %370
  %384 = load i32, i32* %36, align 4
  %385 = call i32 @ReleaseSysCache(i32 %384)
  br label %452

386:                                              ; preds = %354
  %387 = load i64, i64* %4, align 8
  %388 = load i64, i64* @AccessMethodRelationId, align 8
  %389 = icmp eq i64 %387, %388
  br i1 %389, label %446, label %390

390:                                              ; preds = %386
  %391 = load i64, i64* %4, align 8
  %392 = load i64, i64* @AggregateRelationId, align 8
  %393 = icmp eq i64 %391, %392
  br i1 %393, label %446, label %394

394:                                              ; preds = %390
  %395 = load i64, i64* %4, align 8
  %396 = load i64, i64* @CastRelationId, align 8
  %397 = icmp eq i64 %395, %396
  br i1 %397, label %446, label %398

398:                                              ; preds = %394
  %399 = load i64, i64* %4, align 8
  %400 = load i64, i64* @CollationRelationId, align 8
  %401 = icmp eq i64 %399, %400
  br i1 %401, label %446, label %402

402:                                              ; preds = %398
  %403 = load i64, i64* %4, align 8
  %404 = load i64, i64* @ConversionRelationId, align 8
  %405 = icmp eq i64 %403, %404
  br i1 %405, label %446, label %406

406:                                              ; preds = %402
  %407 = load i64, i64* %4, align 8
  %408 = load i64, i64* @EventTriggerRelationId, align 8
  %409 = icmp eq i64 %407, %408
  br i1 %409, label %446, label %410

410:                                              ; preds = %406
  %411 = load i64, i64* %4, align 8
  %412 = load i64, i64* @OperatorRelationId, align 8
  %413 = icmp eq i64 %411, %412
  br i1 %413, label %446, label %414

414:                                              ; preds = %410
  %415 = load i64, i64* %4, align 8
  %416 = load i64, i64* @OperatorClassRelationId, align 8
  %417 = icmp eq i64 %415, %416
  br i1 %417, label %446, label %418

418:                                              ; preds = %414
  %419 = load i64, i64* %4, align 8
  %420 = load i64, i64* @OperatorFamilyRelationId, align 8
  %421 = icmp eq i64 %419, %420
  br i1 %421, label %446, label %422

422:                                              ; preds = %418
  %423 = load i64, i64* %4, align 8
  %424 = load i64, i64* @NamespaceRelationId, align 8
  %425 = icmp eq i64 %423, %424
  br i1 %425, label %446, label %426

426:                                              ; preds = %422
  %427 = load i64, i64* %4, align 8
  %428 = load i64, i64* @TSConfigRelationId, align 8
  %429 = icmp eq i64 %427, %428
  br i1 %429, label %446, label %430

430:                                              ; preds = %426
  %431 = load i64, i64* %4, align 8
  %432 = load i64, i64* @TSDictionaryRelationId, align 8
  %433 = icmp eq i64 %431, %432
  br i1 %433, label %446, label %434

434:                                              ; preds = %430
  %435 = load i64, i64* %4, align 8
  %436 = load i64, i64* @TSParserRelationId, align 8
  %437 = icmp eq i64 %435, %436
  br i1 %437, label %446, label %438

438:                                              ; preds = %434
  %439 = load i64, i64* %4, align 8
  %440 = load i64, i64* @TSTemplateRelationId, align 8
  %441 = icmp eq i64 %439, %440
  br i1 %441, label %446, label %442

442:                                              ; preds = %438
  %443 = load i64, i64* %4, align 8
  %444 = load i64, i64* @TransformRelationId, align 8
  %445 = icmp eq i64 %443, %444
  br i1 %445, label %446, label %447

446:                                              ; preds = %442, %438, %434, %430, %426, %422, %418, %414, %410, %406, %402, %398, %394, %390, %386
  br label %451

447:                                              ; preds = %442
  %448 = load i32, i32* @ERROR, align 4
  %449 = load i64, i64* %4, align 8
  %450 = call i32 @elog(i32 %448, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0), i64 %449)
  br label %451

451:                                              ; preds = %447, %446
  br label %452

452:                                              ; preds = %451, %383
  br label %453

453:                                              ; preds = %452, %351
  br label %454

454:                                              ; preds = %453, %319
  br label %455

455:                                              ; preds = %454, %287
  br label %456

456:                                              ; preds = %455, %242
  br label %457

457:                                              ; preds = %456, %210
  br label %458

458:                                              ; preds = %457, %178
  br label %459

459:                                              ; preds = %67, %74, %458, %146
  ret void
}

declare dso_local i32 @SearchSysCache1(i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i64) #1

declare dso_local i32 @HeapTupleIsValid(i32) #1

declare dso_local i32 @elog(i32, i8*, i64) #1

declare dso_local i64 @GETSTRUCT(i32) #1

declare dso_local i32 @SearchSysCache2(i32, i32, i32) #1

declare dso_local i32 @Int16GetDatum(i32) #1

declare dso_local i32 @ReleaseSysCache(i32) #1

declare dso_local i32 @SysCacheGetAttr(i32, i32, i32, i32*) #1

declare dso_local i32 @recordExtensionInitPrivWorker(i64, i64, i32, i32) #1

declare dso_local i32 @DatumGetAclP(i32) #1

declare dso_local i32 @table_open(i64, i32) #1

declare dso_local i32 @ScanKeyInit(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @systable_beginscan(i32, i32, i32, i32*, i32, i32*) #1

declare dso_local i32 @systable_getnext(i32) #1

declare dso_local i32 @heap_getattr(i32, i32, i32, i32*) #1

declare dso_local i32 @RelationGetDescr(i32) #1

declare dso_local i32 @systable_endscan(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
