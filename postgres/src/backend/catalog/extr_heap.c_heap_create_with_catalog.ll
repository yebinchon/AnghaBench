; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/catalog/extr_heap.c_heap_create_with_catalog.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/catalog/extr_heap.c_heap_create_with_catalog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i64, i64, i32 }
%struct.TYPE_18__ = type { i32, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i64 }

@InvalidOid = common dso_local global i64 0, align 8
@RelationRelationId = common dso_local global i32 0, align 4
@RowExclusiveLock = common dso_local global i32 0, align 4
@CHKATYPE_ANYARRAY = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_DUPLICATE_TABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"relation \22%s\22 already exists\00", align 1
@TYPENAMENSP = common dso_local global i32 0, align 4
@Anum_pg_type_oid = common dso_local global i32 0, align 4
@ERRCODE_DUPLICATE_OBJECT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"type \22%s\22 already exists\00", align 1
@.str.2 = private unnamed_addr constant [121 x i8] c"A relation has an associated type of the same name, so you must use a name that doesn't conflict with any existing type.\00", align 1
@GLOBALTABLESPACE_OID = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [56 x i8] c"shared relations must be placed in pg_global tablespace\00", align 1
@IsBinaryUpgrade = common dso_local global i64 0, align 8
@RELKIND_COMPOSITE_TYPE = common dso_local global i8 0, align 1
@binary_upgrade_next_heap_pg_class_oid = common dso_local global i64 0, align 8
@ERRCODE_INVALID_PARAMETER_VALUE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [60 x i8] c"pg_class heap OID value not set when in binary upgrade mode\00", align 1
@binary_upgrade_next_toast_pg_class_oid = common dso_local global i64 0, align 8
@RELKIND_TOASTVALUE = common dso_local global i8 0, align 1
@OBJECT_TABLE = common dso_local global i32 0, align 4
@OBJECT_SEQUENCE = common dso_local global i32 0, align 4
@IsUnderPostmaster = common dso_local global i64 0, align 8
@TYPTYPE_BASE = common dso_local global i32 0, align 4
@TYPCATEGORY_ARRAY = common dso_local global i32 0, align 4
@DEFAULT_TYPDELIM = common dso_local global i32 0, align 4
@F_ARRAY_IN = common dso_local global i32 0, align 4
@F_ARRAY_OUT = common dso_local global i32 0, align 4
@F_ARRAY_RECV = common dso_local global i32 0, align 4
@F_ARRAY_SEND = common dso_local global i32 0, align 4
@F_ARRAY_TYPANALYZE = common dso_local global i32 0, align 4
@NamespaceRelationId = common dso_local global i32 0, align 4
@DEPENDENCY_NORMAL = common dso_local global i32 0, align 4
@TypeRelationId = common dso_local global i32 0, align 4
@AccessMethodRelationId = common dso_local global i32 0, align 4
@ONCOMMIT_NOOP = common dso_local global i64 0, align 8
@NoLock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @heap_create_with_catalog(i8* %0, i64 %1, i64 %2, i64 %3, i64 %4, i64 %5, i64 %6, i64 %7, i32 %8, i32* %9, i8 signext %10, i8 signext %11, i32 %12, i32 %13, i64 %14, i32 %15, i32 %16, i32 %17, i32 %18, i64 %19, %struct.TYPE_19__* %20) #0 {
  %22 = alloca i8*, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  %30 = alloca i32, align 4
  %31 = alloca i32*, align 8
  %32 = alloca i8, align 1
  %33 = alloca i8, align 1
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i64, align 8
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  %41 = alloca i64, align 8
  %42 = alloca %struct.TYPE_19__*, align 8
  %43 = alloca %struct.TYPE_18__*, align 8
  %44 = alloca %struct.TYPE_18__*, align 8
  %45 = alloca i32*, align 8
  %46 = alloca i64, align 8
  %47 = alloca i64, align 8
  %48 = alloca i64, align 8
  %49 = alloca %struct.TYPE_19__, align 8
  %50 = alloca i64, align 8
  %51 = alloca i32, align 4
  %52 = alloca i32, align 4
  %53 = alloca %struct.TYPE_19__, align 8
  %54 = alloca i8*, align 8
  %55 = alloca %struct.TYPE_19__, align 8
  %56 = alloca %struct.TYPE_19__, align 8
  store i8* %0, i8** %22, align 8
  store i64 %1, i64* %23, align 8
  store i64 %2, i64* %24, align 8
  store i64 %3, i64* %25, align 8
  store i64 %4, i64* %26, align 8
  store i64 %5, i64* %27, align 8
  store i64 %6, i64* %28, align 8
  store i64 %7, i64* %29, align 8
  store i32 %8, i32* %30, align 4
  store i32* %9, i32** %31, align 8
  store i8 %10, i8* %32, align 1
  store i8 %11, i8* %33, align 1
  store i32 %12, i32* %34, align 4
  store i32 %13, i32* %35, align 4
  store i64 %14, i64* %36, align 8
  store i32 %15, i32* %37, align 4
  store i32 %16, i32* %38, align 4
  store i32 %17, i32* %39, align 4
  store i32 %18, i32* %40, align 4
  store i64 %19, i64* %41, align 8
  store %struct.TYPE_19__* %20, %struct.TYPE_19__** %42, align 8
  %57 = load i64, i64* @InvalidOid, align 8
  store i64 %57, i64* %50, align 8
  %58 = load i32, i32* @RelationRelationId, align 4
  %59 = load i32, i32* @RowExclusiveLock, align 4
  %60 = call %struct.TYPE_18__* @table_open(i32 %58, i32 %59)
  store %struct.TYPE_18__* %60, %struct.TYPE_18__** %43, align 8
  %61 = call i64 (...) @IsNormalProcessingMode()
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %66, label %63

