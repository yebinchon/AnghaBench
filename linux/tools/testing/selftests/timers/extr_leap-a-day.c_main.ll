; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/timers/extr_leap-a-day.c_main.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/timers/extr_leap-a-day.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.itimerspec = type { %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i64, i64 }
%struct.TYPE_6__ = type { i32, i64 }
%struct.sigevent = type { i32, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i64 }
%struct.sigaction = type { i32, i64, i32 }
%struct.timespec = type { i32, i32 }
%struct.timex = type { i64, %struct.TYPE_8__, i32, i8* }
%struct.TYPE_8__ = type { i32, i32 }
%struct.timeval = type { i32, i64 }

@SIGRTMAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"sti:\00", align 1
@.str.1 = private unnamed_addr constant [91 x i8] c"Only setting leap-flag, not changing time. It could take up to a day for leap to trigger.\0A\00", align 1
@optarg = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"Usage: %s [-w] [-i <iterations>]\0A\00", align 1
@.str.3 = private unnamed_addr constant [54 x i8] c"\09-w: Set flag and wait for leap second each iteration\00", align 1
@.str.4 = private unnamed_addr constant [53 x i8] c"\09    (default sets time to right before leapsecond)\0A\00", align 1
@.str.5 = private unnamed_addr constant [58 x i8] c"\09-i: Number of iterations (-1 = infinite, default is 10)\0A\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"\09-t: Print TAI time\0A\00", align 1
@CLOCK_TAI = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [34 x i8] c"System doesn't support CLOCK_TAI\0A\00", align 1
@SIGINT = common dso_local global i32 0, align 4
@handler = common dso_local global i32 0, align 4
@SIGKILL = common dso_local global i32 0, align 4
@sigalarm = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [46 x i8] c"This runs continuously. Press ctrl-c to stop\0A\00", align 1
@.str.9 = private unnamed_addr constant [49 x i8] c"Running for %i iterations. Press ctrl-c to stop\0A\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@CLOCK_REALTIME = common dso_local global i32 0, align 4
@next_leap = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [19 x i8] c"Setting time to %s\00", align 1
@ADJ_STATUS = common dso_local global i8* null, align 8
@STA_INS = common dso_local global i64 0, align 8
@STA_DEL = common dso_local global i64 0, align 8
@.str.12 = private unnamed_addr constant [45 x i8] c"Error: Problem setting STA_INS/STA_DEL!: %s\0A\00", align 1
@.str.13 = private unnamed_addr constant [37 x i8] c"Error: STA_INS/STA_DEL not set!: %s\0A\00", align 1
@.str.14 = private unnamed_addr constant [52 x i8] c"Using TAI time, no inconsistencies should be seen!\0A\00", align 1
@.str.15 = private unnamed_addr constant [30 x i8] c"Scheduling leap second for %s\00", align 1
@.str.16 = private unnamed_addr constant [28 x i8] c"Setting timer for %ld -  %s\00", align 1
@SIGEV_SIGNAL = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [28 x i8] c"Error: timer_create failed\0A\00", align 1
@TIMER_ABSTIME = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [42 x i8] c"Something woke us up, returning to sleep\0A\00", align 1
@.str.19 = private unnamed_addr constant [54 x i8] c"Something cleared STA_INS/STA_DEL, setting it again.\0A\00", align 1
@.str.20 = private unnamed_addr constant [21 x i8] c"%ld sec, %9ld ns\09%s\0A\00", align 1
@.str.21 = private unnamed_addr constant [22 x i8] c"%s + %6ld us (%i)\09%s\0A\00", align 1
@NSEC_PER_SEC = common dso_local global i32 0, align 4
@CLOCK_MONOTONIC = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [15 x i8] c"Leap complete\0A\00", align 1
@error_found = common dso_local global i64 0, align 8
@.str.23 = private unnamed_addr constant [17 x i8] c"Errors observed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.itimerspec, align 8
  %8 = alloca %struct.sigevent, align 8
  %9 = alloca %struct.sigaction, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.timespec, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.timespec, align 4
  %19 = alloca %struct.timex, align 8
  %20 = alloca i32, align 4
  %21 = alloca %struct.timeval, align 8
  %22 = alloca [26 x i8], align 16
  %23 = alloca %struct.timespec, align 4
  %24 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %25 = load i32, i32* @SIGRTMAX, align 4
  store i32 %25, i32* %10, align 4
  store i32 1, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 1, i32* %13, align 4
  store i32 10, i32* %14, align 4
  br label %26

