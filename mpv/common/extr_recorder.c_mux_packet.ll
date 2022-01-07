; ModuleID = '/home/carl/AnghaBench/mpv/common/extr_recorder.c_mux_packet.c'
source_filename = "/home/carl/AnghaBench/mpv/common/extr_recorder.c_mux_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_recorder_sink = type { %struct.TYPE_9__*, %struct.TYPE_8__*, i32, %struct.mp_recorder* }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.mp_recorder = type { double, double, i32 }
%struct.demux_packet = type { i8*, i8* }
%struct.TYPE_10__ = type { i64, i32 }

@STREAM_SUB = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"Failed to allocate packet.\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"Failed writing packet.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mp_recorder_sink*, %struct.demux_packet*)* @mux_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mux_packet(%struct.mp_recorder_sink* %0, %struct.demux_packet* %1) #0 {
  %3 = alloca %struct.mp_recorder_sink*, align 8
  %4 = alloca %struct.demux_packet*, align 8
  %5 = alloca %struct.mp_recorder*, align 8
  %6 = alloca %struct.demux_packet, align 8
  %7 = alloca double, align 8
  %8 = alloca %struct.TYPE_10__, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  store %struct.mp_recorder_sink* %0, %struct.mp_recorder_sink** %3, align 8
  store %struct.demux_packet* %1, %struct.demux_packet** %4, align 8
  %10 = load %struct.mp_recorder_sink*, %struct.mp_recorder_sink** %3, align 8
  %11 = getelementptr inbounds %struct.mp_recorder_sink, %struct.mp_recorder_sink* %10, i32 0, i32 3
  %12 = load %struct.mp_recorder*, %struct.mp_recorder** %11, align 8
  store %struct.mp_recorder* %12, %struct.mp_recorder** %5, align 8
  %13 = load %struct.demux_packet*, %struct.demux_packet** %4, align 8
  %14 = bitcast %struct.demux_packet* %6 to i8*
  %15 = bitcast %struct.demux_packet* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %14, i8* align 8 %15, i64 16, i1 false)
  %16 = load %struct.mp_recorder*, %struct.mp_recorder** %5, align 8
  %17 = getelementptr inbounds %struct.mp_recorder, %struct.mp_recorder* %16, i32 0, i32 0
  %18 = load double, double* %17, align 8
  %19 = load %struct.mp_recorder*, %struct.mp_recorder** %5, align 8
  %20 = getelementptr inbounds %struct.mp_recorder, %struct.mp_recorder* %19, i32 0, i32 1
  %21 = load double, double* %20, align 8
  %22 = fsub double %18, %21
  store double %22, double* %7, align 8
  %23 = getelementptr inbounds %struct.demux_packet, %struct.demux_packet* %6, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = load double, double* %7, align 8
  %26 = call i8* @MP_ADD_PTS(i8* %24, double %25)
  %27 = getelementptr inbounds %struct.demux_packet, %struct.demux_packet* %6, i32 0, i32 0
  store i8* %26, i8** %27, align 8
  %28 = getelementptr inbounds %struct.demux_packet, %struct.demux_packet* %6, i32 0, i32 1
  %29 = load i8*, i8** %28, align 8
  %30 = load double, double* %7, align 8
  %31 = call i8* @MP_ADD_PTS(i8* %29, double %30)
  %32 = getelementptr inbounds %struct.demux_packet, %struct.demux_packet* %6, i32 0, i32 1
  store i8* %31, i8** %32, align 8
  %33 = load %struct.mp_recorder_sink*, %struct.mp_recorder_sink** %3, align 8
  %34 = getelementptr inbounds %struct.mp_recorder_sink, %struct.mp_recorder_sink* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.demux_packet*, %struct.demux_packet** %4, align 8
  %37 = getelementptr inbounds %struct.demux_packet, %struct.demux_packet* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = call i32 @MP_PTS_MAX(i32 %35, i8* %38)
  %40 = load %struct.mp_recorder_sink*, %struct.mp_recorder_sink** %3, align 8
  %41 = getelementptr inbounds %struct.mp_recorder_sink, %struct.mp_recorder_sink* %40, i32 0, i32 2
  store i32 %39, i32* %41, align 8
  %42 = load %struct.mp_recorder_sink*, %struct.mp_recorder_sink** %3, align 8
  %43 = getelementptr inbounds %struct.mp_recorder_sink, %struct.mp_recorder_sink* %42, i32 0, i32 1
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 1
  %46 = call i32 @mp_set_av_packet(%struct.TYPE_10__* %8, %struct.demux_packet* %6, i32* %45)
  %47 = load %struct.mp_recorder_sink*, %struct.mp_recorder_sink** %3, align 8
  %48 = getelementptr inbounds %struct.mp_recorder_sink, %struct.mp_recorder_sink* %47, i32 0, i32 1
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 1
  store i32 %51, i32* %52, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp slt i64 %54, 0
  br i1 %55, label %56, label %66

56:                                               ; preds = %2
  %57 = load %struct.mp_recorder_sink*, %struct.mp_recorder_sink** %3, align 8
  %58 = getelementptr inbounds %struct.mp_recorder_sink, %struct.mp_recorder_sink* %57, i32 0, i32 0
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @STREAM_SUB, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %56
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 0
  store i64 0, i64* %65, align 8
  br label %66

66:                                               ; preds = %64, %56, %2
  %67 = call %struct.TYPE_10__* @av_packet_clone(%struct.TYPE_10__* %8)
  store %struct.TYPE_10__* %67, %struct.TYPE_10__** %9, align 8
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %69 = icmp ne %struct.TYPE_10__* %68, null
  br i1 %69, label %73, label %70

70:                                               ; preds = %66
  %71 = load %struct.mp_recorder*, %struct.mp_recorder** %5, align 8
  %72 = call i32 @MP_ERR(%struct.mp_recorder* %71, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %83

73:                                               ; preds = %66
  %74 = load %struct.mp_recorder*, %struct.mp_recorder** %5, align 8
  %75 = getelementptr inbounds %struct.mp_recorder, %struct.mp_recorder* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %78 = call i64 @av_interleaved_write_frame(i32 %76, %struct.TYPE_10__* %77)
  %79 = icmp slt i64 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %73
  %81 = load %struct.mp_recorder*, %struct.mp_recorder** %5, align 8
  %82 = call i32 @MP_ERR(%struct.mp_recorder* %81, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %83

83:                                               ; preds = %70, %80, %73
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i8* @MP_ADD_PTS(i8*, double) #2

declare dso_local i32 @MP_PTS_MAX(i32, i8*) #2

declare dso_local i32 @mp_set_av_packet(%struct.TYPE_10__*, %struct.demux_packet*, i32*) #2

declare dso_local %struct.TYPE_10__* @av_packet_clone(%struct.TYPE_10__*) #2

declare dso_local i32 @MP_ERR(%struct.mp_recorder*, i8*) #2

declare dso_local i64 @av_interleaved_write_frame(i32, %struct.TYPE_10__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
