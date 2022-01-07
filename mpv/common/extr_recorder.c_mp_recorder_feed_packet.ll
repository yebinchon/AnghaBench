; ModuleID = '/home/carl/AnghaBench/mpv/common/extr_recorder.c_mp_recorder_feed_packet.c'
source_filename = "/home/carl/AnghaBench/mpv/common/extr_recorder.c_mp_recorder_feed_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_recorder_sink = type { i32, i32, i64, i32, %struct.TYPE_2__*, %struct.mp_recorder* }
%struct.TYPE_2__ = type { i32 }
%struct.mp_recorder = type { i32 }
%struct.demux_packet = type { i64, i32 }

@MP_NOPTS_VALUE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [126 x i8] c"Source stream misses DTS on at least some packets!\0AIf the target file format requires DTS, the written\0Afile will be invalid.\0A\00", align 1
@QUEUE_MAX_PACKETS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [50 x i8] c"Stream %d has too many queued packets; dropping.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mp_recorder_feed_packet(%struct.mp_recorder_sink* %0, %struct.demux_packet* %1) #0 {
  %3 = alloca %struct.mp_recorder_sink*, align 8
  %4 = alloca %struct.demux_packet*, align 8
  %5 = alloca %struct.mp_recorder*, align 8
  store %struct.mp_recorder_sink* %0, %struct.mp_recorder_sink** %3, align 8
  store %struct.demux_packet* %1, %struct.demux_packet** %4, align 8
  %6 = load %struct.mp_recorder_sink*, %struct.mp_recorder_sink** %3, align 8
  %7 = getelementptr inbounds %struct.mp_recorder_sink, %struct.mp_recorder_sink* %6, i32 0, i32 5
  %8 = load %struct.mp_recorder*, %struct.mp_recorder** %7, align 8
  store %struct.mp_recorder* %8, %struct.mp_recorder** %5, align 8
  %9 = load %struct.demux_packet*, %struct.demux_packet** %4, align 8
  %10 = icmp ne %struct.demux_packet* %9, null
  br i1 %10, label %18, label %11

11:                                               ; preds = %2
  %12 = load %struct.mp_recorder_sink*, %struct.mp_recorder_sink** %3, align 8
  %13 = getelementptr inbounds %struct.mp_recorder_sink, %struct.mp_recorder_sink* %12, i32 0, i32 0
  store i32 1, i32* %13, align 8
  %14 = load %struct.mp_recorder*, %struct.mp_recorder** %5, align 8
  %15 = call i32 @check_restart(%struct.mp_recorder* %14)
  %16 = load %struct.mp_recorder_sink*, %struct.mp_recorder_sink** %3, align 8
  %17 = call i32 @mux_packets(%struct.mp_recorder_sink* %16, i32 0)
  br label %81

18:                                               ; preds = %2
  %19 = load %struct.demux_packet*, %struct.demux_packet** %4, align 8
  %20 = getelementptr inbounds %struct.demux_packet, %struct.demux_packet* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @MP_NOPTS_VALUE, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %34

24:                                               ; preds = %18
  %25 = load %struct.mp_recorder*, %struct.mp_recorder** %5, align 8
  %26 = getelementptr inbounds %struct.mp_recorder, %struct.mp_recorder* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %24
  %30 = load %struct.mp_recorder*, %struct.mp_recorder** %5, align 8
  %31 = call i32 @MP_WARN(%struct.mp_recorder* %30, i8* getelementptr inbounds ([126 x i8], [126 x i8]* @.str, i64 0, i64 0))
  %32 = load %struct.mp_recorder*, %struct.mp_recorder** %5, align 8
  %33 = getelementptr inbounds %struct.mp_recorder, %struct.mp_recorder* %32, i32 0, i32 0
  store i32 1, i32* %33, align 4
  br label %34

