; ModuleID = '/home/carl/AnghaBench/nginx-rtmp-module/extr_ngx_rtmp_play_module.c_ngx_rtmp_play_open_remote.c'
source_filename = "/home/carl/AnghaBench/nginx-rtmp-module/extr_ngx_rtmp_play_module.c_ngx_rtmp_play_open_remote.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_26__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i64 }
%struct.TYPE_25__ = type { i64, %struct.TYPE_21__, i64, i64, i64 }
%struct.TYPE_21__ = type { i64 }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_27__ = type { i32, i32*, i32, i32, i32, i32 }

@ngx_rtmp_play_open_remote.file_id = internal global i64 0, align 8
@ngx_rtmp_play_module = common dso_local global i32 0, align 4
@NGX_INVALID_FILE = common dso_local global i64 0, align 8
@ngx_errno = common dso_local global i64 0, align 8
@NGX_EEXIST = common dso_local global i64 0, align 8
@NGX_LOG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"play: failed to create temp file\00", align 1
@NGX_ERROR = common dso_local global i32 0, align 4
@NGX_LOG_DEBUG_RTMP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"play: temp file '%s' file_id=%ui\00", align 1
@ngx_rtmp_play_remote_create = common dso_local global i32 0, align 4
@ngx_rtmp_play_remote_sink = common dso_local global i32 0, align 4
@ngx_rtmp_play_remote_handle = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_23__*, i32*)* @ngx_rtmp_play_open_remote to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_rtmp_play_open_remote(%struct.TYPE_23__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_23__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_26__*, align 8
  %7 = alloca %struct.TYPE_25__*, align 8
  %8 = alloca %struct.TYPE_24__*, align 8
  %9 = alloca %struct.TYPE_27__, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %4, align 8
  store i32* %1, i32** %5, align 8
  %12 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %13 = load i32, i32* @ngx_rtmp_play_module, align 4
  %14 = call %struct.TYPE_26__* @ngx_rtmp_get_module_app_conf(%struct.TYPE_23__* %12, i32 %13)
  store %struct.TYPE_26__* %14, %struct.TYPE_26__** %6, align 8
  %15 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %16 = load i32, i32* @ngx_rtmp_play_module, align 4
  %17 = call %struct.TYPE_25__* @ngx_rtmp_get_module_ctx(%struct.TYPE_23__* %15, i32 %16)
  store %struct.TYPE_25__* %17, %struct.TYPE_25__** %7, align 8
  %18 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %18, i32 0, i32 4
  store i64 0, i64* %19, align 8
  %20 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %20, i32 0, i32 3
  store i64 0, i64* %21, align 8
  %22 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %22, i32 0, i32 2
  store i64 0, i64* %23, align 8
  br label %24

24:                                               ; preds = %79, %33, %2
  %25 = load i64, i64* @ngx_rtmp_play_open_remote.file_id, align 8
  %26 = add nsw i64 %25, 1
  store i64 %26, i64* @ngx_rtmp_play_open_remote.file_id, align 8
  %27 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %27, i32 0, i32 0
  store i64 %26, i64* %28, align 8
  %29 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %24
  br label %24

34:                                               ; preds = %24
  %35 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %36 = call i32* @ngx_rtmp_play_get_local_file_path(%struct.TYPE_23__* %35)
  store i32* %36, i32** %10, align 8
  %37 = load i32*, i32** %10, align 8
  %38 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = call i64 @ngx_open_tempfile(i32* %37, i64 %41, i32 0)
  %43 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %44, i32 0, i32 0
  store i64 %42, i64* %45, align 8
  %46 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %34
  %52 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %52, i32 0, i32 0
  store i64 0, i64* %53, align 8
  br label %54

54:                                               ; preds = %51, %34
  %55 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @NGX_INVALID_FILE, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %54
  br label %80

62:                                               ; preds = %54
  %63 = load i64, i64* @ngx_errno, align 8
  store i64 %63, i64* %11, align 8
  %64 = load i64, i64* %11, align 8
  %65 = load i64, i64* @NGX_EEXIST, align 8
  %66 = icmp ne i64 %64, %65
  br i1 %66, label %67, label %79

67:                                               ; preds = %62
  %68 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %68, i32 0, i32 0
  store i64 0, i64* %69, align 8
  %70 = load i32, i32* @NGX_LOG_INFO, align 4
  %71 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_22__*, %struct.TYPE_22__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i64, i64* %11, align 8
  %77 = call i32 @ngx_log_error(i32 %70, i32 %75, i64 %76, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %78 = load i32, i32* @NGX_ERROR, align 4
  store i32 %78, i32* %3, align 4
  br label %110

79:                                               ; preds = %62
  br label %24

80:                                               ; preds = %61
  %81 = load i32, i32* @NGX_LOG_DEBUG_RTMP, align 4
  %82 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %82, i32 0, i32 0
  %84 = load %struct.TYPE_22__*, %struct.TYPE_22__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32*, i32** %10, align 8
  %88 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %89 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = call i32 @ngx_log_debug2(i32 %81, i32 %86, i32 0, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32* %87, i64 %90)
  %92 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %93 = call %struct.TYPE_24__* @ngx_rtmp_play_get_current_entry(%struct.TYPE_23__* %92)
  store %struct.TYPE_24__* %93, %struct.TYPE_24__** %8, align 8
  %94 = call i32 @ngx_memzero(%struct.TYPE_27__* %9, i32 32)
  %95 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %96 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %9, i32 0, i32 5
  store i32 %97, i32* %98, align 4
  %99 = load i32, i32* @ngx_rtmp_play_remote_create, align 4
  %100 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %9, i32 0, i32 4
  store i32 %99, i32* %100, align 8
  %101 = load i32, i32* @ngx_rtmp_play_remote_sink, align 4
  %102 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %9, i32 0, i32 3
  store i32 %101, i32* %102, align 4
  %103 = load i32, i32* @ngx_rtmp_play_remote_handle, align 4
  %104 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %9, i32 0, i32 2
  store i32 %103, i32* %104, align 8
  %105 = load i32*, i32** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %9, i32 0, i32 1
  store i32* %105, i32** %106, align 8
  %107 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %9, i32 0, i32 0
  store i32 4, i32* %107, align 8
  %108 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %109 = call i32 @ngx_rtmp_netcall_create(%struct.TYPE_23__* %108, %struct.TYPE_27__* %9)
  store i32 %109, i32* %3, align 4
  br label %110

110:                                              ; preds = %80, %67
  %111 = load i32, i32* %3, align 4
  ret i32 %111
}

declare dso_local %struct.TYPE_26__* @ngx_rtmp_get_module_app_conf(%struct.TYPE_23__*, i32) #1

declare dso_local %struct.TYPE_25__* @ngx_rtmp_get_module_ctx(%struct.TYPE_23__*, i32) #1

declare dso_local i32* @ngx_rtmp_play_get_local_file_path(%struct.TYPE_23__*) #1

declare dso_local i64 @ngx_open_tempfile(i32*, i64, i32) #1

declare dso_local i32 @ngx_log_error(i32, i32, i64, i8*) #1

declare dso_local i32 @ngx_log_debug2(i32, i32, i32, i8*, i32*, i64) #1

declare dso_local %struct.TYPE_24__* @ngx_rtmp_play_get_current_entry(%struct.TYPE_23__*) #1

declare dso_local i32 @ngx_memzero(%struct.TYPE_27__*, i32) #1

declare dso_local i32 @ngx_rtmp_netcall_create(%struct.TYPE_23__*, %struct.TYPE_27__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
