; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_drm_common.c_kms_show_foreach_card.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_drm_common.c_kms_show_foreach_card.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_log = type { i32 }

@DRM_MAX_MINOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mp_log*, void (%struct.mp_log*, i32)*)* @kms_show_foreach_card to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kms_show_foreach_card(%struct.mp_log* %0, void (%struct.mp_log*, i32)* %1) #0 {
  %3 = alloca %struct.mp_log*, align 8
  %4 = alloca void (%struct.mp_log*, i32)*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mp_log* %0, %struct.mp_log** %3, align 8
  store void (%struct.mp_log*, i32)* %1, void (%struct.mp_log*, i32)** %4, align 8
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %23, %2
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* @DRM_MAX_MINOR, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %26

11:                                               ; preds = %7
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @open_card(i32 %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %11
  br label %26

17:                                               ; preds = %11
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @close(i32 %18)
  %20 = load void (%struct.mp_log*, i32)*, void (%struct.mp_log*, i32)** %4, align 8
  %21 = load %struct.mp_log*, %struct.mp_log** %3, align 8
  %22 = load i32, i32* %5, align 4
  call void %20(%struct.mp_log* %21, i32 %22)
  br label %23

23:                                               ; preds = %17
  %24 = load i32, i32* %5, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %5, align 4
  br label %7

26:                                               ; preds = %16, %7
  ret void
}

declare dso_local i32 @open_card(i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
