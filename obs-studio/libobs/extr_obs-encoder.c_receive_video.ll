; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-encoder.c_receive_video.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-encoder.c_receive_video.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.video_data = type { i64, i32*, i32* }
%struct.obs_encoder = type { i64, i64, i64, i32, i32, i32, %struct.obs_encoder* }
%struct.encoder_frame = type { i32, i32, i32*, i32* }

@receive_video_name = common dso_local global i32 0, align 4
@MAX_AV_PLANES = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.video_data*)* @receive_video to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @receive_video(i8* %0, %struct.video_data* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.video_data*, align 8
  %5 = alloca %struct.obs_encoder*, align 8
  %6 = alloca %struct.obs_encoder*, align 8
  %7 = alloca %struct.encoder_frame, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store %struct.video_data* %1, %struct.video_data** %4, align 8
  %9 = load i32, i32* @receive_video_name, align 4
  %10 = call i32 @profile_start(i32 %9)
  %11 = load i8*, i8** %3, align 8
  %12 = bitcast i8* %11 to %struct.obs_encoder*
  store %struct.obs_encoder* %12, %struct.obs_encoder** %5, align 8
  %13 = load %struct.obs_encoder*, %struct.obs_encoder** %5, align 8
  %14 = getelementptr inbounds %struct.obs_encoder, %struct.obs_encoder* %13, i32 0, i32 6
  %15 = load %struct.obs_encoder*, %struct.obs_encoder** %14, align 8
  store %struct.obs_encoder* %15, %struct.obs_encoder** %6, align 8
  %16 = load %struct.obs_encoder*, %struct.obs_encoder** %5, align 8
  %17 = getelementptr inbounds %struct.obs_encoder, %struct.obs_encoder* %16, i32 0, i32 5
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %38, label %20

20:                                               ; preds = %2
  %21 = load %struct.obs_encoder*, %struct.obs_encoder** %6, align 8
  %22 = icmp ne %struct.obs_encoder* %21, null
  br i1 %22, label %23, label %38

23:                                               ; preds = %20
  %24 = load %struct.obs_encoder*, %struct.obs_encoder** %6, align 8
  %25 = getelementptr inbounds %struct.obs_encoder, %struct.obs_encoder* %24, i32 0, i32 5
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %23
  %29 = load %struct.obs_encoder*, %struct.obs_encoder** %6, align 8
  %30 = getelementptr inbounds %struct.obs_encoder, %struct.obs_encoder* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.video_data*, %struct.video_data** %4, align 8
  %33 = getelementptr inbounds %struct.video_data, %struct.video_data* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp sgt i64 %31, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %28, %23
  br label %108

37:                                               ; preds = %28
  br label %38

38:                                               ; preds = %37, %20, %2
  %39 = load %struct.obs_encoder*, %struct.obs_encoder** %5, align 8
  %40 = getelementptr inbounds %struct.obs_encoder, %struct.obs_encoder* %39, i32 0, i32 4
  %41 = load %struct.video_data*, %struct.video_data** %4, align 8
  %42 = getelementptr inbounds %struct.video_data, %struct.video_data* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = call i64 @video_pause_check(i32* %40, i64 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %38
  br label %108

47:                                               ; preds = %38
  %48 = call i32 @memset(%struct.encoder_frame* %7, i32 0, i32 24)
  store i64 0, i64* %8, align 8
  br label %49

49:                                               ; preds = %74, %47
  %50 = load i64, i64* %8, align 8
  %51 = load i64, i64* @MAX_AV_PLANES, align 8
  %52 = icmp ult i64 %50, %51
  br i1 %52, label %53, label %77

53:                                               ; preds = %49
  %54 = load %struct.video_data*, %struct.video_data** %4, align 8
  %55 = getelementptr inbounds %struct.video_data, %struct.video_data* %54, i32 0, i32 2
  %56 = load i32*, i32** %55, align 8
  %57 = load i64, i64* %8, align 8
  %58 = getelementptr inbounds i32, i32* %56, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = getelementptr inbounds %struct.encoder_frame, %struct.encoder_frame* %7, i32 0, i32 3
  %61 = load i32*, i32** %60, align 8
  %62 = load i64, i64* %8, align 8
  %63 = getelementptr inbounds i32, i32* %61, i64 %62
  store i32 %59, i32* %63, align 4
  %64 = load %struct.video_data*, %struct.video_data** %4, align 8
  %65 = getelementptr inbounds %struct.video_data, %struct.video_data* %64, i32 0, i32 1
  %66 = load i32*, i32** %65, align 8
  %67 = load i64, i64* %8, align 8
  %68 = getelementptr inbounds i32, i32* %66, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = getelementptr inbounds %struct.encoder_frame, %struct.encoder_frame* %7, i32 0, i32 2
  %71 = load i32*, i32** %70, align 8
  %72 = load i64, i64* %8, align 8
  %73 = getelementptr inbounds i32, i32* %71, i64 %72
  store i32 %69, i32* %73, align 4
  br label %74

74:                                               ; preds = %53
  %75 = load i64, i64* %8, align 8
  %76 = add i64 %75, 1
  store i64 %76, i64* %8, align 8
  br label %49

77:                                               ; preds = %49
  %78 = load %struct.obs_encoder*, %struct.obs_encoder** %5, align 8
  %79 = getelementptr inbounds %struct.obs_encoder, %struct.obs_encoder* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %88, label %82

82:                                               ; preds = %77
  %83 = load %struct.video_data*, %struct.video_data** %4, align 8
  %84 = getelementptr inbounds %struct.video_data, %struct.video_data* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.obs_encoder*, %struct.obs_encoder** %5, align 8
  %87 = getelementptr inbounds %struct.obs_encoder, %struct.obs_encoder* %86, i32 0, i32 1
  store i64 %85, i64* %87, align 8
  br label %88

88:                                               ; preds = %82, %77
  %89 = getelementptr inbounds %struct.encoder_frame, %struct.encoder_frame* %7, i32 0, i32 0
  store i32 1, i32* %89, align 8
  %90 = load %struct.obs_encoder*, %struct.obs_encoder** %5, align 8
  %91 = getelementptr inbounds %struct.obs_encoder, %struct.obs_encoder* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 8
  %93 = getelementptr inbounds %struct.encoder_frame, %struct.encoder_frame* %7, i32 0, i32 1
  store i32 %92, i32* %93, align 4
  %94 = load %struct.obs_encoder*, %struct.obs_encoder** %5, align 8
  %95 = call i64 @do_encode(%struct.obs_encoder* %94, %struct.encoder_frame* %7)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %107

97:                                               ; preds = %88
  %98 = load %struct.obs_encoder*, %struct.obs_encoder** %5, align 8
  %99 = getelementptr inbounds %struct.obs_encoder, %struct.obs_encoder* %98, i32 0, i32 2
  %100 = load i64, i64* %99, align 8
  %101 = load %struct.obs_encoder*, %struct.obs_encoder** %5, align 8
  %102 = getelementptr inbounds %struct.obs_encoder, %struct.obs_encoder* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 8
  %104 = sext i32 %103 to i64
  %105 = add nsw i64 %104, %100
  %106 = trunc i64 %105 to i32
  store i32 %106, i32* %102, align 8
  br label %107

107:                                              ; preds = %97, %88
  br label %108

108:                                              ; preds = %107, %46, %36
  %109 = load i32, i32* @receive_video_name, align 4
  %110 = call i32 @profile_end(i32 %109)
  ret void
}

declare dso_local i32 @profile_start(i32) #1

declare dso_local i64 @video_pause_check(i32*, i64) #1

declare dso_local i32 @memset(%struct.encoder_frame*, i32, i32) #1

declare dso_local i64 @do_encode(%struct.obs_encoder*, %struct.encoder_frame*) #1

declare dso_local i32 @profile_end(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
