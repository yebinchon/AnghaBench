; ModuleID = '/home/carl/AnghaBench/nginx-rtmp-module/extr_ngx_rtmp_notify_module.c_ngx_rtmp_notify_publish.c'
source_filename = "/home/carl/AnghaBench/nginx-rtmp-module/extr_ngx_rtmp_notify_module.c_ngx_rtmp_notify_publish.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { %struct.TYPE_17__*, i64 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_20__ = type { i32, i32 }
%struct.TYPE_21__ = type { %struct.TYPE_18__** }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_22__ = type { i32, %struct.TYPE_20__*, i32, i32, %struct.TYPE_18__* }

@ngx_rtmp_notify_module = common dso_local global i32 0, align 4
@NGX_RTMP_NOTIFY_PUBLISH = common dso_local global i64 0, align 8
@NGX_RTMP_NOTIFY_PUBLISHING = common dso_local global i32 0, align 4
@NGX_LOG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"notify: publish '%V'\00", align 1
@ngx_rtmp_notify_publish_create = common dso_local global i32 0, align 4
@ngx_rtmp_notify_publish_handle = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_19__*, %struct.TYPE_20__*)* @ngx_rtmp_notify_publish to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_rtmp_notify_publish(%struct.TYPE_19__* %0, %struct.TYPE_20__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca %struct.TYPE_20__*, align 8
  %6 = alloca %struct.TYPE_21__*, align 8
  %7 = alloca %struct.TYPE_22__, align 8
  %8 = alloca %struct.TYPE_18__*, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %4, align 8
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %5, align 8
  %9 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %62

14:                                               ; preds = %2
  %15 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %16 = load i32, i32* @ngx_rtmp_notify_module, align 4
  %17 = call %struct.TYPE_21__* @ngx_rtmp_get_module_app_conf(%struct.TYPE_19__* %15, i32 %16)
  store %struct.TYPE_21__* %17, %struct.TYPE_21__** %6, align 8
  %18 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %19 = icmp eq %struct.TYPE_21__* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  br label %62

21:                                               ; preds = %14
  %22 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %23, align 8
  %25 = load i64, i64* @NGX_RTMP_NOTIFY_PUBLISH, align 8
  %26 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %24, i64 %25
  %27 = load %struct.TYPE_18__*, %struct.TYPE_18__** %26, align 8
  store %struct.TYPE_18__* %27, %struct.TYPE_18__** %8, align 8
  %28 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %29 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @NGX_RTMP_NOTIFY_PUBLISHING, align 4
  %36 = call i32 @ngx_rtmp_notify_init(%struct.TYPE_19__* %28, i32 %31, i32 %34, i32 %35)
  %37 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %38 = icmp eq %struct.TYPE_18__* %37, null
  br i1 %38, label %39, label %40

39:                                               ; preds = %21
  br label %62

40:                                               ; preds = %21
  %41 = load i32, i32* @NGX_LOG_INFO, align 4
  %42 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_17__*, %struct.TYPE_17__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %47, i32 0, i32 0
  %49 = call i32 @ngx_log_error(i32 %41, i32 %46, i32 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32* %48)
  %50 = call i32 @ngx_memzero(%struct.TYPE_22__* %7, i32 32)
  %51 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %7, i32 0, i32 4
  store %struct.TYPE_18__* %51, %struct.TYPE_18__** %52, align 8
  %53 = load i32, i32* @ngx_rtmp_notify_publish_create, align 4
  %54 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %7, i32 0, i32 3
  store i32 %53, i32* %54, align 4
  %55 = load i32, i32* @ngx_rtmp_notify_publish_handle, align 4
  %56 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %7, i32 0, i32 2
  store i32 %55, i32* %56, align 8
  %57 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %7, i32 0, i32 1
  store %struct.TYPE_20__* %57, %struct.TYPE_20__** %58, align 8
  %59 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %7, i32 0, i32 0
  store i32 8, i32* %59, align 8
  %60 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %61 = call i32 @ngx_rtmp_netcall_create(%struct.TYPE_19__* %60, %struct.TYPE_22__* %7)
  store i32 %61, i32* %3, align 4
  br label %66

62:                                               ; preds = %39, %20, %13
  %63 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %64 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %65 = call i32 @next_publish(%struct.TYPE_19__* %63, %struct.TYPE_20__* %64)
  store i32 %65, i32* %3, align 4
  br label %66

66:                                               ; preds = %62, %40
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local %struct.TYPE_21__* @ngx_rtmp_get_module_app_conf(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @ngx_rtmp_notify_init(%struct.TYPE_19__*, i32, i32, i32) #1

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*, i32*) #1

declare dso_local i32 @ngx_memzero(%struct.TYPE_22__*, i32) #1

declare dso_local i32 @ngx_rtmp_netcall_create(%struct.TYPE_19__*, %struct.TYPE_22__*) #1

declare dso_local i32 @next_publish(%struct.TYPE_19__*, %struct.TYPE_20__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
