; ModuleID = '/home/carl/AnghaBench/nginx-rtmp-module/extr_ngx_rtmp_relay_module.c_ngx_rtmp_relay_postconfiguration.c'
source_filename = "/home/carl/AnghaBench/nginx-rtmp-module/extr_ngx_rtmp_relay_module.c_ngx_rtmp_relay_postconfiguration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32* }
%struct.TYPE_5__ = type { i32, i32 }

@ngx_rtmp_core_module = common dso_local global i32 0, align 4
@NGX_RTMP_HANDSHAKE_DONE = common dso_local global i64 0, align 8
@ngx_rtmp_relay_handshake_done = common dso_local global i32 0, align 4
@ngx_rtmp_publish = common dso_local global i32 0, align 4
@next_publish = common dso_local global i32 0, align 4
@ngx_rtmp_relay_publish = common dso_local global i32 0, align 4
@ngx_rtmp_play = common dso_local global i32 0, align 4
@next_play = common dso_local global i32 0, align 4
@ngx_rtmp_relay_play = common dso_local global i32 0, align 4
@ngx_rtmp_delete_stream = common dso_local global i32 0, align 4
@next_delete_stream = common dso_local global i32 0, align 4
@ngx_rtmp_relay_delete_stream = common dso_local global i32 0, align 4
@ngx_rtmp_close_stream = common dso_local global i32 0, align 4
@next_close_stream = common dso_local global i32 0, align 4
@ngx_rtmp_relay_close_stream = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"_result\00", align 1
@ngx_rtmp_relay_on_result = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"_error\00", align 1
@ngx_rtmp_relay_on_error = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"onStatus\00", align 1
@ngx_rtmp_relay_on_status = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @ngx_rtmp_relay_postconfiguration to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_rtmp_relay_postconfiguration(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  store i32* %0, i32** %2, align 8
  %6 = load i32*, i32** %2, align 8
  %7 = load i32, i32* @ngx_rtmp_core_module, align 4
  %8 = call %struct.TYPE_4__* @ngx_rtmp_conf_get_module_main_conf(i32* %6, i32 %7)
  store %struct.TYPE_4__* %8, %struct.TYPE_4__** %3, align 8
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 1
  %11 = load i32*, i32** %10, align 8
  %12 = load i64, i64* @NGX_RTMP_HANDSHAKE_DONE, align 8
  %13 = getelementptr inbounds i32, i32* %11, i64 %12
  %14 = call i8* @ngx_array_push(i32* %13)
  %15 = bitcast i8* %14 to i32*
  store i32* %15, i32** %4, align 8
  %16 = load i32, i32* @ngx_rtmp_relay_handshake_done, align 4
  %17 = load i32*, i32** %4, align 8
  store i32 %16, i32* %17, align 4
  %18 = load i32, i32* @ngx_rtmp_publish, align 4
  store i32 %18, i32* @next_publish, align 4
  %19 = load i32, i32* @ngx_rtmp_relay_publish, align 4
  store i32 %19, i32* @ngx_rtmp_publish, align 4
  %20 = load i32, i32* @ngx_rtmp_play, align 4
  store i32 %20, i32* @next_play, align 4
  %21 = load i32, i32* @ngx_rtmp_relay_play, align 4
  store i32 %21, i32* @ngx_rtmp_play, align 4
  %22 = load i32, i32* @ngx_rtmp_delete_stream, align 4
  store i32 %22, i32* @next_delete_stream, align 4
  %23 = load i32, i32* @ngx_rtmp_relay_delete_stream, align 4
  store i32 %23, i32* @ngx_rtmp_delete_stream, align 4
  %24 = load i32, i32* @ngx_rtmp_close_stream, align 4
  store i32 %24, i32* @next_close_stream, align 4
  %25 = load i32, i32* @ngx_rtmp_relay_close_stream, align 4
  store i32 %25, i32* @ngx_rtmp_close_stream, align 4
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = call i8* @ngx_array_push(i32* %27)
  %29 = bitcast i8* %28 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %29, %struct.TYPE_5__** %5, align 8
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 1
  %32 = call i32 @ngx_str_set(i32* %31, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %33 = load i32, i32* @ngx_rtmp_relay_on_result, align 4
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = call i8* @ngx_array_push(i32* %37)
  %39 = bitcast i8* %38 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %39, %struct.TYPE_5__** %5, align 8
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 1
  %42 = call i32 @ngx_str_set(i32* %41, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %43 = load i32, i32* @ngx_rtmp_relay_on_error, align 4
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 4
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = call i8* @ngx_array_push(i32* %47)
  %49 = bitcast i8* %48 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %49, %struct.TYPE_5__** %5, align 8
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 1
  %52 = call i32 @ngx_str_set(i32* %51, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %53 = load i32, i32* @ngx_rtmp_relay_on_status, align 4
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 4
  %56 = load i32, i32* @NGX_OK, align 4
  ret i32 %56
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