26:                                               ; preds = %49, %2
  %27 = load i32, i32* %4, align 4
  %28 = load i8**, i8*** %5, align 8
  %29 = call i32 @getopt(i32 %27, i8** %28, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i32 %29, i32* %15, align 4
  %30 = icmp ne i32 %29, -1
  br i1 %30, label %31, label %50

31:                                               ; preds = %26
  %32 = load i32, i32* %15, align 4
  switch i32 %32, label %39 [
    i32 119, label %33
    i32 105, label %35
    i32 116, label %38
  ]

33:                                               ; preds = %31
  %34 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %11, align 4
  br label %49

35:                                               ; preds = %31
  %36 = load i32, i32* @optarg, align 4
  %37 = call i32 @atoi(i32 %36)
  store i32 %37, i32* %14, align 4
  br label %49

38:                                               ; preds = %31
  store i32 1, i32* %12, align 4
  br label %49

39:                                               ; preds = %31
  %40 = load i8**, i8*** %5, align 8
  %41 = getelementptr inbounds i8*, i8** %40, i64 0
  %42 = load i8*, i8** %41, align 8
  %43 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i8* %42)
  %44 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i64 0, i64 0))
  %45 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.4, i64 0, i64 0))
  %46 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.5, i64 0, i64 0))
  %47 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0))
  %48 = call i32 @exit(i32 -1) #3
  unreachable

49:                                               ; preds = %38, %35, %33
  br label %26

50:                                               ; preds = %26
  %51 = load i32, i32* %12, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %61

53:                                               ; preds = %50
  %54 = load i32, i32* @CLOCK_TAI, align 4
  %55 = call i64 @clock_gettime(i32 %54, %struct.timespec* %16)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %53
  %58 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0))
  %59 = call i32 (...) @ksft_exit_fail()
  br label %60

60:                                               ; preds = %57, %53
  br label %61

61:                                               ; preds = %60, %50
  %62 = load i32, i32* @SIGINT, align 4
  %63 = load i32, i32* @handler, align 4
  %64 = call i32 @signal(i32 %62, i32 %63)
  %65 = load i32, i32* @SIGKILL, align 4
  %66 = load i32, i32* @handler, align 4
  %67 = call i32 @signal(i32 %65, i32 %66)
  %68 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %9, i32 0, i32 2
  %69 = call i32 @sigfillset(i32* %68)
  %70 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %9, i32 0, i32 1
  store i64 0, i64* %70, align 8
  %71 = load i32, i32* @sigalarm, align 4
  %72 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %9, i32 0, i32 0
  store i32 %71, i32* %72, align 8
  %73 = load i32, i32* %10, align 4
  %74 = call i32 @sigaction(i32 %73, %struct.sigaction* %9, i32* null)
  %75 = load i32, i32* %14, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %61
  %78 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.8, i64 0, i64 0))
  br label %82

79:                                               ; preds = %61
  %80 = load i32, i32* %14, align 4
  %81 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.9, i64 0, i64 0), i32 %80)
  br label %82

82:                                               ; preds = %79, %77
  %83 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0))
  br label %84

