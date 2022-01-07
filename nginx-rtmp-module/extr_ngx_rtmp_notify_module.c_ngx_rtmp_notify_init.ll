; ModuleID = '/home/carl/AnghaBench/nginx-rtmp-module/extr_ngx_rtmp_notify_module.c_ngx_rtmp_notify_init.c'
source_filename = "/home/carl/AnghaBench/nginx-rtmp-module/extr_ngx_rtmp_notify_module.c_ngx_rtmp_notify_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32 }
%struct.TYPE_18__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32, i32 }
%struct.TYPE_19__ = type { %struct.TYPE_21__, i32, i32, i32, i32 }
%struct.TYPE_21__ = type { i32, i32, %struct.TYPE_17__*, i64 }
%struct.TYPE_20__ = type { i64, i32**, i32 }

@NGX_RTMP_MAX_NAME = common dso_local global i32 0, align 4
@NGX_RTMP_MAX_ARGS = common dso_local global i32 0, align 4
@ngx_rtmp_notify_module = common dso_local global i32 0, align 4
@NGX_RTMP_NOTIFY_UPDATE = common dso_local global i64 0, align 8
@ngx_cached_time = common dso_local global %struct.TYPE_16__* null, align 8
@ngx_rtmp_notify_update = common dso_local global i32 0, align 4
@NGX_LOG_DEBUG_RTMP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"notify: schedule initial update %Mms\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_18__*, i32*, i32*, i32)* @ngx_rtmp_notify_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ngx_rtmp_notify_init(%struct.TYPE_18__* %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_19__*, align 8
  %10 = alloca %struct.TYPE_20__*, align 8
  %11 = alloca %struct.TYPE_21__*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load i32, i32* @NGX_RTMP_MAX_NAME, align 4
  %13 = zext i32 %12 to i64
  %14 = load i32, i32* @NGX_RTMP_MAX_ARGS, align 4
  %15 = zext i32 %14 to i64
  %16 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %17 = load i32, i32* @ngx_rtmp_notify_module, align 4
  %18 = call %struct.TYPE_20__* @ngx_rtmp_get_module_app_conf(%struct.TYPE_18__* %16, i32 %17)
  store %struct.TYPE_20__* %18, %struct.TYPE_20__** %10, align 8
  %19 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %20 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %4
  br label %121

24:                                               ; preds = %4
  %25 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %26 = load i32, i32* @ngx_rtmp_notify_module, align 4
  %27 = call %struct.TYPE_19__* @ngx_rtmp_get_module_ctx(%struct.TYPE_18__* %25, i32 %26)
  store %struct.TYPE_19__* %27, %struct.TYPE_19__** %9, align 8
  %28 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %29 = icmp eq %struct.TYPE_19__* %28, null
  br i1 %29, label %30, label %45

30:                                               ; preds = %24
  %31 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_17__*, %struct.TYPE_17__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call %struct.TYPE_19__* @ngx_pcalloc(i32 %35, i32 40)
  store %struct.TYPE_19__* %36, %struct.TYPE_19__** %9, align 8
  %37 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %38 = icmp eq %struct.TYPE_19__* %37, null
  br i1 %38, label %39, label %40

39:                                               ; preds = %30
  br label %121

40:                                               ; preds = %30
  %41 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %42 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %43 = load i32, i32* @ngx_rtmp_notify_module, align 4
  %44 = call i32 @ngx_rtmp_set_ctx(%struct.TYPE_18__* %41, %struct.TYPE_19__* %42, i32 %43)
  br label %45

45:                                               ; preds = %40, %24
  %46 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %47 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 4
  %49 = load i32*, i32** %6, align 8
  %50 = load i32, i32* @NGX_RTMP_MAX_NAME, align 4
  %51 = call i32 @ngx_memcpy(i32 %48, i32* %49, i32 %50)
  %52 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %53 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 8
  %55 = load i32*, i32** %7, align 8
  %56 = load i32, i32* @NGX_RTMP_MAX_ARGS, align 4
  %57 = call i32 @ngx_memcpy(i32 %54, i32* %55, i32 %56)
  %58 = load i32, i32* %8, align 4
  %59 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %60 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = or i32 %61, %58
  store i32 %62, i32* %60, align 4
  %63 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %64 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %63, i32 0, i32 1
  %65 = load i32**, i32*** %64, align 8
  %66 = load i64, i64* @NGX_RTMP_NOTIFY_UPDATE, align 8
  %67 = getelementptr inbounds i32*, i32** %65, i64 %66
  %68 = load i32*, i32** %67, align 8
  %69 = icmp eq i32* %68, null
  br i1 %69, label %75, label %70

70:                                               ; preds = %45
  %71 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %72 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %70, %45
  br label %121

76:                                               ; preds = %70
  %77 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %78 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %78, i32 0, i32 3
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %76
  br label %121

83:                                               ; preds = %76
  %84 = load %struct.TYPE_16__*, %struct.TYPE_16__** @ngx_cached_time, align 8
  %85 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %88 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %87, i32 0, i32 1
  store i32 %86, i32* %88, align 8
  %89 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %90 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %89, i32 0, i32 0
  store %struct.TYPE_21__* %90, %struct.TYPE_21__** %11, align 8
  %91 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %91, i32 0, i32 0
  %93 = load %struct.TYPE_17__*, %struct.TYPE_17__** %92, align 8
  %94 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %95 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %94, i32 0, i32 2
  store %struct.TYPE_17__* %93, %struct.TYPE_17__** %95, align 8
  %96 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %96, i32 0, i32 0
  %98 = load %struct.TYPE_17__*, %struct.TYPE_17__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %102 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %101, i32 0, i32 1
  store i32 %100, i32* %102, align 4
  %103 = load i32, i32* @ngx_rtmp_notify_update, align 4
  %104 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %105 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %104, i32 0, i32 0
  store i32 %103, i32* %105, align 8
  %106 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %107 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %108 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = call i32 @ngx_add_timer(%struct.TYPE_21__* %106, i64 %109)
  %111 = load i32, i32* @NGX_LOG_DEBUG_RTMP, align 4
  %112 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %112, i32 0, i32 0
  %114 = load %struct.TYPE_17__*, %struct.TYPE_17__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %118 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = call i32 @ngx_log_debug1(i32 %111, i32 %116, i32 0, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i64 %119)
  br label %121

121:                                              ; preds = %83, %82, %75, %39, %23
  ret void
}

declare dso_local %struct.TYPE_20__* @ngx_rtmp_get_module_app_conf(%struct.TYPE_18__*, i32) #1

declare dso_local %struct.TYPE_19__* @ngx_rtmp_get_module_ctx(%struct.TYPE_18__*, i32) #1

declare dso_local %struct.TYPE_19__* @ngx_pcalloc(i32, i32) #1

declare dso_local i32 @ngx_rtmp_set_ctx(%struct.TYPE_18__*, %struct.TYPE_19__*, i32) #1

declare dso_local i32 @ngx_memcpy(i32, i32*, i32) #1

declare dso_local i32 @ngx_add_timer(%struct.TYPE_21__*, i64) #1

declare dso_local i32 @ngx_log_debug1(i32, i32, i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
