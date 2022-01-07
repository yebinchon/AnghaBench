; ModuleID = '/home/carl/AnghaBench/mpv/filters/extr_frame.c_mp_frame_to_av.c'
source_filename = "/home/carl/AnghaBench/mpv/filters/extr_frame.c_mp_frame_to_av.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* (i32)* }
%struct.TYPE_5__ = type { i32 }
%struct.AVRational = type { i32 }
%struct.mp_frame = type { i64, i32 }

@frame_handlers = common dso_local global %struct.TYPE_6__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_5__* @mp_frame_to_av(i64 %0, i32 %1, %struct.AVRational* %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca %struct.mp_frame, align 8
  %6 = alloca %struct.AVRational*, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = bitcast %struct.mp_frame* %5 to { i64, i32 }*
  %9 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %8, i32 0, i32 0
  store i64 %0, i64* %9, align 8
  %10 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %8, i32 0, i32 1
  store i32 %1, i32* %10, align 8
  store %struct.AVRational* %2, %struct.AVRational** %6, align 8
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** @frame_handlers, align 8
  %12 = getelementptr inbounds %struct.mp_frame, %struct.mp_frame* %5, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i64 %13
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_5__* (i32)*, %struct.TYPE_5__* (i32)** %15, align 8
  %17 = icmp ne %struct.TYPE_5__* (i32)* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %3
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %4, align 8
  br label %44

19:                                               ; preds = %3
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** @frame_handlers, align 8
  %21 = getelementptr inbounds %struct.mp_frame, %struct.mp_frame* %5, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_5__* (i32)*, %struct.TYPE_5__* (i32)** %24, align 8
  %26 = getelementptr inbounds %struct.mp_frame, %struct.mp_frame* %5, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = call %struct.TYPE_5__* %25(i32 %27)
  store %struct.TYPE_5__* %28, %struct.TYPE_5__** %7, align 8
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %30 = icmp ne %struct.TYPE_5__* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %19
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %4, align 8
  br label %44

32:                                               ; preds = %19
  %33 = bitcast %struct.mp_frame* %5 to { i64, i32 }*
  %34 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %33, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @mp_frame_get_pts(i64 %35, i32 %37)
  %39 = load %struct.AVRational*, %struct.AVRational** %6, align 8
  %40 = call i32 @mp_pts_to_av(i32 %38, %struct.AVRational* %39)
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 4
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  store %struct.TYPE_5__* %43, %struct.TYPE_5__** %4, align 8
  br label %44

44:                                               ; preds = %32, %31, %18
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  ret %struct.TYPE_5__* %45
}

declare dso_local i32 @mp_pts_to_av(i32, %struct.AVRational*) #1

declare dso_local i32 @mp_frame_get_pts(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