34:                                               ; preds = %29, %24, %18
  %35 = load %struct.mp_recorder_sink*, %struct.mp_recorder_sink** %3, align 8
  %36 = getelementptr inbounds %struct.mp_recorder_sink, %struct.mp_recorder_sink* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %34
  %40 = load %struct.demux_packet*, %struct.demux_packet** %4, align 8
  %41 = getelementptr inbounds %struct.demux_packet, %struct.demux_packet* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %39
  br label %81

45:                                               ; preds = %39, %34
  %46 = load %struct.mp_recorder_sink*, %struct.mp_recorder_sink** %3, align 8
  %47 = getelementptr inbounds %struct.mp_recorder_sink, %struct.mp_recorder_sink* %46, i32 0, i32 1
  store i32 0, i32* %47, align 4
  %48 = load %struct.mp_recorder_sink*, %struct.mp_recorder_sink** %3, align 8
  %49 = getelementptr inbounds %struct.mp_recorder_sink, %struct.mp_recorder_sink* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @QUEUE_MAX_PACKETS, align 8
  %52 = icmp sge i64 %50, %51
  br i1 %52, label %53, label %61

53:                                               ; preds = %45
  %54 = load %struct.mp_recorder*, %struct.mp_recorder** %5, align 8
  %55 = load %struct.mp_recorder_sink*, %struct.mp_recorder_sink** %3, align 8
  %56 = getelementptr inbounds %struct.mp_recorder_sink, %struct.mp_recorder_sink* %55, i32 0, i32 4
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @MP_ERR(%struct.mp_recorder* %54, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i32 %59)
  br label %81

61:                                               ; preds = %45
  %62 = load %struct.demux_packet*, %struct.demux_packet** %4, align 8
  %63 = call %struct.demux_packet* @demux_copy_packet(%struct.demux_packet* %62)
  store %struct.demux_packet* %63, %struct.demux_packet** %4, align 8
  %64 = load %struct.demux_packet*, %struct.demux_packet** %4, align 8
  %65 = icmp ne %struct.demux_packet* %64, null
  br i1 %65, label %67, label %66

66:                                               ; preds = %61
  br label %81

67:                                               ; preds = %61
  %68 = load %struct.mp_recorder_sink*, %struct.mp_recorder_sink** %3, align 8
  %69 = load %struct.mp_recorder_sink*, %struct.mp_recorder_sink** %3, align 8
  %70 = getelementptr inbounds %struct.mp_recorder_sink, %struct.mp_recorder_sink* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.mp_recorder_sink*, %struct.mp_recorder_sink** %3, align 8
  %73 = getelementptr inbounds %struct.mp_recorder_sink, %struct.mp_recorder_sink* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.demux_packet*, %struct.demux_packet** %4, align 8
  %76 = call i32 @MP_TARRAY_APPEND(%struct.mp_recorder_sink* %68, i32 %71, i64 %74, %struct.demux_packet* %75)
  %77 = load %struct.mp_recorder*, %struct.mp_recorder** %5, align 8
  %78 = call i32 @check_restart(%struct.mp_recorder* %77)
  %79 = load %struct.mp_recorder_sink*, %struct.mp_recorder_sink** %3, align 8
  %80 = call i32 @mux_packets(%struct.mp_recorder_sink* %79, i32 0)
  br label %81

81:                                               ; preds = %67, %66, %53, %44, %11
  ret void
}

declare dso_local i32 @check_restart(%struct.mp_recorder*) #1

declare dso_local i32 @mux_packets(%struct.mp_recorder_sink*, i32) #1

declare dso_local i32 @MP_WARN(%struct.mp_recorder*, i8*) #1

declare dso_local i32 @MP_ERR(%struct.mp_recorder*, i8*, i32) #1

declare dso_local %struct.demux_packet* @demux_copy_packet(%struct.demux_packet*) #1

declare dso_local i32 @MP_TARRAY_APPEND(%struct.mp_recorder_sink*, i32, i64, %struct.demux_packet*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
