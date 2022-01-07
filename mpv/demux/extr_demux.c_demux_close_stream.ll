; ModuleID = '/home/carl/AnghaBench/mpv/demux/extr_demux.c_demux_close_stream.c'
source_filename = "/home/carl/AnghaBench/mpv/demux/extr_demux.c_demux_close_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.demuxer = type { %struct.TYPE_5__*, i32, i32, %struct.demux_internal* }
%struct.TYPE_5__ = type { i32 }
%struct.demux_internal = type { %struct.TYPE_4__*, i32, %struct.demuxer*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_5__* }

@.str = private unnamed_addr constant [39 x i8] c"demuxer read all data; closing stream\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @demux_close_stream(%struct.demuxer* %0) #0 {
  %2 = alloca %struct.demuxer*, align 8
  %3 = alloca %struct.demux_internal*, align 8
  store %struct.demuxer* %0, %struct.demuxer** %2, align 8
  %4 = load %struct.demuxer*, %struct.demuxer** %2, align 8
  %5 = getelementptr inbounds %struct.demuxer, %struct.demuxer* %4, i32 0, i32 3
  %6 = load %struct.demux_internal*, %struct.demux_internal** %5, align 8
  store %struct.demux_internal* %6, %struct.demux_internal** %3, align 8
  %7 = load %struct.demux_internal*, %struct.demux_internal** %3, align 8
  %8 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %17, label %11

11:                                               ; preds = %1
  %12 = load %struct.demuxer*, %struct.demuxer** %2, align 8
  %13 = load %struct.demux_internal*, %struct.demux_internal** %3, align 8
  %14 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %13, i32 0, i32 2
  %15 = load %struct.demuxer*, %struct.demuxer** %14, align 8
  %16 = icmp eq %struct.demuxer* %12, %15
  br label %17

17:                                               ; preds = %11, %1
  %18 = phi i1 [ false, %1 ], [ %16, %11 ]
  %19 = zext i1 %18 to i32
  %20 = call i32 @assert(i32 %19)
  %21 = load %struct.demuxer*, %struct.demuxer** %2, align 8
  %22 = getelementptr inbounds %struct.demuxer, %struct.demuxer* %21, i32 0, i32 0
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %24 = icmp ne %struct.TYPE_5__* %23, null
  br i1 %24, label %25, label %30

25:                                               ; preds = %17
  %26 = load %struct.demux_internal*, %struct.demux_internal** %3, align 8
  %27 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %25, %17
  br label %58

31:                                               ; preds = %25
  %32 = load %struct.demuxer*, %struct.demuxer** %2, align 8
  %33 = call i32 @MP_VERBOSE(%struct.demuxer* %32, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %34 = load %struct.demuxer*, %struct.demuxer** %2, align 8
  %35 = getelementptr inbounds %struct.demuxer, %struct.demuxer* %34, i32 0, i32 0
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %35, align 8
  %37 = call i32 @free_stream(%struct.TYPE_5__* %36)
  %38 = load %struct.demuxer*, %struct.demuxer** %2, align 8
  %39 = getelementptr inbounds %struct.demuxer, %struct.demuxer* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = call %struct.TYPE_5__* @stream_memory_open(i32 %40, i32* null, i32 0)
  %42 = load %struct.demuxer*, %struct.demuxer** %2, align 8
  %43 = getelementptr inbounds %struct.demuxer, %struct.demuxer* %42, i32 0, i32 0
  store %struct.TYPE_5__* %41, %struct.TYPE_5__** %43, align 8
  %44 = load %struct.demuxer*, %struct.demuxer** %2, align 8
  %45 = getelementptr inbounds %struct.demuxer, %struct.demuxer* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.demuxer*, %struct.demuxer** %2, align 8
  %48 = getelementptr inbounds %struct.demuxer, %struct.demuxer* %47, i32 0, i32 0
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  store i32 %46, i32* %50, align 4
  %51 = load %struct.demuxer*, %struct.demuxer** %2, align 8
  %52 = getelementptr inbounds %struct.demuxer, %struct.demuxer* %51, i32 0, i32 0
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %52, align 8
  %54 = load %struct.demux_internal*, %struct.demux_internal** %3, align 8
  %55 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %54, i32 0, i32 0
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  store %struct.TYPE_5__* %53, %struct.TYPE_5__** %57, align 8
  br label %58

58:                                               ; preds = %31, %30
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @MP_VERBOSE(%struct.demuxer*, i8*) #1

declare dso_local i32 @free_stream(%struct.TYPE_5__*) #1

declare dso_local %struct.TYPE_5__* @stream_memory_open(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
