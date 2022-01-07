; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/libff/libff/extr_ff-audio-decoder.c_decode_frame.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/libff/libff/extr_ff-audio-decoder.c_decode_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ff_decoder = type { i32, %struct.TYPE_12__, i64 }
%struct.TYPE_12__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32* }
%struct.ff_packet = type { %struct.TYPE_13__, i32* }
%struct.TYPE_13__ = type { i64, i32* }
%struct.TYPE_11__ = type { i64, i32 }

@FF_PACKET_EMPTY = common dso_local global i32 0, align 4
@FF_PACKET_FAIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ff_decoder*, %struct.ff_packet*, %struct.TYPE_11__*, i32*)* @decode_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_frame(%struct.ff_decoder* %0, %struct.ff_packet* %1, %struct.TYPE_11__* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ff_decoder*, align 8
  %7 = alloca %struct.ff_packet*, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ff_decoder* %0, %struct.ff_decoder** %6, align 8
  store %struct.ff_packet* %1, %struct.ff_packet** %7, align 8
  store %struct.TYPE_11__* %2, %struct.TYPE_11__** %8, align 8
  store i32* %3, i32** %9, align 8
  br label %13

13:                                               ; preds = %4, %51, %126
  %14 = load %struct.ff_decoder*, %struct.ff_decoder** %6, align 8
  %15 = getelementptr inbounds %struct.ff_decoder, %struct.ff_decoder* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %13
  %19 = load %struct.ff_decoder*, %struct.ff_decoder** %6, align 8
  %20 = getelementptr inbounds %struct.ff_decoder, %struct.ff_decoder* %19, i32 0, i32 1
  %21 = load %struct.ff_packet*, %struct.ff_packet** %7, align 8
  %22 = call i32 @packet_queue_get(%struct.TYPE_12__* %20, %struct.ff_packet* %21, i32 0)
  store i32 %22, i32* %11, align 4
  br label %28

23:                                               ; preds = %13
  %24 = load %struct.ff_decoder*, %struct.ff_decoder** %6, align 8
  %25 = getelementptr inbounds %struct.ff_decoder, %struct.ff_decoder* %24, i32 0, i32 1
  %26 = load %struct.ff_packet*, %struct.ff_packet** %7, align 8
  %27 = call i32 @packet_queue_get(%struct.TYPE_12__* %25, %struct.ff_packet* %26, i32 1)
  store i32 %27, i32* %11, align 4
  br label %28

28:                                               ; preds = %23, %18
  %29 = load i32, i32* %11, align 4
  %30 = load i32, i32* @FF_PACKET_EMPTY, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  store i32 0, i32* %5, align 4
  br label %127

33:                                               ; preds = %28
  %34 = load i32, i32* %11, align 4
  %35 = load i32, i32* @FF_PACKET_FAIL, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  store i32 -1, i32* %5, align 4
  br label %127

38:                                               ; preds = %33
  br label %39

39:                                               ; preds = %38
  %40 = load %struct.ff_packet*, %struct.ff_packet** %7, align 8
  %41 = getelementptr inbounds %struct.ff_packet, %struct.ff_packet* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = load %struct.ff_decoder*, %struct.ff_decoder** %6, align 8
  %45 = getelementptr inbounds %struct.ff_decoder, %struct.ff_decoder* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = icmp eq i32* %43, %49
  br i1 %50, label %51, label %56

51:                                               ; preds = %39
  %52 = load %struct.ff_decoder*, %struct.ff_decoder** %6, align 8
  %53 = getelementptr inbounds %struct.ff_decoder, %struct.ff_decoder* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @avcodec_flush_buffers(i32 %54)
  br label %13

56:                                               ; preds = %39
  %57 = load %struct.ff_packet*, %struct.ff_packet** %7, align 8
  %58 = getelementptr inbounds %struct.ff_packet, %struct.ff_packet* %57, i32 0, i32 1
  %59 = load i32*, i32** %58, align 8
  %60 = icmp ne i32* %59, null
  br i1 %60, label %61, label %68

61:                                               ; preds = %56
  %62 = load %struct.ff_decoder*, %struct.ff_decoder** %6, align 8
  %63 = load %struct.ff_packet*, %struct.ff_packet** %7, align 8
  %64 = call i32 @handle_reset_packet(%struct.ff_decoder* %62, %struct.ff_packet* %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %61
  store i32 -1, i32* %5, align 4
  br label %127

67:                                               ; preds = %61
  br label %68

68:                                               ; preds = %67, %56
  br label %69

69:                                               ; preds = %100, %68
  %70 = load %struct.ff_packet*, %struct.ff_packet** %7, align 8
  %71 = getelementptr inbounds %struct.ff_packet, %struct.ff_packet* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = icmp sgt i64 %73, 0
  br i1 %74, label %75, label %116

75:                                               ; preds = %69
  %76 = load %struct.ff_decoder*, %struct.ff_decoder** %6, align 8
  %77 = load %struct.ff_packet*, %struct.ff_packet** %7, align 8
  %78 = call i32 @drop_late_packets(%struct.ff_decoder* %76, %struct.ff_packet* %77)
  %79 = load %struct.ff_decoder*, %struct.ff_decoder** %6, align 8
  %80 = getelementptr inbounds %struct.ff_decoder, %struct.ff_decoder* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %83 = load %struct.ff_packet*, %struct.ff_packet** %7, align 8
  %84 = getelementptr inbounds %struct.ff_packet, %struct.ff_packet* %83, i32 0, i32 0
  %85 = call i32 @avcodec_decode_audio4(i32 %81, %struct.TYPE_11__* %82, i32* %12, %struct.TYPE_13__* %84)
  store i32 %85, i32* %10, align 4
  %86 = load i32, i32* %10, align 4
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %75
  br label %116

89:                                               ; preds = %75
  %90 = load %struct.ff_packet*, %struct.ff_packet** %7, align 8
  %91 = load i32, i32* %10, align 4
  %92 = call i32 @shrink_packet(%struct.ff_packet* %90, i32 %91)
  %93 = load i32, i32* %12, align 4
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %100, label %95

95:                                               ; preds = %89
  %96 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = icmp sle i64 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %95, %89
  br label %69

101:                                              ; preds = %95
  %102 = load i32, i32* %12, align 4
  %103 = icmp ne i32 %102, 0
  %104 = zext i1 %103 to i32
  %105 = load i32*, i32** %9, align 8
  store i32 %104, i32* %105, align 4
  %106 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @av_get_bytes_per_sample(i32 %111)
  %113 = sext i32 %112 to i64
  %114 = mul nsw i64 %108, %113
  %115 = trunc i64 %114 to i32
  store i32 %115, i32* %5, align 4
  br label %127

116:                                              ; preds = %88, %69
  %117 = load %struct.ff_packet*, %struct.ff_packet** %7, align 8
  %118 = getelementptr inbounds %struct.ff_packet, %struct.ff_packet* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %118, i32 0, i32 1
  %120 = load i32*, i32** %119, align 8
  %121 = icmp ne i32* %120, null
  br i1 %121, label %122, label %126

122:                                              ; preds = %116
  %123 = load %struct.ff_packet*, %struct.ff_packet** %7, align 8
  %124 = getelementptr inbounds %struct.ff_packet, %struct.ff_packet* %123, i32 0, i32 0
  %125 = call i32 @av_packet_unref(%struct.TYPE_13__* %124)
  br label %126

126:                                              ; preds = %122, %116
  br label %13

127:                                              ; preds = %101, %66, %37, %32
  %128 = load i32, i32* %5, align 4
  ret i32 %128
}

declare dso_local i32 @packet_queue_get(%struct.TYPE_12__*, %struct.ff_packet*, i32) #1

declare dso_local i32 @avcodec_flush_buffers(i32) #1

declare dso_local i32 @handle_reset_packet(%struct.ff_decoder*, %struct.ff_packet*) #1

declare dso_local i32 @drop_late_packets(%struct.ff_decoder*, %struct.ff_packet*) #1

declare dso_local i32 @avcodec_decode_audio4(i32, %struct.TYPE_11__*, i32*, %struct.TYPE_13__*) #1

declare dso_local i32 @shrink_packet(%struct.ff_packet*, i32) #1

declare dso_local i32 @av_get_bytes_per_sample(i32) #1

declare dso_local i32 @av_packet_unref(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
