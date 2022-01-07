; ModuleID = '/home/carl/AnghaBench/nginx/src/event/extr_ngx_event.c_ngx_event_core_init_conf.c'
source_filename = "/home/carl/AnghaBench/nginx/src/event/extr_ngx_event.c_ngx_event_core_init_conf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }
%struct.TYPE_14__ = type { i64, %struct.TYPE_15__*, i32 }
%struct.TYPE_15__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_17__ = type { i32, i32, %struct.TYPE_14__** }
%struct.TYPE_16__ = type { i32, i32, i32, i32, i32, i32 }

@NGX_EVENT_MODULE = common dso_local global i64 0, align 8
@event_core_name = common dso_local global %struct.TYPE_12__ zeroinitializer, align 4
@NGX_LOG_EMERG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"no events module found\00", align 1
@NGX_CONF_ERROR = common dso_local global i8* null, align 8
@DEFAULT_CONNECTIONS = common dso_local global i32 0, align 4
@NGX_CONF_OK = common dso_local global i8* null, align 8
@NGX_ENOSYS = common dso_local global i64 0, align 8
@ngx_devpoll_module = common dso_local global %struct.TYPE_14__ zeroinitializer, align 8
@ngx_epoll_module = common dso_local global %struct.TYPE_14__ zeroinitializer, align 8
@ngx_errno = common dso_local global i64 0, align 8
@ngx_kqueue_module = common dso_local global %struct.TYPE_14__ zeroinitializer, align 8
@ngx_select_module = common dso_local global %struct.TYPE_14__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_17__*, i8*)* @ngx_event_core_init_conf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ngx_event_core_init_conf(%struct.TYPE_17__* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca %struct.TYPE_15__*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %11, %struct.TYPE_16__** %6, align 8
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %8, align 8
  %12 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %13 = icmp eq %struct.TYPE_14__* %12, null
  br i1 %13, label %14, label %64

14:                                               ; preds = %2
  store i64 0, i64* %7, align 8
  br label %15

15:                                               ; preds = %60, %14
  %16 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %16, i32 0, i32 2
  %18 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %17, align 8
  %19 = load i64, i64* %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %18, i64 %19
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %20, align 8
  %22 = icmp ne %struct.TYPE_14__* %21, null
  br i1 %22, label %23, label %63

23:                                               ; preds = %15
  %24 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %24, i32 0, i32 2
  %26 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %25, align 8
  %27 = load i64, i64* %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %26, i64 %27
  %29 = load %struct.TYPE_14__*, %struct.TYPE_14__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @NGX_EVENT_MODULE, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %23
  br label %60

35:                                               ; preds = %23
  %36 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %36, i32 0, i32 2
  %38 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %37, align 8
  %39 = load i64, i64* %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %38, i64 %39
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %41, i32 0, i32 1
  %43 = load %struct.TYPE_15__*, %struct.TYPE_15__** %42, align 8
  store %struct.TYPE_15__* %43, %struct.TYPE_15__** %9, align 8
  %44 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %45 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @event_core_name, i32 0, i32 0), align 4
  %50 = call i64 @ngx_strcmp(i32 %48, i32 %49)
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %35
  br label %60

53:                                               ; preds = %35
  %54 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %54, i32 0, i32 2
  %56 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %55, align 8
  %57 = load i64, i64* %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %56, i64 %57
  %59 = load %struct.TYPE_14__*, %struct.TYPE_14__** %58, align 8
  store %struct.TYPE_14__* %59, %struct.TYPE_14__** %8, align 8
  br label %63

60:                                               ; preds = %52, %34
  %61 = load i64, i64* %7, align 8
  %62 = add i64 %61, 1
  store i64 %62, i64* %7, align 8
  br label %15

63:                                               ; preds = %53, %15
  br label %64

64:                                               ; preds = %63, %2
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %66 = icmp eq %struct.TYPE_14__* %65, null
  br i1 %66, label %67, label %74

67:                                               ; preds = %64
  %68 = load i32, i32* @NGX_LOG_EMERG, align 4
  %69 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @ngx_log_error(i32 %68, i32 %71, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %73 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %73, i8** %3, align 8
  br label %117

74:                                               ; preds = %64
  %75 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %75, i32 0, i32 5
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @DEFAULT_CONNECTIONS, align 4
  %79 = call i32 @ngx_conf_init_uint_value(i32 %77, i32 %78)
  %80 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %80, i32 0, i32 5
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %83, i32 0, i32 0
  store i32 %82, i32* %84, align 8
  %85 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %85, i32 0, i32 4
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %89 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @ngx_conf_init_uint_value(i32 %87, i32 %90)
  %92 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %93 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %92, i32 0, i32 1
  %94 = load %struct.TYPE_15__*, %struct.TYPE_15__** %93, align 8
  store %struct.TYPE_15__* %94, %struct.TYPE_15__** %9, align 8
  %95 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %99 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %98, i32 0, i32 0
  %100 = load %struct.TYPE_13__*, %struct.TYPE_13__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @ngx_conf_init_ptr_value(i32 %97, i32 %102)
  %104 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @ngx_conf_init_value(i32 %106, i32 0)
  %108 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %109 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @ngx_conf_init_value(i32 %110, i32 0)
  %112 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %113 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @ngx_conf_init_msec_value(i32 %114, i32 500)
  %116 = load i8*, i8** @NGX_CONF_OK, align 8
  store i8* %116, i8** %3, align 8
  br label %117

117:                                              ; preds = %74, %67
  %118 = load i8*, i8** %3, align 8
  ret i8* %118
}

declare dso_local i64 @ngx_strcmp(i32, i32) #1

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*) #1

declare dso_local i32 @ngx_conf_init_uint_value(i32, i32) #1

declare dso_local i32 @ngx_conf_init_ptr_value(i32, i32) #1

declare dso_local i32 @ngx_conf_init_value(i32, i32) #1

declare dso_local i32 @ngx_conf_init_msec_value(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