63:                                               ; preds = %21
  %64 = call i64 (...) @IsBootstrapProcessingMode()
  %65 = icmp ne i64 %64, 0
  br label %66

66:                                               ; preds = %63, %21
  %67 = phi i1 [ true, %21 ], [ %65, %63 ]
  %68 = zext i1 %67 to i32
  %69 = call i32 @Assert(i32 %68)
  %70 = load i32, i32* %30, align 4
  %71 = load i8, i8* %32, align 1
  %72 = load i32, i32* %39, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %66
  %75 = load i32, i32* @CHKATYPE_ANYARRAY, align 4
  br label %77

76:                                               ; preds = %66
  br label %77

77:                                               ; preds = %76, %74
  %78 = phi i32 [ %75, %74 ], [ 0, %76 ]
  %79 = call i32 @CheckAttributeNamesTypes(i32 %70, i8 signext %71, i32 %78)
  %80 = load i8*, i8** %22, align 8
  %81 = load i64, i64* %23, align 8
  %82 = call i64 @get_relname_relid(i8* %80, i64 %81)
  store i64 %82, i64* %46, align 8
  %83 = load i64, i64* %46, align 8
  %84 = load i64, i64* @InvalidOid, align 8
  %85 = icmp ne i64 %83, %84
  br i1 %85, label %86, label %93

86:                                               ; preds = %77
  %87 = load i32, i32* @ERROR, align 4
  %88 = load i32, i32* @ERRCODE_DUPLICATE_TABLE, align 4
  %89 = call i32 @errcode(i32 %88)
  %90 = load i8*, i8** %22, align 8
  %91 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* %90)
  %92 = call i32 @ereport(i32 %87, i32 %91)
  br label %93

93:                                               ; preds = %86, %77
  %94 = load i32, i32* @TYPENAMENSP, align 4
  %95 = load i32, i32* @Anum_pg_type_oid, align 4
  %96 = load i8*, i8** %22, align 8
  %97 = call i32 @CStringGetDatum(i8* %96)
  %98 = load i64, i64* %23, align 8
  %99 = call i32 @ObjectIdGetDatum(i64 %98)
  %100 = call i64 @GetSysCacheOid2(i32 %94, i32 %95, i32 %97, i32 %99)
  store i64 %100, i64* %47, align 8
  %101 = load i64, i64* %47, align 8
  %102 = call i64 @OidIsValid(i64 %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %119

104:                                              ; preds = %93
  %105 = load i64, i64* %47, align 8
  %106 = load i8*, i8** %22, align 8
  %107 = load i64, i64* %23, align 8
  %108 = call i32 @moveArrayTypeName(i64 %105, i8* %106, i64 %107)
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %118, label %110

110:                                              ; preds = %104
  %111 = load i32, i32* @ERROR, align 4
  %112 = load i32, i32* @ERRCODE_DUPLICATE_OBJECT, align 4
  %113 = call i32 @errcode(i32 %112)
  %114 = load i8*, i8** %22, align 8
  %115 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i8* %114)
  %116 = call i32 @errhint(i8* getelementptr inbounds ([121 x i8], [121 x i8]* @.str.2, i64 0, i64 0))
  %117 = call i32 @ereport(i32 %111, i32 %116)
  br label %118

