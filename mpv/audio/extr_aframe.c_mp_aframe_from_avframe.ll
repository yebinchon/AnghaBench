; ModuleID = '/home/carl/AnghaBench/mpv/audio/extr_aframe.c_mp_aframe_from_avframe.c'
source_filename = "/home/carl/AnghaBench/mpv/audio/extr_aframe.c_mp_aframe_from_avframe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_aframe = type { i32, i32, %struct.TYPE_6__, %struct.TYPE_7__* }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_7__ = type { i64, i32 }
%struct.AVFrame = type { i64, i64, %struct.TYPE_5__*, i32, i32 }
%struct.TYPE_5__ = type { i64 }
%struct.avframe_opaque = type { i32 }

@AV_SAMPLE_FMT_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mp_aframe* @mp_aframe_from_avframe(%struct.AVFrame* %0) #0 {
  %2 = alloca %struct.mp_aframe*, align 8
  %3 = alloca %struct.AVFrame*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mp_aframe*, align 8
  %6 = alloca %struct.avframe_opaque*, align 8
  store %struct.AVFrame* %0, %struct.AVFrame** %3, align 8
  %7 = load %struct.AVFrame*, %struct.AVFrame** %3, align 8
  %8 = icmp ne %struct.AVFrame* %7, null
  br i1 %8, label %9, label %19

9:                                                ; preds = %1
  %10 = load %struct.AVFrame*, %struct.AVFrame** %3, align 8
  %11 = getelementptr inbounds %struct.AVFrame, %struct.AVFrame* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp sgt i64 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %9
  %15 = load %struct.AVFrame*, %struct.AVFrame** %3, align 8
  %16 = getelementptr inbounds %struct.AVFrame, %struct.AVFrame* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp sgt i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %14, %9, %1
  store %struct.mp_aframe* null, %struct.mp_aframe** %2, align 8
  br label %75

20:                                               ; preds = %14
  %21 = load %struct.AVFrame*, %struct.AVFrame** %3, align 8
  %22 = getelementptr inbounds %struct.AVFrame, %struct.AVFrame* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @af_from_avformat(i32 %23)
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %4, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %34, label %27

27:                                               ; preds = %20
  %28 = load %struct.AVFrame*, %struct.AVFrame** %3, align 8
  %29 = getelementptr inbounds %struct.AVFrame, %struct.AVFrame* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @AV_SAMPLE_FMT_NONE, align 4
  %32 = icmp ne i32 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  store %struct.mp_aframe* null, %struct.mp_aframe** %2, align 8
  br label %75

34:                                               ; preds = %27, %20
  %35 = call %struct.mp_aframe* (...) @mp_aframe_create()
  store %struct.mp_aframe* %35, %struct.mp_aframe** %5, align 8
  %36 = load %struct.mp_aframe*, %struct.mp_aframe** %5, align 8
  %37 = getelementptr inbounds %struct.mp_aframe, %struct.mp_aframe* %36, i32 0, i32 3
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %37, align 8
  %39 = load %struct.AVFrame*, %struct.AVFrame** %3, align 8
  %40 = call i64 @av_frame_ref(%struct.TYPE_7__* %38, %struct.AVFrame* %39)
  %41 = icmp slt i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %34
  %43 = call i32 (...) @abort() #3
  unreachable

44:                                               ; preds = %34
  %45 = load i32, i32* %4, align 4
  %46 = load %struct.mp_aframe*, %struct.mp_aframe** %5, align 8
  %47 = getelementptr inbounds %struct.mp_aframe, %struct.mp_aframe* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 8
  %48 = load %struct.mp_aframe*, %struct.mp_aframe** %5, align 8
  %49 = getelementptr inbounds %struct.mp_aframe, %struct.mp_aframe* %48, i32 0, i32 2
  %50 = load %struct.mp_aframe*, %struct.mp_aframe** %5, align 8
  %51 = getelementptr inbounds %struct.mp_aframe, %struct.mp_aframe* %50, i32 0, i32 3
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @mp_chmap_from_lavc(%struct.TYPE_6__* %49, i32 %54)
  %56 = load %struct.AVFrame*, %struct.AVFrame** %3, align 8
  %57 = getelementptr inbounds %struct.AVFrame, %struct.AVFrame* %56, i32 0, i32 2
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %57, align 8
  %59 = icmp ne %struct.TYPE_5__* %58, null
  br i1 %59, label %60, label %73

60:                                               ; preds = %44
  %61 = load %struct.AVFrame*, %struct.AVFrame** %3, align 8
  %62 = getelementptr inbounds %struct.AVFrame, %struct.AVFrame* %61, i32 0, i32 2
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = inttoptr i64 %65 to i8*
  %67 = bitcast i8* %66 to %struct.avframe_opaque*
  store %struct.avframe_opaque* %67, %struct.avframe_opaque** %6, align 8
  %68 = load %struct.avframe_opaque*, %struct.avframe_opaque** %6, align 8
  %69 = getelementptr inbounds %struct.avframe_opaque, %struct.avframe_opaque* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.mp_aframe*, %struct.mp_aframe** %5, align 8
  %72 = getelementptr inbounds %struct.mp_aframe, %struct.mp_aframe* %71, i32 0, i32 1
  store i32 %70, i32* %72, align 4
  br label %73

73:                                               ; preds = %60, %44
  %74 = load %struct.mp_aframe*, %struct.mp_aframe** %5, align 8
  store %struct.mp_aframe* %74, %struct.mp_aframe** %2, align 8
  br label %75

75:                                               ; preds = %73, %33, %19
  %76 = load %struct.mp_aframe*, %struct.mp_aframe** %2, align 8
  ret %struct.mp_aframe* %76
}

declare dso_local i32 @af_from_avformat(i32) #1

declare dso_local %struct.mp_aframe* @mp_aframe_create(...) #1

declare dso_local i64 @av_frame_ref(%struct.TYPE_7__*, %struct.AVFrame*) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i32 @mp_chmap_from_lavc(%struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
