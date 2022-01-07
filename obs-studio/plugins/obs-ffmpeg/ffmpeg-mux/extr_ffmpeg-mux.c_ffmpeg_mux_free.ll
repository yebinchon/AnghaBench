; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/obs-ffmpeg/ffmpeg-mux/extr_ffmpeg-mux.c_ffmpeg_mux_free.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/obs-ffmpeg/ffmpeg-mux/extr_ffmpeg-mux.c_ffmpeg_mux_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ffmpeg_mux = type { i32*, i32*, %struct.TYPE_2__, i32, i32, i64 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ffmpeg_mux*)* @ffmpeg_mux_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ffmpeg_mux_free(%struct.ffmpeg_mux* %0) #0 {
  %2 = alloca %struct.ffmpeg_mux*, align 8
  %3 = alloca i32, align 4
  store %struct.ffmpeg_mux* %0, %struct.ffmpeg_mux** %2, align 8
  %4 = load %struct.ffmpeg_mux*, %struct.ffmpeg_mux** %2, align 8
  %5 = getelementptr inbounds %struct.ffmpeg_mux, %struct.ffmpeg_mux* %4, i32 0, i32 5
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %13

8:                                                ; preds = %1
  %9 = load %struct.ffmpeg_mux*, %struct.ffmpeg_mux** %2, align 8
  %10 = getelementptr inbounds %struct.ffmpeg_mux, %struct.ffmpeg_mux* %9, i32 0, i32 4
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @av_write_trailer(i32 %11)
  br label %13

13:                                               ; preds = %8, %1
  %14 = load %struct.ffmpeg_mux*, %struct.ffmpeg_mux** %2, align 8
  %15 = call i32 @free_avformat(%struct.ffmpeg_mux* %14)
  %16 = load %struct.ffmpeg_mux*, %struct.ffmpeg_mux** %2, align 8
  %17 = getelementptr inbounds %struct.ffmpeg_mux, %struct.ffmpeg_mux* %16, i32 0, i32 3
  %18 = call i32 @header_free(i32* %17)
  %19 = load %struct.ffmpeg_mux*, %struct.ffmpeg_mux** %2, align 8
  %20 = getelementptr inbounds %struct.ffmpeg_mux, %struct.ffmpeg_mux* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %47

23:                                               ; preds = %13
  store i32 0, i32* %3, align 4
  br label %24

24:                                               ; preds = %39, %23
  %25 = load i32, i32* %3, align 4
  %26 = load %struct.ffmpeg_mux*, %struct.ffmpeg_mux** %2, align 8
  %27 = getelementptr inbounds %struct.ffmpeg_mux, %struct.ffmpeg_mux* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp slt i32 %25, %29
  br i1 %30, label %31, label %42

31:                                               ; preds = %24
  %32 = load %struct.ffmpeg_mux*, %struct.ffmpeg_mux** %2, align 8
  %33 = getelementptr inbounds %struct.ffmpeg_mux, %struct.ffmpeg_mux* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* %3, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = call i32 @header_free(i32* %37)
  br label %39

39:                                               ; preds = %31
  %40 = load i32, i32* %3, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %3, align 4
  br label %24

42:                                               ; preds = %24
  %43 = load %struct.ffmpeg_mux*, %struct.ffmpeg_mux** %2, align 8
  %44 = getelementptr inbounds %struct.ffmpeg_mux, %struct.ffmpeg_mux* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = call i32 @free(i32* %45)
  br label %47

47:                                               ; preds = %42, %13
  %48 = load %struct.ffmpeg_mux*, %struct.ffmpeg_mux** %2, align 8
  %49 = getelementptr inbounds %struct.ffmpeg_mux, %struct.ffmpeg_mux* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = icmp ne i32* %50, null
  br i1 %51, label %52, label %57

52:                                               ; preds = %47
  %53 = load %struct.ffmpeg_mux*, %struct.ffmpeg_mux** %2, align 8
  %54 = getelementptr inbounds %struct.ffmpeg_mux, %struct.ffmpeg_mux* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = call i32 @free(i32* %55)
  br label %57

57:                                               ; preds = %52, %47
  %58 = load %struct.ffmpeg_mux*, %struct.ffmpeg_mux** %2, align 8
  %59 = call i32 @memset(%struct.ffmpeg_mux* %58, i32 0, i32 40)
  ret void
}

declare dso_local i32 @av_write_trailer(i32) #1

declare dso_local i32 @free_avformat(%struct.ffmpeg_mux*) #1

declare dso_local i32 @header_free(i32*) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @memset(%struct.ffmpeg_mux*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
