; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/tcop/extr_postgres.c_exec_execute_message.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/tcop/extr_postgres.c_exec_execute_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 (%struct.TYPE_13__*)* }
%struct.TYPE_12__ = type { i64, i8*, i8*, i32, i32*, i32* }

@COMPLETION_TAG_BUFSIZE = common dso_local global i32 0, align 4
@log_statement_stats = common dso_local global i32 0, align 4
@whereToSendOutput = common dso_local global i64 0, align 8
@DestRemote = common dso_local global i64 0, align 8
@DestRemoteExecute = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_UNDEFINED_CURSOR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"portal \22%s\22 does not exist\00", align 1
@NIL = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"<unnamed>\00", align 1
@debug_query_string = common dso_local global i8* null, align 8
@STATE_RUNNING = common dso_local global i32 0, align 4
@LOG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"%s %s%s%s: %s\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"execute fetch from\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"execute\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@ERRCODE_IN_FAILED_SQL_TRANSACTION = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [80 x i8] c"current transaction is aborted, commands ignored until end of transaction block\00", align 1
@FETCH_ALL = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [16 x i8] c"duration: %s ms\00", align 1
@.str.9 = private unnamed_addr constant [31 x i8] c"duration: %s ms  %s %s%s%s: %s\00", align 1
@.str.10 = private unnamed_addr constant [27 x i8] c"EXECUTE MESSAGE STATISTICS\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64)* @exec_execute_message to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @exec_execute_message(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca [32 x i8], align 16
  %19 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %20 = load i32, i32* @COMPLETION_TAG_BUFSIZE, align 4
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %9, align 8
  %23 = alloca i8, i64 %21, align 16
  store i64 %21, i64* %10, align 8
  %24 = load i32, i32* @log_statement_stats, align 4
  store i32 %24, i32* %14, align 4
  store i32 0, i32* %17, align 4
  %25 = load i64, i64* @whereToSendOutput, align 8
  store i64 %25, i64* %5, align 8
  %26 = load i64, i64* %5, align 8
  %27 = load i64, i64* @DestRemote, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %2
  %30 = load i64, i64* @DestRemoteExecute, align 8
  store i64 %30, i64* %5, align 8
  br label %31

31:                                               ; preds = %29, %2
  %32 = load i8*, i8** %3, align 8
  %33 = call %struct.TYPE_12__* @GetPortalByName(i8* %32)
  store %struct.TYPE_12__* %33, %struct.TYPE_12__** %7, align 8
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %35 = call i32 @PortalIsValid(%struct.TYPE_12__* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %44, label %37

37:                                               ; preds = %31
  %38 = load i32, i32* @ERROR, align 4
  %39 = load i32, i32* @ERRCODE_UNDEFINED_CURSOR, align 4
  %40 = call i32 @errcode(i32 %39)
  %41 = load i8*, i8** %3, align 8
  %42 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i8* %41)
  %43 = call i32 @ereport(i32 %38, i32 %42)
  br label %44

44:                                               ; preds = %37, %31
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 4
  %47 = load i32*, i32** %46, align 8
  %48 = icmp eq i32* %47, null
  br i1 %48, label %49, label %59

49:                                               ; preds = %44
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @NIL, align 8
  %54 = icmp eq i64 %52, %53
  %55 = zext i1 %54 to i32
  %56 = call i32 @Assert(i32 %55)
  %57 = load i64, i64* %5, align 8
  %58 = call i32 @NullCommand(i64 %57)
  store i32 1, i32* %19, align 4
  br label %283

59:                                               ; preds = %44
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = call i32 @IsTransactionStmtList(i64 %62)
  store i32 %63, i32* %15, align 4
  %64 = load i32, i32* %15, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %82

66:                                               ; preds = %59
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 1
  %69 = load i8*, i8** %68, align 8
  %70 = call i8* @pstrdup(i8* %69)
  store i8* %70, i8** %11, align 8
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 2
  %73 = load i8*, i8** %72, align 8
  %74 = icmp ne i8* %73, null
  br i1 %74, label %75, label %80

75:                                               ; preds = %66
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i32 0, i32 2
  %78 = load i8*, i8** %77, align 8
  %79 = call i8* @pstrdup(i8* %78)
  store i8* %79, i8** %12, align 8
  br label %81

80:                                               ; preds = %66
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8** %12, align 8
  br label %81

