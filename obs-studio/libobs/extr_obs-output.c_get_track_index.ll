; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-output.c_get_track_index.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-output.c_get_track_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.obs_output = type { %struct.obs_encoder** }
%struct.obs_encoder = type { i32 }
%struct.encoder_packet = type { %struct.obs_encoder* }

@MAX_AUDIO_MIXES = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.obs_output*, %struct.encoder_packet*)* @get_track_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @get_track_index(%struct.obs_output* %0, %struct.encoder_packet* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.obs_output*, align 8
  %5 = alloca %struct.encoder_packet*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.obs_encoder*, align 8
  store %struct.obs_output* %0, %struct.obs_output** %4, align 8
  store %struct.encoder_packet* %1, %struct.encoder_packet** %5, align 8
  store i64 0, i64* %6, align 8
  br label %8

8:                                                ; preds = %27, %2
  %9 = load i64, i64* %6, align 8
  %10 = load i64, i64* @MAX_AUDIO_MIXES, align 8
  %11 = icmp ult i64 %9, %10
  br i1 %11, label %12, label %30

12:                                               ; preds = %8
  %13 = load %struct.obs_output*, %struct.obs_output** %4, align 8
  %14 = getelementptr inbounds %struct.obs_output, %struct.obs_output* %13, i32 0, i32 0
  %15 = load %struct.obs_encoder**, %struct.obs_encoder*** %14, align 8
  %16 = load i64, i64* %6, align 8
  %17 = getelementptr inbounds %struct.obs_encoder*, %struct.obs_encoder** %15, i64 %16
  %18 = load %struct.obs_encoder*, %struct.obs_encoder** %17, align 8
  store %struct.obs_encoder* %18, %struct.obs_encoder** %7, align 8
  %19 = load %struct.encoder_packet*, %struct.encoder_packet** %5, align 8
  %20 = getelementptr inbounds %struct.encoder_packet, %struct.encoder_packet* %19, i32 0, i32 0
  %21 = load %struct.obs_encoder*, %struct.obs_encoder** %20, align 8
  %22 = load %struct.obs_encoder*, %struct.obs_encoder** %7, align 8
  %23 = icmp eq %struct.obs_encoder* %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %12
  %25 = load i64, i64* %6, align 8
  store i64 %25, i64* %3, align 8
  br label %32

26:                                               ; preds = %12
  br label %27

27:                                               ; preds = %26
  %28 = load i64, i64* %6, align 8
  %29 = add i64 %28, 1
  store i64 %29, i64* %6, align 8
  br label %8

30:                                               ; preds = %8
  %31 = call i32 @assert(i32 0)
  store i64 0, i64* %3, align 8
  br label %32

32:                                               ; preds = %30, %24
  %33 = load i64, i64* %3, align 8
  ret i64 %33
}

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
