; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_extension.c_AlterExtensionNamespace.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_extension.c_AlterExtensionNamespace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64, i32, i32 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_17__ = type { i64, i32, i32 }
%struct.TYPE_18__ = type { i64, i64, i32, i32 }

@InvalidOid = common dso_local global i64 0, align 8
@ACLCHECK_NOT_OWNER = common dso_local global i64 0, align 8
@OBJECT_EXTENSION = common dso_local global i32 0, align 4
@ACL_CREATE = common dso_local global i32 0, align 4
@ACLCHECK_OK = common dso_local global i64 0, align 8
@OBJECT_SCHEMA = common dso_local global i32 0, align 4
@NamespaceRelationId = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [86 x i8] c"cannot move extension \22%s\22 into schema \22%s\22 because the extension contains the schema\00", align 1
@ExtensionRelationId = common dso_local global i64 0, align 8
@RowExclusiveLock = common dso_local global i32 0, align 4
@Anum_pg_extension_oid = common dso_local global i32 0, align 4
@BTEqualStrategyNumber = common dso_local global i32 0, align 4
@F_OIDEQ = common dso_local global i32 0, align 4
@ExtensionOidIndexId = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"could not find tuple for extension %u\00", align 1
@InvalidObjectAddress = common dso_local global %struct.TYPE_15__ zeroinitializer, align 8
@ERRCODE_FEATURE_NOT_SUPPORTED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"extension \22%s\22 does not support SET SCHEMA\00", align 1
@DependRelationId = common dso_local global i64 0, align 8
@AccessShareLock = common dso_local global i32 0, align 4
@Anum_pg_depend_refclassid = common dso_local global i32 0, align 4
@Anum_pg_depend_refobjid = common dso_local global i32 0, align 4
@DependReferenceIndexId = common dso_local global i32 0, align 4
@DEPENDENCY_EXTENSION = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [50 x i8] c"extension should not have a sub-object dependency\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"%s is not in the extension's schema \22%s\22\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @AlterExtensionNamespace(i8* %0, i8* %1, i64* %2) #0 {
  %4 = alloca %struct.TYPE_15__, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca [2 x i32], align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_16__*, align 8
  %16 = alloca %struct.TYPE_17__*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_16__*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca %struct.TYPE_15__, align 8
  %22 = alloca %struct.TYPE_18__*, align 8
  %23 = alloca %struct.TYPE_15__, align 8
  %24 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64* %2, i64** %7, align 8
  %25 = load i64, i64* @InvalidOid, align 8
  store i64 %25, i64* %10, align 8
  %26 = load i8*, i8** %5, align 8
  %27 = call i64 @get_extension_oid(i8* %26, i32 0)
  store i64 %27, i64* %8, align 8
  %28 = load i8*, i8** %6, align 8
  %29 = call i64 @LookupCreationNamespace(i8* %28)
  store i64 %29, i64* %9, align 8
  %30 = load i64, i64* %8, align 8
  %31 = call i32 (...) @GetUserId()
  %32 = call i32 @pg_extension_ownercheck(i64 %30, i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %39, label %34

34:                                               ; preds = %3
  %35 = load i64, i64* @ACLCHECK_NOT_OWNER, align 8
  %36 = load i32, i32* @OBJECT_EXTENSION, align 4
  %37 = load i8*, i8** %5, align 8
  %38 = call i32 @aclcheck_error(i64 %35, i32 %36, i8* %37)
  br label %39

39:                                               ; preds = %34, %3
  %40 = load i64, i64* %9, align 8
  %41 = call i32 (...) @GetUserId()
  %42 = load i32, i32* @ACL_CREATE, align 4
  %43 = call i64 @pg_namespace_aclcheck(i64 %40, i32 %41, i32 %42)
  store i64 %43, i64* %11, align 8
  %44 = load i64, i64* %11, align 8
  %45 = load i64, i64* @ACLCHECK_OK, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %52

47:                                               ; preds = %39
  %48 = load i64, i64* %11, align 8
  %49 = load i32, i32* @OBJECT_SCHEMA, align 4
  %50 = load i8*, i8** %6, align 8
  %51 = call i32 @aclcheck_error(i64 %48, i32 %49, i8* %50)
  br label %52

52:                                               ; preds = %47, %39
  %53 = load i32, i32* @NamespaceRelationId, align 4
  %54 = load i64, i64* %9, align 8
  %55 = call i64 @getExtensionOfObject(i32 %53, i64 %54)
  %56 = load i64, i64* %8, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %66

58:                                               ; preds = %52
  %59 = load i32, i32* @ERROR, align 4
  %60 = load i32, i32* @ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE, align 4
  %61 = call i32 @errcode(i32 %60)
  %62 = load i8*, i8** %5, align 8
  %63 = load i8*, i8** %6, align 8
  %64 = call i32 (i8*, i8*, ...) @errmsg(i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str, i64 0, i64 0), i8* %62, i8* %63)
  %65 = call i32 @ereport(i32 %59, i32 %64)
  br label %66

