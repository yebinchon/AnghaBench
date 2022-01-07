; ModuleID = '/home/carl/AnghaBench/openpilot/selfdrive/common/extr_swaglog.c_cloudlog_init.c'
source_filename = "/home/carl/AnghaBench/openpilot/selfdrive/common/extr_swaglog.c_cloudlog_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i8*, i32, i32 }

@s = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@ZMQ_PUSH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"ipc:///tmp/logmessage\00", align 1
@CLOUDLOG_WARNING = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"LOGPRINT\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@CLOUDLOG_DEBUG = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [5 x i8] c"info\00", align 1
@CLOUDLOG_INFO = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [8 x i8] c"warning\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"DONGLE_ID\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"dongle_id\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@COMMA_VERSION = common dso_local global i8* null, align 8
@.str.8 = private unnamed_addr constant [6 x i8] c"CLEAN\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"dirty\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @cloudlog_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cloudlog_init() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s, i32 0, i32 0), align 8
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %0
  br label %58

7:                                                ; preds = %0
  %8 = call i32 (...) @json_mkobject()
  store i32 %8, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s, i32 0, i32 1), align 4
  %9 = call i32 (...) @zmq_ctx_new()
  store i32 %9, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s, i32 0, i32 4), align 4
  %10 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s, i32 0, i32 4), align 4
  %11 = load i32, i32* @ZMQ_PUSH, align 4
  %12 = call i32 @zmq_socket(i32 %10, i32 %11)
  store i32 %12, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s, i32 0, i32 3), align 8
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s, i32 0, i32 3), align 8
  %14 = call i32 @zmq_connect(i32 %13, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %15 = load i8*, i8** @CLOUDLOG_WARNING, align 8
  store i8* %15, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s, i32 0, i32 2), align 8
  %16 = call i8* @getenv(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  store i8* %16, i8** %1, align 8
  %17 = load i8*, i8** %1, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %40

19:                                               ; preds = %7
  %20 = load i8*, i8** %1, align 8
  %21 = call i64 @strcmp(i8* %20, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = load i8*, i8** @CLOUDLOG_DEBUG, align 8
  store i8* %24, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s, i32 0, i32 2), align 8
  br label %39

25:                                               ; preds = %19
  %26 = load i8*, i8** %1, align 8
  %27 = call i64 @strcmp(i8* %26, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %25
  %30 = load i8*, i8** @CLOUDLOG_INFO, align 8
  store i8* %30, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s, i32 0, i32 2), align 8
  br label %38

31:                                               ; preds = %25
  %32 = load i8*, i8** %1, align 8
  %33 = call i64 @strcmp(i8* %32, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %31
  %36 = load i8*, i8** @CLOUDLOG_WARNING, align 8
  store i8* %36, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s, i32 0, i32 2), align 8
  br label %37

37:                                               ; preds = %35, %31
  br label %38

38:                                               ; preds = %37, %29
  br label %39

39:                                               ; preds = %38, %23
  br label %40

40:                                               ; preds = %39, %7
  %41 = call i8* @getenv(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  store i8* %41, i8** %2, align 8
  %42 = load i8*, i8** %2, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %44, label %47

44:                                               ; preds = %40
  %45 = load i8*, i8** %2, align 8
  %46 = call i32 @cloudlog_bind_locked(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i8* %45)
  br label %47

47:                                               ; preds = %44, %40
  %48 = load i8*, i8** @COMMA_VERSION, align 8
  %49 = call i32 @cloudlog_bind_locked(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i8* %48)
  %50 = call i8* @getenv(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0))
  %51 = icmp ne i8* %50, null
  %52 = xor i1 %51, true
  %53 = zext i1 %52 to i32
  store i32 %53, i32* %3, align 4
  %54 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s, i32 0, i32 1), align 4
  %55 = load i32, i32* %3, align 4
  %56 = call i32 @json_mkbool(i32 %55)
  %57 = call i32 @json_append_member(i32 %54, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %56)
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s, i32 0, i32 0), align 8
  br label %58

58:                                               ; preds = %47, %6
  ret void
}

declare dso_local i32 @json_mkobject(...) #1

declare dso_local i32 @zmq_ctx_new(...) #1

declare dso_local i32 @zmq_socket(i32, i32) #1

declare dso_local i32 @zmq_connect(i32, i8*) #1

declare dso_local i8* @getenv(i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @cloudlog_bind_locked(i8*, i8*) #1

declare dso_local i32 @json_append_member(i32, i8*, i32) #1

declare dso_local i32 @json_mkbool(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
