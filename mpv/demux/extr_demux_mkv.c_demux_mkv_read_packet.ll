; ModuleID = '/home/carl/AnghaBench/mpv/demux/extr_demux_mkv.c_demux_mkv_read_packet.c'
source_filename = "/home/carl/AnghaBench/mpv/demux/extr_demux_mkv.c_demux_mkv_read_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.demuxer = type { %struct.mkv_demuxer* }
%struct.mkv_demuxer = type { i64, %struct.demux_packet** }
%struct.demux_packet = type { i32 }
%struct.block_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.demuxer*, %struct.demux_packet**)* @demux_mkv_read_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @demux_mkv_read_packet(%struct.demuxer* %0, %struct.demux_packet** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.demuxer*, align 8
  %5 = alloca %struct.demux_packet**, align 8
  %6 = alloca %struct.mkv_demuxer*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.block_info, align 4
  store %struct.demuxer* %0, %struct.demuxer** %4, align 8
  store %struct.demux_packet** %1, %struct.demux_packet*** %5, align 8
  %9 = load %struct.demuxer*, %struct.demuxer** %4, align 8
  %10 = getelementptr inbounds %struct.demuxer, %struct.demuxer* %9, i32 0, i32 0
  %11 = load %struct.mkv_demuxer*, %struct.mkv_demuxer** %10, align 8
  store %struct.mkv_demuxer* %11, %struct.mkv_demuxer** %6, align 8
  br label %12

12:                                               ; preds = %44, %2
  %13 = load %struct.mkv_demuxer*, %struct.mkv_demuxer** %6, align 8
  %14 = getelementptr inbounds %struct.mkv_demuxer, %struct.mkv_demuxer* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %31

17:                                               ; preds = %12
  %18 = load %struct.mkv_demuxer*, %struct.mkv_demuxer** %6, align 8
  %19 = getelementptr inbounds %struct.mkv_demuxer, %struct.mkv_demuxer* %18, i32 0, i32 1
  %20 = load %struct.demux_packet**, %struct.demux_packet*** %19, align 8
  %21 = getelementptr inbounds %struct.demux_packet*, %struct.demux_packet** %20, i64 0
  %22 = load %struct.demux_packet*, %struct.demux_packet** %21, align 8
  %23 = load %struct.demux_packet**, %struct.demux_packet*** %5, align 8
  store %struct.demux_packet* %22, %struct.demux_packet** %23, align 8
  %24 = load %struct.mkv_demuxer*, %struct.mkv_demuxer** %6, align 8
  %25 = getelementptr inbounds %struct.mkv_demuxer, %struct.mkv_demuxer* %24, i32 0, i32 1
  %26 = load %struct.demux_packet**, %struct.demux_packet*** %25, align 8
  %27 = load %struct.mkv_demuxer*, %struct.mkv_demuxer** %6, align 8
  %28 = getelementptr inbounds %struct.mkv_demuxer, %struct.mkv_demuxer* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @MP_TARRAY_REMOVE_AT(%struct.demux_packet** %26, i64 %29, i32 0)
  store i32 1, i32* %3, align 4
  br label %45

31:                                               ; preds = %12
  %32 = load %struct.demuxer*, %struct.demuxer** %4, align 8
  %33 = call i32 @read_next_block(%struct.demuxer* %32, %struct.block_info* %8)
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  store i32 0, i32* %3, align 4
  br label %45

37:                                               ; preds = %31
  %38 = load i32, i32* %7, align 4
  %39 = icmp sgt i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %37
  %41 = load %struct.demuxer*, %struct.demuxer** %4, align 8
  %42 = call i32 @handle_block(%struct.demuxer* %41, %struct.block_info* %8)
  %43 = call i32 @free_block(%struct.block_info* %8)
  br label %44

44:                                               ; preds = %40, %37
  br label %12

45:                                               ; preds = %36, %17
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i32 @MP_TARRAY_REMOVE_AT(%struct.demux_packet**, i64, i32) #1

declare dso_local i32 @read_next_block(%struct.demuxer*, %struct.block_info*) #1

declare dso_local i32 @handle_block(%struct.demuxer*, %struct.block_info*) #1

declare dso_local i32 @free_block(%struct.block_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
