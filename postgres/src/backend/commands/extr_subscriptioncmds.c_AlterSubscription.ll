; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_subscriptioncmds.c_AlterSubscription.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_subscriptioncmds.c_AlterSubscription.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i8*, i32, i8*, i32, i32 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { i32, i32, i32 }
%struct.TYPE_17__ = type { i32 }

@Natts_pg_subscription = common dso_local global i32 0, align 4
@SubscriptionRelationId = common dso_local global i32 0, align 4
@RowExclusiveLock = common dso_local global i32 0, align 4
@SUBSCRIPTIONNAME = common dso_local global i32 0, align 4
@MyDatabaseId = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_UNDEFINED_OBJECT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"subscription \22%s\22 does not exist\00", align 1
@ACLCHECK_NOT_OWNER = common dso_local global i32 0, align 4
@OBJECT_SUBSCRIPTION = common dso_local global i32 0, align 4
@AccessExclusiveLock = common dso_local global i32 0, align 4
@ERRCODE_SYNTAX_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"cannot set %s for enabled subscription\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"slot_name = NONE\00", align 1
@namein = common dso_local global i32 0, align 4
@Anum_pg_subscription_subslotname = common dso_local global i32 0, align 4
@Anum_pg_subscription_subsynccommit = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [58 x i8] c"cannot enable subscription that does not have a slot name\00", align 1
@Anum_pg_subscription_subenabled = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [17 x i8] c"libpqwalreceiver\00", align 1
@Anum_pg_subscription_subconninfo = common dso_local global i32 0, align 4
@Anum_pg_subscription_subpublications = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [74 x i8] c"ALTER SUBSCRIPTION with refresh is not allowed for disabled subscriptions\00", align 1
@.str.6 = private unnamed_addr constant [71 x i8] c"Use ALTER SUBSCRIPTION ... SET PUBLICATION ... WITH (refresh = false).\00", align 1
@.str.7 = private unnamed_addr constant [73 x i8] c"ALTER SUBSCRIPTION ... REFRESH is not allowed for disabled subscriptions\00", align 1
@.str.8 = private unnamed_addr constant [40 x i8] c"unrecognized ALTER SUBSCRIPTION kind %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @AlterSubscription(%struct.TYPE_18__* %0) #0 {
  %2 = alloca %struct.TYPE_18__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_16__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_15__*, align 8
  %13 = alloca %struct.TYPE_17__*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %2, align 8
  %22 = load i32, i32* @Natts_pg_subscription, align 4
  %23 = zext i32 %22 to i64
  %24 = call i8* @llvm.stacksave()
  store i8* %24, i8** %5, align 8
  %25 = alloca i32, i64 %23, align 16
  store i64 %23, i64* %6, align 8
  %26 = load i32, i32* @Natts_pg_subscription, align 4
  %27 = zext i32 %26 to i64
  %28 = alloca i32, i64 %27, align 16
  store i64 %27, i64* %7, align 8
  %29 = load i32, i32* @Natts_pg_subscription, align 4
  %30 = zext i32 %29 to i64
  %31 = alloca i32, i64 %30, align 16
  store i64 %30, i64* %8, align 8
  store i32 0, i32* %11, align 4
  %32 = load i32, i32* @SubscriptionRelationId, align 4
  %33 = load i32, i32* @RowExclusiveLock, align 4
  %34 = call i32 @table_open(i32 %32, i32 %33)
  store i32 %34, i32* %3, align 4
  %35 = load i32, i32* @SUBSCRIPTIONNAME, align 4
  %36 = load i32, i32* @MyDatabaseId, align 4
  %37 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = call i32 @CStringGetDatum(i8* %39)
  %41 = call %struct.TYPE_16__* @SearchSysCacheCopy2(i32 %35, i32 %36, i32 %40)
  store %struct.TYPE_16__* %41, %struct.TYPE_16__** %9, align 8
  %42 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %43 = call i32 @HeapTupleIsValid(%struct.TYPE_16__* %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %54, label %45

45:                                               ; preds = %1
  %46 = load i32, i32* @ERROR, align 4
  %47 = load i32, i32* @ERRCODE_UNDEFINED_OBJECT, align 4
  %48 = call i32 @errcode(i32 %47)
  %49 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %50 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %49, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8
  %52 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i8* %51)
  %53 = call i32 @ereport(i32 %46, i32 %52)
  br label %54

