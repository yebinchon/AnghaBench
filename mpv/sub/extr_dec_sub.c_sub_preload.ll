; ModuleID = '/home/carl/AnghaBench/mpv/sub/extr_dec_sub.c_sub_preload.c'
source_filename = "/home/carl/AnghaBench/mpv/sub/extr_dec_sub.c_sub_preload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dec_sub = type { i32, i32, %struct.TYPE_4__*, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.TYPE_4__*, %struct.demux_packet*)* }
%struct.demux_packet = type { i32 }

@INFINITY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sub_preload(%struct.dec_sub* %0) #0 {
  %2 = alloca %struct.dec_sub*, align 8
  %3 = alloca %struct.demux_packet*, align 8
  %4 = alloca i32, align 4
  store %struct.dec_sub* %0, %struct.dec_sub** %2, align 8
  %5 = load %struct.dec_sub*, %struct.dec_sub** %2, align 8
  %6 = getelementptr inbounds %struct.dec_sub, %struct.dec_sub* %5, i32 0, i32 1
  %7 = call i32 @pthread_mutex_lock(i32* %6)
  %8 = load %struct.dec_sub*, %struct.dec_sub** %2, align 8
  %9 = getelementptr inbounds %struct.dec_sub, %struct.dec_sub* %8, i32 0, i32 0
  store i32 1, i32* %9, align 8
  br label %10

10:                                               ; preds = %27, %17, %1
  store %struct.demux_packet* null, %struct.demux_packet** %3, align 8
  %11 = load %struct.dec_sub*, %struct.dec_sub** %2, align 8
  %12 = getelementptr inbounds %struct.dec_sub, %struct.dec_sub* %11, i32 0, i32 4
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @demux_read_packet_async(i32 %13, %struct.demux_packet** %3)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %10
  %18 = load %struct.dec_sub*, %struct.dec_sub** %2, align 8
  %19 = getelementptr inbounds %struct.dec_sub, %struct.dec_sub* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @INFINITY, align 4
  %22 = call i32 @mp_dispatch_queue_process(i32 %20, i32 %21)
  br label %10

23:                                               ; preds = %10
  %24 = load %struct.demux_packet*, %struct.demux_packet** %3, align 8
  %25 = icmp ne %struct.demux_packet* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %23
  br label %42

27:                                               ; preds = %23
  %28 = load %struct.dec_sub*, %struct.dec_sub** %2, align 8
  %29 = getelementptr inbounds %struct.dec_sub, %struct.dec_sub* %28, i32 0, i32 2
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32 (%struct.TYPE_4__*, %struct.demux_packet*)*, i32 (%struct.TYPE_4__*, %struct.demux_packet*)** %33, align 8
  %35 = load %struct.dec_sub*, %struct.dec_sub** %2, align 8
  %36 = getelementptr inbounds %struct.dec_sub, %struct.dec_sub* %35, i32 0, i32 2
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = load %struct.demux_packet*, %struct.demux_packet** %3, align 8
  %39 = call i32 %34(%struct.TYPE_4__* %37, %struct.demux_packet* %38)
  %40 = load %struct.demux_packet*, %struct.demux_packet** %3, align 8
  %41 = call i32 @talloc_free(%struct.demux_packet* %40)
  br label %10

42:                                               ; preds = %26
  %43 = load %struct.dec_sub*, %struct.dec_sub** %2, align 8
  %44 = getelementptr inbounds %struct.dec_sub, %struct.dec_sub* %43, i32 0, i32 1
  %45 = call i32 @pthread_mutex_unlock(i32* %44)
  ret void
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @demux_read_packet_async(i32, %struct.demux_packet**) #1

declare dso_local i32 @mp_dispatch_queue_process(i32, i32) #1

declare dso_local i32 @talloc_free(%struct.demux_packet*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
