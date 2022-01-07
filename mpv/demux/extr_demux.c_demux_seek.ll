; ModuleID = '/home/carl/AnghaBench/mpv/demux/extr_demux.c_demux_seek.c'
source_filename = "/home/carl/AnghaBench/mpv/demux/extr_demux.c_demux_seek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { %struct.demux_internal* }
%struct.demux_internal = type { i32, i32, i32, %struct.TYPE_3__* }

@SEEK_FACTOR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @demux_seek(%struct.TYPE_3__* %0, double %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca double, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.demux_internal*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store double %1, double* %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load %struct.demux_internal*, %struct.demux_internal** %10, align 8
  store %struct.demux_internal* %11, %struct.demux_internal** %7, align 8
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %13 = load %struct.demux_internal*, %struct.demux_internal** %7, align 8
  %14 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %13, i32 0, i32 3
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = icmp eq %struct.TYPE_3__* %12, %15
  %17 = zext i1 %16 to i32
  %18 = call i32 @assert(i32 %17)
  %19 = load %struct.demux_internal*, %struct.demux_internal** %7, align 8
  %20 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %19, i32 0, i32 0
  %21 = call i32 @pthread_mutex_lock(i32* %20)
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @SEEK_FACTOR, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %33, label %26

26:                                               ; preds = %3
  %27 = load double, double* %5, align 8
  %28 = load %struct.demux_internal*, %struct.demux_internal** %7, align 8
  %29 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = sub nsw i32 0, %30
  %32 = call double @MP_ADD_PTS(double %27, i32 %31)
  store double %32, double* %5, align 8
  br label %33

33:                                               ; preds = %26, %3
  %34 = load %struct.demux_internal*, %struct.demux_internal** %7, align 8
  %35 = load double, double* %5, align 8
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @queue_seek(%struct.demux_internal* %34, double %35, i32 %36, i32 1)
  store i32 %37, i32* %8, align 4
  %38 = load %struct.demux_internal*, %struct.demux_internal** %7, align 8
  %39 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %38, i32 0, i32 1
  %40 = call i32 @pthread_cond_signal(i32* %39)
  %41 = load %struct.demux_internal*, %struct.demux_internal** %7, align 8
  %42 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %41, i32 0, i32 0
  %43 = call i32 @pthread_mutex_unlock(i32* %42)
  %44 = load i32, i32* %8, align 4
  ret i32 %44
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local double @MP_ADD_PTS(double, i32) #1

declare dso_local i32 @queue_seek(%struct.demux_internal*, double, i32, i32) #1

declare dso_local i32 @pthread_cond_signal(i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
