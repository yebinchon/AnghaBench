; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_dbcommands.c_movedb.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_dbcommands.c_movedb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 }
%struct.dirent = type { i32 }
%struct.TYPE_13__ = type { i64, i64 }
%struct.TYPE_12__ = type { i64, i64, i64, i64 }
%struct.TYPE_11__ = type { i64, i64 }

@Natts_pg_database = common dso_local global i32 0, align 4
@DatabaseRelationId = common dso_local global i32 0, align 4
@RowExclusiveLock = common dso_local global i32 0, align 4
@AccessExclusiveLock = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_UNDEFINED_DATABASE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"database \22%s\22 does not exist\00", align 1
@ACLCHECK_NOT_OWNER = common dso_local global i64 0, align 8
@OBJECT_DATABASE = common dso_local global i32 0, align 4
@MyDatabaseId = common dso_local global i64 0, align 8
@ERRCODE_OBJECT_IN_USE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [60 x i8] c"cannot change the tablespace of the currently open database\00", align 1
@ACL_CREATE = common dso_local global i32 0, align 4
@ACLCHECK_OK = common dso_local global i64 0, align 8
@OBJECT_TABLESPACE = common dso_local global i32 0, align 4
@GLOBALTABLESPACE_OID = common dso_local global i64 0, align 8
@ERRCODE_INVALID_PARAMETER_VALUE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [47 x i8] c"pg_global cannot be used as default tablespace\00", align 1
@NoLock = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [47 x i8] c"database \22%s\22 is being accessed by other users\00", align 1
@CHECKPOINT_IMMEDIATE = common dso_local global i32 0, align 4
@CHECKPOINT_FORCE = common dso_local global i32 0, align 4
@CHECKPOINT_WAIT = common dso_local global i32 0, align 4
@CHECKPOINT_FLUSH_ALL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [63 x i8] c"some relations of database \22%s\22 are already in tablespace \22%s\22\00", align 1
@.str.7 = private unnamed_addr constant [88 x i8] c"You must move them back to the database's default tablespace before using this command.\00", align 1
@.str.8 = private unnamed_addr constant [36 x i8] c"could not remove directory \22%s\22: %m\00", align 1
@movedb_failure_callback = common dso_local global i32 0, align 4
@RM_DBASE_ID = common dso_local global i32 0, align 4
@XLOG_DBASE_CREATE = common dso_local global i32 0, align 4
@XLR_SPECIAL_REL_UPDATE = common dso_local global i32 0, align 4
@Anum_pg_database_datname = common dso_local global i32 0, align 4
@BTEqualStrategyNumber = common dso_local global i32 0, align 4
@F_NAMEEQ = common dso_local global i32 0, align 4
@DatabaseNameIndexId = common dso_local global i32 0, align 4
@Anum_pg_database_dattablespace = common dso_local global i32 0, align 4
@WARNING = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [69 x i8] c"some useless files may be left behind in old database directory \22%s\22\00", align 1
@XLOG_DBASE_DROP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*)* @movedb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @movedb(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_14__*, align 8
  %10 = alloca %struct.TYPE_14__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca %struct.dirent*, align 8
  %24 = alloca %struct.TYPE_13__, align 8
  %25 = alloca i32, align 4
  %26 = alloca %struct.TYPE_12__, align 8
  %27 = alloca %struct.TYPE_11__, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %28 = load i32, i32* @Natts_pg_database, align 4
  %29 = zext i32 %28 to i64
  %30 = call i8* @llvm.stacksave()
  store i8* %30, i8** %13, align 8
  %31 = alloca i32, i64 %29, align 16
  store i64 %29, i64* %14, align 8
  %32 = load i32, i32* @Natts_pg_database, align 4
  %33 = zext i32 %32 to i64
  %34 = alloca i32, i64 %33, align 16
  store i64 %33, i64* %15, align 8
  %35 = load i32, i32* @Natts_pg_database, align 4
  %36 = zext i32 %35 to i64
  %37 = alloca i32, i64 %36, align 16
  store i64 %36, i64* %16, align 8
  %38 = load i32, i32* @DatabaseRelationId, align 4
  %39 = load i32, i32* @RowExclusiveLock, align 4
  %40 = call i32 @table_open(i32 %38, i32 %39)
  store i32 %40, i32* %6, align 4
  %41 = load i8*, i8** %3, align 8
  %42 = load i32, i32* @AccessExclusiveLock, align 4
  %43 = call i32 @get_db_info(i8* %41, i32 %42, i64* %5, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i64* %11, i32* null, i32* null)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %52, label %45

45:                                               ; preds = %2
  %46 = load i32, i32* @ERROR, align 4
  %47 = load i32, i32* @ERRCODE_UNDEFINED_DATABASE, align 4
  %48 = call i32 @errcode(i32 %47)
  %49 = load i8*, i8** %3, align 8
  %50 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* %49)
  %51 = call i32 @ereport(i32 %46, i32 %50)
  br label %52