66:                                               ; preds = %58, %52
  %67 = load i64, i64* @ExtensionRelationId, align 8
  %68 = load i32, i32* @RowExclusiveLock, align 4
  %69 = call i32 @table_open(i64 %67, i32 %68)
  store i32 %69, i32* %12, align 4
  %70 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 0
  %71 = load i32, i32* @Anum_pg_extension_oid, align 4
  %72 = load i32, i32* @BTEqualStrategyNumber, align 4
  %73 = load i32, i32* @F_OIDEQ, align 4
  %74 = load i64, i64* %8, align 8
  %75 = call i32 @ObjectIdGetDatum(i64 %74)
  %76 = call i32 @ScanKeyInit(i32* %70, i32 %71, i32 %72, i32 %73, i32 %75)
  %77 = load i32, i32* %12, align 4
  %78 = load i32, i32* @ExtensionOidIndexId, align 4
  %79 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 0
  %80 = call i32 @systable_beginscan(i32 %77, i32 %78, i32 1, i32* null, i32 1, i32* %79)
  store i32 %80, i32* %14, align 4
  %81 = load i32, i32* %14, align 4
  %82 = call %struct.TYPE_16__* @systable_getnext(i32 %81)
  store %struct.TYPE_16__* %82, %struct.TYPE_16__** %15, align 8
  %83 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %84 = call i64 @HeapTupleIsValid(%struct.TYPE_16__* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %90, label %86

86:                                               ; preds = %66
  %87 = load i32, i32* @ERROR, align 4
  %88 = load i64, i64* %8, align 8
  %89 = call i32 (i32, i8*, ...) @elog(i32 %87, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i64 %88)
  br label %90

90:                                               ; preds = %86, %66
  %91 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %92 = call %struct.TYPE_16__* @heap_copytuple(%struct.TYPE_16__* %91)
  store %struct.TYPE_16__* %92, %struct.TYPE_16__** %15, align 8
  %93 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %94 = call i64 @GETSTRUCT(%struct.TYPE_16__* %93)
  %95 = inttoptr i64 %94 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %95, %struct.TYPE_17__** %16, align 8
  %96 = load i32, i32* %14, align 4
  %97 = call i32 @systable_endscan(i32 %96)
  %98 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %99 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* %9, align 8
  %102 = icmp eq i64 %100, %101
  br i1 %102, label %103, label %108

103:                                              ; preds = %90
  %104 = load i32, i32* %12, align 4
  %105 = load i32, i32* @RowExclusiveLock, align 4
  %106 = call i32 @table_close(i32 %104, i32 %105)
  %107 = bitcast %struct.TYPE_15__* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %107, i8* align 8 bitcast (%struct.TYPE_15__* @InvalidObjectAddress to i8*), i64 16, i1 false)
  br label %266

108:                                              ; preds = %90
  %109 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %110 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %125, label %113

