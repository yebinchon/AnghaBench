; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/media-io/extr_audio-io.c_audio_output_open.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/media-io/extr_audio-io.c_audio_output_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.audio_output = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.audio_output_info = type { i32, i32, i32, i32 }

@AUDIO_OUTPUT_INVALIDPARAM = common dso_local global i32 0, align 4
@PTHREAD_MUTEX_RECURSIVE = common dso_local global i32 0, align 4
@OS_EVENT_TYPE_MANUAL = common dso_local global i32 0, align 4
@audio_thread = common dso_local global i32 0, align 4
@AUDIO_OUTPUT_SUCCESS = common dso_local global i32 0, align 4
@AUDIO_OUTPUT_FAIL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @audio_output_open(%struct.audio_output** %0, %struct.audio_output_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.audio_output**, align 8
  %5 = alloca %struct.audio_output_info*, align 8
  %6 = alloca %struct.audio_output*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.audio_output** %0, %struct.audio_output*** %4, align 8
  store %struct.audio_output_info* %1, %struct.audio_output_info** %5, align 8
  %9 = load %struct.audio_output_info*, %struct.audio_output_info** %5, align 8
  %10 = getelementptr inbounds %struct.audio_output_info, %struct.audio_output_info* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @is_audio_planar(i32 %11)
  store i32 %12, i32* %8, align 4
  %13 = load %struct.audio_output_info*, %struct.audio_output_info** %5, align 8
  %14 = call i32 @valid_audio_params(%struct.audio_output_info* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @AUDIO_OUTPUT_INVALIDPARAM, align 4
  store i32 %17, i32* %3, align 4
  br label %110

18:                                               ; preds = %2
  %19 = call %struct.audio_output* @bzalloc(i32 40)
  store %struct.audio_output* %19, %struct.audio_output** %6, align 8
  %20 = load %struct.audio_output*, %struct.audio_output** %6, align 8
  %21 = icmp ne %struct.audio_output* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %18
  br label %106

23:                                               ; preds = %18
  %24 = load %struct.audio_output*, %struct.audio_output** %6, align 8
  %25 = getelementptr inbounds %struct.audio_output, %struct.audio_output* %24, i32 0, i32 9
  %26 = load %struct.audio_output_info*, %struct.audio_output_info** %5, align 8
  %27 = call i32 @memcpy(i32* %25, %struct.audio_output_info* %26, i32 16)
  %28 = load %struct.audio_output_info*, %struct.audio_output_info** %5, align 8
  %29 = getelementptr inbounds %struct.audio_output_info, %struct.audio_output_info* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @get_audio_channels(i32 %30)
  %32 = load %struct.audio_output*, %struct.audio_output** %6, align 8
  %33 = getelementptr inbounds %struct.audio_output, %struct.audio_output* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %23
  %37 = load %struct.audio_output*, %struct.audio_output** %6, align 8
  %38 = getelementptr inbounds %struct.audio_output, %struct.audio_output* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  br label %41

40:                                               ; preds = %23
  br label %41

41:                                               ; preds = %40, %36
  %42 = phi i32 [ %39, %36 ], [ 1, %40 ]
  %43 = load %struct.audio_output*, %struct.audio_output** %6, align 8
  %44 = getelementptr inbounds %struct.audio_output, %struct.audio_output* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  %45 = load %struct.audio_output_info*, %struct.audio_output_info** %5, align 8
  %46 = getelementptr inbounds %struct.audio_output_info, %struct.audio_output_info* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.audio_output*, %struct.audio_output** %6, align 8
  %49 = getelementptr inbounds %struct.audio_output, %struct.audio_output* %48, i32 0, i32 8
  store i32 %47, i32* %49, align 4
  %50 = load %struct.audio_output_info*, %struct.audio_output_info** %5, align 8
  %51 = getelementptr inbounds %struct.audio_output_info, %struct.audio_output_info* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.audio_output*, %struct.audio_output** %6, align 8
  %54 = getelementptr inbounds %struct.audio_output, %struct.audio_output* %53, i32 0, i32 7
  store i32 %52, i32* %54, align 4
  %55 = load i32, i32* %8, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %41
  br label %62

58:                                               ; preds = %41
  %59 = load %struct.audio_output*, %struct.audio_output** %6, align 8
  %60 = getelementptr inbounds %struct.audio_output, %struct.audio_output* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  br label %62

62:                                               ; preds = %58, %57
  %63 = phi i32 [ 1, %57 ], [ %61, %58 ]
  %64 = load %struct.audio_output_info*, %struct.audio_output_info** %5, align 8
  %65 = getelementptr inbounds %struct.audio_output_info, %struct.audio_output_info* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @get_audio_bytes_per_channel(i32 %66)
  %68 = mul nsw i32 %63, %67
  %69 = load %struct.audio_output*, %struct.audio_output** %6, align 8
  %70 = getelementptr inbounds %struct.audio_output, %struct.audio_output* %69, i32 0, i32 2
  store i32 %68, i32* %70, align 4
  %71 = call i64 @pthread_mutexattr_init(i32* %7)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %62
  br label %106

74:                                               ; preds = %62
  %75 = load i32, i32* @PTHREAD_MUTEX_RECURSIVE, align 4
  %76 = call i64 @pthread_mutexattr_settype(i32* %7, i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %74
  br label %106

79:                                               ; preds = %74
  %80 = load %struct.audio_output*, %struct.audio_output** %6, align 8
  %81 = getelementptr inbounds %struct.audio_output, %struct.audio_output* %80, i32 0, i32 6
  %82 = call i64 @pthread_mutex_init(i32* %81, i32* %7)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %79
  br label %106

85:                                               ; preds = %79
  %86 = load %struct.audio_output*, %struct.audio_output** %6, align 8
  %87 = getelementptr inbounds %struct.audio_output, %struct.audio_output* %86, i32 0, i32 5
  %88 = load i32, i32* @OS_EVENT_TYPE_MANUAL, align 4
  %89 = call i64 @os_event_init(i32* %87, i32 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %85
  br label %106

92:                                               ; preds = %85
  %93 = load %struct.audio_output*, %struct.audio_output** %6, align 8
  %94 = getelementptr inbounds %struct.audio_output, %struct.audio_output* %93, i32 0, i32 4
  %95 = load i32, i32* @audio_thread, align 4
  %96 = load %struct.audio_output*, %struct.audio_output** %6, align 8
  %97 = call i64 @pthread_create(i32* %94, i32* null, i32 %95, %struct.audio_output* %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %92
  br label %106

100:                                              ; preds = %92
  %101 = load %struct.audio_output*, %struct.audio_output** %6, align 8
  %102 = getelementptr inbounds %struct.audio_output, %struct.audio_output* %101, i32 0, i32 3
  store i32 1, i32* %102, align 4
  %103 = load %struct.audio_output*, %struct.audio_output** %6, align 8
  %104 = load %struct.audio_output**, %struct.audio_output*** %4, align 8
  store %struct.audio_output* %103, %struct.audio_output** %104, align 8
  %105 = load i32, i32* @AUDIO_OUTPUT_SUCCESS, align 4
  store i32 %105, i32* %3, align 4
  br label %110

106:                                              ; preds = %99, %91, %84, %78, %73, %22
  %107 = load %struct.audio_output*, %struct.audio_output** %6, align 8
  %108 = call i32 @audio_output_close(%struct.audio_output* %107)
  %109 = load i32, i32* @AUDIO_OUTPUT_FAIL, align 4
  store i32 %109, i32* %3, align 4
  br label %110

110:                                              ; preds = %106, %100, %16
  %111 = load i32, i32* %3, align 4
  ret i32 %111
}

declare dso_local i32 @is_audio_planar(i32) #1

declare dso_local i32 @valid_audio_params(%struct.audio_output_info*) #1

declare dso_local %struct.audio_output* @bzalloc(i32) #1

declare dso_local i32 @memcpy(i32*, %struct.audio_output_info*, i32) #1

declare dso_local i32 @get_audio_channels(i32) #1

declare dso_local i32 @get_audio_bytes_per_channel(i32) #1

declare dso_local i64 @pthread_mutexattr_init(i32*) #1

declare dso_local i64 @pthread_mutexattr_settype(i32*, i32) #1

declare dso_local i64 @pthread_mutex_init(i32*, i32*) #1

declare dso_local i64 @os_event_init(i32*, i32) #1

declare !callback !2 dso_local i64 @pthread_create(i32*, i32*, i32, %struct.audio_output*) #1

declare dso_local i32 @audio_output_close(%struct.audio_output*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{!3}
!3 = !{i64 2, i64 3, i1 false}