52:                                               ; preds = %45, %2
  %53 = load i32, i32* @DatabaseRelationId, align 4
  %54 = load i64, i64* %5, align 8
  %55 = load i32, i32* @AccessExclusiveLock, align 4
  %56 = call i32 @LockSharedObjectForSession(i32 %53, i64 %54, i32 0, i32 %55)
  %57 = load i64, i64* %5, align 8
  %58 = call i32 (...) @GetUserId()
  %59 = call i32 @pg_database_ownercheck(i64 %57, i32 %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %66, label %61

61:                                               ; preds = %52
  %62 = load i64, i64* @ACLCHECK_NOT_OWNER, align 8
  %63 = load i32, i32* @OBJECT_DATABASE, align 4
  %64 = load i8*, i8** %3, align 8
  %65 = call i32 @aclcheck_error(i64 %62, i32 %63, i8* %64)
  br label %66

66:                                               ; preds = %61, %52
  %67 = load i64, i64* %5, align 8
  %68 = load i64, i64* @MyDatabaseId, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %76

70:                                               ; preds = %66
  %71 = load i32, i32* @ERROR, align 4
  %72 = load i32, i32* @ERRCODE_OBJECT_IN_USE, align 4
  %73 = call i32 @errcode(i32 %72)
  %74 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0))
  %75 = call i32 @ereport(i32 %71, i32 %74)
  br label %76

76:                                               ; preds = %70, %66
  %77 = load i8*, i8** %4, align 8
  %78 = call i64 @get_tablespace_oid(i8* %77, i32 0)
  store i64 %78, i64* %12, align 8
  %79 = load i64, i64* %12, align 8
  %80 = call i32 (...) @GetUserId()
  %81 = load i32, i32* @ACL_CREATE, align 4
  %82 = call i64 @pg_tablespace_aclcheck(i64 %79, i32 %80, i32 %81)
  store i64 %82, i64* %19, align 8
  %83 = load i64, i64* %19, align 8
  %84 = load i64, i64* @ACLCHECK_OK, align 8
  %85 = icmp ne i64 %83, %84
  br i1 %85, label %86, label %91

86:                                               ; preds = %76
  %87 = load i64, i64* %19, align 8
  %88 = load i32, i32* @OBJECT_TABLESPACE, align 4
  %89 = load i8*, i8** %4, align 8
  %90 = call i32 @aclcheck_error(i64 %87, i32 %88, i8* %89)
  br label %91

91:                                               ; preds = %86, %76
  %92 = load i64, i64* %12, align 8
  %93 = load i64, i64* @GLOBALTABLESPACE_OID, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %101

95:                                               ; preds = %91
  %96 = load i32, i32* @ERROR, align 4
  %97 = load i32, i32* @ERRCODE_INVALID_PARAMETER_VALUE, align 4
  %98 = call i32 @errcode(i32 %97)
  %99 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0))
  %100 = call i32 @ereport(i32 %96, i32 %99)
  br label %101

101:                                              ; preds = %95, %91
  %102 = load i64, i64* %11, align 8
  %103 = load i64, i64* %12, align 8
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %105, label %113

