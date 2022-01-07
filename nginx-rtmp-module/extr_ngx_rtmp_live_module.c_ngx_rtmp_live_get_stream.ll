; ModuleID = '/home/carl/AnghaBench/nginx-rtmp-module/extr_ngx_rtmp_live_module.c_ngx_rtmp_live_get_stream.c'
source_filename = "/home/carl/AnghaBench/nginx-rtmp-module/extr_ngx_rtmp_live_module.c_ngx_rtmp_live_get_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32, %struct.TYPE_13__* }
%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_14__ = type { i64, i32, %struct.TYPE_13__*, %struct.TYPE_13__** }

@ngx_rtmp_live_module = common dso_local global i32 0, align 4
@NGX_LOG_DEBUG_RTMP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"live: create stream '%s'\00", align 1
@ngx_current_msec = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_13__** (%struct.TYPE_12__*, i32*, i32)* @ngx_rtmp_live_get_stream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_13__** @ngx_rtmp_live_get_stream(%struct.TYPE_12__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_13__**, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca %struct.TYPE_13__**, align 8
  %10 = alloca i64, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %12 = load i32, i32* @ngx_rtmp_live_module, align 4
  %13 = call %struct.TYPE_14__* @ngx_rtmp_get_module_app_conf(%struct.TYPE_12__* %11, i32 %12)
  store %struct.TYPE_14__* %13, %struct.TYPE_14__** %8, align 8
  %14 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %15 = icmp eq %struct.TYPE_14__* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  store %struct.TYPE_13__** null, %struct.TYPE_13__*** %4, align 8
  br label %102

17:                                               ; preds = %3
  %18 = load i32*, i32** %6, align 8
  %19 = call i64 @ngx_strlen(i32* %18)
  store i64 %19, i64* %10, align 8
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i32 0, i32 3
  %22 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %21, align 8
  %23 = load i32*, i32** %6, align 8
  %24 = load i64, i64* %10, align 8
  %25 = call i64 @ngx_hash_key(i32* %23, i64 %24)
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = urem i64 %25, %28
  %30 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %22, i64 %29
  store %struct.TYPE_13__** %30, %struct.TYPE_13__*** %9, align 8
  br label %31

31:                                               ; preds = %46, %17
  %32 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %9, align 8
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %32, align 8
  %34 = icmp ne %struct.TYPE_13__* %33, null
  br i1 %34, label %35, label %50

35:                                               ; preds = %31
  %36 = load i32*, i32** %6, align 8
  %37 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %9, align 8
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i64 @ngx_strcmp(i32* %36, i32 %40)
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %35
  %44 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %9, align 8
  store %struct.TYPE_13__** %44, %struct.TYPE_13__*** %4, align 8
  br label %102

45:                                               ; preds = %35
  br label %46

46:                                               ; preds = %45
  %47 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %9, align 8
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 2
  store %struct.TYPE_13__** %49, %struct.TYPE_13__*** %9, align 8
  br label %31

50:                                               ; preds = %31
  %51 = load i32, i32* %7, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %50
  store %struct.TYPE_13__** null, %struct.TYPE_13__*** %4, align 8
  br label %102

54:                                               ; preds = %50
  %55 = load i32, i32* @NGX_LOG_DEBUG_RTMP, align 4
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32*, i32** %6, align 8
  %62 = call i32 @ngx_log_debug1(i32 %55, i32 %60, i32 0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32* %61)
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %63, i32 0, i32 2
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** %64, align 8
  %66 = icmp ne %struct.TYPE_13__* %65, null
  br i1 %66, label %67, label %79

67:                                               ; preds = %54
  %68 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %68, i32 0, i32 2
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %69, align 8
  %71 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %9, align 8
  store %struct.TYPE_13__* %70, %struct.TYPE_13__** %71, align 8
  %72 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %72, i32 0, i32 2
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i32 0, i32 2
  %76 = load %struct.TYPE_13__*, %struct.TYPE_13__** %75, align 8
  %77 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %78 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %77, i32 0, i32 2
  store %struct.TYPE_13__* %76, %struct.TYPE_13__** %78, align 8
  br label %85

79:                                               ; preds = %54
  %80 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %81 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = call %struct.TYPE_13__* @ngx_palloc(i32 %82, i32 16)
  %84 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %9, align 8
  store %struct.TYPE_13__* %83, %struct.TYPE_13__** %84, align 8
  br label %85

85:                                               ; preds = %79, %67
  %86 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %9, align 8
  %87 = load %struct.TYPE_13__*, %struct.TYPE_13__** %86, align 8
  %88 = call i32 @ngx_memzero(%struct.TYPE_13__* %87, i32 16)
  %89 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %9, align 8
  %90 = load %struct.TYPE_13__*, %struct.TYPE_13__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load i32*, i32** %6, align 8
  %94 = load i64, i64* %10, align 8
  %95 = call i32 @ngx_min(i32 3, i64 %94)
  %96 = call i32 @ngx_memcpy(i32 %92, i32* %93, i32 %95)
  %97 = load i32, i32* @ngx_current_msec, align 4
  %98 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %9, align 8
  %99 = load %struct.TYPE_13__*, %struct.TYPE_13__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %99, i32 0, i32 0
  store i32 %97, i32* %100, align 8
  %101 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %9, align 8
  store %struct.TYPE_13__** %101, %struct.TYPE_13__*** %4, align 8
  br label %102

102:                                              ; preds = %85, %53, %43, %16
  %103 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %4, align 8
  ret %struct.TYPE_13__** %103
}

declare dso_local %struct.TYPE_14__* @ngx_rtmp_get_module_app_conf(%struct.TYPE_12__*, i32) #1

declare dso_local i64 @ngx_strlen(i32*) #1

declare dso_local i64 @ngx_hash_key(i32*, i64) #1

declare dso_local i64 @ngx_strcmp(i32*, i32) #1

declare dso_local i32 @ngx_log_debug1(i32, i32, i32, i8*, i32*) #1

declare dso_local %struct.TYPE_13__* @ngx_palloc(i32, i32) #1

declare dso_local i32 @ngx_memzero(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @ngx_memcpy(i32, i32*, i32) #1

declare dso_local i32 @ngx_min(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
