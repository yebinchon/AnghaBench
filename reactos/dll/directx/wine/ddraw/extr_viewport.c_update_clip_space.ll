; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/ddraw/extr_viewport.c_update_clip_space.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/ddraw/extr_viewport.c_update_clip_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.d3d_device = type { %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { float, float, float, float, float, float, float, float, float, float, i32, i32, i32, i32, i32, i32 }
%struct.wined3d_vec3 = type { i32, i32, i32 }
%struct.wined3d_matrix = type { i32 }

@WINED3D_TS_PROJECTION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.d3d_device*, %struct.wined3d_vec3*, %struct.wined3d_vec3*)* @update_clip_space to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_clip_space(%struct.d3d_device* %0, %struct.wined3d_vec3* %1, %struct.wined3d_vec3* %2) #0 {
  %4 = alloca %struct.d3d_device*, align 8
  %5 = alloca %struct.wined3d_vec3*, align 8
  %6 = alloca %struct.wined3d_vec3*, align 8
  %7 = alloca %struct.TYPE_4__, align 4
  %8 = alloca %struct.TYPE_4__, align 4
  store %struct.d3d_device* %0, %struct.d3d_device** %4, align 8
  store %struct.wined3d_vec3* %1, %struct.wined3d_vec3** %5, align 8
  store %struct.wined3d_vec3* %2, %struct.wined3d_vec3** %6, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %10 = load %struct.wined3d_vec3*, %struct.wined3d_vec3** %5, align 8
  %11 = getelementptr inbounds %struct.wined3d_vec3, %struct.wined3d_vec3* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = sitofp i32 %12 to float
  store float %13, float* %9, align 4
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 1
  store float 0.000000e+00, float* %14, align 4
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 2
  store float 0.000000e+00, float* %15, align 4
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 3
  store float 0.000000e+00, float* %16, align 4
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 4
  store float 0.000000e+00, float* %17, align 4
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 5
  %19 = load %struct.wined3d_vec3*, %struct.wined3d_vec3** %5, align 8
  %20 = getelementptr inbounds %struct.wined3d_vec3, %struct.wined3d_vec3* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = sitofp i32 %21 to float
  store float %22, float* %18, align 4
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 6
  store float 0.000000e+00, float* %23, align 4
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 7
  store float 0.000000e+00, float* %24, align 4
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 8
  store float 0.000000e+00, float* %25, align 4
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 9
  store float 0.000000e+00, float* %26, align 4
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 10
  %28 = load %struct.wined3d_vec3*, %struct.wined3d_vec3** %5, align 8
  %29 = getelementptr inbounds %struct.wined3d_vec3, %struct.wined3d_vec3* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %27, align 4
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 11
  store i32 0, i32* %31, align 4
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 12
  %33 = load %struct.wined3d_vec3*, %struct.wined3d_vec3** %6, align 8
  %34 = getelementptr inbounds %struct.wined3d_vec3, %struct.wined3d_vec3* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %32, align 4
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 13
  %37 = load %struct.wined3d_vec3*, %struct.wined3d_vec3** %6, align 8
  %38 = getelementptr inbounds %struct.wined3d_vec3, %struct.wined3d_vec3* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %36, align 4
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 14
  %41 = load %struct.wined3d_vec3*, %struct.wined3d_vec3** %6, align 8
  %42 = getelementptr inbounds %struct.wined3d_vec3, %struct.wined3d_vec3* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %40, align 4
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 15
  store i32 1, i32* %44, align 4
  %45 = load %struct.d3d_device*, %struct.d3d_device** %4, align 8
  %46 = getelementptr inbounds %struct.d3d_device, %struct.d3d_device* %45, i32 0, i32 2
  %47 = call i32 @multiply_matrix(%struct.TYPE_4__* %8, %struct.TYPE_4__* %7, i32* %46)
  %48 = load %struct.d3d_device*, %struct.d3d_device** %4, align 8
  %49 = getelementptr inbounds %struct.d3d_device, %struct.d3d_device* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @WINED3D_TS_PROJECTION, align 4
  %52 = bitcast %struct.TYPE_4__* %8 to %struct.wined3d_matrix*
  %53 = call i32 @wined3d_device_set_transform(i32 %50, i32 %51, %struct.wined3d_matrix* %52)
  %54 = load %struct.d3d_device*, %struct.d3d_device** %4, align 8
  %55 = getelementptr inbounds %struct.d3d_device, %struct.d3d_device* %54, i32 0, i32 0
  %56 = bitcast %struct.TYPE_4__* %55 to i8*
  %57 = bitcast %struct.TYPE_4__* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %56, i8* align 4 %57, i64 64, i1 false)
  ret void
}

declare dso_local i32 @multiply_matrix(%struct.TYPE_4__*, %struct.TYPE_4__*, i32*) #1

declare dso_local i32 @wined3d_device_set_transform(i32, i32, %struct.wined3d_matrix*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
