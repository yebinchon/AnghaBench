; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/libff/libff/extr_ff-packet-queue.c_packet_queue_flush.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/libff/libff/extr_ff-packet-queue.c_packet_queue_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ff_packet_queue = type { i32, i64, i64, %struct.ff_packet_list*, i32 }
%struct.ff_packet_list = type { %struct.TYPE_2__, %struct.ff_packet_list* }
%struct.TYPE_2__ = type { i32*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @packet_queue_flush(%struct.ff_packet_queue* %0) #0 {
  %2 = alloca %struct.ff_packet_queue*, align 8
  %3 = alloca %struct.ff_packet_list*, align 8
  store %struct.ff_packet_queue* %0, %struct.ff_packet_queue** %2, align 8
  %4 = load %struct.ff_packet_queue*, %struct.ff_packet_queue** %2, align 8
  %5 = getelementptr inbounds %struct.ff_packet_queue, %struct.ff_packet_queue* %4, i32 0, i32 0
  %6 = call i32 @pthread_mutex_lock(i32* %5)
  %7 = load %struct.ff_packet_queue*, %struct.ff_packet_queue** %2, align 8
  %8 = getelementptr inbounds %struct.ff_packet_queue, %struct.ff_packet_queue* %7, i32 0, i32 3
  %9 = load %struct.ff_packet_list*, %struct.ff_packet_list** %8, align 8
  store %struct.ff_packet_list* %9, %struct.ff_packet_list** %3, align 8
  br label %10

10:                                               ; preds = %35, %1
  %11 = load %struct.ff_packet_list*, %struct.ff_packet_list** %3, align 8
  %12 = icmp ne %struct.ff_packet_list* %11, null
  br i1 %12, label %13, label %39

13:                                               ; preds = %10
  %14 = load %struct.ff_packet_list*, %struct.ff_packet_list** %3, align 8
  %15 = getelementptr inbounds %struct.ff_packet_list, %struct.ff_packet_list* %14, i32 0, i32 1
  %16 = load %struct.ff_packet_list*, %struct.ff_packet_list** %15, align 8
  %17 = load %struct.ff_packet_queue*, %struct.ff_packet_queue** %2, align 8
  %18 = getelementptr inbounds %struct.ff_packet_queue, %struct.ff_packet_queue* %17, i32 0, i32 3
  store %struct.ff_packet_list* %16, %struct.ff_packet_list** %18, align 8
  %19 = load %struct.ff_packet_list*, %struct.ff_packet_list** %3, align 8
  %20 = getelementptr inbounds %struct.ff_packet_list, %struct.ff_packet_list* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = call i32 @av_free_packet(i32* %21)
  %23 = load %struct.ff_packet_list*, %struct.ff_packet_list** %3, align 8
  %24 = getelementptr inbounds %struct.ff_packet_list, %struct.ff_packet_list* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %33

28:                                               ; preds = %13
  %29 = load %struct.ff_packet_list*, %struct.ff_packet_list** %3, align 8
  %30 = getelementptr inbounds %struct.ff_packet_list, %struct.ff_packet_list* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = call i32 @ff_clock_release(i32** %31)
  br label %33

33:                                               ; preds = %28, %13
  %34 = call i32 @av_freep(%struct.ff_packet_list** %3)
  br label %35

35:                                               ; preds = %33
  %36 = load %struct.ff_packet_queue*, %struct.ff_packet_queue** %2, align 8
  %37 = getelementptr inbounds %struct.ff_packet_queue, %struct.ff_packet_queue* %36, i32 0, i32 3
  %38 = load %struct.ff_packet_list*, %struct.ff_packet_list** %37, align 8
  store %struct.ff_packet_list* %38, %struct.ff_packet_list** %3, align 8
  br label %10

39:                                               ; preds = %10
  %40 = load %struct.ff_packet_queue*, %struct.ff_packet_queue** %2, align 8
  %41 = getelementptr inbounds %struct.ff_packet_queue, %struct.ff_packet_queue* %40, i32 0, i32 3
  store %struct.ff_packet_list* null, %struct.ff_packet_list** %41, align 8
  %42 = load %struct.ff_packet_queue*, %struct.ff_packet_queue** %2, align 8
  %43 = getelementptr inbounds %struct.ff_packet_queue, %struct.ff_packet_queue* %42, i32 0, i32 4
  store i32 0, i32* %43, align 8
  %44 = load %struct.ff_packet_queue*, %struct.ff_packet_queue** %2, align 8
  %45 = getelementptr inbounds %struct.ff_packet_queue, %struct.ff_packet_queue* %44, i32 0, i32 2
  store i64 0, i64* %45, align 8
  %46 = load %struct.ff_packet_queue*, %struct.ff_packet_queue** %2, align 8
  %47 = getelementptr inbounds %struct.ff_packet_queue, %struct.ff_packet_queue* %46, i32 0, i32 1
  store i64 0, i64* %47, align 8
  %48 = load %struct.ff_packet_queue*, %struct.ff_packet_queue** %2, align 8
  %49 = getelementptr inbounds %struct.ff_packet_queue, %struct.ff_packet_queue* %48, i32 0, i32 0
  %50 = call i32 @pthread_mutex_unlock(i32* %49)
  ret void
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @av_free_packet(i32*) #1

declare dso_local i32 @ff_clock_release(i32**) #1

declare dso_local i32 @av_freep(%struct.ff_packet_list**) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