118:                                              ; preds = %110, %104
  br label %119

119:                                              ; preds = %118, %93
  %120 = load i32, i32* %34, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %129

122:                                              ; preds = %119
  %123 = load i64, i64* %24, align 8
  %124 = load i64, i64* @GLOBALTABLESPACE_OID, align 8
  %125 = icmp ne i64 %123, %124
  br i1 %125, label %126, label %129

126:                                              ; preds = %122
  %127 = load i32, i32* @ERROR, align 4
  %128 = call i32 @elog(i32 %127, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.3, i64 0, i64 0))
  br label %129

129:                                              ; preds = %126, %122, %119
  %130 = load i64, i64* %25, align 8
  %131 = call i64 @OidIsValid(i64 %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %202, label %133

133:                                              ; preds = %129
  %134 = load i64, i64* @IsBinaryUpgrade, align 8
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %179

136:                                              ; preds = %133
  %137 = load i8, i8* %32, align 1
  %138 = sext i8 %137 to i32
  %139 = icmp eq i32 %138, 130
  br i1 %139, label %166, label %140

140:                                              ; preds = %136
  %141 = load i8, i8* %32, align 1
  %142 = sext i8 %141 to i32
  %143 = icmp eq i32 %142, 129
  br i1 %143, label %166, label %144

144:                                              ; preds = %140
  %145 = load i8, i8* %32, align 1
  %146 = sext i8 %145 to i32
  %147 = icmp eq i32 %146, 128
  br i1 %147, label %166, label %148

148:                                              ; preds = %144
  %149 = load i8, i8* %32, align 1
  %150 = sext i8 %149 to i32
  %151 = icmp eq i32 %150, 132
  br i1 %151, label %166, label %152

152:                                              ; preds = %148
  %153 = load i8, i8* %32, align 1
  %154 = sext i8 %153 to i32
  %155 = load i8, i8* @RELKIND_COMPOSITE_TYPE, align 1
  %156 = sext i8 %155 to i32
  %157 = icmp eq i32 %154, %156
  br i1 %157, label %166, label %158

158:                                              ; preds = %152
  %159 = load i8, i8* %32, align 1
  %160 = sext i8 %159 to i32
  %161 = icmp eq i32 %160, 133
  br i1 %161, label %166, label %162

162:                                              ; preds = %158
  %163 = load i8, i8* %32, align 1
  %164 = sext i8 %163 to i32
  %165 = icmp eq i32 %164, 131
  br i1 %165, label %166, label %179

166:                                              ; preds = %162, %158, %152, %148, %144, %140, %136
  %167 = load i64, i64* @binary_upgrade_next_heap_pg_class_oid, align 8
  %168 = call i64 @OidIsValid(i64 %167)
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %176, label %170

170:                                              ; preds = %166
  %171 = load i32, i32* @ERROR, align 4
  %172 = load i32, i32* @ERRCODE_INVALID_PARAMETER_VALUE, align 4
  %173 = call i32 @errcode(i32 %172)
  %174 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.4, i64 0, i64 0))
  %175 = call i32 @ereport(i32 %171, i32 %174)
  br label %176

176:                                              ; preds = %170, %166
  %177 = load i64, i64* @binary_upgrade_next_heap_pg_class_oid, align 8
  store i64 %177, i64* %25, align 8
  %178 = load i64, i64* @InvalidOid, align 8
  store i64 %178, i64* @binary_upgrade_next_heap_pg_class_oid, align 8
  br label %201

