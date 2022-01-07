; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-output.c_num_audio_mixes.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-output.c_num_audio_mixes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.obs_output = type { i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@OBS_OUTPUT_SERVICE = common dso_local global i32 0, align 4
@OBS_OUTPUT_MULTI_TRACK = common dso_local global i32 0, align 4
@MAX_AUDIO_MIXES = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.obs_output*)* @num_audio_mixes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @num_audio_mixes(%struct.obs_output* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.obs_output*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.obs_output* %0, %struct.obs_output** %3, align 8
  store i64 1, i64* %4, align 8
  %6 = load %struct.obs_output*, %struct.obs_output** %3, align 8
  %7 = getelementptr inbounds %struct.obs_output, %struct.obs_output* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @OBS_OUTPUT_SERVICE, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %1
  %14 = load %struct.obs_output*, %struct.obs_output** %3, align 8
  %15 = call i32 @service_supports_multitrack(%struct.obs_output* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %13
  store i64 1, i64* %2, align 8
  br label %50

18:                                               ; preds = %13
  br label %19

19:                                               ; preds = %18, %1
  %20 = load %struct.obs_output*, %struct.obs_output** %3, align 8
  %21 = getelementptr inbounds %struct.obs_output, %struct.obs_output* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @OBS_OUTPUT_MULTI_TRACK, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %48

27:                                               ; preds = %19
  store i64 0, i64* %4, align 8
  store i64 0, i64* %5, align 8
  br label %28

28:                                               ; preds = %44, %27
  %29 = load i64, i64* %5, align 8
  %30 = load i64, i64* @MAX_AUDIO_MIXES, align 8
  %31 = icmp ult i64 %29, %30
  br i1 %31, label %32, label %47

32:                                               ; preds = %28
  %33 = load %struct.obs_output*, %struct.obs_output** %3, align 8
  %34 = getelementptr inbounds %struct.obs_output, %struct.obs_output* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = load i64, i64* %5, align 8
  %37 = getelementptr inbounds i32, i32* %35, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %32
  br label %47

41:                                               ; preds = %32
  %42 = load i64, i64* %4, align 8
  %43 = add i64 %42, 1
  store i64 %43, i64* %4, align 8
  br label %44

44:                                               ; preds = %41
  %45 = load i64, i64* %5, align 8
  %46 = add i64 %45, 1
  store i64 %46, i64* %5, align 8
  br label %28

47:                                               ; preds = %40, %28
  br label %48

48:                                               ; preds = %47, %19
  %49 = load i64, i64* %4, align 8
  store i64 %49, i64* %2, align 8
  br label %50

50:                                               ; preds = %48, %17
  %51 = load i64, i64* %2, align 8
  ret i64 %51
}

declare dso_local i32 @service_supports_multitrack(%struct.obs_output*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
