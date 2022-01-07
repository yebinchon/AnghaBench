; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-output.c_discard_to_idx.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-output.c_discard_to_idx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.obs_output = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.encoder_packet* }
%struct.encoder_packet = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.obs_output*, i64)* @discard_to_idx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @discard_to_idx(%struct.obs_output* %0, i64 %1) #0 {
  %3 = alloca %struct.obs_output*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.encoder_packet*, align 8
  store %struct.obs_output* %0, %struct.obs_output** %3, align 8
  store i64 %1, i64* %4, align 8
  store i64 0, i64* %5, align 8
  br label %7

7:                                                ; preds = %20, %2
  %8 = load i64, i64* %5, align 8
  %9 = load i64, i64* %4, align 8
  %10 = icmp ult i64 %8, %9
  br i1 %10, label %11, label %23

11:                                               ; preds = %7
  %12 = load %struct.obs_output*, %struct.obs_output** %3, align 8
  %13 = getelementptr inbounds %struct.obs_output, %struct.obs_output* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.encoder_packet*, %struct.encoder_packet** %14, align 8
  %16 = load i64, i64* %5, align 8
  %17 = getelementptr inbounds %struct.encoder_packet, %struct.encoder_packet* %15, i64 %16
  store %struct.encoder_packet* %17, %struct.encoder_packet** %6, align 8
  %18 = load %struct.encoder_packet*, %struct.encoder_packet** %6, align 8
  %19 = call i32 @obs_encoder_packet_release(%struct.encoder_packet* %18)
  br label %20

20:                                               ; preds = %11
  %21 = load i64, i64* %5, align 8
  %22 = add i64 %21, 1
  store i64 %22, i64* %5, align 8
  br label %7

23:                                               ; preds = %7
  %24 = load %struct.obs_output*, %struct.obs_output** %3, align 8
  %25 = getelementptr inbounds %struct.obs_output, %struct.obs_output* %24, i32 0, i32 0
  %26 = load i64, i64* %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %28 = load %struct.encoder_packet*, %struct.encoder_packet** %27, align 8
  %29 = call i32 @da_erase_range(%struct.encoder_packet* %28, i32 0, i64 %26)
  ret void
}

declare dso_local i32 @obs_encoder_packet_release(%struct.encoder_packet*) #1

declare dso_local i32 @da_erase_range(%struct.encoder_packet*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
