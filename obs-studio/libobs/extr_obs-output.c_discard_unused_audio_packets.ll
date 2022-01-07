; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-output.c_discard_unused_audio_packets.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-output.c_discard_unused_audio_packets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.obs_output = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, %struct.encoder_packet* }
%struct.encoder_packet = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.obs_output*, i64)* @discard_unused_audio_packets to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @discard_unused_audio_packets(%struct.obs_output* %0, i64 %1) #0 {
  %3 = alloca %struct.obs_output*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.encoder_packet*, align 8
  store %struct.obs_output* %0, %struct.obs_output** %3, align 8
  store i64 %1, i64* %4, align 8
  store i64 0, i64* %5, align 8
  br label %7

7:                                                ; preds = %28, %2
  %8 = load i64, i64* %5, align 8
  %9 = load %struct.obs_output*, %struct.obs_output** %3, align 8
  %10 = getelementptr inbounds %struct.obs_output, %struct.obs_output* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ult i64 %8, %12
  br i1 %13, label %14, label %31

14:                                               ; preds = %7
  %15 = load %struct.obs_output*, %struct.obs_output** %3, align 8
  %16 = getelementptr inbounds %struct.obs_output, %struct.obs_output* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load %struct.encoder_packet*, %struct.encoder_packet** %17, align 8
  %19 = load i64, i64* %5, align 8
  %20 = getelementptr inbounds %struct.encoder_packet, %struct.encoder_packet* %18, i64 %19
  store %struct.encoder_packet* %20, %struct.encoder_packet** %6, align 8
  %21 = load %struct.encoder_packet*, %struct.encoder_packet** %6, align 8
  %22 = getelementptr inbounds %struct.encoder_packet, %struct.encoder_packet* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* %4, align 8
  %25 = icmp sge i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %14
  br label %31

27:                                               ; preds = %14
  br label %28

28:                                               ; preds = %27
  %29 = load i64, i64* %5, align 8
  %30 = add i64 %29, 1
  store i64 %30, i64* %5, align 8
  br label %7

31:                                               ; preds = %26, %7
  %32 = load i64, i64* %5, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %31
  %35 = load %struct.obs_output*, %struct.obs_output** %3, align 8
  %36 = load i64, i64* %5, align 8
  %37 = call i32 @discard_to_idx(%struct.obs_output* %35, i64 %36)
  br label %38

38:                                               ; preds = %34, %31
  ret void
}

declare dso_local i32 @discard_to_idx(%struct.obs_output*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
