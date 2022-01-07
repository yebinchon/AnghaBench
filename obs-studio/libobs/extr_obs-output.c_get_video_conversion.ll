; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-output.c_get_video_conversion.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-output.c_get_video_conversion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.video_scale_info = type { i64, i64, i32, i32, i32 }
%struct.obs_output = type { %struct.video_scale_info, i64, i64, i32, i64 }
%struct.video_output_info = type { i32 }

@VIDEO_CS_DEFAULT = common dso_local global i32 0, align 4
@VIDEO_RANGE_DEFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.video_scale_info* (%struct.obs_output*)* @get_video_conversion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.video_scale_info* @get_video_conversion(%struct.obs_output* %0) #0 {
  %2 = alloca %struct.video_scale_info*, align 8
  %3 = alloca %struct.obs_output*, align 8
  %4 = alloca %struct.video_output_info*, align 8
  store %struct.obs_output* %0, %struct.obs_output** %3, align 8
  %5 = load %struct.obs_output*, %struct.obs_output** %3, align 8
  %6 = getelementptr inbounds %struct.obs_output, %struct.obs_output* %5, i32 0, i32 4
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %36

9:                                                ; preds = %1
  %10 = load %struct.obs_output*, %struct.obs_output** %3, align 8
  %11 = getelementptr inbounds %struct.obs_output, %struct.obs_output* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.video_scale_info, %struct.video_scale_info* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %9
  %16 = load %struct.obs_output*, %struct.obs_output** %3, align 8
  %17 = call i64 @obs_output_get_width(%struct.obs_output* %16)
  %18 = load %struct.obs_output*, %struct.obs_output** %3, align 8
  %19 = getelementptr inbounds %struct.obs_output, %struct.obs_output* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.video_scale_info, %struct.video_scale_info* %19, i32 0, i32 1
  store i64 %17, i64* %20, align 8
  br label %21

21:                                               ; preds = %15, %9
  %22 = load %struct.obs_output*, %struct.obs_output** %3, align 8
  %23 = getelementptr inbounds %struct.obs_output, %struct.obs_output* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.video_scale_info, %struct.video_scale_info* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %33, label %27

27:                                               ; preds = %21
  %28 = load %struct.obs_output*, %struct.obs_output** %3, align 8
  %29 = call i64 @obs_output_get_height(%struct.obs_output* %28)
  %30 = load %struct.obs_output*, %struct.obs_output** %3, align 8
  %31 = getelementptr inbounds %struct.obs_output, %struct.obs_output* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.video_scale_info, %struct.video_scale_info* %31, i32 0, i32 0
  store i64 %29, i64* %32, align 8
  br label %33

33:                                               ; preds = %27, %21
  %34 = load %struct.obs_output*, %struct.obs_output** %3, align 8
  %35 = getelementptr inbounds %struct.obs_output, %struct.obs_output* %34, i32 0, i32 0
  store %struct.video_scale_info* %35, %struct.video_scale_info** %2, align 8
  br label %75

36:                                               ; preds = %1
  %37 = load %struct.obs_output*, %struct.obs_output** %3, align 8
  %38 = call i64 @has_scaling(%struct.obs_output* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %73

40:                                               ; preds = %36
  %41 = load %struct.obs_output*, %struct.obs_output** %3, align 8
  %42 = getelementptr inbounds %struct.obs_output, %struct.obs_output* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 8
  %44 = call %struct.video_output_info* @video_output_get_info(i32 %43)
  store %struct.video_output_info* %44, %struct.video_output_info** %4, align 8
  %45 = load %struct.video_output_info*, %struct.video_output_info** %4, align 8
  %46 = getelementptr inbounds %struct.video_output_info, %struct.video_output_info* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.obs_output*, %struct.obs_output** %3, align 8
  %49 = getelementptr inbounds %struct.obs_output, %struct.obs_output* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.video_scale_info, %struct.video_scale_info* %49, i32 0, i32 4
  store i32 %47, i32* %50, align 8
  %51 = load i32, i32* @VIDEO_CS_DEFAULT, align 4
  %52 = load %struct.obs_output*, %struct.obs_output** %3, align 8
  %53 = getelementptr inbounds %struct.obs_output, %struct.obs_output* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.video_scale_info, %struct.video_scale_info* %53, i32 0, i32 3
  store i32 %51, i32* %54, align 4
  %55 = load i32, i32* @VIDEO_RANGE_DEFAULT, align 4
  %56 = load %struct.obs_output*, %struct.obs_output** %3, align 8
  %57 = getelementptr inbounds %struct.obs_output, %struct.obs_output* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.video_scale_info, %struct.video_scale_info* %57, i32 0, i32 2
  store i32 %55, i32* %58, align 8
  %59 = load %struct.obs_output*, %struct.obs_output** %3, align 8
  %60 = getelementptr inbounds %struct.obs_output, %struct.obs_output* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.obs_output*, %struct.obs_output** %3, align 8
  %63 = getelementptr inbounds %struct.obs_output, %struct.obs_output* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.video_scale_info, %struct.video_scale_info* %63, i32 0, i32 1
  store i64 %61, i64* %64, align 8
  %65 = load %struct.obs_output*, %struct.obs_output** %3, align 8
  %66 = getelementptr inbounds %struct.obs_output, %struct.obs_output* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.obs_output*, %struct.obs_output** %3, align 8
  %69 = getelementptr inbounds %struct.obs_output, %struct.obs_output* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.video_scale_info, %struct.video_scale_info* %69, i32 0, i32 0
  store i64 %67, i64* %70, align 8
  %71 = load %struct.obs_output*, %struct.obs_output** %3, align 8
  %72 = getelementptr inbounds %struct.obs_output, %struct.obs_output* %71, i32 0, i32 0
  store %struct.video_scale_info* %72, %struct.video_scale_info** %2, align 8
  br label %75

73:                                               ; preds = %36
  br label %74

74:                                               ; preds = %73
  store %struct.video_scale_info* null, %struct.video_scale_info** %2, align 8
  br label %75

75:                                               ; preds = %74, %40, %33
  %76 = load %struct.video_scale_info*, %struct.video_scale_info** %2, align 8
  ret %struct.video_scale_info* %76
}

declare dso_local i64 @obs_output_get_width(%struct.obs_output*) #1

declare dso_local i64 @obs_output_get_height(%struct.obs_output*) #1

declare dso_local i64 @has_scaling(%struct.obs_output*) #1

declare dso_local %struct.video_output_info* @video_output_get_info(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
