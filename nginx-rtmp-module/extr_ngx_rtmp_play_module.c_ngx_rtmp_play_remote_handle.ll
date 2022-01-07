; ModuleID = '/home/carl/AnghaBench/nginx-rtmp-module/extr_ngx_rtmp_play_module.c_ngx_rtmp_play_remote_handle.c'
source_filename = "/home/carl/AnghaBench/nginx-rtmp-module/extr_ngx_rtmp_play_module.c_ngx_rtmp_play_remote_handle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_17__ = type { i64, i64 }

@ngx_rtmp_play_module = common dso_local global i32 0, align 4
@NGX_LOG_DEBUG_RTMP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"play: open remote file\00", align 1
@NGX_OK = common dso_local global i64 0, align 8
@NGX_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*, i8*, i32*)* @ngx_rtmp_play_remote_handle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_rtmp_play_remote_handle(%struct.TYPE_15__* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_16__*, align 8
  %9 = alloca %struct.TYPE_17__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %11, %struct.TYPE_16__** %8, align 8
  %12 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %13 = load i32, i32* @ngx_rtmp_play_module, align 4
  %14 = call %struct.TYPE_17__* @ngx_rtmp_get_module_ctx(%struct.TYPE_15__* %12, i32 %13)
  store %struct.TYPE_17__* %14, %struct.TYPE_17__** %9, align 8
  %15 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %16 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %3
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %21 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %22 = call i32 @ngx_rtmp_play_next_entry(%struct.TYPE_15__* %20, %struct.TYPE_16__* %21)
  store i32 %22, i32* %4, align 4
  br label %56

23:                                               ; preds = %3
  %24 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %25 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %23
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %30 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @ngx_rtmp_play_copy_local_file(%struct.TYPE_15__* %29, i32 %32)
  br label %34

34:                                               ; preds = %28, %23
  %35 = load i32, i32* @NGX_LOG_DEBUG_RTMP, align 4
  %36 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @ngx_log_debug0(i32 %35, i32 %40, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %42 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %43 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i64 @ngx_rtmp_play_open(%struct.TYPE_15__* %42, i32 %45)
  %47 = load i64, i64* @NGX_OK, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %34
  %50 = load i32, i32* @NGX_ERROR, align 4
  store i32 %50, i32* %4, align 4
  br label %56

51:                                               ; preds = %34
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %53 = load i8*, i8** %6, align 8
  %54 = bitcast i8* %53 to %struct.TYPE_16__*
  %55 = call i32 @next_play(%struct.TYPE_15__* %52, %struct.TYPE_16__* %54)
  store i32 %55, i32* %4, align 4
  br label %56

56:                                               ; preds = %51, %49, %19
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local %struct.TYPE_17__* @ngx_rtmp_get_module_ctx(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @ngx_rtmp_play_next_entry(%struct.TYPE_15__*, %struct.TYPE_16__*) #1

declare dso_local i32 @ngx_rtmp_play_copy_local_file(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @ngx_log_debug0(i32, i32, i32, i8*) #1

declare dso_local i64 @ngx_rtmp_play_open(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @next_play(%struct.TYPE_15__*, %struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
