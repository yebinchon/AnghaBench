; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/obs-ffmpeg/extr_obs-ffmpeg-output.c_write_thread.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/obs-ffmpeg/extr_obs-ffmpeg-output.c_write_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ffmpeg_output = type { i32, i32, i32, i32, i32, i32 }

@OBS_OUTPUT_ERROR = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@OBS_OUTPUT_NO_SPACE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @write_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @write_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.ffmpeg_output*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.ffmpeg_output*
  store %struct.ffmpeg_output* %7, %struct.ffmpeg_output** %3, align 8
  br label %8

8:                                                ; preds = %48, %1
  %9 = load %struct.ffmpeg_output*, %struct.ffmpeg_output** %3, align 8
  %10 = getelementptr inbounds %struct.ffmpeg_output, %struct.ffmpeg_output* %9, i32 0, i32 5
  %11 = load i32, i32* %10, align 4
  %12 = call i64 @os_sem_wait(i32 %11)
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %49

14:                                               ; preds = %8
  %15 = load %struct.ffmpeg_output*, %struct.ffmpeg_output** %3, align 8
  %16 = getelementptr inbounds %struct.ffmpeg_output, %struct.ffmpeg_output* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @os_event_try(i32 %17)
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  br label %49

21:                                               ; preds = %14
  %22 = load %struct.ffmpeg_output*, %struct.ffmpeg_output** %3, align 8
  %23 = call i32 @process_packet(%struct.ffmpeg_output* %22)
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %48

26:                                               ; preds = %21
  %27 = load i32, i32* @OBS_OUTPUT_ERROR, align 4
  store i32 %27, i32* %5, align 4
  %28 = load %struct.ffmpeg_output*, %struct.ffmpeg_output** %3, align 8
  %29 = getelementptr inbounds %struct.ffmpeg_output, %struct.ffmpeg_output* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @pthread_detach(i32 %30)
  %32 = load %struct.ffmpeg_output*, %struct.ffmpeg_output** %3, align 8
  %33 = getelementptr inbounds %struct.ffmpeg_output, %struct.ffmpeg_output* %32, i32 0, i32 0
  store i32 0, i32* %33, align 4
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* @ENOSPC, align 4
  %36 = sub nsw i32 0, %35
  %37 = icmp eq i32 %34, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %26
  %39 = load i32, i32* @OBS_OUTPUT_NO_SPACE, align 4
  store i32 %39, i32* %5, align 4
  br label %40

40:                                               ; preds = %38, %26
  %41 = load %struct.ffmpeg_output*, %struct.ffmpeg_output** %3, align 8
  %42 = getelementptr inbounds %struct.ffmpeg_output, %struct.ffmpeg_output* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %5, align 4
  %45 = call i32 @obs_output_signal_stop(i32 %43, i32 %44)
  %46 = load %struct.ffmpeg_output*, %struct.ffmpeg_output** %3, align 8
  %47 = call i32 @ffmpeg_deactivate(%struct.ffmpeg_output* %46)
  br label %49

48:                                               ; preds = %21
  br label %8

49:                                               ; preds = %40, %20, %8
  %50 = load %struct.ffmpeg_output*, %struct.ffmpeg_output** %3, align 8
  %51 = getelementptr inbounds %struct.ffmpeg_output, %struct.ffmpeg_output* %50, i32 0, i32 1
  store i32 0, i32* %51, align 4
  ret i8* null
}

declare dso_local i64 @os_sem_wait(i32) #1

declare dso_local i64 @os_event_try(i32) #1

declare dso_local i32 @process_packet(%struct.ffmpeg_output*) #1

declare dso_local i32 @pthread_detach(i32) #1

declare dso_local i32 @obs_output_signal_stop(i32, i32) #1

declare dso_local i32 @ffmpeg_deactivate(%struct.ffmpeg_output*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
