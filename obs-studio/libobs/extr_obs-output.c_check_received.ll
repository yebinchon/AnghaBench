; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-output.c_check_received.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-output.c_check_received.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.obs_output = type { i32, i32 }
%struct.encoder_packet = type { i64 }

@OBS_ENCODER_VIDEO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.obs_output*, %struct.encoder_packet*)* @check_received to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_received(%struct.obs_output* %0, %struct.encoder_packet* %1) #0 {
  %3 = alloca %struct.obs_output*, align 8
  %4 = alloca %struct.encoder_packet*, align 8
  store %struct.obs_output* %0, %struct.obs_output** %3, align 8
  store %struct.encoder_packet* %1, %struct.encoder_packet** %4, align 8
  %5 = load %struct.encoder_packet*, %struct.encoder_packet** %4, align 8
  %6 = getelementptr inbounds %struct.encoder_packet, %struct.encoder_packet* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @OBS_ENCODER_VIDEO, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %19

10:                                               ; preds = %2
  %11 = load %struct.obs_output*, %struct.obs_output** %3, align 8
  %12 = getelementptr inbounds %struct.obs_output, %struct.obs_output* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %10
  %16 = load %struct.obs_output*, %struct.obs_output** %3, align 8
  %17 = getelementptr inbounds %struct.obs_output, %struct.obs_output* %16, i32 0, i32 0
  store i32 1, i32* %17, align 4
  br label %18

18:                                               ; preds = %15, %10
  br label %28

19:                                               ; preds = %2
  %20 = load %struct.obs_output*, %struct.obs_output** %3, align 8
  %21 = getelementptr inbounds %struct.obs_output, %struct.obs_output* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %19
  %25 = load %struct.obs_output*, %struct.obs_output** %3, align 8
  %26 = getelementptr inbounds %struct.obs_output, %struct.obs_output* %25, i32 0, i32 1
  store i32 1, i32* %26, align 4
  br label %27

27:                                               ; preds = %24, %19
  br label %28

28:                                               ; preds = %27, %18
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
