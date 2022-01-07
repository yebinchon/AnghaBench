; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/replication/extr_walreceiver.c_WalReceiverMain.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/replication/extr_walreceiver.c_WalReceiverMain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, i32, i32, i32, i8*, i32, i32, i32*, i32, i64, i64, i64, i64, i64, i64 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32, i32, i8*, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i8* }

@MAXCONNINFO = common dso_local global i32 0, align 4
@NAMEDATALEN = common dso_local global i32 0, align 4
@WalRcv = common dso_local global %struct.TYPE_12__* null, align 8
@PANIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"walreceiver still running according to shared memory state\00", align 1
@MyProcPid = common dso_local global i64 0, align 8
@MyProc = common dso_local global %struct.TYPE_13__* null, align 8
@WalRcvDie = common dso_local global i32 0, align 4
@SIGHUP = common dso_local global i32 0, align 4
@WalRcvSigHupHandler = common dso_local global i32 0, align 4
@SIGINT = common dso_local global i32 0, align 4
@SIG_IGN = common dso_local global i32 0, align 4
@SIGTERM = common dso_local global i32 0, align 4
@WalRcvShutdownHandler = common dso_local global i32 0, align 4
@SIGQUIT = common dso_local global i32 0, align 4
@WalRcvQuickDieHandler = common dso_local global i32 0, align 4
@SIGALRM = common dso_local global i32 0, align 4
@SIGPIPE = common dso_local global i32 0, align 4
@SIGUSR1 = common dso_local global i32 0, align 4
@WalRcvSigUsr1Handler = common dso_local global i32 0, align 4
@SIGUSR2 = common dso_local global i32 0, align 4
@SIGCHLD = common dso_local global i32 0, align 4
@SIG_DFL = common dso_local global i32 0, align 4
@BlockSig = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"libpqwalreceiver\00", align 1
@WalReceiverFunctions = common dso_local global i32* null, align 8
@ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [45 x i8] c"libpqwalreceiver didn't initialize correctly\00", align 1
@UnBlockSig = common dso_local global i32 0, align 4
@cluster_name = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [12 x i8] c"walreceiver\00", align 1
@wrconn = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [44 x i8] c"could not connect to the primary server: %s\00", align 1
@NI_MAXHOST = common dso_local global i32 0, align 4
@UINT64_FORMAT = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [67 x i8] c"database system identifier differs between the primary and standby\00", align 1
@.str.6 = private unnamed_addr constant [64 x i8] c"The primary's identifier is %s, the standby's identifier is %s.\00", align 1
@.str.7 = private unnamed_addr constant [66 x i8] c"highest timeline %u of the primary is behind recovery timeline %u\00", align 1
@ThisTimeLineID = common dso_local global i8* null, align 8
@LOG = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [59 x i8] c"started streaming WAL from primary at %X/%X on timeline %u\00", align 1
@.str.9 = private unnamed_addr constant [48 x i8] c"restarted WAL streaming at %X/%X on timeline %u\00", align 1
@LogstreamResult = common dso_local global %struct.TYPE_14__ zeroinitializer, align 4
@reply_message = common dso_local global i32 0, align 4
@incoming_message = common dso_local global i32 0, align 4
@PGINVALID_SOCKET = common dso_local global i64 0, align 8
@FATAL = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [58 x i8] c"cannot continue WAL streaming, recovery has already ended\00", align 1
@got_SIGHUP = common dso_local global i32 0, align 4
@PGC_SIGHUP = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [41 x i8] c"replication terminated by primary server\00", align 1
@.str.12 = private unnamed_addr constant [44 x i8] c"End of WAL reached on timeline %u at %X/%X.\00", align 1
@WL_EXIT_ON_PM_DEATH = common dso_local global i32 0, align 4
@WL_SOCKET_READABLE = common dso_local global i32 0, align 4
@WL_TIMEOUT = common dso_local global i32 0, align 4
@WL_LATCH_SET = common dso_local global i32 0, align 4
@NAPTIME_PER_CYCLE = common dso_local global i32 0, align 4
@WAIT_EVENT_WAL_RECEIVER_MAIN = common dso_local global i32 0, align 4
@wal_receiver_timeout = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [39 x i8] c"terminating walreceiver due to timeout\00", align 1
@.str.14 = private unnamed_addr constant [61 x i8] c"primary server contains no more WAL on requested timeline %u\00", align 1
@recvFile = common dso_local global i32 0, align 4
@MAXFNAMELEN = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [35 x i8] c"could not close log segment %s: %m\00", align 1
@recvFileTLI = common dso_local global i32 0, align 4
@recvSegNo = common dso_local global i32 0, align 4
@wal_segment_size = common dso_local global i32 0, align 4
@XLogArchiveMode = common dso_local global i64 0, align 8
@ARCHIVE_MODE_ALWAYS = common dso_local global i64 0, align 8
@DEBUG1 = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [56 x i8] c"walreceiver ended streaming and awaits new instructions\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @WalReceiverMain() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca [32 x i8], align 16
  %18 = alloca %struct.TYPE_11__, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i8*, align 8
  %28 = alloca i64, align 8
  %29 = load i32, i32* @MAXCONNINFO, align 4
  %30 = zext i32 %29 to i64
  %31 = call i8* @llvm.stacksave()
  store i8* %31, i8** %1, align 8
  %32 = alloca i8, i64 %30, align 16
  store i64 %30, i64* %2, align 8
  %33 = load i32, i32* @NAMEDATALEN, align 4
  %34 = zext i32 %33 to i64
  %35 = alloca i8, i64 %34, align 16
  store i64 %34, i64* %4, align 8
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** @WalRcv, align 8
  store %struct.TYPE_12__* %36, %struct.TYPE_12__** %9, align 8
  store i8* null, i8** %14, align 8
  store i32 0, i32* %15, align 4
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %38 = icmp ne %struct.TYPE_12__* %37, null
  %39 = zext i1 %38 to i32
  %40 = call i32 @Assert(i32 %39)
  %41 = call i64 (...) @GetCurrentTimestamp()
  store i64 %41, i64* %11, align 8
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 8
  %44 = call i32 @SpinLockAcquire(i32* %43)
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp eq i64 %47, 0
  %49 = zext i1 %48 to i32
  %50 = call i32 @Assert(i32 %49)
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  switch i32 %53, label %64 [
    i32 130, label %54
    i32 131, label %57
    i32 132, label %62
    i32 128, label %63
    i32 129, label %63
    i32 133, label %63
  ]