81:                                               ; preds = %80, %75
  store i32* null, i32** %13, align 8
  br label %99

82:                                               ; preds = %59
  %83 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 1
  %85 = load i8*, i8** %84, align 8
  store i8* %85, i8** %11, align 8
  %86 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %86, i32 0, i32 2
  %88 = load i8*, i8** %87, align 8
  %89 = icmp ne i8* %88, null
  br i1 %89, label %90, label %94

90:                                               ; preds = %82
  %91 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %91, i32 0, i32 2
  %93 = load i8*, i8** %92, align 8
  store i8* %93, i8** %12, align 8
  br label %95

94:                                               ; preds = %82
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8** %12, align 8
  br label %95

95:                                               ; preds = %94, %90
  %96 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %97 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %96, i32 0, i32 5
  %98 = load i32*, i32** %97, align 8
  store i32* %98, i32** %13, align 8
  br label %99

99:                                               ; preds = %95, %81
  %100 = load i8*, i8** %11, align 8
  store i8* %100, i8** @debug_query_string, align 8
  %101 = load i32, i32* @STATE_RUNNING, align 4
  %102 = load i8*, i8** %11, align 8
  %103 = call i32 @pgstat_report_activity(i32 %101, i8* %102)
  %104 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %105 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %104, i32 0, i32 4
  %106 = load i32*, i32** %105, align 8
  %107 = call i32 @set_ps_display(i32* %106, i32 0)
  %108 = load i32, i32* %14, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %99
  %111 = call i32 (...) @ResetUsage()
  br label %112

112:                                              ; preds = %110, %99
  %113 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %114 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %113, i32 0, i32 4
  %115 = load i32*, i32** %114, align 8
  %116 = load i64, i64* %5, align 8
  %117 = call i32 @BeginCommand(i32* %115, i64 %116)
  %118 = load i64, i64* %5, align 8
  %119 = call %struct.TYPE_13__* @CreateDestReceiver(i64 %118)
  store %struct.TYPE_13__* %119, %struct.TYPE_13__** %6, align 8
  %120 = load i64, i64* %5, align 8
  %121 = load i64, i64* @DestRemoteExecute, align 8
  %122 = icmp eq i64 %120, %121
  br i1 %122, label %123, label %127

123:                                              ; preds = %112
  %124 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %125 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %126 = call i32 @SetRemoteDestReceiverParams(%struct.TYPE_13__* %124, %struct.TYPE_12__* %125)
  br label %127

127:                                              ; preds = %123, %112
  %128 = call i32 (...) @start_xact_command()
  %129 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %130 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %129, i32 0, i32 3
  %131 = load i32, i32* %130, align 8
  %132 = icmp ne i32 %131, 0
  %133 = xor i1 %132, true
  %134 = zext i1 %133 to i32
  store i32 %134, i32* %16, align 4
  %135 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %136 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = call i64 @check_log_statement(i64 %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %172

140:                                              ; preds = %127
  %141 = load i32, i32* @LOG, align 4
  %142 = load i32, i32* %16, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %146

144:                                              ; preds = %140
  %145 = call i32 @_(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  br label %148

146:                                              ; preds = %140
  %147 = call i32 @_(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  br label %148

148:                                              ; preds = %146, %144
  %149 = phi i32 [ %145, %144 ], [ %147, %146 ]
  %150 = load i8*, i8** %12, align 8
  %151 = load i8*, i8** %3, align 8
  %152 = load i8, i8* %151, align 1
  %153 = sext i8 %152 to i32
  %154 = icmp ne i32 %153, 0
  %155 = zext i1 %154 to i64
  %156 = select i1 %154, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0)
  %157 = load i8*, i8** %3, align 8
  %158 = load i8, i8* %157, align 1
  %159 = sext i8 %158 to i32
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %163

161:                                              ; preds = %148
  %162 = load i8*, i8** %3, align 8
  br label %164

163:                                              ; preds = %148
  br label %164

164:                                              ; preds = %163, %161
  %165 = phi i8* [ %162, %161 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0), %163 ]
  %166 = load i8*, i8** %11, align 8
  %167 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 %149, i8* %150, i8* %156, i8* %165, i8* %166)
  %168 = call i32 @errhidestmt(i32 1)
  %169 = load i32*, i32** %13, align 8
  %170 = call i32 @errdetail_params(i32* %169)
  %171 = call i32 @ereport(i32 %141, i32 %170)
  store i32 1, i32* %17, align 4
  br label %172

