; ModuleID = '/home/carl/AnghaBench/mpv/demux/extr_demux.c_demux_read_packet_async.c'
source_filename = "/home/carl/AnghaBench/mpv/demux/extr_demux.c_demux_read_packet_async.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sh_stream = type { %struct.demux_stream* }
%struct.demux_stream = type { %struct.demux_internal* }
%struct.demux_internal = type { i32, i64, i64 }
%struct.demux_packet = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @demux_read_packet_async(%struct.sh_stream* %0, %struct.demux_packet** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sh_stream*, align 8
  %5 = alloca %struct.demux_packet**, align 8
  %6 = alloca %struct.demux_stream*, align 8
  %7 = alloca %struct.demux_internal*, align 8
  %8 = alloca i32, align 4
  store %struct.sh_stream* %0, %struct.sh_stream** %4, align 8
  store %struct.demux_packet** %1, %struct.demux_packet*** %5, align 8
  %9 = load %struct.sh_stream*, %struct.sh_stream** %4, align 8
  %10 = icmp ne %struct.sh_stream* %9, null
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = load %struct.sh_stream*, %struct.sh_stream** %4, align 8
  %13 = getelementptr inbounds %struct.sh_stream, %struct.sh_stream* %12, i32 0, i32 0
  %14 = load %struct.demux_stream*, %struct.demux_stream** %13, align 8
  br label %16

15:                                               ; preds = %2
  br label %16

16:                                               ; preds = %15, %11
  %17 = phi %struct.demux_stream* [ %14, %11 ], [ null, %15 ]
  store %struct.demux_stream* %17, %struct.demux_stream** %6, align 8
  %18 = load %struct.demux_packet**, %struct.demux_packet*** %5, align 8
  store %struct.demux_packet* null, %struct.demux_packet** %18, align 8
  %19 = load %struct.demux_stream*, %struct.demux_stream** %6, align 8
  %20 = icmp ne %struct.demux_stream* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %16
  store i32 -1, i32* %3, align 4
  br label %54

22:                                               ; preds = %16
  %23 = load %struct.demux_stream*, %struct.demux_stream** %6, align 8
  %24 = getelementptr inbounds %struct.demux_stream, %struct.demux_stream* %23, i32 0, i32 0
  %25 = load %struct.demux_internal*, %struct.demux_internal** %24, align 8
  store %struct.demux_internal* %25, %struct.demux_internal** %7, align 8
  %26 = load %struct.demux_internal*, %struct.demux_internal** %7, align 8
  %27 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %26, i32 0, i32 0
  %28 = call i32 @pthread_mutex_lock(i32* %27)
  store i32 -1, i32* %8, align 4
  br label %29

29:                                               ; preds = %22, %46
  %30 = load %struct.demux_stream*, %struct.demux_stream** %6, align 8
  %31 = load %struct.demux_packet**, %struct.demux_packet*** %5, align 8
  %32 = call i32 @dequeue_packet(%struct.demux_stream* %30, %struct.demux_packet** %31)
  store i32 %32, i32* %8, align 4
  %33 = load %struct.demux_internal*, %struct.demux_internal** %7, align 8
  %34 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %45, label %37

37:                                               ; preds = %29
  %38 = load %struct.demux_internal*, %struct.demux_internal** %7, align 8
  %39 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %37
  %43 = load i32, i32* %8, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %42, %37, %29
  br label %49

46:                                               ; preds = %42
  %47 = load %struct.demux_internal*, %struct.demux_internal** %7, align 8
  %48 = call i32 @thread_work(%struct.demux_internal* %47)
  br label %29

49:                                               ; preds = %45
  %50 = load %struct.demux_internal*, %struct.demux_internal** %7, align 8
  %51 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %50, i32 0, i32 0
  %52 = call i32 @pthread_mutex_unlock(i32* %51)
  %53 = load i32, i32* %8, align 4
  store i32 %53, i32* %3, align 4
  br label %54

54:                                               ; preds = %49, %21
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @dequeue_packet(%struct.demux_stream*, %struct.demux_packet**) #1

declare dso_local i32 @thread_work(%struct.demux_internal*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
