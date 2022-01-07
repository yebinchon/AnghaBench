; ModuleID = '/home/carl/AnghaBench/nginx-rtmp-module/extr_ngx_rtmp_handler.c_ngx_rtmp_ping.c'
source_filename = "/home/carl/AnghaBench/nginx-rtmp-module/extr_ngx_rtmp_handler.c_ngx_rtmp_ping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32, %struct.TYPE_13__*, i64 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_15__ = type { i32, i64 }

@ngx_rtmp_core_module = common dso_local global i32 0, align 4
@NGX_LOG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"ping: unresponded\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"ping: not busy between pings\00", align 1
@NGX_LOG_DEBUG_RTMP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"ping: schedule %Mms\00", align 1
@ngx_current_msec = common dso_local global i64 0, align 8
@NGX_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_16__*)* @ngx_rtmp_ping to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ngx_rtmp_ping(%struct.TYPE_16__* %0) #0 {
  %2 = alloca %struct.TYPE_16__*, align 8
  %3 = alloca %struct.TYPE_17__*, align 8
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %2, align 8
  %6 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %6, i32 0, i32 0
  %8 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  store %struct.TYPE_17__* %8, %struct.TYPE_17__** %3, align 8
  %9 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %9, i32 0, i32 1
  %11 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  store %struct.TYPE_14__* %11, %struct.TYPE_14__** %4, align 8
  %12 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %13 = load i32, i32* @ngx_rtmp_core_module, align 4
  %14 = call %struct.TYPE_15__* @ngx_rtmp_get_module_srv_conf(%struct.TYPE_14__* %12, i32 %13)
  store %struct.TYPE_15__* %14, %struct.TYPE_15__** %5, align 8
  %15 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %1
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %21 = call i32 @ngx_rtmp_reset_ping(%struct.TYPE_14__* %20)
  br label %76

22:                                               ; preds = %1
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %22
  %28 = load i32, i32* @NGX_LOG_INFO, align 4
  %29 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @ngx_log_error(i32 %28, i32 %31, i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %34 = call i32 @ngx_rtmp_finalize_session(%struct.TYPE_14__* %33)
  br label %76

35:                                               ; preds = %22
  %36 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %48

40:                                               ; preds = %35
  %41 = load i32, i32* @NGX_LOG_INFO, align 4
  %42 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @ngx_log_error(i32 %41, i32 %44, i32 0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %47 = call i32 @ngx_rtmp_finalize_session(%struct.TYPE_14__* %46)
  br label %76

48:                                               ; preds = %35
  %49 = load i32, i32* @NGX_LOG_DEBUG_RTMP, align 4
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %50, i32 0, i32 1
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @ngx_log_debug1(i32 %49, i32 %54, i32 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %57)
  %59 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %60 = load i64, i64* @ngx_current_msec, align 8
  %61 = trunc i64 %60 to i32
  %62 = call i64 @ngx_rtmp_send_ping_request(%struct.TYPE_14__* %59, i32 %61)
  %63 = load i64, i64* @NGX_OK, align 8
  %64 = icmp ne i64 %62, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %48
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %67 = call i32 @ngx_rtmp_finalize_session(%struct.TYPE_14__* %66)
  br label %76

68:                                               ; preds = %48
  %69 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %69, i32 0, i32 0
  store i32 1, i32* %70, align 8
  %71 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %72 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @ngx_add_timer(%struct.TYPE_16__* %71, i32 %74)
  br label %76

76:                                               ; preds = %68, %65, %40, %27, %19
  ret void
}

declare dso_local %struct.TYPE_15__* @ngx_rtmp_get_module_srv_conf(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @ngx_rtmp_reset_ping(%struct.TYPE_14__*) #1

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*) #1

declare dso_local i32 @ngx_rtmp_finalize_session(%struct.TYPE_14__*) #1

declare dso_local i32 @ngx_log_debug1(i32, i32, i32, i8*, i32) #1

declare dso_local i64 @ngx_rtmp_send_ping_request(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @ngx_add_timer(%struct.TYPE_16__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
