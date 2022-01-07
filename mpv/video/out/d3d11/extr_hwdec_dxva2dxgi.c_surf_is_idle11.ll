; ModuleID = '/home/carl/AnghaBench/mpv/video/out/d3d11/extr_hwdec_dxva2dxgi.c_surf_is_idle11.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/d3d11/extr_hwdec_dxva2dxgi.c_surf_is_idle11.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ra_hwdec_mapper = type { %struct.priv* }
%struct.priv = type { i32 }
%struct.queue_surf = type { i32, i64 }

@D3D11_ASYNC_GETDATA_DONOTFLUSH = common dso_local global i32 0, align 4
@S_FALSE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ra_hwdec_mapper*, %struct.queue_surf*)* @surf_is_idle11 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @surf_is_idle11(%struct.ra_hwdec_mapper* %0, %struct.queue_surf* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ra_hwdec_mapper*, align 8
  %5 = alloca %struct.queue_surf*, align 8
  %6 = alloca %struct.priv*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.ra_hwdec_mapper* %0, %struct.ra_hwdec_mapper** %4, align 8
  store %struct.queue_surf* %1, %struct.queue_surf** %5, align 8
  %9 = load %struct.ra_hwdec_mapper*, %struct.ra_hwdec_mapper** %4, align 8
  %10 = getelementptr inbounds %struct.ra_hwdec_mapper, %struct.ra_hwdec_mapper* %9, i32 0, i32 0
  %11 = load %struct.priv*, %struct.priv** %10, align 8
  store %struct.priv* %11, %struct.priv** %6, align 8
  %12 = load %struct.queue_surf*, %struct.queue_surf** %5, align 8
  %13 = getelementptr inbounds %struct.queue_surf, %struct.queue_surf* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %41

17:                                               ; preds = %2
  %18 = load %struct.priv*, %struct.priv** %6, align 8
  %19 = getelementptr inbounds %struct.priv, %struct.priv* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.queue_surf*, %struct.queue_surf** %5, align 8
  %22 = getelementptr inbounds %struct.queue_surf, %struct.queue_surf* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to i32*
  %25 = load i32, i32* @D3D11_ASYNC_GETDATA_DONOTFLUSH, align 4
  %26 = call i64 @ID3D11DeviceContext_GetData(i32 %20, i32* %24, i32* %8, i32 4, i32 %25)
  store i64 %26, i64* %7, align 8
  %27 = load i64, i64* %7, align 8
  %28 = call i64 @FAILED(i64 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %37, label %30

30:                                               ; preds = %17
  %31 = load i64, i64* %7, align 8
  %32 = load i64, i64* @S_FALSE, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %37, label %34

34:                                               ; preds = %30
  %35 = load i32, i32* %8, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %34, %30, %17
  store i32 0, i32* %3, align 4
  br label %41

38:                                               ; preds = %34
  %39 = load %struct.queue_surf*, %struct.queue_surf** %5, align 8
  %40 = getelementptr inbounds %struct.queue_surf, %struct.queue_surf* %39, i32 0, i32 0
  store i32 0, i32* %40, align 8
  store i32 1, i32* %3, align 4
  br label %41

41:                                               ; preds = %38, %37, %16
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i64 @ID3D11DeviceContext_GetData(i32, i32*, i32*, i32, i32) #1

declare dso_local i64 @FAILED(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
