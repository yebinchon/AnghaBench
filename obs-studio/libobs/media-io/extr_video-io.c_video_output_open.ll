; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/media-io/extr_video-io.c_video_output_open.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/media-io/extr_video-io.c_video_output_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.video_output = type { i32, i32, i32, i32, i32, i64, i32 }
%struct.video_output_info = type { i64, i64 }

@VIDEO_OUTPUT_INVALIDPARAM = common dso_local global i32 0, align 4
@PTHREAD_MUTEX_RECURSIVE = common dso_local global i32 0, align 4
@video_thread = common dso_local global i32 0, align 4
@VIDEO_OUTPUT_SUCCESS = common dso_local global i32 0, align 4
@VIDEO_OUTPUT_FAIL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @video_output_open(%struct.video_output** %0, %struct.video_output_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.video_output**, align 8
  %5 = alloca %struct.video_output_info*, align 8
  %6 = alloca %struct.video_output*, align 8
  %7 = alloca i32, align 4
  store %struct.video_output** %0, %struct.video_output*** %4, align 8
  store %struct.video_output_info* %1, %struct.video_output_info** %5, align 8
  %8 = load %struct.video_output_info*, %struct.video_output_info** %5, align 8
  %9 = call i32 @valid_video_params(%struct.video_output_info* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @VIDEO_OUTPUT_INVALIDPARAM, align 4
  store i32 %12, i32* %3, align 4
  br label %84

13:                                               ; preds = %2
  %14 = call %struct.video_output* @bzalloc(i32 40)
  store %struct.video_output* %14, %struct.video_output** %6, align 8
  %15 = load %struct.video_output*, %struct.video_output** %6, align 8
  %16 = icmp ne %struct.video_output* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %13
  br label %80

18:                                               ; preds = %13
  %19 = load %struct.video_output*, %struct.video_output** %6, align 8
  %20 = getelementptr inbounds %struct.video_output, %struct.video_output* %19, i32 0, i32 6
  %21 = load %struct.video_output_info*, %struct.video_output_info** %5, align 8
  %22 = call i32 @memcpy(i32* %20, %struct.video_output_info* %21, i32 16)
  %23 = load %struct.video_output_info*, %struct.video_output_info** %5, align 8
  %24 = getelementptr inbounds %struct.video_output_info, %struct.video_output_info* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = sitofp i64 %25 to double
  %27 = fmul double 1.000000e+09, %26
  %28 = load %struct.video_output_info*, %struct.video_output_info** %5, align 8
  %29 = getelementptr inbounds %struct.video_output_info, %struct.video_output_info* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = sitofp i64 %30 to double
  %32 = fdiv double %27, %31
  %33 = fptosi double %32 to i64
  %34 = load %struct.video_output*, %struct.video_output** %6, align 8
  %35 = getelementptr inbounds %struct.video_output, %struct.video_output* %34, i32 0, i32 5
  store i64 %33, i64* %35, align 8
  %36 = load %struct.video_output*, %struct.video_output** %6, align 8
  %37 = getelementptr inbounds %struct.video_output, %struct.video_output* %36, i32 0, i32 0
  store i32 0, i32* %37, align 8
  %38 = call i64 @pthread_mutexattr_init(i32* %7)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %18
  br label %80

41:                                               ; preds = %18
  %42 = load i32, i32* @PTHREAD_MUTEX_RECURSIVE, align 4
  %43 = call i64 @pthread_mutexattr_settype(i32* %7, i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %41
  br label %80

46:                                               ; preds = %41
  %47 = load %struct.video_output*, %struct.video_output** %6, align 8
  %48 = getelementptr inbounds %struct.video_output, %struct.video_output* %47, i32 0, i32 4
  %49 = call i64 @pthread_mutex_init(i32* %48, i32* %7)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  br label %80

52:                                               ; preds = %46
  %53 = load %struct.video_output*, %struct.video_output** %6, align 8
  %54 = getelementptr inbounds %struct.video_output, %struct.video_output* %53, i32 0, i32 3
  %55 = call i64 @pthread_mutex_init(i32* %54, i32* %7)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %52
  br label %80

58:                                               ; preds = %52
  %59 = load %struct.video_output*, %struct.video_output** %6, align 8
  %60 = getelementptr inbounds %struct.video_output, %struct.video_output* %59, i32 0, i32 2
  %61 = call i64 @os_sem_init(i32* %60, i32 0)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %58
  br label %80

64:                                               ; preds = %58
  %65 = load %struct.video_output*, %struct.video_output** %6, align 8
  %66 = getelementptr inbounds %struct.video_output, %struct.video_output* %65, i32 0, i32 1
  %67 = load i32, i32* @video_thread, align 4
  %68 = load %struct.video_output*, %struct.video_output** %6, align 8
  %69 = call i64 @pthread_create(i32* %66, i32* null, i32 %67, %struct.video_output* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %64
  br label %80

72:                                               ; preds = %64
  %73 = load %struct.video_output*, %struct.video_output** %6, align 8
  %74 = call i32 @init_cache(%struct.video_output* %73)
  %75 = load %struct.video_output*, %struct.video_output** %6, align 8
  %76 = getelementptr inbounds %struct.video_output, %struct.video_output* %75, i32 0, i32 0
  store i32 1, i32* %76, align 8
  %77 = load %struct.video_output*, %struct.video_output** %6, align 8
  %78 = load %struct.video_output**, %struct.video_output*** %4, align 8
  store %struct.video_output* %77, %struct.video_output** %78, align 8
  %79 = load i32, i32* @VIDEO_OUTPUT_SUCCESS, align 4
  store i32 %79, i32* %3, align 4
  br label %84

80:                                               ; preds = %71, %63, %57, %51, %45, %40, %17
  %81 = load %struct.video_output*, %struct.video_output** %6, align 8
  %82 = call i32 @video_output_close(%struct.video_output* %81)
  %83 = load i32, i32* @VIDEO_OUTPUT_FAIL, align 4
  store i32 %83, i32* %3, align 4
  br label %84

84:                                               ; preds = %80, %72, %11
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

declare dso_local i32 @valid_video_params(%struct.video_output_info*) #1

declare dso_local %struct.video_output* @bzalloc(i32) #1

declare dso_local i32 @memcpy(i32*, %struct.video_output_info*, i32) #1

declare dso_local i64 @pthread_mutexattr_init(i32*) #1

declare dso_local i64 @pthread_mutexattr_settype(i32*, i32) #1

declare dso_local i64 @pthread_mutex_init(i32*, i32*) #1

declare dso_local i64 @os_sem_init(i32*, i32) #1

declare !callback !2 dso_local i64 @pthread_create(i32*, i32*, i32, %struct.video_output*) #1

declare dso_local i32 @init_cache(%struct.video_output*) #1

declare dso_local i32 @video_output_close(%struct.video_output*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{!3}
!3 = !{i64 2, i64 3, i1 false}