84:                                               ; preds = %82, %292
  %85 = load i32, i32* @CLOCK_REALTIME, align 4
  %86 = call i64 @clock_gettime(i32 %85, %struct.timespec* %18)
  %87 = getelementptr inbounds %struct.timespec, %struct.timespec* %18, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  store i32 %88, i32* @next_leap, align 4
  %89 = load i32, i32* @next_leap, align 4
  %90 = srem i32 %89, 86400
  %91 = sub nsw i32 86400, %90
  %92 = load i32, i32* @next_leap, align 4
  %93 = add nsw i32 %92, %91
  store i32 %93, i32* @next_leap, align 4
  %94 = load i32, i32* %11, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %105

96:                                               ; preds = %84
  %97 = load i32, i32* @next_leap, align 4
  %98 = sub nsw i32 %97, 10
  %99 = getelementptr inbounds %struct.timeval, %struct.timeval* %21, i32 0, i32 0
  store i32 %98, i32* %99, align 8
  %100 = getelementptr inbounds %struct.timeval, %struct.timeval* %21, i32 0, i32 1
  store i64 0, i64* %100, align 8
  %101 = call i32 @settimeofday(%struct.timeval* %21, i32* null)
  %102 = getelementptr inbounds %struct.timeval, %struct.timeval* %21, i32 0, i32 0
  %103 = call i8* @ctime(i32* %102)
  %104 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i64 0, i64 0), i8* %103)
  br label %105

105:                                              ; preds = %96, %84
  %106 = call i32 (...) @clear_time_state()
  %107 = load i8*, i8** @ADJ_STATUS, align 8
  %108 = getelementptr inbounds %struct.timex, %struct.timex* %19, i32 0, i32 3
  store i8* %107, i8** %108, align 8
  %109 = load i32, i32* %13, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %105
  %112 = load i64, i64* @STA_INS, align 8
  %113 = getelementptr inbounds %struct.timex, %struct.timex* %19, i32 0, i32 0
  store i64 %112, i64* %113, align 8
  br label %117

114:                                              ; preds = %105
  %115 = load i64, i64* @STA_DEL, align 8
  %116 = getelementptr inbounds %struct.timex, %struct.timex* %19, i32 0, i32 0
  store i64 %115, i64* %116, align 8
  br label %117

117:                                              ; preds = %114, %111
  %118 = call i32 @adjtimex(%struct.timex* %19)
  store i32 %118, i32* %17, align 4
  %119 = load i32, i32* %17, align 4
  %120 = icmp slt i32 %119, 0
  br i1 %120, label %121, label %126

121:                                              ; preds = %117
  %122 = load i32, i32* %17, align 4
  %123 = call i8* @time_state_str(i32 %122)
  %124 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.12, i64 0, i64 0), i8* %123)
  %125 = call i32 (...) @ksft_exit_fail()
  store i32 %125, i32* %3, align 4
  br label %296

126:                                              ; preds = %117
  %127 = getelementptr inbounds %struct.timex, %struct.timex* %19, i32 0, i32 3
  store i8* null, i8** %127, align 8
  %128 = call i32 @adjtimex(%struct.timex* %19)
  store i32 %128, i32* %17, align 4
  %129 = getelementptr inbounds %struct.timex, %struct.timex* %19, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* @STA_INS, align 8
  %132 = icmp ne i64 %130, %131
  br i1 %132, label %133, label %143

133:                                              ; preds = %126
  %134 = getelementptr inbounds %struct.timex, %struct.timex* %19, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = load i64, i64* @STA_DEL, align 8
  %137 = icmp ne i64 %135, %136
  br i1 %137, label %138, label %143

138:                                              ; preds = %133
  %139 = load i32, i32* %17, align 4
  %140 = call i8* @time_state_str(i32 %139)
  %141 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.13, i64 0, i64 0), i8* %140)
  %142 = call i32 (...) @ksft_exit_fail()
  store i32 %142, i32* %3, align 4
  br label %296

143:                                              ; preds = %133, %126
  %144 = load i32, i32* %12, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %148

146:                                              ; preds = %143
  %147 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.14, i64 0, i64 0))
  br label %148

