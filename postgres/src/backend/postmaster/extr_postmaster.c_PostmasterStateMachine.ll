; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/postmaster/extr_postmaster.c_PostmasterStateMachine.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/postmaster/extr_postmaster.c_PostmasterStateMachine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@pmState = common dso_local global i64 0, align 8
@PM_WAIT_BACKUP = common dso_local global i64 0, align 8
@PM_WAIT_BACKENDS = common dso_local global i64 0, align 8
@PM_WAIT_READONLY = common dso_local global i64 0, align 8
@BACKEND_TYPE_NORMAL = common dso_local global i32 0, align 4
@StartupPID = common dso_local global i64 0, align 8
@SIGTERM = common dso_local global i32 0, align 4
@WalReceiverPID = common dso_local global i64 0, align 8
@BACKEND_TYPE_WORKER = common dso_local global i32 0, align 4
@BgWriterPID = common dso_local global i64 0, align 8
@CheckpointerPID = common dso_local global i64 0, align 8
@FatalError = common dso_local global i32 0, align 4
@Shutdown = common dso_local global i64 0, align 8
@ImmediateShutdown = common dso_local global i64 0, align 8
@WalWriterPID = common dso_local global i64 0, align 8
@AutoVacPID = common dso_local global i64 0, align 8
@PM_WAIT_DEAD_END = common dso_local global i64 0, align 8
@NoShutdown = common dso_local global i64 0, align 8
@SIGUSR2 = common dso_local global i32 0, align 4
@PM_SHUTDOWN = common dso_local global i64 0, align 8
@SIGQUIT = common dso_local global i32 0, align 4
@PgArchPID = common dso_local global i64 0, align 8
@PgStatPID = common dso_local global i64 0, align 8
@PM_SHUTDOWN_2 = common dso_local global i64 0, align 8
@BACKEND_TYPE_ALL = common dso_local global i32 0, align 4
@BackendList = common dso_local global i32 0, align 4
@PM_NO_CHILDREN = common dso_local global i64 0, align 8
@LOG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"abnormal database system shutdown\00", align 1
@ReachedNormalRunning = common dso_local global i64 0, align 8
@StartupStatus = common dso_local global i64 0, align 8
@STARTUP_CRASHED = common dso_local global i64 0, align 8
@restart_after_crash = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"all server processes terminated; reinitializing\00", align 1
@STARTUP_RUNNING = common dso_local global i64 0, align 8
@PM_STARTUP = common dso_local global i64 0, align 8
@AbortStartTime = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @PostmasterStateMachine to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @PostmasterStateMachine() #0 {
  %1 = load i64, i64* @pmState, align 8
  %2 = load i64, i64* @PM_WAIT_BACKUP, align 8
  %3 = icmp eq i64 %1, %2
  br i1 %3, label %4, label %10

4:                                                ; preds = %0
  %5 = call i32 (...) @BackupInProgress()
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %4
  %8 = load i64, i64* @PM_WAIT_BACKENDS, align 8
  store i64 %8, i64* @pmState, align 8
  br label %9

9:                                                ; preds = %7, %4
  br label %10

10:                                               ; preds = %9, %0
  %11 = load i64, i64* @pmState, align 8
  %12 = load i64, i64* @PM_WAIT_READONLY, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %35

14:                                               ; preds = %10
  %15 = load i32, i32* @BACKEND_TYPE_NORMAL, align 4
  %16 = call i64 @CountChildren(i32 %15)
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %34

18:                                               ; preds = %14
  %19 = load i64, i64* @StartupPID, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %18
  %22 = load i64, i64* @StartupPID, align 8
  %23 = load i32, i32* @SIGTERM, align 4
  %24 = call i32 @signal_child(i64 %22, i32 %23)
  br label %25

25:                                               ; preds = %21, %18
  %26 = load i64, i64* @WalReceiverPID, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %25
  %29 = load i64, i64* @WalReceiverPID, align 8
  %30 = load i32, i32* @SIGTERM, align 4
  %31 = call i32 @signal_child(i64 %29, i32 %30)
  br label %32

