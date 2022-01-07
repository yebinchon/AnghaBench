; ModuleID = '/home/carl/AnghaBench/nginx-rtmp-module/extr_ngx_rtmp_play_module.c_ngx_rtmp_play_pause.c'
source_filename = "/home/carl/AnghaBench/nginx-rtmp-module/extr_ngx_rtmp_play_module.c_ngx_rtmp_play_pause.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_19__ = type { i64, i32 }
%struct.TYPE_18__ = type { i32, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i64 }

@ngx_rtmp_play_module = common dso_local global i32 0, align 4
@NGX_INVALID_FILE = common dso_local global i64 0, align 8
@NGX_LOG_DEBUG_RTMP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"play: pause ignored\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"play: pause=%i timestamp=%f\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"NetStream.Pause.Notify\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"status\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"Paused video on demand\00", align 1
@NGX_OK = common dso_local global i64 0, align 8
@NGX_ERROR = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [25 x i8] c"NetStream.Unpause.Notify\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"Unpaused video on demand\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_17__*, %struct.TYPE_19__*)* @ngx_rtmp_play_pause to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_rtmp_play_pause(%struct.TYPE_17__* %0, %struct.TYPE_19__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca %struct.TYPE_18__*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %4, align 8
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %5, align 8
  %7 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %8 = load i32, i32* @ngx_rtmp_play_module, align 4
  %9 = call %struct.TYPE_18__* @ngx_rtmp_get_module_ctx(%struct.TYPE_17__* %7, i32 %8)
  store %struct.TYPE_18__* %9, %struct.TYPE_18__** %6, align 8
  %10 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %11 = icmp eq %struct.TYPE_18__* %10, null
  br i1 %11, label %19, label %12

12:                                               ; preds = %2
  %13 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @NGX_INVALID_FILE, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %12, %2
  br label %73

20:                                               ; preds = %12
  %21 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %33, label %25

25:                                               ; preds = %20
  %26 = load i32, i32* @NGX_LOG_DEBUG_RTMP, align 4
  %27 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @ngx_log_debug0(i32 %26, i32 %31, i32 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %73

33:                                               ; preds = %20
  %34 = load i32, i32* @NGX_LOG_DEBUG_RTMP, align 4
  %35 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_15__*, %struct.TYPE_15__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = trunc i64 %42 to i32
  %44 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @ngx_log_debug2(i32 %34, i32 %39, i32 0, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %43, i32 %46)
  %48 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %62

52:                                               ; preds = %33
  %53 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %54 = call i64 @ngx_rtmp_send_status(%struct.TYPE_17__* %53, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  %55 = load i64, i64* @NGX_OK, align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %52
  %58 = load i32, i32* @NGX_ERROR, align 4
  store i32 %58, i32* %3, align 4
  br label %77

59:                                               ; preds = %52
  %60 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %61 = call i32 @ngx_rtmp_play_do_stop(%struct.TYPE_17__* %60)
  br label %72

62:                                               ; preds = %33
  %63 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %64 = call i64 @ngx_rtmp_send_status(%struct.TYPE_17__* %63, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0))
  %65 = load i64, i64* @NGX_OK, align 8
  %66 = icmp ne i64 %64, %65
  br i1 %66, label %67, label %69

67:                                               ; preds = %62
  %68 = load i32, i32* @NGX_ERROR, align 4
  store i32 %68, i32* %3, align 4
  br label %77

69:                                               ; preds = %62
  %70 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %71 = call i32 @ngx_rtmp_play_do_start(%struct.TYPE_17__* %70)
  br label %72

72:                                               ; preds = %69, %59
  br label %73

73:                                               ; preds = %72, %25, %19
  %74 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %75 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %76 = call i32 @next_pause(%struct.TYPE_17__* %74, %struct.TYPE_19__* %75)
  store i32 %76, i32* %3, align 4
  br label %77

77:                                               ; preds = %73, %67, %57
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local %struct.TYPE_18__* @ngx_rtmp_get_module_ctx(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @ngx_log_debug0(i32, i32, i32, i8*) #1

declare dso_local i32 @ngx_log_debug2(i32, i32, i32, i8*, i32, i32) #1

declare dso_local i64 @ngx_rtmp_send_status(%struct.TYPE_17__*, i8*, i8*, i8*) #1

declare dso_local i32 @ngx_rtmp_play_do_stop(%struct.TYPE_17__*) #1

declare dso_local i32 @ngx_rtmp_play_do_start(%struct.TYPE_17__*) #1

declare dso_local i32 @next_pause(%struct.TYPE_17__*, %struct.TYPE_19__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