113:                                              ; preds = %108
  %114 = load i32, i32* @ERROR, align 4
  %115 = load i32, i32* @ERRCODE_FEATURE_NOT_SUPPORTED, align 4
  %116 = call i32 @errcode(i32 %115)
  %117 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %118 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 8
  %120 = call i32 @NameStr(i32 %119)
  %121 = sext i32 %120 to i64
  %122 = inttoptr i64 %121 to i8*
  %123 = call i32 (i8*, i8*, ...) @errmsg(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i8* %122)
  %124 = call i32 @ereport(i32 %114, i32 %123)
  br label %125

125:                                              ; preds = %113, %108
  %126 = call i32* (...) @new_object_addresses()
  store i32* %126, i32** %20, align 8
  %127 = load i64, i64* @DependRelationId, align 8
  %128 = load i32, i32* @AccessShareLock, align 4
  %129 = call i32 @table_open(i64 %127, i32 %128)
  store i32 %129, i32* %17, align 4
  %130 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 0
  %131 = load i32, i32* @Anum_pg_depend_refclassid, align 4
  %132 = load i32, i32* @BTEqualStrategyNumber, align 4
  %133 = load i32, i32* @F_OIDEQ, align 4
  %134 = load i64, i64* @ExtensionRelationId, align 8
  %135 = call i32 @ObjectIdGetDatum(i64 %134)
  %136 = call i32 @ScanKeyInit(i32* %130, i32 %131, i32 %132, i32 %133, i32 %135)
  %137 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 1
  %138 = load i32, i32* @Anum_pg_depend_refobjid, align 4
  %139 = load i32, i32* @BTEqualStrategyNumber, align 4
  %140 = load i32, i32* @F_OIDEQ, align 4
  %141 = load i64, i64* %8, align 8
  %142 = call i32 @ObjectIdGetDatum(i64 %141)
  %143 = call i32 @ScanKeyInit(i32* %137, i32 %138, i32 %139, i32 %140, i32 %142)
  %144 = load i32, i32* %17, align 4
  %145 = load i32, i32* @DependReferenceIndexId, align 4
  %146 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 0
  %147 = call i32 @systable_beginscan(i32 %144, i32 %145, i32 1, i32* null, i32 2, i32* %146)
  store i32 %147, i32* %18, align 4
  br label %148

148:                                              ; preds = %223, %162, %125
  %149 = load i32, i32* %18, align 4
  %150 = call %struct.TYPE_16__* @systable_getnext(i32 %149)
  store %struct.TYPE_16__* %150, %struct.TYPE_16__** %19, align 8
  %151 = call i64 @HeapTupleIsValid(%struct.TYPE_16__* %150)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %224

153:                                              ; preds = %148
  %154 = load %struct.TYPE_16__*, %struct.TYPE_16__** %19, align 8
  %155 = call i64 @GETSTRUCT(%struct.TYPE_16__* %154)
  %156 = inttoptr i64 %155 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %156, %struct.TYPE_18__** %22, align 8
  %157 = load %struct.TYPE_18__*, %struct.TYPE_18__** %22, align 8
  %158 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = load i64, i64* @DEPENDENCY_EXTENSION, align 8
  %161 = icmp ne i64 %159, %160
  br i1 %161, label %162, label %163

162:                                              ; preds = %153
  br label %148

163:                                              ; preds = %153
  %164 = load %struct.TYPE_18__*, %struct.TYPE_18__** %22, align 8
  %165 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %164, i32 0, i32 3
  %166 = load i32, i32* %165, align 4
  %167 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %23, i32 0, i32 2
  store i32 %166, i32* %167, align 4
  %168 = load %struct.TYPE_18__*, %struct.TYPE_18__** %22, align 8
  %169 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %168, i32 0, i32 2
  %170 = load i32, i32* %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %23, i32 0, i32 1
  store i32 %170, i32* %171, align 8
  %172 = load %struct.TYPE_18__*, %struct.TYPE_18__** %22, align 8
  %173 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %172, i32 0, i32 1
  %174 = load i64, i64* %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %23, i32 0, i32 0
  store i64 %174, i64* %175, align 8
  %176 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %23, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %182