32:                                               ; preds = %28, %25
  %33 = load i64, i64* @PM_WAIT_BACKENDS, align 8
  store i64 %33, i64* @pmState, align 8
  br label %34

34:                                               ; preds = %32, %14
  br label %35

35:                                               ; preds = %34, %10
  %36 = load i64, i64* @pmState, align 8
  %37 = load i64, i64* @PM_WAIT_BACKENDS, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %118

39:                                               ; preds = %35
  %40 = load i32, i32* @BACKEND_TYPE_NORMAL, align 4
  %41 = load i32, i32* @BACKEND_TYPE_WORKER, align 4
  %42 = or i32 %40, %41
  %43 = call i64 @CountChildren(i32 %42)
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %117

45:                                               ; preds = %39
  %46 = load i64, i64* @StartupPID, align 8
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %117

48:                                               ; preds = %45
  %49 = load i64, i64* @WalReceiverPID, align 8
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %117

51:                                               ; preds = %48
  %52 = load i64, i64* @BgWriterPID, align 8
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %117

54:                                               ; preds = %51
  %55 = load i64, i64* @CheckpointerPID, align 8
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %64, label %57

57:                                               ; preds = %54
  %58 = load i32, i32* @FatalError, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %117, label %60

60:                                               ; preds = %57
  %61 = load i64, i64* @Shutdown, align 8
  %62 = load i64, i64* @ImmediateShutdown, align 8
  %63 = icmp slt i64 %61, %62
  br i1 %63, label %64, label %117

64:                                               ; preds = %60, %54
  %65 = load i64, i64* @WalWriterPID, align 8
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %117

67:                                               ; preds = %64
  %68 = load i64, i64* @AutoVacPID, align 8
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %70, label %117

70:                                               ; preds = %67
  %71 = load i64, i64* @Shutdown, align 8
  %72 = load i64, i64* @ImmediateShutdown, align 8
  %73 = icmp sge i64 %71, %72
  br i1 %73, label %77, label %74

74:                                               ; preds = %70
  %75 = load i32, i32* @FatalError, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %74, %70
  %78 = load i64, i64* @PM_WAIT_DEAD_END, align 8
  store i64 %78, i64* @pmState, align 8
  br label %116

79:                                               ; preds = %74
  %80 = load i64, i64* @Shutdown, align 8
  %81 = load i64, i64* @NoShutdown, align 8
  %82 = icmp sgt i64 %80, %81
  %83 = zext i1 %82 to i32
  %84 = call i32 @Assert(i32 %83)
  %85 = load i64, i64* @CheckpointerPID, align 8
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %79
  %88 = call i64 (...) @StartCheckpointer()
  store i64 %88, i64* @CheckpointerPID, align 8
  br label %89

89:                                               ; preds = %87, %79
  %90 = load i64, i64* @CheckpointerPID, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %97

92:                                               ; preds = %89
  %93 = load i64, i64* @CheckpointerPID, align 8
  %94 = load i32, i32* @SIGUSR2, align 4
  %95 = call i32 @signal_child(i64 %93, i32 %94)
  %96 = load i64, i64* @PM_SHUTDOWN, align 8
  store i64 %96, i64* @pmState, align 8
  br label %115

97:                                               ; preds = %89
  store i32 1, i32* @FatalError, align 4
  %98 = load i64, i64* @PM_WAIT_DEAD_END, align 8
  store i64 %98, i64* @pmState, align 8
  %99 = load i32, i32* @SIGQUIT, align 4
  %100 = call i32 @SignalChildren(i32 %99)
  %101 = load i64, i64* @PgArchPID, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %97
  %104 = load i64, i64* @PgArchPID, align 8
  %105 = load i32, i32* @SIGQUIT, align 4
  %106 = call i32 @signal_child(i64 %104, i32 %105)
  br label %107

107:                                              ; preds = %103, %97
  %108 = load i64, i64* @PgStatPID, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %114