105:                                              ; preds = %101
  %106 = load i32, i32* %6, align 4
  %107 = load i32, i32* @NoLock, align 4
  %108 = call i32 @table_close(i32 %106, i32 %107)
  %109 = load i32, i32* @DatabaseRelationId, align 4
  %110 = load i64, i64* %5, align 8
  %111 = load i32, i32* @AccessExclusiveLock, align 4
  %112 = call i32 @UnlockSharedObjectForSession(i32 %109, i64 %110, i32 0, i32 %111)
  store i32 1, i32* %25, align 4
  br label %310

113:                                              ; preds = %101
  %114 = load i64, i64* %5, align 8
  %115 = call i64 @CountOtherDBBackends(i64 %114, i32* %7, i32* %8)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %127

117:                                              ; preds = %113
  %118 = load i32, i32* @ERROR, align 4
  %119 = load i32, i32* @ERRCODE_OBJECT_IN_USE, align 4
  %120 = call i32 @errcode(i32 %119)
  %121 = load i8*, i8** %3, align 8
  %122 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0), i8* %121)
  %123 = load i32, i32* %7, align 4
  %124 = load i32, i32* %8, align 4
  %125 = call i32 @errdetail_busy_db(i32 %123, i32 %124)
  %126 = call i32 @ereport(i32 %118, i32 %125)
  br label %127

127:                                              ; preds = %117, %113
  %128 = load i64, i64* %5, align 8
  %129 = load i64, i64* %11, align 8
  %130 = call i8* @GetDatabasePath(i64 %128, i64 %129)
  store i8* %130, i8** %20, align 8
  %131 = load i64, i64* %5, align 8
  %132 = load i64, i64* %12, align 8
  %133 = call i8* @GetDatabasePath(i64 %131, i64 %132)
  store i8* %133, i8** %21, align 8
  %134 = load i32, i32* @CHECKPOINT_IMMEDIATE, align 4
  %135 = load i32, i32* @CHECKPOINT_FORCE, align 4
  %136 = or i32 %134, %135
  %137 = load i32, i32* @CHECKPOINT_WAIT, align 4
  %138 = or i32 %136, %137
  %139 = load i32, i32* @CHECKPOINT_FLUSH_ALL, align 4
  %140 = or i32 %138, %139
  %141 = call i32 @RequestCheckpoint(i32 %140)
  %142 = load i64, i64* %5, align 8
  %143 = call i32 @DropDatabaseBuffers(i64 %142)
  %144 = load i8*, i8** %21, align 8
  %145 = call i32* @AllocateDir(i8* %144)
  store i32* %145, i32** %22, align 8
  %146 = load i32*, i32** %22, align 8
  %147 = icmp ne i32* %146, null
  br i1 %147, label %148, label %187

148:                                              ; preds = %127
  br label %149

149:                                              ; preds = %167, %166, %148
  %150 = load i32*, i32** %22, align 8
  %151 = load i8*, i8** %21, align 8
  %152 = call %struct.dirent* @ReadDir(i32* %150, i8* %151)
  store %struct.dirent* %152, %struct.dirent** %23, align 8
  %153 = icmp ne %struct.dirent* %152, null
  br i1 %153, label %154, label %176

154:                                              ; preds = %149
  %155 = load %struct.dirent*, %struct.dirent** %23, align 8
  %156 = getelementptr inbounds %struct.dirent, %struct.dirent* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = call i64 @strcmp(i32 %157, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %159 = icmp eq i64 %158, 0
  br i1 %159, label %166, label %160

160:                                              ; preds = %154
  %161 = load %struct.dirent*, %struct.dirent** %23, align 8
  %162 = getelementptr inbounds %struct.dirent, %struct.dirent* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = call i64 @strcmp(i32 %163, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  %165 = icmp eq i64 %164, 0
  br i1 %165, label %166, label %167

166:                                              ; preds = %160, %154
  br label %149

167:                                              ; preds = %160
  %168 = load i32, i32* @ERROR, align 4
  %169 = load i32, i32* @ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE, align 4
  %170 = call i32 @errcode(i32 %169)
  %171 = load i8*, i8** %3, align 8
  %172 = load i8*, i8** %4, align 8
  %173 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.6, i64 0, i64 0), i8* %171, i8* %172)
  %174 = call i32 @errhint(i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.7, i64 0, i64 0))
  %175 = call i32 @ereport(i32 %168, i32 %174)
  br label %149

