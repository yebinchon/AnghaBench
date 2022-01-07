; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_w32_common.c_update_playback_state.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_w32_common.c_update_playback_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vo_w32_state = type { i32, i32, i32, %struct.voctrl_playback_state }
%struct.voctrl_playback_state = type { i64, i32, i32, i32 }

@TBPF_NOPROGRESS = common dso_local global i32 0, align 4
@TBPF_PAUSED = common dso_local global i32 0, align 4
@TBPF_NORMAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vo_w32_state*)* @update_playback_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_playback_state(%struct.vo_w32_state* %0) #0 {
  %2 = alloca %struct.vo_w32_state*, align 8
  %3 = alloca %struct.voctrl_playback_state*, align 8
  store %struct.vo_w32_state* %0, %struct.vo_w32_state** %2, align 8
  %4 = load %struct.vo_w32_state*, %struct.vo_w32_state** %2, align 8
  %5 = getelementptr inbounds %struct.vo_w32_state, %struct.vo_w32_state* %4, i32 0, i32 3
  store %struct.voctrl_playback_state* %5, %struct.voctrl_playback_state** %3, align 8
  %6 = load %struct.vo_w32_state*, %struct.vo_w32_state** %2, align 8
  %7 = getelementptr inbounds %struct.vo_w32_state, %struct.vo_w32_state* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %1
  %11 = load %struct.vo_w32_state*, %struct.vo_w32_state** %2, align 8
  %12 = getelementptr inbounds %struct.vo_w32_state, %struct.vo_w32_state* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %10, %1
  br label %63

16:                                               ; preds = %10
  %17 = load %struct.voctrl_playback_state*, %struct.voctrl_playback_state** %3, align 8
  %18 = getelementptr inbounds %struct.voctrl_playback_state, %struct.voctrl_playback_state* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %16
  %22 = load %struct.voctrl_playback_state*, %struct.voctrl_playback_state** %3, align 8
  %23 = getelementptr inbounds %struct.voctrl_playback_state, %struct.voctrl_playback_state* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %35, label %26

26:                                               ; preds = %21, %16
  %27 = load %struct.vo_w32_state*, %struct.vo_w32_state** %2, align 8
  %28 = getelementptr inbounds %struct.vo_w32_state, %struct.vo_w32_state* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.vo_w32_state*, %struct.vo_w32_state** %2, align 8
  %31 = getelementptr inbounds %struct.vo_w32_state, %struct.vo_w32_state* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @TBPF_NOPROGRESS, align 4
  %34 = call i32 @ITaskbarList3_SetProgressState(i32 %29, i32 %32, i32 %33)
  br label %63

35:                                               ; preds = %21
  %36 = load %struct.vo_w32_state*, %struct.vo_w32_state** %2, align 8
  %37 = getelementptr inbounds %struct.vo_w32_state, %struct.vo_w32_state* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.vo_w32_state*, %struct.vo_w32_state** %2, align 8
  %40 = getelementptr inbounds %struct.vo_w32_state, %struct.vo_w32_state* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.voctrl_playback_state*, %struct.voctrl_playback_state** %3, align 8
  %43 = getelementptr inbounds %struct.voctrl_playback_state, %struct.voctrl_playback_state* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @ITaskbarList3_SetProgressValue(i32 %38, i32 %41, i32 %44, i32 100)
  %46 = load %struct.vo_w32_state*, %struct.vo_w32_state** %2, align 8
  %47 = getelementptr inbounds %struct.vo_w32_state, %struct.vo_w32_state* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.vo_w32_state*, %struct.vo_w32_state** %2, align 8
  %50 = getelementptr inbounds %struct.vo_w32_state, %struct.vo_w32_state* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.voctrl_playback_state*, %struct.voctrl_playback_state** %3, align 8
  %53 = getelementptr inbounds %struct.voctrl_playback_state, %struct.voctrl_playback_state* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %35
  %57 = load i32, i32* @TBPF_PAUSED, align 4
  br label %60

58:                                               ; preds = %35
  %59 = load i32, i32* @TBPF_NORMAL, align 4
  br label %60

60:                                               ; preds = %58, %56
  %61 = phi i32 [ %57, %56 ], [ %59, %58 ]
  %62 = call i32 @ITaskbarList3_SetProgressState(i32 %48, i32 %51, i32 %61)
  br label %63

63:                                               ; preds = %60, %26, %15
  ret void
}

declare dso_local i32 @ITaskbarList3_SetProgressState(i32, i32, i32) #1

declare dso_local i32 @ITaskbarList3_SetProgressValue(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
