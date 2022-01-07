; ModuleID = '/home/carl/AnghaBench/nginx/src/http/modules/extr_ngx_http_mp4_module.c_ngx_http_mp4_update_stts_atom.c'
source_filename = "/home/carl/AnghaBench/nginx/src/http/modules/extr_ngx_http_mp4_module.c_ngx_http_mp4_update_stts_atom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_16__ = type { i64, i64, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32, i32 }
%struct.TYPE_15__ = type { i32, i32 }

@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"mp4 stts atom update\00", align 1
@NGX_HTTP_MP4_STTS_DATA = common dso_local global i64 0, align 8
@NGX_LOG_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"no mp4 stts atoms were found in \22%s\22\00", align 1
@NGX_ERROR = common dso_local global i64 0, align 8
@NGX_OK = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [27 x i8] c"time-to-sample entries:%uD\00", align 1
@NGX_HTTP_MP4_STTS_ATOM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_17__*, %struct.TYPE_16__*)* @ngx_http_mp4_update_stts_atom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ngx_http_mp4_update_stts_atom(%struct.TYPE_17__* %0, %struct.TYPE_16__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_18__*, align 8
  %8 = alloca %struct.TYPE_18__*, align 8
  %9 = alloca %struct.TYPE_15__*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %4, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %5, align 8
  %10 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %11 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @ngx_log_debug0(i32 %10, i32 %14, i32 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %16, i32 0, i32 2
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %19 = load i64, i64* @NGX_HTTP_MP4_STTS_DATA, align 8
  %20 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_18__*, %struct.TYPE_18__** %21, align 8
  store %struct.TYPE_18__* %22, %struct.TYPE_18__** %8, align 8
  %23 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %24 = icmp eq %struct.TYPE_18__* %23, null
  br i1 %24, label %25, label %38

25:                                               ; preds = %2
  %26 = load i32, i32* @NGX_LOG_ERR, align 4
  %27 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @ngx_log_error(i32 %26, i32 %30, i32 0, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  %37 = load i64, i64* @NGX_ERROR, align 8
  store i64 %37, i64* %3, align 8
  br label %103

38:                                               ; preds = %2
  %39 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %40 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %41 = call i64 @ngx_http_mp4_crop_stts_data(%struct.TYPE_17__* %39, %struct.TYPE_16__* %40, i32 1)
  %42 = load i64, i64* @NGX_OK, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %38
  %45 = load i64, i64* @NGX_ERROR, align 8
  store i64 %45, i64* %3, align 8
  br label %103

46:                                               ; preds = %38
  %47 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %48 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %49 = call i64 @ngx_http_mp4_crop_stts_data(%struct.TYPE_17__* %47, %struct.TYPE_16__* %48, i32 0)
  %50 = load i64, i64* @NGX_OK, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %46
  %53 = load i64, i64* @NGX_ERROR, align 8
  store i64 %53, i64* %3, align 8
  br label %103

54:                                               ; preds = %46
  %55 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %56 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = call i32 @ngx_log_debug1(i32 %55, i32 %59, i32 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i64 %62)
  %64 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = sub nsw i32 %66, %69
  %71 = sext i32 %70 to i64
  %72 = add i64 8, %71
  store i64 %72, i64* %6, align 8
  %73 = load i64, i64* %6, align 8
  %74 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = add i64 %76, %73
  store i64 %77, i64* %75, align 8
  %78 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %78, i32 0, i32 2
  %80 = load %struct.TYPE_14__*, %struct.TYPE_14__** %79, align 8
  %81 = load i64, i64* @NGX_HTTP_MP4_STTS_ATOM, align 8
  %82 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %80, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %82, i32 0, i32 0
  %84 = load %struct.TYPE_18__*, %struct.TYPE_18__** %83, align 8
  store %struct.TYPE_18__* %84, %struct.TYPE_18__** %7, align 8
  %85 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %86 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = sext i32 %87 to i64
  %89 = inttoptr i64 %88 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %89, %struct.TYPE_15__** %9, align 8
  %90 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %91 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load i64, i64* %6, align 8
  %94 = call i32 @ngx_mp4_set_32value(i32 %92, i64 %93)
  %95 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %96 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = call i32 @ngx_mp4_set_32value(i32 %97, i64 %100)
  %102 = load i64, i64* @NGX_OK, align 8
  store i64 %102, i64* %3, align 8
  br label %103

103:                                              ; preds = %54, %52, %44, %25
  %104 = load i64, i64* %3, align 8
  ret i64 %104
}

declare dso_local i32 @ngx_log_debug0(i32, i32, i32, i8*) #1

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*, i32) #1

declare dso_local i64 @ngx_http_mp4_crop_stts_data(%struct.TYPE_17__*, %struct.TYPE_16__*, i32) #1

declare dso_local i32 @ngx_log_debug1(i32, i32, i32, i8*, i64) #1

declare dso_local i32 @ngx_mp4_set_32value(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