176:                                              ; preds = %149
  %177 = load i32*, i32** %22, align 8
  %178 = call i32 @FreeDir(i32* %177)
  %179 = load i8*, i8** %21, align 8
  %180 = call i64 @rmdir(i8* %179)
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %186

182:                                              ; preds = %176
  %183 = load i32, i32* @ERROR, align 4
  %184 = load i8*, i8** %21, align 8
  %185 = call i32 @elog(i32 %183, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8, i64 0, i64 0), i8* %184)
  br label %186

186:                                              ; preds = %182, %176
  br label %187

187:                                              ; preds = %186, %127
  %188 = load i64, i64* %5, align 8
  %189 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 1
  store i64 %188, i64* %189, align 8
  %190 = load i64, i64* %12, align 8
  %191 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 0
  store i64 %190, i64* %191, align 8
  %192 = load i32, i32* @movedb_failure_callback, align 4
  %193 = call i32 @PointerGetDatum(%struct.TYPE_13__* %24)
  %194 = call i32 @PG_ENSURE_ERROR_CLEANUP(i32 %192, i32 %193)
  %195 = load i8*, i8** %20, align 8
  %196 = load i8*, i8** %21, align 8
  %197 = call i32 @copydir(i8* %195, i8* %196, i32 0)
  %198 = load i64, i64* %5, align 8
  %199 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 3
  store i64 %198, i64* %199, align 8
  %200 = load i64, i64* %12, align 8
  %201 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 2
  store i64 %200, i64* %201, align 8
  %202 = load i64, i64* %5, align 8
  %203 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 1
  store i64 %202, i64* %203, align 8
  %204 = load i64, i64* %11, align 8
  %205 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 0
  store i64 %204, i64* %205, align 8
  %206 = call i32 (...) @XLogBeginInsert()
  %207 = bitcast %struct.TYPE_12__* %26 to i8*
  %208 = call i32 @XLogRegisterData(i8* %207, i32 32)
  %209 = load i32, i32* @RM_DBASE_ID, align 4
  %210 = load i32, i32* @XLOG_DBASE_CREATE, align 4
  %211 = load i32, i32* @XLR_SPECIAL_REL_UPDATE, align 4
  %212 = or i32 %210, %211
  %213 = call i32 @XLogInsert(i32 %209, i32 %212)
  %214 = load i32, i32* @Anum_pg_database_datname, align 4
  %215 = load i32, i32* @BTEqualStrategyNumber, align 4
  %216 = load i32, i32* @F_NAMEEQ, align 4
  %217 = load i8*, i8** %3, align 8
  %218 = call i32 @CStringGetDatum(i8* %217)
  %219 = call i32 @ScanKeyInit(i32* %17, i32 %214, i32 %215, i32 %216, i32 %218)
  %220 = load i32, i32* %6, align 4
  %221 = load i32, i32* @DatabaseNameIndexId, align 4
  %222 = call i32 @systable_beginscan(i32 %220, i32 %221, i32 1, i32* null, i32 1, i32* %17)
  store i32 %222, i32* %18, align 4
  %223 = load i32, i32* %18, align 4
  %224 = call %struct.TYPE_14__* @systable_getnext(i32 %223)
  store %struct.TYPE_14__* %224, %struct.TYPE_14__** %9, align 8
  %225 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %226 = call i32 @HeapTupleIsValid(%struct.TYPE_14__* %225)
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %235, label %228

228:                                              ; preds = %187
  %229 = load i32, i32* @ERROR, align 4
  %230 = load i32, i32* @ERRCODE_UNDEFINED_DATABASE, align 4
  %231 = call i32 @errcode(i32 %230)
  %232 = load i8*, i8** %3, align 8
  %233 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* %232)
  %234 = call i32 @ereport(i32 %229, i32 %233)
  br label %235

