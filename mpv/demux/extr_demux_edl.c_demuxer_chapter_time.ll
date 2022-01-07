; ModuleID = '/home/carl/AnghaBench/mpv/demux/extr_demux_edl.c_demuxer_chapter_time.c'
source_filename = "/home/carl/AnghaBench/mpv/demux/extr_demux_edl.c_demuxer_chapter_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.demuxer = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { double }

@llvm.used = appending global [1 x i8*] [i8* bitcast (double (%struct.demuxer*, i32)* @demuxer_chapter_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @demuxer_chapter_time(%struct.demuxer* %0, i32 %1) #0 {
  %3 = alloca double, align 8
  %4 = alloca %struct.demuxer*, align 8
  %5 = alloca i32, align 4
  store %struct.demuxer* %0, %struct.demuxer** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %14, label %8

8:                                                ; preds = %2
  %9 = load i32, i32* %5, align 4
  %10 = load %struct.demuxer*, %struct.demuxer** %4, align 8
  %11 = getelementptr inbounds %struct.demuxer, %struct.demuxer* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp sge i32 %9, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %8, %2
  store double -1.000000e+00, double* %3, align 8
  br label %24

15:                                               ; preds = %8
  %16 = load %struct.demuxer*, %struct.demuxer** %4, align 8
  %17 = getelementptr inbounds %struct.demuxer, %struct.demuxer* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load double, double* %22, align 8
  store double %23, double* %3, align 8
  br label %24

24:                                               ; preds = %15, %14
  %25 = load double, double* %3, align 8
  ret double %25
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
