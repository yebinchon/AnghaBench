; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_multixact.c_GetNewMultiXactId.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_multixact.c_GetNewMultiXactId.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i8*, i64, i64, i64, i64 }

@DEBUG2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"GetNew: for %d xids\00", align 1
@ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"cannot assign MultiXactIds during recovery\00", align 1
@MultiXactGenLock = common dso_local global i32 0, align 4
@LW_EXCLUSIVE = common dso_local global i32 0, align 4
@MultiXactState = common dso_local global %struct.TYPE_2__* null, align 8
@FirstMultiXactId = common dso_local global i32 0, align 4
@IsUnderPostmaster = common dso_local global i64 0, align 8
@PMSIGNAL_START_AUTOVAC_LAUNCHER = common dso_local global i32 0, align 4
@ERRCODE_PROGRAM_LIMIT_EXCEEDED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [113 x i8] c"database is not accepting commands that generate new MultiXactIds to avoid wraparound data loss in database \22%s\22\00", align 1
@.str.3 = private unnamed_addr constant [152 x i8] c"Execute a database-wide VACUUM in that database.\0AYou might also need to commit or roll back old prepared transactions, or drop stale replication slots.\00", align 1
@.str.4 = private unnamed_addr constant [120 x i8] c"database is not accepting commands that generate new MultiXactIds to avoid wraparound data loss in database with OID %u\00", align 1
@WARNING = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [66 x i8] c"database \22%s\22 must be vacuumed before %u more MultiXactId is used\00", align 1
@.str.6 = private unnamed_addr constant [68 x i8] c"database \22%s\22 must be vacuumed before %u more MultiXactIds are used\00", align 1
@.str.7 = private unnamed_addr constant [73 x i8] c"database with OID %u must be vacuumed before %u more MultiXactId is used\00", align 1
@.str.8 = private unnamed_addr constant [75 x i8] c"database with OID %u must be vacuumed before %u more MultiXactIds are used\00", align 1
@.str.9 = private unnamed_addr constant [35 x i8] c"multixact \22members\22 limit exceeded\00", align 1
@.str.10 = private unnamed_addr constant [109 x i8] c"This command would create a multixact with %u members, but the remaining space is only enough for %u member.\00", align 1
@.str.11 = private unnamed_addr constant [110 x i8] c"This command would create a multixact with %u members, but the remaining space is only enough for %u members.\00", align 1
@.str.12 = private unnamed_addr constant [148 x i8] c"Execute a database-wide VACUUM in database with OID %u with reduced vacuum_multixact_freeze_min_age and vacuum_multixact_freeze_table_age settings.\00", align 1
@MULTIXACT_MEMBER_SAFE_THRESHOLD = common dso_local global i64 0, align 8
@SLRU_PAGES_PER_SEGMENT = common dso_local global i32 0, align 4
@MULTIXACT_MEMBERS_PER_PAGE = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [78 x i8] c"database with OID %u must be vacuumed before %d more multixact member is used\00", align 1
@.str.14 = private unnamed_addr constant [80 x i8] c"database with OID %u must be vacuumed before %d more multixact members are used\00", align 1
@.str.15 = private unnamed_addr constant [141 x i8] c"Execute a database-wide VACUUM in that database with reduced vacuum_multixact_freeze_min_age and vacuum_multixact_freeze_table_age settings.\00", align 1
@.str.16 = private unnamed_addr constant [31 x i8] c"GetNew: returning %u offset %u\00", align 1
@OFFSET_WARN_SEGMENTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64*)* @GetNewMultiXactId to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @GetNewMultiXactId(i32 %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i64* %1, i64** %4, align 8
  %13 = load i32, i32* @DEBUG2, align 4
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @debug_elog3(i32 %13, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = call i64 (...) @RecoveryInProgress()
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load i32, i32* @ERROR, align 4
  %20 = call i32 @elog(i32 %19, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  br label %21

21:                                               ; preds = %18, %2
  %22 = load i32, i32* @MultiXactGenLock, align 4
  %23 = load i32, i32* @LW_EXCLUSIVE, align 4
  %24 = call i32 @LWLockAcquire(i32 %22, i32 %23)
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** @MultiXactState, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @FirstMultiXactId, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %21
  %31 = load i32, i32* @FirstMultiXactId, align 4
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** @MultiXactState, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  br label %34

34:                                               ; preds = %30, %21
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** @MultiXactState, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %5, align 4
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** @MultiXactState, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @MultiXactIdPrecedes(i32 %38, i32 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %152, label %44

44:                                               ; preds = %34
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** @MultiXactState, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  store i32 %47, i32* %7, align 4
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** @MultiXactState, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %8, align 4
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** @MultiXactState, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 8
  store i32 %53, i32* %9, align 4
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** @MultiXactState, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 5
  %56 = load i8*, i8** %55, align 8
  store i8* %56, i8** %10, align 8
  %57 = load i32, i32* @MultiXactGenLock, align 4
  %58 = call i32 @LWLockRelease(i32 %57)
  %59 = load i64, i64* @IsUnderPostmaster, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %90

61:                                               ; preds = %44
  %62 = load i32, i32* %5, align 4
  %63 = load i32, i32* %8, align 4
  %64 = call i32 @MultiXactIdPrecedes(i32 %62, i32 %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %90, label %66

66:                                               ; preds = %61
  %67 = load i8*, i8** %10, align 8
  %68 = call i8* @get_database_name(i8* %67)
  store i8* %68, i8** %11, align 8
  %69 = load i32, i32* @PMSIGNAL_START_AUTOVAC_LAUNCHER, align 4
  %70 = call i32 @SendPostmasterSignal(i32 %69)
  %71 = load i8*, i8** %11, align 8
  %72 = icmp ne i8* %71, null
  br i1 %72, label %73, label %81

73:                                               ; preds = %66
  %74 = load i32, i32* @ERROR, align 4
  %75 = load i32, i32* @ERRCODE_PROGRAM_LIMIT_EXCEEDED, align 4
  %76 = call i32 @errcode(i32 %75)
  %77 = load i8*, i8** %11, align 8
  %78 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([113 x i8], [113 x i8]* @.str.2, i64 0, i64 0), i8* %77)
  %79 = call i32 (i8*, ...) @errhint(i8* getelementptr inbounds ([152 x i8], [152 x i8]* @.str.3, i64 0, i64 0))
  %80 = call i32 @ereport(i32 %74, i32 %79)
  br label %89

81:                                               ; preds = %66
  %82 = load i32, i32* @ERROR, align 4
  %83 = load i32, i32* @ERRCODE_PROGRAM_LIMIT_EXCEEDED, align 4
  %84 = call i32 @errcode(i32 %83)
  %85 = load i8*, i8** %10, align 8
  %86 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([120 x i8], [120 x i8]* @.str.4, i64 0, i64 0), i8* %85)
  %87 = call i32 (i8*, ...) @errhint(i8* getelementptr inbounds ([152 x i8], [152 x i8]* @.str.3, i64 0, i64 0))
  %88 = call i32 @ereport(i32 %82, i32 %87)
  br label %89

89:                                               ; preds = %81, %73
  br label %90

90:                                               ; preds = %89, %61, %44
  %91 = load i64, i64* @IsUnderPostmaster, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %100

93:                                               ; preds = %90
  %94 = load i32, i32* %5, align 4
  %95 = srem i32 %94, 65536
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %93
  %98 = load i32, i32* @PMSIGNAL_START_AUTOVAC_LAUNCHER, align 4
  %99 = call i32 @SendPostmasterSignal(i32 %98)
  br label %100

100:                                              ; preds = %97, %93, %90
  %101 = load i32, i32* %5, align 4
  %102 = load i32, i32* %7, align 4
  %103 = call i32 @MultiXactIdPrecedes(i32 %101, i32 %102)
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %139, label %105

105:                                              ; preds = %100
  %106 = load i8*, i8** %10, align 8
  %107 = call i8* @get_database_name(i8* %106)
  store i8* %107, i8** %12, align 8
  %108 = load i8*, i8** %12, align 8
  %109 = icmp ne i8* %108, null
  br i1 %109, label %110, label %124

110:                                              ; preds = %105
  %111 = load i32, i32* @WARNING, align 4
  %112 = load i32, i32* %9, align 4
  %113 = load i32, i32* %5, align 4
  %114 = sub nsw i32 %112, %113
  %115 = sext i32 %114 to i64
  %116 = load i8*, i8** %12, align 8
  %117 = load i32, i32* %9, align 4
  %118 = load i32, i32* %5, align 4
  %119 = sub nsw i32 %117, %118
  %120 = sext i32 %119 to i64
  %121 = call i32 @errmsg_plural(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.6, i64 0, i64 0), i64 %115, i8* %116, i64 %120)
  %122 = call i32 (i8*, ...) @errhint(i8* getelementptr inbounds ([152 x i8], [152 x i8]* @.str.3, i64 0, i64 0))
  %123 = call i32 @ereport(i32 %111, i32 %122)
  br label %138

124:                                              ; preds = %105
  %125 = load i32, i32* @WARNING, align 4
  %126 = load i32, i32* %9, align 4
  %127 = load i32, i32* %5, align 4
  %128 = sub nsw i32 %126, %127
  %129 = sext i32 %128 to i64
  %130 = load i8*, i8** %10, align 8
  %131 = load i32, i32* %9, align 4
  %132 = load i32, i32* %5, align 4
  %133 = sub nsw i32 %131, %132
  %134 = sext i32 %133 to i64
  %135 = call i32 @errmsg_plural(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.8, i64 0, i64 0), i64 %129, i8* %130, i64 %134)
  %136 = call i32 (i8*, ...) @errhint(i8* getelementptr inbounds ([152 x i8], [152 x i8]* @.str.3, i64 0, i64 0))
  %137 = call i32 @ereport(i32 %125, i32 %136)
  br label %138

138:                                              ; preds = %124, %110
  br label %139

139:                                              ; preds = %138, %100
  %140 = load i32, i32* @MultiXactGenLock, align 4
  %141 = load i32, i32* @LW_EXCLUSIVE, align 4
  %142 = call i32 @LWLockAcquire(i32 %140, i32 %141)
  %143 = load %struct.TYPE_2__*, %struct.TYPE_2__** @MultiXactState, align 8
  %144 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  store i32 %145, i32* %5, align 4
  %146 = load i32, i32* %5, align 4
  %147 = load i32, i32* @FirstMultiXactId, align 4
  %148 = icmp slt i32 %146, %147
  br i1 %148, label %149, label %151

149:                                              ; preds = %139
  %150 = load i32, i32* @FirstMultiXactId, align 4
  store i32 %150, i32* %5, align 4
  br label %151

151:                                              ; preds = %149, %139
  br label %152

152:                                              ; preds = %151, %34
  %153 = load i32, i32* %5, align 4
  %154 = call i32 @ExtendMultiXactOffset(i32 %153)
  %155 = load %struct.TYPE_2__*, %struct.TYPE_2__** @MultiXactState, align 8
  %156 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %155, i32 0, i32 6
  %157 = load i64, i64* %156, align 8
  store i64 %157, i64* %6, align 8
  %158 = load i64, i64* %6, align 8
  %159 = icmp eq i64 %158, 0
  br i1 %159, label %160, label %164

160:                                              ; preds = %152
  %161 = load i64*, i64** %4, align 8
  store i64 1, i64* %161, align 8
  %162 = load i32, i32* %3, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %3, align 4
  br label %167

164:                                              ; preds = %152
  %165 = load i64, i64* %6, align 8
  %166 = load i64*, i64** %4, align 8
  store i64 %165, i64* %166, align 8
  br label %167

167:                                              ; preds = %164, %160
  %168 = load %struct.TYPE_2__*, %struct.TYPE_2__** @MultiXactState, align 8
  %169 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %168, i32 0, i32 9
  %170 = load i64, i64* %169, align 8
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %206

172:                                              ; preds = %167
  %173 = load %struct.TYPE_2__*, %struct.TYPE_2__** @MultiXactState, align 8
  %174 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %173, i32 0, i32 7
  %175 = load i64, i64* %174, align 8
  %176 = load i64, i64* %6, align 8
  %177 = load i32, i32* %3, align 4
  %178 = call i64 @MultiXactOffsetWouldWrap(i64 %175, i64 %176, i32 %177)
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %206

180:                                              ; preds = %172
  %181 = load i32, i32* @PMSIGNAL_START_AUTOVAC_LAUNCHER, align 4
  %182 = call i32 @SendPostmasterSignal(i32 %181)
  %183 = load i32, i32* @ERROR, align 4
  %184 = load i32, i32* @ERRCODE_PROGRAM_LIMIT_EXCEEDED, align 4
  %185 = call i32 @errcode(i32 %184)
  %186 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.9, i64 0, i64 0))
  %187 = load %struct.TYPE_2__*, %struct.TYPE_2__** @MultiXactState, align 8
  %188 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %187, i32 0, i32 7
  %189 = load i64, i64* %188, align 8
  %190 = load i64, i64* %6, align 8
  %191 = sub nsw i64 %189, %190
  %192 = sub nsw i64 %191, 1
  %193 = load i32, i32* %3, align 4
  %194 = load %struct.TYPE_2__*, %struct.TYPE_2__** @MultiXactState, align 8
  %195 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %194, i32 0, i32 7
  %196 = load i64, i64* %195, align 8
  %197 = load i64, i64* %6, align 8
  %198 = sub nsw i64 %196, %197
  %199 = sub nsw i64 %198, 1
  %200 = call i32 @errdetail_plural(i8* getelementptr inbounds ([109 x i8], [109 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([110 x i8], [110 x i8]* @.str.11, i64 0, i64 0), i64 %192, i32 %193, i64 %199)
  %201 = load %struct.TYPE_2__*, %struct.TYPE_2__** @MultiXactState, align 8
  %202 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %201, i32 0, i32 5
  %203 = load i8*, i8** %202, align 8
  %204 = call i32 (i8*, ...) @errhint(i8* getelementptr inbounds ([148 x i8], [148 x i8]* @.str.12, i64 0, i64 0), i8* %203)
  %205 = call i32 @ereport(i32 %183, i32 %204)
  br label %206

206:                                              ; preds = %180, %172, %167
  %207 = load %struct.TYPE_2__*, %struct.TYPE_2__** @MultiXactState, align 8
  %208 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %207, i32 0, i32 9
  %209 = load i64, i64* %208, align 8
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %211, label %221

211:                                              ; preds = %206
  %212 = load %struct.TYPE_2__*, %struct.TYPE_2__** @MultiXactState, align 8
  %213 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %212, i32 0, i32 6
  %214 = load i64, i64* %213, align 8
  %215 = load %struct.TYPE_2__*, %struct.TYPE_2__** @MultiXactState, align 8
  %216 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %215, i32 0, i32 8
  %217 = load i64, i64* %216, align 8
  %218 = sub nsw i64 %214, %217
  %219 = load i64, i64* @MULTIXACT_MEMBER_SAFE_THRESHOLD, align 8
  %220 = icmp sgt i64 %218, %219
  br i1 %220, label %221, label %238

221:                                              ; preds = %211, %206
  %222 = load i64, i64* %6, align 8
  %223 = call i32 @MXOffsetToMemberPage(i64 %222)
  %224 = load i32, i32* @SLRU_PAGES_PER_SEGMENT, align 4
  %225 = sdiv i32 %223, %224
  %226 = load i64, i64* %6, align 8
  %227 = load i32, i32* %3, align 4
  %228 = sext i32 %227 to i64
  %229 = add nsw i64 %226, %228
  %230 = call i32 @MXOffsetToMemberPage(i64 %229)
  %231 = load i32, i32* @SLRU_PAGES_PER_SEGMENT, align 4
  %232 = sdiv i32 %230, %231
  %233 = icmp ne i32 %225, %232
  br i1 %233, label %234, label %237

234:                                              ; preds = %221
  %235 = load i32, i32* @PMSIGNAL_START_AUTOVAC_LAUNCHER, align 4
  %236 = call i32 @SendPostmasterSignal(i32 %235)
  br label %237

237:                                              ; preds = %234, %221
  br label %238

238:                                              ; preds = %237, %211
  %239 = load %struct.TYPE_2__*, %struct.TYPE_2__** @MultiXactState, align 8
  %240 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %239, i32 0, i32 9
  %241 = load i64, i64* %240, align 8
  %242 = icmp ne i64 %241, 0
  br i1 %242, label %243, label %282

243:                                              ; preds = %238
  %244 = load %struct.TYPE_2__*, %struct.TYPE_2__** @MultiXactState, align 8
  %245 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %244, i32 0, i32 7
  %246 = load i64, i64* %245, align 8
  %247 = load i64, i64* %6, align 8
  %248 = load i32, i32* %3, align 4
  %249 = load i32, i32* @MULTIXACT_MEMBERS_PER_PAGE, align 4
  %250 = load i32, i32* @SLRU_PAGES_PER_SEGMENT, align 4
  %251 = mul nsw i32 %249, %250
  %252 = mul nsw i32 %251, 20
  %253 = add nsw i32 %248, %252
  %254 = call i64 @MultiXactOffsetWouldWrap(i64 %246, i64 %247, i32 %253)
  %255 = icmp ne i64 %254, 0
  br i1 %255, label %256, label %282

256:                                              ; preds = %243
  %257 = load i32, i32* @WARNING, align 4
  %258 = load i32, i32* @ERRCODE_PROGRAM_LIMIT_EXCEEDED, align 4
  %259 = call i32 @errcode(i32 %258)
  %260 = load %struct.TYPE_2__*, %struct.TYPE_2__** @MultiXactState, align 8
  %261 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %260, i32 0, i32 7
  %262 = load i64, i64* %261, align 8
  %263 = load i64, i64* %6, align 8
  %264 = sub nsw i64 %262, %263
  %265 = load i32, i32* %3, align 4
  %266 = sext i32 %265 to i64
  %267 = add nsw i64 %264, %266
  %268 = load %struct.TYPE_2__*, %struct.TYPE_2__** @MultiXactState, align 8
  %269 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %268, i32 0, i32 5
  %270 = load i8*, i8** %269, align 8
  %271 = load %struct.TYPE_2__*, %struct.TYPE_2__** @MultiXactState, align 8
  %272 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %271, i32 0, i32 7
  %273 = load i64, i64* %272, align 8
  %274 = load i64, i64* %6, align 8
  %275 = sub nsw i64 %273, %274
  %276 = load i32, i32* %3, align 4
  %277 = sext i32 %276 to i64
  %278 = add nsw i64 %275, %277
  %279 = call i32 @errmsg_plural(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.14, i64 0, i64 0), i64 %267, i8* %270, i64 %278)
  %280 = call i32 (i8*, ...) @errhint(i8* getelementptr inbounds ([141 x i8], [141 x i8]* @.str.15, i64 0, i64 0))
  %281 = call i32 @ereport(i32 %257, i32 %280)
  br label %282

282:                                              ; preds = %256, %243, %238
  %283 = load i64, i64* %6, align 8
  %284 = load i32, i32* %3, align 4
  %285 = call i32 @ExtendMultiXactMember(i64 %283, i32 %284)
  %286 = call i32 (...) @START_CRIT_SECTION()
  %287 = load %struct.TYPE_2__*, %struct.TYPE_2__** @MultiXactState, align 8
  %288 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %287, i32 0, i32 0
  %289 = load i32, i32* %288, align 8
  %290 = add nsw i32 %289, 1
  store i32 %290, i32* %288, align 8
  %291 = load i32, i32* %3, align 4
  %292 = sext i32 %291 to i64
  %293 = load %struct.TYPE_2__*, %struct.TYPE_2__** @MultiXactState, align 8
  %294 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %293, i32 0, i32 6
  %295 = load i64, i64* %294, align 8
  %296 = add nsw i64 %295, %292
  store i64 %296, i64* %294, align 8
  %297 = load i32, i32* @MultiXactGenLock, align 4
  %298 = call i32 @LWLockRelease(i32 %297)
  %299 = load i32, i32* @DEBUG2, align 4
  %300 = load i32, i32* %5, align 4
  %301 = load i64*, i64** %4, align 8
  %302 = load i64, i64* %301, align 8
  %303 = call i32 @debug_elog4(i32 %299, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.16, i64 0, i64 0), i32 %300, i64 %302)
  %304 = load i32, i32* %5, align 4
  ret i32 %304
}

declare dso_local i32 @debug_elog3(i32, i8*, i32) #1

declare dso_local i64 @RecoveryInProgress(...) #1

declare dso_local i32 @elog(i32, i8*) #1

declare dso_local i32 @LWLockAcquire(i32, i32) #1

declare dso_local i32 @MultiXactIdPrecedes(i32, i32) #1

declare dso_local i32 @LWLockRelease(i32) #1

declare dso_local i8* @get_database_name(i8*) #1

declare dso_local i32 @SendPostmasterSignal(i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, ...) #1

declare dso_local i32 @errhint(i8*, ...) #1

declare dso_local i32 @errmsg_plural(i8*, i8*, i64, i8*, i64) #1

declare dso_local i32 @ExtendMultiXactOffset(i32) #1

declare dso_local i64 @MultiXactOffsetWouldWrap(i64, i64, i32) #1

declare dso_local i32 @errdetail_plural(i8*, i8*, i64, i32, i64) #1

declare dso_local i32 @MXOffsetToMemberPage(i64) #1

declare dso_local i32 @ExtendMultiXactMember(i64, i32) #1

declare dso_local i32 @START_CRIT_SECTION(...) #1

declare dso_local i32 @debug_elog4(i32, i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
