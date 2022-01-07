; ModuleID = '/home/carl/AnghaBench/lwan/src/lib/extr_lwan.c_lwan_main_loop.c'
source_filename = "/home/carl/AnghaBench/lwan/src/lib/extr_lwan.c_lwan_main_loop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lwan = type { i32, i32 }
%struct.epoll_event = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.lwan_fd_watch = type { i32 }

@main_socket = common dso_local global i32 0, align 4
@SIGINT = common dso_local global i32 0, align 4
@sigint_handler = common dso_local global i32 0, align 4
@SIG_ERR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"Could not set signal handler\00", align 1
@EPOLLIN = common dso_local global i32 0, align 4
@EPOLLHUP = common dso_local global i32 0, align 4
@EPOLLRDHUP = common dso_local global i32 0, align 4
@accept_connection_coro = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Could not watch main socket\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"Ready to serve\00", align 1
@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [11 x i8] c"epoll_wait\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lwan_main_loop(%struct.lwan* %0) #0 {
  %2 = alloca %struct.lwan*, align 8
  %3 = alloca [16 x %struct.epoll_event], align 16
  %4 = alloca %struct.lwan_fd_watch*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.lwan* %0, %struct.lwan** %2, align 8
  %7 = load i32, i32* @main_socket, align 4
  %8 = icmp eq i32 %7, -1
  %9 = zext i1 %8 to i32
  %10 = call i32 @assert(i32 %9)
  %11 = load %struct.lwan*, %struct.lwan** %2, align 8
  %12 = getelementptr inbounds %struct.lwan, %struct.lwan* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* @main_socket, align 4
  %14 = load i32, i32* @SIGINT, align 4
  %15 = load i32, i32* @sigint_handler, align 4
  %16 = call i64 @signal(i32 %14, i32 %15)
  %17 = load i64, i64* @SIG_ERR, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  %20 = call i32 @lwan_status_critical(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %21

21:                                               ; preds = %19, %1
  %22 = load %struct.lwan*, %struct.lwan** %2, align 8
  %23 = load %struct.lwan*, %struct.lwan** %2, align 8
  %24 = getelementptr inbounds %struct.lwan, %struct.lwan* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @EPOLLIN, align 4
  %27 = load i32, i32* @EPOLLHUP, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @EPOLLRDHUP, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @accept_connection_coro, align 4
  %32 = load %struct.lwan*, %struct.lwan** %2, align 8
  %33 = call %struct.lwan_fd_watch* @lwan_watch_fd(%struct.lwan* %22, i32 %25, i32 %30, i32 %31, %struct.lwan* %32)
  store %struct.lwan_fd_watch* %33, %struct.lwan_fd_watch** %4, align 8
  %34 = load %struct.lwan_fd_watch*, %struct.lwan_fd_watch** %4, align 8
  %35 = icmp ne %struct.lwan_fd_watch* %34, null
  br i1 %35, label %38, label %36

36:                                               ; preds = %21
  %37 = call i32 @lwan_status_critical(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %38

38:                                               ; preds = %36, %21
  %39 = call i32 @lwan_status_info(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  br label %40

40:                                               ; preds = %38, %65, %93
  %41 = load %struct.lwan*, %struct.lwan** %2, align 8
  %42 = getelementptr inbounds %struct.lwan, %struct.lwan* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = getelementptr inbounds [16 x %struct.epoll_event], [16 x %struct.epoll_event]* %3, i64 0, i64 0
  %45 = getelementptr inbounds [16 x %struct.epoll_event], [16 x %struct.epoll_event]* %3, i64 0, i64 0
  %46 = call i32 @N_ELEMENTS(%struct.epoll_event* %45)
  %47 = call i32 @epoll_wait(i32 %43, %struct.epoll_event* %44, i32 %46, i32 -1)
  store i32 %47, i32* %5, align 4
  %48 = load i32, i32* %5, align 4
  %49 = icmp slt i32 %48, 0
  %50 = zext i1 %49 to i32
  %51 = call i64 @UNLIKELY(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %68

53:                                               ; preds = %40
  %54 = load i32, i32* @main_socket, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %53
  br label %94

57:                                               ; preds = %53
  %58 = load i64, i64* @errno, align 8
  %59 = load i64, i64* @EINTR, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %65, label %61

61:                                               ; preds = %57
  %62 = load i64, i64* @errno, align 8
  %63 = load i64, i64* @EAGAIN, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %61, %57
  br label %40

66:                                               ; preds = %61
  %67 = call i32 @lwan_status_perror(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  br label %94

68:                                               ; preds = %40
  store i32 0, i32* %6, align 4
  br label %69

69:                                               ; preds = %90, %68
  %70 = load i32, i32* %6, align 4
  %71 = load i32, i32* %5, align 4
  %72 = icmp slt i32 %70, %71
  br i1 %72, label %73, label %93

73:                                               ; preds = %69
  %74 = load i32, i32* %6, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds [16 x %struct.epoll_event], [16 x %struct.epoll_event]* %3, i64 0, i64 %75
  %77 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* %6, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds [16 x %struct.epoll_event], [16 x %struct.epoll_event]* %3, i64 0, i64 %81
  %83 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 16
  %85 = trunc i64 %84 to i32
  %86 = call i32 @coro_resume_value(i32 %79, i32 %85)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %89, label %88

88:                                               ; preds = %73
  br label %93

89:                                               ; preds = %73
  br label %90

90:                                               ; preds = %89
  %91 = load i32, i32* %6, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %6, align 4
  br label %69

93:                                               ; preds = %88, %69
  br label %40

94:                                               ; preds = %66, %56
  %95 = load %struct.lwan*, %struct.lwan** %2, align 8
  %96 = load %struct.lwan_fd_watch*, %struct.lwan_fd_watch** %4, align 8
  %97 = call i32 @lwan_unwatch_fd(%struct.lwan* %95, %struct.lwan_fd_watch* %96)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @signal(i32, i32) #1

declare dso_local i32 @lwan_status_critical(i8*) #1

declare dso_local %struct.lwan_fd_watch* @lwan_watch_fd(%struct.lwan*, i32, i32, i32, %struct.lwan*) #1

declare dso_local i32 @lwan_status_info(i8*) #1

declare dso_local i32 @epoll_wait(i32, %struct.epoll_event*, i32, i32) #1

declare dso_local i32 @N_ELEMENTS(%struct.epoll_event*) #1

declare dso_local i64 @UNLIKELY(i32) #1

declare dso_local i32 @lwan_status_perror(i8*) #1

declare dso_local i32 @coro_resume_value(i32, i32) #1

declare dso_local i32 @lwan_unwatch_fd(%struct.lwan*, %struct.lwan_fd_watch*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
