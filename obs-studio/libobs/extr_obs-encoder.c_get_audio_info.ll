; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-encoder.c_get_audio_info.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-encoder.c_get_audio_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.obs_encoder = type { %struct.TYPE_4__, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 (i32, %struct.audio_convert_info*)* }
%struct.audio_convert_info = type opaque
%struct.audio_convert_info.0 = type { i32, i32, i32 }
%struct.audio_output_info = type { i32, i32, i32 }

@AUDIO_FORMAT_UNKNOWN = common dso_local global i32 0, align 4
@SPEAKERS_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.obs_encoder*, %struct.audio_convert_info.0*)* @get_audio_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_audio_info(%struct.obs_encoder* %0, %struct.audio_convert_info.0* %1) #0 {
  %3 = alloca %struct.obs_encoder*, align 8
  %4 = alloca %struct.audio_convert_info.0*, align 8
  %5 = alloca %struct.audio_output_info*, align 8
  store %struct.obs_encoder* %0, %struct.obs_encoder** %3, align 8
  store %struct.audio_convert_info.0* %1, %struct.audio_convert_info.0** %4, align 8
  %6 = load %struct.obs_encoder*, %struct.obs_encoder** %3, align 8
  %7 = getelementptr inbounds %struct.obs_encoder, %struct.obs_encoder* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 8
  %9 = call %struct.audio_output_info* @audio_output_get_info(i32 %8)
  store %struct.audio_output_info* %9, %struct.audio_output_info** %5, align 8
  %10 = load %struct.audio_convert_info.0*, %struct.audio_convert_info.0** %4, align 8
  %11 = getelementptr inbounds %struct.audio_convert_info.0, %struct.audio_convert_info.0* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @AUDIO_FORMAT_UNKNOWN, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %21

15:                                               ; preds = %2
  %16 = load %struct.audio_output_info*, %struct.audio_output_info** %5, align 8
  %17 = getelementptr inbounds %struct.audio_output_info, %struct.audio_output_info* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.audio_convert_info.0*, %struct.audio_convert_info.0** %4, align 8
  %20 = getelementptr inbounds %struct.audio_convert_info.0, %struct.audio_convert_info.0* %19, i32 0, i32 2
  store i32 %18, i32* %20, align 4
  br label %21

21:                                               ; preds = %15, %2
  %22 = load %struct.audio_convert_info.0*, %struct.audio_convert_info.0** %4, align 8
  %23 = getelementptr inbounds %struct.audio_convert_info.0, %struct.audio_convert_info.0* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %32, label %26

26:                                               ; preds = %21
  %27 = load %struct.audio_output_info*, %struct.audio_output_info** %5, align 8
  %28 = getelementptr inbounds %struct.audio_output_info, %struct.audio_output_info* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.audio_convert_info.0*, %struct.audio_convert_info.0** %4, align 8
  %31 = getelementptr inbounds %struct.audio_convert_info.0, %struct.audio_convert_info.0* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  br label %32

32:                                               ; preds = %26, %21
  %33 = load %struct.audio_convert_info.0*, %struct.audio_convert_info.0** %4, align 8
  %34 = getelementptr inbounds %struct.audio_convert_info.0, %struct.audio_convert_info.0* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @SPEAKERS_UNKNOWN, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %44

38:                                               ; preds = %32
  %39 = load %struct.audio_output_info*, %struct.audio_output_info** %5, align 8
  %40 = getelementptr inbounds %struct.audio_output_info, %struct.audio_output_info* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.audio_convert_info.0*, %struct.audio_convert_info.0** %4, align 8
  %43 = getelementptr inbounds %struct.audio_convert_info.0, %struct.audio_convert_info.0* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 4
  br label %44

44:                                               ; preds = %38, %32
  %45 = load %struct.obs_encoder*, %struct.obs_encoder** %3, align 8
  %46 = getelementptr inbounds %struct.obs_encoder, %struct.obs_encoder* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i32 (i32, %struct.audio_convert_info*)*, i32 (i32, %struct.audio_convert_info*)** %47, align 8
  %49 = icmp ne i32 (i32, %struct.audio_convert_info*)* %48, null
  br i1 %49, label %50, label %62

50:                                               ; preds = %44
  %51 = load %struct.obs_encoder*, %struct.obs_encoder** %3, align 8
  %52 = getelementptr inbounds %struct.obs_encoder, %struct.obs_encoder* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i32 (i32, %struct.audio_convert_info*)*, i32 (i32, %struct.audio_convert_info*)** %53, align 8
  %55 = load %struct.obs_encoder*, %struct.obs_encoder** %3, align 8
  %56 = getelementptr inbounds %struct.obs_encoder, %struct.obs_encoder* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.audio_convert_info.0*, %struct.audio_convert_info.0** %4, align 8
  %60 = bitcast %struct.audio_convert_info.0* %59 to %struct.audio_convert_info*
  %61 = call i32 %54(i32 %58, %struct.audio_convert_info* %60)
  br label %62

62:                                               ; preds = %50, %44
  ret void
}

declare dso_local %struct.audio_output_info* @audio_output_get_info(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