172:                                              ; preds = %164, %127
  %173 = call i64 (...) @IsAbortedTransactionBlockState()
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %188

175:                                              ; preds = %172
  %176 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %177 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %176, i32 0, i32 0
  %178 = load i64, i64* %177, align 8
  %179 = call i32 @IsTransactionExitStmtList(i64 %178)
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %188, label %181

181:                                              ; preds = %175
  %182 = load i32, i32* @ERROR, align 4
  %183 = load i32, i32* @ERRCODE_IN_FAILED_SQL_TRANSACTION, align 4
  %184 = call i32 @errcode(i32 %183)
  %185 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.7, i64 0, i64 0))
  %186 = call i32 (...) @errdetail_abort()
  %187 = call i32 @ereport(i32 %182, i32 %186)
  br label %188

188:                                              ; preds = %181, %175, %172
  %189 = call i32 (...) @CHECK_FOR_INTERRUPTS()
  %190 = load i64, i64* %4, align 8
  %191 = icmp sle i64 %190, 0
  br i1 %191, label %192, label %194

192:                                              ; preds = %188
  %193 = load i64, i64* @FETCH_ALL, align 8
  store i64 %193, i64* %4, align 8
  br label %194

194:                                              ; preds = %192, %188
  %195 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %196 = load i64, i64* %4, align 8
  %197 = load i32, i32* %16, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %203, label %199

199:                                              ; preds = %194
  %200 = load i64, i64* %4, align 8
  %201 = load i64, i64* @FETCH_ALL, align 8
  %202 = icmp eq i64 %200, %201
  br label %203

203:                                              ; preds = %199, %194
  %204 = phi i1 [ false, %194 ], [ %202, %199 ]
  %205 = zext i1 %204 to i32
  %206 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %207 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %208 = call i32 @PortalRun(%struct.TYPE_12__* %195, i64 %196, i32 1, i32 %205, %struct.TYPE_13__* %206, %struct.TYPE_13__* %207, i8* %23)
  store i32 %208, i32* %8, align 4
  %209 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %210 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %209, i32 0, i32 0
  %211 = load i32 (%struct.TYPE_13__*)*, i32 (%struct.TYPE_13__*)** %210, align 8
  %212 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %213 = call i32 %211(%struct.TYPE_13__* %212)
  %214 = load i32, i32* %8, align 4
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %227

216:                                              ; preds = %203
  %217 = load i32, i32* %15, align 4
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %221

219:                                              ; preds = %216
  %220 = call i32 (...) @finish_xact_command()
  br label %224

221:                                              ; preds = %216
  %222 = call i32 (...) @CommandCounterIncrement()
  %223 = call i32 (...) @disable_statement_timeout()
  br label %224

224:                                              ; preds = %221, %219
  %225 = load i64, i64* %5, align 8
  %226 = call i32 @EndCommand(i8* %23, i64 %225)
  br label %234

227:                                              ; preds = %203
  %228 = load i64, i64* @whereToSendOutput, align 8
  %229 = load i64, i64* @DestRemote, align 8
  %230 = icmp eq i64 %228, %229
  br i1 %230, label %231, label %233

231:                                              ; preds = %227
  %232 = call i32 @pq_putemptymessage(i8 signext 115)
  br label %233

233:                                              ; preds = %231, %227
  br label %234

234:                                              ; preds = %233, %224
  %235 = getelementptr inbounds [32 x i8], [32 x i8]* %18, i64 0, i64 0
  %236 = load i32, i32* %17, align 4
  %237 = call i32 @check_log_duration(i8* %235, i32 %236)
  switch i32 %237, label %277 [
    i32 1, label %238
    i32 2, label %244
  ]

238:                                              ; preds = %234
  %239 = load i32, i32* @LOG, align 4
  %240 = getelementptr inbounds [32 x i8], [32 x i8]* %18, i64 0, i64 0
  %241 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0), i8* %240)
  %242 = call i32 @errhidestmt(i32 1)
  %243 = call i32 @ereport(i32 %239, i32 %242)
  br label %277

244:                                              ; preds = %234
  %245 = load i32, i32* @LOG, align 4
  %246 = getelementptr inbounds [32 x i8], [32 x i8]* %18, i64 0, i64 0
  %247 = load i32, i32* %16, align 4
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %249, label %251

