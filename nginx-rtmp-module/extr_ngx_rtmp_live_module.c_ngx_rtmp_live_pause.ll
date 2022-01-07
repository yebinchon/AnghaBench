; ModuleID = '/home/carl/AnghaBench/nginx-rtmp-module/extr_ngx_rtmp_live_module.c_ngx_rtmp_live_pause.c'
source_filename = "/home/carl/AnghaBench/nginx-rtmp-module/extr_ngx_rtmp_live_module.c_ngx_rtmp_live_pause.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_16__ = type { i64, i32 }
%struct.TYPE_17__ = type { i32, i32* }

@ngx_rtmp_live_module = common dso_local global i32 0, align 4
@NGX_LOG_DEBUG_RTMP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"live: pause=%i timestamp=%f\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"NetStream.Pause.Notify\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"status\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"Paused live\00", align 1
@NGX_OK = common dso_local global i64 0, align 8
@NGX_ERROR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [25 x i8] c"NetStream.Unpause.Notify\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"Unpaused live\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*, %struct.TYPE_16__*)* @ngx_rtmp_live_pause to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_rtmp_live_pause(%struct.TYPE_15__* %0, %struct.TYPE_16__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca %struct.TYPE_17__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %4, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %5, align 8
  %7 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %8 = load i32, i32* @ngx_rtmp_live_module, align 4
  %9 = call %struct.TYPE_17__* @ngx_rtmp_get_module_ctx(%struct.TYPE_15__* %7, i32 %8)
  store %struct.TYPE_17__* %9, %struct.TYPE_17__** %6, align 8
  %10 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %11 = icmp eq %struct.TYPE_17__* %10, null
  br i1 %11, label %17, label %12

12:                                               ; preds = %2
  %13 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %12, %2
  br label %62

18:                                               ; preds = %12
  %19 = load i32, i32* @NGX_LOG_DEBUG_RTMP, align 4
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_14__*, %struct.TYPE_14__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = trunc i64 %27 to i32
  %29 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @ngx_log_debug2(i32 %19, i32 %24, i32 0, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %28, i32 %31)
  %33 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %49

37:                                               ; preds = %18
  %38 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %39 = call i64 @ngx_rtmp_send_status(%struct.TYPE_15__* %38, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %40 = load i64, i64* @NGX_OK, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %37
  %43 = load i32, i32* @NGX_ERROR, align 4
  store i32 %43, i32* %3, align 4
  br label %66

44:                                               ; preds = %37
  %45 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %45, i32 0, i32 0
  store i32 1, i32* %46, align 8
  %47 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %48 = call i32 @ngx_rtmp_live_stop(%struct.TYPE_15__* %47)
  br label %61

49:                                               ; preds = %18
  %50 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %51 = call i64 @ngx_rtmp_send_status(%struct.TYPE_15__* %50, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  %52 = load i64, i64* @NGX_OK, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %49
  %55 = load i32, i32* @NGX_ERROR, align 4
  store i32 %55, i32* %3, align 4
  br label %66

56:                                               ; preds = %49
  %57 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %57, i32 0, i32 0
  store i32 0, i32* %58, align 8
  %59 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %60 = call i32 @ngx_rtmp_live_start(%struct.TYPE_15__* %59)
  br label %61

61:                                               ; preds = %56, %44
  br label %62

62:                                               ; preds = %61, %17
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %64 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %65 = call i32 @next_pause(%struct.TYPE_15__* %63, %struct.TYPE_16__* %64)
  store i32 %65, i32* %3, align 4
  br label %66

66:                                               ; preds = %62, %54, %42
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local %struct.TYPE_17__* @ngx_rtmp_get_module_ctx(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @ngx_log_debug2(i32, i32, i32, i8*, i32, i32) #1

declare dso_local i64 @ngx_rtmp_send_status(%struct.TYPE_15__*, i8*, i8*, i8*) #1

declare dso_local i32 @ngx_rtmp_live_stop(%struct.TYPE_15__*) #1

declare dso_local i32 @ngx_rtmp_live_start(%struct.TYPE_15__*) #1

declare dso_local i32 @next_pause(%struct.TYPE_15__*, %struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
