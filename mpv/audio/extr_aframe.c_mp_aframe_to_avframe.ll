; ModuleID = '/home/carl/AnghaBench/mpv/audio/extr_aframe.c_mp_aframe_to_avframe.c'
source_filename = "/home/carl/AnghaBench/mpv/audio/extr_aframe.c_mp_aframe_to_avframe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.AVFrame = type { i32 }
%struct.mp_aframe = type { double, %struct.TYPE_3__*, i32, i32 }
%struct.TYPE_3__ = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.avframe_opaque = type { double }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.AVFrame* @mp_aframe_to_avframe(%struct.mp_aframe* %0) #0 {
  %2 = alloca %struct.AVFrame*, align 8
  %3 = alloca %struct.mp_aframe*, align 8
  %4 = alloca %struct.avframe_opaque*, align 8
  store %struct.mp_aframe* %0, %struct.mp_aframe** %3, align 8
  %5 = load %struct.mp_aframe*, %struct.mp_aframe** %3, align 8
  %6 = icmp ne %struct.mp_aframe* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  store %struct.AVFrame* null, %struct.AVFrame** %2, align 8
  br label %71

8:                                                ; preds = %1
  %9 = load %struct.mp_aframe*, %struct.mp_aframe** %3, align 8
  %10 = getelementptr inbounds %struct.mp_aframe, %struct.mp_aframe* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 4
  %12 = call i64 @af_to_avformat(i32 %11)
  %13 = load %struct.mp_aframe*, %struct.mp_aframe** %3, align 8
  %14 = getelementptr inbounds %struct.mp_aframe, %struct.mp_aframe* %13, i32 0, i32 1
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %12, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %8
  store %struct.AVFrame* null, %struct.AVFrame** %2, align 8
  br label %71

20:                                               ; preds = %8
  %21 = load %struct.mp_aframe*, %struct.mp_aframe** %3, align 8
  %22 = getelementptr inbounds %struct.mp_aframe, %struct.mp_aframe* %21, i32 0, i32 2
  %23 = call i32 @mp_chmap_is_lavc(i32* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %20
  store %struct.AVFrame* null, %struct.AVFrame** %2, align 8
  br label %71

26:                                               ; preds = %20
  %27 = load %struct.mp_aframe*, %struct.mp_aframe** %3, align 8
  %28 = getelementptr inbounds %struct.mp_aframe, %struct.mp_aframe* %27, i32 0, i32 1
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = icmp ne %struct.TYPE_4__* %31, null
  br i1 %32, label %66, label %33

33:                                               ; preds = %26
  %34 = load %struct.mp_aframe*, %struct.mp_aframe** %3, align 8
  %35 = getelementptr inbounds %struct.mp_aframe, %struct.mp_aframe* %34, i32 0, i32 0
  %36 = load double, double* %35, align 8
  %37 = fcmp une double %36, 1.000000e+00
  br i1 %37, label %38, label %66

38:                                               ; preds = %33
  %39 = call %struct.TYPE_4__* @av_buffer_alloc(i32 8)
  %40 = load %struct.mp_aframe*, %struct.mp_aframe** %3, align 8
  %41 = getelementptr inbounds %struct.mp_aframe, %struct.mp_aframe* %40, i32 0, i32 1
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 1
  store %struct.TYPE_4__* %39, %struct.TYPE_4__** %43, align 8
  %44 = load %struct.mp_aframe*, %struct.mp_aframe** %3, align 8
  %45 = getelementptr inbounds %struct.mp_aframe, %struct.mp_aframe* %44, i32 0, i32 1
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 1
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = icmp ne %struct.TYPE_4__* %48, null
  br i1 %49, label %51, label %50

50:                                               ; preds = %38
  store %struct.AVFrame* null, %struct.AVFrame** %2, align 8
  br label %71

51:                                               ; preds = %38
  %52 = load %struct.mp_aframe*, %struct.mp_aframe** %3, align 8
  %53 = getelementptr inbounds %struct.mp_aframe, %struct.mp_aframe* %52, i32 0, i32 1
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 1
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = inttoptr i64 %58 to i8*
  %60 = bitcast i8* %59 to %struct.avframe_opaque*
  store %struct.avframe_opaque* %60, %struct.avframe_opaque** %4, align 8
  %61 = load %struct.mp_aframe*, %struct.mp_aframe** %3, align 8
  %62 = getelementptr inbounds %struct.mp_aframe, %struct.mp_aframe* %61, i32 0, i32 0
  %63 = load double, double* %62, align 8
  %64 = load %struct.avframe_opaque*, %struct.avframe_opaque** %4, align 8
  %65 = getelementptr inbounds %struct.avframe_opaque, %struct.avframe_opaque* %64, i32 0, i32 0
  store double %63, double* %65, align 8
  br label %66

66:                                               ; preds = %51, %33, %26
  %67 = load %struct.mp_aframe*, %struct.mp_aframe** %3, align 8
  %68 = getelementptr inbounds %struct.mp_aframe, %struct.mp_aframe* %67, i32 0, i32 1
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %68, align 8
  %70 = call %struct.AVFrame* @av_frame_clone(%struct.TYPE_3__* %69)
  store %struct.AVFrame* %70, %struct.AVFrame** %2, align 8
  br label %71

71:                                               ; preds = %66, %50, %25, %19, %7
  %72 = load %struct.AVFrame*, %struct.AVFrame** %2, align 8
  ret %struct.AVFrame* %72
}

declare dso_local i64 @af_to_avformat(i32) #1

declare dso_local i32 @mp_chmap_is_lavc(i32*) #1

declare dso_local %struct.TYPE_4__* @av_buffer_alloc(i32) #1

declare dso_local %struct.AVFrame* @av_frame_clone(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