54:                                               ; preds = %0
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 1
  store i32 131, i32* %56, align 8
  br label %57

57:                                               ; preds = %0, %54
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 8
  %60 = call i32 @SpinLockRelease(i32* %59)
  %61 = call i32 @proc_exit(i32 1)
  br label %70

62:                                               ; preds = %0
  br label %70

63:                                               ; preds = %0, %0, %0
  br label %64

64:                                               ; preds = %0, %63
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 8
  %67 = call i32 @SpinLockRelease(i32* %66)
  %68 = load i32, i32* @PANIC, align 4
  %69 = call i32 @elog(i32 %68, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0))
  br label %70

70:                                               ; preds = %64, %62, %57
  %71 = load i64, i64* @MyProcPid, align 8
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 0
  store i64 %71, i64* %73, align 8
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 1
  store i32 129, i32* %75, align 8
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i32 0, i32 2
  store i32 0, i32* %77, align 4
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 10
  %80 = load i64, i64* %79, align 8
  %81 = inttoptr i64 %80 to i8*
  %82 = load i32, i32* @MAXCONNINFO, align 4
  %83 = call i32 @strlcpy(i8* %32, i8* %81, i32 %82)
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 14
  %86 = load i64, i64* %85, align 8
  %87 = inttoptr i64 %86 to i8*
  %88 = load i32, i32* @NAMEDATALEN, align 4
  %89 = call i32 @strlcpy(i8* %35, i8* %87, i32 %88)
  %90 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %91 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 8
  store i32 %92, i32* %5, align 4
  %93 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %94 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %93, i32 0, i32 4
  %95 = load i8*, i8** %94, align 8
  store i8* %95, i8** %6, align 8
  %96 = load i64, i64* %11, align 8
  %97 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i32 0, i32 11
  store i64 %96, i64* %98, align 8
  %99 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %100 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %99, i32 0, i32 12
  store i64 %96, i64* %100, align 8
  %101 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %102 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %101, i32 0, i32 13
  store i64 %96, i64* %102, align 8
  %103 = load %struct.TYPE_13__*, %struct.TYPE_13__** @MyProc, align 8
  %104 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %103, i32 0, i32 0
  %105 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %106 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %105, i32 0, i32 7
  store i32* %104, i32** %106, align 8
  %107 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %108 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %107, i32 0, i32 8
  %109 = call i32 @SpinLockRelease(i32* %108)
  %110 = load i32, i32* @WalRcvDie, align 4
  %111 = call i32 @on_shmem_exit(i32 %110, i32 0)
  %112 = load i32, i32* @SIGHUP, align 4
  %113 = load i32, i32* @WalRcvSigHupHandler, align 4
  %114 = call i32 @pqsignal(i32 %112, i32 %113)
  %115 = load i32, i32* @SIGINT, align 4
  %116 = load i32, i32* @SIG_IGN, align 4
  %117 = call i32 @pqsignal(i32 %115, i32 %116)
  %118 = load i32, i32* @SIGTERM, align 4
  %119 = load i32, i32* @WalRcvShutdownHandler, align 4
  %120 = call i32 @pqsignal(i32 %118, i32 %119)
  %121 = load i32, i32* @SIGQUIT, align 4
  %122 = load i32, i32* @WalRcvQuickDieHandler, align 4
  %123 = call i32 @pqsignal(i32 %121, i32 %122)
  %124 = load i32, i32* @SIGALRM, align 4
  %125 = load i32, i32* @SIG_IGN, align 4
  %126 = call i32 @pqsignal(i32 %124, i32 %125)
  %127 = load i32, i32* @SIGPIPE, align 4
  %128 = load i32, i32* @SIG_IGN, align 4
  %129 = call i32 @pqsignal(i32 %127, i32 %128)
  %130 = load i32, i32* @SIGUSR1, align 4
  %131 = load i32, i32* @WalRcvSigUsr1Handler, align 4
  %132 = call i32 @pqsignal(i32 %130, i32 %131)
  %133 = load i32, i32* @SIGUSR2, align 4
  %134 = load i32, i32* @SIG_IGN, align 4
  %135 = call i32 @pqsignal(i32 %133, i32 %134)
  %136 = load i32, i32* @SIGCHLD, align 4
  %137 = load i32, i32* @SIG_DFL, align 4
  %138 = call i32 @pqsignal(i32 %136, i32 %137)
  %139 = load i32, i32* @SIGQUIT, align 4
  %140 = call i32 @sigdelset(i32* @BlockSig, i32 %139)
  %141 = call i32 @load_file(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 0)
  %142 = load i32*, i32** @WalReceiverFunctions, align 8
  %143 = icmp eq i32* %142, null
  br i1 %143, label %144, label %147

