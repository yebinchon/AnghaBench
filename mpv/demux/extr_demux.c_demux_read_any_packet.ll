; ModuleID = '/home/carl/AnghaBench/mpv/demux/extr_demux.c_demux_read_any_packet.c'
source_filename = "/home/carl/AnghaBench/mpv/demux/extr_demux.c_demux_read_any_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.demux_packet = type { i32 }
%struct.demuxer = type { %struct.demux_internal* }
%struct.demux_internal = type { i32, i32, i32, %struct.TYPE_2__**, i32, i32 }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.demux_packet* @demux_read_any_packet(%struct.demuxer* %0) #0 {
  %2 = alloca %struct.demuxer*, align 8
  %3 = alloca %struct.demux_internal*, align 8
  %4 = alloca %struct.demux_packet*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.demuxer* %0, %struct.demuxer** %2, align 8
  %9 = load %struct.demuxer*, %struct.demuxer** %2, align 8
  %10 = getelementptr inbounds %struct.demuxer, %struct.demuxer* %9, i32 0, i32 0
  %11 = load %struct.demux_internal*, %struct.demux_internal** %10, align 8
  store %struct.demux_internal* %11, %struct.demux_internal** %3, align 8
  %12 = load %struct.demux_internal*, %struct.demux_internal** %3, align 8
  %13 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %12, i32 0, i32 2
  %14 = call i32 @pthread_mutex_lock(i32* %13)
  %15 = load %struct.demux_internal*, %struct.demux_internal** %3, align 8
  %16 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %15, i32 0, i32 5
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = call i32 @assert(i32 %20)
  store %struct.demux_packet* null, %struct.demux_packet** %4, align 8
  store i32 1, i32* %5, align 4
  br label %22

22:                                               ; preds = %64, %1
  %23 = load i32, i32* %5, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %22
  %26 = load %struct.demux_internal*, %struct.demux_internal** %3, align 8
  %27 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  br label %31

31:                                               ; preds = %25, %22
  %32 = phi i1 [ false, %22 ], [ %30, %25 ]
  br i1 %32, label %33, label %73

33:                                               ; preds = %31
  store i32 1, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %34

34:                                               ; preds = %61, %33
  %35 = load i32, i32* %7, align 4
  %36 = load %struct.demux_internal*, %struct.demux_internal** %3, align 8
  %37 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp slt i32 %35, %38
  br i1 %39, label %40, label %64

40:                                               ; preds = %34
  %41 = load %struct.demux_internal*, %struct.demux_internal** %3, align 8
  %42 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %41, i32 0, i32 1
  store i32 1, i32* %42, align 4
  %43 = load %struct.demux_internal*, %struct.demux_internal** %3, align 8
  %44 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %43, i32 0, i32 3
  %45 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %44, align 8
  %46 = load i32, i32* %7, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %45, i64 %47
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @dequeue_packet(i32 %51, %struct.demux_packet** %4)
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* %8, align 4
  %54 = icmp sgt i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %40
  br label %74

56:                                               ; preds = %40
  %57 = load i32, i32* %8, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %56
  store i32 0, i32* %6, align 4
  br label %60

60:                                               ; preds = %59, %56
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %7, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %7, align 4
  br label %34

64:                                               ; preds = %34
  %65 = load %struct.demux_internal*, %struct.demux_internal** %3, align 8
  %66 = call i32 @thread_work(%struct.demux_internal* %65)
  store i32 %66, i32* %5, align 4
  %67 = load i32, i32* %6, align 4
  %68 = icmp ne i32 %67, 0
  %69 = xor i1 %68, true
  %70 = zext i1 %69 to i32
  %71 = load i32, i32* %5, align 4
  %72 = and i32 %71, %70
  store i32 %72, i32* %5, align 4
  br label %22

73:                                               ; preds = %31
  br label %74

74:                                               ; preds = %73, %55
  %75 = load %struct.demux_internal*, %struct.demux_internal** %3, align 8
  %76 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %75, i32 0, i32 2
  %77 = call i32 @pthread_mutex_unlock(i32* %76)
  %78 = load %struct.demux_packet*, %struct.demux_packet** %4, align 8
  ret %struct.demux_packet* %78
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @dequeue_packet(i32, %struct.demux_packet**) #1

declare dso_local i32 @thread_work(%struct.demux_internal*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
