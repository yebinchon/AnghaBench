; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/init/extr_postinit.c_InitPostgres.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/init/extr_postinit.c_InitPostgres.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64 }
%struct.TYPE_8__ = type { i8* }
%struct.TYPE_6__ = type { i8*, i64, i32 }

@NAMEDATALEN = common dso_local global i32 0, align 4
@DEBUG3 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"InitPostgres\00", align 1
@InvalidBackendId = common dso_local global i64 0, align 8
@MyBackendId = common dso_local global i64 0, align 8
@MaxBackends = common dso_local global i64 0, align 8
@FATAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"bad backend ID: %d\00", align 1
@DEADLOCK_TIMEOUT = common dso_local global i32 0, align 4
@CheckDeadLockAlert = common dso_local global i32 0, align 4
@STATEMENT_TIMEOUT = common dso_local global i32 0, align 4
@StatementTimeoutHandler = common dso_local global i32 0, align 4
@LOCK_TIMEOUT = common dso_local global i32 0, align 4
@LockTimeoutHandler = common dso_local global i32 0, align 4
@IDLE_IN_TRANSACTION_SESSION_TIMEOUT = common dso_local global i32 0, align 4
@IdleInTransactionSessionTimeoutHandler = common dso_local global i32 0, align 4
@IsUnderPostmaster = common dso_local global i64 0, align 8
@CurrentResourceOwner = common dso_local global i32* null, align 8
@ShutdownXLOG = common dso_local global i32 0, align 4
@ShutdownPostgres = common dso_local global i32 0, align 4
@XACT_READ_COMMITTED = common dso_local global i32 0, align 4
@XactIsoLevel = common dso_local global i32 0, align 4
@WARNING = common dso_local global i32 0, align 4
@ERRCODE_UNDEFINED_OBJECT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [45 x i8] c"no roles are defined in this database system\00", align 1
@.str.3 = private unnamed_addr constant [56 x i8] c"You should immediately run CREATE USER \22%s\22 SUPERUSER;.\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"postgres\00", align 1
@IsBackgroundWorker = common dso_local global i64 0, align 8
@MyProcPort = common dso_local global %struct.TYPE_7__* null, align 8
@am_walsender = common dso_local global i64 0, align 8
@CAC_WAITBACKUP = common dso_local global i64 0, align 8
@ERRCODE_INSUFFICIENT_PRIVILEGE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [69 x i8] c"new replication connections are not allowed during database shutdown\00", align 1
@.str.6 = private unnamed_addr constant [54 x i8] c"must be superuser to connect during database shutdown\00", align 1
@IsBinaryUpgrade = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [52 x i8] c"must be superuser to connect in binary upgrade mode\00", align 1
@ReservedBackends = common dso_local global i64 0, align 8
@ERRCODE_TOO_MANY_CONNECTIONS = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [82 x i8] c"remaining connection slots are reserved for non-replication superuser connections\00", align 1
@.str.9 = private unnamed_addr constant [57 x i8] c"must be superuser or replication role to start walsender\00", align 1
@am_db_walsender = common dso_local global i32 0, align 4
@PostAuthDelay = common dso_local global i64 0, align 8
@TemplateDbOid = common dso_local global i8* null, align 8
@MyDatabaseId = common dso_local global i8* null, align 8
@DEFAULTTABLESPACE_OID = common dso_local global i64 0, align 8
@MyDatabaseTableSpace = common dso_local global i64 0, align 8
@ERRCODE_UNDEFINED_DATABASE = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [29 x i8] c"database \22%s\22 does not exist\00", align 1
@.str.11 = private unnamed_addr constant [27 x i8] c"database %u does not exist\00", align 1
@DatabaseRelationId = common dso_local global i32 0, align 4
@RowExclusiveLock = common dso_local global i32 0, align 4
@MyProc = common dso_local global %struct.TYPE_8__* null, align 8
@.str.12 = private unnamed_addr constant [47 x i8] c"It seems to have just been dropped or renamed.\00", align 1
@F_OK = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@.str.13 = private unnamed_addr constant [43 x i8] c"The database subdirectory \22%s\22 is missing.\00", align 1
@.str.14 = private unnamed_addr constant [36 x i8] c"could not access directory \22%s\22: %m\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @InitPostgres(i8* %0, i8* %1, i8* %2, i8* %3, i8* %4, i32 %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.TYPE_6__*, align 8
  %21 = alloca i32, align 4
  %22 = alloca %struct.TYPE_6__*, align 8
  %23 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  store i32 %5, i32* %12, align 4
  %24 = call i32 (...) @IsBootstrapProcessingMode()
  store i32 %24, i32* %13, align 4
  %25 = load i32, i32* @NAMEDATALEN, align 4
  %26 = zext i32 %25 to i64
  %27 = call i8* @llvm.stacksave()
  store i8* %27, i8** %16, align 8
  %28 = alloca i8, i64 %26, align 16
  store i64 %26, i64* %17, align 8
  %29 = load i32, i32* @DEBUG3, align 4
  %30 = call i32 (i32, i8*, ...) @elog(i32 %29, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %31 = call i32 (...) @InitProcessPhase2()
  %32 = load i64, i64* @InvalidBackendId, align 8
  store i64 %32, i64* @MyBackendId, align 8
  %33 = call i32 @SharedInvalBackendInit(i32 0)
  %34 = load i64, i64* @MyBackendId, align 8
  %35 = load i64, i64* @MaxBackends, align 8
  %36 = icmp sgt i64 %34, %35
  br i1 %36, label %40, label %37

37:                                               ; preds = %6
  %38 = load i64, i64* @MyBackendId, align 8
  %39 = icmp sle i64 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %37, %6
  %41 = load i32, i32* @FATAL, align 4
  %42 = load i64, i64* @MyBackendId, align 8
  %43 = call i32 (i32, i8*, ...) @elog(i32 %41, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i64 %42)
  br label %44

44:                                               ; preds = %40, %37
  %45 = load i64, i64* @MyBackendId, align 8
  %46 = call i32 @ProcSignalInit(i64 %45)
  %47 = load i32, i32* %13, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %62, label %49

49:                                               ; preds = %44
  %50 = load i32, i32* @DEADLOCK_TIMEOUT, align 4
  %51 = load i32, i32* @CheckDeadLockAlert, align 4
  %52 = call i32 @RegisterTimeout(i32 %50, i32 %51)
  %53 = load i32, i32* @STATEMENT_TIMEOUT, align 4
  %54 = load i32, i32* @StatementTimeoutHandler, align 4
  %55 = call i32 @RegisterTimeout(i32 %53, i32 %54)
  %56 = load i32, i32* @LOCK_TIMEOUT, align 4
  %57 = load i32, i32* @LockTimeoutHandler, align 4
  %58 = call i32 @RegisterTimeout(i32 %56, i32 %57)
  %59 = load i32, i32* @IDLE_IN_TRANSACTION_SESSION_TIMEOUT, align 4
  %60 = load i32, i32* @IdleInTransactionSessionTimeoutHandler, align 4
  %61 = call i32 @RegisterTimeout(i32 %59, i32 %60)
  br label %62

62:                                               ; preds = %49, %44
  %63 = call i32 (...) @InitBufferPoolBackend()
  %64 = load i64, i64* @IsUnderPostmaster, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %62
  %67 = call i32 (...) @RecoveryInProgress()
  br label %74

68:                                               ; preds = %62
  %69 = call i32 (...) @CreateAuxProcessResourceOwner()
  %70 = call i32 (...) @StartupXLOG()
  %71 = call i32 @ReleaseAuxProcessResources(i32 1)
  store i32* null, i32** @CurrentResourceOwner, align 8
  %72 = load i32, i32* @ShutdownXLOG, align 4
  %73 = call i32 @on_shmem_exit(i32 %72, i32 0)
  br label %74

74:                                               ; preds = %68, %66
  %75 = call i32 (...) @RelationCacheInitialize()
  %76 = call i32 (...) @InitCatalogCache()
  %77 = call i32 (...) @InitPlanCache()
  %78 = call i32 (...) @EnablePortalManager()
  %79 = load i32, i32* %13, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %83, label %81

81:                                               ; preds = %74
  %82 = call i32 (...) @pgstat_initialize()
  br label %83

83:                                               ; preds = %81, %74
  %84 = call i32 (...) @RelationCacheInitializePhase2()
  %85 = load i32, i32* @ShutdownPostgres, align 4
  %86 = call i32 @before_shmem_exit(i32 %85, i32 0)
  %87 = call i64 (...) @IsAutoVacuumLauncherProcess()
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %83
  %90 = call i32 (...) @pgstat_bestart()
  store i32 1, i32* %18, align 4
  br label %475

91:                                               ; preds = %83
  %92 = load i32, i32* %13, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %99, label %94

94:                                               ; preds = %91
  %95 = call i32 (...) @SetCurrentStatementStartTimestamp()
  %96 = call i32 (...) @StartTransactionCommand()
  %97 = load i32, i32* @XACT_READ_COMMITTED, align 4
  store i32 %97, i32* @XactIsoLevel, align 4
  %98 = call i32 (...) @GetTransactionSnapshot()
  br label %99

99:                                               ; preds = %94, %91
  %100 = load i32, i32* %13, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %105, label %102

102:                                              ; preds = %99
  %103 = call i64 (...) @IsAutoVacuumWorkerProcess()
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %102, %99
  %106 = call i32 (...) @InitializeSessionUserIdStandalone()
  store i32 1, i32* %14, align 4
  br label %160

107:                                              ; preds = %102
  %108 = load i64, i64* @IsUnderPostmaster, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %129, label %110

110:                                              ; preds = %107
  %111 = call i32 (...) @InitializeSessionUserIdStandalone()
  store i32 1, i32* %14, align 4
  %112 = call i32 (...) @ThereIsAtLeastOneRole()
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %128, label %114

114:                                              ; preds = %110
  %115 = load i32, i32* @WARNING, align 4
  %116 = load i32, i32* @ERRCODE_UNDEFINED_OBJECT, align 4
  %117 = call i32 @errcode(i32 %116)
  %118 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0))
  %119 = load i8*, i8** %9, align 8
  %120 = icmp ne i8* %119, null
  br i1 %120, label %121, label %123