235:                                              ; preds = %228, %187
  %236 = mul nuw i64 4, %29
  %237 = trunc i64 %236 to i32
  %238 = call i32 @MemSet(i32* %31, i32 0, i32 %237)
  %239 = mul nuw i64 4, %33
  %240 = trunc i64 %239 to i32
  %241 = call i32 @MemSet(i32* %34, i32 0, i32 %240)
  %242 = mul nuw i64 4, %36
  %243 = trunc i64 %242 to i32
  %244 = call i32 @MemSet(i32* %37, i32 0, i32 %243)
  %245 = load i64, i64* %12, align 8
  %246 = call i32 @ObjectIdGetDatum(i64 %245)
  %247 = load i32, i32* @Anum_pg_database_dattablespace, align 4
  %248 = sub nsw i32 %247, 1
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds i32, i32* %31, i64 %249
  store i32 %246, i32* %250, align 4
  %251 = load i32, i32* @Anum_pg_database_dattablespace, align 4
  %252 = sub nsw i32 %251, 1
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds i32, i32* %37, i64 %253
  store i32 1, i32* %254, align 4
  %255 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %256 = load i32, i32* %6, align 4
  %257 = call i32 @RelationGetDescr(i32 %256)
  %258 = call %struct.TYPE_14__* @heap_modify_tuple(%struct.TYPE_14__* %255, i32 %257, i32* %31, i32* %34, i32* %37)
  store %struct.TYPE_14__* %258, %struct.TYPE_14__** %10, align 8
  %259 = load i32, i32* %6, align 4
  %260 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %261 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %260, i32 0, i32 0
  %262 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %263 = call i32 @CatalogTupleUpdate(i32 %259, i32* %261, %struct.TYPE_14__* %262)
  %264 = load i32, i32* @DatabaseRelationId, align 4
  %265 = load i64, i64* %5, align 8
  %266 = call i32 @InvokeObjectPostAlterHook(i32 %264, i64 %265, i32 0)
  %267 = load i32, i32* %18, align 4
  %268 = call i32 @systable_endscan(i32 %267)
  %269 = load i32, i32* @CHECKPOINT_IMMEDIATE, align 4
  %270 = load i32, i32* @CHECKPOINT_FORCE, align 4
  %271 = or i32 %269, %270
  %272 = load i32, i32* @CHECKPOINT_WAIT, align 4
  %273 = or i32 %271, %272
  %274 = call i32 @RequestCheckpoint(i32 %273)
  %275 = call i32 (...) @ForceSyncCommit()
  %276 = load i32, i32* %6, align 4
  %277 = load i32, i32* @NoLock, align 4
  %278 = call i32 @table_close(i32 %276, i32 %277)
  %279 = load i32, i32* @movedb_failure_callback, align 4
  %280 = call i32 @PointerGetDatum(%struct.TYPE_13__* %24)
  %281 = call i32 @PG_END_ENSURE_ERROR_CLEANUP(i32 %279, i32 %280)
  %282 = call i32 (...) @PopActiveSnapshot()
  %283 = call i32 (...) @CommitTransactionCommand()
  %284 = call i32 (...) @StartTransactionCommand()
  %285 = load i8*, i8** %20, align 8
  %286 = call i32 @rmtree(i8* %285, i32 1)
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %293, label %288

288:                                              ; preds = %235
  %289 = load i32, i32* @WARNING, align 4
  %290 = load i8*, i8** %20, align 8
  %291 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.9, i64 0, i64 0), i8* %290)
  %292 = call i32 @ereport(i32 %289, i32 %291)
  br label %293

293:                                              ; preds = %288, %235
  %294 = load i64, i64* %5, align 8
  %295 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 1
  store i64 %294, i64* %295, align 8
  %296 = load i64, i64* %11, align 8
  %297 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 0
  store i64 %296, i64* %297, align 8
  %298 = call i32 (...) @XLogBeginInsert()
  %299 = bitcast %struct.TYPE_11__* %27 to i8*
  %300 = call i32 @XLogRegisterData(i8* %299, i32 16)
  %301 = load i32, i32* @RM_DBASE_ID, align 4
  %302 = load i32, i32* @XLOG_DBASE_DROP, align 4
  %303 = load i32, i32* @XLR_SPECIAL_REL_UPDATE, align 4
  %304 = or i32 %302, %303
  %305 = call i32 @XLogInsert(i32 %301, i32 %304)
  %306 = load i32, i32* @DatabaseRelationId, align 4
  %307 = load i64, i64* %5, align 8
  %308 = load i32, i32* @AccessExclusiveLock, align 4
  %309 = call i32 @UnlockSharedObjectForSession(i32 %306, i64 %307, i32 0, i32 %308)
  store i32 0, i32* %25, align 4
  br label %310

