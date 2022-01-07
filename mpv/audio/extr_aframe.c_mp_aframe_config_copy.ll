; ModuleID = '/home/carl/AnghaBench/mpv/audio/extr_aframe.c_mp_aframe_config_copy.c'
source_filename = "/home/carl/AnghaBench/mpv/audio/extr_aframe.c_mp_aframe_config_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_aframe = type { %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mp_aframe_config_copy(%struct.mp_aframe* %0, %struct.mp_aframe* %1) #0 {
  %3 = alloca %struct.mp_aframe*, align 8
  %4 = alloca %struct.mp_aframe*, align 8
  store %struct.mp_aframe* %0, %struct.mp_aframe** %3, align 8
  store %struct.mp_aframe* %1, %struct.mp_aframe** %4, align 8
  %5 = load %struct.mp_aframe*, %struct.mp_aframe** %3, align 8
  %6 = call i32 @mp_aframe_reset(%struct.mp_aframe* %5)
  %7 = load %struct.mp_aframe*, %struct.mp_aframe** %4, align 8
  %8 = getelementptr inbounds %struct.mp_aframe, %struct.mp_aframe* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.mp_aframe*, %struct.mp_aframe** %3, align 8
  %11 = getelementptr inbounds %struct.mp_aframe, %struct.mp_aframe* %10, i32 0, i32 2
  store i32 %9, i32* %11, align 4
  %12 = load %struct.mp_aframe*, %struct.mp_aframe** %4, align 8
  %13 = getelementptr inbounds %struct.mp_aframe, %struct.mp_aframe* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.mp_aframe*, %struct.mp_aframe** %3, align 8
  %16 = getelementptr inbounds %struct.mp_aframe, %struct.mp_aframe* %15, i32 0, i32 1
  store i32 %14, i32* %16, align 8
  %17 = load %struct.mp_aframe*, %struct.mp_aframe** %3, align 8
  %18 = load %struct.mp_aframe*, %struct.mp_aframe** %4, align 8
  %19 = call i32 @mp_aframe_copy_attributes(%struct.mp_aframe* %17, %struct.mp_aframe* %18)
  %20 = load %struct.mp_aframe*, %struct.mp_aframe** %4, align 8
  %21 = getelementptr inbounds %struct.mp_aframe, %struct.mp_aframe* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.mp_aframe*, %struct.mp_aframe** %3, align 8
  %26 = getelementptr inbounds %struct.mp_aframe, %struct.mp_aframe* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 3
  store i32 %24, i32* %28, align 4
  %29 = load %struct.mp_aframe*, %struct.mp_aframe** %4, align 8
  %30 = getelementptr inbounds %struct.mp_aframe, %struct.mp_aframe* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.mp_aframe*, %struct.mp_aframe** %3, align 8
  %35 = getelementptr inbounds %struct.mp_aframe, %struct.mp_aframe* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 2
  store i32 %33, i32* %37, align 4
  %38 = load %struct.mp_aframe*, %struct.mp_aframe** %4, align 8
  %39 = getelementptr inbounds %struct.mp_aframe, %struct.mp_aframe* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.mp_aframe*, %struct.mp_aframe** %3, align 8
  %44 = getelementptr inbounds %struct.mp_aframe, %struct.mp_aframe* %43, i32 0, i32 0
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  store i32 %42, i32* %46, align 4
  ret void
}

declare dso_local i32 @mp_aframe_reset(%struct.mp_aframe*) #1

declare dso_local i32 @mp_aframe_copy_attributes(%struct.mp_aframe*, %struct.mp_aframe*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