148:                                              ; preds = %146, %143
  %149 = call i8* @ctime(i32* @next_leap)
  %150 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.15, i64 0, i64 0), i8* %149)
  %151 = load i32, i32* @next_leap, align 4
  %152 = call i8* @ctime(i32* @next_leap)
  %153 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.16, i64 0, i64 0), i32 %151, i8* %152)
  %154 = call i32 @memset(%struct.sigevent* %8, i32 0, i32 24)
  %155 = load i32, i32* @SIGEV_SIGNAL, align 4
  %156 = getelementptr inbounds %struct.sigevent, %struct.sigevent* %8, i32 0, i32 2
  store i32 %155, i32* %156, align 8
  %157 = load i32, i32* %10, align 4
  %158 = getelementptr inbounds %struct.sigevent, %struct.sigevent* %8, i32 0, i32 0
  store i32 %157, i32* %158, align 8
  %159 = getelementptr inbounds %struct.sigevent, %struct.sigevent* %8, i32 0, i32 1
  %160 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %159, i32 0, i32 0
  store i64 0, i64* %160, align 8
  %161 = load i32, i32* @CLOCK_REALTIME, align 4
  %162 = call i32 @timer_create(i32 %161, %struct.sigevent* %8, i32* %6)
  %163 = icmp eq i32 %162, -1
  br i1 %163, label %164, label %167

164:                                              ; preds = %148
  %165 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.17, i64 0, i64 0))
  %166 = call i32 (...) @ksft_exit_fail()
  store i32 %166, i32* %3, align 4
  br label %296

167:                                              ; preds = %148
  %168 = load i32, i32* @next_leap, align 4
  %169 = getelementptr inbounds %struct.itimerspec, %struct.itimerspec* %7, i32 0, i32 1
  %170 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %169, i32 0, i32 0
  store i32 %168, i32* %170, align 8
  %171 = getelementptr inbounds %struct.itimerspec, %struct.itimerspec* %7, i32 0, i32 1
  %172 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %171, i32 0, i32 1
  store i64 0, i64* %172, align 8
  %173 = getelementptr inbounds %struct.itimerspec, %struct.itimerspec* %7, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %173, i32 0, i32 1
  store i64 0, i64* %174, align 8
  %175 = getelementptr inbounds %struct.itimerspec, %struct.itimerspec* %7, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %175, i32 0, i32 0
  store i64 0, i64* %176, align 8
  %177 = load i32, i32* %6, align 4
  %178 = load i32, i32* @TIMER_ABSTIME, align 4
  %179 = call i32 @timer_settime(i32 %177, i32 %178, %struct.itimerspec* %7, i32* null)
  %180 = load i32, i32* @next_leap, align 4
  %181 = sub nsw i32 %180, 3
  %182 = getelementptr inbounds %struct.timespec, %struct.timespec* %18, i32 0, i32 0
  store i32 %181, i32* %182, align 4
  %183 = getelementptr inbounds %struct.timespec, %struct.timespec* %18, i32 0, i32 1
  store i32 0, i32* %183, align 4
  br label %184

184:                                              ; preds = %189, %167
  %185 = load i32, i32* @CLOCK_REALTIME, align 4
  %186 = load i32, i32* @TIMER_ABSTIME, align 4
  %187 = call i64 @clock_nanosleep(i32 %185, i32 %186, %struct.timespec* %18, i32* null)
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %191

189:                                              ; preds = %184
  %190 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.18, i64 0, i64 0))
  br label %184

191:                                              ; preds = %184
  %192 = getelementptr inbounds %struct.timex, %struct.timex* %19, i32 0, i32 3
  store i8* null, i8** %192, align 8
  %193 = call i32 @adjtimex(%struct.timex* %19)
  store i32 %193, i32* %17, align 4
  %194 = getelementptr inbounds %struct.timex, %struct.timex* %19, i32 0, i32 0
  %195 = load i64, i64* %194, align 8
  %196 = load i64, i64* @STA_INS, align 8
  %197 = icmp ne i64 %195, %196
  br i1 %197, label %198, label %217

