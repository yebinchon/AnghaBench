; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/vlc-video/extr_vlc-video-source.c_vlcs_activate.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/vlc-video/extr_vlc-video-source.c_vlcs_activate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlc_source = type { i64, i32 }

@BEHAVIOR_STOP_RESTART = common dso_local global i64 0, align 8
@BEHAVIOR_PAUSE_UNPAUSE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @vlcs_activate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vlcs_activate(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.vlc_source*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.vlc_source*
  store %struct.vlc_source* %5, %struct.vlc_source** %3, align 8
  %6 = load %struct.vlc_source*, %struct.vlc_source** %3, align 8
  %7 = getelementptr inbounds %struct.vlc_source, %struct.vlc_source* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @BEHAVIOR_STOP_RESTART, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %16

11:                                               ; preds = %1
  %12 = load %struct.vlc_source*, %struct.vlc_source** %3, align 8
  %13 = getelementptr inbounds %struct.vlc_source, %struct.vlc_source* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @libvlc_media_list_player_play_(i32 %14)
  br label %28

16:                                               ; preds = %1
  %17 = load %struct.vlc_source*, %struct.vlc_source** %3, align 8
  %18 = getelementptr inbounds %struct.vlc_source, %struct.vlc_source* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @BEHAVIOR_PAUSE_UNPAUSE, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %27

22:                                               ; preds = %16
  %23 = load %struct.vlc_source*, %struct.vlc_source** %3, align 8
  %24 = getelementptr inbounds %struct.vlc_source, %struct.vlc_source* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @libvlc_media_list_player_play_(i32 %25)
  br label %27

27:                                               ; preds = %22, %16
  br label %28

28:                                               ; preds = %27, %11
  ret void
}

declare dso_local i32 @libvlc_media_list_player_play_(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
