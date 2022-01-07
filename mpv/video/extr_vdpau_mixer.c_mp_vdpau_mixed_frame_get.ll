; ModuleID = '/home/carl/AnghaBench/mpv/video/extr_vdpau_mixer.c_mp_vdpau_mixed_frame_get.c'
source_filename = "/home/carl/AnghaBench/mpv/video/extr_vdpau_mixer.c_mp_vdpau_mixed_frame_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_vdpau_mixer_frame = type opaque
%struct.mp_image = type { i64, i64* }

@IMGFMT_VDPAU = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mp_vdpau_mixer_frame* @mp_vdpau_mixed_frame_get(%struct.mp_image* %0) #0 {
  %2 = alloca %struct.mp_vdpau_mixer_frame*, align 8
  %3 = alloca %struct.mp_image*, align 8
  store %struct.mp_image* %0, %struct.mp_image** %3, align 8
  %4 = load %struct.mp_image*, %struct.mp_image** %3, align 8
  %5 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @IMGFMT_VDPAU, align 8
  %8 = icmp ne i64 %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store %struct.mp_vdpau_mixer_frame* null, %struct.mp_vdpau_mixer_frame** %2, align 8
  br label %18

10:                                               ; preds = %1
  %11 = load %struct.mp_image*, %struct.mp_image** %3, align 8
  %12 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %11, i32 0, i32 1
  %13 = load i64*, i64** %12, align 8
  %14 = getelementptr inbounds i64, i64* %13, i64 2
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to i8*
  %17 = bitcast i8* %16 to %struct.mp_vdpau_mixer_frame*
  store %struct.mp_vdpau_mixer_frame* %17, %struct.mp_vdpau_mixer_frame** %2, align 8
  br label %18

18:                                               ; preds = %10, %9
  %19 = load %struct.mp_vdpau_mixer_frame*, %struct.mp_vdpau_mixer_frame** %2, align 8
  ret %struct.mp_vdpau_mixer_frame* %19
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
