; ModuleID = '/home/carl/AnghaBench/php-src/sapi/fpm/fpm/extr_fpm_events.c_fpm_got_signal.c'
source_filename = "/home/carl/AnghaBench/php-src/sapi/fpm/fpm/extr_fpm_events.c_fpm_got_signal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.fpm_event_s = type { i32 }

@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i64 0, align 8
@EWOULDBLOCK = common dso_local global i64 0, align 8
@ZLOG_SYSERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"unable to read from the signal pipe\00", align 1
@ZLOG_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"received SIGCHLD\00", align 1
@children_bury_timer = common dso_local global i32 0, align 4
@fpm_postponed_children_bury = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"received SIGINT\00", align 1
@ZLOG_NOTICE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [16 x i8] c"Terminating ...\00", align 1
@FPM_PCTL_STATE_TERMINATING = common dso_local global i32 0, align 4
@FPM_PCTL_ACTION_SET = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [17 x i8] c"received SIGTERM\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"received SIGQUIT\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"Finishing ...\00", align 1
@FPM_PCTL_STATE_FINISHING = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [17 x i8] c"received SIGUSR1\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"error log file re-opened\00", align 1
@ZLOG_ERROR = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [35 x i8] c"unable to re-opened error log file\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"access log file re-opened\00", align 1
@.str.11 = private unnamed_addr constant [36 x i8] c"unable to re-opened access log file\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"received SIGUSR2\00", align 1
@.str.13 = private unnamed_addr constant [26 x i8] c"Reloading in progress ...\00", align 1
@FPM_PCTL_STATE_RELOADING = common dso_local global i32 0, align 4
@fpm_globals = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fpm_event_s*, i16, i8*)* @fpm_got_signal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fpm_got_signal(%struct.fpm_event_s* %0, i16 signext %1, i8* %2) #0 {
  %4 = alloca %struct.fpm_event_s*, align 8
  %5 = alloca i16, align 2
  %6 = alloca i8*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.fpm_event_s* %0, %struct.fpm_event_s** %4, align 8
  store i16 %1, i16* %5, align 2
  store i8* %2, i8** %6, align 8
  %11 = load %struct.fpm_event_s*, %struct.fpm_event_s** %4, align 8
  %12 = getelementptr inbounds %struct.fpm_event_s, %struct.fpm_event_s* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %10, align 4
  br label %14

14:                                               ; preds = %116, %3
  br label %15

15:                                               ; preds = %25, %14
  %16 = load i32, i32* %10, align 4
  %17 = call i32 @read(i32 %16, i8* %7, i32 1)
  store i32 %17, i32* %8, align 4
  br label %18

18:                                               ; preds = %15
  %19 = load i32, i32* %8, align 4
  %20 = icmp eq i32 %19, -1
  br i1 %20, label %21, label %25

21:                                               ; preds = %18
  %22 = load i64, i64* @errno, align 8
  %23 = load i64, i64* @EINTR, align 8
  %24 = icmp eq i64 %22, %23
  br label %25

25:                                               ; preds = %21, %18
  %26 = phi i1 [ false, %18 ], [ %24, %21 ]
  br i1 %26, label %15, label %27

27:                                               ; preds = %25
  %28 = load i32, i32* %8, align 4
  %29 = icmp sle i32 %28, 0
  br i1 %29, label %30, label %45

30:                                               ; preds = %27
  %31 = load i32, i32* %8, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %44

33:                                               ; preds = %30
  %34 = load i64, i64* @errno, align 8
  %35 = load i64, i64* @EAGAIN, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %44

