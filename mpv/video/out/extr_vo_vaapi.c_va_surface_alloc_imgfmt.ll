; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_vo_vaapi.c_va_surface_alloc_imgfmt.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_vo_vaapi.c_va_surface_alloc_imgfmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.priv = type { i32 }
%struct.mp_image = type { i32 }
%struct.va_surface = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@VA_INVALID_ID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.priv*, %struct.mp_image*, i32)* @va_surface_alloc_imgfmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @va_surface_alloc_imgfmt(%struct.priv* %0, %struct.mp_image* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.priv*, align 8
  %6 = alloca %struct.mp_image*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.va_surface*, align 8
  %9 = alloca i32*, align 8
  store %struct.priv* %0, %struct.priv** %5, align 8
  store %struct.mp_image* %1, %struct.mp_image** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.mp_image*, %struct.mp_image** %6, align 8
  %11 = call %struct.va_surface* @va_surface_in_mp_image(%struct.mp_image* %10)
  store %struct.va_surface* %11, %struct.va_surface** %8, align 8
  %12 = load %struct.va_surface*, %struct.va_surface** %8, align 8
  %13 = icmp ne %struct.va_surface* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %46

15:                                               ; preds = %3
  %16 = load %struct.va_surface*, %struct.va_surface** %8, align 8
  %17 = getelementptr inbounds %struct.va_surface, %struct.va_surface* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @VA_INVALID_ID, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %32

22:                                               ; preds = %15
  %23 = load %struct.va_surface*, %struct.va_surface** %8, align 8
  %24 = getelementptr inbounds %struct.va_surface, %struct.va_surface* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @va_fourcc_to_imgfmt(i32 %27)
  %29 = load i32, i32* %7, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %22
  store i32 0, i32* %4, align 4
  br label %46

32:                                               ; preds = %22, %15
  %33 = load %struct.priv*, %struct.priv** %5, align 8
  %34 = load i32, i32* %7, align 4
  %35 = call i32* @va_image_format_from_imgfmt(%struct.priv* %33, i32 %34)
  store i32* %35, i32** %9, align 8
  %36 = load i32*, i32** %9, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %32
  store i32 -1, i32* %4, align 4
  br label %46

39:                                               ; preds = %32
  %40 = load %struct.va_surface*, %struct.va_surface** %8, align 8
  %41 = load i32*, i32** %9, align 8
  %42 = call i64 @va_surface_image_alloc(%struct.va_surface* %40, i32* %41)
  %43 = icmp slt i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  store i32 -1, i32* %4, align 4
  br label %46

45:                                               ; preds = %39
  store i32 0, i32* %4, align 4
  br label %46

46:                                               ; preds = %45, %44, %38, %31, %14
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local %struct.va_surface* @va_surface_in_mp_image(%struct.mp_image*) #1

declare dso_local i32 @va_fourcc_to_imgfmt(i32) #1

declare dso_local i32* @va_image_format_from_imgfmt(%struct.priv*, i32) #1

declare dso_local i64 @va_surface_image_alloc(%struct.va_surface*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
