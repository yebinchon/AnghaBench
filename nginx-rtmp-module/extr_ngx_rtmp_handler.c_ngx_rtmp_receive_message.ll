; ModuleID = '/home/carl/AnghaBench/nginx-rtmp-module/extr_ngx_rtmp_handler.c_ngx_rtmp_receive_message.c'
source_filename = "/home/carl/AnghaBench/nginx-rtmp-module/extr_ngx_rtmp_handler.c_ngx_rtmp_receive_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_20__ = type { i64, i32, i32, i32, i32 }
%struct.TYPE_21__ = type { %struct.TYPE_21__* }
%struct.TYPE_22__ = type { %struct.TYPE_23__* }
%struct.TYPE_23__ = type { i32 (%struct.TYPE_19__*, %struct.TYPE_20__*, %struct.TYPE_21__*)*, i64 }

@ngx_rtmp_core_module = common dso_local global i32 0, align 4
@NGX_RTMP_MSG_MAX = common dso_local global i64 0, align 8
@NGX_LOG_DEBUG_RTMP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"unexpected RTMP message type: %d\00", align 1
@NGX_OK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"nhandlers: %d\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"calling handler %d\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"handler %d failed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ngx_rtmp_receive_message(%struct.TYPE_19__* %0, %struct.TYPE_20__* %1, %struct.TYPE_21__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca %struct.TYPE_20__*, align 8
  %7 = alloca %struct.TYPE_21__*, align 8
  %8 = alloca %struct.TYPE_22__*, align 8
  %9 = alloca %struct.TYPE_23__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32 (%struct.TYPE_19__*, %struct.TYPE_20__*, %struct.TYPE_21__*)**, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %5, align 8
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %6, align 8
  store %struct.TYPE_21__* %2, %struct.TYPE_21__** %7, align 8
  %12 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %13 = load i32, i32* @ngx_rtmp_core_module, align 4
  %14 = call %struct.TYPE_22__* @ngx_rtmp_get_module_main_conf(%struct.TYPE_19__* %12, i32 %13)
  store %struct.TYPE_22__* %14, %struct.TYPE_22__** %8, align 8
  %15 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @NGX_RTMP_MSG_MAX, align 8
  %19 = icmp ugt i64 %17, %18
  br i1 %19, label %20, label %34

20:                                               ; preds = %3
  %21 = load i32, i32* @NGX_LOG_DEBUG_RTMP, align 4
  %22 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_18__*, %struct.TYPE_18__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = trunc i64 %29 to i32
  %31 = sext i32 %30 to i64
  %32 = call i32 @ngx_log_debug1(i32 %21, i32 %26, i32 0, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i64 %31)
  %33 = load i32, i32* @NGX_OK, align 4
  store i32 %33, i32* %4, align 4
  br label %100

34:                                               ; preds = %3
  %35 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_23__*, %struct.TYPE_23__** %36, align 8
  %38 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %37, i64 %40
  store %struct.TYPE_23__* %41, %struct.TYPE_23__** %9, align 8
  %42 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %42, i32 0, i32 0
  %44 = load i32 (%struct.TYPE_19__*, %struct.TYPE_20__*, %struct.TYPE_21__*)*, i32 (%struct.TYPE_19__*, %struct.TYPE_20__*, %struct.TYPE_21__*)** %43, align 8
  %45 = bitcast i32 (%struct.TYPE_19__*, %struct.TYPE_20__*, %struct.TYPE_21__*)* %44 to i32 (%struct.TYPE_19__*, %struct.TYPE_20__*, %struct.TYPE_21__*)**
  store i32 (%struct.TYPE_19__*, %struct.TYPE_20__*, %struct.TYPE_21__*)** %45, i32 (%struct.TYPE_19__*, %struct.TYPE_20__*, %struct.TYPE_21__*)*** %11, align 8
  %46 = load i32, i32* @NGX_LOG_DEBUG_RTMP, align 4
  %47 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_18__*, %struct.TYPE_18__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %53 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = call i32 @ngx_log_debug1(i32 %46, i32 %51, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i64 %54)
  store i64 0, i64* %10, align 8
  br label %56

