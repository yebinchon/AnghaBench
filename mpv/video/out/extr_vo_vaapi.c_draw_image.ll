; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_vo_vaapi.c_draw_image.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_vo_vaapi.c_draw_image.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vo = type { %struct.priv* }
%struct.priv = type { i64, %struct.mp_image**, %struct.mp_image** }
%struct.mp_image = type { i64 }

@IMGFMT_VAAPI = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"Could not upload surface.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vo*, %struct.mp_image*)* @draw_image to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @draw_image(%struct.vo* %0, %struct.mp_image* %1) #0 {
  %3 = alloca %struct.vo*, align 8
  %4 = alloca %struct.mp_image*, align 8
  %5 = alloca %struct.priv*, align 8
  %6 = alloca %struct.mp_image*, align 8
  store %struct.vo* %0, %struct.vo** %3, align 8
  store %struct.mp_image* %1, %struct.mp_image** %4, align 8
  %7 = load %struct.vo*, %struct.vo** %3, align 8
  %8 = getelementptr inbounds %struct.vo, %struct.vo* %7, i32 0, i32 0
  %9 = load %struct.priv*, %struct.priv** %8, align 8
  store %struct.priv* %9, %struct.priv** %5, align 8
  %10 = load %struct.mp_image*, %struct.mp_image** %4, align 8
  %11 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @IMGFMT_VAAPI, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %45

15:                                               ; preds = %2
  %16 = load %struct.priv*, %struct.priv** %5, align 8
  %17 = getelementptr inbounds %struct.priv, %struct.priv* %16, i32 0, i32 2
  %18 = load %struct.mp_image**, %struct.mp_image*** %17, align 8
  %19 = load %struct.priv*, %struct.priv** %5, align 8
  %20 = getelementptr inbounds %struct.priv, %struct.priv* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds %struct.mp_image*, %struct.mp_image** %18, i64 %21
  %23 = load %struct.mp_image*, %struct.mp_image** %22, align 8
  store %struct.mp_image* %23, %struct.mp_image** %6, align 8
  %24 = load %struct.mp_image*, %struct.mp_image** %6, align 8
  %25 = icmp ne %struct.mp_image* %24, null
  br i1 %25, label %26, label %32

26:                                               ; preds = %15
  %27 = load %struct.priv*, %struct.priv** %5, align 8
  %28 = load %struct.mp_image*, %struct.mp_image** %6, align 8
  %29 = load %struct.mp_image*, %struct.mp_image** %4, align 8
  %30 = call i64 @va_surface_upload(%struct.priv* %27, %struct.mp_image* %28, %struct.mp_image* %29)
  %31 = icmp slt i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %26, %15
  %33 = load %struct.vo*, %struct.vo** %3, align 8
  %34 = call i32 @MP_WARN(%struct.vo* %33, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %35 = load %struct.mp_image*, %struct.mp_image** %4, align 8
  %36 = call i32 @talloc_free(%struct.mp_image* %35)
  br label %65

37:                                               ; preds = %26
  %38 = load %struct.mp_image*, %struct.mp_image** %6, align 8
  %39 = load %struct.mp_image*, %struct.mp_image** %4, align 8
  %40 = call i32 @mp_image_copy_attributes(%struct.mp_image* %38, %struct.mp_image* %39)
  %41 = load %struct.mp_image*, %struct.mp_image** %4, align 8
  %42 = call i32 @talloc_free(%struct.mp_image* %41)
  %43 = load %struct.mp_image*, %struct.mp_image** %6, align 8
  %44 = call %struct.mp_image* @mp_image_new_ref(%struct.mp_image* %43)
  store %struct.mp_image* %44, %struct.mp_image** %4, align 8
  br label %45

45:                                               ; preds = %37, %2
  %46 = load %struct.priv*, %struct.priv** %5, align 8
  %47 = getelementptr inbounds %struct.priv, %struct.priv* %46, i32 0, i32 1
  %48 = load %struct.mp_image**, %struct.mp_image*** %47, align 8
  %49 = load %struct.priv*, %struct.priv** %5, align 8
  %50 = getelementptr inbounds %struct.priv, %struct.priv* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = getelementptr inbounds %struct.mp_image*, %struct.mp_image** %48, i64 %51
  %53 = load %struct.mp_image*, %struct.mp_image** %52, align 8
  %54 = call i32 @talloc_free(%struct.mp_image* %53)
  %55 = load %struct.mp_image*, %struct.mp_image** %4, align 8
  %56 = load %struct.priv*, %struct.priv** %5, align 8
  %57 = getelementptr inbounds %struct.priv, %struct.priv* %56, i32 0, i32 1
  %58 = load %struct.mp_image**, %struct.mp_image*** %57, align 8
  %59 = load %struct.priv*, %struct.priv** %5, align 8
  %60 = getelementptr inbounds %struct.priv, %struct.priv* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = getelementptr inbounds %struct.mp_image*, %struct.mp_image** %58, i64 %61
  store %struct.mp_image* %55, %struct.mp_image** %62, align 8
  %63 = load %struct.vo*, %struct.vo** %3, align 8
  %64 = call i32 @draw_osd(%struct.vo* %63)
  br label %65

65:                                               ; preds = %45, %32
  ret void
}

declare dso_local i64 @va_surface_upload(%struct.priv*, %struct.mp_image*, %struct.mp_image*) #1

declare dso_local i32 @MP_WARN(%struct.vo*, i8*) #1

declare dso_local i32 @talloc_free(%struct.mp_image*) #1

declare dso_local i32 @mp_image_copy_attributes(%struct.mp_image*, %struct.mp_image*) #1

declare dso_local %struct.mp_image* @mp_image_new_ref(%struct.mp_image*) #1

declare dso_local i32 @draw_osd(%struct.vo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