179:                                              ; preds = %162, %133
  %180 = load i64, i64* @IsBinaryUpgrade, align 8
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %195

182:                                              ; preds = %179
  %183 = load i64, i64* @binary_upgrade_next_toast_pg_class_oid, align 8
  %184 = call i64 @OidIsValid(i64 %183)
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %195

186:                                              ; preds = %182
  %187 = load i8, i8* %32, align 1
  %188 = sext i8 %187 to i32
  %189 = load i8, i8* @RELKIND_TOASTVALUE, align 1
  %190 = sext i8 %189 to i32
  %191 = icmp eq i32 %188, %190
  br i1 %191, label %192, label %195

192:                                              ; preds = %186
  %193 = load i64, i64* @binary_upgrade_next_toast_pg_class_oid, align 8
  store i64 %193, i64* %25, align 8
  %194 = load i64, i64* @InvalidOid, align 8
  store i64 %194, i64* @binary_upgrade_next_toast_pg_class_oid, align 8
  br label %200

195:                                              ; preds = %186, %182, %179
  %196 = load i64, i64* %24, align 8
  %197 = load %struct.TYPE_18__*, %struct.TYPE_18__** %43, align 8
  %198 = load i8, i8* %33, align 1
  %199 = call i64 @GetNewRelFileNode(i64 %196, %struct.TYPE_18__* %197, i8 signext %198)
  store i64 %199, i64* %25, align 8
  br label %200

200:                                              ; preds = %195, %192
  br label %201

201:                                              ; preds = %200, %176
  br label %202

202:                                              ; preds = %201, %129
  %203 = load i32, i32* %38, align 4
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %220

205:                                              ; preds = %202
  %206 = load i8, i8* %32, align 1
  %207 = sext i8 %206 to i32
  switch i32 %207, label %218 [
    i32 130, label %208
    i32 128, label %208
    i32 132, label %208
    i32 133, label %208
    i32 131, label %208
    i32 129, label %213
  ]

208:                                              ; preds = %205, %205, %205, %205, %205
  %209 = load i32, i32* @OBJECT_TABLE, align 4
  %210 = load i64, i64* %28, align 8
  %211 = load i64, i64* %23, align 8
  %212 = call i32* @get_user_default_acl(i32 %209, i64 %210, i64 %211)
  store i32* %212, i32** %45, align 8
  br label %219

213:                                              ; preds = %205
  %214 = load i32, i32* @OBJECT_SEQUENCE, align 4
  %215 = load i64, i64* %28, align 8
  %216 = load i64, i64* %23, align 8
  %217 = call i32* @get_user_default_acl(i32 %214, i64 %215, i64 %216)
  store i32* %217, i32** %45, align 8
  br label %219

218:                                              ; preds = %205
  store i32* null, i32** %45, align 8
  br label %219

219:                                              ; preds = %218, %213, %208
  br label %221

220:                                              ; preds = %202
  store i32* null, i32** %45, align 8
  br label %221

221:                                              ; preds = %220, %219
  %222 = load i8*, i8** %22, align 8
  %223 = load i64, i64* %23, align 8
  %224 = load i64, i64* %24, align 8
  %225 = load i64, i64* %25, align 8
  %226 = load i64, i64* @InvalidOid, align 8
  %227 = load i64, i64* %29, align 8
  %228 = load i32, i32* %30, align 4
  %229 = load i8, i8* %32, align 1
  %230 = load i8, i8* %33, align 1
  %231 = load i32, i32* %34, align 4
  %232 = load i32, i32* %35, align 4
  %233 = load i32, i32* %39, align 4
  %234 = call %struct.TYPE_18__* @heap_create(i8* %222, i64 %223, i64 %224, i64 %225, i64 %226, i64 %227, i32 %228, i8 signext %229, i8 signext %230, i32 %231, i32 %232, i32 %233, i32* %51, i32* %52)
  store %struct.TYPE_18__* %234, %struct.TYPE_18__** %44, align 8
  %235 = load i64, i64* %25, align 8
  %236 = load %struct.TYPE_18__*, %struct.TYPE_18__** %44, align 8
  %237 = call i64 @RelationGetRelid(%struct.TYPE_18__* %236)
  %238 = icmp eq i64 %235, %237
  %239 = zext i1 %238 to i32
  %240 = call i32 @Assert(i32 %239)
  %241 = load i64, i64* %41, align 8
  %242 = load %struct.TYPE_18__*, %struct.TYPE_18__** %44, align 8
  %243 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %242, i32 0, i32 1
  %244 = load %struct.TYPE_17__*, %struct.TYPE_17__** %243, align 8
  %245 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %244, i32 0, i32 0
  store i64 %241, i64* %245, align 8
  %246 = load i64, i64* @IsUnderPostmaster, align 8
  %247 = icmp ne i64 %246, 0
  br i1 %247, label %248, label %276

