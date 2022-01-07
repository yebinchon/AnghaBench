; ModuleID = '/home/carl/AnghaBench/nginx-rtmp-module/dash/extr_ngx_rtmp_dash_module.c_ngx_rtmp_dash_postconfiguration.c'
source_filename = "/home/carl/AnghaBench/nginx-rtmp-module/dash/extr_ngx_rtmp_dash_module.c_ngx_rtmp_dash_postconfiguration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32* }

@ngx_rtmp_core_module = common dso_local global i32 0, align 4
@NGX_RTMP_MSG_VIDEO = common dso_local global i64 0, align 8
@ngx_rtmp_dash_video = common dso_local global i32 0, align 4
@NGX_RTMP_MSG_AUDIO = common dso_local global i64 0, align 8
@ngx_rtmp_dash_audio = common dso_local global i32 0, align 4
@ngx_rtmp_publish = common dso_local global i32 0, align 4
@next_publish = common dso_local global i32 0, align 4
@ngx_rtmp_dash_publish = common dso_local global i32 0, align 4
@ngx_rtmp_close_stream = common dso_local global i32 0, align 4
@next_close_stream = common dso_local global i32 0, align 4
@ngx_rtmp_dash_close_stream = common dso_local global i32 0, align 4
@ngx_rtmp_stream_begin = common dso_local global i32 0, align 4
@next_stream_begin = common dso_local global i32 0, align 4
@ngx_rtmp_dash_stream_begin = common dso_local global i32 0, align 4
@ngx_rtmp_stream_eof = common dso_local global i32 0, align 4
@next_stream_eof = common dso_local global i32 0, align 4
@ngx_rtmp_dash_stream_eof = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @ngx_rtmp_dash_postconfiguration to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_rtmp_dash_postconfiguration(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  store i32* %0, i32** %2, align 8
  %5 = load i32*, i32** %2, align 8
  %6 = load i32, i32* @ngx_rtmp_core_module, align 4
  %7 = call %struct.TYPE_3__* @ngx_rtmp_conf_get_module_main_conf(i32* %5, i32 %6)
  store %struct.TYPE_3__* %7, %struct.TYPE_3__** %4, align 8
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = load i64, i64* @NGX_RTMP_MSG_VIDEO, align 8
  %12 = getelementptr inbounds i32, i32* %10, i64 %11
  %13 = call i32* @ngx_array_push(i32* %12)
  store i32* %13, i32** %3, align 8
  %14 = load i32, i32* @ngx_rtmp_dash_video, align 4
  %15 = load i32*, i32** %3, align 8
  store i32 %14, i32* %15, align 4
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = load i64, i64* @NGX_RTMP_MSG_AUDIO, align 8
  %20 = getelementptr inbounds i32, i32* %18, i64 %19
  %21 = call i32* @ngx_array_push(i32* %20)
  store i32* %21, i32** %3, align 8
  %22 = load i32, i32* @ngx_rtmp_dash_audio, align 4
  %23 = load i32*, i32** %3, align 8
  store i32 %22, i32* %23, align 4
  %24 = load i32, i32* @ngx_rtmp_publish, align 4
  store i32 %24, i32* @next_publish, align 4
  %25 = load i32, i32* @ngx_rtmp_dash_publish, align 4
  store i32 %25, i32* @ngx_rtmp_publish, align 4
  %26 = load i32, i32* @ngx_rtmp_close_stream, align 4
  store i32 %26, i32* @next_close_stream, align 4
  %27 = load i32, i32* @ngx_rtmp_dash_close_stream, align 4
  store i32 %27, i32* @ngx_rtmp_close_stream, align 4
  %28 = load i32, i32* @ngx_rtmp_stream_begin, align 4
  store i32 %28, i32* @next_stream_begin, align 4
  %29 = load i32, i32* @ngx_rtmp_dash_stream_begin, align 4
  store i32 %29, i32* @ngx_rtmp_stream_begin, align 4
  %30 = load i32, i32* @ngx_rtmp_stream_eof, align 4
  store i32 %30, i32* @next_stream_eof, align 4
  %31 = load i32, i32* @ngx_rtmp_dash_stream_eof, align 4
  store i32 %31, i32* @ngx_rtmp_stream_eof, align 4
  %32 = load i32, i32* @NGX_OK, align 4
  ret i32 %32
}

declare dso_local %struct.TYPE_3__* @ngx_rtmp_conf_get_module_main_conf(i32*, i32) #1

declare dso_local i32* @ngx_array_push(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
