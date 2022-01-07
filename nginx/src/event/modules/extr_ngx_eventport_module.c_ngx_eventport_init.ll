; ModuleID = '/home/carl/AnghaBench/nginx/src/event/modules/extr_ngx_eventport_module.c_ngx_eventport_init.c'
source_filename = "/home/carl/AnghaBench/nginx/src/event/modules/extr_ngx_eventport_module.c_ngx_eventport_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_14__ = type { i32, i32 }
%struct.sigevent = type { i32, %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { %struct.sigevent* }
%struct.itimerspec = type { %struct.TYPE_12__, %struct.TYPE_11__ }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_13__ = type { i32 }

@ngx_eventport_module = common dso_local global i32 0, align 4
@ep = common dso_local global i32 0, align 4
@NGX_LOG_EMERG = common dso_local global i32 0, align 4
@ngx_errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"port_create() failed\00", align 1
@NGX_ERROR = common dso_local global i32 0, align 4
@notify_event = common dso_local global %struct.TYPE_15__ zeroinitializer, align 4
@nevents = common dso_local global i32 0, align 4
@event_list = common dso_local global i32* null, align 8
@NGX_USE_EVENTPORT_EVENT = common dso_local global i32 0, align 4
@ngx_event_flags = common dso_local global i32 0, align 4
@SIGEV_PORT = common dso_local global i32 0, align 4
@CLOCK_REALTIME = common dso_local global i32 0, align 4
@event_timer = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"timer_create() failed\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"timer_settime() failed\00", align 1
@NGX_USE_TIMER_EVENT = common dso_local global i32 0, align 4
@ngx_os_io = common dso_local global i32 0, align 4
@ngx_io = common dso_local global i32 0, align 4
@ngx_eventport_module_ctx = common dso_local global %struct.TYPE_16__ zeroinitializer, align 4
@ngx_event_actions = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*, i32)* @ngx_eventport_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_eventport_init(%struct.TYPE_14__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sigevent, align 8
  %7 = alloca %struct.itimerspec, align 4
  %8 = alloca %struct.sigevent, align 8
  %9 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @ngx_eventport_module, align 4
  %14 = call %struct.TYPE_13__* @ngx_event_get_conf(i32 %12, i32 %13)
  store %struct.TYPE_13__* %14, %struct.TYPE_13__** %9, align 8
  %15 = load i32, i32* @ep, align 4
  %16 = icmp eq i32 %15, -1
  br i1 %16, label %17, label %33

17:                                               ; preds = %2
  %18 = call i32 (...) @port_create()
  store i32 %18, i32* @ep, align 4
  %19 = load i32, i32* @ep, align 4
  %20 = icmp eq i32 %19, -1
  br i1 %20, label %21, label %29

21:                                               ; preds = %17
  %22 = load i32, i32* @NGX_LOG_EMERG, align 4
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @ngx_errno, align 4
  %27 = call i32 @ngx_log_error(i32 %22, i32 %25, i32 %26, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* @NGX_ERROR, align 4
  store i32 %28, i32* %3, align 4
  br label %126

29:                                               ; preds = %17
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @notify_event, i32 0, i32 0), align 4
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @notify_event, i32 0, i32 1), align 4
  br label %33

33:                                               ; preds = %29, %2
  %34 = load i32, i32* @nevents, align 4
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp slt i32 %34, %37
  br i1 %38, label %39, label %61

39:                                               ; preds = %33
  %40 = load i32*, i32** @event_list, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %42, label %45

42:                                               ; preds = %39
  %43 = load i32*, i32** @event_list, align 8
  %44 = call i32 @ngx_free(i32* %43)
  br label %45

45:                                               ; preds = %42, %39
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = sext i32 %48 to i64
  %50 = mul i64 4, %49
  %51 = trunc i64 %50 to i32
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32* @ngx_alloc(i32 %51, i32 %54)
  store i32* %55, i32** @event_list, align 8
  %56 = load i32*, i32** @event_list, align 8
  %57 = icmp eq i32* %56, null
  br i1 %57, label %58, label %60

58:                                               ; preds = %45
  %59 = load i32, i32* @NGX_ERROR, align 4
  store i32 %59, i32* %3, align 4
  br label %126

60:                                               ; preds = %45
  br label %61

61:                                               ; preds = %60, %33
  %62 = load i32, i32* @NGX_USE_EVENTPORT_EVENT, align 4
  store i32 %62, i32* @ngx_event_flags, align 4
  %63 = load i32, i32* %5, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %119