179:                                              ; preds = %163
  %180 = load i32, i32* @ERROR, align 4
  %181 = call i32 (i32, i8*, ...) @elog(i32 %180, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0))
  br label %182

182:                                              ; preds = %179, %163
  %183 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %23, i32 0, i32 2
  %184 = load i32, i32* %183, align 4
  %185 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %23, i32 0, i32 1
  %186 = load i32, i32* %185, align 8
  %187 = load i64, i64* %9, align 8
  %188 = load i32*, i32** %20, align 8
  %189 = call i64 @AlterObjectNamespace_oid(i32 %184, i32 %186, i64 %187, i32* %188)
  store i64 %189, i64* %24, align 8
  %190 = load i64, i64* %10, align 8
  %191 = load i64, i64* @InvalidOid, align 8
  %192 = icmp eq i64 %190, %191
  br i1 %192, label %193, label %199

193:                                              ; preds = %182
  %194 = load i64, i64* %24, align 8
  %195 = load i64, i64* @InvalidOid, align 8
  %196 = icmp ne i64 %194, %195
  br i1 %196, label %197, label %199

197:                                              ; preds = %193
  %198 = load i64, i64* %24, align 8
  store i64 %198, i64* %10, align 8
  br label %199

199:                                              ; preds = %197, %193, %182
  %200 = load i64, i64* %24, align 8
  %201 = load i64, i64* @InvalidOid, align 8
  %202 = icmp ne i64 %200, %201
  br i1 %202, label %203, label %223

203:                                              ; preds = %199
  %204 = load i64, i64* %24, align 8
  %205 = load i64, i64* %10, align 8
  %206 = icmp ne i64 %204, %205
  br i1 %206, label %207, label %223

207:                                              ; preds = %203
  %208 = load i32, i32* @ERROR, align 4
  %209 = load i32, i32* @ERRCODE_FEATURE_NOT_SUPPORTED, align 4
  %210 = call i32 @errcode(i32 %209)
  %211 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %212 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %211, i32 0, i32 1
  %213 = load i32, i32* %212, align 8
  %214 = call i32 @NameStr(i32 %213)
  %215 = sext i32 %214 to i64
  %216 = inttoptr i64 %215 to i8*
  %217 = call i32 (i8*, i8*, ...) @errmsg(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i8* %216)
  %218 = call i32 @getObjectDescription(%struct.TYPE_15__* %23)
  %219 = load i64, i64* %10, align 8
  %220 = call i32 @get_namespace_name(i64 %219)
  %221 = call i32 @errdetail(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i32 %218, i32 %220)
  %222 = call i32 @ereport(i32 %208, i32 %221)
  br label %223

223:                                              ; preds = %207, %203, %199
  br label %148

224:                                              ; preds = %148
  %225 = load i64*, i64** %7, align 8
  %226 = icmp ne i64* %225, null
  br i1 %226, label %227, label %230

227:                                              ; preds = %224
  %228 = load i64, i64* %10, align 8
  %229 = load i64*, i64** %7, align 8
  store i64 %228, i64* %229, align 8
  br label %230

