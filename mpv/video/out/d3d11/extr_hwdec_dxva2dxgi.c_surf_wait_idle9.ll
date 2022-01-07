; ModuleID = '/home/carl/AnghaBench/mpv/video/out/d3d11/extr_hwdec_dxva2dxgi.c_surf_wait_idle9.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/d3d11/extr_hwdec_dxva2dxgi.c_surf_wait_idle9.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ra_hwdec_mapper = type { %struct.TYPE_6__*, %struct.priv* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.priv = type { i64, %struct.TYPE_7__**, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.queue_surf = type { i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i32 }

@D3DTEXF_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Couldn't copy to D3D9 staging texture: %s\0A\00", align 1
@D3DLOCK_READONLY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"Couldn't map D3D9 staging texture: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ra_hwdec_mapper*, %struct.queue_surf*)* @surf_wait_idle9 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @surf_wait_idle9(%struct.ra_hwdec_mapper* %0, %struct.queue_surf* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ra_hwdec_mapper*, align 8
  %5 = alloca %struct.queue_surf*, align 8
  %6 = alloca %struct.priv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_8__, align 4
  %9 = alloca i32, align 4
  store %struct.ra_hwdec_mapper* %0, %struct.ra_hwdec_mapper** %4, align 8
  store %struct.queue_surf* %1, %struct.queue_surf** %5, align 8
  %10 = load %struct.ra_hwdec_mapper*, %struct.ra_hwdec_mapper** %4, align 8
  %11 = getelementptr inbounds %struct.ra_hwdec_mapper, %struct.ra_hwdec_mapper* %10, i32 0, i32 1
  %12 = load %struct.priv*, %struct.priv** %11, align 8
  store %struct.priv* %12, %struct.priv** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  store i32 0, i32* %13, align 4
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 1
  store i32 0, i32* %14, align 4
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 2
  %16 = load %struct.ra_hwdec_mapper*, %struct.ra_hwdec_mapper** %4, align 8
  %17 = getelementptr inbounds %struct.ra_hwdec_mapper, %struct.ra_hwdec_mapper* %16, i32 0, i32 0
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @MPMIN(i32 16, i32 %20)
  store i32 %21, i32* %15, align 4
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 3
  %23 = load %struct.ra_hwdec_mapper*, %struct.ra_hwdec_mapper** %4, align 8
  %24 = getelementptr inbounds %struct.ra_hwdec_mapper, %struct.ra_hwdec_mapper* %23, i32 0, i32 0
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @MPMIN(i32 16, i32 %27)
  store i32 %28, i32* %22, align 4
  %29 = load %struct.priv*, %struct.priv** %6, align 8
  %30 = getelementptr inbounds %struct.priv, %struct.priv* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.queue_surf*, %struct.queue_surf** %5, align 8
  %33 = getelementptr inbounds %struct.queue_surf, %struct.queue_surf* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.queue_surf*, %struct.queue_surf** %5, align 8
  %36 = getelementptr inbounds %struct.queue_surf, %struct.queue_surf* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @D3DTEXF_NONE, align 4
  %39 = call i32 @IDirect3DDevice9Ex_StretchRect(i32 %31, i32 %34, %struct.TYPE_8__* %8, i32 %37, %struct.TYPE_8__* %8, i32 %38)
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %7, align 4
  %41 = call i64 @FAILED(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %2
  %44 = load %struct.ra_hwdec_mapper*, %struct.ra_hwdec_mapper** %4, align 8
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @mp_HRESULT_to_str(i32 %45)
  %47 = call i32 @MP_ERR(%struct.ra_hwdec_mapper* %44, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %46)
  store i32 0, i32* %3, align 4
  br label %76

48:                                               ; preds = %2
  %49 = load %struct.queue_surf*, %struct.queue_surf** %5, align 8
  %50 = getelementptr inbounds %struct.queue_surf, %struct.queue_surf* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @D3DLOCK_READONLY, align 4
  %53 = call i32 @IDirect3DSurface9_LockRect(i32 %51, i32* %9, i32* null, i32 %52)
  store i32 %53, i32* %7, align 4
  %54 = load i32, i32* %7, align 4
  %55 = call i64 @FAILED(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %48
  %58 = load %struct.ra_hwdec_mapper*, %struct.ra_hwdec_mapper** %4, align 8
  %59 = load i32, i32* %7, align 4
  %60 = call i32 @mp_HRESULT_to_str(i32 %59)
  %61 = call i32 @MP_ERR(%struct.ra_hwdec_mapper* %58, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %60)
  store i32 0, i32* %3, align 4
  br label %76

62:                                               ; preds = %48
  %63 = load %struct.queue_surf*, %struct.queue_surf** %5, align 8
  %64 = getelementptr inbounds %struct.queue_surf, %struct.queue_surf* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @IDirect3DSurface9_UnlockRect(i32 %65)
  %67 = load %struct.priv*, %struct.priv** %6, align 8
  %68 = getelementptr inbounds %struct.priv, %struct.priv* %67, i32 0, i32 1
  %69 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %68, align 8
  %70 = load %struct.priv*, %struct.priv** %6, align 8
  %71 = getelementptr inbounds %struct.priv, %struct.priv* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %69, i64 %72
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 0
  store i32 1, i32* %75, align 4
  store i32 1, i32* %3, align 4
  br label %76

76:                                               ; preds = %62, %57, %43
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local i32 @MPMIN(i32, i32) #1

declare dso_local i32 @IDirect3DDevice9Ex_StretchRect(i32, i32, %struct.TYPE_8__*, i32, %struct.TYPE_8__*, i32) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @MP_ERR(%struct.ra_hwdec_mapper*, i8*, i32) #1

declare dso_local i32 @mp_HRESULT_to_str(i32) #1

declare dso_local i32 @IDirect3DSurface9_LockRect(i32, i32*, i32*, i32) #1

declare dso_local i32 @IDirect3DSurface9_UnlockRect(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