121:                                              ; preds = %114
  %122 = load i8*, i8** %9, align 8
  br label %124

123:                                              ; preds = %114
  br label %124

124:                                              ; preds = %123, %121
  %125 = phi i8* [ %122, %121 ], [ getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), %123 ]
  %126 = call i32 @errhint(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.3, i64 0, i64 0), i8* %125)
  %127 = call i32 @ereport(i32 %115, i32 %126)
  br label %128

128:                                              ; preds = %124, %110
  br label %159

129:                                              ; preds = %107
  %130 = load i64, i64* @IsBackgroundWorker, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %147

132:                                              ; preds = %129
  %133 = load i8*, i8** %9, align 8
  %134 = icmp eq i8* %133, null
  br i1 %134, label %135, label %141

135:                                              ; preds = %132
  %136 = load i8*, i8** %10, align 8
  %137 = call i64 @OidIsValid(i8* %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %141, label %139

139:                                              ; preds = %135
  %140 = call i32 (...) @InitializeSessionUserIdStandalone()
  store i32 1, i32* %14, align 4
  br label %146

141:                                              ; preds = %135, %132
  %142 = load i8*, i8** %9, align 8
  %143 = load i8*, i8** %10, align 8
  %144 = call i32 @InitializeSessionUserId(i8* %142, i8* %143)
  %145 = call i32 (...) @superuser()
  store i32 %145, i32* %14, align 4
  br label %146

146:                                              ; preds = %141, %139
  br label %158

147:                                              ; preds = %129
  %148 = load %struct.TYPE_7__*, %struct.TYPE_7__** @MyProcPort, align 8
  %149 = icmp ne %struct.TYPE_7__* %148, null
  %150 = zext i1 %149 to i32
  %151 = call i32 @Assert(i32 %150)
  %152 = load %struct.TYPE_7__*, %struct.TYPE_7__** @MyProcPort, align 8
  %153 = call i32 @PerformAuthentication(%struct.TYPE_7__* %152)
  %154 = load i8*, i8** %9, align 8
  %155 = load i8*, i8** %10, align 8
  %156 = call i32 @InitializeSessionUserId(i8* %154, i8* %155)
  %157 = call i32 (...) @superuser()
  store i32 %157, i32* %14, align 4
  br label %158

158:                                              ; preds = %147, %146
  br label %159

159:                                              ; preds = %158, %128
  br label %160

160:                                              ; preds = %159, %105
  %161 = load i32, i32* %14, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %166

163:                                              ; preds = %160
  %164 = load i64, i64* @am_walsender, align 8
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %191

166:                                              ; preds = %163, %160
  %167 = load %struct.TYPE_7__*, %struct.TYPE_7__** @MyProcPort, align 8
  %168 = icmp ne %struct.TYPE_7__* %167, null
  br i1 %168, label %169, label %191

169:                                              ; preds = %166
  %170 = load %struct.TYPE_7__*, %struct.TYPE_7__** @MyProcPort, align 8
  %171 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %170, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = load i64, i64* @CAC_WAITBACKUP, align 8
  %174 = icmp eq i64 %172, %173
  br i1 %174, label %175, label %191

175:                                              ; preds = %169
  %176 = load i64, i64* @am_walsender, align 8
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %184

178:                                              ; preds = %175
  %179 = load i32, i32* @FATAL, align 4
  %180 = load i32, i32* @ERRCODE_INSUFFICIENT_PRIVILEGE, align 4
  %181 = call i32 @errcode(i32 %180)
  %182 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.5, i64 0, i64 0))
  %183 = call i32 @ereport(i32 %179, i32 %182)
  br label %190