198:                                              ; preds = %191
  %199 = getelementptr inbounds %struct.timex, %struct.timex* %19, i32 0, i32 0
  %200 = load i64, i64* %199, align 8
  %201 = load i64, i64* @STA_DEL, align 8
  %202 = icmp ne i64 %200, %201
  br i1 %202, label %203, label %217

203:                                              ; preds = %198
  %204 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.19, i64 0, i64 0))
  %205 = load i8*, i8** @ADJ_STATUS, align 8
  %206 = getelementptr inbounds %struct.timex, %struct.timex* %19, i32 0, i32 3
  store i8* %205, i8** %206, align 8
  %207 = load i32, i32* %13, align 4
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %212

209:                                              ; preds = %203
  %210 = load i64, i64* @STA_INS, align 8
  %211 = getelementptr inbounds %struct.timex, %struct.timex* %19, i32 0, i32 0
  store i64 %210, i64* %211, align 8
  br label %215

212:                                              ; preds = %203
  %213 = load i64, i64* @STA_DEL, align 8
  %214 = getelementptr inbounds %struct.timex, %struct.timex* %19, i32 0, i32 0
  store i64 %213, i64* %214, align 8
  br label %215

215:                                              ; preds = %212, %209
  %216 = call i32 @adjtimex(%struct.timex* %19)
  store i32 %216, i32* %17, align 4
  br label %217

217:                                              ; preds = %215, %198, %191
  %218 = getelementptr inbounds %struct.timex, %struct.timex* %19, i32 0, i32 1
  %219 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 8
  store i32 %220, i32* %20, align 4
  br label %221

221:                                              ; preds = %260, %217
  %222 = load i32, i32* %20, align 4
  %223 = load i32, i32* @next_leap, align 4
  %224 = add nsw i32 %223, 2
  %225 = icmp slt i32 %222, %224
  br i1 %225, label %226, label %270

226:                                              ; preds = %221
  %227 = getelementptr inbounds %struct.timex, %struct.timex* %19, i32 0, i32 3
  store i8* null, i8** %227, align 8
  %228 = call i32 @adjtimex(%struct.timex* %19)
  store i32 %228, i32* %24, align 4
  %229 = load i32, i32* %12, align 4
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %241

231:                                              ; preds = %226
  %232 = load i32, i32* @CLOCK_TAI, align 4
  %233 = call i64 @clock_gettime(i32 %232, %struct.timespec* %23)
  %234 = getelementptr inbounds %struct.timespec, %struct.timespec* %23, i32 0, i32 0
  %235 = load i32, i32* %234, align 4
  %236 = getelementptr inbounds %struct.timespec, %struct.timespec* %23, i32 0, i32 1
  %237 = load i32, i32* %236, align 4
  %238 = load i32, i32* %24, align 4
  %239 = call i8* @time_state_str(i32 %238)
  %240 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.20, i64 0, i64 0), i32 %235, i32 %237, i8* %239)
  br label %260

241:                                              ; preds = %226
  %242 = getelementptr inbounds %struct.timex, %struct.timex* %19, i32 0, i32 1
  %243 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %242, i32 0, i32 0
  %244 = getelementptr inbounds [26 x i8], [26 x i8]* %22, i64 0, i64 0
  %245 = call i32 @ctime_r(i32* %243, i8* %244)
  %246 = getelementptr inbounds [26 x i8], [26 x i8]* %22, i64 0, i64 0
  %247 = call i32 @strlen(i8* %246)
  %248 = sub nsw i32 %247, 1
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds [26 x i8], [26 x i8]* %22, i64 0, i64 %249
  store i8 0, i8* %250, align 1
  %251 = getelementptr inbounds [26 x i8], [26 x i8]* %22, i64 0, i64 0
  %252 = getelementptr inbounds %struct.timex, %struct.timex* %19, i32 0, i32 1
  %253 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %252, i32 0, i32 1
  %254 = load i32, i32* %253, align 4
  %255 = getelementptr inbounds %struct.timex, %struct.timex* %19, i32 0, i32 2
  %256 = load i32, i32* %255, align 8
  %257 = load i32, i32* %24, align 4
  %258 = call i8* @time_state_str(i32 %257)
  %259 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.21, i64 0, i64 0), i8* %251, i32 %254, i32 %256, i8* %258)
  br label %260