54:                                               ; preds = %45, %1
  %55 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %56 = call i64 @GETSTRUCT(%struct.TYPE_16__* %55)
  %57 = inttoptr i64 %56 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %57, %struct.TYPE_17__** %13, align 8
  %58 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %59 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  store i32 %60, i32* %10, align 4
  %61 = load i32, i32* %10, align 4
  %62 = call i32 (...) @GetUserId()
  %63 = call i32 @pg_subscription_ownercheck(i32 %61, i32 %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %72, label %65

65:                                               ; preds = %54
  %66 = load i32, i32* @ACLCHECK_NOT_OWNER, align 4
  %67 = load i32, i32* @OBJECT_SUBSCRIPTION, align 4
  %68 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %69 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %68, i32 0, i32 0
  %70 = load i8*, i8** %69, align 8
  %71 = call i32 @aclcheck_error(i32 %66, i32 %67, i8* %70)
  br label %72

72:                                               ; preds = %65, %54
  %73 = load i32, i32* %10, align 4
  %74 = call %struct.TYPE_15__* @GetSubscription(i32 %73, i32 0)
  store %struct.TYPE_15__* %74, %struct.TYPE_15__** %12, align 8
  %75 = load i32, i32* @SubscriptionRelationId, align 4
  %76 = load i32, i32* %10, align 4
  %77 = load i32, i32* @AccessExclusiveLock, align 4
  %78 = call i32 @LockSharedObject(i32 %75, i32 %76, i32 0, i32 %77)
  %79 = mul nuw i64 4, %30
  %80 = trunc i64 %79 to i32
  %81 = call i32 @memset(i32* %31, i32 0, i32 %80)
  %82 = mul nuw i64 4, %23
  %83 = trunc i64 %82 to i32
  %84 = call i32 @memset(i32* %25, i32 0, i32 %83)
  %85 = mul nuw i64 4, %27
  %86 = trunc i64 %85 to i32
  %87 = call i32 @memset(i32* %28, i32 0, i32 %86)
  %88 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %89 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  switch i32 %90, label %263 [
    i32 130, label %91
    i32 131, label %149
    i32 132, label %185
    i32 129, label %203
    i32 128, label %244
  ]

91:                                               ; preds = %72
  %92 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %93 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @parse_subscription_options(i32 %94, i32* null, i32* null, i32* null, i32* null, i32* %15, i8** %14, i32* null, i8** %16, i32* null)
  %96 = load i32, i32* %15, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %134

98:                                               ; preds = %91
  %99 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %100 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %112

103:                                              ; preds = %98
  %104 = load i8*, i8** %14, align 8
  %105 = icmp ne i8* %104, null
  br i1 %105, label %112, label %106

106:                                              ; preds = %103
  %107 = load i32, i32* @ERROR, align 4
  %108 = load i32, i32* @ERRCODE_SYNTAX_ERROR, align 4
  %109 = call i32 @errcode(i32 %108)
  %110 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %111 = call i32 @ereport(i32 %107, i32 %110)
  br label %112

112:                                              ; preds = %106, %103, %98
  %113 = load i8*, i8** %14, align 8
  %114 = icmp ne i8* %113, null
  br i1 %114, label %115, label %124

115:                                              ; preds = %112
  %116 = load i32, i32* @namein, align 4
  %117 = load i8*, i8** %14, align 8
  %118 = call i32 @CStringGetDatum(i8* %117)
  %119 = call i32 @DirectFunctionCall1(i32 %116, i32 %118)
  %120 = load i32, i32* @Anum_pg_subscription_subslotname, align 4
  %121 = sub nsw i32 %120, 1
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %31, i64 %122
  store i32 %119, i32* %123, align 4
  br label %129

124:                                              ; preds = %112
  %125 = load i32, i32* @Anum_pg_subscription_subslotname, align 4
  %126 = sub nsw i32 %125, 1
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %25, i64 %127
  store i32 1, i32* %128, align 4
  br label %129

129:                                              ; preds = %124, %115
  %130 = load i32, i32* @Anum_pg_subscription_subslotname, align 4
  %131 = sub nsw i32 %130, 1
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %28, i64 %132
  store i32 1, i32* %133, align 4
  br label %134

134:                                              ; preds = %129, %91
  %135 = load i8*, i8** %16, align 8
  %136 = icmp ne i8* %135, null
  br i1 %136, label %137, label %148

137:                                              ; preds = %134
  %138 = load i8*, i8** %16, align 8
  %139 = call i32 @CStringGetTextDatum(i8* %138)
  %140 = load i32, i32* @Anum_pg_subscription_subsynccommit, align 4
  %141 = sub nsw i32 %140, 1
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i32, i32* %31, i64 %142
  store i32 %139, i32* %143, align 4
  %144 = load i32, i32* @Anum_pg_subscription_subsynccommit, align 4
  %145 = sub nsw i32 %144, 1
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i32, i32* %28, i64 %146
  store i32 1, i32* %147, align 4
  br label %148

148:                                              ; preds = %137, %134
  store i32 1, i32* %11, align 4
  br label %269

149:                                              ; preds = %72
  %150 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %151 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %150, i32 0, i32 3
  %152 = load i32, i32* %151, align 8
  %153 = call i32 @parse_subscription_options(i32 %152, i32* null, i32* %18, i32* %17, i32* null, i32* null, i8** null, i32* null, i8** null, i32* null)
  %154 = load i32, i32* %18, align 4
  %155 = call i32 @Assert(i32 %154)
  %156 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %157 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %169, label %160

160:                                              ; preds = %149
  %161 = load i32, i32* %17, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %169

163:                                              ; preds = %160
  %164 = load i32, i32* @ERROR, align 4
  %165 = load i32, i32* @ERRCODE_SYNTAX_ERROR, align 4
  %166 = call i32 @errcode(i32 %165)
  %167 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.3, i64 0, i64 0))
  %168 = call i32 @ereport(i32 %164, i32 %167)
  br label %169

