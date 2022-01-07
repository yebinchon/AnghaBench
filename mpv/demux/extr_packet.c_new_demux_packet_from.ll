; ModuleID = '/home/carl/AnghaBench/mpv/demux/extr_packet.c_new_demux_packet_from.c'
source_filename = "/home/carl/AnghaBench/mpv/demux/extr_packet.c_new_demux_packet_from.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.demux_packet = type { i32 }
%struct.TYPE_3__ = type { i8*, i64 }

@INT_MAX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.demux_packet* @new_demux_packet_from(i8* %0, i64 %1) #0 {
  %3 = alloca %struct.demux_packet*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_3__, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load i64, i64* %5, align 8
  %8 = load i64, i64* @INT_MAX, align 8
  %9 = icmp ugt i64 %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store %struct.demux_packet* null, %struct.demux_packet** %3, align 8
  br label %17

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %13 = load i8*, i8** %4, align 8
  store i8* %13, i8** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 1
  %15 = load i64, i64* %5, align 8
  store i64 %15, i64* %14, align 8
  %16 = call %struct.demux_packet* @new_demux_packet_from_avpacket(%struct.TYPE_3__* %6)
  store %struct.demux_packet* %16, %struct.demux_packet** %3, align 8
  br label %17

17:                                               ; preds = %11, %10
  %18 = load %struct.demux_packet*, %struct.demux_packet** %3, align 8
  ret %struct.demux_packet* %18
}

declare dso_local %struct.demux_packet* @new_demux_packet_from_avpacket(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
