; ModuleID = '/home/carl/AnghaBench/mpv/video/extr_vaapi.c_va_surface_id.c'
source_filename = "/home/carl/AnghaBench/mpv/video/extr_vaapi.c_va_surface_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_image = type { i64, i64* }

@IMGFMT_VAAPI = common dso_local global i64 0, align 8
@VA_INVALID_ID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @va_surface_id(%struct.mp_image* %0) #0 {
  %2 = alloca %struct.mp_image*, align 8
  store %struct.mp_image* %0, %struct.mp_image** %2, align 8
  %3 = load %struct.mp_image*, %struct.mp_image** %2, align 8
  %4 = icmp ne %struct.mp_image* %3, null
  br i1 %4, label %5, label %18

5:                                                ; preds = %1
  %6 = load %struct.mp_image*, %struct.mp_image** %2, align 8
  %7 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @IMGFMT_VAAPI, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %18

11:                                               ; preds = %5
  %12 = load %struct.mp_image*, %struct.mp_image** %2, align 8
  %13 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %12, i32 0, i32 1
  %14 = load i64*, i64** %13, align 8
  %15 = getelementptr inbounds i64, i64* %14, i64 3
  %16 = load i64, i64* %15, align 8
  %17 = trunc i64 %16 to i32
  br label %20

18:                                               ; preds = %5, %1
  %19 = load i32, i32* @VA_INVALID_ID, align 4
  br label %20

20:                                               ; preds = %18, %11
  %21 = phi i32 [ %17, %11 ], [ %19, %18 ]
  ret i32 %21
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
