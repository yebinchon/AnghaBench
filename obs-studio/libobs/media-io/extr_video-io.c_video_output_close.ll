; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/media-io/extr_video-io.c_video_output_close.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/media-io/extr_video-io.c_video_output_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32, i32*, %struct.TYPE_7__, %struct.TYPE_9__ }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_9__ = type { i64, i32* }
%struct.video_frame = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @video_output_close(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %5 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %6 = icmp ne %struct.TYPE_8__* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %69

8:                                                ; preds = %1
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %10 = call i32 @video_output_stop(%struct.TYPE_8__* %9)
  store i64 0, i64* %3, align 8
  br label %11

11:                                               ; preds = %26, %8
  %12 = load i64, i64* %3, align 8
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 5
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ult i64 %12, %16
  br i1 %17, label %18, label %29

18:                                               ; preds = %11
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 5
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = load i64, i64* %3, align 8
  %24 = getelementptr inbounds i32, i32* %22, i64 %23
  %25 = call i32 @video_input_free(i32* %24)
  br label %26

26:                                               ; preds = %18
  %27 = load i64, i64* %3, align 8
  %28 = add i64 %27, 1
  store i64 %28, i64* %3, align 8
  br label %11

29:                                               ; preds = %11
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 5
  %32 = bitcast %struct.TYPE_9__* %31 to { i64, i32* }*
  %33 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %32, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = call i32 @da_free(i64 %34, i32* %36)
  store i64 0, i64* %4, align 8
  br label %38

38:                                               ; preds = %53, %29
  %39 = load i64, i64* %4, align 8
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 4
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ult i64 %39, %43
  br i1 %44, label %45, label %56

45:                                               ; preds = %38
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 3
  %48 = load i32*, i32** %47, align 8
  %49 = load i64, i64* %4, align 8
  %50 = getelementptr inbounds i32, i32* %48, i64 %49
  %51 = bitcast i32* %50 to %struct.video_frame*
  %52 = call i32 @video_frame_free(%struct.video_frame* %51)
  br label %53

53:                                               ; preds = %45
  %54 = load i64, i64* %4, align 8
  %55 = add i64 %54, 1
  store i64 %55, i64* %4, align 8
  br label %38

56:                                               ; preds = %38
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @os_sem_destroy(i32 %59)
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 1
  %63 = call i32 @pthread_mutex_destroy(i32* %62)
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 0
  %66 = call i32 @pthread_mutex_destroy(i32* %65)
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %68 = call i32 @bfree(%struct.TYPE_8__* %67)
  br label %69

69:                                               ; preds = %56, %7
  ret void
}

declare dso_local i32 @video_output_stop(%struct.TYPE_8__*) #1

declare dso_local i32 @video_input_free(i32*) #1

declare dso_local i32 @da_free(i64, i32*) #1

declare dso_local i32 @video_frame_free(%struct.video_frame*) #1

declare dso_local i32 @os_sem_destroy(i32) #1

declare dso_local i32 @pthread_mutex_destroy(i32*) #1

declare dso_local i32 @bfree(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