248:                                              ; preds = %221
  %249 = load i8, i8* %32, align 1
  %250 = sext i8 %249 to i32
  %251 = icmp eq i32 %250, 130
  br i1 %251, label %274, label %252

252:                                              ; preds = %248
  %253 = load i8, i8* %32, align 1
  %254 = sext i8 %253 to i32
  %255 = icmp eq i32 %254, 128
  br i1 %255, label %274, label %256

256:                                              ; preds = %252
  %257 = load i8, i8* %32, align 1
  %258 = sext i8 %257 to i32
  %259 = icmp eq i32 %258, 132
  br i1 %259, label %274, label %260

260:                                              ; preds = %256
  %261 = load i8, i8* %32, align 1
  %262 = sext i8 %261 to i32
  %263 = icmp eq i32 %262, 133
  br i1 %263, label %274, label %264

264:                                              ; preds = %260
  %265 = load i8, i8* %32, align 1
  %266 = sext i8 %265 to i32
  %267 = load i8, i8* @RELKIND_COMPOSITE_TYPE, align 1
  %268 = sext i8 %267 to i32
  %269 = icmp eq i32 %266, %268
  br i1 %269, label %274, label %270

270:                                              ; preds = %264
  %271 = load i8, i8* %32, align 1
  %272 = sext i8 %271 to i32
  %273 = icmp eq i32 %272, 131
  br i1 %273, label %274, label %276

274:                                              ; preds = %270, %264, %260, %256, %252, %248
  %275 = call i64 (...) @AssignTypeArrayOid()
  store i64 %275, i64* %50, align 8
  br label %276

276:                                              ; preds = %274, %270, %221
  %277 = load i8*, i8** %22, align 8
  %278 = load i64, i64* %23, align 8
  %279 = load i64, i64* %25, align 8
  %280 = load i8, i8* %32, align 1
  %281 = load i64, i64* %28, align 8
  %282 = load i64, i64* %26, align 8
  %283 = load i64, i64* %50, align 8
  call void @AddNewRelationType(%struct.TYPE_19__* sret %53, i8* %277, i64 %278, i64 %279, i8 signext %280, i64 %281, i64 %282, i64 %283)
  %284 = bitcast %struct.TYPE_19__* %49 to i8*
  %285 = bitcast %struct.TYPE_19__* %53 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %284, i8* align 8 %285, i64 24, i1 false)
  %286 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %49, i32 0, i32 0
  %287 = load i64, i64* %286, align 8
  store i64 %287, i64* %48, align 8
  %288 = load %struct.TYPE_19__*, %struct.TYPE_19__** %42, align 8
  %289 = icmp ne %struct.TYPE_19__* %288, null
  br i1 %289, label %290, label %294

290:                                              ; preds = %276
  %291 = load %struct.TYPE_19__*, %struct.TYPE_19__** %42, align 8
  %292 = bitcast %struct.TYPE_19__* %291 to i8*
  %293 = bitcast %struct.TYPE_19__* %49 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %292, i8* align 8 %293, i64 24, i1 false)
  br label %294

294:                                              ; preds = %290, %276
  %295 = load i64, i64* %50, align 8
  %296 = call i64 @OidIsValid(i64 %295)
  %297 = icmp ne i64 %296, 0
  br i1 %297, label %298, label %324