184:                                              ; preds = %175
  %185 = load i32, i32* @FATAL, align 4
  %186 = load i32, i32* @ERRCODE_INSUFFICIENT_PRIVILEGE, align 4
  %187 = call i32 @errcode(i32 %186)
  %188 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.6, i64 0, i64 0))
  %189 = call i32 @ereport(i32 %185, i32 %188)
  br label %190

190:                                              ; preds = %184, %178
  br label %191

191:                                              ; preds = %190, %169, %166, %163
  %192 = load i64, i64* @IsBinaryUpgrade, align 8
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %203

194:                                              ; preds = %191
  %195 = load i32, i32* %14, align 4
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %203, label %197

197:                                              ; preds = %194
  %198 = load i32, i32* @FATAL, align 4
  %199 = load i32, i32* @ERRCODE_INSUFFICIENT_PRIVILEGE, align 4
  %200 = call i32 @errcode(i32 %199)
  %201 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.7, i64 0, i64 0))
  %202 = call i32 @ereport(i32 %198, i32 %201)
  br label %203

203:                                              ; preds = %197, %194, %191
  %204 = load i32, i32* %14, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %222, label %206

206:                                              ; preds = %203
  %207 = load i64, i64* @am_walsender, align 8
  %208 = icmp ne i64 %207, 0
  br i1 %208, label %222, label %209

