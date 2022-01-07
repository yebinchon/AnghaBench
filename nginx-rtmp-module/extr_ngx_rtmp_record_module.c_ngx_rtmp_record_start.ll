; ModuleID = '/home/carl/AnghaBench/nginx-rtmp-module/extr_ngx_rtmp_record_module.c_ngx_rtmp_record_start.c'
source_filename = "/home/carl/AnghaBench/nginx-rtmp-module/extr_ngx_rtmp_record_module.c_ngx_rtmp_record_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_23__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i64 }
%struct.TYPE_21__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_22__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i64, %struct.TYPE_21__* }

@ngx_rtmp_record_module = common dso_local global i32 0, align 4
@NGX_LOG_DEBUG_RTMP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"record: start\00", align 1
@NGX_RTMP_RECORD_OFF = common dso_local global i32 0, align 4
@NGX_RTMP_RECORD_MANUAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_20__*)* @ngx_rtmp_record_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ngx_rtmp_record_start(%struct.TYPE_20__* %0) #0 {
  %2 = alloca %struct.TYPE_20__*, align 8
  %3 = alloca %struct.TYPE_23__*, align 8
  %4 = alloca %struct.TYPE_21__*, align 8
  %5 = alloca %struct.TYPE_22__*, align 8
  %6 = alloca i64, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %2, align 8
  %7 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %8 = load i32, i32* @ngx_rtmp_record_module, align 4
  %9 = call %struct.TYPE_23__* @ngx_rtmp_get_module_app_conf(%struct.TYPE_20__* %7, i32 %8)
  store %struct.TYPE_23__* %9, %struct.TYPE_23__** %3, align 8
  %10 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %11 = icmp eq %struct.TYPE_23__* %10, null
  br i1 %11, label %18, label %12

12:                                               ; preds = %1
  %13 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %12, %1
  br label %66

19:                                               ; preds = %12
  %20 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %21 = load i32, i32* @ngx_rtmp_record_module, align 4
  %22 = call %struct.TYPE_22__* @ngx_rtmp_get_module_ctx(%struct.TYPE_20__* %20, i32 %21)
  store %struct.TYPE_22__* %22, %struct.TYPE_22__** %5, align 8
  %23 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %24 = icmp eq %struct.TYPE_22__* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  br label %66

26:                                               ; preds = %19
  %27 = load i32, i32* @NGX_LOG_DEBUG_RTMP, align 4
  %28 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_16__*, %struct.TYPE_16__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @ngx_log_debug0(i32 %27, i32 %32, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %34 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %35, i32 0, i32 1
  %37 = load %struct.TYPE_21__*, %struct.TYPE_21__** %36, align 8
  store %struct.TYPE_21__* %37, %struct.TYPE_21__** %4, align 8
  store i64 0, i64* %6, align 8
  br label %38

38:                                               ; preds = %61, %26
  %39 = load i64, i64* %6, align 8
  %40 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp slt i64 %39, %43
  br i1 %44, label %45, label %66

45:                                               ; preds = %38
  %46 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_18__*, %struct.TYPE_18__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @NGX_RTMP_RECORD_OFF, align 4
  %52 = load i32, i32* @NGX_RTMP_RECORD_MANUAL, align 4
  %53 = or i32 %51, %52
  %54 = and i32 %50, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %45
  br label %61

57:                                               ; preds = %45
  %58 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %59 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %60 = call i32 @ngx_rtmp_record_node_open(%struct.TYPE_20__* %58, %struct.TYPE_21__* %59)
  br label %61

61:                                               ; preds = %57, %56
  %62 = load i64, i64* %6, align 8
  %63 = add nsw i64 %62, 1
  store i64 %63, i64* %6, align 8
  %64 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %64, i32 1
  store %struct.TYPE_21__* %65, %struct.TYPE_21__** %4, align 8
  br label %38

66:                                               ; preds = %18, %25, %38
  ret void
}

declare dso_local %struct.TYPE_23__* @ngx_rtmp_get_module_app_conf(%struct.TYPE_20__*, i32) #1

declare dso_local %struct.TYPE_22__* @ngx_rtmp_get_module_ctx(%struct.TYPE_20__*, i32) #1

declare dso_local i32 @ngx_log_debug0(i32, i32, i32, i8*) #1

declare dso_local i32 @ngx_rtmp_record_node_open(%struct.TYPE_20__*, %struct.TYPE_21__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
