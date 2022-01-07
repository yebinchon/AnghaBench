; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-encoder.c_get_video_info.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-encoder.c_get_video_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.obs_encoder = type { %struct.TYPE_4__, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 (i32, %struct.video_scale_info*)* }
%struct.video_scale_info = type { i64, i64, i32, i32, i32 }
%struct.video_output_info = type { i64, i64, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.obs_encoder*, %struct.video_scale_info*)* @get_video_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_video_info(%struct.obs_encoder* %0, %struct.video_scale_info* %1) #0 {
  %3 = alloca %struct.obs_encoder*, align 8
  %4 = alloca %struct.video_scale_info*, align 8
  %5 = alloca %struct.video_output_info*, align 8
  store %struct.obs_encoder* %0, %struct.obs_encoder** %3, align 8
  store %struct.video_scale_info* %1, %struct.video_scale_info** %4, align 8
  %6 = load %struct.obs_encoder*, %struct.obs_encoder** %3, align 8
  %7 = getelementptr inbounds %struct.obs_encoder, %struct.obs_encoder* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 8
  %9 = call %struct.video_output_info* @video_output_get_info(i32 %8)
  store %struct.video_output_info* %9, %struct.video_output_info** %5, align 8
  %10 = load %struct.video_output_info*, %struct.video_output_info** %5, align 8
  %11 = getelementptr inbounds %struct.video_output_info, %struct.video_output_info* %10, i32 0, i32 4
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.video_scale_info*, %struct.video_scale_info** %4, align 8
  %14 = getelementptr inbounds %struct.video_scale_info, %struct.video_scale_info* %13, i32 0, i32 4
  store i32 %12, i32* %14, align 8
  %15 = load %struct.video_output_info*, %struct.video_output_info** %5, align 8
  %16 = getelementptr inbounds %struct.video_output_info, %struct.video_output_info* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.video_scale_info*, %struct.video_scale_info** %4, align 8
  %19 = getelementptr inbounds %struct.video_scale_info, %struct.video_scale_info* %18, i32 0, i32 3
  store i32 %17, i32* %19, align 4
  %20 = load %struct.video_output_info*, %struct.video_output_info** %5, align 8
  %21 = getelementptr inbounds %struct.video_output_info, %struct.video_output_info* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.video_scale_info*, %struct.video_scale_info** %4, align 8
  %24 = getelementptr inbounds %struct.video_scale_info, %struct.video_scale_info* %23, i32 0, i32 2
  store i32 %22, i32* %24, align 8
  %25 = load %struct.obs_encoder*, %struct.obs_encoder** %3, align 8
  %26 = call i64 @obs_encoder_get_width(%struct.obs_encoder* %25)
  %27 = load %struct.video_scale_info*, %struct.video_scale_info** %4, align 8
  %28 = getelementptr inbounds %struct.video_scale_info, %struct.video_scale_info* %27, i32 0, i32 0
  store i64 %26, i64* %28, align 8
  %29 = load %struct.obs_encoder*, %struct.obs_encoder** %3, align 8
  %30 = call i64 @obs_encoder_get_height(%struct.obs_encoder* %29)
  %31 = load %struct.video_scale_info*, %struct.video_scale_info** %4, align 8
  %32 = getelementptr inbounds %struct.video_scale_info, %struct.video_scale_info* %31, i32 0, i32 1
  store i64 %30, i64* %32, align 8
  %33 = load %struct.obs_encoder*, %struct.obs_encoder** %3, align 8
  %34 = getelementptr inbounds %struct.obs_encoder, %struct.obs_encoder* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32 (i32, %struct.video_scale_info*)*, i32 (i32, %struct.video_scale_info*)** %35, align 8
  %37 = icmp ne i32 (i32, %struct.video_scale_info*)* %36, null
  br i1 %37, label %38, label %49

38:                                               ; preds = %2
  %39 = load %struct.obs_encoder*, %struct.obs_encoder** %3, align 8
  %40 = getelementptr inbounds %struct.obs_encoder, %struct.obs_encoder* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32 (i32, %struct.video_scale_info*)*, i32 (i32, %struct.video_scale_info*)** %41, align 8
  %43 = load %struct.obs_encoder*, %struct.obs_encoder** %3, align 8
  %44 = getelementptr inbounds %struct.obs_encoder, %struct.obs_encoder* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.video_scale_info*, %struct.video_scale_info** %4, align 8
  %48 = call i32 %42(i32 %46, %struct.video_scale_info* %47)
  br label %49

49:                                               ; preds = %38, %2
  %50 = load %struct.video_scale_info*, %struct.video_scale_info** %4, align 8
  %51 = getelementptr inbounds %struct.video_scale_info, %struct.video_scale_info* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.video_output_info*, %struct.video_output_info** %5, align 8
  %54 = getelementptr inbounds %struct.video_output_info, %struct.video_output_info* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %52, %55
  br i1 %56, label %65, label %57

57:                                               ; preds = %49
  %58 = load %struct.video_scale_info*, %struct.video_scale_info** %4, align 8
  %59 = getelementptr inbounds %struct.video_scale_info, %struct.video_scale_info* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.video_output_info*, %struct.video_output_info** %5, align 8
  %62 = getelementptr inbounds %struct.video_output_info, %struct.video_output_info* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %60, %63
  br i1 %64, label %65, label %74

65:                                               ; preds = %57, %49
  %66 = load %struct.obs_encoder*, %struct.obs_encoder** %3, align 8
  %67 = load %struct.video_scale_info*, %struct.video_scale_info** %4, align 8
  %68 = getelementptr inbounds %struct.video_scale_info, %struct.video_scale_info* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.video_scale_info*, %struct.video_scale_info** %4, align 8
  %71 = getelementptr inbounds %struct.video_scale_info, %struct.video_scale_info* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = call i32 @obs_encoder_set_scaled_size(%struct.obs_encoder* %66, i64 %69, i64 %72)
  br label %74

74:                                               ; preds = %65, %57
  ret void
}

declare dso_local %struct.video_output_info* @video_output_get_info(i32) #1

declare dso_local i64 @obs_encoder_get_width(%struct.obs_encoder*) #1

declare dso_local i64 @obs_encoder_get_height(%struct.obs_encoder*) #1

declare dso_local i32 @obs_encoder_set_scaled_size(%struct.obs_encoder*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
