; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/win-capture/extr_game-capture.c_reset_frame_interval.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/win-capture/extr_game-capture.c_reset_frame_interval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.game_capture = type { %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.obs_video_info = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.game_capture*)* @reset_frame_interval to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reset_frame_interval(%struct.game_capture* %0) #0 {
  %2 = alloca %struct.game_capture*, align 8
  %3 = alloca %struct.obs_video_info, align 8
  %4 = alloca i32, align 4
  store %struct.game_capture* %0, %struct.game_capture** %2, align 8
  store i32 0, i32* %4, align 4
  %5 = call i64 @obs_get_video_info(%struct.obs_video_info* %3)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %24

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.obs_video_info, %struct.obs_video_info* %3, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = mul i64 %9, 1000000000
  %11 = getelementptr inbounds %struct.obs_video_info, %struct.obs_video_info* %3, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = udiv i64 %10, %12
  %14 = trunc i64 %13 to i32
  store i32 %14, i32* %4, align 4
  %15 = load %struct.game_capture*, %struct.game_capture** %2, align 8
  %16 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %7
  %21 = load i32, i32* %4, align 4
  %22 = sdiv i32 %21, 2
  store i32 %22, i32* %4, align 4
  br label %23

23:                                               ; preds = %20, %7
  br label %24

24:                                               ; preds = %23, %1
  %25 = load i32, i32* %4, align 4
  %26 = load %struct.game_capture*, %struct.game_capture** %2, align 8
  %27 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %26, i32 0, i32 0
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  store i32 %25, i32* %29, align 4
  ret void
}

declare dso_local i64 @obs_get_video_info(%struct.obs_video_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
