; ModuleID = '/home/carl/AnghaBench/nginx/src/event/modules/extr_ngx_iocp_module.c_ngx_iocp_init.c'
source_filename = "/home/carl/AnghaBench/nginx/src/event/modules/extr_ngx_iocp_module.c_ngx_iocp_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32 }

@ngx_iocp_module = common dso_local global i32 0, align 4
@iocp = common dso_local global i32* null, align 8
@INVALID_HANDLE_VALUE = common dso_local global i32 0, align 4
@NGX_LOG_ALERT = common dso_local global i32 0, align 4
@ngx_errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"CreateIoCompletionPort() failed\00", align 1
@NGX_ERROR = common dso_local global i32 0, align 4
@ngx_iocp_io = common dso_local global i32 0, align 4
@ngx_io = common dso_local global i32 0, align 4
@ngx_iocp_module_ctx = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@ngx_event_actions = common dso_local global i32 0, align 4
@NGX_USE_IOCP_EVENT = common dso_local global i32 0, align 4
@ngx_event_flags = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i32 0, align 4
@timer_thread = common dso_local global i32* null, align 8
@msec = common dso_local global i64 0, align 8
@ngx_iocp_timer = common dso_local global i32 0, align 4
@NGX_USE_TIMER_EVENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i64)* @ngx_iocp_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_iocp_init(%struct.TYPE_7__* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @ngx_iocp_module, align 4
  %11 = call %struct.TYPE_6__* @ngx_event_get_conf(i32 %9, i32 %10)
  store %struct.TYPE_6__* %11, %struct.TYPE_6__** %6, align 8
  %12 = load i32*, i32** @iocp, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %14, label %20

14:                                               ; preds = %2
  %15 = load i32, i32* @INVALID_HANDLE_VALUE, align 4
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32* @CreateIoCompletionPort(i32 %15, i32* null, i32 0, i32 %18)
  store i32* %19, i32** @iocp, align 8
  br label %20

20:                                               ; preds = %14, %2
  %21 = load i32*, i32** @iocp, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %31

23:                                               ; preds = %20
  %24 = load i32, i32* @NGX_LOG_ALERT, align 4
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @ngx_errno, align 4
  %29 = call i32 @ngx_log_error(i32 %24, i32 %27, i32 %28, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* @NGX_ERROR, align 4
  store i32 %30, i32* %3, align 4
  br label %58

31:                                               ; preds = %20
  %32 = load i32, i32* @ngx_iocp_io, align 4
  store i32 %32, i32* @ngx_io, align 4
  %33 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @ngx_iocp_module_ctx, i32 0, i32 0), align 4
  store i32 %33, i32* @ngx_event_actions, align 4
  %34 = load i32, i32* @NGX_USE_IOCP_EVENT, align 4
  store i32 %34, i32* @ngx_event_flags, align 4
  %35 = load i64, i64* %5, align 8
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %31
  %38 = load i32, i32* @NGX_OK, align 4
  store i32 %38, i32* %3, align 4
  br label %58

39:                                               ; preds = %31
  %40 = load i32*, i32** @timer_thread, align 8
  %41 = icmp eq i32* %40, null
  br i1 %41, label %42, label %53

42:                                               ; preds = %39
  %43 = load i64, i64* %5, align 8
  store i64 %43, i64* @msec, align 8
  %44 = load i32, i32* @ngx_iocp_timer, align 4
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i64 @ngx_create_thread(i32** @timer_thread, i32 %44, i64* @msec, i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %42
  %51 = load i32, i32* @NGX_ERROR, align 4
  store i32 %51, i32* %3, align 4
  br label %58

52:                                               ; preds = %42
  br label %53

53:                                               ; preds = %52, %39
  %54 = load i32, i32* @NGX_USE_TIMER_EVENT, align 4
  %55 = load i32, i32* @ngx_event_flags, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* @ngx_event_flags, align 4
  %57 = load i32, i32* @NGX_OK, align 4
  store i32 %57, i32* %3, align 4
  br label %58

58:                                               ; preds = %53, %50, %37, %23
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local %struct.TYPE_6__* @ngx_event_get_conf(i32, i32) #1

declare dso_local i32* @CreateIoCompletionPort(i32, i32*, i32, i32) #1

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*) #1

declare dso_local i64 @ngx_create_thread(i32**, i32, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