260:                                              ; preds = %241, %231
  %261 = getelementptr inbounds %struct.timex, %struct.timex* %19, i32 0, i32 1
  %262 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 8
  store i32 %263, i32* %20, align 4
  %264 = getelementptr inbounds %struct.timespec, %struct.timespec* %18, i32 0, i32 0
  store i32 0, i32* %264, align 4
  %265 = load i32, i32* @NSEC_PER_SEC, align 4
  %266 = sdiv i32 %265, 2
  %267 = getelementptr inbounds %struct.timespec, %struct.timespec* %18, i32 0, i32 1
  store i32 %266, i32* %267, align 4
  %268 = load i32, i32* @CLOCK_MONOTONIC, align 4
  %269 = call i64 @clock_nanosleep(i32 %268, i32 0, %struct.timespec* %18, i32* null)
  br label %221

270:                                              ; preds = %221
  %271 = load i32, i32* %13, align 4
  %272 = icmp ne i32 %271, 0
  %273 = xor i1 %272, true
  %274 = zext i1 %273 to i32
  store i32 %274, i32* %13, align 4
  %275 = call i32 (...) @test_hrtimer_failure()
  %276 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.22, i64 0, i64 0))
  %277 = load i64, i64* @error_found, align 8
  %278 = icmp ne i64 %277, 0
  br i1 %278, label %279, label %283

279:                                              ; preds = %270
  %280 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.23, i64 0, i64 0))
  %281 = call i32 (...) @clear_time_state()
  %282 = call i32 (...) @ksft_exit_fail()
  store i32 %282, i32* %3, align 4
  br label %296

283:                                              ; preds = %270
  %284 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0))
  %285 = load i32, i32* %14, align 4
  %286 = icmp ne i32 %285, -1
  br i1 %286, label %287, label %292

287:                                              ; preds = %283
  %288 = load i32, i32* %14, align 4
  %289 = add nsw i32 %288, -1
  store i32 %289, i32* %14, align 4
  %290 = icmp ne i32 %289, 0
  br i1 %290, label %292, label %291

291:                                              ; preds = %287
  br label %293

292:                                              ; preds = %287, %283
  br label %84

293:                                              ; preds = %291
  %294 = call i32 (...) @clear_time_state()
  %295 = call i32 (...) @ksft_exit_pass()
  store i32 %295, i32* %3, align 4
  br label %296

296:                                              ; preds = %293, %279, %164, %138, %121
  %297 = load i32, i32* %3, align 4
  ret i32 %297
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @atoi(i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i64 @clock_gettime(i32, %struct.timespec*) #1

declare dso_local i32 @ksft_exit_fail(...) #1

declare dso_local i32 @signal(i32, i32) #1

declare dso_local i32 @sigfillset(i32*) #1

declare dso_local i32 @sigaction(i32, %struct.sigaction*, i32*) #1

declare dso_local i32 @settimeofday(%struct.timeval*, i32*) #1

declare dso_local i8* @ctime(i32*) #1

declare dso_local i32 @clear_time_state(...) #1

declare dso_local i32 @adjtimex(%struct.timex*) #1

declare dso_local i8* @time_state_str(i32) #1

declare dso_local i32 @memset(%struct.sigevent*, i32, i32) #1

declare dso_local i32 @timer_create(i32, %struct.sigevent*, i32*) #1

declare dso_local i32 @timer_settime(i32, i32, %struct.itimerspec*, i32*) #1

declare dso_local i64 @clock_nanosleep(i32, i32, %struct.timespec*, i32*) #1

declare dso_local i32 @ctime_r(i32*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @test_hrtimer_failure(...) #1

declare dso_local i32 @ksft_exit_pass(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
