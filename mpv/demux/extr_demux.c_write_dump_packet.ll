; ModuleID = '/home/carl/AnghaBench/mpv/demux/extr_demux.c_write_dump_packet.c'
source_filename = "/home/carl/AnghaBench/mpv/demux/extr_demux.c_write_dump_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.demux_internal = type { i32, i64, i32* }
%struct.demux_packet = type { i64 }
%struct.mp_recorder_sink = type { i32 }

@CONTROL_TRUE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [42 x i8] c"New stream appeared; stopping recording.\0A\00", align 1
@CONTROL_ERROR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.demux_internal*, %struct.demux_packet*)* @write_dump_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_dump_packet(%struct.demux_internal* %0, %struct.demux_packet* %1) #0 {
  %3 = alloca %struct.demux_internal*, align 8
  %4 = alloca %struct.demux_packet*, align 8
  %5 = alloca %struct.mp_recorder_sink*, align 8
  store %struct.demux_internal* %0, %struct.demux_internal** %3, align 8
  store %struct.demux_packet* %1, %struct.demux_packet** %4, align 8
  %6 = load %struct.demux_internal*, %struct.demux_internal** %3, align 8
  %7 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = call i32 @assert(i32 %8)
  %10 = load %struct.demux_internal*, %struct.demux_internal** %3, align 8
  %11 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @CONTROL_TRUE, align 8
  %14 = icmp eq i64 %12, %13
  %15 = zext i1 %14 to i32
  %16 = call i32 @assert(i32 %15)
  %17 = load %struct.demux_internal*, %struct.demux_internal** %3, align 8
  %18 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.demux_internal*, %struct.demux_internal** %3, align 8
  %21 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %20, i32 0, i32 2
  %22 = load i32*, i32** %21, align 8
  %23 = load %struct.demux_packet*, %struct.demux_packet** %4, align 8
  %24 = getelementptr inbounds %struct.demux_packet, %struct.demux_packet* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = getelementptr inbounds i32, i32* %22, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = call %struct.mp_recorder_sink* @mp_recorder_get_sink(i32 %19, i32 %27)
  store %struct.mp_recorder_sink* %28, %struct.mp_recorder_sink** %5, align 8
  %29 = load %struct.mp_recorder_sink*, %struct.mp_recorder_sink** %5, align 8
  %30 = icmp ne %struct.mp_recorder_sink* %29, null
  br i1 %30, label %31, label %35

31:                                               ; preds = %2
  %32 = load %struct.mp_recorder_sink*, %struct.mp_recorder_sink** %5, align 8
  %33 = load %struct.demux_packet*, %struct.demux_packet** %4, align 8
  %34 = call i32 @mp_recorder_feed_packet(%struct.mp_recorder_sink* %32, %struct.demux_packet* %33)
  br label %41

35:                                               ; preds = %2
  %36 = load %struct.demux_internal*, %struct.demux_internal** %3, align 8
  %37 = call i32 @MP_ERR(%struct.demux_internal* %36, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %38 = load i64, i64* @CONTROL_ERROR, align 8
  %39 = load %struct.demux_internal*, %struct.demux_internal** %3, align 8
  %40 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %39, i32 0, i32 1
  store i64 %38, i64* %40, align 8
  br label %41

41:                                               ; preds = %35, %31
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.mp_recorder_sink* @mp_recorder_get_sink(i32, i32) #1

declare dso_local i32 @mp_recorder_feed_packet(%struct.mp_recorder_sink*, %struct.demux_packet*) #1

declare dso_local i32 @MP_ERR(%struct.demux_internal*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