310:                                              ; preds = %293, %105
  %311 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %311)
  %312 = load i32, i32* %25, align 4
  switch i32 %312, label %314 [
    i32 0, label %313
    i32 1, label %313
  ]

313:                                              ; preds = %310, %310
  ret void

314:                                              ; preds = %310
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @table_open(i32, i32) #2

declare dso_local i32 @get_db_info(i8*, i32, i64*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i64*, i32*, i32*) #2

declare dso_local i32 @ereport(i32, i32) #2

declare dso_local i32 @errcode(i32) #2

declare dso_local i32 @errmsg(i8*, ...) #2

declare dso_local i32 @LockSharedObjectForSession(i32, i64, i32, i32) #2

declare dso_local i32 @pg_database_ownercheck(i64, i32) #2

declare dso_local i32 @GetUserId(...) #2

declare dso_local i32 @aclcheck_error(i64, i32, i8*) #2

declare dso_local i64 @get_tablespace_oid(i8*, i32) #2

declare dso_local i64 @pg_tablespace_aclcheck(i64, i32, i32) #2

declare dso_local i32 @table_close(i32, i32) #2

declare dso_local i32 @UnlockSharedObjectForSession(i32, i64, i32, i32) #2

declare dso_local i64 @CountOtherDBBackends(i64, i32*, i32*) #2

declare dso_local i32 @errdetail_busy_db(i32, i32) #2

declare dso_local i8* @GetDatabasePath(i64, i64) #2

declare dso_local i32 @RequestCheckpoint(i32) #2

declare dso_local i32 @DropDatabaseBuffers(i64) #2

declare dso_local i32* @AllocateDir(i8*) #2

declare dso_local %struct.dirent* @ReadDir(i32*, i8*) #2

declare dso_local i64 @strcmp(i32, i8*) #2

declare dso_local i32 @errhint(i8*) #2

declare dso_local i32 @FreeDir(i32*) #2

declare dso_local i64 @rmdir(i8*) #2

declare dso_local i32 @elog(i32, i8*, i8*) #2

declare dso_local i32 @PG_ENSURE_ERROR_CLEANUP(i32, i32) #2

declare dso_local i32 @PointerGetDatum(%struct.TYPE_13__*) #2

declare dso_local i32 @copydir(i8*, i8*, i32) #2

declare dso_local i32 @XLogBeginInsert(...) #2

declare dso_local i32 @XLogRegisterData(i8*, i32) #2

declare dso_local i32 @XLogInsert(i32, i32) #2

declare dso_local i32 @ScanKeyInit(i32*, i32, i32, i32, i32) #2

declare dso_local i32 @CStringGetDatum(i8*) #2

declare dso_local i32 @systable_beginscan(i32, i32, i32, i32*, i32, i32*) #2

declare dso_local %struct.TYPE_14__* @systable_getnext(i32) #2

declare dso_local i32 @HeapTupleIsValid(%struct.TYPE_14__*) #2

declare dso_local i32 @MemSet(i32*, i32, i32) #2

declare dso_local i32 @ObjectIdGetDatum(i64) #2

declare dso_local %struct.TYPE_14__* @heap_modify_tuple(%struct.TYPE_14__*, i32, i32*, i32*, i32*) #2

declare dso_local i32 @RelationGetDescr(i32) #2

declare dso_local i32 @CatalogTupleUpdate(i32, i32*, %struct.TYPE_14__*) #2

declare dso_local i32 @InvokeObjectPostAlterHook(i32, i64, i32) #2

declare dso_local i32 @systable_endscan(i32) #2

declare dso_local i32 @ForceSyncCommit(...) #2

declare dso_local i32 @PG_END_ENSURE_ERROR_CLEANUP(i32, i32) #2

declare dso_local i32 @PopActiveSnapshot(...) #2

declare dso_local i32 @CommitTransactionCommand(...) #2

declare dso_local i32 @StartTransactionCommand(...) #2

declare dso_local i32 @rmtree(i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
