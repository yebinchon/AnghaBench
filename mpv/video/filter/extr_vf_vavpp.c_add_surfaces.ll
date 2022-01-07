; ModuleID = '/home/carl/AnghaBench/mpv/video/filter/extr_vf_vavpp.c_add_surfaces.c'
source_filename = "/home/carl/AnghaBench/mpv/video/filter/extr_vf_vavpp.c_add_surfaces.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.priv = type { i32 }
%struct.surface_refs = type { i32, i32, i32 }
%struct.mp_image = type { i32 }

@VA_INVALID_ID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.priv*, %struct.surface_refs*, i32)* @add_surfaces to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_surfaces(%struct.priv* %0, %struct.surface_refs* %1, i32 %2) #0 {
  %4 = alloca %struct.priv*, align 8
  %5 = alloca %struct.surface_refs*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.mp_image*, align 8
  %9 = alloca i64, align 8
  store %struct.priv* %0, %struct.priv** %4, align 8
  store %struct.surface_refs* %1, %struct.surface_refs** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %10

10:                                               ; preds = %45, %3
  %11 = load i32, i32* %7, align 4
  %12 = load %struct.surface_refs*, %struct.surface_refs** %5, align 8
  %13 = getelementptr inbounds %struct.surface_refs, %struct.surface_refs* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %48

16:                                               ; preds = %10
  %17 = load %struct.priv*, %struct.priv** %4, align 8
  %18 = getelementptr inbounds %struct.priv, %struct.priv* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %7, align 4
  %21 = add nsw i32 1, %20
  %22 = load i32, i32* %6, align 4
  %23 = mul nsw i32 %21, %22
  %24 = call %struct.mp_image* @mp_refqueue_get(i32 %19, i32 %23)
  store %struct.mp_image* %24, %struct.mp_image** %8, align 8
  %25 = load %struct.mp_image*, %struct.mp_image** %8, align 8
  %26 = icmp ne %struct.mp_image* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %16
  br label %48

28:                                               ; preds = %16
  %29 = load %struct.mp_image*, %struct.mp_image** %8, align 8
  %30 = call i64 @va_surface_id(%struct.mp_image* %29)
  store i64 %30, i64* %9, align 8
  %31 = load i64, i64* %9, align 8
  %32 = load i64, i64* @VA_INVALID_ID, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  br label %48

35:                                               ; preds = %28
  %36 = load %struct.priv*, %struct.priv** %4, align 8
  %37 = load %struct.surface_refs*, %struct.surface_refs** %5, align 8
  %38 = getelementptr inbounds %struct.surface_refs, %struct.surface_refs* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.surface_refs*, %struct.surface_refs** %5, align 8
  %41 = getelementptr inbounds %struct.surface_refs, %struct.surface_refs* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i64, i64* %9, align 8
  %44 = call i32 @MP_TARRAY_APPEND(%struct.priv* %36, i32 %39, i32 %42, i64 %43)
  br label %45

45:                                               ; preds = %35
  %46 = load i32, i32* %7, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %7, align 4
  br label %10

48:                                               ; preds = %34, %27, %10
  ret void
}

declare dso_local %struct.mp_image* @mp_refqueue_get(i32, i32) #1

declare dso_local i64 @va_surface_id(%struct.mp_image*) #1

declare dso_local i32 @MP_TARRAY_APPEND(%struct.priv*, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
