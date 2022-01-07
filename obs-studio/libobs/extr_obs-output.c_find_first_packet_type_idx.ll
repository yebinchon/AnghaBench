; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-output.c_find_first_packet_type_idx.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-output.c_find_first_packet_type_idx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.obs_output = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, %struct.encoder_packet* }
%struct.encoder_packet = type { i32, i64 }

@OBS_ENCODER_AUDIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.obs_output*, i32, i64)* @find_first_packet_type_idx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_first_packet_type_idx(%struct.obs_output* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.obs_output*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.encoder_packet*, align 8
  store %struct.obs_output* %0, %struct.obs_output** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i64 0, i64* %8, align 8
  br label %10

10:                                               ; preds = %44, %3
  %11 = load i64, i64* %8, align 8
  %12 = load %struct.obs_output*, %struct.obs_output** %5, align 8
  %13 = getelementptr inbounds %struct.obs_output, %struct.obs_output* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ult i64 %11, %15
  br i1 %16, label %17, label %47

17:                                               ; preds = %10
  %18 = load %struct.obs_output*, %struct.obs_output** %5, align 8
  %19 = getelementptr inbounds %struct.obs_output, %struct.obs_output* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load %struct.encoder_packet*, %struct.encoder_packet** %20, align 8
  %22 = load i64, i64* %8, align 8
  %23 = getelementptr inbounds %struct.encoder_packet, %struct.encoder_packet* %21, i64 %22
  store %struct.encoder_packet* %23, %struct.encoder_packet** %9, align 8
  %24 = load %struct.encoder_packet*, %struct.encoder_packet** %9, align 8
  %25 = getelementptr inbounds %struct.encoder_packet, %struct.encoder_packet* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* %6, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %43

29:                                               ; preds = %17
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @OBS_ENCODER_AUDIO, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %40

33:                                               ; preds = %29
  %34 = load %struct.encoder_packet*, %struct.encoder_packet** %9, align 8
  %35 = getelementptr inbounds %struct.encoder_packet, %struct.encoder_packet* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* %7, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  br label %44

40:                                               ; preds = %33, %29
  %41 = load i64, i64* %8, align 8
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %4, align 4
  br label %48

43:                                               ; preds = %17
  br label %44

44:                                               ; preds = %43, %39
  %45 = load i64, i64* %8, align 8
  %46 = add i64 %45, 1
  store i64 %46, i64* %8, align 8
  br label %10

47:                                               ; preds = %10
  store i32 -1, i32* %4, align 4
  br label %48

48:                                               ; preds = %47, %40
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
