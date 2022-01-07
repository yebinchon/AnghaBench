; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-output.c_set_higher_ts.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-output.c_set_higher_ts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.obs_output = type { i64, i64 }
%struct.encoder_packet = type { i64, i64 }

@OBS_ENCODER_VIDEO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.obs_output*, %struct.encoder_packet*)* @set_higher_ts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_higher_ts(%struct.obs_output* %0, %struct.encoder_packet* %1) #0 {
  %3 = alloca %struct.obs_output*, align 8
  %4 = alloca %struct.encoder_packet*, align 8
  store %struct.obs_output* %0, %struct.obs_output** %3, align 8
  store %struct.encoder_packet* %1, %struct.encoder_packet** %4, align 8
  %5 = load %struct.encoder_packet*, %struct.encoder_packet** %4, align 8
  %6 = getelementptr inbounds %struct.encoder_packet, %struct.encoder_packet* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @OBS_ENCODER_VIDEO, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %25

10:                                               ; preds = %2
  %11 = load %struct.obs_output*, %struct.obs_output** %3, align 8
  %12 = getelementptr inbounds %struct.obs_output, %struct.obs_output* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.encoder_packet*, %struct.encoder_packet** %4, align 8
  %15 = getelementptr inbounds %struct.encoder_packet, %struct.encoder_packet* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp slt i64 %13, %16
  br i1 %17, label %18, label %24

18:                                               ; preds = %10
  %19 = load %struct.encoder_packet*, %struct.encoder_packet** %4, align 8
  %20 = getelementptr inbounds %struct.encoder_packet, %struct.encoder_packet* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.obs_output*, %struct.obs_output** %3, align 8
  %23 = getelementptr inbounds %struct.obs_output, %struct.obs_output* %22, i32 0, i32 0
  store i64 %21, i64* %23, align 8
  br label %24

24:                                               ; preds = %18, %10
  br label %40

25:                                               ; preds = %2
  %26 = load %struct.obs_output*, %struct.obs_output** %3, align 8
  %27 = getelementptr inbounds %struct.obs_output, %struct.obs_output* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.encoder_packet*, %struct.encoder_packet** %4, align 8
  %30 = getelementptr inbounds %struct.encoder_packet, %struct.encoder_packet* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp slt i64 %28, %31
  br i1 %32, label %33, label %39

33:                                               ; preds = %25
  %34 = load %struct.encoder_packet*, %struct.encoder_packet** %4, align 8
  %35 = getelementptr inbounds %struct.encoder_packet, %struct.encoder_packet* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.obs_output*, %struct.obs_output** %3, align 8
  %38 = getelementptr inbounds %struct.obs_output, %struct.obs_output* %37, i32 0, i32 1
  store i64 %36, i64* %38, align 8
  br label %39

39:                                               ; preds = %33, %25
  br label %40

40:                                               ; preds = %39, %24
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
