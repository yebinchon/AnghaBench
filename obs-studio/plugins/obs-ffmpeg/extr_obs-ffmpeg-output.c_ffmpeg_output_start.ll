; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/obs-ffmpeg/extr_obs-ffmpeg-output.c_ffmpeg_output_start.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/obs-ffmpeg/extr_obs-ffmpeg-output.c_ffmpeg_output_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ffmpeg_output = type { i32, i32, i64, i64, i64, i32 }

@start_thread = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @ffmpeg_output_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ffmpeg_output_start(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.ffmpeg_output*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.ffmpeg_output*
  store %struct.ffmpeg_output* %7, %struct.ffmpeg_output** %4, align 8
  %8 = load %struct.ffmpeg_output*, %struct.ffmpeg_output** %4, align 8
  %9 = getelementptr inbounds %struct.ffmpeg_output, %struct.ffmpeg_output* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %33

13:                                               ; preds = %1
  %14 = load %struct.ffmpeg_output*, %struct.ffmpeg_output** %4, align 8
  %15 = getelementptr inbounds %struct.ffmpeg_output, %struct.ffmpeg_output* %14, i32 0, i32 5
  %16 = call i32 @os_atomic_set_bool(i32* %15, i32 0)
  %17 = load %struct.ffmpeg_output*, %struct.ffmpeg_output** %4, align 8
  %18 = getelementptr inbounds %struct.ffmpeg_output, %struct.ffmpeg_output* %17, i32 0, i32 4
  store i64 0, i64* %18, align 8
  %19 = load %struct.ffmpeg_output*, %struct.ffmpeg_output** %4, align 8
  %20 = getelementptr inbounds %struct.ffmpeg_output, %struct.ffmpeg_output* %19, i32 0, i32 3
  store i64 0, i64* %20, align 8
  %21 = load %struct.ffmpeg_output*, %struct.ffmpeg_output** %4, align 8
  %22 = getelementptr inbounds %struct.ffmpeg_output, %struct.ffmpeg_output* %21, i32 0, i32 2
  store i64 0, i64* %22, align 8
  %23 = load %struct.ffmpeg_output*, %struct.ffmpeg_output** %4, align 8
  %24 = getelementptr inbounds %struct.ffmpeg_output, %struct.ffmpeg_output* %23, i32 0, i32 1
  %25 = load i32, i32* @start_thread, align 4
  %26 = load %struct.ffmpeg_output*, %struct.ffmpeg_output** %4, align 8
  %27 = call i32 @pthread_create(i32* %24, i32* null, i32 %25, %struct.ffmpeg_output* %26)
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = icmp eq i32 %28, 0
  %30 = zext i1 %29 to i32
  %31 = load %struct.ffmpeg_output*, %struct.ffmpeg_output** %4, align 8
  %32 = getelementptr inbounds %struct.ffmpeg_output, %struct.ffmpeg_output* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  store i32 %30, i32* %2, align 4
  br label %33

33:                                               ; preds = %13, %12
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local i32 @os_atomic_set_bool(i32*, i32) #1

declare !callback !2 dso_local i32 @pthread_create(i32*, i32*, i32, %struct.ffmpeg_output*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{!3}
!3 = !{i64 2, i64 3, i1 false}
