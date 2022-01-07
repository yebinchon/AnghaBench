; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/postmaster/extr_postmaster.c_BackendInitialize.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/postmaster/extr_postmaster.c_BackendInitialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i8*, i8*, i32, i32, i8*, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }

@NI_MAXHOST = common dso_local global i32 0, align 4
@NI_MAXSERV = common dso_local global i32 0, align 4
@MyProcPort = common dso_local global %struct.TYPE_7__* null, align 8
@PreAuthDelay = common dso_local global i64 0, align 8
@ClientAuthInProgress = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@DestRemote = common dso_local global i32 0, align 4
@whereToSendOutput = common dso_local global i32 0, align 4
@SIGTERM = common dso_local global i32 0, align 4
@startup_die = common dso_local global i32 0, align 4
@SIGQUIT = common dso_local global i32 0, align 4
@StartupBlockSig = common dso_local global i32 0, align 4
@log_hostname = common dso_local global i64 0, align 8
@NI_NUMERICHOST = common dso_local global i32 0, align 4
@NI_NUMERICSERV = common dso_local global i32 0, align 4
@WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"pg_getnameinfo_all() failed: %s\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"%s(%s)\00", align 1
@Log_connections = common dso_local global i64 0, align 8
@LOG = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [37 x i8] c"connection received: host=%s port=%s\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"connection received: host=%s\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"0123456789.\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"0123456789ABCDEFabcdef:\00", align 1
@STARTUP_PACKET_TIMEOUT = common dso_local global i32 0, align 4
@StartupPacketTimeoutHandler = common dso_local global i32 0, align 4
@AuthenticationTimeout = common dso_local global i32 0, align 4
@STATUS_OK = common dso_local global i32 0, align 4
@am_walsender = common dso_local global i64 0, align 8
@B_WAL_SENDER = common dso_local global i32 0, align 4
@update_process_title = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [15 x i8] c"authentication\00", align 1
@BlockSig = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*)* @BackendInitialize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @BackendInitialize(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %9 = load i32, i32* @NI_MAXHOST, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %5, align 8
  %12 = alloca i8, i64 %10, align 16
  store i64 %10, i64* %6, align 8
  %13 = load i32, i32* @NI_MAXSERV, align 4
  %14 = zext i32 %13 to i64
  %15 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %7, align 8
  %16 = load i32, i32* @NI_MAXHOST, align 4
  %17 = zext i32 %16 to i64
  %18 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %8, align 8
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  store %struct.TYPE_7__* %19, %struct.TYPE_7__** @MyProcPort, align 8
  %20 = load i64, i64* @PreAuthDelay, align 8
  %21 = icmp sgt i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %1
  %23 = load i64, i64* @PreAuthDelay, align 8
  %24 = mul nsw i64 %23, 1000000
  %25 = call i32 @pg_usleep(i64 %24)
  br label %26

26:                                               ; preds = %22, %1
  store i32 1, i32* @ClientAuthInProgress, align 4
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %28, align 8
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 1
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %30, align 8
  %31 = call i32 (...) @pq_init()
  %32 = load i32, i32* @DestRemote, align 4
  store i32 %32, i32* @whereToSendOutput, align 4
  %33 = load i32, i32* @SIGTERM, align 4
  %34 = load i32, i32* @startup_die, align 4
  %35 = call i32 @pqsignal(i32 %33, i32 %34)
  %36 = load i32, i32* @SIGQUIT, align 4
  %37 = load i32, i32* @startup_die, align 4
  %38 = call i32 @pqsignal(i32 %36, i32 %37)
  %39 = call i32 (...) @InitializeTimeouts()
  %40 = call i32 @PG_SETMASK(i32* @StartupBlockSig)
  %41 = getelementptr inbounds i8, i8* %12, i64 0
  store i8 0, i8* %41, align 16
  %42 = getelementptr inbounds i8, i8* %15, i64 0
  store i8 0, i8* %42, align 16
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 5
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 1
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 5
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = trunc i64 %10 to i32
  %51 = trunc i64 %14 to i32
  %52 = load i64, i64* @log_hostname, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %26
  br label %57

55:                                               ; preds = %26
  %56 = load i32, i32* @NI_NUMERICHOST, align 4
  br label %57

57:                                               ; preds = %55, %54
  %58 = phi i32 [ 0, %54 ], [ %56, %55 ]
  %59 = load i32, i32* @NI_NUMERICSERV, align 4
  %60 = or i32 %58, %59
  %61 = call i32 @pg_getnameinfo_all(i32* %45, i32 %49, i8* %12, i32 %50, i8* %15, i32 %51, i32 %60)
  store i32 %61, i32* %4, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %57
  %64 = load i32, i32* @WARNING, align 4
  %65 = load i32, i32* %4, align 4
  %66 = call i32 @gai_strerror(i32 %65)
  %67 = call i32 @errmsg_internal(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %66)
  %68 = call i32 @ereport(i32 %64, i32 %67)
  br label %69

69:                                               ; preds = %63, %57
  %70 = getelementptr inbounds i8, i8* %15, i64 0
  %71 = load i8, i8* %70, align 16
  %72 = sext i8 %71 to i32
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %69
  %75 = trunc i64 %17 to i32
  %76 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %18, i32 %75, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %12)
  br label %80

77:                                               ; preds = %69
  %78 = trunc i64 %17 to i32
  %79 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %18, i32 %78, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* %12, i8* %15)
  br label %80