169:                                              ; preds = %163, %160, %149
  %170 = load i32, i32* %17, align 4
  %171 = call i32 @BoolGetDatum(i32 %170)
  %172 = load i32, i32* @Anum_pg_subscription_subenabled, align 4
  %173 = sub nsw i32 %172, 1
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i32, i32* %31, i64 %174
  store i32 %171, i32* %175, align 4
  %176 = load i32, i32* @Anum_pg_subscription_subenabled, align 4
  %177 = sub nsw i32 %176, 1
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i32, i32* %28, i64 %178
  store i32 1, i32* %179, align 4
  %180 = load i32, i32* %17, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %184

182:                                              ; preds = %169
  %183 = call i32 (...) @ApplyLauncherWakeupAtCommit()
  br label %184

184:                                              ; preds = %182, %169
  store i32 1, i32* %11, align 4
  br label %269

185:                                              ; preds = %72
  %186 = call i32 @load_file(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i32 0)
  %187 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %188 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %187, i32 0, i32 2
  %189 = load i8*, i8** %188, align 8
  %190 = call i32 @walrcv_check_conninfo(i8* %189)
  %191 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %192 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %191, i32 0, i32 2
  %193 = load i8*, i8** %192, align 8
  %194 = call i32 @CStringGetTextDatum(i8* %193)
  %195 = load i32, i32* @Anum_pg_subscription_subconninfo, align 4
  %196 = sub nsw i32 %195, 1
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds i32, i32* %31, i64 %197
  store i32 %194, i32* %198, align 4
  %199 = load i32, i32* @Anum_pg_subscription_subconninfo, align 4
  %200 = sub nsw i32 %199, 1
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds i32, i32* %28, i64 %201
  store i32 1, i32* %202, align 4
  store i32 1, i32* %11, align 4
  br label %269

