; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_vo_drm.c_control.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_vo_drm.c_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vo = type { i32, i32, i32, %struct.priv* }
%struct.priv = type { i32, %struct.TYPE_4__, %struct.TYPE_3__, i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.mp_image = type { i32 }

@VO_TRUE = common dso_local global i32 0, align 4
@VO_NOTIMPL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vo*, i32, i8*)* @control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @control(%struct.vo* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vo*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.priv*, align 8
  %9 = alloca double, align 8
  store %struct.vo* %0, %struct.vo** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %10 = load %struct.vo*, %struct.vo** %5, align 8
  %11 = getelementptr inbounds %struct.vo, %struct.vo* %10, i32 0, i32 3
  %12 = load %struct.priv*, %struct.priv** %11, align 8
  store %struct.priv* %12, %struct.priv** %8, align 8
  %13 = load i32, i32* %6, align 4
  switch i32 %13, label %70 [
    i32 129, label %14
    i32 128, label %22
    i32 132, label %35
    i32 131, label %48
    i32 130, label %54
  ]

14:                                               ; preds = %3
  %15 = load %struct.priv*, %struct.priv** %8, align 8
  %16 = getelementptr inbounds %struct.priv, %struct.priv* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.mp_image* @mp_image_new_copy(i32 %17)
  %19 = load i8*, i8** %7, align 8
  %20 = bitcast i8* %19 to %struct.mp_image**
  store %struct.mp_image* %18, %struct.mp_image** %20, align 8
  %21 = load i32, i32* @VO_TRUE, align 4
  store i32 %21, i32* %4, align 4
  br label %72

22:                                               ; preds = %3
  %23 = load %struct.vo*, %struct.vo** %5, align 8
  %24 = getelementptr inbounds %struct.vo, %struct.vo* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %22
  %28 = load %struct.vo*, %struct.vo** %5, align 8
  %29 = load %struct.vo*, %struct.vo** %5, align 8
  %30 = getelementptr inbounds %struct.vo, %struct.vo* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @reconfig(%struct.vo* %28, i32 %31)
  br label %33

33:                                               ; preds = %27, %22
  %34 = load i32, i32* @VO_TRUE, align 4
  store i32 %34, i32* %4, align 4
  br label %72

35:                                               ; preds = %3
  %36 = load %struct.priv*, %struct.priv** %8, align 8
  %37 = getelementptr inbounds %struct.priv, %struct.priv* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = call double @kms_get_display_fps(i32 %38)
  store double %39, double* %9, align 8
  %40 = load double, double* %9, align 8
  %41 = fcmp ole double %40, 0.000000e+00
  br i1 %41, label %42, label %43

42:                                               ; preds = %35
  br label %70

43:                                               ; preds = %35
  %44 = load double, double* %9, align 8
  %45 = load i8*, i8** %7, align 8
  %46 = bitcast i8* %45 to double*
  store double %44, double* %46, align 8
  %47 = load i32, i32* @VO_TRUE, align 4
  store i32 %47, i32* %4, align 4
  br label %72

48:                                               ; preds = %3
  %49 = load %struct.vo*, %struct.vo** %5, align 8
  %50 = getelementptr inbounds %struct.vo, %struct.vo* %49, i32 0, i32 0
  store i32 1, i32* %50, align 8
  %51 = load %struct.priv*, %struct.priv** %8, align 8
  %52 = getelementptr inbounds %struct.priv, %struct.priv* %51, i32 0, i32 0
  store i32 1, i32* %52, align 4
  %53 = load i32, i32* @VO_TRUE, align 4
  store i32 %53, i32* %4, align 4
  br label %72

54:                                               ; preds = %3
  %55 = load %struct.priv*, %struct.priv** %8, align 8
  %56 = getelementptr inbounds %struct.priv, %struct.priv* %55, i32 0, i32 0
  store i32 0, i32* %56, align 4
  %57 = load %struct.priv*, %struct.priv** %8, align 8
  %58 = getelementptr inbounds %struct.priv, %struct.priv* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  store i32 -1, i32* %59, align 4
  %60 = load %struct.priv*, %struct.priv** %8, align 8
  %61 = getelementptr inbounds %struct.priv, %struct.priv* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 1
  store i32 0, i32* %62, align 4
  %63 = load %struct.priv*, %struct.priv** %8, align 8
  %64 = getelementptr inbounds %struct.priv, %struct.priv* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 1
  store i32 0, i32* %65, align 4
  %66 = load %struct.priv*, %struct.priv** %8, align 8
  %67 = getelementptr inbounds %struct.priv, %struct.priv* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  store i32 0, i32* %68, align 4
  %69 = load i32, i32* @VO_TRUE, align 4
  store i32 %69, i32* %4, align 4
  br label %72

70:                                               ; preds = %3, %42
  %71 = load i32, i32* @VO_NOTIMPL, align 4
  store i32 %71, i32* %4, align 4
  br label %72

72:                                               ; preds = %70, %54, %48, %43, %33, %14
  %73 = load i32, i32* %4, align 4
  ret i32 %73
}

declare dso_local %struct.mp_image* @mp_image_new_copy(i32) #1

declare dso_local i32 @reconfig(%struct.vo*, i32) #1

declare dso_local double @kms_get_display_fps(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
