; ModuleID = '/home/carl/AnghaBench/mpv/demux/extr_demux.c_demux_block_reading.c'
source_filename = "/home/carl/AnghaBench/mpv/demux/extr_demux.c_demux_block_reading.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.demuxer = type { %struct.demux_internal* }
%struct.demux_internal = type { i32, i32, i32, i32, %struct.TYPE_3__**, %struct.demuxer* }
%struct.TYPE_3__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @demux_block_reading(%struct.demuxer* %0, i32 %1) #0 {
  %3 = alloca %struct.demuxer*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.demux_internal*, align 8
  %6 = alloca i32, align 4
  store %struct.demuxer* %0, %struct.demuxer** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.demuxer*, %struct.demuxer** %3, align 8
  %8 = getelementptr inbounds %struct.demuxer, %struct.demuxer* %7, i32 0, i32 0
  %9 = load %struct.demux_internal*, %struct.demux_internal** %8, align 8
  store %struct.demux_internal* %9, %struct.demux_internal** %5, align 8
  %10 = load %struct.demuxer*, %struct.demuxer** %3, align 8
  %11 = load %struct.demux_internal*, %struct.demux_internal** %5, align 8
  %12 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %11, i32 0, i32 5
  %13 = load %struct.demuxer*, %struct.demuxer** %12, align 8
  %14 = icmp eq %struct.demuxer* %10, %13
  %15 = zext i1 %14 to i32
  %16 = call i32 @assert(i32 %15)
  %17 = load %struct.demux_internal*, %struct.demux_internal** %5, align 8
  %18 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %17, i32 0, i32 2
  %19 = call i32 @pthread_mutex_lock(i32* %18)
  %20 = load i32, i32* %4, align 4
  %21 = load %struct.demux_internal*, %struct.demux_internal** %5, align 8
  %22 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  store i32 0, i32* %6, align 4
  br label %23

23:                                               ; preds = %50, %2
  %24 = load i32, i32* %6, align 4
  %25 = load %struct.demux_internal*, %struct.demux_internal** %5, align 8
  %26 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = icmp slt i32 %24, %27
  br i1 %28, label %29, label %53

29:                                               ; preds = %23
  %30 = load %struct.demux_internal*, %struct.demux_internal** %5, align 8
  %31 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %30, i32 0, i32 4
  %32 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %31, align 8
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %32, i64 %34
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  store i32 1, i32* %39, align 4
  %40 = load %struct.demux_internal*, %struct.demux_internal** %5, align 8
  %41 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %40, i32 0, i32 4
  %42 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %41, align 8
  %43 = load i32, i32* %6, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %42, i64 %44
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = call i32 @wakeup_ds(%struct.TYPE_4__* %48)
  br label %50

50:                                               ; preds = %29
  %51 = load i32, i32* %6, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %6, align 4
  br label %23

53:                                               ; preds = %23
  %54 = load %struct.demux_internal*, %struct.demux_internal** %5, align 8
  %55 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %54, i32 0, i32 3
  %56 = call i32 @pthread_cond_signal(i32* %55)
  %57 = load %struct.demux_internal*, %struct.demux_internal** %5, align 8
  %58 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %57, i32 0, i32 2
  %59 = call i32 @pthread_mutex_unlock(i32* %58)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @wakeup_ds(%struct.TYPE_4__*) #1

declare dso_local i32 @pthread_cond_signal(i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