144:                                              ; preds = %70
  %145 = load i32, i32* @ERROR, align 4
  %146 = call i32 @elog(i32 %145, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0))
  br label %147

147:                                              ; preds = %144, %70
  %148 = call i32 @PG_SETMASK(i32* @UnBlockSig)
  %149 = load i8*, i8** @cluster_name, align 8
  %150 = getelementptr inbounds i8, i8* %149, i64 0
  %151 = load i8, i8* %150, align 1
  %152 = sext i8 %151 to i32
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %156

154:                                              ; preds = %147
  %155 = load i8*, i8** @cluster_name, align 8
  br label %157

156:                                              ; preds = %147
  br label %157

157:                                              ; preds = %156, %154
  %158 = phi i8* [ %155, %154 ], [ getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), %156 ]
  %159 = call i32 @walrcv_connect(i8* %32, i32 0, i8* %158, i8** %13)
  store i32 %159, i32* @wrconn, align 4
  %160 = load i32, i32* @wrconn, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %167, label %162

162:                                              ; preds = %157
  %163 = load i32, i32* @ERROR, align 4
  %164 = load i8*, i8** %13, align 8
  %165 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0), i8* %164)
  %166 = call i32 @ereport(i32 %163, i32 %165)
  br label %167

167:                                              ; preds = %162, %157
  %168 = load i32, i32* @wrconn, align 4
  %169 = call i8* @walrcv_get_conninfo(i32 %168)
  store i8* %169, i8** %3, align 8
  %170 = load i32, i32* @wrconn, align 4
  %171 = call i32 @walrcv_get_senderinfo(i32 %170, i8** %14, i32* %15)
  %172 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %173 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %172, i32 0, i32 8
  %174 = call i32 @SpinLockAcquire(i32* %173)
  %175 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %176 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %175, i32 0, i32 10
  %177 = load i64, i64* %176, align 8
  %178 = load i32, i32* @MAXCONNINFO, align 4
  %179 = call i32 @memset(i64 %177, i32 0, i32 %178)
  %180 = load i8*, i8** %3, align 8
  %181 = icmp ne i8* %180, null
  br i1 %181, label %182, label %190

182:                                              ; preds = %167
  %183 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %184 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %183, i32 0, i32 10
  %185 = load i64, i64* %184, align 8
  %186 = inttoptr i64 %185 to i8*
  %187 = load i8*, i8** %3, align 8
  %188 = load i32, i32* @MAXCONNINFO, align 4
  %189 = call i32 @strlcpy(i8* %186, i8* %187, i32 %188)
  br label %190

