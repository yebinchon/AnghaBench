; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/linux-pulseaudio/extr_pulse-input.c_pulse_start_recording.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/linux-pulseaudio/extr_pulse-input.c_pulse_start_recording.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pulse_data = type { i64, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i64, i32, i32 }
%struct.TYPE_9__ = type { i8*, i8*, i8*, i8*, i32 }

@pulse_server_info = common dso_local global i32 0, align 4
@LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Unable to get server info !\00", align 1
@pulse_source_info = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Unable to get source info !\00", align 1
@PA_SAMPLE_INVALID = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [49 x i8] c"An error occurred while getting the source info!\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"Sample spec is not valid\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"Unable to create stream\00", align 1
@pulse_stream_read = common dso_local global i32 0, align 4
@PA_STREAM_ADJUST_LATENCY = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [28 x i8] c"Unable to connect to stream\00", align 1
@LOG_INFO = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [28 x i8] c"Started recording from '%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pulse_data*)* @pulse_start_recording to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pulse_start_recording(%struct.pulse_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pulse_data*, align 8
  %4 = alloca %struct.TYPE_8__, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_9__, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.pulse_data* %0, %struct.pulse_data** %3, align 8
  %9 = load i32, i32* @pulse_server_info, align 4
  %10 = load %struct.pulse_data*, %struct.pulse_data** %3, align 8
  %11 = bitcast %struct.pulse_data* %10 to i8*
  %12 = call i64 @pulse_get_server_info(i32 %9, i8* %11)
  %13 = icmp slt i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load i32, i32* @LOG_ERROR, align 4
  %16 = call i32 (i32, i8*, ...) @blog(i32 %15, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %123

17:                                               ; preds = %1
  %18 = load i32, i32* @pulse_source_info, align 4
  %19 = load %struct.pulse_data*, %struct.pulse_data** %3, align 8
  %20 = getelementptr inbounds %struct.pulse_data, %struct.pulse_data* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.pulse_data*, %struct.pulse_data** %3, align 8
  %23 = bitcast %struct.pulse_data* %22 to i8*
  %24 = call i64 @pulse_get_source_info(i32 %18, i32 %21, i8* %23)
  %25 = icmp slt i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %17
  %27 = load i32, i32* @LOG_ERROR, align 4
  %28 = call i32 (i32, i8*, ...) @blog(i32 %27, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %123

29:                                               ; preds = %17
  %30 = load %struct.pulse_data*, %struct.pulse_data** %3, align 8
  %31 = getelementptr inbounds %struct.pulse_data, %struct.pulse_data* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @PA_SAMPLE_INVALID, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %29
  %36 = load i32, i32* @LOG_ERROR, align 4
  %37 = call i32 (i32, i8*, ...) @blog(i32 %36, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %123

38:                                               ; preds = %29
  %39 = load %struct.pulse_data*, %struct.pulse_data** %3, align 8
  %40 = getelementptr inbounds %struct.pulse_data, %struct.pulse_data* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 0
  store i64 %41, i64* %42, align 8
  %43 = load %struct.pulse_data*, %struct.pulse_data** %3, align 8
  %44 = getelementptr inbounds %struct.pulse_data, %struct.pulse_data* %43, i32 0, i32 7
  %45 = load i32, i32* %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 2
  store i32 %45, i32* %46, align 4
  %47 = load %struct.pulse_data*, %struct.pulse_data** %3, align 8
  %48 = getelementptr inbounds %struct.pulse_data, %struct.pulse_data* %47, i32 0, i32 6
  %49 = load i32, i32* %48, align 4
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 1
  store i32 %49, i32* %50, align 8
  %51 = call i32 @pa_sample_spec_valid(%struct.TYPE_8__* %4)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %38
  %54 = load i32, i32* @LOG_ERROR, align 4
  %55 = call i32 (i32, i8*, ...) @blog(i32 %54, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %123

56:                                               ; preds = %38
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @pulse_channels_to_obs_speakers(i32 %58)
  %60 = load %struct.pulse_data*, %struct.pulse_data** %3, align 8
  %61 = getelementptr inbounds %struct.pulse_data, %struct.pulse_data* %60, i32 0, i32 4
  store i32 %59, i32* %61, align 4
  %62 = call i32 @pa_frame_size(%struct.TYPE_8__* %4)
  %63 = load %struct.pulse_data*, %struct.pulse_data** %3, align 8
  %64 = getelementptr inbounds %struct.pulse_data, %struct.pulse_data* %63, i32 0, i32 5
  store i32 %62, i32* %64, align 8
  %65 = load %struct.pulse_data*, %struct.pulse_data** %3, align 8
  %66 = getelementptr inbounds %struct.pulse_data, %struct.pulse_data* %65, i32 0, i32 4
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @pulse_channel_map(i32 %67)
  store i32 %68, i32* %5, align 4
  %69 = load %struct.pulse_data*, %struct.pulse_data** %3, align 8
  %70 = getelementptr inbounds %struct.pulse_data, %struct.pulse_data* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @obs_source_get_name(i32 %71)
  %73 = call i32 @pulse_stream_new(i32 %72, %struct.TYPE_8__* %4, i32* %5)
  %74 = load %struct.pulse_data*, %struct.pulse_data** %3, align 8
  %75 = getelementptr inbounds %struct.pulse_data, %struct.pulse_data* %74, i32 0, i32 2
  store i32 %73, i32* %75, align 4
  %76 = load %struct.pulse_data*, %struct.pulse_data** %3, align 8
  %77 = getelementptr inbounds %struct.pulse_data, %struct.pulse_data* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %83, label %80

80:                                               ; preds = %56
  %81 = load i32, i32* @LOG_ERROR, align 4
  %82 = call i32 (i32, i8*, ...) @blog(i32 %81, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %123

83:                                               ; preds = %56
  %84 = call i32 (...) @pulse_lock()
  %85 = load %struct.pulse_data*, %struct.pulse_data** %3, align 8
  %86 = getelementptr inbounds %struct.pulse_data, %struct.pulse_data* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @pulse_stream_read, align 4
  %89 = load %struct.pulse_data*, %struct.pulse_data** %3, align 8
  %90 = bitcast %struct.pulse_data* %89 to i8*
  %91 = call i32 @pa_stream_set_read_callback(i32 %87, i32 %88, i8* %90)
  %92 = call i32 (...) @pulse_unlock()
  %93 = call i32 @pa_usec_to_bytes(i32 25000, %struct.TYPE_8__* %4)
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 4
  store i32 %93, i32* %94, align 8
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 3
  store i8* inttoptr (i64 -1 to i8*), i8** %95, align 8
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 2
  store i8* inttoptr (i64 -1 to i8*), i8** %96, align 8
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 1
  store i8* inttoptr (i64 -1 to i8*), i8** %97, align 8
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 0
  store i8* inttoptr (i64 -1 to i8*), i8** %98, align 8
  %99 = load i32, i32* @PA_STREAM_ADJUST_LATENCY, align 4
  store i32 %99, i32* %7, align 4
  %100 = call i32 (...) @pulse_lock()
  %101 = load %struct.pulse_data*, %struct.pulse_data** %3, align 8
  %102 = getelementptr inbounds %struct.pulse_data, %struct.pulse_data* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.pulse_data*, %struct.pulse_data** %3, align 8
  %105 = getelementptr inbounds %struct.pulse_data, %struct.pulse_data* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* %7, align 4
  %108 = call i32 @pa_stream_connect_record(i32 %103, i32 %106, %struct.TYPE_9__* %6, i32 %107)
  store i32 %108, i32* %8, align 4
  %109 = call i32 (...) @pulse_unlock()
  %110 = load i32, i32* %8, align 4
  %111 = icmp slt i32 %110, 0
  br i1 %111, label %112, label %117

112:                                              ; preds = %83
  %113 = load %struct.pulse_data*, %struct.pulse_data** %3, align 8
  %114 = call i32 @pulse_stop_recording(%struct.pulse_data* %113)
  %115 = load i32, i32* @LOG_ERROR, align 4
  %116 = call i32 (i32, i8*, ...) @blog(i32 %115, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %123

117:                                              ; preds = %83
  %118 = load i32, i32* @LOG_INFO, align 4
  %119 = load %struct.pulse_data*, %struct.pulse_data** %3, align 8
  %120 = getelementptr inbounds %struct.pulse_data, %struct.pulse_data* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 8
  %122 = call i32 (i32, i8*, ...) @blog(i32 %118, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0), i32 %121)
  store i32 0, i32* %2, align 4
  br label %123

123:                                              ; preds = %117, %112, %80, %53, %35, %26, %14
  %124 = load i32, i32* %2, align 4
  ret i32 %124
}

declare dso_local i64 @pulse_get_server_info(i32, i8*) #1

declare dso_local i32 @blog(i32, i8*, ...) #1

declare dso_local i64 @pulse_get_source_info(i32, i32, i8*) #1

declare dso_local i32 @pa_sample_spec_valid(%struct.TYPE_8__*) #1

declare dso_local i32 @pulse_channels_to_obs_speakers(i32) #1

declare dso_local i32 @pa_frame_size(%struct.TYPE_8__*) #1

declare dso_local i32 @pulse_channel_map(i32) #1

declare dso_local i32 @pulse_stream_new(i32, %struct.TYPE_8__*, i32*) #1

declare dso_local i32 @obs_source_get_name(i32) #1

declare dso_local i32 @pulse_lock(...) #1

declare dso_local i32 @pa_stream_set_read_callback(i32, i32, i8*) #1

declare dso_local i32 @pulse_unlock(...) #1

declare dso_local i32 @pa_usec_to_bytes(i32, %struct.TYPE_8__*) #1

declare dso_local i32 @pa_stream_connect_record(i32, i32, %struct.TYPE_9__*, i32) #1

declare dso_local i32 @pulse_stop_recording(%struct.pulse_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
