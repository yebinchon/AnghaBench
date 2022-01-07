; ModuleID = '/home/carl/AnghaBench/nginx-rtmp-module/extr_ngx_rtmp_mp4_module.c_ngx_rtmp_mp4_seek.c'
source_filename = "/home/carl/AnghaBench/nginx-rtmp-module/extr_ngx_rtmp_mp4_module.c_ngx_rtmp_mp4_seek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_17__ = type { i64, i64, i32, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i64, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32 }

@ngx_rtmp_mp4_module = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i32 0, align 4
@NGX_LOG_DEBUG_RTMP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"mp4: seek timestamp=%ui\00", align 1
@NGX_RTMP_MSG_VIDEO = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"mp4: track#%ui seek video\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"mp4: track#%ui seek\00", align 1
@ngx_current_msec = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*, i32*, i64)* @ngx_rtmp_mp4_seek to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_rtmp_mp4_seek(%struct.TYPE_15__* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_17__*, align 8
  %9 = alloca %struct.TYPE_16__*, align 8
  %10 = alloca i64, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %12 = load i32, i32* @ngx_rtmp_mp4_module, align 4
  %13 = call %struct.TYPE_17__* @ngx_rtmp_get_module_ctx(%struct.TYPE_15__* %11, i32 %12)
  store %struct.TYPE_17__* %13, %struct.TYPE_17__** %8, align 8
  %14 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %15 = icmp eq %struct.TYPE_17__* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i32, i32* @NGX_OK, align 4
  store i32 %17, i32* %4, align 4
  br label %115

18:                                               ; preds = %3
  %19 = load i32, i32* @NGX_LOG_DEBUG_RTMP, align 4
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_14__*, %struct.TYPE_14__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i64, i64* %7, align 8
  %26 = call i32 @ngx_log_debug1(i32 %19, i32 %24, i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i64 %25)
  store i64 0, i64* %10, align 8
  br label %27

27:                                               ; preds = %64, %18
  %28 = load i64, i64* %10, align 8
  %29 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ult i64 %28, %31
  br i1 %32, label %33, label %67

33:                                               ; preds = %27
  %34 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %34, i32 0, i32 3
  %36 = load %struct.TYPE_16__*, %struct.TYPE_16__** %35, align 8
  %37 = load i64, i64* %10, align 8
  %38 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %36, i64 %37
  store %struct.TYPE_16__* %38, %struct.TYPE_16__** %9, align 8
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %40 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @NGX_RTMP_MSG_VIDEO, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %33
  br label %64

45:                                               ; preds = %33
  %46 = load i32, i32* @NGX_LOG_DEBUG_RTMP, align 4
  %47 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i64, i64* %10, align 8
  %53 = call i32 @ngx_log_debug1(i32 %46, i32 %51, i32 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i64 %52)
  %54 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %55 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %56 = load i64, i64* %7, align 8
  %57 = call i32 @ngx_rtmp_mp4_seek_track(%struct.TYPE_15__* %54, %struct.TYPE_16__* %55, i64 %56)
  %58 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %59 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %60 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i64 @ngx_rtmp_mp4_to_rtmp_timestamp(%struct.TYPE_16__* %58, i32 %62)
  store i64 %63, i64* %7, align 8
  br label %67

64:                                               ; preds = %44
  %65 = load i64, i64* %10, align 8
  %66 = add i64 %65, 1
  store i64 %66, i64* %10, align 8
  br label %27

67:                                               ; preds = %45, %27
  store i64 0, i64* %10, align 8
  br label %68

68:                                               ; preds = %103, %67
  %69 = load i64, i64* %10, align 8
  %70 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp ult i64 %69, %72
  br i1 %73, label %74, label %106

74:                                               ; preds = %68
  %75 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %75, i32 0, i32 3
  %77 = load %struct.TYPE_16__*, %struct.TYPE_16__** %76, align 8
  %78 = load i64, i64* %10, align 8
  %79 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %77, i64 %78
  store %struct.TYPE_16__* %79, %struct.TYPE_16__** %9, align 8
  %80 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %81 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @NGX_RTMP_MSG_VIDEO, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %74
  br label %103

86:                                               ; preds = %74
  %87 = load i32, i32* @NGX_LOG_DEBUG_RTMP, align 4
  %88 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %88, i32 0, i32 0
  %90 = load %struct.TYPE_14__*, %struct.TYPE_14__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load i64, i64* %10, align 8
  %94 = call i32 @ngx_log_debug1(i32 %87, i32 %92, i32 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i64 %93)
  %95 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %96 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %97 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %96, i32 0, i32 3
  %98 = load %struct.TYPE_16__*, %struct.TYPE_16__** %97, align 8
  %99 = load i64, i64* %10, align 8
  %100 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %98, i64 %99
  %101 = load i64, i64* %7, align 8
  %102 = call i32 @ngx_rtmp_mp4_seek_track(%struct.TYPE_15__* %95, %struct.TYPE_16__* %100, i64 %101)
  br label %103

103:                                              ; preds = %86, %85
  %104 = load i64, i64* %10, align 8
  %105 = add i64 %104, 1
  store i64 %105, i64* %10, align 8
  br label %68

106:                                              ; preds = %68
  %107 = load i64, i64* %7, align 8
  %108 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %109 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %108, i32 0, i32 1
  store i64 %107, i64* %109, align 8
  %110 = load i32, i32* @ngx_current_msec, align 4
  %111 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %112 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %111, i32 0, i32 2
  store i32 %110, i32* %112, align 8
  %113 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %114 = call i32 @ngx_rtmp_mp4_reset(%struct.TYPE_15__* %113)
  store i32 %114, i32* %4, align 4
  br label %115

115:                                              ; preds = %106, %16
  %116 = load i32, i32* %4, align 4
  ret i32 %116
}

declare dso_local %struct.TYPE_17__* @ngx_rtmp_get_module_ctx(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @ngx_log_debug1(i32, i32, i32, i8*, i64) #1

declare dso_local i32 @ngx_rtmp_mp4_seek_track(%struct.TYPE_15__*, %struct.TYPE_16__*, i64) #1

declare dso_local i64 @ngx_rtmp_mp4_to_rtmp_timestamp(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @ngx_rtmp_mp4_reset(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