298:                                              ; preds = %294
  %299 = load i8*, i8** %22, align 8
  %300 = load i64, i64* %23, align 8
  %301 = call i8* @makeArrayTypeName(i8* %299, i64 %300)
  store i8* %301, i8** %54, align 8
  %302 = load i64, i64* %50, align 8
  %303 = load i8*, i8** %54, align 8
  %304 = load i64, i64* %23, align 8
  %305 = load i64, i64* @InvalidOid, align 8
  %306 = load i64, i64* %28, align 8
  %307 = load i32, i32* @TYPTYPE_BASE, align 4
  %308 = load i32, i32* @TYPCATEGORY_ARRAY, align 4
  %309 = load i32, i32* @DEFAULT_TYPDELIM, align 4
  %310 = load i32, i32* @F_ARRAY_IN, align 4
  %311 = load i32, i32* @F_ARRAY_OUT, align 4
  %312 = load i32, i32* @F_ARRAY_RECV, align 4
  %313 = load i32, i32* @F_ARRAY_SEND, align 4
  %314 = load i64, i64* @InvalidOid, align 8
  %315 = load i64, i64* @InvalidOid, align 8
  %316 = load i32, i32* @F_ARRAY_TYPANALYZE, align 4
  %317 = load i64, i64* %48, align 8
  %318 = load i64, i64* @InvalidOid, align 8
  %319 = load i64, i64* @InvalidOid, align 8
  %320 = load i64, i64* @InvalidOid, align 8
  %321 = call i32 @TypeCreate(i64 %302, i8* %303, i64 %304, i64 %305, i32 0, i64 %306, i32 -1, i32 %307, i32 %308, i32 0, i32 %309, i32 %310, i32 %311, i32 %312, i32 %313, i64 %314, i64 %315, i32 %316, i64 %317, i32 1, i64 %318, i64 %319, i32* null, i32* null, i32 0, i8 signext 100, i8 signext 120, i32 -1, i32 0, i32 0, i64 %320)
  %322 = load i8*, i8** %54, align 8
  %323 = call i32 @pfree(i8* %322)
  br label %324

324:                                              ; preds = %298, %294
  %325 = load %struct.TYPE_18__*, %struct.TYPE_18__** %43, align 8
  %326 = load %struct.TYPE_18__*, %struct.TYPE_18__** %44, align 8
  %327 = load i64, i64* %25, align 8
  %328 = load i64, i64* %48, align 8
  %329 = load i64, i64* %27, align 8
  %330 = load i64, i64* %28, align 8
  %331 = load i8, i8* %32, align 1
  %332 = load i32, i32* %51, align 4
  %333 = load i32, i32* %52, align 4
  %334 = load i32*, i32** %45, align 8
  %335 = call i32 @PointerGetDatum(i32* %334)
  %336 = load i32, i32* %37, align 4
  %337 = call i32 @AddNewRelationTuple(%struct.TYPE_18__* %325, %struct.TYPE_18__* %326, i64 %327, i64 %328, i64 %329, i64 %330, i8 signext %331, i32 %332, i32 %333, i32 %335, i32 %336)
  %338 = load i64, i64* %25, align 8
  %339 = load %struct.TYPE_18__*, %struct.TYPE_18__** %44, align 8
  %340 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %339, i32 0, i32 0
  %341 = load i32, i32* %340, align 8
  %342 = load i8, i8* %32, align 1
  %343 = call i32 @AddNewAttributeTuples(i64 %338, i32 %341, i8 signext %342)
  %344 = load i8, i8* %32, align 1
  %345 = sext i8 %344 to i32
  %346 = load i8, i8* @RELKIND_COMPOSITE_TYPE, align 1
  %347 = sext i8 %346 to i32
  %348 = icmp ne i32 %345, %347
  br i1 %348, label %349, label %408

349:                                              ; preds = %324
  %350 = load i8, i8* %32, align 1
  %351 = sext i8 %350 to i32
  %352 = load i8, i8* @RELKIND_TOASTVALUE, align 1
  %353 = sext i8 %352 to i32
  %354 = icmp ne i32 %351, %353
  br i1 %354, label %355, label %408

355:                                              ; preds = %349
  %356 = call i64 (...) @IsBootstrapProcessingMode()
  %357 = icmp ne i64 %356, 0
  br i1 %357, label %408, label %358

