; ModuleID = '/home/carl/AnghaBench/netdata/libnetdata/threads/extr_threads.c_thread_start.c'
source_filename = "/home/carl/AnghaBench/netdata/libnetdata/threads/extr_threads.c_thread_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i8* (i32)* }

@netdata_thread = common dso_local global %struct.TYPE_3__* null, align 8
@NETDATA_THREAD_OPTION_DONT_LOG_STARTUP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"thread created with task id %d\00", align 1
@PTHREAD_CANCEL_DEFERRED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"cannot set pthread cancel type to DEFERRED.\00", align 1
@PTHREAD_CANCEL_ENABLE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"cannot set pthread cancel state to ENABLE.\00", align 1
@thread_cleanup = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @thread_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @thread_start(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %5, %struct.TYPE_3__** @netdata_thread, align 8
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** @netdata_thread, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @NETDATA_THREAD_OPTION_DONT_LOG_STARTUP, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = call i32 (...) @gettid()
  %14 = call i32 @info(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %13)
  br label %15

15:                                               ; preds = %12, %1
  %16 = load i32, i32* @PTHREAD_CANCEL_DEFERRED, align 4
  %17 = call i64 @pthread_setcanceltype(i32 %16, i32* null)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = call i32 @error(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  br label %21

21:                                               ; preds = %19, %15
  %22 = load i32, i32* @PTHREAD_CANCEL_ENABLE, align 4
  %23 = call i64 @pthread_setcancelstate(i32 %22, i32* null)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = call i32 @error(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0))
  br label %27

27:                                               ; preds = %25, %21
  %28 = load i8*, i8** %2, align 8
  %29 = call i32 @thread_set_name(i8* %28)
  store i8* null, i8** %3, align 8
  %30 = load i32, i32* @thread_cleanup, align 4
  %31 = load i8*, i8** %2, align 8
  %32 = call i32 @pthread_cleanup_push(i32 %30, i8* %31)
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** @netdata_thread, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 2
  %35 = load i8* (i32)*, i8* (i32)** %34, align 8
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** @netdata_thread, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i8* %35(i32 %38)
  store i8* %39, i8** %3, align 8
  %40 = call i32 @pthread_cleanup_pop(i32 1)
  %41 = load i8*, i8** %3, align 8
  ret i8* %41
}

declare dso_local i32 @info(i8*, i32) #1

declare dso_local i32 @gettid(...) #1

declare dso_local i64 @pthread_setcanceltype(i32, i32*) #1

declare dso_local i32 @error(i8*) #1

declare dso_local i64 @pthread_setcancelstate(i32, i32*) #1

declare dso_local i32 @thread_set_name(i8*) #1

declare dso_local i32 @pthread_cleanup_push(i32, i8*) #1

declare dso_local i32 @pthread_cleanup_pop(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
