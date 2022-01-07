; ModuleID = '/home/carl/AnghaBench/nginx-rtmp-module/extr_ngx_rtmp_notify_module.c_ngx_rtmp_notify_update.c'
source_filename = "/home/carl/AnghaBench/nginx-rtmp-module/extr_ngx_rtmp_notify_module.c_ngx_rtmp_notify_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { %struct.TYPE_21__* }
%struct.TYPE_21__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_18__ = type { %struct.TYPE_16__** }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_19__ = type { i32 (%struct.TYPE_17__*, i32*, i32*)*, i32, %struct.TYPE_16__* }

@ngx_rtmp_notify_module = common dso_local global i32 0, align 4
@NGX_RTMP_NOTIFY_UPDATE = common dso_local global i64 0, align 8
@NGX_LOG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"notify: update '%V'\00", align 1
@ngx_rtmp_notify_update_create = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_20__*)* @ngx_rtmp_notify_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ngx_rtmp_notify_update(%struct.TYPE_20__* %0) #0 {
  %2 = alloca %struct.TYPE_20__*, align 8
  %3 = alloca %struct.TYPE_21__*, align 8
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca %struct.TYPE_19__, align 8
  %7 = alloca %struct.TYPE_16__*, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %2, align 8
  %8 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  store %struct.TYPE_21__* %10, %struct.TYPE_21__** %3, align 8
  %11 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  store %struct.TYPE_17__* %13, %struct.TYPE_17__** %4, align 8
  %14 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %15 = load i32, i32* @ngx_rtmp_notify_module, align 4
  %16 = call %struct.TYPE_18__* @ngx_rtmp_get_module_app_conf(%struct.TYPE_17__* %14, i32 %15)
  store %struct.TYPE_18__* %16, %struct.TYPE_18__** %5, align 8
  %17 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %18, align 8
  %20 = load i64, i64* @NGX_RTMP_NOTIFY_UPDATE, align 8
  %21 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %19, i64 %20
  %22 = load %struct.TYPE_16__*, %struct.TYPE_16__** %21, align 8
  store %struct.TYPE_16__* %22, %struct.TYPE_16__** %7, align 8
  %23 = load i32, i32* @NGX_LOG_INFO, align 4
  %24 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_15__*, %struct.TYPE_15__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %29, i32 0, i32 0
  %31 = call i32 @ngx_log_error(i32 %23, i32 %28, i32 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32* %30)
  %32 = call i32 @ngx_memzero(%struct.TYPE_19__* %6, i32 24)
  %33 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %6, i32 0, i32 2
  store %struct.TYPE_16__* %33, %struct.TYPE_16__** %34, align 8
  %35 = load i32, i32* @ngx_rtmp_notify_update_create, align 4
  %36 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %6, i32 0, i32 1
  store i32 %35, i32* %36, align 8
  %37 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %6, i32 0, i32 0
  store i32 (%struct.TYPE_17__*, i32*, i32*)* @ngx_rtmp_notify_update_handle, i32 (%struct.TYPE_17__*, i32*, i32*)** %37, align 8
  %38 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %39 = call i64 @ngx_rtmp_netcall_create(%struct.TYPE_17__* %38, %struct.TYPE_19__* %6)
  %40 = load i64, i64* @NGX_OK, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %1
  br label %46

43:                                               ; preds = %1
  %44 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %45 = call i32 @ngx_rtmp_notify_update_handle(%struct.TYPE_17__* %44, i32* null, i32* null)
  br label %46

46:                                               ; preds = %43, %42
  ret void
}

declare dso_local %struct.TYPE_18__* @ngx_rtmp_get_module_app_conf(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*, i32*) #1

declare dso_local i32 @ngx_memzero(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @ngx_rtmp_notify_update_handle(%struct.TYPE_17__*, i32*, i32*) #1

declare dso_local i64 @ngx_rtmp_netcall_create(%struct.TYPE_17__*, %struct.TYPE_19__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
