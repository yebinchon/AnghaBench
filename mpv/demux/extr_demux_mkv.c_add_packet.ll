; ModuleID = '/home/carl/AnghaBench/mpv/demux/extr_demux_mkv.c_add_packet.c'
source_filename = "/home/carl/AnghaBench/mpv/demux/extr_demux_mkv.c_add_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.demuxer = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.sh_stream = type { i32 }
%struct.demux_packet = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.demuxer*, %struct.sh_stream*, %struct.demux_packet*)* @add_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_packet(%struct.demuxer* %0, %struct.sh_stream* %1, %struct.demux_packet* %2) #0 {
  %4 = alloca %struct.demuxer*, align 8
  %5 = alloca %struct.sh_stream*, align 8
  %6 = alloca %struct.demux_packet*, align 8
  %7 = alloca %struct.TYPE_3__*, align 8
  store %struct.demuxer* %0, %struct.demuxer** %4, align 8
  store %struct.sh_stream* %1, %struct.sh_stream** %5, align 8
  store %struct.demux_packet* %2, %struct.demux_packet** %6, align 8
  %8 = load %struct.demuxer*, %struct.demuxer** %4, align 8
  %9 = getelementptr inbounds %struct.demuxer, %struct.demuxer* %8, i32 0, i32 0
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  store %struct.TYPE_3__* %10, %struct.TYPE_3__** %7, align 8
  %11 = load %struct.demux_packet*, %struct.demux_packet** %6, align 8
  %12 = icmp ne %struct.demux_packet* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  br label %29

14:                                               ; preds = %3
  %15 = load %struct.sh_stream*, %struct.sh_stream** %5, align 8
  %16 = getelementptr inbounds %struct.sh_stream, %struct.sh_stream* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.demux_packet*, %struct.demux_packet** %6, align 8
  %19 = getelementptr inbounds %struct.demux_packet, %struct.demux_packet* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 4
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.demux_packet*, %struct.demux_packet** %6, align 8
  %28 = call i32 @MP_TARRAY_APPEND(%struct.TYPE_3__* %20, i32 %23, i32 %26, %struct.demux_packet* %27)
  br label %29

29:                                               ; preds = %14, %13
  ret void
}

declare dso_local i32 @MP_TARRAY_APPEND(%struct.TYPE_3__*, i32, i32, %struct.demux_packet*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
