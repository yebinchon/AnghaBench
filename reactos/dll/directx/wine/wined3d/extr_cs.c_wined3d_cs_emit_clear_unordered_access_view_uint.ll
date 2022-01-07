; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_cs.c_wined3d_cs_emit_clear_unordered_access_view_uint.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_cs.c_wined3d_cs_emit_clear_unordered_access_view_uint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_cs = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.wined3d_cs*, i32)*, %struct.wined3d_cs_clear_unordered_access_view* (%struct.wined3d_cs*, i32, i32)* }
%struct.wined3d_cs_clear_unordered_access_view = type { %struct.wined3d_uvec4, %struct.wined3d_unordered_access_view*, i32 }
%struct.wined3d_uvec4 = type { i32 }
%struct.wined3d_unordered_access_view = type { i32 }

@WINED3D_CS_QUEUE_DEFAULT = common dso_local global i32 0, align 4
@WINED3D_CS_OP_CLEAR_UNORDERED_ACCESS_VIEW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wined3d_cs_emit_clear_unordered_access_view_uint(%struct.wined3d_cs* %0, %struct.wined3d_unordered_access_view* %1, %struct.wined3d_uvec4* %2) #0 {
  %4 = alloca %struct.wined3d_cs*, align 8
  %5 = alloca %struct.wined3d_unordered_access_view*, align 8
  %6 = alloca %struct.wined3d_uvec4*, align 8
  %7 = alloca %struct.wined3d_cs_clear_unordered_access_view*, align 8
  store %struct.wined3d_cs* %0, %struct.wined3d_cs** %4, align 8
  store %struct.wined3d_unordered_access_view* %1, %struct.wined3d_unordered_access_view** %5, align 8
  store %struct.wined3d_uvec4* %2, %struct.wined3d_uvec4** %6, align 8
  %8 = load %struct.wined3d_cs*, %struct.wined3d_cs** %4, align 8
  %9 = getelementptr inbounds %struct.wined3d_cs, %struct.wined3d_cs* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  %12 = load %struct.wined3d_cs_clear_unordered_access_view* (%struct.wined3d_cs*, i32, i32)*, %struct.wined3d_cs_clear_unordered_access_view* (%struct.wined3d_cs*, i32, i32)** %11, align 8
  %13 = load %struct.wined3d_cs*, %struct.wined3d_cs** %4, align 8
  %14 = load i32, i32* @WINED3D_CS_QUEUE_DEFAULT, align 4
  %15 = call %struct.wined3d_cs_clear_unordered_access_view* %12(%struct.wined3d_cs* %13, i32 24, i32 %14)
  store %struct.wined3d_cs_clear_unordered_access_view* %15, %struct.wined3d_cs_clear_unordered_access_view** %7, align 8
  %16 = load i32, i32* @WINED3D_CS_OP_CLEAR_UNORDERED_ACCESS_VIEW, align 4
  %17 = load %struct.wined3d_cs_clear_unordered_access_view*, %struct.wined3d_cs_clear_unordered_access_view** %7, align 8
  %18 = getelementptr inbounds %struct.wined3d_cs_clear_unordered_access_view, %struct.wined3d_cs_clear_unordered_access_view* %17, i32 0, i32 2
  store i32 %16, i32* %18, align 8
  %19 = load %struct.wined3d_unordered_access_view*, %struct.wined3d_unordered_access_view** %5, align 8
  %20 = load %struct.wined3d_cs_clear_unordered_access_view*, %struct.wined3d_cs_clear_unordered_access_view** %7, align 8
  %21 = getelementptr inbounds %struct.wined3d_cs_clear_unordered_access_view, %struct.wined3d_cs_clear_unordered_access_view* %20, i32 0, i32 1
  store %struct.wined3d_unordered_access_view* %19, %struct.wined3d_unordered_access_view** %21, align 8
  %22 = load %struct.wined3d_cs_clear_unordered_access_view*, %struct.wined3d_cs_clear_unordered_access_view** %7, align 8
  %23 = getelementptr inbounds %struct.wined3d_cs_clear_unordered_access_view, %struct.wined3d_cs_clear_unordered_access_view* %22, i32 0, i32 0
  %24 = load %struct.wined3d_uvec4*, %struct.wined3d_uvec4** %6, align 8
  %25 = bitcast %struct.wined3d_uvec4* %23 to i8*
  %26 = bitcast %struct.wined3d_uvec4* %24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %25, i8* align 4 %26, i64 4, i1 false)
  %27 = load %struct.wined3d_unordered_access_view*, %struct.wined3d_unordered_access_view** %5, align 8
  %28 = getelementptr inbounds %struct.wined3d_unordered_access_view, %struct.wined3d_unordered_access_view* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @wined3d_resource_acquire(i32 %29)
  %31 = load %struct.wined3d_cs*, %struct.wined3d_cs** %4, align 8
  %32 = getelementptr inbounds %struct.wined3d_cs, %struct.wined3d_cs* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32 (%struct.wined3d_cs*, i32)*, i32 (%struct.wined3d_cs*, i32)** %34, align 8
  %36 = load %struct.wined3d_cs*, %struct.wined3d_cs** %4, align 8
  %37 = load i32, i32* @WINED3D_CS_QUEUE_DEFAULT, align 4
  %38 = call i32 %35(%struct.wined3d_cs* %36, i32 %37)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @wined3d_resource_acquire(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
