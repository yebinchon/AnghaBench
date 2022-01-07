; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/libff/libff/extr_ff-video-decoder.c_ff_video_decoder_thread.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/libff/libff/extr_ff-video-decoder.c_ff_video_decoder_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ff_decoder = type { i32, i32*, i32, %struct.TYPE_8__, i64, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.ff_packet = type { %struct.TYPE_9__, i32*, i32 }
%struct.TYPE_9__ = type { i64, i32, i32 }

@FF_PACKET_EMPTY = common dso_local global i32 0, align 4
@FF_PACKET_FAIL = common dso_local global i32 0, align 4
@AV_PKT_FLAG_KEY = common dso_local global i32 0, align 4
@AV_NOPTS_VALUE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @ff_video_decoder_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.ff_decoder*, align 8
  %4 = alloca %struct.ff_packet, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca double, align 8
  store i8* %0, i8** %2, align 8
  %12 = load i8*, i8** %2, align 8
  %13 = bitcast i8* %12 to %struct.ff_decoder*
  store %struct.ff_decoder* %13, %struct.ff_decoder** %3, align 8
  %14 = bitcast %struct.ff_packet* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %14, i8 0, i64 32, i1 false)
  %15 = call i32* (...) @av_frame_alloc()
  store i32* %15, i32** %6, align 8
  br label %16

16:                                               ; preds = %125, %73, %55, %1
  %17 = load %struct.ff_decoder*, %struct.ff_decoder** %3, align 8
  %18 = getelementptr inbounds %struct.ff_decoder, %struct.ff_decoder* %17, i32 0, i32 5
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  br i1 %21, label %22, label %128

22:                                               ; preds = %16
  %23 = load %struct.ff_decoder*, %struct.ff_decoder** %3, align 8
  %24 = getelementptr inbounds %struct.ff_decoder, %struct.ff_decoder* %23, i32 0, i32 4
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %22
  %28 = load %struct.ff_decoder*, %struct.ff_decoder** %3, align 8
  %29 = getelementptr inbounds %struct.ff_decoder, %struct.ff_decoder* %28, i32 0, i32 3
  %30 = call i32 @packet_queue_get(%struct.TYPE_8__* %29, %struct.ff_packet* %4, i32 0)
  store i32 %30, i32* %7, align 4
  br label %35

31:                                               ; preds = %22
  %32 = load %struct.ff_decoder*, %struct.ff_decoder** %3, align 8
  %33 = getelementptr inbounds %struct.ff_decoder, %struct.ff_decoder* %32, i32 0, i32 3
  %34 = call i32 @packet_queue_get(%struct.TYPE_8__* %33, %struct.ff_packet* %4, i32 1)
  store i32 %34, i32* %7, align 4
  br label %35

35:                                               ; preds = %31, %27
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* @FF_PACKET_EMPTY, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %43, label %39

39:                                               ; preds = %35
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* @FF_PACKET_FAIL, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %39, %35
  br label %128

44:                                               ; preds = %39
  %45 = getelementptr inbounds %struct.ff_packet, %struct.ff_packet* %4, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.ff_decoder*, %struct.ff_decoder** %3, align 8
  %49 = getelementptr inbounds %struct.ff_decoder, %struct.ff_decoder* %48, i32 0, i32 3
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp eq i64 %47, %53
  br i1 %54, label %55, label %60

55:                                               ; preds = %44
  %56 = load %struct.ff_decoder*, %struct.ff_decoder** %3, align 8
  %57 = getelementptr inbounds %struct.ff_decoder, %struct.ff_decoder* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @avcodec_flush_buffers(i32 %58)
  br label %16

60:                                               ; preds = %44
  %61 = getelementptr inbounds %struct.ff_packet, %struct.ff_packet* %4, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = icmp ne i32* %62, null
  br i1 %63, label %64, label %80

64:                                               ; preds = %60
  %65 = load %struct.ff_decoder*, %struct.ff_decoder** %3, align 8
  %66 = getelementptr inbounds %struct.ff_decoder, %struct.ff_decoder* %65, i32 0, i32 1
  %67 = load i32*, i32** %66, align 8
  %68 = icmp ne i32* %67, null
  br i1 %68, label %69, label %73

69:                                               ; preds = %64
  %70 = load %struct.ff_decoder*, %struct.ff_decoder** %3, align 8
  %71 = getelementptr inbounds %struct.ff_decoder, %struct.ff_decoder* %70, i32 0, i32 1
  %72 = call i32 @ff_clock_release(i32** %71)
  br label %73

73:                                               ; preds = %69, %64
  %74 = getelementptr inbounds %struct.ff_packet, %struct.ff_packet* %4, i32 0, i32 1
  %75 = call i32* @ff_clock_move(i32** %74)
  %76 = load %struct.ff_decoder*, %struct.ff_decoder** %3, align 8
  %77 = getelementptr inbounds %struct.ff_decoder, %struct.ff_decoder* %76, i32 0, i32 1
  store i32* %75, i32** %77, align 8
  %78 = getelementptr inbounds %struct.ff_packet, %struct.ff_packet* %4, i32 0, i32 0
  %79 = call i32 @av_free_packet(%struct.TYPE_9__* %78)
  br label %16