190:                                              ; preds = %182, %167
  %191 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %192 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %191, i32 0, i32 9
  %193 = load i64, i64* %192, align 8
  %194 = load i32, i32* @NI_MAXHOST, align 4
  %195 = call i32 @memset(i64 %193, i32 0, i32 %194)
  %196 = load i8*, i8** %14, align 8
  %197 = icmp ne i8* %196, null
  br i1 %197, label %198, label %206

198:                                              ; preds = %190
  %199 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %200 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %199, i32 0, i32 9
  %201 = load i64, i64* %200, align 8
  %202 = inttoptr i64 %201 to i8*
  %203 = load i8*, i8** %14, align 8
  %204 = load i32, i32* @NI_MAXHOST, align 4
  %205 = call i32 @strlcpy(i8* %202, i8* %203, i32 %204)
  br label %206

206:                                              ; preds = %198, %190
  %207 = load i32, i32* %15, align 4
  %208 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %209 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %208, i32 0, i32 5
  store i32 %207, i32* %209, align 8
  %210 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %211 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %210, i32 0, i32 2
  store i32 1, i32* %211, align 4
  %212 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %213 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %212, i32 0, i32 8
  %214 = call i32 @SpinLockRelease(i32* %213)
  %215 = load i8*, i8** %3, align 8
  %216 = icmp ne i8* %215, null
  br i1 %216, label %217, label %220

217:                                              ; preds = %206
  %218 = load i8*, i8** %3, align 8
  %219 = call i32 @pfree(i8* %218)
  br label %220

220:                                              ; preds = %217, %206
  %221 = load i8*, i8** %14, align 8
  %222 = icmp ne i8* %221, null
  br i1 %222, label %223, label %226

223:                                              ; preds = %220
  %224 = load i8*, i8** %14, align 8
  %225 = call i32 @pfree(i8* %224)
  br label %226

226:                                              ; preds = %223, %220
  store i32 1, i32* %8, align 4
  br label %227

227:                                              ; preds = %493, %226
  %228 = load i32, i32* @wrconn, align 4
  %229 = call i8* @walrcv_identify_system(i32 %228, i8** %7)
  store i8* %229, i8** %16, align 8
  %230 = getelementptr inbounds [32 x i8], [32 x i8]* %17, i64 0, i64 0
  %231 = load i8*, i8** @UINT64_FORMAT, align 8
  %232 = call i32 (...) @GetSystemIdentifier()
  %233 = call i32 @snprintf(i8* %230, i32 32, i8* %231, i32 %232)
  %234 = load i8*, i8** %16, align 8
  %235 = getelementptr inbounds [32 x i8], [32 x i8]* %17, i64 0, i64 0
  %236 = call i64 @strcmp(i8* %234, i8* %235)
  %237 = icmp ne i64 %236, 0
  br i1 %237, label %238, label %245

238:                                              ; preds = %227
  %239 = load i32, i32* @ERROR, align 4
  %240 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.5, i64 0, i64 0))
  %241 = load i8*, i8** %16, align 8
  %242 = getelementptr inbounds [32 x i8], [32 x i8]* %17, i64 0, i64 0
  %243 = call i32 (i8*, i8*, i8*, ...) @errdetail(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.6, i64 0, i64 0), i8* %241, i8* %242)
  %244 = call i32 @ereport(i32 %239, i32 %243)
  br label %245

245:                                              ; preds = %238, %227
  %246 = load i8*, i8** %7, align 8
  %247 = load i8*, i8** %6, align 8
  %248 = icmp ult i8* %246, %247
  br i1 %248, label %249, label %255

249:                                              ; preds = %245
  %250 = load i32, i32* @ERROR, align 4
  %251 = load i8*, i8** %7, align 8
  %252 = load i8*, i8** %6, align 8
  %253 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.7, i64 0, i64 0), i8* %251, i8* %252)
  %254 = call i32 @ereport(i32 %250, i32 %253)
  br label %255

255:                                              ; preds = %249, %245
  %256 = load i8*, i8** %6, align 8
  %257 = load i8*, i8** %7, align 8
  %258 = call i32 @WalRcvFetchTimeLineHistoryFiles(i8* %256, i8* %257)
  %259 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 0
  store i32 0, i32* %259, align 8
  %260 = load i32, i32* %5, align 4
  %261 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 1
  store i32 %260, i32* %261, align 4
  %262 = getelementptr inbounds i8, i8* %35, i64 0
  %263 = load i8, i8* %262, align 16
  %264 = sext i8 %263 to i32
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %266, label %267

