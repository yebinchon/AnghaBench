; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_vo_vaapi.c_draw_osd.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_vo_vaapi.c_draw_osd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vo = type { i32, i32, %struct.priv* }
%struct.priv = type { i64, %struct.TYPE_4__*, %struct.mp_osd_res, i64, %struct.TYPE_3__, %struct.mp_image** }
%struct.TYPE_4__ = type { i32 }
%struct.mp_osd_res = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.mp_image = type { double }

@MAX_OSD_PARTS = common dso_local global i32 0, align 4
@osd_formats = common dso_local global i32 0, align 4
@draw_osd_cb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vo*)* @draw_osd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @draw_osd(%struct.vo* %0) #0 {
  %2 = alloca %struct.vo*, align 8
  %3 = alloca %struct.priv*, align 8
  %4 = alloca %struct.mp_image*, align 8
  %5 = alloca double, align 8
  %6 = alloca %struct.mp_osd_res, align 4
  %7 = alloca %struct.mp_osd_res*, align 8
  %8 = alloca i32, align 4
  store %struct.vo* %0, %struct.vo** %2, align 8
  %9 = load %struct.vo*, %struct.vo** %2, align 8
  %10 = getelementptr inbounds %struct.vo, %struct.vo* %9, i32 0, i32 2
  %11 = load %struct.priv*, %struct.priv** %10, align 8
  store %struct.priv* %11, %struct.priv** %3, align 8
  %12 = load %struct.priv*, %struct.priv** %3, align 8
  %13 = getelementptr inbounds %struct.priv, %struct.priv* %12, i32 0, i32 5
  %14 = load %struct.mp_image**, %struct.mp_image*** %13, align 8
  %15 = load %struct.priv*, %struct.priv** %3, align 8
  %16 = getelementptr inbounds %struct.priv, %struct.priv* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds %struct.mp_image*, %struct.mp_image** %14, i64 %17
  %19 = load %struct.mp_image*, %struct.mp_image** %18, align 8
  store %struct.mp_image* %19, %struct.mp_image** %4, align 8
  %20 = load %struct.mp_image*, %struct.mp_image** %4, align 8
  %21 = icmp ne %struct.mp_image* %20, null
  br i1 %21, label %22, label %26

22:                                               ; preds = %1
  %23 = load %struct.mp_image*, %struct.mp_image** %4, align 8
  %24 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %23, i32 0, i32 0
  %25 = load double, double* %24, align 8
  br label %27

26:                                               ; preds = %1
  br label %27

27:                                               ; preds = %26, %22
  %28 = phi double [ %25, %22 ], [ 0.000000e+00, %26 ]
  store double %28, double* %5, align 8
  %29 = load %struct.priv*, %struct.priv** %3, align 8
  %30 = getelementptr inbounds %struct.priv, %struct.priv* %29, i32 0, i32 4
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %27
  br label %77

35:                                               ; preds = %27
  %36 = load %struct.vo*, %struct.vo** %2, align 8
  %37 = getelementptr inbounds %struct.vo, %struct.vo* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @osd_res_from_image_params(i32 %38)
  %40 = getelementptr inbounds %struct.mp_osd_res, %struct.mp_osd_res* %6, i32 0, i32 0
  store i32 %39, i32* %40, align 4
  %41 = load %struct.priv*, %struct.priv** %3, align 8
  %42 = getelementptr inbounds %struct.priv, %struct.priv* %41, i32 0, i32 3
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %35
  %46 = load %struct.priv*, %struct.priv** %3, align 8
  %47 = getelementptr inbounds %struct.priv, %struct.priv* %46, i32 0, i32 2
  store %struct.mp_osd_res* %47, %struct.mp_osd_res** %7, align 8
  br label %49

48:                                               ; preds = %35
  store %struct.mp_osd_res* %6, %struct.mp_osd_res** %7, align 8
  br label %49

49:                                               ; preds = %48, %45
  store i32 0, i32* %8, align 4
  br label %50

50:                                               ; preds = %62, %49
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* @MAX_OSD_PARTS, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %65

54:                                               ; preds = %50
  %55 = load %struct.priv*, %struct.priv** %3, align 8
  %56 = getelementptr inbounds %struct.priv, %struct.priv* %55, i32 0, i32 1
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = load i32, i32* %8, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  store i32 0, i32* %61, align 4
  br label %62

62:                                               ; preds = %54
  %63 = load i32, i32* %8, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %8, align 4
  br label %50

65:                                               ; preds = %50
  %66 = load %struct.vo*, %struct.vo** %2, align 8
  %67 = getelementptr inbounds %struct.vo, %struct.vo* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.mp_osd_res*, %struct.mp_osd_res** %7, align 8
  %70 = load double, double* %5, align 8
  %71 = load i32, i32* @osd_formats, align 4
  %72 = load i32, i32* @draw_osd_cb, align 4
  %73 = load %struct.priv*, %struct.priv** %3, align 8
  %74 = getelementptr inbounds %struct.mp_osd_res, %struct.mp_osd_res* %69, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @osd_draw(i32 %68, i32 %75, double %70, i32 0, i32 %71, i32 %72, %struct.priv* %73)
  br label %77

77:                                               ; preds = %65, %34
  ret void
}

declare dso_local i32 @osd_res_from_image_params(i32) #1

declare dso_local i32 @osd_draw(i32, i32, double, i32, i32, i32, %struct.priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
