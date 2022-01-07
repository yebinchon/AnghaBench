; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-output.c_end_data_capture_thread.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-output.c_end_data_capture_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32, i64, i32, i32, i32 }

@process_delay = common dso_local global i32 0, align 4
@interleave_packets = common dso_local global i32 0, align 4
@default_encoded_callback = common dso_local global i32 0, align 4
@default_raw_video_callback = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"deactivate\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @end_data_capture_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @end_data_capture_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_9__*, align 8
  store i8* %0, i8** %2, align 8
  %9 = load i8*, i8** %2, align 8
  %10 = bitcast i8* %9 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %10, %struct.TYPE_9__** %8, align 8
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %12 = call i32 @convert_flags(%struct.TYPE_9__* %11, i32 0, i32* %3, i32* %4, i32* %5, i32* %6)
  %13 = load i32, i32* %3, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %52

15:                                               ; preds = %1
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 3
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  %21 = load i32, i32* @process_delay, align 4
  store i32 %21, i32* %7, align 4
  br label %34

22:                                               ; preds = %15
  %23 = load i32, i32* %4, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %22
  %26 = load i32, i32* %5, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %25
  %29 = load i32, i32* @interleave_packets, align 4
  br label %32

30:                                               ; preds = %25, %22
  %31 = load i32, i32* @default_encoded_callback, align 4
  br label %32

32:                                               ; preds = %30, %28
  %33 = phi i32 [ %29, %28 ], [ %31, %30 ]
  store i32 %33, i32* %7, align 4
  br label %34

34:                                               ; preds = %32, %20
  %35 = load i32, i32* %4, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %34
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 6
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* %7, align 4
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %43 = call i32 @obs_encoder_stop(i32 %40, i32 %41, %struct.TYPE_9__* %42)
  br label %44

44:                                               ; preds = %37, %34
  %45 = load i32, i32* %5, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %44
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @stop_audio_encoders(%struct.TYPE_9__* %48, i32 %49)
  br label %51

51:                                               ; preds = %47, %44
  br label %69

52:                                               ; preds = %1
  %53 = load i32, i32* %4, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %52
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 5
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @default_raw_video_callback, align 4
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %61 = call i32 @stop_raw_video(i32 %58, i32 %59, %struct.TYPE_9__* %60)
  br label %62

62:                                               ; preds = %55, %52
  %63 = load i32, i32* %5, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %62
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %67 = call i32 @stop_raw_audio(%struct.TYPE_9__* %66)
  br label %68

68:                                               ; preds = %65, %62
  br label %69

69:                                               ; preds = %68, %51
  %70 = load i32, i32* %6, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %69
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 4
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @obs_service_deactivate(i32 %75, i32 0)
  br label %77

77:                                               ; preds = %72, %69
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 3
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %77
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %84 = call i32 @obs_output_cleanup_delay(%struct.TYPE_9__* %83)
  br label %85

85:                                               ; preds = %82, %77
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %87 = call i32 @do_output_signal(%struct.TYPE_9__* %86, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 2
  %90 = call i32 @os_atomic_set_bool(i32* %89, i32 0)
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @os_event_signal(i32 %93)
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 0
  %97 = call i32 @os_atomic_set_bool(i32* %96, i32 0)
  ret i8* null
}

declare dso_local i32 @convert_flags(%struct.TYPE_9__*, i32, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @obs_encoder_stop(i32, i32, %struct.TYPE_9__*) #1

declare dso_local i32 @stop_audio_encoders(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @stop_raw_video(i32, i32, %struct.TYPE_9__*) #1

declare dso_local i32 @stop_raw_audio(%struct.TYPE_9__*) #1

declare dso_local i32 @obs_service_deactivate(i32, i32) #1

declare dso_local i32 @obs_output_cleanup_delay(%struct.TYPE_9__*) #1

declare dso_local i32 @do_output_signal(%struct.TYPE_9__*, i8*) #1

declare dso_local i32 @os_atomic_set_bool(i32*, i32) #1

declare dso_local i32 @os_event_signal(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
