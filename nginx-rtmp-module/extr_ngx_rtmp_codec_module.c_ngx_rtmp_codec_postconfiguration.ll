; ModuleID = '/home/carl/AnghaBench/nginx-rtmp-module/extr_ngx_rtmp_codec_module.c_ngx_rtmp_codec_postconfiguration.c'
source_filename = "/home/carl/AnghaBench/nginx-rtmp-module/extr_ngx_rtmp_codec_module.c_ngx_rtmp_codec_postconfiguration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32* }
%struct.TYPE_5__ = type { i8*, i32 }

@ngx_rtmp_core_module = common dso_local global i32 0, align 4
@NGX_RTMP_MSG_AUDIO = common dso_local global i64 0, align 8
@ngx_rtmp_codec_av = common dso_local global i32 0, align 4
@NGX_RTMP_MSG_VIDEO = common dso_local global i64 0, align 8
@NGX_RTMP_DISCONNECT = common dso_local global i64 0, align 8
@ngx_rtmp_codec_disconnect = common dso_local global i32 0, align 4
@NGX_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"@setDataFrame\00", align 1
@ngx_rtmp_codec_meta_data = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"onMetaData\00", align 1
@NGX_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @ngx_rtmp_codec_postconfiguration to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_rtmp_codec_postconfiguration(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  store i32* %0, i32** %3, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = load i32, i32* @ngx_rtmp_core_module, align 4
  %9 = call %struct.TYPE_4__* @ngx_rtmp_conf_get_module_main_conf(i32* %7, i32 %8)
  store %struct.TYPE_4__* %9, %struct.TYPE_4__** %4, align 8
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 1
  %12 = load i32*, i32** %11, align 8
  %13 = load i64, i64* @NGX_RTMP_MSG_AUDIO, align 8
  %14 = getelementptr inbounds i32, i32* %12, i64 %13
  %15 = call i8* @ngx_array_push(i32* %14)
  %16 = bitcast i8* %15 to i32*
  store i32* %16, i32** %5, align 8
  %17 = load i32, i32* @ngx_rtmp_codec_av, align 4
  %18 = load i32*, i32** %5, align 8
  store i32 %17, i32* %18, align 4
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = load i64, i64* @NGX_RTMP_MSG_VIDEO, align 8
  %23 = getelementptr inbounds i32, i32* %21, i64 %22
  %24 = call i8* @ngx_array_push(i32* %23)
  %25 = bitcast i8* %24 to i32*
  store i32* %25, i32** %5, align 8
  %26 = load i32, i32* @ngx_rtmp_codec_av, align 4
  %27 = load i32*, i32** %5, align 8
  store i32 %26, i32* %27, align 4
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = load i64, i64* @NGX_RTMP_DISCONNECT, align 8
  %32 = getelementptr inbounds i32, i32* %30, i64 %31
  %33 = call i8* @ngx_array_push(i32* %32)
  %34 = bitcast i8* %33 to i32*
  store i32* %34, i32** %5, align 8
  %35 = load i32, i32* @ngx_rtmp_codec_disconnect, align 4
  %36 = load i32*, i32** %5, align 8
  store i32 %35, i32* %36, align 4
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = call i8* @ngx_array_push(i32* %38)
  %40 = bitcast i8* %39 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %40, %struct.TYPE_5__** %6, align 8
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %42 = icmp eq %struct.TYPE_5__* %41, null
  br i1 %42, label %43, label %45

43:                                               ; preds = %1
  %44 = load i32, i32* @NGX_ERROR, align 4
  store i32 %44, i32* %2, align 4
  br label %68

45:                                               ; preds = %1
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 1
  %48 = call i32 @ngx_str_set(i32* %47, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %49 = load i8*, i8** @ngx_rtmp_codec_meta_data, align 8
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  store i8* %49, i8** %51, align 8
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = call i8* @ngx_array_push(i32* %53)
  %55 = bitcast i8* %54 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %55, %struct.TYPE_5__** %6, align 8
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %57 = icmp eq %struct.TYPE_5__* %56, null
  br i1 %57, label %58, label %60

58:                                               ; preds = %45
  %59 = load i32, i32* @NGX_ERROR, align 4
  store i32 %59, i32* %2, align 4
  br label %68

60:                                               ; preds = %45
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 1
  %63 = call i32 @ngx_str_set(i32* %62, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %64 = load i8*, i8** @ngx_rtmp_codec_meta_data, align 8
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  store i8* %64, i8** %66, align 8
  %67 = load i32, i32* @NGX_OK, align 4
  store i32 %67, i32* %2, align 4
  br label %68

68:                                               ; preds = %60, %58, %43
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

declare dso_local %struct.TYPE_4__* @ngx_rtmp_conf_get_module_main_conf(i32*, i32) #1

declare dso_local i8* @ngx_array_push(i32*) #1

declare dso_local i32 @ngx_str_set(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
