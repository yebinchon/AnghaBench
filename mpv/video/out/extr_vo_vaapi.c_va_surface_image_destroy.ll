; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_vo_vaapi.c_va_surface_image_destroy.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_vo_vaapi.c_va_surface_image_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.va_surface = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64 }

@VA_INVALID_ID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.va_surface*)* @va_surface_image_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @va_surface_image_destroy(%struct.va_surface* %0) #0 {
  %2 = alloca %struct.va_surface*, align 8
  store %struct.va_surface* %0, %struct.va_surface** %2, align 8
  %3 = load %struct.va_surface*, %struct.va_surface** %2, align 8
  %4 = icmp ne %struct.va_surface* %3, null
  br i1 %4, label %5, label %12

5:                                                ; preds = %1
  %6 = load %struct.va_surface*, %struct.va_surface** %2, align 8
  %7 = getelementptr inbounds %struct.va_surface, %struct.va_surface* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @VA_INVALID_ID, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %5, %1
  br label %28

13:                                               ; preds = %5
  %14 = load %struct.va_surface*, %struct.va_surface** %2, align 8
  %15 = getelementptr inbounds %struct.va_surface, %struct.va_surface* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.va_surface*, %struct.va_surface** %2, align 8
  %18 = getelementptr inbounds %struct.va_surface, %struct.va_surface* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = call i32 @vaDestroyImage(i32 %16, i64 %20)
  %22 = load i64, i64* @VA_INVALID_ID, align 8
  %23 = load %struct.va_surface*, %struct.va_surface** %2, align 8
  %24 = getelementptr inbounds %struct.va_surface, %struct.va_surface* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  store i64 %22, i64* %25, align 8
  %26 = load %struct.va_surface*, %struct.va_surface** %2, align 8
  %27 = getelementptr inbounds %struct.va_surface, %struct.va_surface* %26, i32 0, i32 0
  store i32 0, i32* %27, align 8
  br label %28

28:                                               ; preds = %13, %12
  ret void
}

declare dso_local i32 @vaDestroyImage(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
