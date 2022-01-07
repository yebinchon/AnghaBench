; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-output.c_get_audio_and_video_packets.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-output.c_get_audio_and_video_packets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.obs_output = type { i32, i32 }
%struct.encoder_packet = type { i32 }

@OBS_ENCODER_VIDEO = common dso_local global i32 0, align 4
@OBS_ENCODER_AUDIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.obs_output*, %struct.encoder_packet**, %struct.encoder_packet**, i64)* @get_audio_and_video_packets to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_audio_and_video_packets(%struct.obs_output* %0, %struct.encoder_packet** %1, %struct.encoder_packet** %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.obs_output*, align 8
  %7 = alloca %struct.encoder_packet**, align 8
  %8 = alloca %struct.encoder_packet**, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.obs_output* %0, %struct.obs_output** %6, align 8
  store %struct.encoder_packet** %1, %struct.encoder_packet*** %7, align 8
  store %struct.encoder_packet** %2, %struct.encoder_packet*** %8, align 8
  store i64 %3, i64* %9, align 8
  %11 = load %struct.obs_output*, %struct.obs_output** %6, align 8
  %12 = load i32, i32* @OBS_ENCODER_VIDEO, align 4
  %13 = call %struct.encoder_packet* @find_first_packet_type(%struct.obs_output* %11, i32 %12, i64 0)
  %14 = load %struct.encoder_packet**, %struct.encoder_packet*** %7, align 8
  store %struct.encoder_packet* %13, %struct.encoder_packet** %14, align 8
  %15 = load %struct.encoder_packet**, %struct.encoder_packet*** %7, align 8
  %16 = load %struct.encoder_packet*, %struct.encoder_packet** %15, align 8
  %17 = icmp ne %struct.encoder_packet* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %4
  %19 = load %struct.obs_output*, %struct.obs_output** %6, align 8
  %20 = getelementptr inbounds %struct.obs_output, %struct.obs_output* %19, i32 0, i32 0
  store i32 0, i32* %20, align 4
  br label %21

21:                                               ; preds = %18, %4
  store i64 0, i64* %10, align 8
  br label %22

22:                                               ; preds = %43, %21
  %23 = load i64, i64* %10, align 8
  %24 = load i64, i64* %9, align 8
  %25 = icmp ult i64 %23, %24
  br i1 %25, label %26, label %46

26:                                               ; preds = %22
  %27 = load %struct.obs_output*, %struct.obs_output** %6, align 8
  %28 = load i32, i32* @OBS_ENCODER_AUDIO, align 4
  %29 = load i64, i64* %10, align 8
  %30 = call %struct.encoder_packet* @find_first_packet_type(%struct.obs_output* %27, i32 %28, i64 %29)
  %31 = load %struct.encoder_packet**, %struct.encoder_packet*** %8, align 8
  %32 = load i64, i64* %10, align 8
  %33 = getelementptr inbounds %struct.encoder_packet*, %struct.encoder_packet** %31, i64 %32
  store %struct.encoder_packet* %30, %struct.encoder_packet** %33, align 8
  %34 = load %struct.encoder_packet**, %struct.encoder_packet*** %8, align 8
  %35 = load i64, i64* %10, align 8
  %36 = getelementptr inbounds %struct.encoder_packet*, %struct.encoder_packet** %34, i64 %35
  %37 = load %struct.encoder_packet*, %struct.encoder_packet** %36, align 8
  %38 = icmp ne %struct.encoder_packet* %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %26
  %40 = load %struct.obs_output*, %struct.obs_output** %6, align 8
  %41 = getelementptr inbounds %struct.obs_output, %struct.obs_output* %40, i32 0, i32 1
  store i32 0, i32* %41, align 4
  store i32 0, i32* %5, align 4
  br label %52

42:                                               ; preds = %26
  br label %43

43:                                               ; preds = %42
  %44 = load i64, i64* %10, align 8
  %45 = add i64 %44, 1
  store i64 %45, i64* %10, align 8
  br label %22

46:                                               ; preds = %22
  %47 = load %struct.encoder_packet**, %struct.encoder_packet*** %7, align 8
  %48 = load %struct.encoder_packet*, %struct.encoder_packet** %47, align 8
  %49 = icmp ne %struct.encoder_packet* %48, null
  br i1 %49, label %51, label %50

50:                                               ; preds = %46
  store i32 0, i32* %5, align 4
  br label %52

51:                                               ; preds = %46
  store i32 1, i32* %5, align 4
  br label %52

52:                                               ; preds = %51, %50, %39
  %53 = load i32, i32* %5, align 4
  ret i32 %53
}

declare dso_local %struct.encoder_packet* @find_first_packet_type(%struct.obs_output*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
