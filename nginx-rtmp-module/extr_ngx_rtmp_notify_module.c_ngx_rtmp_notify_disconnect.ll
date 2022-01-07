; ModuleID = '/home/carl/AnghaBench/nginx-rtmp-module/extr_ngx_rtmp_notify_module.c_ngx_rtmp_notify_disconnect.c'
source_filename = "/home/carl/AnghaBench/nginx-rtmp-module/extr_ngx_rtmp_notify_module.c_ngx_rtmp_notify_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_13__*, i64, i64 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_16__ = type { %struct.TYPE_14__** }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_17__ = type { i32, %struct.TYPE_14__* }

@ngx_rtmp_notify_module = common dso_local global i32 0, align 4
@NGX_RTMP_NOTIFY_DISCONNECT = common dso_local global i64 0, align 8
@NGX_LOG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"notify: disconnect '%V'\00", align 1
@ngx_rtmp_notify_disconnect_create = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*)* @ngx_rtmp_notify_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_rtmp_notify_disconnect(%struct.TYPE_15__* %0) #0 {
  %2 = alloca %struct.TYPE_15__*, align 8
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca %struct.TYPE_17__, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %2, align 8
  %6 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %6, i32 0, i32 2
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %15, label %10

10:                                               ; preds = %1
  %11 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %10, %1
  br label %46

16:                                               ; preds = %10
  %17 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %18 = load i32, i32* @ngx_rtmp_notify_module, align 4
  %19 = call %struct.TYPE_16__* @ngx_rtmp_get_module_srv_conf(%struct.TYPE_15__* %17, i32 %18)
  store %struct.TYPE_16__* %19, %struct.TYPE_16__** %3, align 8
  %20 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %21, align 8
  %23 = load i64, i64* @NGX_RTMP_NOTIFY_DISCONNECT, align 8
  %24 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %22, i64 %23
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %24, align 8
  store %struct.TYPE_14__* %25, %struct.TYPE_14__** %5, align 8
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %27 = icmp eq %struct.TYPE_14__* %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %16
  br label %46

29:                                               ; preds = %16
  %30 = load i32, i32* @NGX_LOG_INFO, align 4
  %31 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %36, i32 0, i32 0
  %38 = call i32 @ngx_log_error(i32 %30, i32 %35, i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32* %37)
  %39 = call i32 @ngx_memzero(%struct.TYPE_17__* %4, i32 16)
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %4, i32 0, i32 1
  store %struct.TYPE_14__* %40, %struct.TYPE_14__** %41, align 8
  %42 = load i32, i32* @ngx_rtmp_notify_disconnect_create, align 4
  %43 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %4, i32 0, i32 0
  store i32 %42, i32* %43, align 8
  %44 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %45 = call i32 @ngx_rtmp_netcall_create(%struct.TYPE_15__* %44, %struct.TYPE_17__* %4)
  br label %46

46:                                               ; preds = %29, %28, %15
  %47 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %48 = call i32 @next_disconnect(%struct.TYPE_15__* %47)
  ret i32 %48
}

declare dso_local %struct.TYPE_16__* @ngx_rtmp_get_module_srv_conf(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*, i32*) #1

declare dso_local i32 @ngx_memzero(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @ngx_rtmp_netcall_create(%struct.TYPE_15__*, %struct.TYPE_17__*) #1

declare dso_local i32 @next_disconnect(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
