; ModuleID = '/home/carl/AnghaBench/mpv/video/out/d3d11/extr_hwdec_dxva2dxgi.c_mapper_init.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/d3d11/extr_hwdec_dxva2dxgi.c_mapper_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ra_hwdec_mapper = type { %struct.TYPE_3__, %struct.TYPE_3__, %struct.priv*, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i64, i32 }
%struct.priv = type { i32, i32, i32 }
%struct.TYPE_4__ = type { %struct.priv_owner* }
%struct.priv_owner = type { i32, i32 }

@IMGFMT_RGB0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ra_hwdec_mapper*)* @mapper_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mapper_init(%struct.ra_hwdec_mapper* %0) #0 {
  %2 = alloca %struct.ra_hwdec_mapper*, align 8
  %3 = alloca %struct.priv_owner*, align 8
  %4 = alloca %struct.priv*, align 8
  store %struct.ra_hwdec_mapper* %0, %struct.ra_hwdec_mapper** %2, align 8
  %5 = load %struct.ra_hwdec_mapper*, %struct.ra_hwdec_mapper** %2, align 8
  %6 = getelementptr inbounds %struct.ra_hwdec_mapper, %struct.ra_hwdec_mapper* %5, i32 0, i32 3
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load %struct.priv_owner*, %struct.priv_owner** %8, align 8
  store %struct.priv_owner* %9, %struct.priv_owner** %3, align 8
  %10 = load %struct.ra_hwdec_mapper*, %struct.ra_hwdec_mapper** %2, align 8
  %11 = getelementptr inbounds %struct.ra_hwdec_mapper, %struct.ra_hwdec_mapper* %10, i32 0, i32 2
  %12 = load %struct.priv*, %struct.priv** %11, align 8
  store %struct.priv* %12, %struct.priv** %4, align 8
  %13 = load %struct.priv_owner*, %struct.priv_owner** %3, align 8
  %14 = getelementptr inbounds %struct.priv_owner, %struct.priv_owner* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @ID3D11Device_AddRef(i32 %15)
  %17 = load %struct.priv_owner*, %struct.priv_owner** %3, align 8
  %18 = getelementptr inbounds %struct.priv_owner, %struct.priv_owner* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.priv*, %struct.priv** %4, align 8
  %21 = getelementptr inbounds %struct.priv, %struct.priv* %20, i32 0, i32 2
  store i32 %19, i32* %21, align 4
  %22 = load %struct.priv_owner*, %struct.priv_owner** %3, align 8
  %23 = getelementptr inbounds %struct.priv_owner, %struct.priv_owner* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @IDirect3DDevice9Ex_AddRef(i32 %24)
  %26 = load %struct.priv_owner*, %struct.priv_owner** %3, align 8
  %27 = getelementptr inbounds %struct.priv_owner, %struct.priv_owner* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.priv*, %struct.priv** %4, align 8
  %30 = getelementptr inbounds %struct.priv, %struct.priv* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  %31 = load %struct.priv_owner*, %struct.priv_owner** %3, align 8
  %32 = getelementptr inbounds %struct.priv_owner, %struct.priv_owner* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.priv*, %struct.priv** %4, align 8
  %35 = getelementptr inbounds %struct.priv, %struct.priv* %34, i32 0, i32 0
  %36 = call i32 @ID3D11Device_GetImmediateContext(i32 %33, i32* %35)
  %37 = load %struct.ra_hwdec_mapper*, %struct.ra_hwdec_mapper** %2, align 8
  %38 = getelementptr inbounds %struct.ra_hwdec_mapper, %struct.ra_hwdec_mapper* %37, i32 0, i32 0
  %39 = load %struct.ra_hwdec_mapper*, %struct.ra_hwdec_mapper** %2, align 8
  %40 = getelementptr inbounds %struct.ra_hwdec_mapper, %struct.ra_hwdec_mapper* %39, i32 0, i32 1
  %41 = bitcast %struct.TYPE_3__* %38 to i8*
  %42 = bitcast %struct.TYPE_3__* %40 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %41, i8* align 8 %42, i64 16, i1 false)
  %43 = load i32, i32* @IMGFMT_RGB0, align 4
  %44 = load %struct.ra_hwdec_mapper*, %struct.ra_hwdec_mapper** %2, align 8
  %45 = getelementptr inbounds %struct.ra_hwdec_mapper, %struct.ra_hwdec_mapper* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 1
  store i32 %43, i32* %46, align 8
  %47 = load %struct.ra_hwdec_mapper*, %struct.ra_hwdec_mapper** %2, align 8
  %48 = getelementptr inbounds %struct.ra_hwdec_mapper, %struct.ra_hwdec_mapper* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  store i64 0, i64* %49, align 8
  ret i32 0
}

declare dso_local i32 @ID3D11Device_AddRef(i32) #1

declare dso_local i32 @IDirect3DDevice9Ex_AddRef(i32) #1

declare dso_local i32 @ID3D11Device_GetImmediateContext(i32, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