209:                                              ; preds = %206
  %210 = load i64, i64* @ReservedBackends, align 8
  %211 = icmp sgt i64 %210, 0
  br i1 %211, label %212, label %222

212:                                              ; preds = %209
  %213 = load i64, i64* @ReservedBackends, align 8
  %214 = call i32 @HaveNFreeProcs(i64 %213)
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %222, label %216

216:                                              ; preds = %212
  %217 = load i32, i32* @FATAL, align 4
  %218 = load i32, i32* @ERRCODE_TOO_MANY_CONNECTIONS, align 4
  %219 = call i32 @errcode(i32 %218)
  %220 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.8, i64 0, i64 0))
  %221 = call i32 @ereport(i32 %217, i32 %220)
  br label %222

222:                                              ; preds = %216, %212, %209, %206, %203
  %223 = load i64, i64* @am_walsender, align 8
  %224 = icmp ne i64 %223, 0
  br i1 %224, label %225, label %244

225:                                              ; preds = %222
  %226 = load i32, i32* %13, align 4
  %227 = icmp ne i32 %226, 0
  %228 = xor i1 %227, true
  %229 = zext i1 %228 to i32
  %230 = call i32 @Assert(i32 %229)
  %231 = call i32 (...) @superuser()
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %243, label %233

233:                                              ; preds = %225
  %234 = call i32 (...) @GetUserId()
  %235 = call i32 @has_rolreplication(i32 %234)
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %243, label %237

237:                                              ; preds = %233
  %238 = load i32, i32* @FATAL, align 4
  %239 = load i32, i32* @ERRCODE_INSUFFICIENT_PRIVILEGE, align 4
  %240 = call i32 @errcode(i32 %239)
  %241 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.9, i64 0, i64 0))
  %242 = call i32 @ereport(i32 %238, i32 %241)
  br label %243

243:                                              ; preds = %237, %233, %225
  br label %244

244:                                              ; preds = %243, %222
  %245 = load i64, i64* @am_walsender, align 8
  %246 = icmp ne i64 %245, 0
  br i1 %246, label %247, label %268

247:                                              ; preds = %244
  %248 = load i32, i32* @am_db_walsender, align 4
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %268, label %250

250:                                              ; preds = %247
  %251 = load %struct.TYPE_7__*, %struct.TYPE_7__** @MyProcPort, align 8
  %252 = icmp ne %struct.TYPE_7__* %251, null
  br i1 %252, label %253, label %257

253:                                              ; preds = %250
  %254 = load %struct.TYPE_7__*, %struct.TYPE_7__** @MyProcPort, align 8
  %255 = load i32, i32* %14, align 4
  %256 = call i32 @process_startup_options(%struct.TYPE_7__* %254, i32 %255)
  br label %257

