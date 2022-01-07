; ModuleID = '/home/carl/AnghaBench/mpv/common/extr_encode_lavc.c_encode_lavc_add_stream.c'
source_filename = "/home/carl/AnghaBench/mpv/common/extr_encode_lavc.c_encode_lavc_add_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mux_stream = type { void (i8*)*, i8*, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.encode_lavc_context = type { i32, %struct.encode_priv* }
%struct.encode_priv = type { i32, i32 }
%struct.encoder_stream_info = type { %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i32, i32 }

@.str = private unnamed_addr constant [33 x i8] c"Cannot add a stream at runtime.\0A\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"Encoder was reinitialized; this is not allowed.\0A\00", align 1
@AVMEDIA_TYPE_VIDEO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mux_stream* (%struct.encode_lavc_context*, %struct.encoder_stream_info*, void (i8*)*, i8*)* @encode_lavc_add_stream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mux_stream* @encode_lavc_add_stream(%struct.encode_lavc_context* %0, %struct.encoder_stream_info* %1, void (i8*)* %2, i8* %3) #0 {
  %5 = alloca %struct.encode_lavc_context*, align 8
  %6 = alloca %struct.encoder_stream_info*, align 8
  %7 = alloca void (i8*)*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.encode_priv*, align 8
  %10 = alloca %struct.mux_stream*, align 8
  store %struct.encode_lavc_context* %0, %struct.encode_lavc_context** %5, align 8
  store %struct.encoder_stream_info* %1, %struct.encoder_stream_info** %6, align 8
  store void (i8*)* %2, void (i8*)** %7, align 8
  store i8* %3, i8** %8, align 8
  %11 = load %struct.encode_lavc_context*, %struct.encode_lavc_context** %5, align 8
  %12 = getelementptr inbounds %struct.encode_lavc_context, %struct.encode_lavc_context* %11, i32 0, i32 1
  %13 = load %struct.encode_priv*, %struct.encode_priv** %12, align 8
  store %struct.encode_priv* %13, %struct.encode_priv** %9, align 8
  %14 = load %struct.encode_lavc_context*, %struct.encode_lavc_context** %5, align 8
  %15 = getelementptr inbounds %struct.encode_lavc_context, %struct.encode_lavc_context* %14, i32 0, i32 0
  %16 = call i32 @pthread_mutex_lock(i32* %15)
  %17 = load %struct.encode_lavc_context*, %struct.encode_lavc_context** %5, align 8
  %18 = load %struct.encoder_stream_info*, %struct.encoder_stream_info** %6, align 8
  %19 = getelementptr inbounds %struct.encoder_stream_info, %struct.encoder_stream_info* %18, i32 0, i32 0
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.mux_stream* @find_mux_stream(%struct.encode_lavc_context* %17, i32 %22)
  store %struct.mux_stream* %23, %struct.mux_stream** %10, align 8
  %24 = load %struct.mux_stream*, %struct.mux_stream** %10, align 8
  %25 = icmp ne %struct.mux_stream* %24, null
  br i1 %25, label %31, label %26

