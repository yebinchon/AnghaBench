; ModuleID = '/home/carl/AnghaBench/nginx/src/event/modules/extr_ngx_kqueue_module.c_ngx_kqueue_init.c'
source_filename = "/home/carl/AnghaBench/nginx/src/event/modules/extr_ngx_kqueue_module.c_ngx_kqueue_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kevent = type { i32, i64, i64, i64, i32, i64 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.timespec = type { i64, i64 }

@ngx_kqueue_module = common dso_local global i32 0, align 4
@ngx_kqueue = common dso_local global i32 0, align 4
@NGX_LOG_EMERG = common dso_local global i32 0, align 4
@ngx_errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"kqueue() failed\00", align 1
@NGX_ERROR = common dso_local global i64 0, align 8
@max_changes = common dso_local global i32 0, align 4
@nchanges = common dso_local global i64 0, align 8
@change_list = common dso_local global %struct.kevent* null, align 8
@NGX_LOG_ALERT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"kevent() failed\00", align 1
@nevents = common dso_local global i32 0, align 4
@event_list = common dso_local global %struct.kevent* null, align 8
@NGX_USE_ONESHOT_EVENT = common dso_local global i32 0, align 4
@NGX_USE_KQUEUE_EVENT = common dso_local global i32 0, align 4
@NGX_USE_VNODE_EVENT = common dso_local global i32 0, align 4
@ngx_event_flags = common dso_local global i32 0, align 4
@NGX_USE_LEVEL_EVENT = common dso_local global i32 0, align 4
@ngx_os_io = common dso_local global i32 0, align 4
@ngx_io = common dso_local global i32 0, align 4
@ngx_kqueue_module_ctx = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@ngx_event_actions = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i64 0, align 8
@EVFILT_TIMER = common dso_local global i32 0, align 4
@EV_ADD = common dso_local global i32 0, align 4
@EV_ENABLE = common dso_local global i32 0, align 4
@NGX_USE_CLEAR_EVENT = common dso_local global i32 0, align 4
@NGX_USE_LOWAT_EVENT = common dso_local global i32 0, align 4
@NGX_USE_TIMER_EVENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_7__*, i64)* @ngx_kqueue_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ngx_kqueue_init(%struct.TYPE_7__* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca %struct.timespec, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @ngx_kqueue_module, align 4
  %12 = call %struct.TYPE_6__* @ngx_event_get_conf(i32 %10, i32 %11)
  store %struct.TYPE_6__* %12, %struct.TYPE_6__** %6, align 8
  %13 = load i32, i32* @ngx_kqueue, align 4
  %14 = icmp eq i32 %13, -1
  br i1 %14, label %15, label %28

15:                                               ; preds = %2
  %16 = call i32 (...) @kqueue()
  store i32 %16, i32* @ngx_kqueue, align 4
  %17 = load i32, i32* @ngx_kqueue, align 4
  %18 = icmp eq i32 %17, -1
  br i1 %18, label %19, label %27

19:                                               ; preds = %15
  %20 = load i32, i32* @NGX_LOG_EMERG, align 4
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @ngx_errno, align 4
  %25 = call i32 @ngx_log_error(i32 %20, i32 %23, i32 %24, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %26 = load i64, i64* @NGX_ERROR, align 8
  store i64 %26, i64* %3, align 8
  br label %123

27:                                               ; preds = %15
  br label %28

28:                                               ; preds = %27, %2
  %29 = load i32, i32* @max_changes, align 4
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp slt i32 %29, %32
  br i1 %33, label %34, label %77

34:                                               ; preds = %28
  %35 = load i64, i64* @nchanges, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %55

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct.timespec, %struct.timespec* %7, i32 0, i32 1
  store i64 0, i64* %38, align 8
  %39 = getelementptr inbounds %struct.timespec, %struct.timespec* %7, i32 0, i32 0
  store i64 0, i64* %39, align 8
  %40 = load i32, i32* @ngx_kqueue, align 4
  %41 = load %struct.kevent*, %struct.kevent** @change_list, align 8
  %42 = load i64, i64* @nchanges, align 8
  %43 = trunc i64 %42 to i32
  %44 = call i32 @kevent(i32 %40, %struct.kevent* %41, i32 %43, i32* null, i32 0, %struct.timespec* %7)
  %45 = icmp eq i32 %44, -1
  br i1 %45, label %46, label %54

46:                                               ; preds = %37
  %47 = load i32, i32* @NGX_LOG_ALERT, align 4
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @ngx_errno, align 4
  %52 = call i32 @ngx_log_error(i32 %47, i32 %50, i32 %51, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %53 = load i64, i64* @NGX_ERROR, align 8
  store i64 %53, i64* %3, align 8
  br label %123

54:                                               ; preds = %37
  store i64 0, i64* @nchanges, align 8
  br label %55

55:                                               ; preds = %54, %34
  %56 = load %struct.kevent*, %struct.kevent** @change_list, align 8
  %57 = icmp ne %struct.kevent* %56, null
  br i1 %57, label %58, label %61

58:                                               ; preds = %55
  %59 = load %struct.kevent*, %struct.kevent** @change_list, align 8
  %60 = call i32 @ngx_free(%struct.kevent* %59)
  br label %61

61:                                               ; preds = %58, %55
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = sext i32 %64 to i64
  %66 = mul i64 %65, 48
  %67 = trunc i64 %66 to i32
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call %struct.kevent* @ngx_alloc(i32 %67, i32 %70)
  store %struct.kevent* %71, %struct.kevent** @change_list, align 8
  %72 = load %struct.kevent*, %struct.kevent** @change_list, align 8
  %73 = icmp eq %struct.kevent* %72, null
  br i1 %73, label %74, label %76

74:                                               ; preds = %61
  %75 = load i64, i64* @NGX_ERROR, align 8
  store i64 %75, i64* %3, align 8
  br label %123

76:                                               ; preds = %61
  br label %77

77:                                               ; preds = %76, %28
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  store i32 %80, i32* @max_changes, align 4
  %81 = load i32, i32* @nevents, align 4
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = icmp slt i32 %81, %84
  br i1 %85, label %86, label %108

86:                                               ; preds = %77
  %87 = load %struct.kevent*, %struct.kevent** @event_list, align 8
  %88 = icmp ne %struct.kevent* %87, null
  br i1 %88, label %89, label %92

89:                                               ; preds = %86
  %90 = load %struct.kevent*, %struct.kevent** @event_list, align 8
  %91 = call i32 @ngx_free(%struct.kevent* %90)
  br label %92

92:                                               ; preds = %89, %86
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = sext i32 %95 to i64
  %97 = mul i64 %96, 48
  %98 = trunc i64 %97 to i32
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call %struct.kevent* @ngx_alloc(i32 %98, i32 %101)
  store %struct.kevent* %102, %struct.kevent** @event_list, align 8
  %103 = load %struct.kevent*, %struct.kevent** @event_list, align 8
  %104 = icmp eq %struct.kevent* %103, null
  br i1 %104, label %105, label %107

105:                                              ; preds = %92
  %106 = load i64, i64* @NGX_ERROR, align 8
  store i64 %106, i64* %3, align 8
  br label %123

107:                                              ; preds = %92
  br label %108

108:                                              ; preds = %107, %77
  %109 = load i32, i32* @NGX_USE_ONESHOT_EVENT, align 4
  %110 = load i32, i32* @NGX_USE_KQUEUE_EVENT, align 4
  %111 = or i32 %109, %110
  %112 = load i32, i32* @NGX_USE_VNODE_EVENT, align 4
  %113 = or i32 %111, %112
  store i32 %113, i32* @ngx_event_flags, align 4
  %114 = load i32, i32* @NGX_USE_LEVEL_EVENT, align 4
  %115 = load i32, i32* @ngx_event_flags, align 4
  %116 = or i32 %115, %114
  store i32 %116, i32* @ngx_event_flags, align 4
  %117 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  store i32 %119, i32* @nevents, align 4
  %120 = load i32, i32* @ngx_os_io, align 4
  store i32 %120, i32* @ngx_io, align 4
  %121 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @ngx_kqueue_module_ctx, i32 0, i32 0), align 4
  store i32 %121, i32* @ngx_event_actions, align 4
  %122 = load i64, i64* @NGX_OK, align 8
  store i64 %122, i64* %3, align 8
  br label %123

123:                                              ; preds = %108, %105, %74, %46, %19
  %124 = load i64, i64* %3, align 8
  ret i64 %124
}

declare dso_local %struct.TYPE_6__* @ngx_event_get_conf(i32, i32) #1

declare dso_local i32 @kqueue(...) #1

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*) #1

declare dso_local i32 @kevent(i32, %struct.kevent*, i32, i32*, i32, %struct.timespec*) #1

declare dso_local i32 @ngx_free(%struct.kevent*) #1

declare dso_local %struct.kevent* @ngx_alloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