257:                                              ; preds = %253, %250
  %258 = load i64, i64* @PostAuthDelay, align 8
  %259 = icmp sgt i64 %258, 0
  br i1 %259, label %260, label %264

260:                                              ; preds = %257
  %261 = load i64, i64* @PostAuthDelay, align 8
  %262 = mul nsw i64 %261, 1000000
  %263 = call i32 @pg_usleep(i64 %262)
  br label %264

264:                                              ; preds = %260, %257
  %265 = call i32 (...) @InitializeClientEncoding()
  %266 = call i32 (...) @pgstat_bestart()
  %267 = call i32 (...) @CommitTransactionCommand()
  store i32 1, i32* %18, align 4
  br label %475

268:                                              ; preds = %247, %244
  %269 = load i32, i32* %13, align 4
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %271, label %274

271:                                              ; preds = %268
  %272 = load i8*, i8** @TemplateDbOid, align 8
  store i8* %272, i8** @MyDatabaseId, align 8
  %273 = load i64, i64* @DEFAULTTABLESPACE_OID, align 8
  store i64 %273, i64* @MyDatabaseTableSpace, align 8
  br label %356

274:                                              ; preds = %268
  %275 = load i8*, i8** %7, align 8
  %276 = icmp ne i8* %275, null
  br i1 %276, label %277, label %303

277:                                              ; preds = %274
  %278 = load i8*, i8** %7, align 8
  %279 = call i32 @GetDatabaseTuple(i8* %278)
  store i32 %279, i32* %19, align 4
  %280 = load i32, i32* %19, align 4
  %281 = call i32 @HeapTupleIsValid(i32 %280)
  %282 = icmp ne i32 %281, 0
  br i1 %282, label %290, label %283

283:                                              ; preds = %277
  %284 = load i32, i32* @FATAL, align 4
  %285 = load i32, i32* @ERRCODE_UNDEFINED_DATABASE, align 4
  %286 = call i32 @errcode(i32 %285)
  %287 = load i8*, i8** %7, align 8
  %288 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.10, i64 0, i64 0), i8* %287)
  %289 = call i32 @ereport(i32 %284, i32 %288)
  br label %290

290:                                              ; preds = %283, %277
  %291 = load i32, i32* %19, align 4
  %292 = call i64 @GETSTRUCT(i32 %291)
  %293 = inttoptr i64 %292 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %293, %struct.TYPE_6__** %20, align 8
  %294 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %295 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %294, i32 0, i32 0
  %296 = load i8*, i8** %295, align 8
  store i8* %296, i8** @MyDatabaseId, align 8
  %297 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %298 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %297, i32 0, i32 1
  %299 = load i64, i64* %298, align 8
  store i64 %299, i64* @MyDatabaseTableSpace, align 8
  %300 = load i8*, i8** %7, align 8
  %301 = trunc i64 %26 to i32
  %302 = call i32 @strlcpy(i8* %28, i8* %300, i32 %301)
  br label %355

303:                                              ; preds = %274
  %304 = load i8*, i8** %8, align 8
  %305 = call i64 @OidIsValid(i8* %304)
  %306 = icmp ne i64 %305, 0
  br i1 %306, label %307, label %347

307:                                              ; preds = %303
  %308 = load i8*, i8** %8, align 8
  %309 = call i32 @GetDatabaseTupleByOid(i8* %308)
  store i32 %309, i32* %21, align 4
  %310 = load i32, i32* %21, align 4
  %311 = call i32 @HeapTupleIsValid(i32 %310)
  %312 = icmp ne i32 %311, 0
  br i1 %312, label %320, label %313

313:                                              ; preds = %307
  %314 = load i32, i32* @FATAL, align 4
  %315 = load i32, i32* @ERRCODE_UNDEFINED_DATABASE, align 4
  %316 = call i32 @errcode(i32 %315)
  %317 = load i8*, i8** %8, align 8
  %318 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.11, i64 0, i64 0), i8* %317)
  %319 = call i32 @ereport(i32 %314, i32 %318)
  br label %320