358:                                              ; preds = %355
  %359 = load i32, i32* @RelationRelationId, align 4
  %360 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %55, i32 0, i32 2
  store i32 %359, i32* %360, align 8
  %361 = load i64, i64* %25, align 8
  %362 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %55, i32 0, i32 0
  store i64 %361, i64* %362, align 8
  %363 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %55, i32 0, i32 1
  store i64 0, i64* %363, align 8
  %364 = load i32, i32* @NamespaceRelationId, align 4
  %365 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %56, i32 0, i32 2
  store i32 %364, i32* %365, align 8
  %366 = load i64, i64* %23, align 8
  %367 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %56, i32 0, i32 0
  store i64 %366, i64* %367, align 8
  %368 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %56, i32 0, i32 1
  store i64 0, i64* %368, align 8
  %369 = load i32, i32* @DEPENDENCY_NORMAL, align 4
  %370 = call i32 @recordDependencyOn(%struct.TYPE_19__* %55, %struct.TYPE_19__* %56, i32 %369)
  %371 = load i32, i32* @RelationRelationId, align 4
  %372 = load i64, i64* %25, align 8
  %373 = load i64, i64* %28, align 8
  %374 = call i32 @recordDependencyOnOwner(i32 %371, i64 %372, i64 %373)
  %375 = load i32, i32* @RelationRelationId, align 4
  %376 = load i64, i64* %25, align 8
  %377 = load i64, i64* %28, align 8
  %378 = load i32*, i32** %45, align 8
  %379 = call i32 @recordDependencyOnNewAcl(i32 %375, i64 %376, i32 0, i64 %377, i32* %378)
  %380 = call i32 @recordDependencyOnCurrentExtension(%struct.TYPE_19__* %55, i32 0)
  %381 = load i64, i64* %27, align 8
  %382 = icmp ne i64 %381, 0
  br i1 %382, label %383, label %391

383:                                              ; preds = %358
  %384 = load i32, i32* @TypeRelationId, align 4
  %385 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %56, i32 0, i32 2
  store i32 %384, i32* %385, align 8
  %386 = load i64, i64* %27, align 8
  %387 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %56, i32 0, i32 0
  store i64 %386, i64* %387, align 8
  %388 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %56, i32 0, i32 1
  store i64 0, i64* %388, align 8
  %389 = load i32, i32* @DEPENDENCY_NORMAL, align 4
  %390 = call i32 @recordDependencyOn(%struct.TYPE_19__* %55, %struct.TYPE_19__* %56, i32 %389)
  br label %391

391:                                              ; preds = %383, %358
  %392 = load i8, i8* %32, align 1
  %393 = sext i8 %392 to i32
  %394 = icmp eq i32 %393, 130
  br i1 %394, label %399, label %395

395:                                              ; preds = %391
  %396 = load i8, i8* %32, align 1
  %397 = sext i8 %396 to i32
  %398 = icmp eq i32 %397, 132
  br i1 %398, label %399, label %407

399:                                              ; preds = %395, %391
  %400 = load i32, i32* @AccessMethodRelationId, align 4
  %401 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %56, i32 0, i32 2
  store i32 %400, i32* %401, align 8
  %402 = load i64, i64* %29, align 8
  %403 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %56, i32 0, i32 0
  store i64 %402, i64* %403, align 8
  %404 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %56, i32 0, i32 1
  store i64 0, i64* %404, align 8
  %405 = load i32, i32* @DEPENDENCY_NORMAL, align 4
  %406 = call i32 @recordDependencyOn(%struct.TYPE_19__* %55, %struct.TYPE_19__* %56, i32 %405)
  br label %407

407:                                              ; preds = %399, %395
  br label %408

408:                                              ; preds = %407, %355, %349, %324
  %409 = load i32, i32* @RelationRelationId, align 4
  %410 = load i64, i64* %25, align 8
  %411 = load i32, i32* %40, align 4
  %412 = call i32 @InvokeObjectPostCreateHookArg(i32 %409, i64 %410, i32 0, i32 %411)
  %413 = load %struct.TYPE_18__*, %struct.TYPE_18__** %44, align 8
  %414 = load i32*, i32** %31, align 8
  %415 = load i32, i32* %40, align 4
  %416 = call i32 @StoreConstraints(%struct.TYPE_18__* %413, i32* %414, i32 %415)
  %417 = load i64, i64* %36, align 8
  %418 = load i64, i64* @ONCOMMIT_NOOP, align 8
  %419 = icmp ne i64 %417, %418
  br i1 %419, label %420, label %424

