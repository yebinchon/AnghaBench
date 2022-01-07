; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/postmaster/extr_postmaster.c_ServerLoop.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/postmaster/extr_postmaster.c_ServerLoop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i32 }
%struct.TYPE_5__ = type { i32 }

@pmState = common dso_local global i64 0, align 8
@PM_WAIT_DEAD_END = common dso_local global i64 0, align 8
@UnBlockSig = common dso_local global i32 0, align 4
@BlockSig = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@EWOULDBLOCK = common dso_local global i64 0, align 8
@LOG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"select() failed in postmaster: %m\00", align 1
@STATUS_ERROR = common dso_local global i32 0, align 4
@MAXLISTEN = common dso_local global i32 0, align 4
@ListenSocket = common dso_local global i64* null, align 8
@PGINVALID_SOCKET = common dso_local global i64 0, align 8
@SysLoggerPID = common dso_local global i64 0, align 8
@Logging_collector = common dso_local global i64 0, align 8
@PM_RUN = common dso_local global i64 0, align 8
@PM_RECOVERY = common dso_local global i64 0, align 8
@PM_HOT_STANDBY = common dso_local global i64 0, align 8
@CheckpointerPID = common dso_local global i64 0, align 8
@BgWriterPID = common dso_local global i64 0, align 8
@WalWriterPID = common dso_local global i64 0, align 8
@IsBinaryUpgrade = common dso_local global i32 0, align 4
@AutoVacPID = common dso_local global i64 0, align 8
@start_autovac_launcher = common dso_local global i32 0, align 4
@PgStatPID = common dso_local global i64 0, align 8
@PgArchPID = common dso_local global i64 0, align 8
@avlauncher_needs_signal = common dso_local global i32 0, align 4
@SIGUSR2 = common dso_local global i32 0, align 4
@WalReceiverRequested = common dso_local global i64 0, align 8
@StartWorkerNeeded = common dso_local global i64 0, align 8
@HaveCrashedWorker = common dso_local global i64 0, align 8
@Shutdown = common dso_local global i64 0, align 8
@ImmediateShutdown = common dso_local global i64 0, align 8
@FatalError = common dso_local global i64 0, align 8
@SendStop = common dso_local global i32 0, align 4
@AbortStartTime = common dso_local global i64 0, align 8
@SIGKILL_CHILDREN_AFTER_SECS = common dso_local global i64 0, align 8
@SIGKILL = common dso_local global i32 0, align 4
@SECS_PER_MINUTE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [74 x i8] c"performing immediate shutdown because data directory lock file is invalid\00", align 1
@MyProcPid = common dso_local global i64 0, align 8
@SIGQUIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @ServerLoop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ServerLoop() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.timeval, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_5__*, align 8
  %11 = call i64 @time(i32* null)
  store i64 %11, i64* %4, align 8
  store i64 %11, i64* %3, align 8
  %12 = call i32 @initMasks(i32* %1)
  store i32 %12, i32* %2, align 4
  br label %13

13:                                               ; preds = %259, %0
  %14 = bitcast i32* %5 to i8*
  %15 = bitcast i32* %1 to i8*
  %16 = call i32 @memcpy(i8* %14, i8* %15, i32 4)
  %17 = load i64, i64* @pmState, align 8
  %18 = load i64, i64* @PM_WAIT_DEAD_END, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %13
  %21 = call i32 @PG_SETMASK(i32* @UnBlockSig)
  %22 = call i32 @pg_usleep(i64 100000)
  store i32 0, i32* %6, align 4
  %23 = call i32 @PG_SETMASK(i32* @BlockSig)
  br label %30

24:                                               ; preds = %13
  %25 = call i32 @DetermineSleepTime(%struct.timeval* %8)
  %26 = call i32 @PG_SETMASK(i32* @UnBlockSig)
  %27 = load i32, i32* %2, align 4
  %28 = call i32 @select(i32 %27, i32* %5, i32* null, i32* null, %struct.timeval* %8)
  store i32 %28, i32* %6, align 4
  %29 = call i32 @PG_SETMASK(i32* @BlockSig)
  br label %30

30:                                               ; preds = %24, %20
  %31 = load i32, i32* %6, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %48

33:                                               ; preds = %30
  %34 = load i64, i64* @errno, align 8
  %35 = load i64, i64* @EINTR, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %47

37:                                               ; preds = %33
  %38 = load i64, i64* @errno, align 8
  %39 = load i64, i64* @EWOULDBLOCK, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %47

