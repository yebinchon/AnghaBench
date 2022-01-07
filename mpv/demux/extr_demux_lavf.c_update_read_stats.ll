; ModuleID = '/home/carl/AnghaBench/mpv/demux/extr_demux_lavf.c_update_read_stats.c'
source_filename = "/home/carl/AnghaBench/mpv/demux/extr_demux_lavf.c_update_read_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.demuxer = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, %struct.nested_stream* }
%struct.nested_stream = type { i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.demuxer*)* @update_read_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_read_stats(%struct.demuxer* %0) #0 {
  %2 = alloca %struct.demuxer*, align 8
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.nested_stream*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.demuxer* %0, %struct.demuxer** %2, align 8
  %8 = load %struct.demuxer*, %struct.demuxer** %2, align 8
  %9 = getelementptr inbounds %struct.demuxer, %struct.demuxer* %8, i32 0, i32 0
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  store %struct.TYPE_4__* %10, %struct.TYPE_4__** %3, align 8
  store i32 0, i32* %4, align 4
  br label %11

11:                                               ; preds = %40, %1
  %12 = load i32, i32* %4, align 4
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %43

17:                                               ; preds = %11
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  %20 = load %struct.nested_stream*, %struct.nested_stream** %19, align 8
  %21 = load i32, i32* %4, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.nested_stream, %struct.nested_stream* %20, i64 %22
  store %struct.nested_stream* %23, %struct.nested_stream** %5, align 8
  %24 = load %struct.nested_stream*, %struct.nested_stream** %5, align 8
  %25 = getelementptr inbounds %struct.nested_stream, %struct.nested_stream* %24, i32 0, i32 1
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %6, align 8
  %29 = load i64, i64* %6, align 8
  %30 = load %struct.nested_stream*, %struct.nested_stream** %5, align 8
  %31 = getelementptr inbounds %struct.nested_stream, %struct.nested_stream* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = sub nsw i64 %29, %32
  store i64 %33, i64* %7, align 8
  %34 = load i64, i64* %6, align 8
  %35 = load %struct.nested_stream*, %struct.nested_stream** %5, align 8
  %36 = getelementptr inbounds %struct.nested_stream, %struct.nested_stream* %35, i32 0, i32 0
  store i64 %34, i64* %36, align 8
  %37 = load %struct.demuxer*, %struct.demuxer** %2, align 8
  %38 = load i64, i64* %7, align 8
  %39 = call i32 @demux_report_unbuffered_read_bytes(%struct.demuxer* %37, i64 %38)
  br label %40

40:                                               ; preds = %17
  %41 = load i32, i32* %4, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %4, align 4
  br label %11

43:                                               ; preds = %11
  ret void
}

declare dso_local i32 @demux_report_unbuffered_read_bytes(%struct.demuxer*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
