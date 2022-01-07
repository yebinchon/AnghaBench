; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-output.c_find_last_packet_type.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-output.c_find_last_packet_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.encoder_packet = type { i32 }
%struct.obs_output = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.encoder_packet* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.encoder_packet* (%struct.obs_output*, i32, i64)* @find_last_packet_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.encoder_packet* @find_last_packet_type(%struct.obs_output* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.obs_output*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.obs_output* %0, %struct.obs_output** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %8 = load %struct.obs_output*, %struct.obs_output** %4, align 8
  %9 = load i32, i32* %5, align 4
  %10 = load i64, i64* %6, align 8
  %11 = call i32 @find_last_packet_type_idx(%struct.obs_output* %8, i32 %9, i64 %10)
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = icmp ne i32 %12, -1
  br i1 %13, label %14, label %22

14:                                               ; preds = %3
  %15 = load %struct.obs_output*, %struct.obs_output** %4, align 8
  %16 = getelementptr inbounds %struct.obs_output, %struct.obs_output* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load %struct.encoder_packet*, %struct.encoder_packet** %17, align 8
  %19 = load i32, i32* %7, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.encoder_packet, %struct.encoder_packet* %18, i64 %20
  br label %23

22:                                               ; preds = %3
  br label %23

23:                                               ; preds = %22, %14
  %24 = phi %struct.encoder_packet* [ %21, %14 ], [ null, %22 ]
  ret %struct.encoder_packet* %24
}

declare dso_local i32 @find_last_packet_type_idx(%struct.obs_output*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