320:                                              ; preds = %313, %307
  %321 = load i32, i32* %21, align 4
  %322 = call i64 @GETSTRUCT(i32 %321)
  %323 = inttoptr i64 %322 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %323, %struct.TYPE_6__** %22, align 8
  %324 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %325 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %324, i32 0, i32 0
  %326 = load i8*, i8** %325, align 8
  store i8* %326, i8** @MyDatabaseId, align 8
  %327 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %328 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %327, i32 0, i32 1
  %329 = load i64, i64* %328, align 8
  store i64 %329, i64* @MyDatabaseTableSpace, align 8
  %330 = load i8*, i8** @MyDatabaseId, align 8
  %331 = load i8*, i8** %8, align 8
  %332 = icmp eq i8* %330, %331
  %333 = zext i1 %332 to i32
  %334 = call i32 @Assert(i32 %333)
  %335 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %336 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %335, i32 0, i32 2
  %337 = load i32, i32* %336, align 8
  %338 = call i8* @NameStr(i32 %337)
  %339 = trunc i64 %26 to i32
  %340 = call i32 @strlcpy(i8* %28, i8* %338, i32 %339)
  %341 = load i8*, i8** %11, align 8
  %342 = icmp ne i8* %341, null
  br i1 %342, label %343, label %346

343:                                              ; preds = %320
  %344 = load i8*, i8** %11, align 8
  %345 = call i32 @strcpy(i8* %344, i8* %28)
  br label %346

346:                                              ; preds = %343, %320
  br label %354

347:                                              ; preds = %303
  %348 = load i32, i32* %13, align 4
  %349 = icmp ne i32 %348, 0
  br i1 %349, label %353, label %350

350:                                              ; preds = %347
  %351 = call i32 (...) @pgstat_bestart()
  %352 = call i32 (...) @CommitTransactionCommand()
  br label %353

353:                                              ; preds = %350, %347
  store i32 1, i32* %18, align 4
  br label %475

354:                                              ; preds = %346
  br label %355

355:                                              ; preds = %354, %290
  br label %356

356:                                              ; preds = %355, %271
  %357 = load i32, i32* %13, align 4
  %358 = icmp ne i32 %357, 0
  br i1 %358, label %364, label %359

359:                                              ; preds = %356
  %360 = load i32, i32* @DatabaseRelationId, align 4
  %361 = load i8*, i8** @MyDatabaseId, align 8
  %362 = load i32, i32* @RowExclusiveLock, align 4
  %363 = call i32 @LockSharedObject(i32 %360, i8* %361, i32 0, i32 %362)
  br label %364

364:                                              ; preds = %359, %356
  %365 = load i8*, i8** @MyDatabaseId, align 8
  %366 = load %struct.TYPE_8__*, %struct.TYPE_8__** @MyProc, align 8
  %367 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %366, i32 0, i32 0
  store i8* %365, i8** %367, align 8
  %368 = call i32 (...) @InvalidateCatalogSnapshot()
  %369 = load i32, i32* %13, align 4
  %370 = icmp ne i32 %369, 0
  br i1 %370, label %400, label %371

371:                                              ; preds = %364
  %372 = call i32 @GetDatabaseTuple(i8* %28)
  store i32 %372, i32* %23, align 4
  %373 = load i32, i32* %23, align 4
  %374 = call i32 @HeapTupleIsValid(i32 %373)
  %375 = icmp ne i32 %374, 0
  br i1 %375, label %376, label %392

376:                                              ; preds = %371
  %377 = load i8*, i8** @MyDatabaseId, align 8
  %378 = load i32, i32* %23, align 4
  %379 = call i64 @GETSTRUCT(i32 %378)
  %380 = inttoptr i64 %379 to %struct.TYPE_6__*
  %381 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %380, i32 0, i32 0
  %382 = load i8*, i8** %381, align 8
  %383 = icmp ne i8* %377, %382
  br i1 %383, label %392, label %384

384:                                              ; preds = %376
  %385 = load i64, i64* @MyDatabaseTableSpace, align 8
  %386 = load i32, i32* %23, align 4
  %387 = call i64 @GETSTRUCT(i32 %386)
  %388 = inttoptr i64 %387 to %struct.TYPE_6__*
  %389 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %388, i32 0, i32 1
  %390 = load i64, i64* %389, align 8
  %391 = icmp ne i64 %385, %390
  br i1 %391, label %392, label %399

392:                                              ; preds = %384, %376, %371
  %393 = load i32, i32* @FATAL, align 4
  %394 = load i32, i32* @ERRCODE_UNDEFINED_DATABASE, align 4
  %395 = call i32 @errcode(i32 %394)
  %396 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.10, i64 0, i64 0), i8* %28)
  %397 = call i32 (i8*, ...) @errdetail(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.12, i64 0, i64 0))
  %398 = call i32 @ereport(i32 %393, i32 %397)
  br label %399

399:                                              ; preds = %392, %384
  br label %400

