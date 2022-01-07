; ModuleID = '/home/carl/AnghaBench/mpv/video/out/d3d11/extr_hwdec_dxva2dxgi.c_surf_acquire.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/d3d11/extr_hwdec_dxva2dxgi.c_surf_acquire.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.queue_surf = type { i32 }
%struct.ra_hwdec_mapper = type { %struct.priv* }
%struct.priv = type { i32, i64, %struct.queue_surf** }

@.str = private unnamed_addr constant [27 x i8] c"Queue grew to %d surfaces\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"Queue underflow!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.queue_surf* (%struct.ra_hwdec_mapper*)* @surf_acquire to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.queue_surf* @surf_acquire(%struct.ra_hwdec_mapper* %0) #0 {
  %2 = alloca %struct.queue_surf*, align 8
  %3 = alloca %struct.ra_hwdec_mapper*, align 8
  %4 = alloca %struct.priv*, align 8
  %5 = alloca %struct.queue_surf*, align 8
  store %struct.ra_hwdec_mapper* %0, %struct.ra_hwdec_mapper** %3, align 8
  %6 = load %struct.ra_hwdec_mapper*, %struct.ra_hwdec_mapper** %3, align 8
  %7 = getelementptr inbounds %struct.ra_hwdec_mapper, %struct.ra_hwdec_mapper* %6, i32 0, i32 0
  %8 = load %struct.priv*, %struct.priv** %7, align 8
  store %struct.priv* %8, %struct.priv** %4, align 8
  %9 = load %struct.priv*, %struct.priv** %4, align 8
  %10 = getelementptr inbounds %struct.priv, %struct.priv* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %25

13:                                               ; preds = %1
  %14 = load %struct.ra_hwdec_mapper*, %struct.ra_hwdec_mapper** %3, align 8
  %15 = load %struct.priv*, %struct.priv** %4, align 8
  %16 = getelementptr inbounds %struct.priv, %struct.priv* %15, i32 0, i32 2
  %17 = load %struct.queue_surf**, %struct.queue_surf*** %16, align 8
  %18 = load %struct.priv*, %struct.priv** %4, align 8
  %19 = getelementptr inbounds %struct.priv, %struct.priv* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds %struct.queue_surf*, %struct.queue_surf** %17, i64 %20
  %22 = load %struct.queue_surf*, %struct.queue_surf** %21, align 8
  %23 = call i32 @surf_is_idle11(%struct.ra_hwdec_mapper* %14, %struct.queue_surf* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %71, label %25

25:                                               ; preds = %13, %1
  %26 = load %struct.priv*, %struct.priv** %4, align 8
  %27 = getelementptr inbounds %struct.priv, %struct.priv* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp slt i32 %28, 16
  br i1 %29, label %30, label %54

30:                                               ; preds = %25
  %31 = load %struct.ra_hwdec_mapper*, %struct.ra_hwdec_mapper** %3, align 8
  %32 = call %struct.queue_surf* @surf_create(%struct.ra_hwdec_mapper* %31)
  store %struct.queue_surf* %32, %struct.queue_surf** %5, align 8
  %33 = load %struct.queue_surf*, %struct.queue_surf** %5, align 8
  %34 = icmp ne %struct.queue_surf* %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %30
  store %struct.queue_surf* null, %struct.queue_surf** %2, align 8
  br label %80

36:                                               ; preds = %30
  %37 = load %struct.priv*, %struct.priv** %4, align 8
  %38 = load %struct.priv*, %struct.priv** %4, align 8
  %39 = getelementptr inbounds %struct.priv, %struct.priv* %38, i32 0, i32 2
  %40 = load %struct.queue_surf**, %struct.queue_surf*** %39, align 8
  %41 = load %struct.priv*, %struct.priv** %4, align 8
  %42 = getelementptr inbounds %struct.priv, %struct.priv* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.priv*, %struct.priv** %4, align 8
  %45 = getelementptr inbounds %struct.priv, %struct.priv* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.queue_surf*, %struct.queue_surf** %5, align 8
  %48 = call i32 @MP_TARRAY_INSERT_AT(%struct.priv* %37, %struct.queue_surf** %40, i32 %43, i64 %46, %struct.queue_surf* %47)
  %49 = load %struct.ra_hwdec_mapper*, %struct.ra_hwdec_mapper** %3, align 8
  %50 = load %struct.priv*, %struct.priv** %4, align 8
  %51 = getelementptr inbounds %struct.priv, %struct.priv* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @MP_DBG(%struct.ra_hwdec_mapper* %49, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %52)
  br label %70

54:                                               ; preds = %25
  %55 = load %struct.ra_hwdec_mapper*, %struct.ra_hwdec_mapper** %3, align 8
  %56 = load %struct.priv*, %struct.priv** %4, align 8
  %57 = getelementptr inbounds %struct.priv, %struct.priv* %56, i32 0, i32 2
  %58 = load %struct.queue_surf**, %struct.queue_surf*** %57, align 8
  %59 = load %struct.priv*, %struct.priv** %4, align 8
  %60 = getelementptr inbounds %struct.priv, %struct.priv* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = getelementptr inbounds %struct.queue_surf*, %struct.queue_surf** %58, i64 %61
  %63 = load %struct.queue_surf*, %struct.queue_surf** %62, align 8
  %64 = call i32 @surf_wait_idle11(%struct.ra_hwdec_mapper* %55, %struct.queue_surf* %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %54
  store %struct.queue_surf* null, %struct.queue_surf** %2, align 8
  br label %80

67:                                               ; preds = %54
  %68 = load %struct.ra_hwdec_mapper*, %struct.ra_hwdec_mapper** %3, align 8
  %69 = call i32 @MP_WARN(%struct.ra_hwdec_mapper* %68, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  br label %70

70:                                               ; preds = %67, %36
  br label %71

71:                                               ; preds = %70, %13
  %72 = load %struct.priv*, %struct.priv** %4, align 8
  %73 = getelementptr inbounds %struct.priv, %struct.priv* %72, i32 0, i32 2
  %74 = load %struct.queue_surf**, %struct.queue_surf*** %73, align 8
  %75 = load %struct.priv*, %struct.priv** %4, align 8
  %76 = getelementptr inbounds %struct.priv, %struct.priv* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = getelementptr inbounds %struct.queue_surf*, %struct.queue_surf** %74, i64 %77
  %79 = load %struct.queue_surf*, %struct.queue_surf** %78, align 8
  store %struct.queue_surf* %79, %struct.queue_surf** %2, align 8
  br label %80

80:                                               ; preds = %71, %66, %35
  %81 = load %struct.queue_surf*, %struct.queue_surf** %2, align 8
  ret %struct.queue_surf* %81
}

declare dso_local i32 @surf_is_idle11(%struct.ra_hwdec_mapper*, %struct.queue_surf*) #1

declare dso_local %struct.queue_surf* @surf_create(%struct.ra_hwdec_mapper*) #1

declare dso_local i32 @MP_TARRAY_INSERT_AT(%struct.priv*, %struct.queue_surf**, i32, i64, %struct.queue_surf*) #1

declare dso_local i32 @MP_DBG(%struct.ra_hwdec_mapper*, i8*, i32) #1

declare dso_local i32 @surf_wait_idle11(%struct.ra_hwdec_mapper*, %struct.queue_surf*) #1

declare dso_local i32 @MP_WARN(%struct.ra_hwdec_mapper*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
