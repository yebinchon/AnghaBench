; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-output.c_initialize_interleaved_packets.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-output.c_initialize_interleaved_packets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.obs_output = type { i32, %struct.TYPE_4__, i32, i32, %struct.TYPE_3__, i32*, i32 }
%struct.TYPE_4__ = type { i64, %struct.encoder_packet* }
%struct.encoder_packet = type { i64, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@MAX_AUDIO_MIXES = common dso_local global i32 0, align 4
@OBS_ENCODER_AUDIO = common dso_local global i32 0, align 4
@LOG_DEBUG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.obs_output*)* @initialize_interleaved_packets to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @initialize_interleaved_packets(%struct.obs_output* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.obs_output*, align 8
  %4 = alloca %struct.encoder_packet*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.encoder_packet*, align 8
  store %struct.obs_output* %0, %struct.obs_output** %3, align 8
  %16 = load i32, i32* @MAX_AUDIO_MIXES, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %5, align 8
  %19 = alloca %struct.encoder_packet*, i64 %17, align 16
  store i64 %17, i64* %6, align 8
  %20 = load i32, i32* @MAX_AUDIO_MIXES, align 4
  %21 = zext i32 %20 to i64
  %22 = alloca %struct.encoder_packet*, i64 %21, align 16
  store i64 %21, i64* %7, align 8
  %23 = load %struct.obs_output*, %struct.obs_output** %3, align 8
  %24 = call i64 @num_audio_mixes(%struct.obs_output* %23)
  store i64 %24, i64* %8, align 8
  %25 = load %struct.obs_output*, %struct.obs_output** %3, align 8
  %26 = load i64, i64* %8, align 8
  %27 = call i32 @get_audio_and_video_packets(%struct.obs_output* %25, %struct.encoder_packet** %4, %struct.encoder_packet** %19, i64 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %147

30:                                               ; preds = %1
  store i64 0, i64* %11, align 8
  br label %31

31:                                               ; preds = %42, %30
  %32 = load i64, i64* %11, align 8
  %33 = load i64, i64* %8, align 8
  %34 = icmp ult i64 %32, %33
  br i1 %34, label %35, label %45

35:                                               ; preds = %31
  %36 = load %struct.obs_output*, %struct.obs_output** %3, align 8
  %37 = load i32, i32* @OBS_ENCODER_AUDIO, align 4
  %38 = load i64, i64* %11, align 8
  %39 = call %struct.encoder_packet* @find_last_packet_type(%struct.obs_output* %36, i32 %37, i64 %38)
  %40 = load i64, i64* %11, align 8
  %41 = getelementptr inbounds %struct.encoder_packet*, %struct.encoder_packet** %22, i64 %40
  store %struct.encoder_packet* %39, %struct.encoder_packet** %41, align 8
  br label %42

42:                                               ; preds = %35
  %43 = load i64, i64* %11, align 8
  %44 = add i64 %43, 1
  store i64 %44, i64* %11, align 8
  br label %31

45:                                               ; preds = %31
  store i64 0, i64* %12, align 8
  br label %46

46:                                               ; preds = %64, %45
  %47 = load i64, i64* %12, align 8
  %48 = load i64, i64* %8, align 8
  %49 = icmp ult i64 %47, %48
  br i1 %49, label %50, label %67

50:                                               ; preds = %46
  %51 = load i64, i64* %12, align 8
  %52 = getelementptr inbounds %struct.encoder_packet*, %struct.encoder_packet** %22, i64 %51
  %53 = load %struct.encoder_packet*, %struct.encoder_packet** %52, align 8
  %54 = getelementptr inbounds %struct.encoder_packet, %struct.encoder_packet* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.encoder_packet*, %struct.encoder_packet** %4, align 8
  %57 = getelementptr inbounds %struct.encoder_packet, %struct.encoder_packet* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp slt i64 %55, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %50
  %61 = load %struct.obs_output*, %struct.obs_output** %3, align 8
  %62 = getelementptr inbounds %struct.obs_output, %struct.obs_output* %61, i32 0, i32 0
  store i32 0, i32* %62, align 8
  store i32 0, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %147

63:                                               ; preds = %50
  br label %64

64:                                               ; preds = %63
  %65 = load i64, i64* %12, align 8
  %66 = add i64 %65, 1
  store i64 %66, i64* %12, align 8
  br label %46

67:                                               ; preds = %46
  %68 = load %struct.obs_output*, %struct.obs_output** %3, align 8
  %69 = call i64 @get_interleaved_start_idx(%struct.obs_output* %68)
  store i64 %69, i64* %9, align 8
  %70 = load i64, i64* %9, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %82

72:                                               ; preds = %67
  %73 = load %struct.obs_output*, %struct.obs_output** %3, align 8
  %74 = load i64, i64* %9, align 8
  %75 = call i32 @discard_to_idx(%struct.obs_output* %73, i64 %74)
  %76 = load %struct.obs_output*, %struct.obs_output** %3, align 8
  %77 = load i64, i64* %8, align 8
  %78 = call i32 @get_audio_and_video_packets(%struct.obs_output* %76, %struct.encoder_packet** %4, %struct.encoder_packet** %19, i64 %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %81, label %80

80:                                               ; preds = %72
  store i32 0, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %147

81:                                               ; preds = %72
  br label %82

82:                                               ; preds = %81, %67
  %83 = load %struct.encoder_packet*, %struct.encoder_packet** %4, align 8
  %84 = getelementptr inbounds %struct.encoder_packet, %struct.encoder_packet* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.obs_output*, %struct.obs_output** %3, align 8
  %87 = getelementptr inbounds %struct.obs_output, %struct.obs_output* %86, i32 0, i32 6
  store i32 %85, i32* %87, align 8
  store i64 0, i64* %13, align 8
  br label %88

88:                                               ; preds = %103, %82
  %89 = load i64, i64* %13, align 8
  %90 = load i64, i64* %8, align 8
  %91 = icmp ult i64 %89, %90
  br i1 %91, label %92, label %106

92:                                               ; preds = %88
  %93 = load i64, i64* %13, align 8
  %94 = getelementptr inbounds %struct.encoder_packet*, %struct.encoder_packet** %19, i64 %93
  %95 = load %struct.encoder_packet*, %struct.encoder_packet** %94, align 8
  %96 = getelementptr inbounds %struct.encoder_packet, %struct.encoder_packet* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.obs_output*, %struct.obs_output** %3, align 8
  %99 = getelementptr inbounds %struct.obs_output, %struct.obs_output* %98, i32 0, i32 5
  %100 = load i32*, i32** %99, align 8
  %101 = load i64, i64* %13, align 8
  %102 = getelementptr inbounds i32, i32* %100, i64 %101
  store i32 %97, i32* %102, align 4
  br label %103

103:                                              ; preds = %92
  %104 = load i64, i64* %13, align 8
  %105 = add i64 %104, 1
  store i64 %105, i64* %13, align 8
  br label %88

106:                                              ; preds = %88
  %107 = getelementptr inbounds %struct.encoder_packet*, %struct.encoder_packet** %19, i64 0
  %108 = load %struct.encoder_packet*, %struct.encoder_packet** %107, align 16
  %109 = getelementptr inbounds %struct.encoder_packet, %struct.encoder_packet* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = load %struct.obs_output*, %struct.obs_output** %3, align 8
  %112 = getelementptr inbounds %struct.obs_output, %struct.obs_output* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 4
  %114 = sext i32 %113 to i64
  %115 = sub nsw i64 %114, %110
  %116 = trunc i64 %115 to i32
  store i32 %116, i32* %112, align 4
  %117 = load %struct.encoder_packet*, %struct.encoder_packet** %4, align 8
  %118 = getelementptr inbounds %struct.encoder_packet, %struct.encoder_packet* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = load %struct.obs_output*, %struct.obs_output** %3, align 8
  %121 = getelementptr inbounds %struct.obs_output, %struct.obs_output* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 8
  %123 = sext i32 %122 to i64
  %124 = sub nsw i64 %123, %119
  %125 = trunc i64 %124 to i32
  store i32 %125, i32* %121, align 8
  store i64 0, i64* %14, align 8
  br label %126

126:                                              ; preds = %143, %106
  %127 = load i64, i64* %14, align 8
  %128 = load %struct.obs_output*, %struct.obs_output** %3, align 8
  %129 = getelementptr inbounds %struct.obs_output, %struct.obs_output* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = icmp ult i64 %127, %131
  br i1 %132, label %133, label %146

133:                                              ; preds = %126
  %134 = load %struct.obs_output*, %struct.obs_output** %3, align 8
  %135 = getelementptr inbounds %struct.obs_output, %struct.obs_output* %134, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 1
  %137 = load %struct.encoder_packet*, %struct.encoder_packet** %136, align 8
  %138 = load i64, i64* %14, align 8
  %139 = getelementptr inbounds %struct.encoder_packet, %struct.encoder_packet* %137, i64 %138
  store %struct.encoder_packet* %139, %struct.encoder_packet** %15, align 8
  %140 = load %struct.obs_output*, %struct.obs_output** %3, align 8
  %141 = load %struct.encoder_packet*, %struct.encoder_packet** %15, align 8
  %142 = call i32 @apply_interleaved_packet_offset(%struct.obs_output* %140, %struct.encoder_packet* %141)
  br label %143

143:                                              ; preds = %133
  %144 = load i64, i64* %14, align 8
  %145 = add i64 %144, 1
  store i64 %145, i64* %14, align 8
  br label %126

146:                                              ; preds = %126
  store i32 1, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %147

147:                                              ; preds = %146, %80, %60, %29
  %148 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %148)
  %149 = load i32, i32* %2, align 4
  ret i32 %149
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @num_audio_mixes(%struct.obs_output*) #2

declare dso_local i32 @get_audio_and_video_packets(%struct.obs_output*, %struct.encoder_packet**, %struct.encoder_packet**, i64) #2

declare dso_local %struct.encoder_packet* @find_last_packet_type(%struct.obs_output*, i32, i64) #2

declare dso_local i64 @get_interleaved_start_idx(%struct.obs_output*) #2

declare dso_local i32 @discard_to_idx(%struct.obs_output*, i64) #2

declare dso_local i32 @apply_interleaved_packet_offset(%struct.obs_output*, %struct.encoder_packet*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
