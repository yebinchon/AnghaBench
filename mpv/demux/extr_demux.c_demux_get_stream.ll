; ModuleID = '/home/carl/AnghaBench/mpv/demux/extr_demux.c_demux_get_stream.c'
source_filename = "/home/carl/AnghaBench/mpv/demux/extr_demux.c_demux_get_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sh_stream = type { i32 }
%struct.demuxer = type { %struct.demux_internal* }
%struct.demux_internal = type { i32, i32, %struct.sh_stream** }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sh_stream* @demux_get_stream(%struct.demuxer* %0, i32 %1) #0 {
  %3 = alloca %struct.demuxer*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.demux_internal*, align 8
  %6 = alloca %struct.sh_stream*, align 8
  store %struct.demuxer* %0, %struct.demuxer** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.demuxer*, %struct.demuxer** %3, align 8
  %8 = getelementptr inbounds %struct.demuxer, %struct.demuxer* %7, i32 0, i32 0
  %9 = load %struct.demux_internal*, %struct.demux_internal** %8, align 8
  store %struct.demux_internal* %9, %struct.demux_internal** %5, align 8
  %10 = load %struct.demux_internal*, %struct.demux_internal** %5, align 8
  %11 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %10, i32 0, i32 1
  %12 = call i32 @pthread_mutex_lock(i32* %11)
  %13 = load i32, i32* %4, align 4
  %14 = icmp sge i32 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %2
  %16 = load i32, i32* %4, align 4
  %17 = load %struct.demux_internal*, %struct.demux_internal** %5, align 8
  %18 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp slt i32 %16, %19
  br label %21

21:                                               ; preds = %15, %2
  %22 = phi i1 [ false, %2 ], [ %20, %15 ]
  %23 = zext i1 %22 to i32
  %24 = call i32 @assert(i32 %23)
  %25 = load %struct.demux_internal*, %struct.demux_internal** %5, align 8
  %26 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %25, i32 0, i32 2
  %27 = load %struct.sh_stream**, %struct.sh_stream*** %26, align 8
  %28 = load i32, i32* %4, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.sh_stream*, %struct.sh_stream** %27, i64 %29
  %31 = load %struct.sh_stream*, %struct.sh_stream** %30, align 8
  store %struct.sh_stream* %31, %struct.sh_stream** %6, align 8
  %32 = load %struct.demux_internal*, %struct.demux_internal** %5, align 8
  %33 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %32, i32 0, i32 1
  %34 = call i32 @pthread_mutex_unlock(i32* %33)
  %35 = load %struct.sh_stream*, %struct.sh_stream** %6, align 8
  ret %struct.sh_stream* %35
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
