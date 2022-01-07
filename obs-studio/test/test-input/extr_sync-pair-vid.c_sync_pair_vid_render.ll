; ModuleID = '/home/carl/AnghaBench/obs-studio/test/test-input/extr_sync-pair-vid.c_sync_pair_vid_render.c'
source_filename = "/home/carl/AnghaBench/obs-studio/test/test-input/extr_sync-pair-vid.c_sync_pair_vid_render.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sync_pair_vid = type { i32, i32, i32 }
%struct.video_output_info = type { i64, i64 }

@starting_time = common dso_local global i64 0, align 8
@last_frame = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*)* @sync_pair_vid_render to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sync_pair_vid_render(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.sync_pair_vid*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.video_output_info*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32* %1, i32** %4, align 8
  %12 = load i8*, i8** %3, align 8
  %13 = bitcast i8* %12 to %struct.sync_pair_vid*
  store %struct.sync_pair_vid* %13, %struct.sync_pair_vid** %5, align 8
  %14 = call i64 (...) @obs_get_video_frame_time()
  store i64 %14, i64* %6, align 8
  %15 = load i64, i64* @starting_time, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %2
  %18 = load i64, i64* %6, align 8
  store i64 %18, i64* @starting_time, align 8
  br label %19

19:                                               ; preds = %17, %2
  %20 = call i32 (...) @obs_get_video()
  %21 = call i64 @video_output_get_frame_time(i32 %20)
  store i64 %21, i64* %7, align 8
  %22 = call i32 (...) @obs_get_video()
  %23 = call %struct.video_output_info* @video_output_get_info(i32 %22)
  store %struct.video_output_info* %23, %struct.video_output_info** %8, align 8
  %24 = load %struct.video_output_info*, %struct.video_output_info** %8, align 8
  %25 = getelementptr inbounds %struct.video_output_info, %struct.video_output_info* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %9, align 8
  %27 = load %struct.video_output_info*, %struct.video_output_info** %8, align 8
  %28 = getelementptr inbounds %struct.video_output_info, %struct.video_output_info* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %10, align 8
  %30 = load i64, i64* %6, align 8
  %31 = load i64, i64* %7, align 8
  %32 = load i64, i64* %9, align 8
  %33 = load i64, i64* %10, align 8
  %34 = call i32 @whitelist_time(i64 %30, i64 %31, i64 %32, i64 %33)
  store i32 %34, i32* %11, align 4
  %35 = load i32, i32* %11, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %19
  %38 = load %struct.sync_pair_vid*, %struct.sync_pair_vid** %5, align 8
  %39 = getelementptr inbounds %struct.sync_pair_vid, %struct.sync_pair_vid* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  br label %45

41:                                               ; preds = %19
  %42 = load %struct.sync_pair_vid*, %struct.sync_pair_vid** %5, align 8
  %43 = getelementptr inbounds %struct.sync_pair_vid, %struct.sync_pair_vid* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  br label %45

45:                                               ; preds = %41, %37
  %46 = phi i32 [ %40, %37 ], [ %44, %41 ]
  %47 = call i32 @obs_source_draw(i32 %46, i32 0, i32 0, i32 0, i32 0, i32 0)
  ret void
}

declare dso_local i64 @obs_get_video_frame_time(...) #1

declare dso_local i64 @video_output_get_frame_time(i32) #1

declare dso_local i32 @obs_get_video(...) #1

declare dso_local %struct.video_output_info* @video_output_get_info(i32) #1

declare dso_local i32 @whitelist_time(i64, i64, i64, i64) #1

declare dso_local i32 @obs_source_draw(i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
