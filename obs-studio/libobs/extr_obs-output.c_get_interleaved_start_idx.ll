; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-output.c_get_interleaved_start_idx.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-output.c_get_interleaved_start_idx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.obs_output = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, %struct.encoder_packet* }
%struct.encoder_packet = type { i64, i64 }

@OBS_ENCODER_VIDEO = common dso_local global i32 0, align 4
@DARRAY_INVALID = common dso_local global i64 0, align 8
@OBS_ENCODER_AUDIO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.obs_output*)* @get_interleaved_start_idx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @get_interleaved_start_idx(%struct.obs_output* %0) #0 {
  %2 = alloca %struct.obs_output*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.encoder_packet*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.encoder_packet*, align 8
  %9 = alloca i64, align 8
  store %struct.obs_output* %0, %struct.obs_output** %2, align 8
  store i64 9223372036854775807, i64* %3, align 8
  %10 = load %struct.obs_output*, %struct.obs_output** %2, align 8
  %11 = load i32, i32* @OBS_ENCODER_VIDEO, align 4
  %12 = call %struct.encoder_packet* @find_first_packet_type(%struct.obs_output* %10, i32 %11, i32 0)
  store %struct.encoder_packet* %12, %struct.encoder_packet** %4, align 8
  %13 = load i64, i64* @DARRAY_INVALID, align 8
  store i64 %13, i64* %5, align 8
  store i64 0, i64* %6, align 8
  store i64 0, i64* %7, align 8
  br label %14

14:                                               ; preds = %56, %1
  %15 = load i64, i64* %7, align 8
  %16 = load %struct.obs_output*, %struct.obs_output** %2, align 8
  %17 = getelementptr inbounds %struct.obs_output, %struct.obs_output* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ult i64 %15, %19
  br i1 %20, label %21, label %59

21:                                               ; preds = %14
  %22 = load %struct.obs_output*, %struct.obs_output** %2, align 8
  %23 = getelementptr inbounds %struct.obs_output, %struct.obs_output* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load %struct.encoder_packet*, %struct.encoder_packet** %24, align 8
  %26 = load i64, i64* %7, align 8
  %27 = getelementptr inbounds %struct.encoder_packet, %struct.encoder_packet* %25, i64 %26
  store %struct.encoder_packet* %27, %struct.encoder_packet** %8, align 8
  %28 = load %struct.encoder_packet*, %struct.encoder_packet** %8, align 8
  %29 = getelementptr inbounds %struct.encoder_packet, %struct.encoder_packet* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @OBS_ENCODER_AUDIO, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %40

33:                                               ; preds = %21
  %34 = load %struct.encoder_packet*, %struct.encoder_packet** %8, align 8
  %35 = load %struct.encoder_packet*, %struct.encoder_packet** %4, align 8
  %36 = icmp eq %struct.encoder_packet* %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = load i64, i64* %7, align 8
  store i64 %38, i64* %5, align 8
  br label %39

39:                                               ; preds = %37, %33
  br label %56

40:                                               ; preds = %21
  %41 = load %struct.encoder_packet*, %struct.encoder_packet** %8, align 8
  %42 = getelementptr inbounds %struct.encoder_packet, %struct.encoder_packet* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.encoder_packet*, %struct.encoder_packet** %4, align 8
  %45 = getelementptr inbounds %struct.encoder_packet, %struct.encoder_packet* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = sub nsw i64 %43, %46
  %48 = call i64 @llabs(i64 %47)
  store i64 %48, i64* %9, align 8
  %49 = load i64, i64* %9, align 8
  %50 = load i64, i64* %3, align 8
  %51 = icmp slt i64 %49, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %40
  %53 = load i64, i64* %9, align 8
  store i64 %53, i64* %3, align 8
  %54 = load i64, i64* %7, align 8
  store i64 %54, i64* %6, align 8
  br label %55

55:                                               ; preds = %52, %40
  br label %56

56:                                               ; preds = %55, %39
  %57 = load i64, i64* %7, align 8
  %58 = add i64 %57, 1
  store i64 %58, i64* %7, align 8
  br label %14

59:                                               ; preds = %14
  %60 = load i64, i64* %5, align 8
  %61 = load i64, i64* %6, align 8
  %62 = icmp ult i64 %60, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %59
  %64 = load i64, i64* %5, align 8
  br label %67

65:                                               ; preds = %59
  %66 = load i64, i64* %6, align 8
  br label %67

67:                                               ; preds = %65, %63
  %68 = phi i64 [ %64, %63 ], [ %66, %65 ]
  ret i64 %68
}

declare dso_local %struct.encoder_packet* @find_first_packet_type(%struct.obs_output*, i32, i32) #1

declare dso_local i64 @llabs(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
