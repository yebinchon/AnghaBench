; ModuleID = '/home/carl/AnghaBench/nginx-rtmp-module/extr_ngx_rtmp_flv_module.c_ngx_rtmp_flv_stop.c'
source_filename = "/home/carl/AnghaBench/nginx-rtmp-module/extr_ngx_rtmp_flv_module.c_ngx_rtmp_flv_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@ngx_rtmp_flv_module = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i32 0, align 4
@NGX_LOG_DEBUG_RTMP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"flv: stop\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32*)* @ngx_rtmp_flv_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_rtmp_flv_stop(%struct.TYPE_6__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %8 = load i32, i32* @ngx_rtmp_flv_module, align 4
  %9 = call i32* @ngx_rtmp_get_module_ctx(%struct.TYPE_6__* %7, i32 %8)
  store i32* %9, i32** %6, align 8
  %10 = load i32*, i32** %6, align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* @NGX_OK, align 4
  store i32 %13, i32* %3, align 4
  br label %23

14:                                               ; preds = %2
  %15 = load i32, i32* @NGX_LOG_DEBUG_RTMP, align 4
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @ngx_log_debug0(i32 %15, i32 %20, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @NGX_OK, align 4
  store i32 %22, i32* %3, align 4
  br label %23

23:                                               ; preds = %14, %12
  %24 = load i32, i32* %3, align 4
  ret i32 %24
}

declare dso_local i32* @ngx_rtmp_get_module_ctx(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @ngx_log_debug0(i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
