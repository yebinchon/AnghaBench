; ModuleID = '/home/carl/AnghaBench/mpv/video/out/d3d11/extr_hwdec_dxva2dxgi.c_mapper_map.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/d3d11/extr_hwdec_dxva2dxgi.c_mapper_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ra_hwdec_mapper = type { i32*, %struct.TYPE_5__*, %struct.priv* }
%struct.TYPE_5__ = type { i64*, i32, i32 }
%struct.priv = type { i32 }
%struct.queue_surf = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }

@D3DTEXF_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"StretchRect() failed: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ra_hwdec_mapper*)* @mapper_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mapper_map(%struct.ra_hwdec_mapper* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ra_hwdec_mapper*, align 8
  %4 = alloca %struct.priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.queue_surf*, align 8
  %7 = alloca %struct.TYPE_6__, align 4
  %8 = alloca i32*, align 8
  store %struct.ra_hwdec_mapper* %0, %struct.ra_hwdec_mapper** %3, align 8
  %9 = load %struct.ra_hwdec_mapper*, %struct.ra_hwdec_mapper** %3, align 8
  %10 = getelementptr inbounds %struct.ra_hwdec_mapper, %struct.ra_hwdec_mapper* %9, i32 0, i32 2
  %11 = load %struct.priv*, %struct.priv** %10, align 8
  store %struct.priv* %11, %struct.priv** %4, align 8
  %12 = load %struct.ra_hwdec_mapper*, %struct.ra_hwdec_mapper** %3, align 8
  %13 = call %struct.queue_surf* @surf_acquire(%struct.ra_hwdec_mapper* %12)
  store %struct.queue_surf* %13, %struct.queue_surf** %6, align 8
  %14 = load %struct.queue_surf*, %struct.queue_surf** %6, align 8
  %15 = icmp ne %struct.queue_surf* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %71

17:                                               ; preds = %1
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  store i32 0, i32* %18, align 4
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 1
  store i32 0, i32* %19, align 4
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 2
  %21 = load %struct.ra_hwdec_mapper*, %struct.ra_hwdec_mapper** %3, align 8
  %22 = getelementptr inbounds %struct.ra_hwdec_mapper, %struct.ra_hwdec_mapper* %21, i32 0, i32 1
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %20, align 4
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 3
  %27 = load %struct.ra_hwdec_mapper*, %struct.ra_hwdec_mapper** %3, align 8
  %28 = getelementptr inbounds %struct.ra_hwdec_mapper, %struct.ra_hwdec_mapper* %27, i32 0, i32 1
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* %26, align 4
  %32 = load %struct.ra_hwdec_mapper*, %struct.ra_hwdec_mapper** %3, align 8
  %33 = getelementptr inbounds %struct.ra_hwdec_mapper, %struct.ra_hwdec_mapper* %32, i32 0, i32 1
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i64*, i64** %35, align 8
  %37 = getelementptr inbounds i64, i64* %36, i64 3
  %38 = load i64, i64* %37, align 8
  %39 = inttoptr i64 %38 to i32*
  store i32* %39, i32** %8, align 8
  %40 = load %struct.priv*, %struct.priv** %4, align 8
  %41 = getelementptr inbounds %struct.priv, %struct.priv* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32*, i32** %8, align 8
  %44 = load %struct.queue_surf*, %struct.queue_surf** %6, align 8
  %45 = getelementptr inbounds %struct.queue_surf, %struct.queue_surf* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @D3DTEXF_NONE, align 4
  %48 = call i32 @IDirect3DDevice9Ex_StretchRect(i32 %42, i32* %43, %struct.TYPE_6__* %7, i32 %46, %struct.TYPE_6__* %7, i32 %47)
  store i32 %48, i32* %5, align 4
  %49 = load i32, i32* %5, align 4
  %50 = call i64 @FAILED(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %17
  %53 = load %struct.ra_hwdec_mapper*, %struct.ra_hwdec_mapper** %3, align 8
  %54 = load i32, i32* %5, align 4
  %55 = call i32 @mp_HRESULT_to_str(i32 %54)
  %56 = call i32 @MP_ERR(%struct.ra_hwdec_mapper* %53, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %55)
  store i32 -1, i32* %2, align 4
  br label %71

57:                                               ; preds = %17
  %58 = load %struct.ra_hwdec_mapper*, %struct.ra_hwdec_mapper** %3, align 8
  %59 = load %struct.queue_surf*, %struct.queue_surf** %6, align 8
  %60 = call i32 @surf_wait_idle9(%struct.ra_hwdec_mapper* %58, %struct.queue_surf* %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %57
  store i32 -1, i32* %2, align 4
  br label %71

63:                                               ; preds = %57
  %64 = load %struct.queue_surf*, %struct.queue_surf** %6, align 8
  %65 = getelementptr inbounds %struct.queue_surf, %struct.queue_surf* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.ra_hwdec_mapper*, %struct.ra_hwdec_mapper** %3, align 8
  %68 = getelementptr inbounds %struct.ra_hwdec_mapper, %struct.ra_hwdec_mapper* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 0
  store i32 %66, i32* %70, align 4
  store i32 0, i32* %2, align 4
  br label %71

71:                                               ; preds = %63, %62, %52, %16
  %72 = load i32, i32* %2, align 4
  ret i32 %72
}

declare dso_local %struct.queue_surf* @surf_acquire(%struct.ra_hwdec_mapper*) #1

declare dso_local i32 @IDirect3DDevice9Ex_StretchRect(i32, i32*, %struct.TYPE_6__*, i32, %struct.TYPE_6__*, i32) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @MP_ERR(%struct.ra_hwdec_mapper*, i8*, i32) #1

declare dso_local i32 @mp_HRESULT_to_str(i32) #1

declare dso_local i32 @surf_wait_idle9(%struct.ra_hwdec_mapper*, %struct.queue_surf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