203:                                              ; preds = %72
  %204 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %205 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %204, i32 0, i32 3
  %206 = load i32, i32* %205, align 8
  %207 = call i32 @parse_subscription_options(i32 %206, i32* null, i32* null, i32* null, i32* null, i32* null, i8** null, i32* %19, i8** null, i32* %20)
  %208 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %209 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %208, i32 0, i32 4
  %210 = load i32, i32* %209, align 4
  %211 = call i32 @publicationListToArray(i32 %210)
  %212 = load i32, i32* @Anum_pg_subscription_subpublications, align 4
  %213 = sub nsw i32 %212, 1
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds i32, i32* %31, i64 %214
  store i32 %211, i32* %215, align 4
  %216 = load i32, i32* @Anum_pg_subscription_subpublications, align 4
  %217 = sub nsw i32 %216, 1
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds i32, i32* %28, i64 %218
  store i32 1, i32* %219, align 4
  store i32 1, i32* %11, align 4
  %220 = load i32, i32* %20, align 4
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %243

222:                                              ; preds = %203
  %223 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %224 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 4
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %234, label %227

227:                                              ; preds = %222
  %228 = load i32, i32* @ERROR, align 4
  %229 = load i32, i32* @ERRCODE_SYNTAX_ERROR, align 4
  %230 = call i32 @errcode(i32 %229)
  %231 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.5, i64 0, i64 0))
  %232 = call i32 @errhint(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.6, i64 0, i64 0))
  %233 = call i32 @ereport(i32 %228, i32 %232)
  br label %234

234:                                              ; preds = %227, %222
  %235 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %236 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %235, i32 0, i32 4
  %237 = load i32, i32* %236, align 4
  %238 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %239 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %238, i32 0, i32 1
  store i32 %237, i32* %239, align 4
  %240 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %241 = load i32, i32* %19, align 4
  %242 = call i32 @AlterSubscription_refresh(%struct.TYPE_15__* %240, i32 %241)
  br label %243

243:                                              ; preds = %234, %203
  br label %269

244:                                              ; preds = %72
  %245 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %246 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 4
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %255, label %249

249:                                              ; preds = %244
  %250 = load i32, i32* @ERROR, align 4
  %251 = load i32, i32* @ERRCODE_SYNTAX_ERROR, align 4
  %252 = call i32 @errcode(i32 %251)
  %253 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.7, i64 0, i64 0))
  %254 = call i32 @ereport(i32 %250, i32 %253)
  br label %255

255:                                              ; preds = %249, %244
  %256 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %257 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %256, i32 0, i32 3
  %258 = load i32, i32* %257, align 8
  %259 = call i32 @parse_subscription_options(i32 %258, i32* null, i32* null, i32* null, i32* null, i32* null, i8** null, i32* %21, i8** null, i32* null)
  %260 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %261 = load i32, i32* %21, align 4
  %262 = call i32 @AlterSubscription_refresh(%struct.TYPE_15__* %260, i32 %261)
  br label %269

263:                                              ; preds = %72
  %264 = load i32, i32* @ERROR, align 4
  %265 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %266 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %265, i32 0, i32 1
  %267 = load i32, i32* %266, align 8
  %268 = call i32 @elog(i32 %264, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.8, i64 0, i64 0), i32 %267)
  br label %269

269:                                              ; preds = %263, %255, %243, %185, %184, %148
  %270 = load i32, i32* %11, align 4
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %272, label %284