37:                                               ; preds = %33
  %38 = load i64, i64* @errno, align 8
  %39 = load i64, i64* @EWOULDBLOCK, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %37
  %42 = load i32, i32* @ZLOG_SYSERROR, align 4
  %43 = call i32 @zlog(i32 %42, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %44

44:                                               ; preds = %41, %37, %33, %30
  br label %118

45:                                               ; preds = %27
  %46 = load i8, i8* %7, align 1
  %47 = sext i8 %46 to i32
  switch i32 %47, label %111 [
    i32 67, label %48
    i32 73, label %53
    i32 84, label %61
    i32 81, label %69
    i32 49, label %77
    i32 50, label %103
  ]

48:                                               ; preds = %45
  %49 = load i32, i32* @ZLOG_DEBUG, align 4
  %50 = call i32 @zlog(i32 %49, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %51 = call i32 @fpm_event_set_timer(i32* @children_bury_timer, i32 0, i32* @fpm_postponed_children_bury, i32* null)
  %52 = call i32 @fpm_event_add(i32* @children_bury_timer, i32 0)
  br label %111

53:                                               ; preds = %45
  %54 = load i32, i32* @ZLOG_DEBUG, align 4
  %55 = call i32 @zlog(i32 %54, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %56 = load i32, i32* @ZLOG_NOTICE, align 4
  %57 = call i32 @zlog(i32 %56, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  %58 = load i32, i32* @FPM_PCTL_STATE_TERMINATING, align 4
  %59 = load i32, i32* @FPM_PCTL_ACTION_SET, align 4
  %60 = call i32 @fpm_pctl(i32 %58, i32 %59)
  br label %111

61:                                               ; preds = %45
  %62 = load i32, i32* @ZLOG_DEBUG, align 4
  %63 = call i32 @zlog(i32 %62, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  %64 = load i32, i32* @ZLOG_NOTICE, align 4
  %65 = call i32 @zlog(i32 %64, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  %66 = load i32, i32* @FPM_PCTL_STATE_TERMINATING, align 4
  %67 = load i32, i32* @FPM_PCTL_ACTION_SET, align 4
  %68 = call i32 @fpm_pctl(i32 %66, i32 %67)
  br label %111

69:                                               ; preds = %45
  %70 = load i32, i32* @ZLOG_DEBUG, align 4
  %71 = call i32 @zlog(i32 %70, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0))
  %72 = load i32, i32* @ZLOG_NOTICE, align 4
  %73 = call i32 @zlog(i32 %72, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  %74 = load i32, i32* @FPM_PCTL_STATE_FINISHING, align 4
  %75 = load i32, i32* @FPM_PCTL_ACTION_SET, align 4
  %76 = call i32 @fpm_pctl(i32 %74, i32 %75)
  br label %111

77:                                               ; preds = %45
  %78 = load i32, i32* @ZLOG_DEBUG, align 4
  %79 = call i32 @zlog(i32 %78, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0))
  %80 = call i32 @fpm_stdio_open_error_log(i32 1)
  %81 = icmp eq i32 0, %80
  br i1 %81, label %82, label %85

82:                                               ; preds = %77
  %83 = load i32, i32* @ZLOG_NOTICE, align 4
  %84 = call i32 @zlog(i32 %83, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0))
  br label %88

85:                                               ; preds = %77
  %86 = load i32, i32* @ZLOG_ERROR, align 4
  %87 = call i32 @zlog(i32 %86, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.9, i64 0, i64 0))
  br label %88

88:                                               ; preds = %85, %82
  %89 = call i32 @fpm_log_open(i32 1)
  store i32 %89, i32* %9, align 4
  %90 = load i32, i32* %9, align 4
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %88
  %93 = load i32, i32* @ZLOG_NOTICE, align 4
  %94 = call i32 @zlog(i32 %93, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0))
  br label %102

95:                                               ; preds = %88
  %96 = load i32, i32* %9, align 4
  %97 = icmp eq i32 %96, -1
  br i1 %97, label %98, label %101

98:                                               ; preds = %95
  %99 = load i32, i32* @ZLOG_ERROR, align 4
  %100 = call i32 @zlog(i32 %99, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11, i64 0, i64 0))
  br label %101

101:                                              ; preds = %98, %95
  br label %102

102:                                              ; preds = %101, %92
  br label %111

103:                                              ; preds = %45
  %104 = load i32, i32* @ZLOG_DEBUG, align 4
  %105 = call i32 @zlog(i32 %104, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i64 0, i64 0))
  %106 = load i32, i32* @ZLOG_NOTICE, align 4
  %107 = call i32 @zlog(i32 %106, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.13, i64 0, i64 0))
  %108 = load i32, i32* @FPM_PCTL_STATE_RELOADING, align 4
  %109 = load i32, i32* @FPM_PCTL_ACTION_SET, align 4
  %110 = call i32 @fpm_pctl(i32 %108, i32 %109)
  br label %111

111:                                              ; preds = %45, %103, %102, %69, %61, %53, %48
  %112 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @fpm_globals, i32 0, i32 0), align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %111
  br label %117

115:                                              ; preds = %111
  br label %116

116:                                              ; preds = %115
  br i1 true, label %14, label %117

117:                                              ; preds = %116, %114
  br label %118

118:                                              ; preds = %117, %44
  ret void
}

declare dso_local i32 @read(i32, i8*, i32) #1

declare dso_local i32 @zlog(i32, i8*) #1

declare dso_local i32 @fpm_event_set_timer(i32*, i32, i32*, i32*) #1

declare dso_local i32 @fpm_event_add(i32*, i32) #1

declare dso_local i32 @fpm_pctl(i32, i32) #1

declare dso_local i32 @fpm_stdio_open_error_log(i32) #1

declare dso_local i32 @fpm_log_open(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
