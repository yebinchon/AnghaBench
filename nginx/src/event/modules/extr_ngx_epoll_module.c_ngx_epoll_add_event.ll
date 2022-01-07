; ModuleID = '/home/carl/AnghaBench/nginx/src/event/modules/extr_ngx_epoll_module.c_ngx_epoll_add_event.c'
source_filename = "/home/carl/AnghaBench/nginx/src/event/modules/extr_ngx_epoll_module.c_ngx_epoll_add_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i64, i32, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, %struct.TYPE_6__*, %struct.TYPE_6__* }
%struct.epoll_event = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i8* }

@NGX_READ_EVENT = common dso_local global i64 0, align 8
@EPOLLOUT = common dso_local global i32 0, align 4
@EPOLLIN = common dso_local global i32 0, align 4
@EPOLLRDHUP = common dso_local global i32 0, align 4
@EPOLL_CTL_MOD = common dso_local global i32 0, align 4
@EPOLL_CTL_ADD = common dso_local global i32 0, align 4
@NGX_LOG_DEBUG_EVENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"epoll add event: fd:%d op:%d ev:%08XD\00", align 1
@ep = common dso_local global i32 0, align 4
@NGX_LOG_ALERT = common dso_local global i32 0, align 4
@ngx_errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"epoll_ctl(%d, %d) failed\00", align 1
@NGX_ERROR = common dso_local global i64 0, align 8
@NGX_OK = common dso_local global i64 0, align 8
@NGX_EXCLUSIVE_EVENT = common dso_local global i32 0, align 4
@NGX_ONESHOT_EVENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_6__*, i64, i32)* @ngx_epoll_add_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ngx_epoll_add_event(%struct.TYPE_6__* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_6__*, align 8
  %12 = alloca %struct.TYPE_7__*, align 8
  %13 = alloca %struct.epoll_event, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 4
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  store %struct.TYPE_7__* %16, %struct.TYPE_7__** %12, align 8
  %17 = load i64, i64* %6, align 8
  %18 = trunc i64 %17 to i32
  store i32 %18, i32* %9, align 4
  %19 = load i64, i64* %6, align 8
  %20 = load i64, i64* @NGX_READ_EVENT, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %27

22:                                               ; preds = %3
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 2
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  store %struct.TYPE_6__* %25, %struct.TYPE_6__** %11, align 8
  %26 = load i32, i32* @EPOLLOUT, align 4
  store i32 %26, i32* %10, align 4
  br label %34

27:                                               ; preds = %3
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  store %struct.TYPE_6__* %30, %struct.TYPE_6__** %11, align 8
  %31 = load i32, i32* @EPOLLIN, align 4
  %32 = load i32, i32* @EPOLLRDHUP, align 4
  %33 = or i32 %31, %32
  store i32 %33, i32* %10, align 4
  br label %34

34:                                               ; preds = %27, %22
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %34
  %40 = load i32, i32* @EPOLL_CTL_MOD, align 4
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* %9, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %9, align 4
  br label %46

44:                                               ; preds = %34
  %45 = load i32, i32* @EPOLL_CTL_ADD, align 4
  store i32 %45, i32* %8, align 4
  br label %46

46:                                               ; preds = %44, %39
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* %7, align 4
  %49 = or i32 %47, %48
  %50 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %13, i32 0, i32 0
  store i32 %49, i32* %50, align 8
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %52 = ptrtoint %struct.TYPE_7__* %51 to i64
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = or i64 %52, %55
  %57 = inttoptr i64 %56 to i8*
  %58 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %13, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  store i8* %57, i8** %59, align 8
  %60 = load i32, i32* @NGX_LOG_DEBUG_EVENT, align 4
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* %8, align 4
  %68 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %13, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @ngx_log_debug3(i32 %60, i32 %63, i32 0, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %66, i32 %67, i32 %69)
  %71 = load i32, i32* @ep, align 4
  %72 = load i32, i32* %8, align 4
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @epoll_ctl(i32 %71, i32 %72, i32 %75, %struct.epoll_event* %13)
  %77 = icmp eq i32 %76, -1
  br i1 %77, label %78, label %90

78:                                               ; preds = %46
  %79 = load i32, i32* @NGX_LOG_ALERT, align 4
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @ngx_errno, align 4
  %84 = load i32, i32* %8, align 4
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @ngx_log_error(i32 %79, i32 %82, i32 %83, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %84, i32 %87)
  %89 = load i64, i64* @NGX_ERROR, align 8
  store i64 %89, i64* %4, align 8
  br label %94

90:                                               ; preds = %46
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 0
  store i32 1, i32* %92, align 8
  %93 = load i64, i64* @NGX_OK, align 8
  store i64 %93, i64* %4, align 8
  br label %94

94:                                               ; preds = %90, %78
  %95 = load i64, i64* %4, align 8
  ret i64 %95
}

declare dso_local i32 @ngx_log_debug3(i32, i32, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @epoll_ctl(i32, i32, i32, %struct.epoll_event*) #1

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
