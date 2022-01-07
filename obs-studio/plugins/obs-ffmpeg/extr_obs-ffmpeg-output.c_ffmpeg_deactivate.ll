; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/obs-ffmpeg/extr_obs-ffmpeg-output.c_ffmpeg_deactivate.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/obs-ffmpeg/extr_obs-ffmpeg-output.c_ffmpeg_deactivate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ffmpeg_output = type { i32, i32, i32, %struct.TYPE_2__, i32, i32, i32 }
%struct.TYPE_2__ = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ffmpeg_output*)* @ffmpeg_deactivate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ffmpeg_deactivate(%struct.ffmpeg_output* %0) #0 {
  %2 = alloca %struct.ffmpeg_output*, align 8
  %3 = alloca i64, align 8
  store %struct.ffmpeg_output* %0, %struct.ffmpeg_output** %2, align 8
  %4 = load %struct.ffmpeg_output*, %struct.ffmpeg_output** %2, align 8
  %5 = getelementptr inbounds %struct.ffmpeg_output, %struct.ffmpeg_output* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %23

8:                                                ; preds = %1
  %9 = load %struct.ffmpeg_output*, %struct.ffmpeg_output** %2, align 8
  %10 = getelementptr inbounds %struct.ffmpeg_output, %struct.ffmpeg_output* %9, i32 0, i32 6
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @os_event_signal(i32 %11)
  %13 = load %struct.ffmpeg_output*, %struct.ffmpeg_output** %2, align 8
  %14 = getelementptr inbounds %struct.ffmpeg_output, %struct.ffmpeg_output* %13, i32 0, i32 5
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @os_sem_post(i32 %15)
  %17 = load %struct.ffmpeg_output*, %struct.ffmpeg_output** %2, align 8
  %18 = getelementptr inbounds %struct.ffmpeg_output, %struct.ffmpeg_output* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @pthread_join(i32 %19, i32* null)
  %21 = load %struct.ffmpeg_output*, %struct.ffmpeg_output** %2, align 8
  %22 = getelementptr inbounds %struct.ffmpeg_output, %struct.ffmpeg_output* %21, i32 0, i32 0
  store i32 0, i32* %22, align 8
  br label %23

23:                                               ; preds = %8, %1
  %24 = load %struct.ffmpeg_output*, %struct.ffmpeg_output** %2, align 8
  %25 = getelementptr inbounds %struct.ffmpeg_output, %struct.ffmpeg_output* %24, i32 0, i32 2
  %26 = call i32 @pthread_mutex_lock(i32* %25)
  store i64 0, i64* %3, align 8
  br label %27

27:                                               ; preds = %42, %23
  %28 = load i64, i64* %3, align 8
  %29 = load %struct.ffmpeg_output*, %struct.ffmpeg_output** %2, align 8
  %30 = getelementptr inbounds %struct.ffmpeg_output, %struct.ffmpeg_output* %29, i32 0, i32 3
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ult i64 %28, %32
  br i1 %33, label %34, label %45

34:                                               ; preds = %27
  %35 = load %struct.ffmpeg_output*, %struct.ffmpeg_output** %2, align 8
  %36 = getelementptr inbounds %struct.ffmpeg_output, %struct.ffmpeg_output* %35, i32 0, i32 3
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* %3, align 8
  %40 = add i64 %38, %39
  %41 = call i32 @av_free_packet(i64 %40)
  br label %42

42:                                               ; preds = %34
  %43 = load i64, i64* %3, align 8
  %44 = add i64 %43, 1
  store i64 %44, i64* %3, align 8
  br label %27

45:                                               ; preds = %27
  %46 = load %struct.ffmpeg_output*, %struct.ffmpeg_output** %2, align 8
  %47 = getelementptr inbounds %struct.ffmpeg_output, %struct.ffmpeg_output* %46, i32 0, i32 3
  %48 = bitcast %struct.TYPE_2__* %47 to { i64, i64 }*
  %49 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %48, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = call i32 @da_free(i64 %50, i64 %52)
  %54 = load %struct.ffmpeg_output*, %struct.ffmpeg_output** %2, align 8
  %55 = getelementptr inbounds %struct.ffmpeg_output, %struct.ffmpeg_output* %54, i32 0, i32 2
  %56 = call i32 @pthread_mutex_unlock(i32* %55)
  %57 = load %struct.ffmpeg_output*, %struct.ffmpeg_output** %2, align 8
  %58 = getelementptr inbounds %struct.ffmpeg_output, %struct.ffmpeg_output* %57, i32 0, i32 1
  %59 = call i32 @ffmpeg_data_free(i32* %58)
  ret void
}

declare dso_local i32 @os_event_signal(i32) #1

declare dso_local i32 @os_sem_post(i32) #1

declare dso_local i32 @pthread_join(i32, i32*) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @av_free_packet(i64) #1

declare dso_local i32 @da_free(i64, i64) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i32 @ffmpeg_data_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
