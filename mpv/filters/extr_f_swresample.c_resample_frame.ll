; ModuleID = '/home/carl/AnghaBench/mpv/filters/extr_f_swresample.c_resample_frame.c'
source_filename = "/home/carl/AnghaBench/mpv/filters/extr_f_swresample.c_resample_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.AVAudioResampleContext = type { i32 }
%struct.mp_aframe = type { i32 }
%struct.TYPE_3__ = type { i32, i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.AVAudioResampleContext*, %struct.mp_aframe*, %struct.mp_aframe*, i32)* @resample_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @resample_frame(%struct.AVAudioResampleContext* %0, %struct.mp_aframe* %1, %struct.mp_aframe* %2, i32 %3) #0 {
  %5 = alloca %struct.AVAudioResampleContext*, align 8
  %6 = alloca %struct.mp_aframe*, align 8
  %7 = alloca %struct.mp_aframe*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_3__*, align 8
  %10 = alloca %struct.TYPE_3__*, align 8
  store %struct.AVAudioResampleContext* %0, %struct.AVAudioResampleContext** %5, align 8
  store %struct.mp_aframe* %1, %struct.mp_aframe** %6, align 8
  store %struct.mp_aframe* %2, %struct.mp_aframe** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load %struct.mp_aframe*, %struct.mp_aframe** %7, align 8
  %12 = icmp ne %struct.mp_aframe* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %4
  %14 = load %struct.mp_aframe*, %struct.mp_aframe** %7, align 8
  %15 = call %struct.TYPE_3__* @mp_aframe_get_raw_avframe(%struct.mp_aframe* %14)
  br label %17

16:                                               ; preds = %4
  br label %17

17:                                               ; preds = %16, %13
  %18 = phi %struct.TYPE_3__* [ %15, %13 ], [ null, %16 ]
  store %struct.TYPE_3__* %18, %struct.TYPE_3__** %9, align 8
  %19 = load %struct.mp_aframe*, %struct.mp_aframe** %6, align 8
  %20 = icmp ne %struct.mp_aframe* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %17
  %22 = load %struct.mp_aframe*, %struct.mp_aframe** %6, align 8
  %23 = call %struct.TYPE_3__* @mp_aframe_get_raw_avframe(%struct.mp_aframe* %22)
  br label %25

24:                                               ; preds = %17
  br label %25

25:                                               ; preds = %24, %21
  %26 = phi %struct.TYPE_3__* [ %23, %21 ], [ null, %24 ]
  store %struct.TYPE_3__* %26, %struct.TYPE_3__** %10, align 8
  %27 = load %struct.AVAudioResampleContext*, %struct.AVAudioResampleContext** %5, align 8
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %29 = icmp ne %struct.TYPE_3__* %28, null
  br i1 %29, label %30, label %34

30:                                               ; preds = %25
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 2
  %33 = load i32*, i32** %32, align 8
  br label %35

34:                                               ; preds = %25
  br label %35

35:                                               ; preds = %34, %30
  %36 = phi i32* [ %33, %30 ], [ null, %34 ]
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %38 = icmp ne %struct.TYPE_3__* %37, null
  br i1 %38, label %39, label %45

39:                                               ; preds = %35
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 0
  %44 = load i32, i32* %43, align 4
  br label %46

45:                                               ; preds = %35
  br label %46

46:                                               ; preds = %45, %39
  %47 = phi i32 [ %44, %39 ], [ 0, %45 ]
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %49 = icmp ne %struct.TYPE_3__* %48, null
  br i1 %49, label %50, label %54

50:                                               ; preds = %46
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  br label %55

54:                                               ; preds = %46
  br label %55

55:                                               ; preds = %54, %50
  %56 = phi i32 [ %53, %50 ], [ 0, %54 ]
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %58 = icmp ne %struct.TYPE_3__* %57, null
  br i1 %58, label %59, label %63

59:                                               ; preds = %55
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 2
  %62 = load i32*, i32** %61, align 8
  br label %64

63:                                               ; preds = %55
  br label %64

64:                                               ; preds = %63, %59
  %65 = phi i32* [ %62, %59 ], [ null, %63 ]
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %67 = icmp ne %struct.TYPE_3__* %66, null
  br i1 %67, label %68, label %74

68:                                               ; preds = %64
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 1
  %71 = load i32*, i32** %70, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 0
  %73 = load i32, i32* %72, align 4
  br label %75

74:                                               ; preds = %64
  br label %75

75:                                               ; preds = %74, %68
  %76 = phi i32 [ %73, %68 ], [ 0, %74 ]
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %78 = icmp ne %struct.TYPE_3__* %77, null
  br i1 %78, label %79, label %85

79:                                               ; preds = %75
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* %8, align 4
  %84 = call i32 @MPMIN(i32 %82, i32 %83)
  br label %86

85:                                               ; preds = %75
  br label %86

86:                                               ; preds = %85, %79
  %87 = phi i32 [ %84, %79 ], [ 0, %85 ]
  %88 = call i32 @avresample_convert(%struct.AVAudioResampleContext* %27, i32* %36, i32 %47, i32 %56, i32* %65, i32 %76, i32 %87)
  ret i32 %88
}

declare dso_local %struct.TYPE_3__* @mp_aframe_get_raw_avframe(%struct.mp_aframe*) #1

declare dso_local i32 @avresample_convert(%struct.AVAudioResampleContext*, i32*, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @MPMIN(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
