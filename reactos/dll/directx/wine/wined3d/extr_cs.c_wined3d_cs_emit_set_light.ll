; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_cs.c_wined3d_cs_emit_set_light.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_cs.c_wined3d_cs_emit_set_light.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_cs = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.wined3d_cs*, i32)*, %struct.wined3d_cs_set_light* (%struct.wined3d_cs*, i32, i32)* }
%struct.wined3d_cs_set_light = type { %struct.wined3d_light_info, i32 }
%struct.wined3d_light_info = type { i32 }

@WINED3D_CS_QUEUE_DEFAULT = common dso_local global i32 0, align 4
@WINED3D_CS_OP_SET_LIGHT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wined3d_cs_emit_set_light(%struct.wined3d_cs* %0, %struct.wined3d_light_info* %1) #0 {
  %3 = alloca %struct.wined3d_cs*, align 8
  %4 = alloca %struct.wined3d_light_info*, align 8
  %5 = alloca %struct.wined3d_cs_set_light*, align 8
  store %struct.wined3d_cs* %0, %struct.wined3d_cs** %3, align 8
  store %struct.wined3d_light_info* %1, %struct.wined3d_light_info** %4, align 8
  %6 = load %struct.wined3d_cs*, %struct.wined3d_cs** %3, align 8
  %7 = getelementptr inbounds %struct.wined3d_cs, %struct.wined3d_cs* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 1
  %10 = load %struct.wined3d_cs_set_light* (%struct.wined3d_cs*, i32, i32)*, %struct.wined3d_cs_set_light* (%struct.wined3d_cs*, i32, i32)** %9, align 8
  %11 = load %struct.wined3d_cs*, %struct.wined3d_cs** %3, align 8
  %12 = load i32, i32* @WINED3D_CS_QUEUE_DEFAULT, align 4
  %13 = call %struct.wined3d_cs_set_light* %10(%struct.wined3d_cs* %11, i32 8, i32 %12)
  store %struct.wined3d_cs_set_light* %13, %struct.wined3d_cs_set_light** %5, align 8
  %14 = load i32, i32* @WINED3D_CS_OP_SET_LIGHT, align 4
  %15 = load %struct.wined3d_cs_set_light*, %struct.wined3d_cs_set_light** %5, align 8
  %16 = getelementptr inbounds %struct.wined3d_cs_set_light, %struct.wined3d_cs_set_light* %15, i32 0, i32 1
  store i32 %14, i32* %16, align 4
  %17 = load %struct.wined3d_cs_set_light*, %struct.wined3d_cs_set_light** %5, align 8
  %18 = getelementptr inbounds %struct.wined3d_cs_set_light, %struct.wined3d_cs_set_light* %17, i32 0, i32 0
  %19 = load %struct.wined3d_light_info*, %struct.wined3d_light_info** %4, align 8
  %20 = bitcast %struct.wined3d_light_info* %18 to i8*
  %21 = bitcast %struct.wined3d_light_info* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %20, i8* align 4 %21, i64 4, i1 false)
  %22 = load %struct.wined3d_cs*, %struct.wined3d_cs** %3, align 8
  %23 = getelementptr inbounds %struct.wined3d_cs, %struct.wined3d_cs* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32 (%struct.wined3d_cs*, i32)*, i32 (%struct.wined3d_cs*, i32)** %25, align 8
  %27 = load %struct.wined3d_cs*, %struct.wined3d_cs** %3, align 8
  %28 = load i32, i32* @WINED3D_CS_QUEUE_DEFAULT, align 4
  %29 = call i32 %26(%struct.wined3d_cs* %27, i32 %28)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
