; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_vo_vaapi.c_uninit.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_vo_vaapi.c_uninit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vo = type { i64, %struct.priv* }
%struct.priv = type { %struct.TYPE_2__*, %struct.vaapi_osd_part*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.vaapi_osd_part = type { i32 }

@MAX_OSD_PARTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vo*)* @uninit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uninit(%struct.vo* %0) #0 {
  %2 = alloca %struct.vo*, align 8
  %3 = alloca %struct.priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.vaapi_osd_part*, align 8
  store %struct.vo* %0, %struct.vo** %2, align 8
  %6 = load %struct.vo*, %struct.vo** %2, align 8
  %7 = getelementptr inbounds %struct.vo, %struct.vo* %6, i32 0, i32 1
  %8 = load %struct.priv*, %struct.priv** %7, align 8
  store %struct.priv* %8, %struct.priv** %3, align 8
  %9 = load %struct.priv*, %struct.priv** %3, align 8
  %10 = call i32 @free_video_specific(%struct.priv* %9)
  %11 = load %struct.priv*, %struct.priv** %3, align 8
  %12 = getelementptr inbounds %struct.priv, %struct.priv* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @talloc_free(i32 %13)
  store i32 0, i32* %4, align 4
  br label %15

15:                                               ; preds = %30, %1
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @MAX_OSD_PARTS, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %33

19:                                               ; preds = %15
  %20 = load %struct.priv*, %struct.priv** %3, align 8
  %21 = getelementptr inbounds %struct.priv, %struct.priv* %20, i32 0, i32 1
  %22 = load %struct.vaapi_osd_part*, %struct.vaapi_osd_part** %21, align 8
  %23 = load i32, i32* %4, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.vaapi_osd_part, %struct.vaapi_osd_part* %22, i64 %24
  store %struct.vaapi_osd_part* %25, %struct.vaapi_osd_part** %5, align 8
  %26 = load %struct.priv*, %struct.priv** %3, align 8
  %27 = load %struct.vaapi_osd_part*, %struct.vaapi_osd_part** %5, align 8
  %28 = getelementptr inbounds %struct.vaapi_osd_part, %struct.vaapi_osd_part* %27, i32 0, i32 0
  %29 = call i32 @free_subpicture(%struct.priv* %26, i32* %28)
  br label %30

30:                                               ; preds = %19
  %31 = load i32, i32* %4, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %4, align 4
  br label %15

33:                                               ; preds = %15
  %34 = load %struct.vo*, %struct.vo** %2, align 8
  %35 = getelementptr inbounds %struct.vo, %struct.vo* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %51

38:                                               ; preds = %33
  %39 = load %struct.vo*, %struct.vo** %2, align 8
  %40 = getelementptr inbounds %struct.vo, %struct.vo* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.priv*, %struct.priv** %3, align 8
  %43 = getelementptr inbounds %struct.priv, %struct.priv* %42, i32 0, i32 0
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = call i32 @hwdec_devices_remove(i64 %41, i32* %45)
  %47 = load %struct.vo*, %struct.vo** %2, align 8
  %48 = getelementptr inbounds %struct.vo, %struct.vo* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = call i32 @hwdec_devices_destroy(i64 %49)
  br label %51

51:                                               ; preds = %38, %33
  %52 = load %struct.priv*, %struct.priv** %3, align 8
  %53 = getelementptr inbounds %struct.priv, %struct.priv* %52, i32 0, i32 0
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = call i32 @va_destroy(%struct.TYPE_2__* %54)
  %56 = load %struct.vo*, %struct.vo** %2, align 8
  %57 = call i32 @vo_x11_uninit(%struct.vo* %56)
  ret void
}

declare dso_local i32 @free_video_specific(%struct.priv*) #1

declare dso_local i32 @talloc_free(i32) #1

declare dso_local i32 @free_subpicture(%struct.priv*, i32*) #1

declare dso_local i32 @hwdec_devices_remove(i64, i32*) #1

declare dso_local i32 @hwdec_devices_destroy(i64) #1

declare dso_local i32 @va_destroy(%struct.TYPE_2__*) #1

declare dso_local i32 @vo_x11_uninit(%struct.vo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
