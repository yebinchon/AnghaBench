; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/obs-ffmpeg/extr_obs-ffmpeg-output.c_process_packet.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/obs-ffmpeg/extr_obs-ffmpeg-output.c_process_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ffmpeg_output = type { i64, %struct.TYPE_8__, i32, i32, %struct.TYPE_9__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_7__*, i64 }
%struct.TYPE_7__ = type { i64 }

@LOG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"receive_audio: Error writing packet: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ffmpeg_output*)* @process_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_packet(%struct.ffmpeg_output* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ffmpeg_output*, align 8
  %4 = alloca %struct.TYPE_7__, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.ffmpeg_output* %0, %struct.ffmpeg_output** %3, align 8
  store i32 0, i32* %5, align 4
  %8 = load %struct.ffmpeg_output*, %struct.ffmpeg_output** %3, align 8
  %9 = getelementptr inbounds %struct.ffmpeg_output, %struct.ffmpeg_output* %8, i32 0, i32 3
  %10 = call i32 @pthread_mutex_lock(i32* %9)
  %11 = load %struct.ffmpeg_output*, %struct.ffmpeg_output** %3, align 8
  %12 = getelementptr inbounds %struct.ffmpeg_output, %struct.ffmpeg_output* %11, i32 0, i32 4
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %32

16:                                               ; preds = %1
  %17 = load %struct.ffmpeg_output*, %struct.ffmpeg_output** %3, align 8
  %18 = getelementptr inbounds %struct.ffmpeg_output, %struct.ffmpeg_output* %17, i32 0, i32 4
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i64 0
  %22 = bitcast %struct.TYPE_7__* %4 to i8*
  %23 = bitcast %struct.TYPE_7__* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %22, i8* align 8 %23, i64 8, i1 false)
  %24 = load %struct.ffmpeg_output*, %struct.ffmpeg_output** %3, align 8
  %25 = getelementptr inbounds %struct.ffmpeg_output, %struct.ffmpeg_output* %24, i32 0, i32 4
  %26 = bitcast %struct.TYPE_9__* %25 to { %struct.TYPE_7__*, i64 }*
  %27 = getelementptr inbounds { %struct.TYPE_7__*, i64 }, { %struct.TYPE_7__*, i64 }* %26, i32 0, i32 0
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %27, align 8
  %29 = getelementptr inbounds { %struct.TYPE_7__*, i64 }, { %struct.TYPE_7__*, i64 }* %26, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @da_erase(%struct.TYPE_7__* %28, i64 %30, i32 0)
  store i32 1, i32* %5, align 4
  br label %32

32:                                               ; preds = %16, %1
  %33 = load %struct.ffmpeg_output*, %struct.ffmpeg_output** %3, align 8
  %34 = getelementptr inbounds %struct.ffmpeg_output, %struct.ffmpeg_output* %33, i32 0, i32 3
  %35 = call i32 @pthread_mutex_unlock(i32* %34)
  %36 = load i32, i32* %5, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %32
  store i32 0, i32* %2, align 4
  br label %81

39:                                               ; preds = %32
  %40 = load %struct.ffmpeg_output*, %struct.ffmpeg_output** %3, align 8
  %41 = call i64 @stopping(%struct.ffmpeg_output* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %55

43:                                               ; preds = %39
  %44 = load %struct.ffmpeg_output*, %struct.ffmpeg_output** %3, align 8
  %45 = call i64 @get_packet_sys_dts(%struct.ffmpeg_output* %44, %struct.TYPE_7__* %4)
  store i64 %45, i64* %7, align 8
  %46 = load i64, i64* %7, align 8
  %47 = load %struct.ffmpeg_output*, %struct.ffmpeg_output** %3, align 8
  %48 = getelementptr inbounds %struct.ffmpeg_output, %struct.ffmpeg_output* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp sge i64 %46, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %43
  %52 = load %struct.ffmpeg_output*, %struct.ffmpeg_output** %3, align 8
  %53 = call i32 @ffmpeg_output_full_stop(%struct.ffmpeg_output* %52)
  store i32 0, i32* %2, align 4
  br label %81

54:                                               ; preds = %43
  br label %55

55:                                               ; preds = %54, %39
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.ffmpeg_output*, %struct.ffmpeg_output** %3, align 8
  %59 = getelementptr inbounds %struct.ffmpeg_output, %struct.ffmpeg_output* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = sext i32 %60 to i64
  %62 = add nsw i64 %61, %57
  %63 = trunc i64 %62 to i32
  store i32 %63, i32* %59, align 4
  %64 = load %struct.ffmpeg_output*, %struct.ffmpeg_output** %3, align 8
  %65 = getelementptr inbounds %struct.ffmpeg_output, %struct.ffmpeg_output* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @av_interleaved_write_frame(i32 %67, %struct.TYPE_7__* %4)
  store i32 %68, i32* %6, align 4
  %69 = load i32, i32* %6, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %80

71:                                               ; preds = %55
  %72 = call i32 @av_free_packet(%struct.TYPE_7__* %4)
  %73 = load i32, i32* @LOG_WARNING, align 4
  %74 = load %struct.ffmpeg_output*, %struct.ffmpeg_output** %3, align 8
  %75 = getelementptr inbounds %struct.ffmpeg_output, %struct.ffmpeg_output* %74, i32 0, i32 1
  %76 = load i32, i32* %6, align 4
  %77 = call i32 @av_err2str(i32 %76)
  %78 = call i32 @ffmpeg_log_error(i32 %73, %struct.TYPE_8__* %75, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %77)
  %79 = load i32, i32* %6, align 4
  store i32 %79, i32* %2, align 4
  br label %81

80:                                               ; preds = %55
  store i32 0, i32* %2, align 4
  br label %81

81:                                               ; preds = %80, %71, %51, %38
  %82 = load i32, i32* %2, align 4
  ret i32 %82
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @da_erase(%struct.TYPE_7__*, i64, i32) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i64 @stopping(%struct.ffmpeg_output*) #1

declare dso_local i64 @get_packet_sys_dts(%struct.ffmpeg_output*, %struct.TYPE_7__*) #1

declare dso_local i32 @ffmpeg_output_full_stop(%struct.ffmpeg_output*) #1

declare dso_local i32 @av_interleaved_write_frame(i32, %struct.TYPE_7__*) #1

declare dso_local i32 @av_free_packet(%struct.TYPE_7__*) #1

declare dso_local i32 @ffmpeg_log_error(i32, %struct.TYPE_8__*, i8*, i32) #1

declare dso_local i32 @av_err2str(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
