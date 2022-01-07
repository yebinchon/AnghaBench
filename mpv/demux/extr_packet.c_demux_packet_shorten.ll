; ModuleID = '/home/carl/AnghaBench/mpv/demux/extr_packet.c_demux_packet_shorten.c'
source_filename = "/home/carl/AnghaBench/mpv/demux/extr_packet.c_demux_packet_shorten.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.demux_packet = type { i64, i64 }

@AV_INPUT_BUFFER_PADDING_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @demux_packet_shorten(%struct.demux_packet* %0, i64 %1) #0 {
  %3 = alloca %struct.demux_packet*, align 8
  %4 = alloca i64, align 8
  store %struct.demux_packet* %0, %struct.demux_packet** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i64, i64* %4, align 8
  %6 = load %struct.demux_packet*, %struct.demux_packet** %3, align 8
  %7 = getelementptr inbounds %struct.demux_packet, %struct.demux_packet* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ule i64 %5, %8
  %10 = zext i1 %9 to i32
  %11 = call i32 @assert(i32 %10)
  %12 = load %struct.demux_packet*, %struct.demux_packet** %3, align 8
  %13 = getelementptr inbounds %struct.demux_packet, %struct.demux_packet* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %29

16:                                               ; preds = %2
  %17 = load i64, i64* %4, align 8
  %18 = load %struct.demux_packet*, %struct.demux_packet** %3, align 8
  %19 = getelementptr inbounds %struct.demux_packet, %struct.demux_packet* %18, i32 0, i32 0
  store i64 %17, i64* %19, align 8
  %20 = load %struct.demux_packet*, %struct.demux_packet** %3, align 8
  %21 = getelementptr inbounds %struct.demux_packet, %struct.demux_packet* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.demux_packet*, %struct.demux_packet** %3, align 8
  %24 = getelementptr inbounds %struct.demux_packet, %struct.demux_packet* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = add i64 %22, %25
  %27 = load i32, i32* @AV_INPUT_BUFFER_PADDING_SIZE, align 4
  %28 = call i32 @memset(i64 %26, i32 0, i32 %27)
  br label %29

29:                                               ; preds = %16, %2
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @memset(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