41:                                               ; preds = %37
  %42 = load i32, i32* @LOG, align 4
  %43 = call i32 (...) @errcode_for_socket_access()
  %44 = call i32 @errmsg(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %45 = call i32 @ereport(i32 %42, i32 %44)
  %46 = load i32, i32* @STATUS_ERROR, align 4
  ret i32 %46

47:                                               ; preds = %37, %33
  br label %48

48:                                               ; preds = %47, %30
  %49 = load i32, i32* %6, align 4
  %50 = icmp sgt i32 %49, 0
  br i1 %50, label %51, label %97

51:                                               ; preds = %48
  store i32 0, i32* %9, align 4
  br label %52

52:                                               ; preds = %93, %51
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* @MAXLISTEN, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %96

56:                                               ; preds = %52
  %57 = load i64*, i64** @ListenSocket, align 8
  %58 = load i32, i32* %9, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i64, i64* %57, i64 %59
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @PGINVALID_SOCKET, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %56
  br label %96

65:                                               ; preds = %56
  %66 = load i64*, i64** @ListenSocket, align 8
  %67 = load i32, i32* %9, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i64, i64* %66, i64 %68
  %70 = load i64, i64* %69, align 8
  %71 = call i64 @FD_ISSET(i64 %70, i32* %5)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %92

73:                                               ; preds = %65
  %74 = load i64*, i64** @ListenSocket, align 8
  %75 = load i32, i32* %9, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i64, i64* %74, i64 %76
  %78 = load i64, i64* %77, align 8
  %79 = call %struct.TYPE_5__* @ConnCreate(i64 %78)
  store %struct.TYPE_5__* %79, %struct.TYPE_5__** %10, align 8
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %81 = icmp ne %struct.TYPE_5__* %80, null
  br i1 %81, label %82, label %91

82:                                               ; preds = %73
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %84 = call i32 @BackendStartup(%struct.TYPE_5__* %83)
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @StreamClose(i32 %87)
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %90 = call i32 @ConnFree(%struct.TYPE_5__* %89)
  br label %91

91:                                               ; preds = %82, %73
  br label %92

92:                                               ; preds = %91, %65
  br label %93

93:                                               ; preds = %92
  %94 = load i32, i32* %9, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %9, align 4
  br label %52

96:                                               ; preds = %64, %52
  br label %97

97:                                               ; preds = %96, %48
  %98 = load i64, i64* @SysLoggerPID, align 8
  %99 = icmp eq i64 %98, 0
  br i1 %99, label %100, label %105

100:                                              ; preds = %97
  %101 = load i64, i64* @Logging_collector, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %100
  %104 = call i64 (...) @SysLogger_Start()
  store i64 %104, i64* @SysLoggerPID, align 8
  br label %105

105:                                              ; preds = %103, %100, %97
  %106 = load i64, i64* @pmState, align 8
  %107 = load i64, i64* @PM_RUN, align 8
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %117, label %109

109:                                              ; preds = %105
  %110 = load i64, i64* @pmState, align 8
  %111 = load i64, i64* @PM_RECOVERY, align 8
  %112 = icmp eq i64 %110, %111
  br i1 %112, label %117, label %113

113:                                              ; preds = %109
  %114 = load i64, i64* @pmState, align 8
  %115 = load i64, i64* @PM_HOT_STANDBY, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %117, label %128

117:                                              ; preds = %113, %109, %105
  %118 = load i64, i64* @CheckpointerPID, align 8
  %119 = icmp eq i64 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %117
  %121 = call i64 (...) @StartCheckpointer()
  store i64 %121, i64* @CheckpointerPID, align 8
  br label %122

122:                                              ; preds = %120, %117
  %123 = load i64, i64* @BgWriterPID, align 8
  %124 = icmp eq i64 %123, 0
  br i1 %124, label %125, label %127

125:                                              ; preds = %122
  %126 = call i64 (...) @StartBackgroundWriter()
  store i64 %126, i64* @BgWriterPID, align 8
  br label %127

127:                                              ; preds = %125, %122
  br label %128

128:                                              ; preds = %127, %113
  %129 = load i64, i64* @WalWriterPID, align 8
  %130 = icmp eq i64 %129, 0
  br i1 %130, label %131, label %137

131:                                              ; preds = %128
  %132 = load i64, i64* @pmState, align 8
  %133 = load i64, i64* @PM_RUN, align 8
  %134 = icmp eq i64 %132, %133
  br i1 %134, label %135, label %137

135:                                              ; preds = %131
  %136 = call i64 (...) @StartWalWriter()
  store i64 %136, i64* @WalWriterPID, align 8
  br label %137

137:                                              ; preds = %135, %131, %128
  %138 = load i32, i32* @IsBinaryUpgrade, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %159, label %140

140:                                              ; preds = %137
  %141 = load i64, i64* @AutoVacPID, align 8
  %142 = icmp eq i64 %141, 0
  br i1 %142, label %143, label %159

143:                                              ; preds = %140
  %144 = call i64 (...) @AutoVacuumingActive()
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %149, label %146

146:                                              ; preds = %143
  %147 = load i32, i32* @start_autovac_launcher, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %159

149:                                              ; preds = %146, %143
  %150 = load i64, i64* @pmState, align 8
  %151 = load i64, i64* @PM_RUN, align 8
  %152 = icmp eq i64 %150, %151
  br i1 %152, label %153, label %159

153:                                              ; preds = %149
  %154 = call i64 (...) @StartAutoVacLauncher()
  store i64 %154, i64* @AutoVacPID, align 8
  %155 = load i64, i64* @AutoVacPID, align 8
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %158

157:                                              ; preds = %153
  store i32 0, i32* @start_autovac_launcher, align 4
  br label %158

158:                                              ; preds = %157, %153
  br label %159

159:                                              ; preds = %158, %149, %146, %140, %137
  %160 = load i64, i64* @PgStatPID, align 8
  %161 = icmp eq i64 %160, 0
  br i1 %161, label %162, label %172

162:                                              ; preds = %159
  %163 = load i64, i64* @pmState, align 8
  %164 = load i64, i64* @PM_RUN, align 8
  %165 = icmp eq i64 %163, %164
  br i1 %165, label %170, label %166

166:                                              ; preds = %162
  %167 = load i64, i64* @pmState, align 8
  %168 = load i64, i64* @PM_HOT_STANDBY, align 8
  %169 = icmp eq i64 %167, %168
  br i1 %169, label %170, label %172

170:                                              ; preds = %166, %162
  %171 = call i64 (...) @pgstat_start()
  store i64 %171, i64* @PgStatPID, align 8
  br label %172

172:                                              ; preds = %170, %166, %159
  %173 = load i64, i64* @PgArchPID, align 8
  %174 = icmp eq i64 %173, 0
  br i1 %174, label %175, label %180

175:                                              ; preds = %172
  %176 = call i64 (...) @PgArchStartupAllowed()
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %180

178:                                              ; preds = %175
  %179 = call i64 (...) @pgarch_start()
  store i64 %179, i64* @PgArchPID, align 8
  br label %180

180:                                              ; preds = %178, %175, %172
  %181 = load i32, i32* @avlauncher_needs_signal, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %191

183:                                              ; preds = %180
  store i32 0, i32* @avlauncher_needs_signal, align 4
  %184 = load i64, i64* @AutoVacPID, align 8
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %190

186:                                              ; preds = %183
  %187 = load i64, i64* @AutoVacPID, align 8
  %188 = load i32, i32* @SIGUSR2, align 4
  %189 = call i32 @kill(i64 %187, i32 %188)
  br label %190

190:                                              ; preds = %186, %183
  br label %191

191:                                              ; preds = %190, %180
  %192 = load i64, i64* @WalReceiverRequested, align 8
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %196

194:                                              ; preds = %191
  %195 = call i32 (...) @MaybeStartWalReceiver()
  br label %196

196:                                              ; preds = %194, %191
  %197 = load i64, i64* @StartWorkerNeeded, align 8
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %202, label %199

199:                                              ; preds = %196
  %200 = load i64, i64* @HaveCrashedWorker, align 8
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %204

202:                                              ; preds = %199, %196
  %203 = call i32 (...) @maybe_start_bgworkers()
  br label %204

204:                                              ; preds = %202, %199
  %205 = call i64 @time(i32* null)
  store i64 %205, i64* %7, align 8
  %206 = load i64, i64* @Shutdown, align 8
  %207 = load i64, i64* @ImmediateShutdown, align 8
  %208 = icmp sge i64 %206, %207
  br i1 %208, label %215, label %209

209:                                              ; preds = %204
  %210 = load i64, i64* @FatalError, align 8
  %211 = icmp ne i64 %210, 0
  br i1 %211, label %212, label %227

212:                                              ; preds = %209
  %213 = load i32, i32* @SendStop, align 4
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %227, label %215

215:                                              ; preds = %212, %204
  %216 = load i64, i64* @AbortStartTime, align 8
  %217 = icmp ne i64 %216, 0
  br i1 %217, label %218, label %227

218:                                              ; preds = %215
  %219 = load i64, i64* %7, align 8
  %220 = load i64, i64* @AbortStartTime, align 8
  %221 = sub nsw i64 %219, %220
  %222 = load i64, i64* @SIGKILL_CHILDREN_AFTER_SECS, align 8
  %223 = icmp sge i64 %221, %222
  br i1 %223, label %224, label %227

224:                                              ; preds = %218
  %225 = load i32, i32* @SIGKILL, align 4
  %226 = call i32 @TerminateChildren(i32 %225)
  store i64 0, i64* @AbortStartTime, align 8
  br label %227

227:                                              ; preds = %224, %218, %215, %212, %209
  %228 = load i64, i64* %7, align 8
  %229 = load i64, i64* %3, align 8
  %230 = sub nsw i64 %228, %229
  %231 = load i32, i32* @SECS_PER_MINUTE, align 4
  %232 = mul nsw i32 1, %231
  %233 = sext i32 %232 to i64
  %234 = icmp sge i64 %230, %233
  br i1 %234, label %235, label %247

235:                                              ; preds = %227
  %236 = call i32 (...) @RecheckDataDirLockFile()
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %245, label %238

238:                                              ; preds = %235
  %239 = load i32, i32* @LOG, align 4
  %240 = call i32 @errmsg(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0))
  %241 = call i32 @ereport(i32 %239, i32 %240)
  %242 = load i64, i64* @MyProcPid, align 8
  %243 = load i32, i32* @SIGQUIT, align 4
  %244 = call i32 @kill(i64 %242, i32 %243)
  br label %245

