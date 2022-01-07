; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-output.c_default_encoded_callback.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-output.c_default_encoded_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.encoder_packet = type { i64, i32 }
%struct.obs_output = type { i64, i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 (i32, %struct.encoder_packet.0*)* }
%struct.encoder_packet.0 = type opaque

@OBS_ENCODER_AUDIO = common dso_local global i64 0, align 8
@OBS_ENCODER_VIDEO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.encoder_packet*)* @default_encoded_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @default_encoded_callback(i8* %0, %struct.encoder_packet* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.encoder_packet*, align 8
  %5 = alloca %struct.obs_output*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.encoder_packet* %1, %struct.encoder_packet** %4, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.obs_output*
  store %struct.obs_output* %7, %struct.obs_output** %5, align 8
  %8 = load %struct.obs_output*, %struct.obs_output** %5, align 8
  %9 = call i64 @data_active(%struct.obs_output* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %46

11:                                               ; preds = %2
  %12 = load %struct.encoder_packet*, %struct.encoder_packet** %4, align 8
  %13 = getelementptr inbounds %struct.encoder_packet, %struct.encoder_packet* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @OBS_ENCODER_AUDIO, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %23

17:                                               ; preds = %11
  %18 = load %struct.obs_output*, %struct.obs_output** %5, align 8
  %19 = load %struct.encoder_packet*, %struct.encoder_packet** %4, align 8
  %20 = call i32 @get_track_index(%struct.obs_output* %18, %struct.encoder_packet* %19)
  %21 = load %struct.encoder_packet*, %struct.encoder_packet** %4, align 8
  %22 = getelementptr inbounds %struct.encoder_packet, %struct.encoder_packet* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 8
  br label %23

23:                                               ; preds = %17, %11
  %24 = load %struct.obs_output*, %struct.obs_output** %5, align 8
  %25 = getelementptr inbounds %struct.obs_output, %struct.obs_output* %24, i32 0, i32 3
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32 (i32, %struct.encoder_packet.0*)*, i32 (i32, %struct.encoder_packet.0*)** %26, align 8
  %28 = load %struct.obs_output*, %struct.obs_output** %5, align 8
  %29 = getelementptr inbounds %struct.obs_output, %struct.obs_output* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.encoder_packet*, %struct.encoder_packet** %4, align 8
  %33 = bitcast %struct.encoder_packet* %32 to %struct.encoder_packet.0*
  %34 = call i32 %27(i32 %31, %struct.encoder_packet.0* %33)
  %35 = load %struct.encoder_packet*, %struct.encoder_packet** %4, align 8
  %36 = getelementptr inbounds %struct.encoder_packet, %struct.encoder_packet* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @OBS_ENCODER_VIDEO, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %23
  %41 = load %struct.obs_output*, %struct.obs_output** %5, align 8
  %42 = getelementptr inbounds %struct.obs_output, %struct.obs_output* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %42, align 8
  br label %45

45:                                               ; preds = %40, %23
  br label %46

46:                                               ; preds = %45, %2
  %47 = load %struct.obs_output*, %struct.obs_output** %5, align 8
  %48 = getelementptr inbounds %struct.obs_output, %struct.obs_output* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %46
  %52 = load %struct.encoder_packet*, %struct.encoder_packet** %4, align 8
  %53 = call i32 @obs_encoder_packet_release(%struct.encoder_packet* %52)
  br label %54

54:                                               ; preds = %51, %46
  ret void
}

declare dso_local i64 @data_active(%struct.obs_output*) #1

declare dso_local i32 @get_track_index(%struct.obs_output*, %struct.encoder_packet*) #1

declare dso_local i32 @obs_encoder_packet_release(%struct.encoder_packet*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
