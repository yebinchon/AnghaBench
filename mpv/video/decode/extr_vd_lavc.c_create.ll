; ModuleID = '/home/carl/AnghaBench/mpv/video/decode/extr_vd_lavc.c_create.c'
source_filename = "/home/carl/AnghaBench/mpv/video/decode/extr_vd_lavc.c_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_decoder = type { i32, %struct.mp_filter* }
%struct.mp_filter = type { i32, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.mp_decoder, i32, i32, i32, i32, i8*, i8*, i32, %struct.mp_codec_params*, %struct.TYPE_7__*, i32, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.mp_codec_params = type { i32 }
%struct.mp_stream_info = type { i32, i32 }

@vd_lavc_filter = common dso_local global i32 0, align 4
@MP_PIN_IN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"in\00", align 1
@MP_PIN_OUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"out\00", align 1
@vd_lavc_conf = common dso_local global i32 0, align 4
@control = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mp_decoder* (%struct.mp_filter*, %struct.mp_codec_params*, i8*)* @create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mp_decoder* @create(%struct.mp_filter* %0, %struct.mp_codec_params* %1, i8* %2) #0 {
  %4 = alloca %struct.mp_decoder*, align 8
  %5 = alloca %struct.mp_filter*, align 8
  %6 = alloca %struct.mp_codec_params*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.mp_filter*, align 8
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca %struct.mp_stream_info*, align 8
  store %struct.mp_filter* %0, %struct.mp_filter** %5, align 8
  store %struct.mp_codec_params* %1, %struct.mp_codec_params** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load %struct.mp_filter*, %struct.mp_filter** %5, align 8
  %12 = call %struct.mp_filter* @mp_filter_create(%struct.mp_filter* %11, i32* @vd_lavc_filter)
  store %struct.mp_filter* %12, %struct.mp_filter** %8, align 8
  %13 = load %struct.mp_filter*, %struct.mp_filter** %8, align 8
  %14 = icmp ne %struct.mp_filter* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %3
  store %struct.mp_decoder* null, %struct.mp_decoder** %4, align 8
  br label %107

16:                                               ; preds = %3
  %17 = load %struct.mp_filter*, %struct.mp_filter** %8, align 8
  %18 = load i32, i32* @MP_PIN_IN, align 4
  %19 = call i32 @mp_filter_add_pin(%struct.mp_filter* %17, i32 %18, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %20 = load %struct.mp_filter*, %struct.mp_filter** %8, align 8
  %21 = load i32, i32* @MP_PIN_OUT, align 4
  %22 = call i32 @mp_filter_add_pin(%struct.mp_filter* %20, i32 %21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %23 = load %struct.mp_filter*, %struct.mp_filter** %8, align 8
  %24 = load %struct.mp_filter*, %struct.mp_filter** %5, align 8
  %25 = getelementptr inbounds %struct.mp_filter, %struct.mp_filter* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @mp_log_new(%struct.mp_filter* %23, i32 %26, i32* null)
  %28 = load %struct.mp_filter*, %struct.mp_filter** %8, align 8
  %29 = getelementptr inbounds %struct.mp_filter, %struct.mp_filter* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 4
  %30 = load %struct.mp_filter*, %struct.mp_filter** %8, align 8
  %31 = getelementptr inbounds %struct.mp_filter, %struct.mp_filter* %30, i32 0, i32 2
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %31, align 8
  store %struct.TYPE_6__* %32, %struct.TYPE_6__** %9, align 8
  %33 = load %struct.mp_filter*, %struct.mp_filter** %8, align 8
  %34 = getelementptr inbounds %struct.mp_filter, %struct.mp_filter* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 11
  store i32 %35, i32* %37, align 4
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %39 = load %struct.mp_filter*, %struct.mp_filter** %8, align 8
  %40 = getelementptr inbounds %struct.mp_filter, %struct.mp_filter* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call %struct.TYPE_7__* @m_config_cache_alloc(%struct.TYPE_6__* %38, i32 %41, i32* @vd_lavc_conf)
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 9
  store %struct.TYPE_7__* %42, %struct.TYPE_7__** %44, align 8
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 9
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 10
  store i32 %49, i32* %51, align 8
  %52 = load %struct.mp_codec_params*, %struct.mp_codec_params** %6, align 8
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 8
  store %struct.mp_codec_params* %52, %struct.mp_codec_params** %54, align 8
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %56 = load i8*, i8** %7, align 8
  %57 = call i32 @talloc_strdup(%struct.TYPE_6__* %55, i8* %56)
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 7
  store i32 %57, i32* %59, align 8
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %61 = call i8* @mp_image_pool_new(%struct.TYPE_6__* %60)
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 6
  store i8* %61, i8** %63, align 8
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %65 = call i8* @mp_image_pool_new(%struct.TYPE_6__* %64)
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 5
  store i8* %65, i8** %67, align 8
  %68 = load %struct.mp_filter*, %struct.mp_filter** %8, align 8
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.mp_decoder, %struct.mp_decoder* %70, i32 0, i32 1
  store %struct.mp_filter* %68, %struct.mp_filter** %71, align 8
  %72 = load i32, i32* @control, align 4
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.mp_decoder, %struct.mp_decoder* %74, i32 0, i32 0
  store i32 %72, i32* %75, align 8
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 4
  %78 = call i32 @pthread_mutex_init(i32* %77, i32* null)
  %79 = load %struct.mp_filter*, %struct.mp_filter** %8, align 8
  %80 = call %struct.mp_stream_info* @mp_filter_find_stream_info(%struct.mp_filter* %79)
  store %struct.mp_stream_info* %80, %struct.mp_stream_info** %10, align 8
  %81 = load %struct.mp_stream_info*, %struct.mp_stream_info** %10, align 8
  %82 = icmp ne %struct.mp_stream_info* %81, null
  br i1 %82, label %83, label %94

83:                                               ; preds = %16
  %84 = load %struct.mp_stream_info*, %struct.mp_stream_info** %10, align 8
  %85 = getelementptr inbounds %struct.mp_stream_info, %struct.mp_stream_info* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 3
  store i32 %86, i32* %88, align 8
  %89 = load %struct.mp_stream_info*, %struct.mp_stream_info** %10, align 8
  %90 = getelementptr inbounds %struct.mp_stream_info, %struct.mp_stream_info* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 2
  store i32 %91, i32* %93, align 4
  br label %94

94:                                               ; preds = %83, %16
  %95 = load %struct.mp_filter*, %struct.mp_filter** %8, align 8
  %96 = call i32 @reinit(%struct.mp_filter* %95)
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %104, label %101

101:                                              ; preds = %94
  %102 = load %struct.mp_filter*, %struct.mp_filter** %8, align 8
  %103 = call i32 @talloc_free(%struct.mp_filter* %102)
  store %struct.mp_decoder* null, %struct.mp_decoder** %4, align 8
  br label %107

104:                                              ; preds = %94
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 0
  store %struct.mp_decoder* %106, %struct.mp_decoder** %4, align 8
  br label %107

107:                                              ; preds = %104, %101, %15
  %108 = load %struct.mp_decoder*, %struct.mp_decoder** %4, align 8
  ret %struct.mp_decoder* %108
}

declare dso_local %struct.mp_filter* @mp_filter_create(%struct.mp_filter*, i32*) #1

declare dso_local i32 @mp_filter_add_pin(%struct.mp_filter*, i32, i8*) #1

declare dso_local i32 @mp_log_new(%struct.mp_filter*, i32, i32*) #1

declare dso_local %struct.TYPE_7__* @m_config_cache_alloc(%struct.TYPE_6__*, i32, i32*) #1

declare dso_local i32 @talloc_strdup(%struct.TYPE_6__*, i8*) #1

declare dso_local i8* @mp_image_pool_new(%struct.TYPE_6__*) #1

declare dso_local i32 @pthread_mutex_init(i32*, i32*) #1

declare dso_local %struct.mp_stream_info* @mp_filter_find_stream_info(%struct.mp_filter*) #1

declare dso_local i32 @reinit(%struct.mp_filter*) #1

declare dso_local i32 @talloc_free(%struct.mp_filter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
