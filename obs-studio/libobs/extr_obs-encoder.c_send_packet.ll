; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-encoder.c_send_packet.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-encoder.c_send_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.obs_encoder = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.encoder_callback = type { i32, i32 (i32, %struct.encoder_packet*)*, i32 }
%struct.encoder_packet = type { i32 }

@OBS_ENCODER_VIDEO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.obs_encoder*, %struct.encoder_callback*, %struct.encoder_packet*)* @send_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @send_packet(%struct.obs_encoder* %0, %struct.encoder_callback* %1, %struct.encoder_packet* %2) #0 {
  %4 = alloca %struct.obs_encoder*, align 8
  %5 = alloca %struct.encoder_callback*, align 8
  %6 = alloca %struct.encoder_packet*, align 8
  store %struct.obs_encoder* %0, %struct.obs_encoder** %4, align 8
  store %struct.encoder_callback* %1, %struct.encoder_callback** %5, align 8
  store %struct.encoder_packet* %2, %struct.encoder_packet** %6, align 8
  %7 = load %struct.obs_encoder*, %struct.obs_encoder** %4, align 8
  %8 = getelementptr inbounds %struct.obs_encoder, %struct.obs_encoder* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @OBS_ENCODER_VIDEO, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %23

13:                                               ; preds = %3
  %14 = load %struct.encoder_callback*, %struct.encoder_callback** %5, align 8
  %15 = getelementptr inbounds %struct.encoder_callback, %struct.encoder_callback* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %13
  %19 = load %struct.obs_encoder*, %struct.obs_encoder** %4, align 8
  %20 = load %struct.encoder_callback*, %struct.encoder_callback** %5, align 8
  %21 = load %struct.encoder_packet*, %struct.encoder_packet** %6, align 8
  %22 = call i32 @send_first_video_packet(%struct.obs_encoder* %19, %struct.encoder_callback* %20, %struct.encoder_packet* %21)
  br label %32

23:                                               ; preds = %13, %3
  %24 = load %struct.encoder_callback*, %struct.encoder_callback** %5, align 8
  %25 = getelementptr inbounds %struct.encoder_callback, %struct.encoder_callback* %24, i32 0, i32 1
  %26 = load i32 (i32, %struct.encoder_packet*)*, i32 (i32, %struct.encoder_packet*)** %25, align 8
  %27 = load %struct.encoder_callback*, %struct.encoder_callback** %5, align 8
  %28 = getelementptr inbounds %struct.encoder_callback, %struct.encoder_callback* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.encoder_packet*, %struct.encoder_packet** %6, align 8
  %31 = call i32 %26(i32 %29, %struct.encoder_packet* %30)
  br label %32

32:                                               ; preds = %23, %18
  ret void
}

declare dso_local i32 @send_first_video_packet(%struct.obs_encoder*, %struct.encoder_callback*, %struct.encoder_packet*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
