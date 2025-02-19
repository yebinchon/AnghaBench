; ModuleID = '/home/carl/AnghaBench/nginx-rtmp-module/extr_ngx_rtmp_mp4_module.c_ngx_rtmp_mp4_parse_ds.c'
source_filename = "/home/carl/AnghaBench/nginx-rtmp-module/extr_ngx_rtmp_mp4_module.c_ngx_rtmp_mp4_parse_ds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64, i32* }

@ngx_rtmp_mp4_module = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i32 0, align 4
@NGX_LOG_DEBUG_RTMP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"mp4: decoder header size=%uz\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i32*, i32*)* @ngx_rtmp_mp4_parse_ds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_rtmp_mp4_parse_ds(%struct.TYPE_9__* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %11 = load i32, i32* @ngx_rtmp_mp4_module, align 4
  %12 = call %struct.TYPE_11__* @ngx_rtmp_get_module_ctx(%struct.TYPE_9__* %10, i32 %11)
  store %struct.TYPE_11__* %12, %struct.TYPE_11__** %8, align 8
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  store %struct.TYPE_10__* %15, %struct.TYPE_10__** %9, align 8
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %17 = icmp eq %struct.TYPE_10__* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i32, i32* @NGX_OK, align 4
  store i32 %19, i32* %4, align 4
  br label %43

20:                                               ; preds = %3
  %21 = load i32*, i32** %6, align 8
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 1
  store i32* %21, i32** %23, align 8
  %24 = load i32*, i32** %7, align 8
  %25 = load i32*, i32** %6, align 8
  %26 = ptrtoint i32* %24 to i64
  %27 = ptrtoint i32* %25 to i64
  %28 = sub i64 %26, %27
  %29 = sdiv exact i64 %28, 4
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 0
  store i64 %29, i64* %31, align 8
  %32 = load i32, i32* @NGX_LOG_DEBUG_RTMP, align 4
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @ngx_log_debug1(i32 %32, i32 %37, i32 0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i64 %40)
  %42 = load i32, i32* @NGX_OK, align 4
  store i32 %42, i32* %4, align 4
  br label %43

43:                                               ; preds = %20, %18
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

declare dso_local %struct.TYPE_11__* @ngx_rtmp_get_module_ctx(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @ngx_log_debug1(i32, i32, i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