420:                                              ; preds = %408
  %421 = load i64, i64* %25, align 8
  %422 = load i64, i64* %36, align 8
  %423 = call i32 @register_on_commit_action(i64 %421, i64 %422)
  br label %424

424:                                              ; preds = %420, %408
  %425 = load %struct.TYPE_18__*, %struct.TYPE_18__** %44, align 8
  %426 = load i32, i32* @NoLock, align 4
  %427 = call i32 @table_close(%struct.TYPE_18__* %425, i32 %426)
  %428 = load %struct.TYPE_18__*, %struct.TYPE_18__** %43, align 8
  %429 = load i32, i32* @RowExclusiveLock, align 4
  %430 = call i32 @table_close(%struct.TYPE_18__* %428, i32 %429)
  %431 = load i64, i64* %25, align 8
  ret i64 %431
}

declare dso_local %struct.TYPE_18__* @table_open(i32, i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i64 @IsNormalProcessingMode(...) #1

declare dso_local i64 @IsBootstrapProcessingMode(...) #1

declare dso_local i32 @CheckAttributeNamesTypes(i32, i8 signext, i32) #1

declare dso_local i64 @get_relname_relid(i8*, i64) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, ...) #1

declare dso_local i64 @GetSysCacheOid2(i32, i32, i32, i32) #1

declare dso_local i32 @CStringGetDatum(i8*) #1

declare dso_local i32 @ObjectIdGetDatum(i64) #1

declare dso_local i64 @OidIsValid(i64) #1

declare dso_local i32 @moveArrayTypeName(i64, i8*, i64) #1

declare dso_local i32 @errhint(i8*) #1

declare dso_local i32 @elog(i32, i8*) #1

declare dso_local i64 @GetNewRelFileNode(i64, %struct.TYPE_18__*, i8 signext) #1

declare dso_local i32* @get_user_default_acl(i32, i64, i64) #1

declare dso_local %struct.TYPE_18__* @heap_create(i8*, i64, i64, i64, i64, i64, i32, i8 signext, i8 signext, i32, i32, i32, i32*, i32*) #1

declare dso_local i64 @RelationGetRelid(%struct.TYPE_18__*) #1

declare dso_local i64 @AssignTypeArrayOid(...) #1

declare dso_local void @AddNewRelationType(%struct.TYPE_19__* sret, i8*, i64, i64, i8 signext, i64, i64, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i8* @makeArrayTypeName(i8*, i64) #1

declare dso_local i32 @TypeCreate(i64, i8*, i64, i64, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i64, i32, i64, i64, i32*, i32*, i32, i8 signext, i8 signext, i32, i32, i32, i64) #1

declare dso_local i32 @pfree(i8*) #1

declare dso_local i32 @AddNewRelationTuple(%struct.TYPE_18__*, %struct.TYPE_18__*, i64, i64, i64, i64, i8 signext, i32, i32, i32, i32) #1

declare dso_local i32 @PointerGetDatum(i32*) #1

declare dso_local i32 @AddNewAttributeTuples(i64, i32, i8 signext) #1

declare dso_local i32 @recordDependencyOn(%struct.TYPE_19__*, %struct.TYPE_19__*, i32) #1

declare dso_local i32 @recordDependencyOnOwner(i32, i64, i64) #1

declare dso_local i32 @recordDependencyOnNewAcl(i32, i64, i32, i64, i32*) #1

declare dso_local i32 @recordDependencyOnCurrentExtension(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @InvokeObjectPostCreateHookArg(i32, i64, i32, i32) #1

declare dso_local i32 @StoreConstraints(%struct.TYPE_18__*, i32*, i32) #1

declare dso_local i32 @register_on_commit_action(i64, i64) #1

declare dso_local i32 @table_close(%struct.TYPE_18__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
