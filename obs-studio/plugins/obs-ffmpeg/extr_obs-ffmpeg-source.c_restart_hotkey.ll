; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/obs-ffmpeg/extr_obs-ffmpeg-source.c_restart_hotkey.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/obs-ffmpeg/extr_obs-ffmpeg-source.c_restart_hotkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ffmpeg_source = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i32*, i32)* @restart_hotkey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @restart_hotkey(i8* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ffmpeg_source*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* %6, align 4
  %11 = call i32 @UNUSED_PARAMETER(i32 %10)
  %12 = load i32*, i32** %7, align 8
  %13 = ptrtoint i32* %12 to i32
  %14 = call i32 @UNUSED_PARAMETER(i32 %13)
  %15 = load i32, i32* %8, align 4
  %16 = call i32 @UNUSED_PARAMETER(i32 %15)
  %17 = load i8*, i8** %5, align 8
  %18 = bitcast i8* %17 to %struct.ffmpeg_source*
  store %struct.ffmpeg_source* %18, %struct.ffmpeg_source** %9, align 8
  %19 = load %struct.ffmpeg_source*, %struct.ffmpeg_source** %9, align 8
  %20 = getelementptr inbounds %struct.ffmpeg_source, %struct.ffmpeg_source* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @obs_source_active(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %4
  %25 = load %struct.ffmpeg_source*, %struct.ffmpeg_source** %9, align 8
  %26 = call i32 @ffmpeg_source_start(%struct.ffmpeg_source* %25)
  br label %27

27:                                               ; preds = %24, %4
  ret void
}

declare dso_local i32 @UNUSED_PARAMETER(i32) #1

declare dso_local i64 @obs_source_active(i32) #1

declare dso_local i32 @ffmpeg_source_start(%struct.ffmpeg_source*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
