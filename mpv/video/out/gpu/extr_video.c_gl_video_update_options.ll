; ModuleID = '/home/carl/AnghaBench/mpv/video/out/gpu/extr_video.c_gl_video_update_options.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/gpu/extr_video.c_gl_video_update_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gl_video = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gl_video*)* @gl_video_update_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gl_video_update_options(%struct.gl_video* %0) #0 {
  %2 = alloca %struct.gl_video*, align 8
  store %struct.gl_video* %0, %struct.gl_video** %2, align 8
  %3 = load %struct.gl_video*, %struct.gl_video** %2, align 8
  %4 = getelementptr inbounds %struct.gl_video, %struct.gl_video* %3, i32 0, i32 3
  %5 = load i32, i32* %4, align 4
  %6 = call i64 @m_config_cache_update(i32 %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %15

8:                                                ; preds = %1
  %9 = load %struct.gl_video*, %struct.gl_video** %2, align 8
  %10 = getelementptr inbounds %struct.gl_video, %struct.gl_video* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @gl_lcms_update_options(i32 %11)
  %13 = load %struct.gl_video*, %struct.gl_video** %2, align 8
  %14 = call i32 @reinit_from_options(%struct.gl_video* %13)
  br label %15

15:                                               ; preds = %8, %1
  %16 = load %struct.gl_video*, %struct.gl_video** %2, align 8
  %17 = getelementptr inbounds %struct.gl_video, %struct.gl_video* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @mp_csp_equalizer_state_changed(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %15
  %22 = load %struct.gl_video*, %struct.gl_video** %2, align 8
  %23 = getelementptr inbounds %struct.gl_video, %struct.gl_video* %22, i32 0, i32 0
  store i32 0, i32* %23, align 4
  br label %24

24:                                               ; preds = %21, %15
  ret void
}

declare dso_local i64 @m_config_cache_update(i32) #1

declare dso_local i32 @gl_lcms_update_options(i32) #1

declare dso_local i32 @reinit_from_options(%struct.gl_video*) #1

declare dso_local i64 @mp_csp_equalizer_state_changed(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
