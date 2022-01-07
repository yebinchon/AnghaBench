; ModuleID = '/home/carl/AnghaBench/mpv/audio/extr_aframe.c_mp_aframe_copy_attributes.c'
source_filename = "/home/carl/AnghaBench/mpv/audio/extr_aframe.c_mp_aframe_copy_attributes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_aframe = type { %struct.TYPE_3__*, i32, i32 }
%struct.TYPE_3__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mp_aframe_copy_attributes(%struct.mp_aframe* %0, %struct.mp_aframe* %1) #0 {
  %3 = alloca %struct.mp_aframe*, align 8
  %4 = alloca %struct.mp_aframe*, align 8
  %5 = alloca i32, align 4
  store %struct.mp_aframe* %0, %struct.mp_aframe** %3, align 8
  store %struct.mp_aframe* %1, %struct.mp_aframe** %4, align 8
  %6 = load %struct.mp_aframe*, %struct.mp_aframe** %4, align 8
  %7 = getelementptr inbounds %struct.mp_aframe, %struct.mp_aframe* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.mp_aframe*, %struct.mp_aframe** %3, align 8
  %10 = getelementptr inbounds %struct.mp_aframe, %struct.mp_aframe* %9, i32 0, i32 2
  store i32 %8, i32* %10, align 4
  %11 = load %struct.mp_aframe*, %struct.mp_aframe** %4, align 8
  %12 = getelementptr inbounds %struct.mp_aframe, %struct.mp_aframe* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.mp_aframe*, %struct.mp_aframe** %3, align 8
  %15 = getelementptr inbounds %struct.mp_aframe, %struct.mp_aframe* %14, i32 0, i32 1
  store i32 %13, i32* %15, align 8
  %16 = load %struct.mp_aframe*, %struct.mp_aframe** %3, align 8
  %17 = getelementptr inbounds %struct.mp_aframe, %struct.mp_aframe* %16, i32 0, i32 0
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %5, align 4
  %21 = load %struct.mp_aframe*, %struct.mp_aframe** %3, align 8
  %22 = getelementptr inbounds %struct.mp_aframe, %struct.mp_aframe* %21, i32 0, i32 0
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = load %struct.mp_aframe*, %struct.mp_aframe** %4, align 8
  %25 = getelementptr inbounds %struct.mp_aframe, %struct.mp_aframe* %24, i32 0, i32 0
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = call i64 @av_frame_copy_props(%struct.TYPE_3__* %23, %struct.TYPE_3__* %26)
  %28 = icmp slt i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %2
  %30 = call i32 (...) @abort() #3
  unreachable

31:                                               ; preds = %2
  %32 = load i32, i32* %5, align 4
  %33 = load %struct.mp_aframe*, %struct.mp_aframe** %3, align 8
  %34 = getelementptr inbounds %struct.mp_aframe, %struct.mp_aframe* %33, i32 0, i32 0
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  store i32 %32, i32* %36, align 4
  ret void
}

declare dso_local i64 @av_frame_copy_props(%struct.TYPE_3__*, %struct.TYPE_3__*) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