266:                                              ; preds = %255
  br label %268

267:                                              ; preds = %255
  br label %268

268:                                              ; preds = %267, %266
  %269 = phi i8* [ %35, %266 ], [ null, %267 ]
  %270 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 2
  store i8* %269, i8** %270, align 8
  %271 = load i8*, i8** %6, align 8
  %272 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 3
  %273 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %272, i32 0, i32 0
  %274 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %273, i32 0, i32 0
  store i8* %271, i8** %274, align 8
  %275 = load i8*, i8** %6, align 8
  store i8* %275, i8** @ThisTimeLineID, align 8
  %276 = load i32, i32* @wrconn, align 4
  %277 = call i64 @walrcv_startstreaming(i32 %276, %struct.TYPE_11__* %18)
  %278 = icmp ne i64 %277, 0
  br i1 %278, label %279, label %454

279:                                              ; preds = %268
  %280 = load i32, i32* %8, align 4
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %282, label %290

282:                                              ; preds = %279
  %283 = load i32, i32* @LOG, align 4
  %284 = load i32, i32* %5, align 4
  %285 = ashr i32 %284, 32
  %286 = load i32, i32* %5, align 4
  %287 = load i8*, i8** %6, align 8
  %288 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.8, i64 0, i64 0), i32 %285, i32 %286, i8* %287)
  %289 = call i32 @ereport(i32 %283, i32 %288)
  br label %298

290:                                              ; preds = %279
  %291 = load i32, i32* @LOG, align 4
  %292 = load i32, i32* %5, align 4
  %293 = ashr i32 %292, 32
  %294 = load i32, i32* %5, align 4
  %295 = load i8*, i8** %6, align 8
  %296 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.9, i64 0, i64 0), i32 %293, i32 %294, i8* %295)
  %297 = call i32 @ereport(i32 %291, i32 %296)
  br label %298

298:                                              ; preds = %290, %282
  store i32 0, i32* %8, align 4
  %299 = call i32 @GetXLogReplayRecPtr(i32* null)
  store i32 %299, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @LogstreamResult, i32 0, i32 1), align 4
  store i32 %299, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @LogstreamResult, i32 0, i32 0), align 4
  %300 = call i32 @initStringInfo(i32* @reply_message)
  %301 = call i32 @initStringInfo(i32* @incoming_message)
  %302 = call i64 (...) @GetCurrentTimestamp()
  store i64 %302, i64* %10, align 8
  store i32 0, i32* %12, align 4
  br label %303

303:                                              ; preds = %447, %298
  store i32 0, i32* %21, align 4
  %304 = load i64, i64* @PGINVALID_SOCKET, align 8
  store i64 %304, i64* %22, align 8
  %305 = call i32 (...) @RecoveryInProgress()
  %306 = icmp ne i32 %305, 0
  br i1 %306, label %311, label %307

307:                                              ; preds = %303
  %308 = load i32, i32* @FATAL, align 4
  %309 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.10, i64 0, i64 0))
  %310 = call i32 @ereport(i32 %308, i32 %309)
  br label %311

311:                                              ; preds = %307, %303
  %312 = call i32 (...) @ProcessWalRcvInterrupts()
  %313 = load i32, i32* @got_SIGHUP, align 4
  %314 = icmp ne i32 %313, 0
  br i1 %314, label %315, label %319

315:                                              ; preds = %311
  store i32 0, i32* @got_SIGHUP, align 4
  %316 = load i32, i32* @PGC_SIGHUP, align 4
  %317 = call i32 @ProcessConfigFile(i32 %316)
  %318 = call i32 @XLogWalRcvSendHSFeedback(i32 1)
  br label %319

319:                                              ; preds = %315, %311
  %320 = load i32, i32* @wrconn, align 4
  %321 = call i32 @walrcv_receive(i32 %320, i8** %19, i64* %22)
  store i32 %321, i32* %20, align 4
  %322 = load i32, i32* %20, align 4
  %323 = icmp ne i32 %322, 0
  br i1 %323, label %324, label %364

324:                                              ; preds = %319
  br label %325

325:                                              ; preds = %358, %324
  %326 = load i32, i32* %20, align 4
  %327 = icmp sgt i32 %326, 0
  br i1 %327, label %328, label %338

328:                                              ; preds = %325
  %329 = call i64 (...) @GetCurrentTimestamp()
  store i64 %329, i64* %10, align 8
  store i32 0, i32* %12, align 4
  %330 = load i8*, i8** %19, align 8
  %331 = getelementptr inbounds i8, i8* %330, i64 0
  %332 = load i8, i8* %331, align 1
  %333 = load i8*, i8** %19, align 8
  %334 = getelementptr inbounds i8, i8* %333, i64 1
  %335 = load i32, i32* %20, align 4
  %336 = sub nsw i32 %335, 1
  %337 = call i32 @XLogWalRcvProcessMsg(i8 signext %332, i8* %334, i32 %336)
  br label %358