245:                                              ; preds = %238, %235
  %246 = load i64, i64* %7, align 8
  store i64 %246, i64* %3, align 8
  br label %247

247:                                              ; preds = %245, %227
  %248 = load i64, i64* %7, align 8
  %249 = load i64, i64* %4, align 8
  %250 = sub nsw i64 %248, %249
  %251 = load i32, i32* @SECS_PER_MINUTE, align 4
  %252 = mul nsw i32 58, %251
  %253 = sext i32 %252 to i64
  %254 = icmp sge i64 %250, %253
  br i1 %254, label %255, label %259

255:                                              ; preds = %247
  %256 = call i32 (...) @TouchSocketFiles()
  %257 = call i32 (...) @TouchSocketLockFiles()
  %258 = load i64, i64* %7, align 8
  store i64 %258, i64* %4, align 8
  br label %259

259:                                              ; preds = %255, %247
  br label %13
}

declare dso_local i64 @time(i32*) #1

declare dso_local i32 @initMasks(i32*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @PG_SETMASK(i32*) #1

declare dso_local i32 @pg_usleep(i64) #1

declare dso_local i32 @DetermineSleepTime(%struct.timeval*) #1

declare dso_local i32 @select(i32, i32*, i32*, i32*, %struct.timeval*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode_for_socket_access(...) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i64 @FD_ISSET(i64, i32*) #1

declare dso_local %struct.TYPE_5__* @ConnCreate(i64) #1

declare dso_local i32 @BackendStartup(%struct.TYPE_5__*) #1

declare dso_local i32 @StreamClose(i32) #1

declare dso_local i32 @ConnFree(%struct.TYPE_5__*) #1

declare dso_local i64 @SysLogger_Start(...) #1

declare dso_local i64 @StartCheckpointer(...) #1

declare dso_local i64 @StartBackgroundWriter(...) #1

declare dso_local i64 @StartWalWriter(...) #1

declare dso_local i64 @AutoVacuumingActive(...) #1

declare dso_local i64 @StartAutoVacLauncher(...) #1

declare dso_local i64 @pgstat_start(...) #1

declare dso_local i64 @PgArchStartupAllowed(...) #1

declare dso_local i64 @pgarch_start(...) #1

declare dso_local i32 @kill(i64, i32) #1

declare dso_local i32 @MaybeStartWalReceiver(...) #1

declare dso_local i32 @maybe_start_bgworkers(...) #1

declare dso_local i32 @TerminateChildren(i32) #1

declare dso_local i32 @RecheckDataDirLockFile(...) #1

declare dso_local i32 @TouchSocketFiles(...) #1

declare dso_local i32 @TouchSocketLockFiles(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
