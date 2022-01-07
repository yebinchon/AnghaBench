; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/obs-ffmpeg/extr_obs-ffmpeg-output.c_ffmpeg_output_destroy.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/obs-ffmpeg/extr_obs-ffmpeg-output.c_ffmpeg_output_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ffmpeg_output = type { i32, i32, i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @ffmpeg_output_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ffmpeg_output_destroy(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.ffmpeg_output*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.ffmpeg_output*
  store %struct.ffmpeg_output* %5, %struct.ffmpeg_output** %3, align 8
  %6 = load %struct.ffmpeg_output*, %struct.ffmpeg_output** %3, align 8
  %7 = icmp ne %struct.ffmpeg_output* %6, null
  br i1 %7, label %8, label %34

8:                                                ; preds = %1
  %9 = load %struct.ffmpeg_output*, %struct.ffmpeg_output** %3, align 8
  %10 = getelementptr inbounds %struct.ffmpeg_output, %struct.ffmpeg_output* %9, i32 0, i32 4
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %8
  %14 = load %struct.ffmpeg_output*, %struct.ffmpeg_output** %3, align 8
  %15 = getelementptr inbounds %struct.ffmpeg_output, %struct.ffmpeg_output* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @pthread_join(i32 %16, i32* null)
  br label %18

18:                                               ; preds = %13, %8
  %19 = load %struct.ffmpeg_output*, %struct.ffmpeg_output** %3, align 8
  %20 = call i32 @ffmpeg_output_full_stop(%struct.ffmpeg_output* %19)
  %21 = load %struct.ffmpeg_output*, %struct.ffmpeg_output** %3, align 8
  %22 = getelementptr inbounds %struct.ffmpeg_output, %struct.ffmpeg_output* %21, i32 0, i32 2
  %23 = call i32 @pthread_mutex_destroy(i32* %22)
  %24 = load %struct.ffmpeg_output*, %struct.ffmpeg_output** %3, align 8
  %25 = getelementptr inbounds %struct.ffmpeg_output, %struct.ffmpeg_output* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @os_sem_destroy(i32 %26)
  %28 = load %struct.ffmpeg_output*, %struct.ffmpeg_output** %3, align 8
  %29 = getelementptr inbounds %struct.ffmpeg_output, %struct.ffmpeg_output* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @os_event_destroy(i32 %30)
  %32 = load i8*, i8** %2, align 8
  %33 = call i32 @bfree(i8* %32)
  br label %34

34:                                               ; preds = %18, %1
  ret void
}

declare dso_local i32 @pthread_join(i32, i32*) #1

declare dso_local i32 @ffmpeg_output_full_stop(%struct.ffmpeg_output*) #1

declare dso_local i32 @pthread_mutex_destroy(i32*) #1

declare dso_local i32 @os_sem_destroy(i32) #1

declare dso_local i32 @os_event_destroy(i32) #1

declare dso_local i32 @bfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