80:                                               ; preds = %60
  %81 = load %struct.ff_decoder*, %struct.ff_decoder** %3, align 8
  %82 = getelementptr inbounds %struct.ff_decoder, %struct.ff_decoder* %81, i32 0, i32 1
  %83 = load i32*, i32** %82, align 8
  %84 = call i64 @ff_clock_start_time(i32* %83)
  store i64 %84, i64* %9, align 8
  %85 = getelementptr inbounds %struct.ff_packet, %struct.ff_packet* %4, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @AV_PKT_FLAG_KEY, align 4
  %89 = and i32 %87, %88
  store i32 %89, i32* %8, align 4
  %90 = load i32, i32* %8, align 4
  store i32 %90, i32* %10, align 4
  %91 = load i64, i64* %9, align 8
  %92 = load i64, i64* @AV_NOPTS_VALUE, align 8
  %93 = icmp ne i64 %91, %92
  %94 = zext i1 %93 to i32
  %95 = load i32, i32* %10, align 4
  %96 = and i32 %95, %94
  store i32 %96, i32* %10, align 4
  %97 = load i32, i32* %10, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %106

99:                                               ; preds = %80
  %100 = load %struct.ff_decoder*, %struct.ff_decoder** %3, align 8
  %101 = load i64, i64* %9, align 8
  %102 = getelementptr inbounds %struct.ff_packet, %struct.ff_packet* %4, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @ff_decoder_set_frame_drop_state(%struct.ff_decoder* %100, i64 %101, i32 %104)
  br label %106

106:                                              ; preds = %99, %80
  %107 = load %struct.ff_decoder*, %struct.ff_decoder** %3, align 8
  %108 = getelementptr inbounds %struct.ff_decoder, %struct.ff_decoder* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = load i32*, i32** %6, align 8
  %111 = getelementptr inbounds %struct.ff_packet, %struct.ff_packet* %4, i32 0, i32 0
  %112 = call i32 @avcodec_decode_video2(i32 %109, i32* %110, i32* %5, %struct.TYPE_9__* %111)
  %113 = load i32, i32* %5, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %125

115:                                              ; preds = %106
  %116 = load %struct.ff_decoder*, %struct.ff_decoder** %3, align 8
  %117 = load i32*, i32** %6, align 8
  %118 = call double @ff_decoder_get_best_effort_pts(%struct.ff_decoder* %116, i32* %117)
  store double %118, double* %11, align 8
  %119 = load %struct.ff_decoder*, %struct.ff_decoder** %3, align 8
  %120 = load i32*, i32** %6, align 8
  %121 = load double, double* %11, align 8
  %122 = call i32 @queue_frame(%struct.ff_decoder* %119, i32* %120, double %121)
  %123 = load i32*, i32** %6, align 8
  %124 = call i32 @av_frame_unref(i32* %123)
  br label %125

125:                                              ; preds = %115, %106
  %126 = getelementptr inbounds %struct.ff_packet, %struct.ff_packet* %4, i32 0, i32 0
  %127 = call i32 @av_free_packet(%struct.TYPE_9__* %126)
  br label %16

128:                                              ; preds = %43, %16
  %129 = load %struct.ff_decoder*, %struct.ff_decoder** %3, align 8
  %130 = getelementptr inbounds %struct.ff_decoder, %struct.ff_decoder* %129, i32 0, i32 1
  %131 = load i32*, i32** %130, align 8
  %132 = icmp ne i32* %131, null
  br i1 %132, label %133, label %137

133:                                              ; preds = %128
  %134 = load %struct.ff_decoder*, %struct.ff_decoder** %3, align 8
  %135 = getelementptr inbounds %struct.ff_decoder, %struct.ff_decoder* %134, i32 0, i32 1
  %136 = call i32 @ff_clock_release(i32** %135)
  br label %137

137:                                              ; preds = %133, %128
  %138 = call i32 @av_frame_free(i32** %6)
  %139 = load %struct.ff_decoder*, %struct.ff_decoder** %3, align 8
  %140 = getelementptr inbounds %struct.ff_decoder, %struct.ff_decoder* %139, i32 0, i32 0
  store i32 1, i32* %140, align 8
  ret i8* null
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32* @av_frame_alloc(...) #2

declare dso_local i32 @packet_queue_get(%struct.TYPE_8__*, %struct.ff_packet*, i32) #2

declare dso_local i32 @avcodec_flush_buffers(i32) #2

declare dso_local i32 @ff_clock_release(i32**) #2

declare dso_local i32* @ff_clock_move(i32**) #2

declare dso_local i32 @av_free_packet(%struct.TYPE_9__*) #2

declare dso_local i64 @ff_clock_start_time(i32*) #2

declare dso_local i32 @ff_decoder_set_frame_drop_state(%struct.ff_decoder*, i64, i32) #2

declare dso_local i32 @avcodec_decode_video2(i32, i32*, i32*, %struct.TYPE_9__*) #2

declare dso_local double @ff_decoder_get_best_effort_pts(%struct.ff_decoder*, i32*) #2

declare dso_local i32 @queue_frame(%struct.ff_decoder*, i32*, double) #2

declare dso_local i32 @av_frame_unref(i32*) #2

declare dso_local i32 @av_frame_free(i32**) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
