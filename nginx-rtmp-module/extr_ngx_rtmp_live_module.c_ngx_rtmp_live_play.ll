; ModuleID = '/home/carl/AnghaBench/nginx-rtmp-module/extr_ngx_rtmp_live_module.c_ngx_rtmp_live_play.c'
source_filename = "/home/carl/AnghaBench/nginx-rtmp-module/extr_ngx_rtmp_live_module.c_ngx_rtmp_live_play.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_19__ = type { i32, i32, i64, i64, i64 }
%struct.TYPE_21__ = type { i32, i32 }
%struct.TYPE_20__ = type { i32 }

@ngx_rtmp_live_module = common dso_local global i32 0, align 4
@NGX_LOG_DEBUG_RTMP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"live: play: name='%s' start=%uD duration=%uD reset=%d\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"NetStream.Play.Start\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"status\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"Start live\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_18__*, %struct.TYPE_19__*)* @ngx_rtmp_live_play to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_rtmp_live_play(%struct.TYPE_18__* %0, %struct.TYPE_19__* %1) #0 {
  %3 = alloca %struct.TYPE_18__*, align 8
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca %struct.TYPE_21__*, align 8
  %6 = alloca %struct.TYPE_20__*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %3, align 8
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %4, align 8
  %7 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %8 = load i32, i32* @ngx_rtmp_live_module, align 4
  %9 = call %struct.TYPE_21__* @ngx_rtmp_get_module_app_conf(%struct.TYPE_18__* %7, i32 %8)
  store %struct.TYPE_21__* %9, %struct.TYPE_21__** %5, align 8
  %10 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %11 = icmp eq %struct.TYPE_21__* %10, null
  br i1 %11, label %17, label %12

12:                                               ; preds = %2
  %13 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %12, %2
  br label %73

18:                                               ; preds = %12
  %19 = load i32, i32* @NGX_LOG_DEBUG_RTMP, align 4
  %20 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_17__*, %struct.TYPE_17__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %28, i32 0, i32 4
  %30 = load i64, i64* %29, align 8
  %31 = trunc i64 %30 to i32
  %32 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %32, i32 0, i32 3
  %34 = load i64, i64* %33, align 8
  %35 = trunc i64 %34 to i32
  %36 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = trunc i64 %38 to i32
  %40 = call i32 @ngx_log_debug4(i32 %19, i32 %24, i32 0, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %27, i32 %31, i32 %35, i32 %39)
  %41 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %42 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @ngx_rtmp_live_join(%struct.TYPE_18__* %41, i32 %44, i32 0)
  %46 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %47 = load i32, i32* @ngx_rtmp_live_module, align 4
  %48 = call %struct.TYPE_20__* @ngx_rtmp_get_module_ctx(%struct.TYPE_18__* %46, i32 %47)
  store %struct.TYPE_20__* %48, %struct.TYPE_20__** %6, align 8
  %49 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %50 = icmp eq %struct.TYPE_20__* %49, null
  br i1 %50, label %51, label %52

51:                                               ; preds = %18
  br label %73

52:                                               ; preds = %18
  %53 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 4
  %58 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %72, label %62

62:                                               ; preds = %52
  %63 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %72, label %67

67:                                               ; preds = %62
  %68 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %69 = call i32 @ngx_rtmp_send_status(%struct.TYPE_18__* %68, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  %70 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %71 = call i32 @ngx_rtmp_send_sample_access(%struct.TYPE_18__* %70)
  br label %72

72:                                               ; preds = %67, %62, %52
  br label %73

73:                                               ; preds = %72, %51, %17
  %74 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %75 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %76 = call i32 @next_play(%struct.TYPE_18__* %74, %struct.TYPE_19__* %75)
  ret i32 %76
}

declare dso_local %struct.TYPE_21__* @ngx_rtmp_get_module_app_conf(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @ngx_log_debug4(i32, i32, i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @ngx_rtmp_live_join(%struct.TYPE_18__*, i32, i32) #1

declare dso_local %struct.TYPE_20__* @ngx_rtmp_get_module_ctx(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @ngx_rtmp_send_status(%struct.TYPE_18__*, i8*, i8*, i8*) #1

declare dso_local i32 @ngx_rtmp_send_sample_access(%struct.TYPE_18__*) #1

declare dso_local i32 @next_play(%struct.TYPE_18__*, %struct.TYPE_19__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
