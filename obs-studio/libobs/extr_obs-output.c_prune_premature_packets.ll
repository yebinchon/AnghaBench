; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-output.c_prune_premature_packets.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-output.c_prune_premature_packets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.obs_output = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.encoder_packet* }
%struct.encoder_packet = type { i64, i64, i64 }

@OBS_ENCODER_VIDEO = common dso_local global i32 0, align 4
@OBS_ENCODER_AUDIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.obs_output*)* @prune_premature_packets to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prune_premature_packets(%struct.obs_output* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.obs_output*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.encoder_packet*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.encoder_packet*, align 8
  %13 = alloca i32, align 4
  store %struct.obs_output* %0, %struct.obs_output** %3, align 8
  %14 = load %struct.obs_output*, %struct.obs_output** %3, align 8
  %15 = call i64 @num_audio_mixes(%struct.obs_output* %14)
  store i64 %15, i64* %4, align 8
  store i64 0, i64* %9, align 8
  store i64 0, i64* %10, align 8
  %16 = load %struct.obs_output*, %struct.obs_output** %3, align 8
  %17 = load i32, i32* @OBS_ENCODER_VIDEO, align 4
  %18 = call i32 @find_first_packet_type_idx(%struct.obs_output* %16, i32 %17, i64 0)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp eq i32 %19, -1
  br i1 %20, label %21, label %24

21:                                               ; preds = %1
  %22 = load %struct.obs_output*, %struct.obs_output** %3, align 8
  %23 = getelementptr inbounds %struct.obs_output, %struct.obs_output* %22, i32 0, i32 0
  store i32 0, i32* %23, align 8
  store i32 -1, i32* %2, align 4
  br label %95

24:                                               ; preds = %1
  %25 = load i32, i32* %6, align 4
  store i32 %25, i32* %7, align 4
  %26 = load %struct.obs_output*, %struct.obs_output** %3, align 8
  %27 = getelementptr inbounds %struct.obs_output, %struct.obs_output* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load %struct.encoder_packet*, %struct.encoder_packet** %28, align 8
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.encoder_packet, %struct.encoder_packet* %29, i64 %31
  store %struct.encoder_packet* %32, %struct.encoder_packet** %5, align 8
  %33 = load %struct.encoder_packet*, %struct.encoder_packet** %5, align 8
  %34 = getelementptr inbounds %struct.encoder_packet, %struct.encoder_packet* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = mul nsw i64 %35, 1000000
  %37 = load %struct.encoder_packet*, %struct.encoder_packet** %5, align 8
  %38 = getelementptr inbounds %struct.encoder_packet, %struct.encoder_packet* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = sdiv i64 %36, %39
  store i64 %40, i64* %8, align 8
  store i64 0, i64* %11, align 8
  br label %41

41:                                               ; preds = %82, %24
  %42 = load i64, i64* %11, align 8
  %43 = load i64, i64* %4, align 8
  %44 = icmp ult i64 %42, %43
  br i1 %44, label %45, label %85

45:                                               ; preds = %41
  %46 = load %struct.obs_output*, %struct.obs_output** %3, align 8
  %47 = load i32, i32* @OBS_ENCODER_AUDIO, align 4
  %48 = load i64, i64* %11, align 8
  %49 = call i32 @find_first_packet_type_idx(%struct.obs_output* %46, i32 %47, i64 %48)
  store i32 %49, i32* %13, align 4
  %50 = load i32, i32* %13, align 4
  %51 = icmp eq i32 %50, -1
  br i1 %51, label %52, label %55

52:                                               ; preds = %45
  %53 = load %struct.obs_output*, %struct.obs_output** %3, align 8
  %54 = getelementptr inbounds %struct.obs_output, %struct.obs_output* %53, i32 0, i32 1
  store i32 0, i32* %54, align 4
  store i32 -1, i32* %2, align 4
  br label %95

55:                                               ; preds = %45
  %56 = load %struct.obs_output*, %struct.obs_output** %3, align 8
  %57 = getelementptr inbounds %struct.obs_output, %struct.obs_output* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load %struct.encoder_packet*, %struct.encoder_packet** %58, align 8
  %60 = load i32, i32* %13, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.encoder_packet, %struct.encoder_packet* %59, i64 %61
  store %struct.encoder_packet* %62, %struct.encoder_packet** %12, align 8
  %63 = load i32, i32* %13, align 4
  %64 = load i32, i32* %7, align 4
  %65 = icmp sgt i32 %63, %64
  br i1 %65, label %66, label %68

66:                                               ; preds = %55
  %67 = load i32, i32* %13, align 4
  store i32 %67, i32* %7, align 4
  br label %68

68:                                               ; preds = %66, %55
  %69 = load %struct.encoder_packet*, %struct.encoder_packet** %12, align 8
  %70 = getelementptr inbounds %struct.encoder_packet, %struct.encoder_packet* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.encoder_packet*, %struct.encoder_packet** %5, align 8
  %73 = getelementptr inbounds %struct.encoder_packet, %struct.encoder_packet* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = sub nsw i64 %71, %74
  store i64 %75, i64* %10, align 8
  %76 = load i64, i64* %10, align 8
  %77 = load i64, i64* %9, align 8
  %78 = icmp sgt i64 %76, %77
  br i1 %78, label %79, label %81

79:                                               ; preds = %68
  %80 = load i64, i64* %10, align 8
  store i64 %80, i64* %9, align 8
  br label %81

81:                                               ; preds = %79, %68
  br label %82

82:                                               ; preds = %81
  %83 = load i64, i64* %11, align 8
  %84 = add i64 %83, 1
  store i64 %84, i64* %11, align 8
  br label %41

85:                                               ; preds = %41
  %86 = load i64, i64* %10, align 8
  %87 = load i64, i64* %8, align 8
  %88 = icmp sgt i64 %86, %87
  br i1 %88, label %89, label %92

89:                                               ; preds = %85
  %90 = load i32, i32* %7, align 4
  %91 = add nsw i32 %90, 1
  br label %93

92:                                               ; preds = %85
  br label %93

93:                                               ; preds = %92, %89
  %94 = phi i32 [ %91, %89 ], [ 0, %92 ]
  store i32 %94, i32* %2, align 4
  br label %95

95:                                               ; preds = %93, %52, %21
  %96 = load i32, i32* %2, align 4
  ret i32 %96
}

declare dso_local i64 @num_audio_mixes(%struct.obs_output*) #1

declare dso_local i32 @find_first_packet_type_idx(%struct.obs_output*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