110:                                              ; preds = %107
  %111 = load i64, i64* @PgStatPID, align 8
  %112 = load i32, i32* @SIGQUIT, align 4
  %113 = call i32 @signal_child(i64 %111, i32 %112)
  br label %114

114:                                              ; preds = %110, %107
  br label %115

115:                                              ; preds = %114, %92
  br label %116

116:                                              ; preds = %115, %77
  br label %117

117:                                              ; preds = %116, %67, %64, %60, %57, %51, %48, %45, %39
  br label %118

118:                                              ; preds = %117, %35
  %119 = load i64, i64* @pmState, align 8
  %120 = load i64, i64* @PM_SHUTDOWN_2, align 8
  %121 = icmp eq i64 %119, %120
  br i1 %121, label %122, label %132

122:                                              ; preds = %118
  %123 = load i64, i64* @PgArchPID, align 8
  %124 = icmp eq i64 %123, 0
  br i1 %124, label %125, label %131

125:                                              ; preds = %122
  %126 = load i32, i32* @BACKEND_TYPE_ALL, align 4
  %127 = call i64 @CountChildren(i32 %126)
  %128 = icmp eq i64 %127, 0
  br i1 %128, label %129, label %131

129:                                              ; preds = %125
  %130 = load i64, i64* @PM_WAIT_DEAD_END, align 8
  store i64 %130, i64* @pmState, align 8
  br label %131

131:                                              ; preds = %129, %125, %122
  br label %132

132:                                              ; preds = %131, %118
  %133 = load i64, i64* @pmState, align 8
  %134 = load i64, i64* @PM_WAIT_DEAD_END, align 8
  %135 = icmp eq i64 %133, %134
  br i1 %135, label %136, label %172

136:                                              ; preds = %132
  %137 = call i64 @dlist_is_empty(i32* @BackendList)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %171

139:                                              ; preds = %136
  %140 = load i64, i64* @PgArchPID, align 8
  %141 = icmp eq i64 %140, 0
  br i1 %141, label %142, label %171

142:                                              ; preds = %139
  %143 = load i64, i64* @PgStatPID, align 8
  %144 = icmp eq i64 %143, 0
  br i1 %144, label %145, label %171

145:                                              ; preds = %142
  %146 = load i64, i64* @StartupPID, align 8
  %147 = icmp eq i64 %146, 0
  %148 = zext i1 %147 to i32
  %149 = call i32 @Assert(i32 %148)
  %150 = load i64, i64* @WalReceiverPID, align 8
  %151 = icmp eq i64 %150, 0
  %152 = zext i1 %151 to i32
  %153 = call i32 @Assert(i32 %152)
  %154 = load i64, i64* @BgWriterPID, align 8
  %155 = icmp eq i64 %154, 0
  %156 = zext i1 %155 to i32
  %157 = call i32 @Assert(i32 %156)
  %158 = load i64, i64* @CheckpointerPID, align 8
  %159 = icmp eq i64 %158, 0
  %160 = zext i1 %159 to i32
  %161 = call i32 @Assert(i32 %160)
  %162 = load i64, i64* @WalWriterPID, align 8
  %163 = icmp eq i64 %162, 0
  %164 = zext i1 %163 to i32
  %165 = call i32 @Assert(i32 %164)
  %166 = load i64, i64* @AutoVacPID, align 8
  %167 = icmp eq i64 %166, 0
  %168 = zext i1 %167 to i32
  %169 = call i32 @Assert(i32 %168)
  %170 = load i64, i64* @PM_NO_CHILDREN, align 8
  store i64 %170, i64* @pmState, align 8
  br label %171

171:                                              ; preds = %145, %142, %139, %136
  br label %172

172:                                              ; preds = %171, %132
  %173 = load i64, i64* @Shutdown, align 8
  %174 = load i64, i64* @NoShutdown, align 8
  %175 = icmp sgt i64 %173, %174
  br i1 %175, label %176, label %196

