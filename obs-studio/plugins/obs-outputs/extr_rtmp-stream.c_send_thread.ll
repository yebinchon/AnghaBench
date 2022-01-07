; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/obs-outputs/extr_rtmp-stream.c_send_thread.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/obs-outputs/extr_rtmp-stream.c_send_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtmp_stream = type { i64, i32, i32, i64, i64, i64, i32, i32, i32, i32, %struct.TYPE_4__, i32, i32, i32, i64, %struct.TYPE_3__, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.encoder_packet = type { i32, i32 }
%struct.dbr_frame = type { i8*, i32, i8* }

@.str = private unnamed_addr constant [25 x i8] c"rtmp-stream: send_thread\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"Disconnected from %s\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"Encoder error, disconnecting\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"User stopped the stream\00", align 1
@OBS_OUTPUT_DISCONNECTED = common dso_local global i32 0, align 4
@OBS_OUTPUT_ENCODE_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @send_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @send_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.rtmp_stream*, align 8
  %4 = alloca %struct.encoder_packet, align 4
  %5 = alloca %struct.dbr_frame, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = bitcast i8* %7 to %struct.rtmp_stream*
  store %struct.rtmp_stream* %8, %struct.rtmp_stream** %3, align 8
  %9 = call i32 @os_set_thread_name(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %10

10:                                               ; preds = %93, %30, %1
  %11 = load %struct.rtmp_stream*, %struct.rtmp_stream** %3, align 8
  %12 = getelementptr inbounds %struct.rtmp_stream, %struct.rtmp_stream* %11, i32 0, i32 19
  %13 = load i32, i32* %12, align 8
  %14 = call i64 @os_sem_wait(i32 %13)
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %94

16:                                               ; preds = %10
  %17 = load %struct.rtmp_stream*, %struct.rtmp_stream** %3, align 8
  %18 = call i64 @stopping(%struct.rtmp_stream* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %16
  %21 = load %struct.rtmp_stream*, %struct.rtmp_stream** %3, align 8
  %22 = getelementptr inbounds %struct.rtmp_stream, %struct.rtmp_stream* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  br label %94

26:                                               ; preds = %20, %16
  %27 = load %struct.rtmp_stream*, %struct.rtmp_stream** %3, align 8
  %28 = call i32 @get_next_packet(%struct.rtmp_stream* %27, %struct.encoder_packet* %4)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %26
  br label %10

31:                                               ; preds = %26
  %32 = load %struct.rtmp_stream*, %struct.rtmp_stream** %3, align 8
  %33 = call i64 @stopping(%struct.rtmp_stream* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %31
  %36 = load %struct.rtmp_stream*, %struct.rtmp_stream** %3, align 8
  %37 = call i64 @can_shutdown_stream(%struct.rtmp_stream* %36, %struct.encoder_packet* %4)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %35
  %40 = call i32 @obs_encoder_packet_release(%struct.encoder_packet* %4)
  br label %94

41:                                               ; preds = %35
  br label %42

42:                                               ; preds = %41, %31
  %43 = load %struct.rtmp_stream*, %struct.rtmp_stream** %3, align 8
  %44 = getelementptr inbounds %struct.rtmp_stream, %struct.rtmp_stream* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %56, label %47

47:                                               ; preds = %42
  %48 = load %struct.rtmp_stream*, %struct.rtmp_stream** %3, align 8
  %49 = call i32 @send_headers(%struct.rtmp_stream* %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %55, label %51

51:                                               ; preds = %47
  %52 = load %struct.rtmp_stream*, %struct.rtmp_stream** %3, align 8
  %53 = getelementptr inbounds %struct.rtmp_stream, %struct.rtmp_stream* %52, i32 0, i32 18
  %54 = call i32 @os_atomic_set_bool(i32* %53, i32 1)
  br label %94

55:                                               ; preds = %47
  br label %56

56:                                               ; preds = %55, %42
  %57 = load %struct.rtmp_stream*, %struct.rtmp_stream** %3, align 8
  %58 = getelementptr inbounds %struct.rtmp_stream, %struct.rtmp_stream* %57, i32 0, i32 5
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %56
  %62 = call i8* (...) @os_gettime_ns()
  %63 = getelementptr inbounds %struct.dbr_frame, %struct.dbr_frame* %5, i32 0, i32 2
  store i8* %62, i8** %63, align 8
  %64 = getelementptr inbounds %struct.encoder_packet, %struct.encoder_packet* %4, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = getelementptr inbounds %struct.dbr_frame, %struct.dbr_frame* %5, i32 0, i32 1
  store i32 %65, i32* %66, align 8
  br label %67

67:                                               ; preds = %61, %56
  %68 = load %struct.rtmp_stream*, %struct.rtmp_stream** %3, align 8
  %69 = getelementptr inbounds %struct.encoder_packet, %struct.encoder_packet* %4, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i64 @send_packet(%struct.rtmp_stream* %68, %struct.encoder_packet* %4, i32 0, i32 %70)
  %72 = icmp slt i64 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %67
  %74 = load %struct.rtmp_stream*, %struct.rtmp_stream** %3, align 8
  %75 = getelementptr inbounds %struct.rtmp_stream, %struct.rtmp_stream* %74, i32 0, i32 18
  %76 = call i32 @os_atomic_set_bool(i32* %75, i32 1)
  br label %94

77:                                               ; preds = %67
  %78 = load %struct.rtmp_stream*, %struct.rtmp_stream** %3, align 8
  %79 = getelementptr inbounds %struct.rtmp_stream, %struct.rtmp_stream* %78, i32 0, i32 5
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %93

82:                                               ; preds = %77
  %83 = call i8* (...) @os_gettime_ns()
  %84 = getelementptr inbounds %struct.dbr_frame, %struct.dbr_frame* %5, i32 0, i32 0
  store i8* %83, i8** %84, align 8
  %85 = load %struct.rtmp_stream*, %struct.rtmp_stream** %3, align 8
  %86 = getelementptr inbounds %struct.rtmp_stream, %struct.rtmp_stream* %85, i32 0, i32 17
  %87 = call i32 @pthread_mutex_lock(i32* %86)
  %88 = load %struct.rtmp_stream*, %struct.rtmp_stream** %3, align 8
  %89 = call i32 @dbr_add_frame(%struct.rtmp_stream* %88, %struct.dbr_frame* %5)
  %90 = load %struct.rtmp_stream*, %struct.rtmp_stream** %3, align 8
  %91 = getelementptr inbounds %struct.rtmp_stream, %struct.rtmp_stream* %90, i32 0, i32 17
  %92 = call i32 @pthread_mutex_unlock(i32* %91)
  br label %93

93:                                               ; preds = %82, %77
  br label %10

94:                                               ; preds = %73, %51, %39, %25, %10
  %95 = load %struct.rtmp_stream*, %struct.rtmp_stream** %3, align 8
  %96 = getelementptr inbounds %struct.rtmp_stream, %struct.rtmp_stream* %95, i32 0, i32 16
  %97 = call i32 @os_atomic_load_bool(i32* %96)
  store i32 %97, i32* %6, align 4
  %98 = load %struct.rtmp_stream*, %struct.rtmp_stream** %3, align 8
  %99 = call i64 @disconnected(%struct.rtmp_stream* %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %107

101:                                              ; preds = %94
  %102 = load %struct.rtmp_stream*, %struct.rtmp_stream** %3, align 8
  %103 = getelementptr inbounds %struct.rtmp_stream, %struct.rtmp_stream* %102, i32 0, i32 15
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = call i32 (i8*, ...) @info(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %105)
  br label %115

107:                                              ; preds = %94
  %108 = load i32, i32* %6, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %107
  %111 = call i32 (i8*, ...) @info(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  br label %114

112:                                              ; preds = %107
  %113 = call i32 (i8*, ...) @info(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  br label %114

114:                                              ; preds = %112, %110
  br label %115

115:                                              ; preds = %114, %101
  %116 = load %struct.rtmp_stream*, %struct.rtmp_stream** %3, align 8
  %117 = getelementptr inbounds %struct.rtmp_stream, %struct.rtmp_stream* %116, i32 0, i32 14
  %118 = load i64, i64* %117, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %138

120:                                              ; preds = %115
  %121 = load %struct.rtmp_stream*, %struct.rtmp_stream** %3, align 8
  %122 = getelementptr inbounds %struct.rtmp_stream, %struct.rtmp_stream* %121, i32 0, i32 13
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @os_event_signal(i32 %123)
  %125 = load %struct.rtmp_stream*, %struct.rtmp_stream** %3, align 8
  %126 = getelementptr inbounds %struct.rtmp_stream, %struct.rtmp_stream* %125, i32 0, i32 12
  %127 = load i32, i32* %126, align 8
  %128 = call i32 @os_event_signal(i32 %127)
  %129 = load %struct.rtmp_stream*, %struct.rtmp_stream** %3, align 8
  %130 = getelementptr inbounds %struct.rtmp_stream, %struct.rtmp_stream* %129, i32 0, i32 11
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @pthread_join(i32 %131, i32* null)
  %133 = load %struct.rtmp_stream*, %struct.rtmp_stream** %3, align 8
  %134 = getelementptr inbounds %struct.rtmp_stream, %struct.rtmp_stream* %133, i32 0, i32 2
  store i32 0, i32* %134, align 4
  %135 = load %struct.rtmp_stream*, %struct.rtmp_stream** %3, align 8
  %136 = getelementptr inbounds %struct.rtmp_stream, %struct.rtmp_stream* %135, i32 0, i32 10
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 0
  store i32 0, i32* %137, align 8
  br label %138

138:                                              ; preds = %120, %115
  %139 = load %struct.rtmp_stream*, %struct.rtmp_stream** %3, align 8
  %140 = call i32 @set_output_error(%struct.rtmp_stream* %139)
  %141 = load %struct.rtmp_stream*, %struct.rtmp_stream** %3, align 8
  %142 = getelementptr inbounds %struct.rtmp_stream, %struct.rtmp_stream* %141, i32 0, i32 10
  %143 = call i32 @RTMP_Close(%struct.TYPE_4__* %142)
  %144 = load %struct.rtmp_stream*, %struct.rtmp_stream** %3, align 8
  %145 = call i64 @stopping(%struct.rtmp_stream* %144)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %157, label %147

147:                                              ; preds = %138
  %148 = load %struct.rtmp_stream*, %struct.rtmp_stream** %3, align 8
  %149 = getelementptr inbounds %struct.rtmp_stream, %struct.rtmp_stream* %148, i32 0, i32 9
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @pthread_detach(i32 %150)
  %152 = load %struct.rtmp_stream*, %struct.rtmp_stream** %3, align 8
  %153 = getelementptr inbounds %struct.rtmp_stream, %struct.rtmp_stream* %152, i32 0, i32 8
  %154 = load i32, i32* %153, align 8
  %155 = load i32, i32* @OBS_OUTPUT_DISCONNECTED, align 4
  %156 = call i32 @obs_output_signal_stop(i32 %154, i32 %155)
  br label %172

157:                                              ; preds = %138
  %158 = load i32, i32* %6, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %166

160:                                              ; preds = %157
  %161 = load %struct.rtmp_stream*, %struct.rtmp_stream** %3, align 8
  %162 = getelementptr inbounds %struct.rtmp_stream, %struct.rtmp_stream* %161, i32 0, i32 8
  %163 = load i32, i32* %162, align 8
  %164 = load i32, i32* @OBS_OUTPUT_ENCODE_ERROR, align 4
  %165 = call i32 @obs_output_signal_stop(i32 %163, i32 %164)
  br label %171

166:                                              ; preds = %157
  %167 = load %struct.rtmp_stream*, %struct.rtmp_stream** %3, align 8
  %168 = getelementptr inbounds %struct.rtmp_stream, %struct.rtmp_stream* %167, i32 0, i32 8
  %169 = load i32, i32* %168, align 8
  %170 = call i32 @obs_output_end_data_capture(i32 %169)
  br label %171

171:                                              ; preds = %166, %160
  br label %172

172:                                              ; preds = %171, %147
  %173 = load %struct.rtmp_stream*, %struct.rtmp_stream** %3, align 8
  %174 = call i32 @free_packets(%struct.rtmp_stream* %173)
  %175 = load %struct.rtmp_stream*, %struct.rtmp_stream** %3, align 8
  %176 = getelementptr inbounds %struct.rtmp_stream, %struct.rtmp_stream* %175, i32 0, i32 7
  %177 = load i32, i32* %176, align 4
  %178 = call i32 @os_event_reset(i32 %177)
  %179 = load %struct.rtmp_stream*, %struct.rtmp_stream** %3, align 8
  %180 = getelementptr inbounds %struct.rtmp_stream, %struct.rtmp_stream* %179, i32 0, i32 6
  %181 = call i32 @os_atomic_set_bool(i32* %180, i32 0)
  %182 = load %struct.rtmp_stream*, %struct.rtmp_stream** %3, align 8
  %183 = getelementptr inbounds %struct.rtmp_stream, %struct.rtmp_stream* %182, i32 0, i32 1
  store i32 0, i32* %183, align 8
  %184 = load %struct.rtmp_stream*, %struct.rtmp_stream** %3, align 8
  %185 = getelementptr inbounds %struct.rtmp_stream, %struct.rtmp_stream* %184, i32 0, i32 5
  %186 = load i64, i64* %185, align 8
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %205

188:                                              ; preds = %172
  %189 = load %struct.rtmp_stream*, %struct.rtmp_stream** %3, align 8
  %190 = getelementptr inbounds %struct.rtmp_stream, %struct.rtmp_stream* %189, i32 0, i32 3
  %191 = load i64, i64* %190, align 8
  %192 = load %struct.rtmp_stream*, %struct.rtmp_stream** %3, align 8
  %193 = getelementptr inbounds %struct.rtmp_stream, %struct.rtmp_stream* %192, i32 0, i32 4
  %194 = load i64, i64* %193, align 8
  %195 = icmp ne i64 %191, %194
  br i1 %195, label %196, label %204

196:                                              ; preds = %188
  %197 = load %struct.rtmp_stream*, %struct.rtmp_stream** %3, align 8
  %198 = getelementptr inbounds %struct.rtmp_stream, %struct.rtmp_stream* %197, i32 0, i32 4
  %199 = load i64, i64* %198, align 8
  %200 = load %struct.rtmp_stream*, %struct.rtmp_stream** %3, align 8
  %201 = getelementptr inbounds %struct.rtmp_stream, %struct.rtmp_stream* %200, i32 0, i32 3
  store i64 %199, i64* %201, align 8
  %202 = load %struct.rtmp_stream*, %struct.rtmp_stream** %3, align 8
  %203 = call i32 @dbr_set_bitrate(%struct.rtmp_stream* %202)
  br label %204

204:                                              ; preds = %196, %188
  br label %205

205:                                              ; preds = %204, %172
  ret i8* null
}

declare dso_local i32 @os_set_thread_name(i8*) #1

declare dso_local i64 @os_sem_wait(i32) #1

declare dso_local i64 @stopping(%struct.rtmp_stream*) #1

declare dso_local i32 @get_next_packet(%struct.rtmp_stream*, %struct.encoder_packet*) #1

declare dso_local i64 @can_shutdown_stream(%struct.rtmp_stream*, %struct.encoder_packet*) #1

declare dso_local i32 @obs_encoder_packet_release(%struct.encoder_packet*) #1

declare dso_local i32 @send_headers(%struct.rtmp_stream*) #1

declare dso_local i32 @os_atomic_set_bool(i32*, i32) #1

declare dso_local i8* @os_gettime_ns(...) #1

declare dso_local i64 @send_packet(%struct.rtmp_stream*, %struct.encoder_packet*, i32, i32) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @dbr_add_frame(%struct.rtmp_stream*, %struct.dbr_frame*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i32 @os_atomic_load_bool(i32*) #1

declare dso_local i64 @disconnected(%struct.rtmp_stream*) #1

declare dso_local i32 @info(i8*, ...) #1

declare dso_local i32 @os_event_signal(i32) #1

declare dso_local i32 @pthread_join(i32, i32*) #1

declare dso_local i32 @set_output_error(%struct.rtmp_stream*) #1

declare dso_local i32 @RTMP_Close(%struct.TYPE_4__*) #1

declare dso_local i32 @pthread_detach(i32) #1

declare dso_local i32 @obs_output_signal_stop(i32, i32) #1

declare dso_local i32 @obs_output_end_data_capture(i32) #1

declare dso_local i32 @free_packets(%struct.rtmp_stream*) #1

declare dso_local i32 @os_event_reset(i32) #1

declare dso_local i32 @dbr_set_bitrate(%struct.rtmp_stream*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