272:                                              ; preds = %269
  %273 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %274 = load i32, i32* %3, align 4
  %275 = call i32 @RelationGetDescr(i32 %274)
  %276 = call %struct.TYPE_16__* @heap_modify_tuple(%struct.TYPE_16__* %273, i32 %275, i32* %31, i32* %25, i32* %28)
  store %struct.TYPE_16__* %276, %struct.TYPE_16__** %9, align 8
  %277 = load i32, i32* %3, align 4
  %278 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %279 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %278, i32 0, i32 0
  %280 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %281 = call i32 @CatalogTupleUpdate(i32 %277, i32* %279, %struct.TYPE_16__* %280)
  %282 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %283 = call i32 @heap_freetuple(%struct.TYPE_16__* %282)
  br label %284

284:                                              ; preds = %272, %269
  %285 = load i32, i32* %3, align 4
  %286 = load i32, i32* @RowExclusiveLock, align 4
  %287 = call i32 @table_close(i32 %285, i32 %286)
  %288 = load i32, i32* %4, align 4
  %289 = load i32, i32* @SubscriptionRelationId, align 4
  %290 = load i32, i32* %10, align 4
  %291 = call i32 @ObjectAddressSet(i32 %288, i32 %289, i32 %290)
  %292 = load i32, i32* @SubscriptionRelationId, align 4
  %293 = load i32, i32* %10, align 4
  %294 = call i32 @InvokeObjectPostAlterHook(i32 %292, i32 %293, i32 0)
  %295 = load i32, i32* %4, align 4
  %296 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %296)
  ret i32 %295
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @table_open(i32, i32) #2

declare dso_local %struct.TYPE_16__* @SearchSysCacheCopy2(i32, i32, i32) #2

declare dso_local i32 @CStringGetDatum(i8*) #2

declare dso_local i32 @HeapTupleIsValid(%struct.TYPE_16__*) #2

declare dso_local i32 @ereport(i32, i32) #2

declare dso_local i32 @errcode(i32) #2

declare dso_local i32 @errmsg(i8*, ...) #2

declare dso_local i64 @GETSTRUCT(%struct.TYPE_16__*) #2

declare dso_local i32 @pg_subscription_ownercheck(i32, i32) #2

declare dso_local i32 @GetUserId(...) #2

declare dso_local i32 @aclcheck_error(i32, i32, i8*) #2

declare dso_local %struct.TYPE_15__* @GetSubscription(i32, i32) #2

declare dso_local i32 @LockSharedObject(i32, i32, i32, i32) #2

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i32 @parse_subscription_options(i32, i32*, i32*, i32*, i32*, i32*, i8**, i32*, i8**, i32*) #2

declare dso_local i32 @DirectFunctionCall1(i32, i32) #2

declare dso_local i32 @CStringGetTextDatum(i8*) #2

declare dso_local i32 @Assert(i32) #2

declare dso_local i32 @BoolGetDatum(i32) #2

declare dso_local i32 @ApplyLauncherWakeupAtCommit(...) #2

declare dso_local i32 @load_file(i8*, i32) #2

declare dso_local i32 @walrcv_check_conninfo(i8*) #2

declare dso_local i32 @publicationListToArray(i32) #2

declare dso_local i32 @errhint(i8*) #2

declare dso_local i32 @AlterSubscription_refresh(%struct.TYPE_15__*, i32) #2

declare dso_local i32 @elog(i32, i8*, i32) #2

declare dso_local %struct.TYPE_16__* @heap_modify_tuple(%struct.TYPE_16__*, i32, i32*, i32*, i32*) #2

declare dso_local i32 @RelationGetDescr(i32) #2

declare dso_local i32 @CatalogTupleUpdate(i32, i32*, %struct.TYPE_16__*) #2

declare dso_local i32 @heap_freetuple(%struct.TYPE_16__*) #2

declare dso_local i32 @table_close(i32, i32) #2

declare dso_local i32 @ObjectAddressSet(i32, i32, i32) #2

declare dso_local i32 @InvokeObjectPostAlterHook(i32, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