249:                                              ; preds = %244
  %250 = call i32 @_(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  br label %253

251:                                              ; preds = %244
  %252 = call i32 @_(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  br label %253

253:                                              ; preds = %251, %249
  %254 = phi i32 [ %250, %249 ], [ %252, %251 ]
  %255 = load i8*, i8** %12, align 8
  %256 = load i8*, i8** %3, align 8
  %257 = load i8, i8* %256, align 1
  %258 = sext i8 %257 to i32
  %259 = icmp ne i32 %258, 0
  %260 = zext i1 %259 to i64
  %261 = select i1 %259, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0)
  %262 = load i8*, i8** %3, align 8
  %263 = load i8, i8* %262, align 1
  %264 = sext i8 %263 to i32
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %266, label %268

266:                                              ; preds = %253
  %267 = load i8*, i8** %3, align 8
  br label %269

268:                                              ; preds = %253
  br label %269

269:                                              ; preds = %268, %266
  %270 = phi i8* [ %267, %266 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0), %268 ]
  %271 = load i8*, i8** %11, align 8
  %272 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9, i64 0, i64 0), i8* %246, i32 %254, i8* %255, i8* %261, i8* %270, i8* %271)
  %273 = call i32 @errhidestmt(i32 1)
  %274 = load i32*, i32** %13, align 8
  %275 = call i32 @errdetail_params(i32* %274)
  %276 = call i32 @ereport(i32 %245, i32 %275)
  br label %277

277:                                              ; preds = %234, %269, %238
  %278 = load i32, i32* %14, align 4
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %280, label %282

280:                                              ; preds = %277
  %281 = call i32 @ShowUsage(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.10, i64 0, i64 0))
  br label %282

282:                                              ; preds = %280, %277
  store i8* null, i8** @debug_query_string, align 8
  store i32 0, i32* %19, align 4
  br label %283

283:                                              ; preds = %282, %49
  %284 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %284)
  %285 = load i32, i32* %19, align 4
  switch i32 %285, label %287 [
    i32 0, label %286
    i32 1, label %286
  ]

286:                                              ; preds = %283, %283
  ret void

287:                                              ; preds = %283
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.TYPE_12__* @GetPortalByName(i8*) #2

declare dso_local i32 @PortalIsValid(%struct.TYPE_12__*) #2

declare dso_local i32 @ereport(i32, i32) #2

declare dso_local i32 @errcode(i32) #2

declare dso_local i32 @errmsg(i8*, ...) #2

declare dso_local i32 @Assert(i32) #2

declare dso_local i32 @NullCommand(i64) #2

declare dso_local i32 @IsTransactionStmtList(i64) #2

declare dso_local i8* @pstrdup(i8*) #2

declare dso_local i32 @pgstat_report_activity(i32, i8*) #2

declare dso_local i32 @set_ps_display(i32*, i32) #2

declare dso_local i32 @ResetUsage(...) #2

declare dso_local i32 @BeginCommand(i32*, i64) #2

declare dso_local %struct.TYPE_13__* @CreateDestReceiver(i64) #2

declare dso_local i32 @SetRemoteDestReceiverParams(%struct.TYPE_13__*, %struct.TYPE_12__*) #2

declare dso_local i32 @start_xact_command(...) #2

declare dso_local i64 @check_log_statement(i64) #2

declare dso_local i32 @_(i8*) #2

declare dso_local i32 @errhidestmt(i32) #2

declare dso_local i32 @errdetail_params(i32*) #2

declare dso_local i64 @IsAbortedTransactionBlockState(...) #2

declare dso_local i32 @IsTransactionExitStmtList(i64) #2

declare dso_local i32 @errdetail_abort(...) #2

declare dso_local i32 @CHECK_FOR_INTERRUPTS(...) #2

declare dso_local i32 @PortalRun(%struct.TYPE_12__*, i64, i32, i32, %struct.TYPE_13__*, %struct.TYPE_13__*, i8*) #2

declare dso_local i32 @finish_xact_command(...) #2

declare dso_local i32 @CommandCounterIncrement(...) #2

declare dso_local i32 @disable_statement_timeout(...) #2

declare dso_local i32 @EndCommand(i8*, i64) #2

declare dso_local i32 @pq_putemptymessage(i8 signext) #2

declare dso_local i32 @check_log_duration(i8*, i32) #2

declare dso_local i32 @ShowUsage(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