65:                                               ; preds = %61
  %66 = call i32 @ngx_memzero(%struct.sigevent* %6, i32 24)
  %67 = load i32, i32* @ep, align 4
  %68 = getelementptr inbounds %struct.sigevent, %struct.sigevent* %6, i32 0, i32 0
  store i32 %67, i32* %68, align 8
  %69 = call i32 @ngx_memzero(%struct.sigevent* %8, i32 24)
  %70 = load i32, i32* @SIGEV_PORT, align 4
  %71 = getelementptr inbounds %struct.sigevent, %struct.sigevent* %8, i32 0, i32 2
  store i32 %70, i32* %71, align 8
  %72 = getelementptr inbounds %struct.sigevent, %struct.sigevent* %8, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 0
  store %struct.sigevent* %6, %struct.sigevent** %73, align 8
  %74 = load i32, i32* @CLOCK_REALTIME, align 4
  %75 = call i32 @timer_create(i32 %74, %struct.sigevent* %8, i32* @event_timer)
  %76 = icmp eq i32 %75, -1
  br i1 %76, label %77, label %85

77:                                               ; preds = %65
  %78 = load i32, i32* @NGX_LOG_EMERG, align 4
  %79 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @ngx_errno, align 4
  %83 = call i32 @ngx_log_error(i32 %78, i32 %81, i32 %82, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %84 = load i32, i32* @NGX_ERROR, align 4
  store i32 %84, i32* %3, align 4
  br label %126

85:                                               ; preds = %65
  %86 = load i32, i32* %5, align 4
  %87 = sdiv i32 %86, 1000
  %88 = getelementptr inbounds %struct.itimerspec, %struct.itimerspec* %7, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 0
  store i32 %87, i32* %89, align 4
  %90 = load i32, i32* %5, align 4
  %91 = srem i32 %90, 1000
  %92 = mul nsw i32 %91, 1000000
  %93 = getelementptr inbounds %struct.itimerspec, %struct.itimerspec* %7, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i32 0, i32 1
  store i32 %92, i32* %94, align 4
  %95 = load i32, i32* %5, align 4
  %96 = sdiv i32 %95, 1000
  %97 = getelementptr inbounds %struct.itimerspec, %struct.itimerspec* %7, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i32 0, i32 0
  store i32 %96, i32* %98, align 4
  %99 = load i32, i32* %5, align 4
  %100 = srem i32 %99, 1000
  %101 = mul nsw i32 %100, 1000000
  %102 = getelementptr inbounds %struct.itimerspec, %struct.itimerspec* %7, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %102, i32 0, i32 1
  store i32 %101, i32* %103, align 4
  %104 = load i32, i32* @event_timer, align 4
  %105 = call i32 @timer_settime(i32 %104, i32 0, %struct.itimerspec* %7, i32* null)
  %106 = icmp eq i32 %105, -1
  br i1 %106, label %107, label %115

107:                                              ; preds = %85
  %108 = load i32, i32* @NGX_LOG_EMERG, align 4
  %109 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @ngx_errno, align 4
  %113 = call i32 @ngx_log_error(i32 %108, i32 %111, i32 %112, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %114 = load i32, i32* @NGX_ERROR, align 4
  store i32 %114, i32* %3, align 4
  br label %126

115:                                              ; preds = %85
  %116 = load i32, i32* @NGX_USE_TIMER_EVENT, align 4
  %117 = load i32, i32* @ngx_event_flags, align 4
  %118 = or i32 %117, %116
  store i32 %118, i32* @ngx_event_flags, align 4
  br label %119

119:                                              ; preds = %115, %61
  %120 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %121 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  store i32 %122, i32* @nevents, align 4
  %123 = load i32, i32* @ngx_os_io, align 4
  store i32 %123, i32* @ngx_io, align 4
  %124 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @ngx_eventport_module_ctx, i32 0, i32 0), align 4
  store i32 %124, i32* @ngx_event_actions, align 4
  %125 = load i32, i32* @NGX_OK, align 4
  store i32 %125, i32* %3, align 4
  br label %126

126:                                              ; preds = %119, %107, %77, %58, %21
  %127 = load i32, i32* %3, align 4
  ret i32 %127
}

declare dso_local %struct.TYPE_13__* @ngx_event_get_conf(i32, i32) #1

declare dso_local i32 @port_create(...) #1

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*) #1

declare dso_local i32 @ngx_free(i32*) #1

declare dso_local i32* @ngx_alloc(i32, i32) #1

declare dso_local i32 @ngx_memzero(%struct.sigevent*, i32) #1

declare dso_local i32 @timer_create(i32, %struct.sigevent*, i32*) #1

declare dso_local i32 @timer_settime(i32, i32, %struct.itimerspec*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
