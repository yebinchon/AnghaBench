; ModuleID = '/home/carl/AnghaBench/mpv/demux/extr_demux.c_advance_reader_head.c'
source_filename = "/home/carl/AnghaBench/mpv/demux/extr_demux.c_advance_reader_head.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.demux_packet = type { i32, i32, %struct.demux_packet* }
%struct.demux_stream = type { i32, i32, %struct.demux_packet* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.demux_packet* (%struct.demux_stream*)* @advance_reader_head to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.demux_packet* @advance_reader_head(%struct.demux_stream* %0) #0 {
  %2 = alloca %struct.demux_packet*, align 8
  %3 = alloca %struct.demux_stream*, align 8
  %4 = alloca %struct.demux_packet*, align 8
  store %struct.demux_stream* %0, %struct.demux_stream** %3, align 8
  %5 = load %struct.demux_stream*, %struct.demux_stream** %3, align 8
  %6 = getelementptr inbounds %struct.demux_stream, %struct.demux_stream* %5, i32 0, i32 2
  %7 = load %struct.demux_packet*, %struct.demux_packet** %6, align 8
  store %struct.demux_packet* %7, %struct.demux_packet** %4, align 8
  %8 = load %struct.demux_packet*, %struct.demux_packet** %4, align 8
  %9 = icmp ne %struct.demux_packet* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store %struct.demux_packet* null, %struct.demux_packet** %2, align 8
  br label %28

11:                                               ; preds = %1
  %12 = load %struct.demux_packet*, %struct.demux_packet** %4, align 8
  %13 = getelementptr inbounds %struct.demux_packet, %struct.demux_packet* %12, i32 0, i32 2
  %14 = load %struct.demux_packet*, %struct.demux_packet** %13, align 8
  %15 = load %struct.demux_stream*, %struct.demux_stream** %3, align 8
  %16 = getelementptr inbounds %struct.demux_stream, %struct.demux_stream* %15, i32 0, i32 2
  store %struct.demux_packet* %14, %struct.demux_packet** %16, align 8
  %17 = load %struct.demux_packet*, %struct.demux_packet** %4, align 8
  %18 = getelementptr inbounds %struct.demux_packet, %struct.demux_packet* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.demux_stream*, %struct.demux_stream** %3, align 8
  %21 = getelementptr inbounds %struct.demux_stream, %struct.demux_stream* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 4
  %22 = load %struct.demux_packet*, %struct.demux_packet** %4, align 8
  %23 = getelementptr inbounds %struct.demux_packet, %struct.demux_packet* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.demux_stream*, %struct.demux_stream** %3, align 8
  %26 = getelementptr inbounds %struct.demux_stream, %struct.demux_stream* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 8
  %27 = load %struct.demux_packet*, %struct.demux_packet** %4, align 8
  store %struct.demux_packet* %27, %struct.demux_packet** %2, align 8
  br label %28

28:                                               ; preds = %11, %10
  %29 = load %struct.demux_packet*, %struct.demux_packet** %2, align 8
  ret %struct.demux_packet* %29
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
