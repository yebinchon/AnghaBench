; ModuleID = '/home/carl/AnghaBench/nginx-rtmp-module/extr_ngx_rtmp_notify_module.c_ngx_rtmp_notify_record_done.c'
source_filename = "/home/carl/AnghaBench/nginx-rtmp-module/extr_ngx_rtmp_notify_module.c_ngx_rtmp_notify_record_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_16__*, i64 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_19__ = type { i32, i32 }
%struct.TYPE_21__ = type { %struct.TYPE_19__*, i32, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_20__ = type { %struct.TYPE_17__** }

@ngx_rtmp_notify_module = common dso_local global i32 0, align 4
@NGX_RTMP_NOTIFY_RECORD_DONE = common dso_local global i64 0, align 8
@NGX_LOG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"notify: record_done recorder=%V path='%V' url='%V'\00", align 1
@ngx_rtmp_notify_record_done_create = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_18__*, %struct.TYPE_19__*)* @ngx_rtmp_notify_record_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_rtmp_notify_record_done(%struct.TYPE_18__* %0, %struct.TYPE_19__* %1) #0 {
  %3 = alloca %struct.TYPE_18__*, align 8
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca %struct.TYPE_21__, align 8
  %6 = alloca %struct.TYPE_20__*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %3, align 8
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %4, align 8
  %7 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %60

12:                                               ; preds = %2
  %13 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %14 = load i32, i32* @ngx_rtmp_notify_module, align 4
  %15 = call %struct.TYPE_20__* @ngx_rtmp_get_module_app_conf(%struct.TYPE_18__* %13, i32 %14)
  store %struct.TYPE_20__* %15, %struct.TYPE_20__** %6, align 8
  %16 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %17 = icmp eq %struct.TYPE_20__* %16, null
  br i1 %17, label %26, label %18

18:                                               ; preds = %12
  %19 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %20, align 8
  %22 = load i64, i64* @NGX_RTMP_NOTIFY_RECORD_DONE, align 8
  %23 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %21, i64 %22
  %24 = load %struct.TYPE_17__*, %struct.TYPE_17__** %23, align 8
  %25 = icmp eq %struct.TYPE_17__* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %18, %12
  br label %60

27:                                               ; preds = %18
  %28 = load i32, i32* @NGX_LOG_INFO, align 4
  %29 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_16__*, %struct.TYPE_16__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %34, i32 0, i32 1
  %36 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %39, align 8
  %41 = load i64, i64* @NGX_RTMP_NOTIFY_RECORD_DONE, align 8
  %42 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %40, i64 %41
  %43 = load %struct.TYPE_17__*, %struct.TYPE_17__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %43, i32 0, i32 0
  %45 = call i32 @ngx_log_error(i32 %28, i32 %33, i32 0, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32* %35, i32* %37, i32* %44)
  %46 = call i32 @ngx_memzero(%struct.TYPE_21__* %5, i32 24)
  %47 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %48, align 8
  %50 = load i64, i64* @NGX_RTMP_NOTIFY_RECORD_DONE, align 8
  %51 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %49, i64 %50
  %52 = load %struct.TYPE_17__*, %struct.TYPE_17__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %5, i32 0, i32 2
  store %struct.TYPE_17__* %52, %struct.TYPE_17__** %53, align 8
  %54 = load i32, i32* @ngx_rtmp_notify_record_done_create, align 4
  %55 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %5, i32 0, i32 1
  store i32 %54, i32* %55, align 8
  %56 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %5, i32 0, i32 0
  store %struct.TYPE_19__* %56, %struct.TYPE_19__** %57, align 8
  %58 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %59 = call i32 @ngx_rtmp_netcall_create(%struct.TYPE_18__* %58, %struct.TYPE_21__* %5)
  br label %60

60:                                               ; preds = %27, %26, %11
  %61 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %62 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %63 = call i32 @next_record_done(%struct.TYPE_18__* %61, %struct.TYPE_19__* %62)
  ret i32 %63
}

declare dso_local %struct.TYPE_20__* @ngx_rtmp_get_module_app_conf(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*, i32*, i32*, i32*) #1

declare dso_local i32 @ngx_memzero(%struct.TYPE_21__*, i32) #1

declare dso_local i32 @ngx_rtmp_netcall_create(%struct.TYPE_18__*, %struct.TYPE_21__*) #1

declare dso_local i32 @next_record_done(%struct.TYPE_18__*, %struct.TYPE_19__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
