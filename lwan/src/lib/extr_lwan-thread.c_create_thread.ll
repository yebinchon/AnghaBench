; ModuleID = '/home/carl/AnghaBench/lwan/src/lib/extr_lwan-thread.c_create_thread.c'
source_filename = "/home/carl/AnghaBench/lwan/src/lib/extr_lwan-thread.c_create_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lwan = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.lwan_thread = type { i32*, i32, %struct.lwan*, i32, i32, i32 }
%struct.epoll_event = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32* }

@.str = private unnamed_addr constant [29 x i8] c"Could not create timer wheel\00", align 1
@EPOLL_CLOEXEC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"epoll_create\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"pthread_attr_init\00", align 1
@PTHREAD_SCOPE_SYSTEM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"pthread_attr_setscope\00", align 1
@PTHREAD_CREATE_JOINABLE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [28 x i8] c"pthread_attr_setdetachstate\00", align 1
@O_NONBLOCK = common dso_local global i32 0, align 4
@O_CLOEXEC = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [5 x i8] c"pipe\00", align 1
@EPOLLIN = common dso_local global i32 0, align 4
@EPOLL_CTL_ADD = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [10 x i8] c"epoll_ctl\00", align 1
@thread_io_loop = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [15 x i8] c"pthread_create\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"pthread_attr_destroy\00", align 1
@.str.9 = private unnamed_addr constant [57 x i8] c"Could not initialize pending fd queue width %zu elements\00", align 1
@EFD_CLOEXEC = common dso_local global i32 0, align 4
@EFD_NONBLOCK = common dso_local global i32 0, align 4
@EFD_SEMAPHORE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lwan*, %struct.lwan_thread*)* @create_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @create_thread(%struct.lwan* %0, %struct.lwan_thread* %1) #0 {
  %3 = alloca %struct.lwan*, align 8
  %4 = alloca %struct.lwan_thread*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.epoll_event, align 8
  %8 = alloca i64, align 8
  store %struct.lwan* %0, %struct.lwan** %3, align 8
  store %struct.lwan_thread* %1, %struct.lwan_thread** %4, align 8
  %9 = load %struct.lwan_thread*, %struct.lwan_thread** %4, align 8
  %10 = call i32 @memset(%struct.lwan_thread* %9, i32 0, i32 40)
  %11 = load %struct.lwan*, %struct.lwan** %3, align 8
  %12 = load %struct.lwan_thread*, %struct.lwan_thread** %4, align 8
  %13 = getelementptr inbounds %struct.lwan_thread, %struct.lwan_thread* %12, i32 0, i32 2
  store %struct.lwan* %11, %struct.lwan** %13, align 8
  %14 = call i32 @timeouts_open(i32* %5)
  %15 = load %struct.lwan_thread*, %struct.lwan_thread** %4, align 8
  %16 = getelementptr inbounds %struct.lwan_thread, %struct.lwan_thread* %15, i32 0, i32 5
  store i32 %14, i32* %16, align 8
  %17 = load %struct.lwan_thread*, %struct.lwan_thread** %4, align 8
  %18 = getelementptr inbounds %struct.lwan_thread, %struct.lwan_thread* %17, i32 0, i32 5
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %2
  %22 = call i32 (i8*, ...) @lwan_status_critical(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %23

23:                                               ; preds = %21, %2
  %24 = load i32, i32* @EPOLL_CLOEXEC, align 4
  %25 = call i32 @epoll_create1(i32 %24)
  %26 = load %struct.lwan_thread*, %struct.lwan_thread** %4, align 8
  %27 = getelementptr inbounds %struct.lwan_thread, %struct.lwan_thread* %26, i32 0, i32 4
  store i32 %25, i32* %27, align 4
  %28 = icmp slt i32 %25, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  %30 = call i32 @lwan_status_critical_perror(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  br label %31

31:                                               ; preds = %29, %23
  %32 = call i64 @pthread_attr_init(i32* %6)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %31
  %35 = call i32 @lwan_status_critical_perror(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  br label %36

36:                                               ; preds = %34, %31
  %37 = load i32, i32* @PTHREAD_SCOPE_SYSTEM, align 4
  %38 = call i64 @pthread_attr_setscope(i32* %6, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %36
  %41 = call i32 @lwan_status_critical_perror(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  br label %42

42:                                               ; preds = %40, %36
  %43 = load i32, i32* @PTHREAD_CREATE_JOINABLE, align 4
  %44 = call i64 @pthread_attr_setdetachstate(i32* %6, i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %42
  %47 = call i32 @lwan_status_critical_perror(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  br label %48

48:                                               ; preds = %46, %42
  %49 = load %struct.lwan_thread*, %struct.lwan_thread** %4, align 8
  %50 = getelementptr inbounds %struct.lwan_thread, %struct.lwan_thread* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* @O_NONBLOCK, align 4
  %53 = load i32, i32* @O_CLOEXEC, align 4
  %54 = or i32 %52, %53
  %55 = call i64 @pipe2(i32* %51, i32 %54)
  %56 = icmp slt i64 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %48
  %58 = call i32 @lwan_status_critical_perror(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  br label %59

59:                                               ; preds = %57, %48
  %60 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %7, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  store i32* null, i32** %61, align 8
  %62 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %7, i32 0, i32 1
  %63 = load i32, i32* @EPOLLIN, align 4
  store i32 %63, i32* %62, align 8
  %64 = load %struct.lwan_thread*, %struct.lwan_thread** %4, align 8
  %65 = getelementptr inbounds %struct.lwan_thread, %struct.lwan_thread* %64, i32 0, i32 4
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @EPOLL_CTL_ADD, align 4
  %68 = load %struct.lwan_thread*, %struct.lwan_thread** %4, align 8
  %69 = getelementptr inbounds %struct.lwan_thread, %struct.lwan_thread* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 0
  %72 = load i32, i32* %71, align 4
  %73 = call i64 @epoll_ctl(i32 %66, i32 %67, i32 %72, %struct.epoll_event* %7)
  %74 = icmp slt i64 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %59
  %76 = call i32 @lwan_status_critical_perror(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  br label %77

77:                                               ; preds = %75, %59
  %78 = load %struct.lwan_thread*, %struct.lwan_thread** %4, align 8
  %79 = getelementptr inbounds %struct.lwan_thread, %struct.lwan_thread* %78, i32 0, i32 3
  %80 = load i32, i32* @thread_io_loop, align 4
  %81 = load %struct.lwan_thread*, %struct.lwan_thread** %4, align 8
  %82 = call i64 @pthread_create(i32* %79, i32* %6, i32 %80, %struct.lwan_thread* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %77
  %85 = call i32 @lwan_status_critical_perror(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0))
  br label %86

86:                                               ; preds = %84, %77
  %87 = call i64 @pthread_attr_destroy(i32* %6)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %86
  %90 = call i32 @lwan_status_critical_perror(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0))
  br label %91

91:                                               ; preds = %89, %86
  %92 = load %struct.lwan_thread*, %struct.lwan_thread** %4, align 8
  %93 = getelementptr inbounds %struct.lwan_thread, %struct.lwan_thread* %92, i32 0, i32 2
  %94 = load %struct.lwan*, %struct.lwan** %93, align 8
  %95 = getelementptr inbounds %struct.lwan, %struct.lwan* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  store i64 %97, i64* %8, align 8
  %98 = load %struct.lwan_thread*, %struct.lwan_thread** %4, align 8
  %99 = getelementptr inbounds %struct.lwan_thread, %struct.lwan_thread* %98, i32 0, i32 1
  %100 = load i64, i64* %8, align 8
  %101 = call i64 @spsc_queue_init(i32* %99, i64 %100)
  %102 = icmp slt i64 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %91
  %104 = load i64, i64* %8, align 8
  %105 = call i32 (i8*, ...) @lwan_status_critical(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.9, i64 0, i64 0), i64 %104)
  br label %106

106:                                              ; preds = %103, %91
  ret void
}

declare dso_local i32 @memset(%struct.lwan_thread*, i32, i32) #1

declare dso_local i32 @timeouts_open(i32*) #1

declare dso_local i32 @lwan_status_critical(i8*, ...) #1

declare dso_local i32 @epoll_create1(i32) #1

declare dso_local i32 @lwan_status_critical_perror(i8*) #1

declare dso_local i64 @pthread_attr_init(i32*) #1

declare dso_local i64 @pthread_attr_setscope(i32*, i32) #1

declare dso_local i64 @pthread_attr_setdetachstate(i32*, i32) #1

declare dso_local i64 @pipe2(i32*, i32) #1

declare dso_local i64 @epoll_ctl(i32, i32, i32, %struct.epoll_event*) #1

declare !callback !2 dso_local i64 @pthread_create(i32*, i32*, i32, %struct.lwan_thread*) #1

declare dso_local i64 @pthread_attr_destroy(i32*) #1

declare dso_local i64 @spsc_queue_init(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{!3}
!3 = !{i64 2, i64 3, i1 false}
