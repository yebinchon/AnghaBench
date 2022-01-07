; ModuleID = '/home/carl/AnghaBench/mpv/demux/extr_demux.c_execute_trackswitch.c'
source_filename = "/home/carl/AnghaBench/mpv/demux/extr_demux.c_execute_trackswitch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.demux_internal = type { i32, i32, i32, %struct.TYPE_8__*, %struct.TYPE_6__** }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 (%struct.TYPE_8__*)* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.demux_internal*)* @execute_trackswitch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @execute_trackswitch(%struct.demux_internal* %0) #0 {
  %2 = alloca %struct.demux_internal*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.demux_internal* %0, %struct.demux_internal** %2, align 8
  %5 = load %struct.demux_internal*, %struct.demux_internal** %2, align 8
  %6 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %5, i32 0, i32 0
  store i32 0, i32* %6, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %7

7:                                                ; preds = %27, %1
  %8 = load i32, i32* %4, align 4
  %9 = load %struct.demux_internal*, %struct.demux_internal** %2, align 8
  %10 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = icmp slt i32 %8, %11
  br i1 %12, label %13, label %30

13:                                               ; preds = %7
  %14 = load %struct.demux_internal*, %struct.demux_internal** %2, align 8
  %15 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %14, i32 0, i32 4
  %16 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %15, align 8
  %17 = load i32, i32* %4, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %16, i64 %18
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %3, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %3, align 4
  br label %27

27:                                               ; preds = %13
  %28 = load i32, i32* %4, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %4, align 4
  br label %7

30:                                               ; preds = %7
  %31 = load %struct.demux_internal*, %struct.demux_internal** %2, align 8
  %32 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %31, i32 0, i32 2
  %33 = call i32 @pthread_mutex_unlock(i32* %32)
  %34 = load %struct.demux_internal*, %struct.demux_internal** %2, align 8
  %35 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %34, i32 0, i32 3
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = load i32 (%struct.TYPE_8__*)*, i32 (%struct.TYPE_8__*)** %39, align 8
  %41 = icmp ne i32 (%struct.TYPE_8__*)* %40, null
  br i1 %41, label %42, label %54

42:                                               ; preds = %30
  %43 = load %struct.demux_internal*, %struct.demux_internal** %2, align 8
  %44 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %43, i32 0, i32 3
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = load i32 (%struct.TYPE_8__*)*, i32 (%struct.TYPE_8__*)** %48, align 8
  %50 = load %struct.demux_internal*, %struct.demux_internal** %2, align 8
  %51 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %50, i32 0, i32 3
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %51, align 8
  %53 = call i32 %49(%struct.TYPE_8__* %52)
  br label %54

54:                                               ; preds = %42, %30
  %55 = load %struct.demux_internal*, %struct.demux_internal** %2, align 8
  %56 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %55, i32 0, i32 2
  %57 = call i32 @pthread_mutex_lock(i32* %56)
  ret void
}

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
