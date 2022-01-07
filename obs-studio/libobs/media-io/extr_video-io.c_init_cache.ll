; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/media-io/extr_video-io.c_init_cache.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/media-io/extr_video-io.c_init_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.video_output = type { i64, %struct.TYPE_2__, i32* }
%struct.TYPE_2__ = type { i64, i32, i32, i32 }
%struct.video_frame = type { i32 }

@MAX_CACHE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.video_output*)* @init_cache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_cache(%struct.video_output* %0) #0 {
  %2 = alloca %struct.video_output*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.video_frame*, align 8
  store %struct.video_output* %0, %struct.video_output** %2, align 8
  %5 = load %struct.video_output*, %struct.video_output** %2, align 8
  %6 = getelementptr inbounds %struct.video_output, %struct.video_output* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @MAX_CACHE_SIZE, align 8
  %10 = icmp sgt i64 %8, %9
  br i1 %10, label %11, label %16

11:                                               ; preds = %1
  %12 = load i64, i64* @MAX_CACHE_SIZE, align 8
  %13 = load %struct.video_output*, %struct.video_output** %2, align 8
  %14 = getelementptr inbounds %struct.video_output, %struct.video_output* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  store i64 %12, i64* %15, align 8
  br label %16

16:                                               ; preds = %11, %1
  store i64 0, i64* %3, align 8
  br label %17

17:                                               ; preds = %45, %16
  %18 = load i64, i64* %3, align 8
  %19 = load %struct.video_output*, %struct.video_output** %2, align 8
  %20 = getelementptr inbounds %struct.video_output, %struct.video_output* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ult i64 %18, %22
  br i1 %23, label %24, label %48

24:                                               ; preds = %17
  %25 = load %struct.video_output*, %struct.video_output** %2, align 8
  %26 = getelementptr inbounds %struct.video_output, %struct.video_output* %25, i32 0, i32 2
  %27 = load i32*, i32** %26, align 8
  %28 = load i64, i64* %3, align 8
  %29 = getelementptr inbounds i32, i32* %27, i64 %28
  %30 = bitcast i32* %29 to %struct.video_frame*
  store %struct.video_frame* %30, %struct.video_frame** %4, align 8
  %31 = load %struct.video_frame*, %struct.video_frame** %4, align 8
  %32 = load %struct.video_output*, %struct.video_output** %2, align 8
  %33 = getelementptr inbounds %struct.video_output, %struct.video_output* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.video_output*, %struct.video_output** %2, align 8
  %37 = getelementptr inbounds %struct.video_output, %struct.video_output* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.video_output*, %struct.video_output** %2, align 8
  %41 = getelementptr inbounds %struct.video_output, %struct.video_output* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @video_frame_init(%struct.video_frame* %31, i32 %35, i32 %39, i32 %43)
  br label %45

45:                                               ; preds = %24
  %46 = load i64, i64* %3, align 8
  %47 = add i64 %46, 1
  store i64 %47, i64* %3, align 8
  br label %17

48:                                               ; preds = %17
  %49 = load %struct.video_output*, %struct.video_output** %2, align 8
  %50 = getelementptr inbounds %struct.video_output, %struct.video_output* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.video_output*, %struct.video_output** %2, align 8
  %54 = getelementptr inbounds %struct.video_output, %struct.video_output* %53, i32 0, i32 0
  store i64 %52, i64* %54, align 8
  ret void
}

declare dso_local i32 @video_frame_init(%struct.video_frame*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
