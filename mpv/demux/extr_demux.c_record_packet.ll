; ModuleID = '/home/carl/AnghaBench/mpv/demux/extr_demux.c_record_packet.c'
source_filename = "/home/carl/AnghaBench/mpv/demux/extr_demux.c_record_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.demux_internal = type { i32, i64, i32*, i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64* }
%struct.demux_packet = type { i64 }
%struct.mp_recorder_sink = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"Disabling recording.\0A\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"New stream appeared; stopping recording.\0A\00", align 1
@CONTROL_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.demux_internal*, %struct.demux_packet*)* @record_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @record_packet(%struct.demux_internal* %0, %struct.demux_packet* %1) #0 {
  %3 = alloca %struct.demux_internal*, align 8
  %4 = alloca %struct.demux_packet*, align 8
  %5 = alloca %struct.mp_recorder_sink*, align 8
  store %struct.demux_internal* %0, %struct.demux_internal** %3, align 8
  store %struct.demux_packet* %1, %struct.demux_packet** %4, align 8
  %6 = load %struct.demux_internal*, %struct.demux_internal** %3, align 8
  %7 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %51

10:                                               ; preds = %2
  %11 = load %struct.demux_internal*, %struct.demux_internal** %3, align 8
  %12 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %11, i32 0, i32 2
  %13 = load i32*, i32** %12, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %51, label %15

15:                                               ; preds = %10
  %16 = load %struct.demux_internal*, %struct.demux_internal** %3, align 8
  %17 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %16, i32 0, i32 4
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64*, i64** %19, align 8
  %21 = icmp ne i64* %20, null
  br i1 %21, label %22, label %51

22:                                               ; preds = %15
  %23 = load %struct.demux_internal*, %struct.demux_internal** %3, align 8
  %24 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %23, i32 0, i32 4
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64*, i64** %26, align 8
  %28 = getelementptr inbounds i64, i64* %27, i64 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %51

31:                                               ; preds = %22
  %32 = load %struct.demux_internal*, %struct.demux_internal** %3, align 8
  %33 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %32, i32 0, i32 0
  store i32 0, i32* %33, align 8
  %34 = load %struct.demux_internal*, %struct.demux_internal** %3, align 8
  %35 = load %struct.demux_internal*, %struct.demux_internal** %3, align 8
  %36 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %35, i32 0, i32 4
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i64*, i64** %38, align 8
  %40 = call i32* @recorder_create(%struct.demux_internal* %34, i64* %39)
  %41 = load %struct.demux_internal*, %struct.demux_internal** %3, align 8
  %42 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %41, i32 0, i32 2
  store i32* %40, i32** %42, align 8
  %43 = load %struct.demux_internal*, %struct.demux_internal** %3, align 8
  %44 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %43, i32 0, i32 2
  %45 = load i32*, i32** %44, align 8
  %46 = icmp ne i32* %45, null
  br i1 %46, label %50, label %47

47:                                               ; preds = %31
  %48 = load %struct.demux_internal*, %struct.demux_internal** %3, align 8
  %49 = call i32 @MP_ERR(%struct.demux_internal* %48, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %50

50:                                               ; preds = %47, %31
  br label %51

51:                                               ; preds = %50, %22, %15, %10, %2
  %52 = load %struct.demux_internal*, %struct.demux_internal** %3, align 8
  %53 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %52, i32 0, i32 2
  %54 = load i32*, i32** %53, align 8
  %55 = icmp ne i32* %54, null
  br i1 %55, label %56, label %85

56:                                               ; preds = %51
  %57 = load %struct.demux_internal*, %struct.demux_internal** %3, align 8
  %58 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %57, i32 0, i32 2
  %59 = load i32*, i32** %58, align 8
  %60 = load %struct.demux_internal*, %struct.demux_internal** %3, align 8
  %61 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %60, i32 0, i32 3
  %62 = load i32*, i32** %61, align 8
  %63 = load %struct.demux_packet*, %struct.demux_packet** %4, align 8
  %64 = getelementptr inbounds %struct.demux_packet, %struct.demux_packet* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = getelementptr inbounds i32, i32* %62, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = call %struct.mp_recorder_sink* @mp_recorder_get_sink(i32* %59, i32 %67)
  store %struct.mp_recorder_sink* %68, %struct.mp_recorder_sink** %5, align 8
  %69 = load %struct.mp_recorder_sink*, %struct.mp_recorder_sink** %5, align 8
  %70 = icmp ne %struct.mp_recorder_sink* %69, null
  br i1 %70, label %71, label %75

71:                                               ; preds = %56
  %72 = load %struct.mp_recorder_sink*, %struct.mp_recorder_sink** %5, align 8
  %73 = load %struct.demux_packet*, %struct.demux_packet** %4, align 8
  %74 = call i32 @mp_recorder_feed_packet(%struct.mp_recorder_sink* %72, %struct.demux_packet* %73)
  br label %84

75:                                               ; preds = %56
  %76 = load %struct.demux_internal*, %struct.demux_internal** %3, align 8
  %77 = call i32 @MP_ERR(%struct.demux_internal* %76, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  %78 = load %struct.demux_internal*, %struct.demux_internal** %3, align 8
  %79 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %78, i32 0, i32 2
  %80 = load i32*, i32** %79, align 8
  %81 = call i32 @mp_recorder_destroy(i32* %80)
  %82 = load %struct.demux_internal*, %struct.demux_internal** %3, align 8
  %83 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %82, i32 0, i32 2
  store i32* null, i32** %83, align 8
  br label %84

84:                                               ; preds = %75, %71
  br label %85

85:                                               ; preds = %84, %51
  %86 = load %struct.demux_internal*, %struct.demux_internal** %3, align 8
  %87 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @CONTROL_OK, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %95

91:                                               ; preds = %85
  %92 = load %struct.demux_internal*, %struct.demux_internal** %3, align 8
  %93 = load %struct.demux_packet*, %struct.demux_packet** %4, align 8
  %94 = call i32 @write_dump_packet(%struct.demux_internal* %92, %struct.demux_packet* %93)
  br label %95

95:                                               ; preds = %91, %85
  ret void
}

declare dso_local i32* @recorder_create(%struct.demux_internal*, i64*) #1

declare dso_local i32 @MP_ERR(%struct.demux_internal*, i8*) #1

declare dso_local %struct.mp_recorder_sink* @mp_recorder_get_sink(i32*, i32) #1

declare dso_local i32 @mp_recorder_feed_packet(%struct.mp_recorder_sink*, %struct.demux_packet*) #1

declare dso_local i32 @mp_recorder_destroy(i32*) #1

declare dso_local i32 @write_dump_packet(%struct.demux_internal*, %struct.demux_packet*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