338:                                              ; preds = %325
  %339 = load i32, i32* %20, align 4
  %340 = icmp eq i32 %339, 0
  br i1 %340, label %341, label %342

341:                                              ; preds = %338
  br label %361

342:                                              ; preds = %338
  %343 = load i32, i32* %20, align 4
  %344 = icmp slt i32 %343, 0
  br i1 %344, label %345, label %356

345:                                              ; preds = %342
  %346 = load i32, i32* @LOG, align 4
  %347 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.11, i64 0, i64 0))
  %348 = load i8*, i8** %6, align 8
  %349 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @LogstreamResult, i32 0, i32 0), align 4
  %350 = ashr i32 %349, 32
  %351 = sext i32 %350 to i64
  %352 = inttoptr i64 %351 to i8*
  %353 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @LogstreamResult, i32 0, i32 0), align 4
  %354 = call i32 (i8*, i8*, i8*, ...) @errdetail(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.12, i64 0, i64 0), i8* %348, i8* %352, i32 %353)
  %355 = call i32 @ereport(i32 %346, i32 %354)
  store i32 1, i32* %21, align 4
  br label %361

356:                                              ; preds = %342
  br label %357

357:                                              ; preds = %356
  br label %358

358:                                              ; preds = %357, %328
  %359 = load i32, i32* @wrconn, align 4
  %360 = call i32 @walrcv_receive(i32 %359, i8** %19, i64* %22)
  store i32 %360, i32* %20, align 4
  br label %325

361:                                              ; preds = %345, %341
  %362 = call i32 @XLogWalRcvSendReply(i32 0, i32 0)
  %363 = call i32 @XLogWalRcvFlush(i32 0)
  br label %364

364:                                              ; preds = %361, %319
  %365 = load i32, i32* %21, align 4
  %366 = icmp ne i32 %365, 0
  br i1 %366, label %367, label %368

367:                                              ; preds = %364
  br label %448

368:                                              ; preds = %364
  %369 = load i64, i64* %22, align 8
  %370 = load i64, i64* @PGINVALID_SOCKET, align 8
  %371 = icmp ne i64 %369, %370
  %372 = zext i1 %371 to i32
  %373 = call i32 @Assert(i32 %372)
  %374 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %375 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %374, i32 0, i32 7
  %376 = load i32*, i32** %375, align 8
  %377 = load i32, i32* @WL_EXIT_ON_PM_DEATH, align 4
  %378 = load i32, i32* @WL_SOCKET_READABLE, align 4
  %379 = or i32 %377, %378
  %380 = load i32, i32* @WL_TIMEOUT, align 4
  %381 = or i32 %379, %380
  %382 = load i32, i32* @WL_LATCH_SET, align 4
  %383 = or i32 %381, %382
  %384 = load i64, i64* %22, align 8
  %385 = load i32, i32* @NAPTIME_PER_CYCLE, align 4
  %386 = load i32, i32* @WAIT_EVENT_WAL_RECEIVER_MAIN, align 4
  %387 = call i32 @WaitLatchOrSocket(i32* %376, i32 %383, i64 %384, i32 %385, i32 %386)
  store i32 %387, i32* %23, align 4
  %388 = load i32, i32* %23, align 4
  %389 = load i32, i32* @WL_LATCH_SET, align 4
  %390 = and i32 %388, %389
  %391 = icmp ne i32 %390, 0
  br i1 %391, label %392, label %408

392:                                              ; preds = %368
  %393 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %394 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %393, i32 0, i32 7
  %395 = load i32*, i32** %394, align 8
  %396 = call i32 @ResetLatch(i32* %395)
  %397 = call i32 (...) @ProcessWalRcvInterrupts()
  %398 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %399 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %398, i32 0, i32 6
  %400 = load i32, i32* %399, align 4
  %401 = icmp ne i32 %400, 0
  br i1 %401, label %402, label %407

402:                                              ; preds = %392
  %403 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %404 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %403, i32 0, i32 6
  store i32 0, i32* %404, align 4
  %405 = call i32 (...) @pg_memory_barrier()
  %406 = call i32 @XLogWalRcvSendReply(i32 1, i32 0)
  br label %407

407:                                              ; preds = %402, %392
  br label %408

