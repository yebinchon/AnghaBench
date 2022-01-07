; ModuleID = '/home/carl/AnghaBench/mpv/demux/extr_demux.c_demux_get_bytes_read_hack.c'
source_filename = "/home/carl/AnghaBench/mpv/demux/extr_demux.c_demux_get_bytes_read_hack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.demuxer = type { %struct.demux_internal* }
%struct.demux_internal = type { i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @demux_get_bytes_read_hack(%struct.demuxer* %0) #0 {
  %2 = alloca %struct.demuxer*, align 8
  %3 = alloca %struct.demux_internal*, align 8
  %4 = alloca i64, align 8
  store %struct.demuxer* %0, %struct.demuxer** %2, align 8
  %5 = load %struct.demuxer*, %struct.demuxer** %2, align 8
  %6 = getelementptr inbounds %struct.demuxer, %struct.demuxer* %5, i32 0, i32 0
  %7 = load %struct.demux_internal*, %struct.demux_internal** %6, align 8
  store %struct.demux_internal* %7, %struct.demux_internal** %3, align 8
  %8 = load %struct.demux_internal*, %struct.demux_internal** %3, align 8
  %9 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, 0
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  %14 = call i32 @assert(i32 %13)
  %15 = load %struct.demux_internal*, %struct.demux_internal** %3, align 8
  %16 = call i32 @update_bytes_read(%struct.demux_internal* %15)
  %17 = load %struct.demux_internal*, %struct.demux_internal** %3, align 8
  %18 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %4, align 8
  %20 = load %struct.demux_internal*, %struct.demux_internal** %3, align 8
  %21 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %20, i32 0, i32 0
  store i64 0, i64* %21, align 8
  %22 = load i64, i64* %4, align 8
  ret i64 %22
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @update_bytes_read(%struct.demux_internal*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
