; ModuleID = '/home/carl/AnghaBench/nginx-rtmp-module/extr_ngx_rtmp_notify_module.c_ngx_rtmp_notify_done.c'
source_filename = "/home/carl/AnghaBench/nginx-rtmp-module/extr_ngx_rtmp_notify_module.c_ngx_rtmp_notify_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_18__ = type { i32, %struct.TYPE_16__*, %struct.TYPE_14__* }
%struct.TYPE_16__ = type { i64, i32* }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_17__ = type { %struct.TYPE_14__** }

@ngx_rtmp_notify_module = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i32 0, align 4
@NGX_LOG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"notify: %s '%V'\00", align 1
@ngx_rtmp_notify_done_create = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*, i8*, i64)* @ngx_rtmp_notify_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_rtmp_notify_done(%struct.TYPE_15__* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_18__, align 8
  %9 = alloca %struct.TYPE_16__, align 8
  %10 = alloca %struct.TYPE_17__*, align 8
  %11 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %13 = load i32, i32* @ngx_rtmp_notify_module, align 4
  %14 = call %struct.TYPE_17__* @ngx_rtmp_get_module_app_conf(%struct.TYPE_15__* %12, i32 %13)
  store %struct.TYPE_17__* %14, %struct.TYPE_17__** %10, align 8
  %15 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %16 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %16, align 8
  %18 = load i64, i64* %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %17, i64 %18
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %19, align 8
  store %struct.TYPE_14__* %20, %struct.TYPE_14__** %11, align 8
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %22 = icmp eq %struct.TYPE_14__* %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %3
  %24 = load i32, i32* @NGX_OK, align 4
  store i32 %24, i32* %4, align 4
  br label %49

25:                                               ; preds = %3
  %26 = load i32, i32* @NGX_LOG_INFO, align 4
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i8*, i8** %6, align 8
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i32 0, i32 0
  %35 = call i32 @ngx_log_error(i32 %26, i32 %31, i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* %32, i32* %34)
  %36 = load i8*, i8** %6, align 8
  %37 = bitcast i8* %36 to i32*
  %38 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %9, i32 0, i32 1
  store i32* %37, i32** %38, align 8
  %39 = load i64, i64* %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %9, i32 0, i32 0
  store i64 %39, i64* %40, align 8
  %41 = call i32 @ngx_memzero(%struct.TYPE_18__* %8, i32 24)
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %43 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %8, i32 0, i32 2
  store %struct.TYPE_14__* %42, %struct.TYPE_14__** %43, align 8
  %44 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %8, i32 0, i32 1
  store %struct.TYPE_16__* %9, %struct.TYPE_16__** %44, align 8
  %45 = load i32, i32* @ngx_rtmp_notify_done_create, align 4
  %46 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %8, i32 0, i32 0
  store i32 %45, i32* %46, align 8
  %47 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %48 = call i32 @ngx_rtmp_netcall_create(%struct.TYPE_15__* %47, %struct.TYPE_18__* %8)
  store i32 %48, i32* %4, align 4
  br label %49

49:                                               ; preds = %25, %23
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

declare dso_local %struct.TYPE_17__* @ngx_rtmp_get_module_app_conf(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*, i8*, i32*) #1

declare dso_local i32 @ngx_memzero(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @ngx_rtmp_netcall_create(%struct.TYPE_15__*, %struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
