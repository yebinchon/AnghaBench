; ModuleID = '/home/carl/AnghaBench/nginx-rtmp-module/extr_ngx_rtmp_log_module.c_ngx_rtmp_log_set_names.c'
source_filename = "/home/carl/AnghaBench/nginx-rtmp-module/extr_ngx_rtmp_log_module.c_ngx_rtmp_log_set_names.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }

@ngx_rtmp_log_module = common dso_local global i32 0, align 4
@NGX_RTMP_MAX_NAME = common dso_local global i32 0, align 4
@NGX_RTMP_MAX_ARGS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_13__* (%struct.TYPE_12__*, i32*, i32*)* @ngx_rtmp_log_set_names to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_13__* @ngx_rtmp_log_set_names(%struct.TYPE_12__* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %10 = load i32, i32* @ngx_rtmp_log_module, align 4
  %11 = call %struct.TYPE_13__* @ngx_rtmp_get_module_ctx(%struct.TYPE_12__* %9, i32 %10)
  store %struct.TYPE_13__* %11, %struct.TYPE_13__** %8, align 8
  %12 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %13 = icmp eq %struct.TYPE_13__* %12, null
  br i1 %13, label %14, label %29

14:                                               ; preds = %3
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.TYPE_13__* @ngx_pcalloc(i32 %19, i32 8)
  store %struct.TYPE_13__* %20, %struct.TYPE_13__** %8, align 8
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %22 = icmp eq %struct.TYPE_13__* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %14
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %4, align 8
  br label %43

24:                                               ; preds = %14
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %27 = load i32, i32* @ngx_rtmp_log_module, align 4
  %28 = call i32 @ngx_rtmp_set_ctx(%struct.TYPE_12__* %25, %struct.TYPE_13__* %26, i32 %27)
  br label %29

29:                                               ; preds = %24, %3
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32*, i32** %6, align 8
  %34 = load i32, i32* @NGX_RTMP_MAX_NAME, align 4
  %35 = call i32 @ngx_memcpy(i32 %32, i32* %33, i32 %34)
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32*, i32** %7, align 8
  %40 = load i32, i32* @NGX_RTMP_MAX_ARGS, align 4
  %41 = call i32 @ngx_memcpy(i32 %38, i32* %39, i32 %40)
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  store %struct.TYPE_13__* %42, %struct.TYPE_13__** %4, align 8
  br label %43

43:                                               ; preds = %29, %23
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  ret %struct.TYPE_13__* %44
}

declare dso_local %struct.TYPE_13__* @ngx_rtmp_get_module_ctx(%struct.TYPE_12__*, i32) #1

declare dso_local %struct.TYPE_13__* @ngx_pcalloc(i32, i32) #1

declare dso_local i32 @ngx_rtmp_set_ctx(%struct.TYPE_12__*, %struct.TYPE_13__*, i32) #1

declare dso_local i32 @ngx_memcpy(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
