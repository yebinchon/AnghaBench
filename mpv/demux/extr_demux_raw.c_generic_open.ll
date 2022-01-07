; ModuleID = '/home/carl/AnghaBench/mpv/demux/extr_demux_raw.c_generic_open.c'
source_filename = "/home/carl/AnghaBench/mpv/demux/extr_demux_raw.c_generic_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.demuxer = type { i32, %struct.priv*, %struct.stream* }
%struct.priv = type { i32, i32 }
%struct.stream = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.demuxer*)* @generic_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @generic_open(%struct.demuxer* %0) #0 {
  %2 = alloca %struct.demuxer*, align 8
  %3 = alloca %struct.stream*, align 8
  %4 = alloca %struct.priv*, align 8
  %5 = alloca i32, align 4
  store %struct.demuxer* %0, %struct.demuxer** %2, align 8
  %6 = load %struct.demuxer*, %struct.demuxer** %2, align 8
  %7 = getelementptr inbounds %struct.demuxer, %struct.demuxer* %6, i32 0, i32 2
  %8 = load %struct.stream*, %struct.stream** %7, align 8
  store %struct.stream* %8, %struct.stream** %3, align 8
  %9 = load %struct.demuxer*, %struct.demuxer** %2, align 8
  %10 = getelementptr inbounds %struct.demuxer, %struct.demuxer* %9, i32 0, i32 1
  %11 = load %struct.priv*, %struct.priv** %10, align 8
  store %struct.priv* %11, %struct.priv** %4, align 8
  %12 = load %struct.stream*, %struct.stream** %3, align 8
  %13 = call i32 @stream_get_size(%struct.stream* %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp sge i32 %14, 0
  br i1 %15, label %16, label %28

16:                                               ; preds = %1
  %17 = load i32, i32* %5, align 4
  %18 = load %struct.priv*, %struct.priv** %4, align 8
  %19 = getelementptr inbounds %struct.priv, %struct.priv* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = sdiv i32 %17, %20
  %22 = load %struct.priv*, %struct.priv** %4, align 8
  %23 = getelementptr inbounds %struct.priv, %struct.priv* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = sdiv i32 %21, %24
  %26 = load %struct.demuxer*, %struct.demuxer** %2, align 8
  %27 = getelementptr inbounds %struct.demuxer, %struct.demuxer* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  br label %28

28:                                               ; preds = %16, %1
  ret i32 0
}

declare dso_local i32 @stream_get_size(%struct.stream*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
