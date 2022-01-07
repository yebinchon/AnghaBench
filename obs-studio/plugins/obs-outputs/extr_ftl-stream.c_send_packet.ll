; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/obs-outputs/extr_ftl-stream.c_send_packet.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/obs-outputs/extr_ftl-stream.c_send_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ftl_stream = type { i32, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i64, i32 }
%struct.encoder_packet = type { i64, i32, i64, i32 }

@OBS_ENCODER_VIDEO = common dso_local global i64 0, align 8
@FTL_VIDEO_DATA = common dso_local global i32 0, align 4
@OBS_ENCODER_AUDIO = common dso_local global i64 0, align 8
@FTL_AUDIO_DATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Got packet type %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ftl_stream*, %struct.encoder_packet*, i32)* @send_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @send_packet(%struct.ftl_stream* %0, %struct.encoder_packet* %1, i32 %2) #0 {
  %4 = alloca %struct.ftl_stream*, align 8
  %5 = alloca %struct.encoder_packet*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_4__*, align 8
  store %struct.ftl_stream* %0, %struct.ftl_stream** %4, align 8
  store %struct.encoder_packet* %1, %struct.encoder_packet** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %11 = load %struct.encoder_packet*, %struct.encoder_packet** %5, align 8
  %12 = getelementptr inbounds %struct.encoder_packet, %struct.encoder_packet* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @OBS_ENCODER_VIDEO, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %73

16:                                               ; preds = %3
  %17 = load %struct.ftl_stream*, %struct.ftl_stream** %4, align 8
  %18 = getelementptr inbounds %struct.ftl_stream, %struct.ftl_stream* %17, i32 0, i32 3
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  store i32 0, i32* %19, align 8
  %20 = load %struct.ftl_stream*, %struct.ftl_stream** %4, align 8
  %21 = load %struct.encoder_packet*, %struct.encoder_packet** %5, align 8
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @avc_get_video_frame(%struct.ftl_stream* %20, %struct.encoder_packet* %21, i32 %22)
  store i32 0, i32* %9, align 4
  br label %24

24:                                               ; preds = %69, %16
  %25 = load i32, i32* %9, align 4
  %26 = load %struct.ftl_stream*, %struct.ftl_stream** %4, align 8
  %27 = getelementptr inbounds %struct.ftl_stream, %struct.ftl_stream* %26, i32 0, i32 3
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp slt i32 %25, %29
  br i1 %30, label %31, label %72

31:                                               ; preds = %24
  %32 = load %struct.ftl_stream*, %struct.ftl_stream** %4, align 8
  %33 = getelementptr inbounds %struct.ftl_stream, %struct.ftl_stream* %32, i32 0, i32 3
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = load i32, i32* %9, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i64 %37
  store %struct.TYPE_4__* %38, %struct.TYPE_4__** %10, align 8
  %39 = load %struct.ftl_stream*, %struct.ftl_stream** %4, align 8
  %40 = getelementptr inbounds %struct.ftl_stream, %struct.ftl_stream* %39, i32 0, i32 1
  %41 = load i32, i32* @FTL_VIDEO_DATA, align 4
  %42 = load %struct.encoder_packet*, %struct.encoder_packet** %5, align 8
  %43 = getelementptr inbounds %struct.encoder_packet, %struct.encoder_packet* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = call i64 @ftl_ingest_send_media_dts(i32* %40, i32 %41, i32 %44, i32 %47, i32 %50, i64 %53)
  %55 = load i32, i32* %7, align 4
  %56 = sext i32 %55 to i64
  %57 = add nsw i64 %56, %54
  %58 = trunc i64 %57 to i32
  store i32 %58, i32* %7, align 4
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %31
  %64 = load %struct.ftl_stream*, %struct.ftl_stream** %4, align 8
  %65 = getelementptr inbounds %struct.ftl_stream, %struct.ftl_stream* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %65, align 8
  br label %68

68:                                               ; preds = %63, %31
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %9, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %9, align 4
  br label %24

72:                                               ; preds = %24
  br label %104

73:                                               ; preds = %3
  %74 = load %struct.encoder_packet*, %struct.encoder_packet** %5, align 8
  %75 = getelementptr inbounds %struct.encoder_packet, %struct.encoder_packet* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @OBS_ENCODER_AUDIO, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %98

79:                                               ; preds = %73
  %80 = load %struct.ftl_stream*, %struct.ftl_stream** %4, align 8
  %81 = getelementptr inbounds %struct.ftl_stream, %struct.ftl_stream* %80, i32 0, i32 1
  %82 = load i32, i32* @FTL_AUDIO_DATA, align 4
  %83 = load %struct.encoder_packet*, %struct.encoder_packet** %5, align 8
  %84 = getelementptr inbounds %struct.encoder_packet, %struct.encoder_packet* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.encoder_packet*, %struct.encoder_packet** %5, align 8
  %87 = getelementptr inbounds %struct.encoder_packet, %struct.encoder_packet* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.encoder_packet*, %struct.encoder_packet** %5, align 8
  %90 = getelementptr inbounds %struct.encoder_packet, %struct.encoder_packet* %89, i32 0, i32 2
  %91 = load i64, i64* %90, align 8
  %92 = trunc i64 %91 to i32
  %93 = call i64 @ftl_ingest_send_media_dts(i32* %81, i32 %82, i32 %85, i32 %88, i32 %92, i64 0)
  %94 = load i32, i32* %7, align 4
  %95 = sext i32 %94 to i64
  %96 = add nsw i64 %95, %93
  %97 = trunc i64 %96 to i32
  store i32 %97, i32* %7, align 4
  br label %103

98:                                               ; preds = %73
  %99 = load %struct.encoder_packet*, %struct.encoder_packet** %5, align 8
  %100 = getelementptr inbounds %struct.encoder_packet, %struct.encoder_packet* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = call i32 @warn(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i64 %101)
  br label %103

103:                                              ; preds = %98, %79
  br label %104

104:                                              ; preds = %103, %72
  %105 = load i32, i32* %6, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %112

107:                                              ; preds = %104
  %108 = load %struct.encoder_packet*, %struct.encoder_packet** %5, align 8
  %109 = getelementptr inbounds %struct.encoder_packet, %struct.encoder_packet* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 8
  %111 = call i32 @bfree(i32 %110)
  br label %115

112:                                              ; preds = %104
  %113 = load %struct.encoder_packet*, %struct.encoder_packet** %5, align 8
  %114 = call i32 @obs_encoder_packet_release(%struct.encoder_packet* %113)
  br label %115

115:                                              ; preds = %112, %107
  %116 = load i32, i32* %7, align 4
  %117 = load %struct.ftl_stream*, %struct.ftl_stream** %4, align 8
  %118 = getelementptr inbounds %struct.ftl_stream, %struct.ftl_stream* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = add nsw i32 %119, %116
  store i32 %120, i32* %118, align 8
  %121 = load i32, i32* %8, align 4
  ret i32 %121
}

declare dso_local i32 @avc_get_video_frame(%struct.ftl_stream*, %struct.encoder_packet*, i32) #1

declare dso_local i64 @ftl_ingest_send_media_dts(i32*, i32, i32, i32, i32, i64) #1

declare dso_local i32 @warn(i8*, i64) #1

declare dso_local i32 @bfree(i32) #1

declare dso_local i32 @obs_encoder_packet_release(%struct.encoder_packet*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