56:                                               ; preds = %93, %34
  %57 = load i64, i64* %10, align 8
  %58 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %59 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = icmp ult i64 %57, %60
  br i1 %61, label %62, label %98

62:                                               ; preds = %56
  %63 = load i32 (%struct.TYPE_19__*, %struct.TYPE_20__*, %struct.TYPE_21__*)**, i32 (%struct.TYPE_19__*, %struct.TYPE_20__*, %struct.TYPE_21__*)*** %11, align 8
  %64 = icmp ne i32 (%struct.TYPE_19__*, %struct.TYPE_20__*, %struct.TYPE_21__*)** %63, null
  br i1 %64, label %66, label %65

65:                                               ; preds = %62
  br label %93

66:                                               ; preds = %62
  %67 = load i32, i32* @NGX_LOG_DEBUG_RTMP, align 4
  %68 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_18__*, %struct.TYPE_18__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i64, i64* %10, align 8
  %74 = call i32 @ngx_log_debug1(i32 %67, i32 %72, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i64 %73)
  %75 = load i32 (%struct.TYPE_19__*, %struct.TYPE_20__*, %struct.TYPE_21__*)**, i32 (%struct.TYPE_19__*, %struct.TYPE_20__*, %struct.TYPE_21__*)*** %11, align 8
  %76 = load i32 (%struct.TYPE_19__*, %struct.TYPE_20__*, %struct.TYPE_21__*)*, i32 (%struct.TYPE_19__*, %struct.TYPE_20__*, %struct.TYPE_21__*)** %75, align 8
  %77 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %78 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %79 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %80 = call i32 %76(%struct.TYPE_19__* %77, %struct.TYPE_20__* %78, %struct.TYPE_21__* %79)
  switch i32 %80, label %92 [
    i32 128, label %81
    i32 129, label %90
  ]

81:                                               ; preds = %66
  %82 = load i32, i32* @NGX_LOG_DEBUG_RTMP, align 4
  %83 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %83, i32 0, i32 0
  %85 = load %struct.TYPE_18__*, %struct.TYPE_18__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i64, i64* %10, align 8
  %89 = call i32 @ngx_log_debug1(i32 %82, i32 %87, i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i64 %88)
  store i32 128, i32* %4, align 4
  br label %100

90:                                               ; preds = %66
  %91 = load i32, i32* @NGX_OK, align 4
  store i32 %91, i32* %4, align 4
  br label %100

92:                                               ; preds = %66
  br label %93

93:                                               ; preds = %92, %65
  %94 = load i64, i64* %10, align 8
  %95 = add i64 %94, 1
  store i64 %95, i64* %10, align 8
  %96 = load i32 (%struct.TYPE_19__*, %struct.TYPE_20__*, %struct.TYPE_21__*)**, i32 (%struct.TYPE_19__*, %struct.TYPE_20__*, %struct.TYPE_21__*)*** %11, align 8
  %97 = getelementptr inbounds i32 (%struct.TYPE_19__*, %struct.TYPE_20__*, %struct.TYPE_21__*)*, i32 (%struct.TYPE_19__*, %struct.TYPE_20__*, %struct.TYPE_21__*)** %96, i32 1
  store i32 (%struct.TYPE_19__*, %struct.TYPE_20__*, %struct.TYPE_21__*)** %97, i32 (%struct.TYPE_19__*, %struct.TYPE_20__*, %struct.TYPE_21__*)*** %11, align 8
  br label %56

98:                                               ; preds = %56
  %99 = load i32, i32* @NGX_OK, align 4
  store i32 %99, i32* %4, align 4
  br label %100

100:                                              ; preds = %98, %90, %81, %20
  %101 = load i32, i32* %4, align 4
  ret i32 %101
}

declare dso_local %struct.TYPE_22__* @ngx_rtmp_get_module_main_conf(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @ngx_log_debug1(i32, i32, i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