230:                                              ; preds = %227, %224
  %231 = load i32, i32* %18, align 4
  %232 = call i32 @systable_endscan(i32 %231)
  %233 = load i32, i32* %17, align 4
  %234 = load i32, i32* @AccessShareLock, align 4
  %235 = call i32 @relation_close(i32 %233, i32 %234)
  %236 = load i64, i64* %9, align 8
  %237 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %238 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %237, i32 0, i32 0
  store i64 %236, i64* %238, align 8
  %239 = load i32, i32* %12, align 4
  %240 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %241 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %240, i32 0, i32 0
  %242 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %243 = call i32 @CatalogTupleUpdate(i32 %239, i32* %241, %struct.TYPE_16__* %242)
  %244 = load i32, i32* %12, align 4
  %245 = load i32, i32* @RowExclusiveLock, align 4
  %246 = call i32 @table_close(i32 %244, i32 %245)
  %247 = load i64, i64* @ExtensionRelationId, align 8
  %248 = load i64, i64* %8, align 8
  %249 = load i32, i32* @NamespaceRelationId, align 4
  %250 = load i64, i64* %10, align 8
  %251 = load i64, i64* %9, align 8
  %252 = call i32 @changeDependencyFor(i64 %247, i64 %248, i32 %249, i64 %250, i64 %251)
  %253 = load i64, i64* @ExtensionRelationId, align 8
  %254 = load i64, i64* %8, align 8
  %255 = call i32 @InvokeObjectPostAlterHook(i64 %253, i64 %254, i32 0)
  %256 = load i64, i64* @ExtensionRelationId, align 8
  %257 = load i64, i64* %8, align 8
  %258 = bitcast %struct.TYPE_15__* %21 to { i64, i64 }*
  %259 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %258, i32 0, i32 0
  %260 = load i64, i64* %259, align 8
  %261 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %258, i32 0, i32 1
  %262 = load i64, i64* %261, align 8
  %263 = call i32 @ObjectAddressSet(i64 %260, i64 %262, i64 %256, i64 %257)
  %264 = bitcast %struct.TYPE_15__* %4 to i8*
  %265 = bitcast %struct.TYPE_15__* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %264, i8* align 8 %265, i64 16, i1 false)
  br label %266

266:                                              ; preds = %230, %103
  %267 = bitcast %struct.TYPE_15__* %4 to { i64, i64 }*
  %268 = load { i64, i64 }, { i64, i64 }* %267, align 8
  ret { i64, i64 } %268
}

declare dso_local i64 @get_extension_oid(i8*, i32) #1

declare dso_local i64 @LookupCreationNamespace(i8*) #1

declare dso_local i32 @pg_extension_ownercheck(i64, i32) #1

declare dso_local i32 @GetUserId(...) #1

declare dso_local i32 @aclcheck_error(i64, i32, i8*) #1

declare dso_local i64 @pg_namespace_aclcheck(i64, i32, i32) #1

declare dso_local i64 @getExtensionOfObject(i32, i64) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i8*, ...) #1

declare dso_local i32 @table_open(i64, i32) #1

declare dso_local i32 @ScanKeyInit(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i64) #1

declare dso_local i32 @systable_beginscan(i32, i32, i32, i32*, i32, i32*) #1

declare dso_local %struct.TYPE_16__* @systable_getnext(i32) #1

declare dso_local i64 @HeapTupleIsValid(%struct.TYPE_16__*) #1

declare dso_local i32 @elog(i32, i8*, ...) #1

declare dso_local %struct.TYPE_16__* @heap_copytuple(%struct.TYPE_16__*) #1

declare dso_local i64 @GETSTRUCT(%struct.TYPE_16__*) #1

declare dso_local i32 @systable_endscan(i32) #1

declare dso_local i32 @table_close(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @NameStr(i32) #1

declare dso_local i32* @new_object_addresses(...) #1

declare dso_local i64 @AlterObjectNamespace_oid(i32, i32, i64, i32*) #1

declare dso_local i32 @errdetail(i8*, i32, i32) #1

declare dso_local i32 @getObjectDescription(%struct.TYPE_15__*) #1

declare dso_local i32 @get_namespace_name(i64) #1

declare dso_local i32 @relation_close(i32, i32) #1

declare dso_local i32 @CatalogTupleUpdate(i32, i32*, %struct.TYPE_16__*) #1

declare dso_local i32 @changeDependencyFor(i64, i64, i32, i64, i64) #1

declare dso_local i32 @InvokeObjectPostAlterHook(i64, i64, i32) #1

declare dso_local i32 @ObjectAddressSet(i64, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
