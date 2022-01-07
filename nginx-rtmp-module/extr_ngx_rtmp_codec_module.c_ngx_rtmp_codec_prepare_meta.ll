; ModuleID = '/home/carl/AnghaBench/nginx-rtmp-module/extr_ngx_rtmp_codec_module.c_ngx_rtmp_codec_prepare_meta.c'
source_filename = "/home/carl/AnghaBench/nginx-rtmp-module/extr_ngx_rtmp_codec_module.c_ngx_rtmp_codec_prepare_meta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }

@ngx_rtmp_codec_module = common dso_local global i32 0, align 4
@NGX_RTMP_CSID_AMF = common dso_local global i32 0, align 4
@NGX_RTMP_MSID = common dso_local global i32 0, align 4
@NGX_RTMP_MSG_AMF_META = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @ngx_rtmp_codec_prepare_meta to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_rtmp_codec_prepare_meta(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__, align 4
  %6 = alloca %struct.TYPE_7__*, align 8
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32*, i32** %3, align 8
  %8 = load i32, i32* @ngx_rtmp_codec_module, align 4
  %9 = call %struct.TYPE_7__* @ngx_rtmp_get_module_ctx(i32* %7, i32 %8)
  store %struct.TYPE_7__* %9, %struct.TYPE_7__** %6, align 8
  %10 = call i32 @ngx_memzero(%struct.TYPE_6__* %5, i32 16)
  %11 = load i32, i32* @NGX_RTMP_CSID_AMF, align 4
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 3
  store i32 %11, i32* %12, align 4
  %13 = load i32, i32* @NGX_RTMP_MSID, align 4
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 2
  store i32 %13, i32* %14, align 4
  %15 = load i32, i32* @NGX_RTMP_MSG_AMF_META, align 4
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 1
  store i32 %15, i32* %16, align 4
  %17 = load i32, i32* %4, align 4
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  store i32 %17, i32* %18, align 4
  %19 = load i32*, i32** %3, align 8
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @ngx_rtmp_prepare_message(i32* %19, %struct.TYPE_6__* %5, i32* null, i32 %22)
  %24 = call i32 (...) @ngx_rtmp_codec_get_next_version()
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* @NGX_OK, align 4
  ret i32 %27
}

declare dso_local %struct.TYPE_7__* @ngx_rtmp_get_module_ctx(i32*, i32) #1

declare dso_local i32 @ngx_memzero(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @ngx_rtmp_prepare_message(i32*, %struct.TYPE_6__*, i32*, i32) #1

declare dso_local i32 @ngx_rtmp_codec_get_next_version(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
