; ModuleID = '/home/carl/AnghaBench/nginx/src/event/modules/extr_ngx_epoll_module.c_ngx_epoll_add_connection.c'
source_filename = "/home/carl/AnghaBench/nginx/src/event/modules/extr_ngx_epoll_module.c_ngx_epoll_add_connection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__*, %struct.TYPE_7__*, i32, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i64, i32 }
%struct.epoll_event = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i8* }

@EPOLLIN = common dso_local global i32 0, align 4
@EPOLLOUT = common dso_local global i32 0, align 4
@EPOLLET = common dso_local global i32 0, align 4
@EPOLLRDHUP = common dso_local global i32 0, align 4
@NGX_LOG_DEBUG_EVENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"epoll add connection: fd:%d ev:%08XD\00", align 1
@ep = common dso_local global i32 0, align 4
@EPOLL_CTL_ADD = common dso_local global i32 0, align 4
@NGX_LOG_ALERT = common dso_local global i32 0, align 4
@ngx_errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"epoll_ctl(EPOLL_CTL_ADD, %d) failed\00", align 1
@NGX_ERROR = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*)* @ngx_epoll_add_connection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_epoll_add_connection(%struct.TYPE_9__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca %struct.epoll_event, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  %5 = load i32, i32* @EPOLLIN, align 4
  %6 = load i32, i32* @EPOLLOUT, align 4
  %7 = or i32 %5, %6
  %8 = load i32, i32* @EPOLLET, align 4
  %9 = or i32 %7, %8
  %10 = load i32, i32* @EPOLLRDHUP, align 4
  %11 = or i32 %9, %10
  %12 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %4, i32 0, i32 0
  store i32 %11, i32* %12, align 8
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %14 = ptrtoint %struct.TYPE_9__* %13 to i64
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = or i64 %14, %19
  %21 = inttoptr i64 %20 to i8*
  %22 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %4, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  store i8* %21, i8** %23, align 8
  %24 = load i32, i32* @NGX_LOG_DEBUG_EVENT, align 4
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %4, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @ngx_log_debug2(i32 %24, i32 %27, i32 0, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %30, i32 %32)
  %34 = load i32, i32* @ep, align 4
  %35 = load i32, i32* @EPOLL_CTL_ADD, align 4
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @epoll_ctl(i32 %34, i32 %35, i32 %38, %struct.epoll_event* %4)
  %40 = icmp eq i32 %39, -1
  br i1 %40, label %41, label %52

41:                                               ; preds = %1
  %42 = load i32, i32* @NGX_LOG_ALERT, align 4
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @ngx_errno, align 4
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @ngx_log_error(i32 %42, i32 %45, i32 %46, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %49)
  %51 = load i32, i32* @NGX_ERROR, align 4
  store i32 %51, i32* %2, align 4
  br label %62

52:                                               ; preds = %1
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 1
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 1
  store i32 1, i32* %56, align 8
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  store i32 1, i32* %60, align 4
  %61 = load i32, i32* @NGX_OK, align 4
  store i32 %61, i32* %2, align 4
  br label %62

62:                                               ; preds = %52, %41
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local i32 @ngx_log_debug2(i32, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @epoll_ctl(i32, i32, i32, %struct.epoll_event*) #1

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
