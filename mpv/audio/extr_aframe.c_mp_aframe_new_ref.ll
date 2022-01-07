; ModuleID = '/home/carl/AnghaBench/mpv/audio/extr_aframe.c_mp_aframe_new_ref.c'
source_filename = "/home/carl/AnghaBench/mpv/audio/extr_aframe.c_mp_aframe_new_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_aframe = type { i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mp_aframe* @mp_aframe_new_ref(%struct.mp_aframe* %0) #0 {
  %2 = alloca %struct.mp_aframe*, align 8
  %3 = alloca %struct.mp_aframe*, align 8
  %4 = alloca %struct.mp_aframe*, align 8
  store %struct.mp_aframe* %0, %struct.mp_aframe** %3, align 8
  %5 = load %struct.mp_aframe*, %struct.mp_aframe** %3, align 8
  %6 = icmp ne %struct.mp_aframe* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  store %struct.mp_aframe* null, %struct.mp_aframe** %2, align 8
  br label %51

8:                                                ; preds = %1
  %9 = call %struct.mp_aframe* (...) @mp_aframe_create()
  store %struct.mp_aframe* %9, %struct.mp_aframe** %4, align 8
  %10 = load %struct.mp_aframe*, %struct.mp_aframe** %3, align 8
  %11 = getelementptr inbounds %struct.mp_aframe, %struct.mp_aframe* %10, i32 0, i32 4
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.mp_aframe*, %struct.mp_aframe** %4, align 8
  %14 = getelementptr inbounds %struct.mp_aframe, %struct.mp_aframe* %13, i32 0, i32 4
  store i32 %12, i32* %14, align 4
  %15 = load %struct.mp_aframe*, %struct.mp_aframe** %3, align 8
  %16 = getelementptr inbounds %struct.mp_aframe, %struct.mp_aframe* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.mp_aframe*, %struct.mp_aframe** %4, align 8
  %19 = getelementptr inbounds %struct.mp_aframe, %struct.mp_aframe* %18, i32 0, i32 3
  store i32 %17, i32* %19, align 4
  %20 = load %struct.mp_aframe*, %struct.mp_aframe** %3, align 8
  %21 = getelementptr inbounds %struct.mp_aframe, %struct.mp_aframe* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.mp_aframe*, %struct.mp_aframe** %4, align 8
  %24 = getelementptr inbounds %struct.mp_aframe, %struct.mp_aframe* %23, i32 0, i32 2
  store i32 %22, i32* %24, align 4
  %25 = load %struct.mp_aframe*, %struct.mp_aframe** %3, align 8
  %26 = getelementptr inbounds %struct.mp_aframe, %struct.mp_aframe* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.mp_aframe*, %struct.mp_aframe** %4, align 8
  %29 = getelementptr inbounds %struct.mp_aframe, %struct.mp_aframe* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 4
  %30 = load %struct.mp_aframe*, %struct.mp_aframe** %3, align 8
  %31 = call i64 @mp_aframe_is_allocated(%struct.mp_aframe* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %45

33:                                               ; preds = %8
  %34 = load %struct.mp_aframe*, %struct.mp_aframe** %4, align 8
  %35 = getelementptr inbounds %struct.mp_aframe, %struct.mp_aframe* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.mp_aframe*, %struct.mp_aframe** %3, align 8
  %38 = getelementptr inbounds %struct.mp_aframe, %struct.mp_aframe* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i64 @av_frame_ref(i32 %36, i32 %39)
  %41 = icmp slt i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %33
  %43 = call i32 (...) @abort() #3
  unreachable

44:                                               ; preds = %33
  br label %49

45:                                               ; preds = %8
  %46 = load %struct.mp_aframe*, %struct.mp_aframe** %4, align 8
  %47 = load %struct.mp_aframe*, %struct.mp_aframe** %3, align 8
  %48 = call i32 @mp_aframe_config_copy(%struct.mp_aframe* %46, %struct.mp_aframe* %47)
  br label %49

49:                                               ; preds = %45, %44
  %50 = load %struct.mp_aframe*, %struct.mp_aframe** %4, align 8
  store %struct.mp_aframe* %50, %struct.mp_aframe** %2, align 8
  br label %51

51:                                               ; preds = %49, %7
  %52 = load %struct.mp_aframe*, %struct.mp_aframe** %2, align 8
  ret %struct.mp_aframe* %52
}

declare dso_local %struct.mp_aframe* @mp_aframe_create(...) #1

declare dso_local i64 @mp_aframe_is_allocated(%struct.mp_aframe*) #1

declare dso_local i64 @av_frame_ref(i32, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i32 @mp_aframe_config_copy(%struct.mp_aframe*, %struct.mp_aframe*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