80:                                               ; preds = %77, %74
  %81 = call i8* @strdup(i8* %12)
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 0
  store i8* %81, i8** %83, align 8
  %84 = call i8* @strdup(i8* %15)
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 1
  store i8* %84, i8** %86, align 8
  %87 = load i64, i64* @Log_connections, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %102

89:                                               ; preds = %80
  %90 = getelementptr inbounds i8, i8* %15, i64 0
  %91 = load i8, i8* %90, align 16
  %92 = icmp ne i8 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %89
  %94 = load i32, i32* @LOG, align 4
  %95 = call i32 (i8*, i8*, ...) @errmsg(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i8* %12, i8* %15)
  %96 = call i32 @ereport(i32 %94, i32 %95)
  br label %101

97:                                               ; preds = %89
  %98 = load i32, i32* @LOG, align 4
  %99 = call i32 (i8*, i8*, ...) @errmsg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), i8* %12)
  %100 = call i32 @ereport(i32 %98, i32 %99)
  br label %101

101:                                              ; preds = %97, %93
  br label %102

102:                                              ; preds = %101, %80
  %103 = load i64, i64* @log_hostname, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %120

105:                                              ; preds = %102
  %106 = load i32, i32* %4, align 4
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %120

108:                                              ; preds = %105
  %109 = call i64 @strspn(i8* %12, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0))
  %110 = call i64 @strlen(i8* %12)
  %111 = icmp slt i64 %109, %110
  br i1 %111, label %112, label %120

112:                                              ; preds = %108
  %113 = call i64 @strspn(i8* %12, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0))
  %114 = call i64 @strlen(i8* %12)
  %115 = icmp slt i64 %113, %114
  br i1 %115, label %116, label %120

116:                                              ; preds = %112
  %117 = call i8* @strdup(i8* %12)
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 4
  store i8* %117, i8** %119, align 8
  br label %120

120:                                              ; preds = %116, %112, %108, %105, %102
  %121 = load i32, i32* @STARTUP_PACKET_TIMEOUT, align 4
  %122 = load i32, i32* @StartupPacketTimeoutHandler, align 4
  %123 = call i32 @RegisterTimeout(i32 %121, i32 %122)
  %124 = load i32, i32* @STARTUP_PACKET_TIMEOUT, align 4
  %125 = load i32, i32* @AuthenticationTimeout, align 4
  %126 = mul nsw i32 %125, 1000
  %127 = call i32 @enable_timeout_after(i32 %124, i32 %126)
  %128 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %129 = call i32 @ProcessStartupPacket(%struct.TYPE_7__* %128, i32 0)
  store i32 %129, i32* %3, align 4
  %130 = load i32, i32* %3, align 4
  %131 = load i32, i32* @STATUS_OK, align 4
  %132 = icmp ne i32 %130, %131
  br i1 %132, label %133, label %135

133:                                              ; preds = %120
  %134 = call i32 @proc_exit(i32 0)
  br label %135

135:                                              ; preds = %133, %120
  %136 = load i64, i64* @am_walsender, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %149

138:                                              ; preds = %135
  %139 = load i32, i32* @B_WAL_SENDER, align 4
  %140 = call i32 @pgstat_get_backend_desc(i32 %139)
  %141 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %142 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %141, i32 0, i32 3
  %143 = load i32, i32* %142, align 4
  %144 = load i64, i64* @update_process_title, align 8
  %145 = icmp ne i64 %144, 0
  %146 = zext i1 %145 to i64
  %147 = select i1 %145, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0)
  %148 = call i32 @init_ps_display(i32 %140, i32 %143, i8* %18, i8* %147)
  br label %161

149:                                              ; preds = %135
  %150 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %151 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %150, i32 0, i32 3
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %154 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 8
  %156 = load i64, i64* @update_process_title, align 8
  %157 = icmp ne i64 %156, 0
  %158 = zext i1 %157 to i64
  %159 = select i1 %157, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0)
  %160 = call i32 @init_ps_display(i32 %152, i32 %155, i8* %18, i8* %159)
  br label %161

161:                                              ; preds = %149, %138
  %162 = load i32, i32* @STARTUP_PACKET_TIMEOUT, align 4
  %163 = call i32 @disable_timeout(i32 %162, i32 0)
  %164 = call i32 @PG_SETMASK(i32* @BlockSig)
  %165 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %165)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @pg_usleep(i64) #2

declare dso_local i32 @pq_init(...) #2

declare dso_local i32 @pqsignal(i32, i32) #2

declare dso_local i32 @InitializeTimeouts(...) #2

declare dso_local i32 @PG_SETMASK(i32*) #2

declare dso_local i32 @pg_getnameinfo_all(i32*, i32, i8*, i32, i8*, i32, i32) #2

declare dso_local i32 @ereport(i32, i32) #2

declare dso_local i32 @errmsg_internal(i8*, i32) #2

declare dso_local i32 @gai_strerror(i32) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, ...) #2

declare dso_local i8* @strdup(i8*) #2

declare dso_local i32 @errmsg(i8*, i8*, ...) #2

declare dso_local i64 @strspn(i8*, i8*) #2

declare dso_local i64 @strlen(i8*) #2

declare dso_local i32 @RegisterTimeout(i32, i32) #2

declare dso_local i32 @enable_timeout_after(i32, i32) #2

declare dso_local i32 @ProcessStartupPacket(%struct.TYPE_7__*, i32) #2

declare dso_local i32 @proc_exit(i32) #2

declare dso_local i32 @init_ps_display(i32, i32, i8*, i8*) #2

declare dso_local i32 @pgstat_get_backend_desc(i32) #2

declare dso_local i32 @disable_timeout(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