400:                                              ; preds = %399, %364
  %401 = load i8*, i8** @MyDatabaseId, align 8
  %402 = load i64, i64* @MyDatabaseTableSpace, align 8
  %403 = call i8* @GetDatabasePath(i8* %401, i64 %402)
  store i8* %403, i8** %15, align 8
  %404 = load i32, i32* %13, align 4
  %405 = icmp ne i32 %404, 0
  br i1 %405, label %433, label %406

406:                                              ; preds = %400
  %407 = load i8*, i8** %15, align 8
  %408 = load i32, i32* @F_OK, align 4
  %409 = call i32 @access(i8* %407, i32 %408)
  %410 = icmp eq i32 %409, -1
  br i1 %410, label %411, label %430

411:                                              ; preds = %406
  %412 = load i64, i64* @errno, align 8
  %413 = load i64, i64* @ENOENT, align 8
  %414 = icmp eq i64 %412, %413
  br i1 %414, label %415, label %423

415:                                              ; preds = %411
  %416 = load i32, i32* @FATAL, align 4
  %417 = load i32, i32* @ERRCODE_UNDEFINED_DATABASE, align 4
  %418 = call i32 @errcode(i32 %417)
  %419 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.10, i64 0, i64 0), i8* %28)
  %420 = load i8*, i8** %15, align 8
  %421 = call i32 (i8*, ...) @errdetail(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.13, i64 0, i64 0), i8* %420)
  %422 = call i32 @ereport(i32 %416, i32 %421)
  br label %429

423:                                              ; preds = %411
  %424 = load i32, i32* @FATAL, align 4
  %425 = call i32 (...) @errcode_for_file_access()
  %426 = load i8*, i8** %15, align 8
  %427 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.14, i64 0, i64 0), i8* %426)
  %428 = call i32 @ereport(i32 %424, i32 %427)
  br label %429

429:                                              ; preds = %423, %415
  br label %430

430:                                              ; preds = %429, %406
  %431 = load i8*, i8** %15, align 8
  %432 = call i32 @ValidatePgVersion(i8* %431)
  br label %433

433:                                              ; preds = %430, %400
  %434 = load i8*, i8** %15, align 8
  %435 = call i32 @SetDatabasePath(i8* %434)
  %436 = call i32 (...) @RelationCacheInitializePhase3()
  %437 = call i32 (...) @initialize_acl()
  %438 = load i32, i32* %13, align 4
  %439 = icmp ne i32 %438, 0
  br i1 %439, label %444, label %440

440:                                              ; preds = %433
  %441 = load i32, i32* %14, align 4
  %442 = load i32, i32* %12, align 4
  %443 = call i32 @CheckMyDatabase(i8* %28, i32 %441, i32 %442)
  br label %444

444:                                              ; preds = %440, %433
  %445 = load %struct.TYPE_7__*, %struct.TYPE_7__** @MyProcPort, align 8
  %446 = icmp ne %struct.TYPE_7__* %445, null
  br i1 %446, label %447, label %451

447:                                              ; preds = %444
  %448 = load %struct.TYPE_7__*, %struct.TYPE_7__** @MyProcPort, align 8
  %449 = load i32, i32* %14, align 4
  %450 = call i32 @process_startup_options(%struct.TYPE_7__* %448, i32 %449)
  br label %451

451:                                              ; preds = %447, %444
  %452 = load i8*, i8** @MyDatabaseId, align 8
  %453 = call i32 (...) @GetSessionUserId()
  %454 = call i32 @process_settings(i8* %452, i32 %453)
  %455 = load i64, i64* @PostAuthDelay, align 8
  %456 = icmp sgt i64 %455, 0
  br i1 %456, label %457, label %461

457:                                              ; preds = %451
  %458 = load i64, i64* @PostAuthDelay, align 8
  %459 = mul nsw i64 %458, 1000000
  %460 = call i32 @pg_usleep(i64 %459)
  br label %461

461:                                              ; preds = %457, %451
  %462 = call i32 (...) @InitializeSearchPath()
  %463 = call i32 (...) @InitializeClientEncoding()
  %464 = call i32 (...) @InitializeSession()
  %465 = load i32, i32* %13, align 4
  %466 = icmp ne i32 %465, 0
  br i1 %466, label %469, label %467

467:                                              ; preds = %461
  %468 = call i32 (...) @pgstat_bestart()
  br label %469

469:                                              ; preds = %467, %461
  %470 = load i32, i32* %13, align 4
  %471 = icmp ne i32 %470, 0
  br i1 %471, label %474, label %472