408:                                              ; preds = %407, %368
  %409 = load i32, i32* %23, align 4
  %410 = load i32, i32* @WL_TIMEOUT, align 4
  %411 = and i32 %409, %410
  %412 = icmp ne i32 %411, 0
  br i1 %412, label %413, label %447

413:                                              ; preds = %408
  store i32 0, i32* %24, align 4
  %414 = load i32, i32* @wal_receiver_timeout, align 4
  %415 = icmp sgt i32 %414, 0
  br i1 %415, label %416, label %442

416:                                              ; preds = %413
  %417 = call i64 (...) @GetCurrentTimestamp()
  store i64 %417, i64* %25, align 8
  %418 = load i64, i64* %10, align 8
  %419 = load i32, i32* @wal_receiver_timeout, align 4
  %420 = call i64 @TimestampTzPlusMilliseconds(i64 %418, i32 %419)
  store i64 %420, i64* %26, align 8
  %421 = load i64, i64* %25, align 8
  %422 = load i64, i64* %26, align 8
  %423 = icmp sge i64 %421, %422
  br i1 %423, label %424, label %428

424:                                              ; preds = %416
  %425 = load i32, i32* @ERROR, align 4
  %426 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.13, i64 0, i64 0))
  %427 = call i32 @ereport(i32 %425, i32 %426)
  br label %428

428:                                              ; preds = %424, %416
  %429 = load i32, i32* %12, align 4
  %430 = icmp ne i32 %429, 0
  br i1 %430, label %441, label %431

431:                                              ; preds = %428
  %432 = load i64, i64* %10, align 8
  %433 = load i32, i32* @wal_receiver_timeout, align 4
  %434 = sdiv i32 %433, 2
  %435 = call i64 @TimestampTzPlusMilliseconds(i64 %432, i32 %434)
  store i64 %435, i64* %26, align 8
  %436 = load i64, i64* %25, align 8
  %437 = load i64, i64* %26, align 8
  %438 = icmp sge i64 %436, %437
  br i1 %438, label %439, label %440

439:                                              ; preds = %431
  store i32 1, i32* %24, align 4
  store i32 1, i32* %12, align 4
  br label %440

440:                                              ; preds = %439, %431
  br label %441

441:                                              ; preds = %440, %428
  br label %442

442:                                              ; preds = %441, %413
  %443 = load i32, i32* %24, align 4
  %444 = load i32, i32* %24, align 4
  %445 = call i32 @XLogWalRcvSendReply(i32 %443, i32 %444)
  %446 = call i32 @XLogWalRcvSendHSFeedback(i32 0)
  br label %447

447:                                              ; preds = %442, %408
  br label %303

448:                                              ; preds = %367
  %449 = load i32, i32* @wrconn, align 4
  %450 = call i32 @walrcv_endstreaming(i32 %449, i8** %7)
  %451 = load i8*, i8** %6, align 8
  %452 = load i8*, i8** %7, align 8
  %453 = call i32 @WalRcvFetchTimeLineHistoryFiles(i8* %451, i8* %452)
  br label %459

454:                                              ; preds = %268
  %455 = load i32, i32* @LOG, align 4
  %456 = load i8*, i8** %6, align 8
  %457 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.14, i64 0, i64 0), i8* %456)
  %458 = call i32 @ereport(i32 %455, i32 %457)
  br label %459

459:                                              ; preds = %454, %448
  %460 = load i32, i32* @recvFile, align 4
  %461 = icmp sge i32 %460, 0
  br i1 %461, label %462, label %493

462:                                              ; preds = %459
  %463 = load i32, i32* @MAXFNAMELEN, align 4
  %464 = zext i32 %463 to i64
  %465 = call i8* @llvm.stacksave()
  store i8* %465, i8** %27, align 8
  %466 = alloca i8, i64 %464, align 16
  store i64 %464, i64* %28, align 8
  %467 = call i32 @XLogWalRcvFlush(i32 0)
  %468 = load i32, i32* @recvFile, align 4
  %469 = call i64 @close(i32 %468)
  %470 = icmp ne i64 %469, 0
  br i1 %470, label %471, label %479

471:                                              ; preds = %462
  %472 = load i32, i32* @PANIC, align 4
  %473 = call i32 (...) @errcode_for_file_access()
  %474 = load i32, i32* @recvFileTLI, align 4
  %475 = load i32, i32* @recvSegNo, align 4
  %476 = call i8* @XLogFileNameP(i32 %474, i32 %475)
  %477 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.15, i64 0, i64 0), i8* %476)
  %478 = call i32 @ereport(i32 %472, i32 %477)
  br label %479

