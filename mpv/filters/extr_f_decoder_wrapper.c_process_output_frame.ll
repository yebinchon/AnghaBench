; ModuleID = '/home/carl/AnghaBench/mpv/filters/extr_f_decoder_wrapper.c_process_output_frame.c'
source_filename = "/home/carl/AnghaBench/mpv/filters/extr_f_decoder_wrapper.c_process_output_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.priv = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i64, i32 }
%struct.mp_image = type { i32, i32 }
%struct.mp_frame = type { i64, %struct.mp_image* }
%struct.mp_aframe = type { i32, i32 }

@MP_FRAME_VIDEO = common dso_local global i64 0, align 8
@MP_FRAME_AUDIO = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"Couldn't reverse audio frame.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.priv*, i64, %struct.mp_image*)* @process_output_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_output_frame(%struct.priv* %0, i64 %1, %struct.mp_image* %2) #0 {
  %4 = alloca %struct.mp_frame, align 8
  %5 = alloca %struct.priv*, align 8
  %6 = alloca %struct.mp_image*, align 8
  %7 = alloca %struct.mp_aframe*, align 8
  %8 = bitcast %struct.mp_frame* %4 to { i64, %struct.mp_image* }*
  %9 = getelementptr inbounds { i64, %struct.mp_image* }, { i64, %struct.mp_image* }* %8, i32 0, i32 0
  store i64 %1, i64* %9, align 8
  %10 = getelementptr inbounds { i64, %struct.mp_image* }, { i64, %struct.mp_image* }* %8, i32 0, i32 1
  store %struct.mp_image* %2, %struct.mp_image** %10, align 8
  store %struct.priv* %0, %struct.priv** %5, align 8
  %11 = getelementptr inbounds %struct.mp_frame, %struct.mp_frame* %4, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @MP_FRAME_VIDEO, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %44

15:                                               ; preds = %3
  %16 = getelementptr inbounds %struct.mp_frame, %struct.mp_frame* %4, i32 0, i32 1
  %17 = load %struct.mp_image*, %struct.mp_image** %16, align 8
  store %struct.mp_image* %17, %struct.mp_image** %6, align 8
  %18 = load %struct.priv*, %struct.priv** %5, align 8
  %19 = load %struct.mp_image*, %struct.mp_image** %6, align 8
  %20 = call i32 @correct_video_pts(%struct.priv* %18, %struct.mp_image* %19)
  %21 = load %struct.priv*, %struct.priv** %5, align 8
  %22 = getelementptr inbounds %struct.priv, %struct.priv* %21, i32 0, i32 2
  %23 = load %struct.mp_image*, %struct.mp_image** %6, align 8
  %24 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %23, i32 0, i32 1
  %25 = call i32 @mp_image_params_equal(i32* %22, i32* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %15
  %28 = load %struct.priv*, %struct.priv** %5, align 8
  %29 = load %struct.mp_image*, %struct.mp_image** %6, align 8
  %30 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %29, i32 0, i32 1
  %31 = call i32 @fix_image_params(%struct.priv* %28, i32* %30)
  br label %32

32:                                               ; preds = %27, %15
  %33 = load %struct.priv*, %struct.priv** %5, align 8
  %34 = getelementptr inbounds %struct.priv, %struct.priv* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.mp_image*, %struct.mp_image** %6, align 8
  %37 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  %38 = load %struct.priv*, %struct.priv** %5, align 8
  %39 = getelementptr inbounds %struct.priv, %struct.priv* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.mp_image*, %struct.mp_image** %6, align 8
  %43 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 4
  br label %72

44:                                               ; preds = %3
  %45 = getelementptr inbounds %struct.mp_frame, %struct.mp_frame* %4, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @MP_FRAME_AUDIO, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %71

49:                                               ; preds = %44
  %50 = getelementptr inbounds %struct.mp_frame, %struct.mp_frame* %4, i32 0, i32 1
  %51 = load %struct.mp_image*, %struct.mp_image** %50, align 8
  %52 = bitcast %struct.mp_image* %51 to %struct.mp_aframe*
  store %struct.mp_aframe* %52, %struct.mp_aframe** %7, align 8
  %53 = load %struct.priv*, %struct.priv** %5, align 8
  %54 = getelementptr inbounds %struct.priv, %struct.priv* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp slt i64 %56, 0
  br i1 %57, label %58, label %66

58:                                               ; preds = %49
  %59 = load %struct.mp_aframe*, %struct.mp_aframe** %7, align 8
  %60 = bitcast %struct.mp_aframe* %59 to %struct.mp_image*
  %61 = call i32 @mp_aframe_reverse(%struct.mp_image* %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %66, label %63

63:                                               ; preds = %58
  %64 = load %struct.priv*, %struct.priv** %5, align 8
  %65 = call i32 @MP_ERR(%struct.priv* %64, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %66

66:                                               ; preds = %63, %58, %49
  %67 = load %struct.priv*, %struct.priv** %5, align 8
  %68 = load %struct.mp_aframe*, %struct.mp_aframe** %7, align 8
  %69 = bitcast %struct.mp_aframe* %68 to %struct.mp_image*
  %70 = call i32 @correct_audio_pts(%struct.priv* %67, %struct.mp_image* %69)
  br label %71

71:                                               ; preds = %66, %44
  br label %72

72:                                               ; preds = %71, %32
  ret void
}

declare dso_local i32 @correct_video_pts(%struct.priv*, %struct.mp_image*) #1

declare dso_local i32 @mp_image_params_equal(i32*, i32*) #1

declare dso_local i32 @fix_image_params(%struct.priv*, i32*) #1

declare dso_local i32 @mp_aframe_reverse(%struct.mp_image*) #1

declare dso_local i32 @MP_ERR(%struct.priv*, i8*) #1

declare dso_local i32 @correct_audio_pts(%struct.priv*, %struct.mp_image*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
