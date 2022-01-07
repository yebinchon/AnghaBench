; ModuleID = '/home/carl/AnghaBench/nginx-rtmp-module/extr_ngx_rtmp_exec_module.c_ngx_rtmp_exec_publish.c'
source_filename = "/home/carl/AnghaBench/nginx-rtmp-module/extr_ngx_rtmp_exec_module.c_ngx_rtmp_exec_publish.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64 }
%struct.TYPE_17__ = type { i32, i32 }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_19__ = type { i32*, i32 }

@ngx_rtmp_exec_module = common dso_local global i32 0, align 4
@NGX_RTMP_EXEC_PUBLISHING = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i64 0, align 8
@NGX_RTMP_EXEC_PUBLISH = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [8 x i8] c"publish\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"push\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*, %struct.TYPE_17__*)* @ngx_rtmp_exec_publish to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_rtmp_exec_publish(%struct.TYPE_16__* %0, %struct.TYPE_17__* %1) #0 {
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca %struct.TYPE_19__*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %3, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %4, align 8
  %7 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %8 = load i32, i32* @ngx_rtmp_exec_module, align 4
  %9 = call %struct.TYPE_19__* @ngx_rtmp_get_module_app_conf(%struct.TYPE_16__* %7, i32 %8)
  store %struct.TYPE_19__* %9, %struct.TYPE_19__** %6, align 8
  %10 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %11 = icmp eq %struct.TYPE_19__* %10, null
  br i1 %11, label %17, label %12

12:                                               ; preds = %2
  %13 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %12, %2
  br label %52

18:                                               ; preds = %12
  %19 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  br label %52

24:                                               ; preds = %18
  %25 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %26 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @NGX_RTMP_EXEC_PUBLISHING, align 4
  %33 = call i64 @ngx_rtmp_exec_init_ctx(%struct.TYPE_16__* %25, i32 %28, i32 %31, i32 %32)
  %34 = load i64, i64* @NGX_OK, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %24
  br label %52

37:                                               ; preds = %24
  %38 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %39 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = load i64, i64* @NGX_RTMP_EXEC_PUBLISH, align 8
  %43 = getelementptr inbounds i32, i32* %41, i64 %42
  %44 = call i32 @ngx_rtmp_exec_unmanaged(%struct.TYPE_16__* %38, i32* %43, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %45 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %46 = load i32, i32* @ngx_rtmp_exec_module, align 4
  %47 = call %struct.TYPE_18__* @ngx_rtmp_get_module_ctx(%struct.TYPE_16__* %45, i32 %46)
  store %struct.TYPE_18__* %47, %struct.TYPE_18__** %5, align 8
  %48 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %49 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %49, i32 0, i32 0
  %51 = call i32 @ngx_rtmp_exec_managed(%struct.TYPE_16__* %48, i32* %50, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  br label %52

52:                                               ; preds = %37, %36, %23, %17
  %53 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %54 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %55 = call i32 @next_publish(%struct.TYPE_16__* %53, %struct.TYPE_17__* %54)
  ret i32 %55
}

declare dso_local %struct.TYPE_19__* @ngx_rtmp_get_module_app_conf(%struct.TYPE_16__*, i32) #1

declare dso_local i64 @ngx_rtmp_exec_init_ctx(%struct.TYPE_16__*, i32, i32, i32) #1

declare dso_local i32 @ngx_rtmp_exec_unmanaged(%struct.TYPE_16__*, i32*, i8*) #1

declare dso_local %struct.TYPE_18__* @ngx_rtmp_get_module_ctx(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @ngx_rtmp_exec_managed(%struct.TYPE_16__*, i32*, i8*) #1

declare dso_local i32 @next_publish(%struct.TYPE_16__*, %struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