176:                                              ; preds = %172
  %177 = load i64, i64* @pmState, align 8
  %178 = load i64, i64* @PM_NO_CHILDREN, align 8
  %179 = icmp eq i64 %177, %178
  br i1 %179, label %180, label %196

180:                                              ; preds = %176
  %181 = load i32, i32* @FatalError, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %188

183:                                              ; preds = %180
  %184 = load i32, i32* @LOG, align 4
  %185 = call i32 @errmsg(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %186 = call i32 @ereport(i32 %184, i32 %185)
  %187 = call i32 @ExitPostmaster(i32 1)
  br label %195

188:                                              ; preds = %180
  %189 = load i64, i64* @ReachedNormalRunning, align 8
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %193

191:                                              ; preds = %188
  %192 = call i32 (...) @CancelBackup()
  br label %193

193:                                              ; preds = %191, %188
  %194 = call i32 @ExitPostmaster(i32 0)
  br label %195

195:                                              ; preds = %193, %183
  br label %196

196:                                              ; preds = %195, %176, %172
  %197 = load i64, i64* @pmState, align 8
  %198 = load i64, i64* @PM_NO_CHILDREN, align 8
  %199 = icmp eq i64 %197, %198
  br i1 %199, label %200, label %209

200:                                              ; preds = %196
  %201 = load i64, i64* @StartupStatus, align 8
  %202 = load i64, i64* @STARTUP_CRASHED, align 8
  %203 = icmp eq i64 %201, %202
  br i1 %203, label %207, label %204

204:                                              ; preds = %200
  %205 = load i32, i32* @restart_after_crash, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %209, label %207

207:                                              ; preds = %204, %200
  %208 = call i32 @ExitPostmaster(i32 1)
  br label %209

209:                                              ; preds = %207, %204, %196
  %210 = load i32, i32* @FatalError, align 4
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %231

212:                                              ; preds = %209
  %213 = load i64, i64* @pmState, align 8
  %214 = load i64, i64* @PM_NO_CHILDREN, align 8
  %215 = icmp eq i64 %213, %214
  br i1 %215, label %216, label %231

216:                                              ; preds = %212
  %217 = load i32, i32* @LOG, align 4
  %218 = call i32 @errmsg(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  %219 = call i32 @ereport(i32 %217, i32 %218)
  %220 = call i32 (...) @ResetBackgroundWorkerCrashTimes()
  %221 = call i32 @shmem_exit(i32 1)
  %222 = call i32 @LocalProcessControlFile(i32 1)
  %223 = call i32 (...) @reset_shared()
  %224 = call i64 (...) @StartupDataBase()
  store i64 %224, i64* @StartupPID, align 8
  %225 = load i64, i64* @StartupPID, align 8
  %226 = icmp ne i64 %225, 0
  %227 = zext i1 %226 to i32
  %228 = call i32 @Assert(i32 %227)
  %229 = load i64, i64* @STARTUP_RUNNING, align 8
  store i64 %229, i64* @StartupStatus, align 8
  %230 = load i64, i64* @PM_STARTUP, align 8
  store i64 %230, i64* @pmState, align 8
  store i64 0, i64* @AbortStartTime, align 8
  br label %231

231:                                              ; preds = %216, %212, %209
  ret void
}

declare dso_local i32 @BackupInProgress(...) #1

declare dso_local i64 @CountChildren(i32) #1

declare dso_local i32 @signal_child(i64, i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i64 @StartCheckpointer(...) #1

declare dso_local i32 @SignalChildren(i32) #1

declare dso_local i64 @dlist_is_empty(i32*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i32 @ExitPostmaster(i32) #1

declare dso_local i32 @CancelBackup(...) #1

declare dso_local i32 @ResetBackgroundWorkerCrashTimes(...) #1

declare dso_local i32 @shmem_exit(i32) #1

declare dso_local i32 @LocalProcessControlFile(i32) #1

declare dso_local i32 @reset_shared(...) #1

declare dso_local i64 @StartupDataBase(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