479:                                              ; preds = %471, %462
  %480 = load i32, i32* @recvFileTLI, align 4
  %481 = load i32, i32* @recvSegNo, align 4
  %482 = load i32, i32* @wal_segment_size, align 4
  %483 = call i32 @XLogFileName(i8* %466, i32 %480, i32 %481, i32 %482)
  %484 = load i64, i64* @XLogArchiveMode, align 8
  %485 = load i64, i64* @ARCHIVE_MODE_ALWAYS, align 8
  %486 = icmp ne i64 %484, %485
  br i1 %486, label %487, label %489

487:                                              ; preds = %479
  %488 = call i32 @XLogArchiveForceDone(i8* %466)
  br label %491

489:                                              ; preds = %479
  %490 = call i32 @XLogArchiveNotify(i8* %466)
  br label %491

491:                                              ; preds = %489, %487
  %492 = load i8*, i8** %27, align 8
  call void @llvm.stackrestore(i8* %492)
  br label %493

493:                                              ; preds = %491, %459
  store i32 -1, i32* @recvFile, align 4
  %494 = load i32, i32* @DEBUG1, align 4
  %495 = call i32 @elog(i32 %494, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.16, i64 0, i64 0))
  %496 = call i32 @WalRcvWaitForStartPosition(i32* %5, i8** %6)
  br label %227
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @Assert(i32) #2

declare dso_local i64 @GetCurrentTimestamp(...) #2

declare dso_local i32 @SpinLockAcquire(i32*) #2

declare dso_local i32 @SpinLockRelease(i32*) #2

declare dso_local i32 @proc_exit(i32) #2

declare dso_local i32 @elog(i32, i8*) #2

declare dso_local i32 @strlcpy(i8*, i8*, i32) #2

declare dso_local i32 @on_shmem_exit(i32, i32) #2

declare dso_local i32 @pqsignal(i32, i32) #2

declare dso_local i32 @sigdelset(i32*, i32) #2

declare dso_local i32 @load_file(i8*, i32) #2

declare dso_local i32 @PG_SETMASK(i32*) #2

declare dso_local i32 @walrcv_connect(i8*, i32, i8*, i8**) #2

declare dso_local i32 @ereport(i32, i32) #2

declare dso_local i32 @errmsg(i8*, ...) #2

declare dso_local i8* @walrcv_get_conninfo(i32) #2

declare dso_local i32 @walrcv_get_senderinfo(i32, i8**, i32*) #2

declare dso_local i32 @memset(i64, i32, i32) #2

declare dso_local i32 @pfree(i8*) #2

declare dso_local i8* @walrcv_identify_system(i32, i8**) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #2

declare dso_local i32 @GetSystemIdentifier(...) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i32 @errdetail(i8*, i8*, i8*, ...) #2

declare dso_local i32 @WalRcvFetchTimeLineHistoryFiles(i8*, i8*) #2

declare dso_local i64 @walrcv_startstreaming(i32, %struct.TYPE_11__*) #2

declare dso_local i32 @GetXLogReplayRecPtr(i32*) #2

declare dso_local i32 @initStringInfo(i32*) #2

declare dso_local i32 @RecoveryInProgress(...) #2

declare dso_local i32 @ProcessWalRcvInterrupts(...) #2

declare dso_local i32 @ProcessConfigFile(i32) #2

declare dso_local i32 @XLogWalRcvSendHSFeedback(i32) #2

declare dso_local i32 @walrcv_receive(i32, i8**, i64*) #2

declare dso_local i32 @XLogWalRcvProcessMsg(i8 signext, i8*, i32) #2

declare dso_local i32 @XLogWalRcvSendReply(i32, i32) #2

declare dso_local i32 @XLogWalRcvFlush(i32) #2

declare dso_local i32 @WaitLatchOrSocket(i32*, i32, i64, i32, i32) #2

declare dso_local i32 @ResetLatch(i32*) #2

declare dso_local i32 @pg_memory_barrier(...) #2

declare dso_local i64 @TimestampTzPlusMilliseconds(i64, i32) #2

declare dso_local i32 @walrcv_endstreaming(i32, i8**) #2

declare dso_local i64 @close(i32) #2

declare dso_local i32 @errcode_for_file_access(...) #2

declare dso_local i8* @XLogFileNameP(i32, i32) #2

declare dso_local i32 @XLogFileName(i8*, i32, i32, i32) #2

declare dso_local i32 @XLogArchiveForceDone(i8*) #2

declare dso_local i32 @XLogArchiveNotify(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

declare dso_local i32 @WalRcvWaitForStartPosition(i32*, i8**) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
