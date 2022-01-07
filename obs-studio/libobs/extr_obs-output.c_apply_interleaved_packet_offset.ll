; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-output.c_apply_interleaved_packet_offset.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-output.c_apply_interleaved_packet_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.obs_output = type { i64*, i64 }
%struct.encoder_packet = type { i64, i64, i32, i32, i32 }

@OBS_ENCODER_VIDEO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.obs_output*, %struct.encoder_packet*)* @apply_interleaved_packet_offset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @apply_interleaved_packet_offset(%struct.obs_output* %0, %struct.encoder_packet* %1) #0 {
  %3 = alloca %struct.obs_output*, align 8
  %4 = alloca %struct.encoder_packet*, align 8
  %5 = alloca i64, align 8
  store %struct.obs_output* %0, %struct.obs_output** %3, align 8
  store %struct.encoder_packet* %1, %struct.encoder_packet** %4, align 8
  %6 = load %struct.encoder_packet*, %struct.encoder_packet** %4, align 8
  %7 = getelementptr inbounds %struct.encoder_packet, %struct.encoder_packet* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @OBS_ENCODER_VIDEO, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = load %struct.obs_output*, %struct.obs_output** %3, align 8
  %13 = getelementptr inbounds %struct.obs_output, %struct.obs_output* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  br label %24

15:                                               ; preds = %2
  %16 = load %struct.obs_output*, %struct.obs_output** %3, align 8
  %17 = getelementptr inbounds %struct.obs_output, %struct.obs_output* %16, i32 0, i32 0
  %18 = load i64*, i64** %17, align 8
  %19 = load %struct.encoder_packet*, %struct.encoder_packet** %4, align 8
  %20 = getelementptr inbounds %struct.encoder_packet, %struct.encoder_packet* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds i64, i64* %18, i64 %21
  %23 = load i64, i64* %22, align 8
  br label %24

24:                                               ; preds = %15, %11
  %25 = phi i64 [ %14, %11 ], [ %23, %15 ]
  store i64 %25, i64* %5, align 8
  %26 = load i64, i64* %5, align 8
  %27 = load %struct.encoder_packet*, %struct.encoder_packet** %4, align 8
  %28 = getelementptr inbounds %struct.encoder_packet, %struct.encoder_packet* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 8
  %30 = sext i32 %29 to i64
  %31 = sub nsw i64 %30, %26
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %28, align 8
  %33 = load i64, i64* %5, align 8
  %34 = load %struct.encoder_packet*, %struct.encoder_packet** %4, align 8
  %35 = getelementptr inbounds %struct.encoder_packet, %struct.encoder_packet* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = sext i32 %36 to i64
  %38 = sub nsw i64 %37, %33
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %35, align 4
  %40 = load %struct.encoder_packet*, %struct.encoder_packet** %4, align 8
  %41 = call i32 @packet_dts_usec(%struct.encoder_packet* %40)
  %42 = load %struct.encoder_packet*, %struct.encoder_packet** %4, align 8
  %43 = getelementptr inbounds %struct.encoder_packet, %struct.encoder_packet* %42, i32 0, i32 2
  store i32 %41, i32* %43, align 8
  ret void
}

declare dso_local i32 @packet_dts_usec(%struct.encoder_packet*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
