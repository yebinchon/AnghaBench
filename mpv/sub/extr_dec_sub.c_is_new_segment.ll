; ModuleID = '/home/carl/AnghaBench/mpv/sub/extr_dec_sub.c_is_new_segment.c'
source_filename = "/home/carl/AnghaBench/mpv/sub/extr_dec_sub.c_is_new_segment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dec_sub = type { i64, i64, i64 }
%struct.demux_packet = type { i64, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dec_sub*, %struct.demux_packet*)* @is_new_segment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_new_segment(%struct.dec_sub* %0, %struct.demux_packet* %1) #0 {
  %3 = alloca %struct.dec_sub*, align 8
  %4 = alloca %struct.demux_packet*, align 8
  store %struct.dec_sub* %0, %struct.dec_sub** %3, align 8
  store %struct.demux_packet* %1, %struct.demux_packet** %4, align 8
  %5 = load %struct.demux_packet*, %struct.demux_packet** %4, align 8
  %6 = getelementptr inbounds %struct.demux_packet, %struct.demux_packet* %5, i32 0, i32 3
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %35

9:                                                ; preds = %2
  %10 = load %struct.demux_packet*, %struct.demux_packet** %4, align 8
  %11 = getelementptr inbounds %struct.demux_packet, %struct.demux_packet* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.dec_sub*, %struct.dec_sub** %3, align 8
  %14 = getelementptr inbounds %struct.dec_sub, %struct.dec_sub* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %12, %15
  br i1 %16, label %33, label %17

17:                                               ; preds = %9
  %18 = load %struct.demux_packet*, %struct.demux_packet** %4, align 8
  %19 = getelementptr inbounds %struct.demux_packet, %struct.demux_packet* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.dec_sub*, %struct.dec_sub** %3, align 8
  %22 = getelementptr inbounds %struct.dec_sub, %struct.dec_sub* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %20, %23
  br i1 %24, label %33, label %25

25:                                               ; preds = %17
  %26 = load %struct.demux_packet*, %struct.demux_packet** %4, align 8
  %27 = getelementptr inbounds %struct.demux_packet, %struct.demux_packet* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.dec_sub*, %struct.dec_sub** %3, align 8
  %30 = getelementptr inbounds %struct.dec_sub, %struct.dec_sub* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %28, %31
  br label %33

33:                                               ; preds = %25, %17, %9
  %34 = phi i1 [ true, %17 ], [ true, %9 ], [ %32, %25 ]
  br label %35

35:                                               ; preds = %33, %2
  %36 = phi i1 [ false, %2 ], [ %34, %33 ]
  %37 = zext i1 %36 to i32
  ret i32 %37
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