26:                                               ; preds = %4
  %27 = load %struct.encode_priv*, %struct.encode_priv** %9, align 8
  %28 = call i32 @MP_ERR(%struct.encode_priv* %27, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %29 = load %struct.encode_priv*, %struct.encode_priv** %9, align 8
  %30 = getelementptr inbounds %struct.encode_priv, %struct.encode_priv* %29, i32 0, i32 0
  store i32 1, i32* %30, align 4
  br label %103

31:                                               ; preds = %4
  %32 = load %struct.mux_stream*, %struct.mux_stream** %10, align 8
  %33 = getelementptr inbounds %struct.mux_stream, %struct.mux_stream* %32, i32 0, i32 2
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = icmp ne %struct.TYPE_4__* %34, null
  br i1 %35, label %36, label %41

36:                                               ; preds = %31
  %37 = load %struct.encode_priv*, %struct.encode_priv** %9, align 8
  %38 = call i32 @MP_ERR(%struct.encode_priv* %37, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  %39 = load %struct.encode_priv*, %struct.encode_priv** %9, align 8
  %40 = getelementptr inbounds %struct.encode_priv, %struct.encode_priv* %39, i32 0, i32 0
  store i32 1, i32* %40, align 4
  store %struct.mux_stream* null, %struct.mux_stream** %10, align 8
  br label %103

41:                                               ; preds = %31
  %42 = load %struct.encode_priv*, %struct.encode_priv** %9, align 8
  %43 = getelementptr inbounds %struct.encode_priv, %struct.encode_priv* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call %struct.TYPE_4__* @avformat_new_stream(i32 %44, i32* null)
  %46 = load %struct.mux_stream*, %struct.mux_stream** %10, align 8
  %47 = getelementptr inbounds %struct.mux_stream, %struct.mux_stream* %46, i32 0, i32 2
  store %struct.TYPE_4__* %45, %struct.TYPE_4__** %47, align 8
  %48 = load %struct.mux_stream*, %struct.mux_stream** %10, align 8
  %49 = getelementptr inbounds %struct.mux_stream, %struct.mux_stream* %48, i32 0, i32 2
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = call i32 @MP_HANDLE_OOM(%struct.TYPE_4__* %50)
  %52 = load %struct.encoder_stream_info*, %struct.encoder_stream_info** %6, align 8
  %53 = getelementptr inbounds %struct.encoder_stream_info, %struct.encoder_stream_info* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.mux_stream*, %struct.mux_stream** %10, align 8
  %56 = getelementptr inbounds %struct.mux_stream, %struct.mux_stream* %55, i32 0, i32 3
  store i32 %54, i32* %56, align 8
  %57 = load %struct.encoder_stream_info*, %struct.encoder_stream_info** %6, align 8
  %58 = getelementptr inbounds %struct.encoder_stream_info, %struct.encoder_stream_info* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.mux_stream*, %struct.mux_stream** %10, align 8
  %61 = getelementptr inbounds %struct.mux_stream, %struct.mux_stream* %60, i32 0, i32 2
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 2
  store i32 %59, i32* %63, align 4
  %64 = load %struct.encoder_stream_info*, %struct.encoder_stream_info** %6, align 8
  %65 = getelementptr inbounds %struct.encoder_stream_info, %struct.encoder_stream_info* %64, i32 0, i32 0
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @AVMEDIA_TYPE_VIDEO, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %81

71:                                               ; preds = %41
  %72 = load %struct.encoder_stream_info*, %struct.encoder_stream_info** %6, align 8
  %73 = getelementptr inbounds %struct.encoder_stream_info, %struct.encoder_stream_info* %72, i32 0, i32 0
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.mux_stream*, %struct.mux_stream** %10, align 8
  %78 = getelementptr inbounds %struct.mux_stream, %struct.mux_stream* %77, i32 0, i32 2
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 1
  store i32 %76, i32* %80, align 4
  br label %81

81:                                               ; preds = %71, %41
  %82 = load %struct.mux_stream*, %struct.mux_stream** %10, align 8
  %83 = getelementptr inbounds %struct.mux_stream, %struct.mux_stream* %82, i32 0, i32 2
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.encoder_stream_info*, %struct.encoder_stream_info** %6, align 8
  %88 = getelementptr inbounds %struct.encoder_stream_info, %struct.encoder_stream_info* %87, i32 0, i32 0
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %88, align 8
  %90 = call i64 @avcodec_parameters_copy(i32 %86, %struct.TYPE_5__* %89)
  %91 = icmp slt i64 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %81
  %93 = call i32 @MP_HANDLE_OOM(%struct.TYPE_4__* null)
  br label %94

94:                                               ; preds = %92, %81
  %95 = load void (i8*)*, void (i8*)** %7, align 8
  %96 = load %struct.mux_stream*, %struct.mux_stream** %10, align 8
  %97 = getelementptr inbounds %struct.mux_stream, %struct.mux_stream* %96, i32 0, i32 0
  store void (i8*)* %95, void (i8*)** %97, align 8
  %98 = load i8*, i8** %8, align 8
  %99 = load %struct.mux_stream*, %struct.mux_stream** %10, align 8
  %100 = getelementptr inbounds %struct.mux_stream, %struct.mux_stream* %99, i32 0, i32 1
  store i8* %98, i8** %100, align 8
  %101 = load %struct.encode_lavc_context*, %struct.encode_lavc_context** %5, align 8
  %102 = call i32 @maybe_init_muxer(%struct.encode_lavc_context* %101)
  br label %103

103:                                              ; preds = %94, %36, %26
  %104 = load %struct.encode_lavc_context*, %struct.encode_lavc_context** %5, align 8
  %105 = getelementptr inbounds %struct.encode_lavc_context, %struct.encode_lavc_context* %104, i32 0, i32 0
  %106 = call i32 @pthread_mutex_unlock(i32* %105)
  %107 = load %struct.mux_stream*, %struct.mux_stream** %10, align 8
  ret %struct.mux_stream* %107
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local %struct.mux_stream* @find_mux_stream(%struct.encode_lavc_context*, i32) #1

declare dso_local i32 @MP_ERR(%struct.encode_priv*, i8*) #1

declare dso_local %struct.TYPE_4__* @avformat_new_stream(i32, i32*) #1

declare dso_local i32 @MP_HANDLE_OOM(%struct.TYPE_4__*) #1

declare dso_local i64 @avcodec_parameters_copy(i32, %struct.TYPE_5__*) #1

declare dso_local i32 @maybe_init_muxer(%struct.encode_lavc_context*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
