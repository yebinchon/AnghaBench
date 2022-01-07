; ModuleID = '/home/carl/AnghaBench/mpv/video/filter/extr_vf_vdpaupp.c_ref_field.c'
source_filename = "/home/carl/AnghaBench/mpv/video/filter/extr_vf_vdpaupp.c_ref_field.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.priv = type { i32 }
%struct.mp_vdpau_mixer_frame = type { i32 }
%struct.mp_image = type { i32* }

@VDP_INVALID_HANDLE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.priv*, %struct.mp_vdpau_mixer_frame*, i32)* @ref_field to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ref_field(%struct.priv* %0, %struct.mp_vdpau_mixer_frame* %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.priv*, align 8
  %6 = alloca %struct.mp_vdpau_mixer_frame*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mp_image*, align 8
  store %struct.priv* %0, %struct.priv** %5, align 8
  store %struct.mp_vdpau_mixer_frame* %1, %struct.mp_vdpau_mixer_frame** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.priv*, %struct.priv** %5, align 8
  %10 = getelementptr inbounds %struct.priv, %struct.priv* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* %7, align 4
  %13 = call i32 @mp_refqueue_get_field(i32 %11, i32 %12)
  %14 = call %struct.mp_image* @mp_image_new_ref(i32 %13)
  store %struct.mp_image* %14, %struct.mp_image** %8, align 8
  %15 = load %struct.mp_image*, %struct.mp_image** %8, align 8
  %16 = icmp ne %struct.mp_image* %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %3
  %18 = load i64, i64* @VDP_INVALID_HANDLE, align 8
  store i64 %18, i64* %4, align 8
  br label %29

19:                                               ; preds = %3
  %20 = load %struct.mp_vdpau_mixer_frame*, %struct.mp_vdpau_mixer_frame** %6, align 8
  %21 = load %struct.mp_image*, %struct.mp_image** %8, align 8
  %22 = call i32 @talloc_steal(%struct.mp_vdpau_mixer_frame* %20, %struct.mp_image* %21)
  %23 = load %struct.mp_image*, %struct.mp_image** %8, align 8
  %24 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 3
  %27 = load i32, i32* %26, align 4
  %28 = sext i32 %27 to i64
  store i64 %28, i64* %4, align 8
  br label %29

29:                                               ; preds = %19, %17
  %30 = load i64, i64* %4, align 8
  ret i64 %30
}

declare dso_local %struct.mp_image* @mp_image_new_ref(i32) #1

declare dso_local i32 @mp_refqueue_get_field(i32, i32) #1

declare dso_local i32 @talloc_steal(%struct.mp_vdpau_mixer_frame*, %struct.mp_image*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
