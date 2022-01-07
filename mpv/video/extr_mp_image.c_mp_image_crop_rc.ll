; ModuleID = '/home/carl/AnghaBench/mpv/video/extr_mp_image.c_mp_image_crop_rc.c'
source_filename = "/home/carl/AnghaBench/mpv/video/extr_mp_image.c_mp_image_crop_rc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_image = type { i32 }
%struct.mp_rect = type { i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mp_image_crop_rc(%struct.mp_image* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.mp_rect, align 4
  %5 = alloca %struct.mp_image*, align 8
  %6 = bitcast %struct.mp_rect* %4 to { i64, i64 }*
  %7 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %6, i32 0, i32 0
  store i64 %1, i64* %7, align 4
  %8 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %6, i32 0, i32 1
  store i64 %2, i64* %8, align 4
  store %struct.mp_image* %0, %struct.mp_image** %5, align 8
  %9 = load %struct.mp_image*, %struct.mp_image** %5, align 8
  %10 = getelementptr inbounds %struct.mp_rect, %struct.mp_rect* %4, i32 0, i32 3
  %11 = load i32, i32* %10, align 4
  %12 = getelementptr inbounds %struct.mp_rect, %struct.mp_rect* %4, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = getelementptr inbounds %struct.mp_rect, %struct.mp_rect* %4, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = getelementptr inbounds %struct.mp_rect, %struct.mp_rect* %4, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @mp_image_crop(%struct.mp_image* %9, i32 %11, i32 %13, i32 %15, i32 %17)
  ret void
}

declare dso_local i32 @mp_image_crop(%struct.mp_image*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