472:                                              ; preds = %469
  %473 = call i32 (...) @CommitTransactionCommand()
  br label %474

474:                                              ; preds = %472, %469
  store i32 0, i32* %18, align 4
  br label %475

475:                                              ; preds = %474, %353, %264, %89
  %476 = load i8*, i8** %16, align 8
  call void @llvm.stackrestore(i8* %476)
  %477 = load i32, i32* %18, align 4
  switch i32 %477, label %479 [
    i32 0, label %478
    i32 1, label %478
  ]

478:                                              ; preds = %475, %475
  ret void

479:                                              ; preds = %475
  unreachable
}

declare dso_local i32 @IsBootstrapProcessingMode(...) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @elog(i32, i8*, ...) #1

declare dso_local i32 @InitProcessPhase2(...) #1

declare dso_local i32 @SharedInvalBackendInit(i32) #1

declare dso_local i32 @ProcSignalInit(i64) #1

declare dso_local i32 @RegisterTimeout(i32, i32) #1

declare dso_local i32 @InitBufferPoolBackend(...) #1

declare dso_local i32 @RecoveryInProgress(...) #1

declare dso_local i32 @CreateAuxProcessResourceOwner(...) #1

declare dso_local i32 @StartupXLOG(...) #1

declare dso_local i32 @ReleaseAuxProcessResources(i32) #1

declare dso_local i32 @on_shmem_exit(i32, i32) #1

declare dso_local i32 @RelationCacheInitialize(...) #1

declare dso_local i32 @InitCatalogCache(...) #1

declare dso_local i32 @InitPlanCache(...) #1

declare dso_local i32 @EnablePortalManager(...) #1

declare dso_local i32 @pgstat_initialize(...) #1

declare dso_local i32 @RelationCacheInitializePhase2(...) #1

declare dso_local i32 @before_shmem_exit(i32, i32) #1

declare dso_local i64 @IsAutoVacuumLauncherProcess(...) #1

declare dso_local i32 @pgstat_bestart(...) #1

declare dso_local i32 @SetCurrentStatementStartTimestamp(...) #1

declare dso_local i32 @StartTransactionCommand(...) #1

declare dso_local i32 @GetTransactionSnapshot(...) #1

declare dso_local i64 @IsAutoVacuumWorkerProcess(...) #1

declare dso_local i32 @InitializeSessionUserIdStandalone(...) #1

declare dso_local i32 @ThereIsAtLeastOneRole(...) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, ...) #1

declare dso_local i32 @errhint(i8*, i8*) #1

declare dso_local i64 @OidIsValid(i8*) #1

declare dso_local i32 @InitializeSessionUserId(i8*, i8*) #1

declare dso_local i32 @superuser(...) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @PerformAuthentication(%struct.TYPE_7__*) #1

declare dso_local i32 @HaveNFreeProcs(i64) #1

declare dso_local i32 @has_rolreplication(i32) #1

declare dso_local i32 @GetUserId(...) #1

declare dso_local i32 @process_startup_options(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @pg_usleep(i64) #1

declare dso_local i32 @InitializeClientEncoding(...) #1

declare dso_local i32 @CommitTransactionCommand(...) #1

declare dso_local i32 @GetDatabaseTuple(i8*) #1

declare dso_local i32 @HeapTupleIsValid(i32) #1

declare dso_local i64 @GETSTRUCT(i32) #1

declare dso_local i32 @strlcpy(i8*, i8*, i32) #1

declare dso_local i32 @GetDatabaseTupleByOid(i8*) #1

declare dso_local i8* @NameStr(i32) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @LockSharedObject(i32, i8*, i32, i32) #1

declare dso_local i32 @InvalidateCatalogSnapshot(...) #1

declare dso_local i32 @errdetail(i8*, ...) #1

declare dso_local i8* @GetDatabasePath(i8*, i64) #1

declare dso_local i32 @access(i8*, i32) #1

declare dso_local i32 @errcode_for_file_access(...) #1

declare dso_local i32 @ValidatePgVersion(i8*) #1

declare dso_local i32 @SetDatabasePath(i8*) #1

declare dso_local i32 @RelationCacheInitializePhase3(...) #1

declare dso_local i32 @initialize_acl(...) #1

declare dso_local i32 @CheckMyDatabase(i8*, i32, i32) #1

declare dso_local i32 @process_settings(i8*, i32) #1

declare dso_local i32 @GetSessionUserId(...) #1

declare dso_local i32 @InitializeSearchPath(...) #1

declare dso_local i32 @InitializeSession(...) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
