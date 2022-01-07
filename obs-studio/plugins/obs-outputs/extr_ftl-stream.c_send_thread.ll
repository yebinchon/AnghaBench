; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/obs-outputs/extr_ftl-stream.c_send_thread.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/obs-outputs/extr_ftl-stream.c_send_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ftl_stream = type { i64, i32, i32, i32, i32, i32, i32, %struct.TYPE_2__, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.encoder_packet = type { i32, i64 }

@.str = private unnamed_addr constant [24 x i8] c"ftl-stream: send_thread\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"Disconnected from %s\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"Encoder error, disconnecting\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"User stopped the stream\00", align 1
@OBS_OUTPUT_DISCONNECTED = common dso_local global i32 0, align 4
@OBS_OUTPUT_ENCODE_ERROR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [18 x i8] c"ingest disconnect\00", align 1
@FTL_SUCCESS = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [36 x i8] c"Failed to disconnect from ingest %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @send_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @send_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.ftl_stream*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.encoder_packet, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = bitcast i8* %7 to %struct.ftl_stream*
  store %struct.ftl_stream* %8, %struct.ftl_stream** %3, align 8
  %9 = call i32 @os_set_thread_name(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %10

10:                                               ; preds = %65, %30, %1
  %11 = load %struct.ftl_stream*, %struct.ftl_stream** %3, align 8
  %12 = getelementptr inbounds %struct.ftl_stream, %struct.ftl_stream* %11, i32 0, i32 10
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @os_sem_wait(i32 %13)
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %66

16:                                               ; preds = %10
  %17 = load %struct.ftl_stream*, %struct.ftl_stream** %3, align 8
  %18 = call i64 @stopping(%struct.ftl_stream* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %16
  %21 = load %struct.ftl_stream*, %struct.ftl_stream** %3, align 8
  %22 = getelementptr inbounds %struct.ftl_stream, %struct.ftl_stream* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  br label %66

26:                                               ; preds = %20, %16
  %27 = load %struct.ftl_stream*, %struct.ftl_stream** %3, align 8
  %28 = call i32 @get_next_packet(%struct.ftl_stream* %27, %struct.encoder_packet* %5)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %26
  br label %10

31:                                               ; preds = %26
  %32 = load %struct.ftl_stream*, %struct.ftl_stream** %3, align 8
  %33 = call i64 @stopping(%struct.ftl_stream* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %31
  %36 = load %struct.ftl_stream*, %struct.ftl_stream** %3, align 8
  %37 = call i64 @can_shutdown_stream(%struct.ftl_stream* %36, %struct.encoder_packet* %5)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %35
  %40 = call i32 @obs_encoder_packet_release(%struct.encoder_packet* %5)
  br label %66

41:                                               ; preds = %35
  br label %42

42:                                               ; preds = %41, %31
  %43 = getelementptr inbounds %struct.encoder_packet, %struct.encoder_packet* %5, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %57

46:                                               ; preds = %42
  %47 = load %struct.ftl_stream*, %struct.ftl_stream** %3, align 8
  %48 = getelementptr inbounds %struct.encoder_packet, %struct.encoder_packet* %5, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @send_headers(%struct.ftl_stream* %47, i32 %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %56, label %52

52:                                               ; preds = %46
  %53 = load %struct.ftl_stream*, %struct.ftl_stream** %3, align 8
  %54 = getelementptr inbounds %struct.ftl_stream, %struct.ftl_stream* %53, i32 0, i32 9
  %55 = call i32 @os_atomic_set_bool(i32* %54, i32 1)
  br label %66

56:                                               ; preds = %46
  br label %57

57:                                               ; preds = %56, %42
  %58 = load %struct.ftl_stream*, %struct.ftl_stream** %3, align 8
  %59 = call i64 @send_packet(%struct.ftl_stream* %58, %struct.encoder_packet* %5, i32 0)
  %60 = icmp slt i64 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %57
  %62 = load %struct.ftl_stream*, %struct.ftl_stream** %3, align 8
  %63 = getelementptr inbounds %struct.ftl_stream, %struct.ftl_stream* %62, i32 0, i32 9
  %64 = call i32 @os_atomic_set_bool(i32* %63, i32 1)
  br label %66

65:                                               ; preds = %57
  br label %10

66:                                               ; preds = %61, %52, %39, %25, %10
  %67 = load %struct.ftl_stream*, %struct.ftl_stream** %3, align 8
  %68 = getelementptr inbounds %struct.ftl_stream, %struct.ftl_stream* %67, i32 0, i32 8
  %69 = call i32 @os_atomic_load_bool(i32* %68)
  store i32 %69, i32* %6, align 4
  %70 = load %struct.ftl_stream*, %struct.ftl_stream** %3, align 8
  %71 = call i64 @disconnected(%struct.ftl_stream* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %66
  %74 = load %struct.ftl_stream*, %struct.ftl_stream** %3, align 8
  %75 = getelementptr inbounds %struct.ftl_stream, %struct.ftl_stream* %74, i32 0, i32 7
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = call i32 (i8*, ...) @info(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %77)
  br label %87

79:                                               ; preds = %66
  %80 = load i32, i32* %6, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %79
  %83 = call i32 (i8*, ...) @info(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  br label %86

84:                                               ; preds = %79
  %85 = call i32 (i8*, ...) @info(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  br label %86

86:                                               ; preds = %84, %82
  br label %87

87:                                               ; preds = %86, %73
  %88 = load %struct.ftl_stream*, %struct.ftl_stream** %3, align 8
  %89 = call i64 @stopping(%struct.ftl_stream* %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %101, label %91

91:                                               ; preds = %87
  %92 = load %struct.ftl_stream*, %struct.ftl_stream** %3, align 8
  %93 = getelementptr inbounds %struct.ftl_stream, %struct.ftl_stream* %92, i32 0, i32 6
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @pthread_detach(i32 %94)
  %96 = load %struct.ftl_stream*, %struct.ftl_stream** %3, align 8
  %97 = getelementptr inbounds %struct.ftl_stream, %struct.ftl_stream* %96, i32 0, i32 5
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* @OBS_OUTPUT_DISCONNECTED, align 4
  %100 = call i32 @obs_output_signal_stop(i32 %98, i32 %99)
  br label %116

101:                                              ; preds = %87
  %102 = load i32, i32* %6, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %110

104:                                              ; preds = %101
  %105 = load %struct.ftl_stream*, %struct.ftl_stream** %3, align 8
  %106 = getelementptr inbounds %struct.ftl_stream, %struct.ftl_stream* %105, i32 0, i32 5
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* @OBS_OUTPUT_ENCODE_ERROR, align 4
  %109 = call i32 @obs_output_signal_stop(i32 %107, i32 %108)
  br label %115

110:                                              ; preds = %101
  %111 = load %struct.ftl_stream*, %struct.ftl_stream** %3, align 8
  %112 = getelementptr inbounds %struct.ftl_stream, %struct.ftl_stream* %111, i32 0, i32 5
  %113 = load i32, i32* %112, align 8
  %114 = call i32 @obs_output_end_data_capture(i32 %113)
  br label %115

115:                                              ; preds = %110, %104
  br label %116

116:                                              ; preds = %115, %91
  %117 = call i32 (i8*, ...) @info(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  %118 = load %struct.ftl_stream*, %struct.ftl_stream** %3, align 8
  %119 = getelementptr inbounds %struct.ftl_stream, %struct.ftl_stream* %118, i32 0, i32 4
  %120 = call i64 @ftl_ingest_disconnect(i32* %119)
  store i64 %120, i64* %4, align 8
  %121 = load i64, i64* %4, align 8
  %122 = load i64, i64* @FTL_SUCCESS, align 8
  %123 = icmp ne i64 %121, %122
  br i1 %123, label %124, label %127

124:                                              ; preds = %116
  %125 = load i64, i64* %4, align 8
  %126 = call i32 @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0), i64 %125)
  br label %127

127:                                              ; preds = %124, %116
  %128 = load %struct.ftl_stream*, %struct.ftl_stream** %3, align 8
  %129 = call i32 @free_packets(%struct.ftl_stream* %128)
  %130 = load %struct.ftl_stream*, %struct.ftl_stream** %3, align 8
  %131 = getelementptr inbounds %struct.ftl_stream, %struct.ftl_stream* %130, i32 0, i32 3
  %132 = load i32, i32* %131, align 8
  %133 = call i32 @os_event_reset(i32 %132)
  %134 = load %struct.ftl_stream*, %struct.ftl_stream** %3, align 8
  %135 = getelementptr inbounds %struct.ftl_stream, %struct.ftl_stream* %134, i32 0, i32 2
  %136 = call i32 @os_atomic_set_bool(i32* %135, i32 0)
  %137 = load %struct.ftl_stream*, %struct.ftl_stream** %3, align 8
  %138 = getelementptr inbounds %struct.ftl_stream, %struct.ftl_stream* %137, i32 0, i32 1
  store i32 0, i32* %138, align 8
  ret i8* null
}

declare dso_local i32 @os_set_thread_name(i8*) #1

declare dso_local i64 @os_sem_wait(i32) #1

declare dso_local i64 @stopping(%struct.ftl_stream*) #1

declare dso_local i32 @get_next_packet(%struct.ftl_stream*, %struct.encoder_packet*) #1

declare dso_local i64 @can_shutdown_stream(%struct.ftl_stream*, %struct.encoder_packet*) #1

declare dso_local i32 @obs_encoder_packet_release(%struct.encoder_packet*) #1

declare dso_local i32 @send_headers(%struct.ftl_stream*, i32) #1

declare dso_local i32 @os_atomic_set_bool(i32*, i32) #1

declare dso_local i64 @send_packet(%struct.ftl_stream*, %struct.encoder_packet*, i32) #1

declare dso_local i32 @os_atomic_load_bool(i32*) #1

declare dso_local i64 @disconnected(%struct.ftl_stream*) #1

declare dso_local i32 @info(i8*, ...) #1

declare dso_local i32 @pthread_detach(i32) #1

declare dso_local i32 @obs_output_signal_stop(i32, i32) #1

declare dso_local i32 @obs_output_end_data_capture(i32) #1

declare dso_local i64 @ftl_ingest_disconnect(i32*) #1

declare dso_local i32 @printf(i8*, i64) #1

declare dso_local i32 @free_packets(%struct.ftl_stream*) #1

declare dso_local i32 @os_event_reset(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
