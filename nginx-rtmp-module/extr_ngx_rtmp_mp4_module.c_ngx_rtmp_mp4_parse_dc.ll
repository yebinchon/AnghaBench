; ModuleID = '/home/carl/AnghaBench/nginx-rtmp-module/extr_ngx_rtmp_mp4_module.c_ngx_rtmp_mp4_parse_dc.c'
source_filename = "/home/carl/AnghaBench/nginx-rtmp-module/extr_ngx_rtmp_mp4_module.c_ngx_rtmp_mp4_parse_dc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }

@ngx_rtmp_mp4_module = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i32 0, align 4
@NGX_ERROR = common dso_local global i32 0, align 4
@NGX_RTMP_VIDEO_H264 = common dso_local global i32 0, align 4
@NGX_RTMP_AUDIO_AAC = common dso_local global i32 0, align 4
@NGX_RTMP_AUDIO_MP3 = common dso_local global i32 0, align 4
@NGX_LOG_DEBUG_RTMP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"mp4: decoder descriptor id=%i codec=%i\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, i32*, i32*)* @ngx_rtmp_mp4_parse_dc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_rtmp_mp4_parse_dc(%struct.TYPE_11__* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca i32*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %12 = load i32, i32* @ngx_rtmp_mp4_module, align 4
  %13 = call %struct.TYPE_12__* @ngx_rtmp_get_module_ctx(%struct.TYPE_11__* %11, i32 %12)
  store %struct.TYPE_12__* %13, %struct.TYPE_12__** %9, align 8
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %17 = icmp eq %struct.TYPE_10__* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i32, i32* @NGX_OK, align 4
  store i32 %19, i32* %4, align 4
  br label %61

20:                                               ; preds = %3
  %21 = load i32*, i32** %6, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 13
  %23 = load i32*, i32** %7, align 8
  %24 = icmp ugt i32* %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = load i32, i32* @NGX_ERROR, align 4
  store i32 %26, i32* %4, align 4
  br label %61

27:                                               ; preds = %20
  %28 = load i32*, i32** %6, align 8
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %8, align 4
  %30 = load i32*, i32** %6, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 13
  store i32* %31, i32** %6, align 8
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 0
  store i32* %35, i32** %10, align 8
  %36 = load i32, i32* %8, align 4
  switch i32 %36, label %46 [
    i32 33, label %37
    i32 64, label %40
    i32 102, label %40
    i32 103, label %40
    i32 104, label %40
    i32 105, label %43
    i32 107, label %43
  ]

37:                                               ; preds = %27
  %38 = load i32, i32* @NGX_RTMP_VIDEO_H264, align 4
  %39 = load i32*, i32** %10, align 8
  store i32 %38, i32* %39, align 4
  br label %46

40:                                               ; preds = %27, %27, %27, %27
  %41 = load i32, i32* @NGX_RTMP_AUDIO_AAC, align 4
  %42 = load i32*, i32** %10, align 8
  store i32 %41, i32* %42, align 4
  br label %46

43:                                               ; preds = %27, %27
  %44 = load i32, i32* @NGX_RTMP_AUDIO_MP3, align 4
  %45 = load i32*, i32** %10, align 8
  store i32 %44, i32* %45, align 4
  br label %46

46:                                               ; preds = %27, %43, %40, %37
  %47 = load i32, i32* @NGX_LOG_DEBUG_RTMP, align 4
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %8, align 4
  %54 = load i32*, i32** %10, align 8
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @ngx_log_debug2(i32 %47, i32 %52, i32 0, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %53, i32 %55)
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %58 = load i32*, i32** %6, align 8
  %59 = load i32*, i32** %7, align 8
  %60 = call i32 @ngx_rtmp_mp4_parse_descr(%struct.TYPE_11__* %57, i32* %58, i32* %59)
  store i32 %60, i32* %4, align 4
  br label %61

61:                                               ; preds = %46, %25, %18
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

declare dso_local %struct.TYPE_12__* @ngx_rtmp_get_module_ctx(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @ngx_log_debug2(i32, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @ngx_rtmp_mp4_parse_descr(%struct.TYPE_11__*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
