; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_cs.c_wined3d_cs_emit_set_color_key.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_cs.c_wined3d_cs_emit_set_color_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_cs = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.wined3d_cs*, i32)*, %struct.wined3d_cs_set_color_key* (%struct.wined3d_cs*, i32, i32)* }
%struct.wined3d_cs_set_color_key = type { i32, %struct.wined3d_color_key, i32, %struct.wined3d_texture*, i32 }
%struct.wined3d_color_key = type { i32 }
%struct.wined3d_texture = type { i32 }

@WINED3D_CS_QUEUE_DEFAULT = common dso_local global i32 0, align 4
@WINED3D_CS_OP_SET_COLOR_KEY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wined3d_cs_emit_set_color_key(%struct.wined3d_cs* %0, %struct.wined3d_texture* %1, i32 %2, %struct.wined3d_color_key* %3) #0 {
  %5 = alloca %struct.wined3d_cs*, align 8
  %6 = alloca %struct.wined3d_texture*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.wined3d_color_key*, align 8
  %9 = alloca %struct.wined3d_cs_set_color_key*, align 8
  store %struct.wined3d_cs* %0, %struct.wined3d_cs** %5, align 8
  store %struct.wined3d_texture* %1, %struct.wined3d_texture** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.wined3d_color_key* %3, %struct.wined3d_color_key** %8, align 8
  %10 = load %struct.wined3d_cs*, %struct.wined3d_cs** %5, align 8
  %11 = getelementptr inbounds %struct.wined3d_cs, %struct.wined3d_cs* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = load %struct.wined3d_cs_set_color_key* (%struct.wined3d_cs*, i32, i32)*, %struct.wined3d_cs_set_color_key* (%struct.wined3d_cs*, i32, i32)** %13, align 8
  %15 = load %struct.wined3d_cs*, %struct.wined3d_cs** %5, align 8
  %16 = load i32, i32* @WINED3D_CS_QUEUE_DEFAULT, align 4
  %17 = call %struct.wined3d_cs_set_color_key* %14(%struct.wined3d_cs* %15, i32 32, i32 %16)
  store %struct.wined3d_cs_set_color_key* %17, %struct.wined3d_cs_set_color_key** %9, align 8
  %18 = load i32, i32* @WINED3D_CS_OP_SET_COLOR_KEY, align 4
  %19 = load %struct.wined3d_cs_set_color_key*, %struct.wined3d_cs_set_color_key** %9, align 8
  %20 = getelementptr inbounds %struct.wined3d_cs_set_color_key, %struct.wined3d_cs_set_color_key* %19, i32 0, i32 4
  store i32 %18, i32* %20, align 8
  %21 = load %struct.wined3d_texture*, %struct.wined3d_texture** %6, align 8
  %22 = load %struct.wined3d_cs_set_color_key*, %struct.wined3d_cs_set_color_key** %9, align 8
  %23 = getelementptr inbounds %struct.wined3d_cs_set_color_key, %struct.wined3d_cs_set_color_key* %22, i32 0, i32 3
  store %struct.wined3d_texture* %21, %struct.wined3d_texture** %23, align 8
  %24 = load i32, i32* %7, align 4
  %25 = load %struct.wined3d_cs_set_color_key*, %struct.wined3d_cs_set_color_key** %9, align 8
  %26 = getelementptr inbounds %struct.wined3d_cs_set_color_key, %struct.wined3d_cs_set_color_key* %25, i32 0, i32 2
  store i32 %24, i32* %26, align 8
  %27 = load %struct.wined3d_color_key*, %struct.wined3d_color_key** %8, align 8
  %28 = icmp ne %struct.wined3d_color_key* %27, null
  br i1 %28, label %29, label %37

29:                                               ; preds = %4
  %30 = load %struct.wined3d_cs_set_color_key*, %struct.wined3d_cs_set_color_key** %9, align 8
  %31 = getelementptr inbounds %struct.wined3d_cs_set_color_key, %struct.wined3d_cs_set_color_key* %30, i32 0, i32 1
  %32 = load %struct.wined3d_color_key*, %struct.wined3d_color_key** %8, align 8
  %33 = bitcast %struct.wined3d_color_key* %31 to i8*
  %34 = bitcast %struct.wined3d_color_key* %32 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %33, i8* align 4 %34, i64 4, i1 false)
  %35 = load %struct.wined3d_cs_set_color_key*, %struct.wined3d_cs_set_color_key** %9, align 8
  %36 = getelementptr inbounds %struct.wined3d_cs_set_color_key, %struct.wined3d_cs_set_color_key* %35, i32 0, i32 0
  store i32 1, i32* %36, align 8
  br label %40

37:                                               ; preds = %4
  %38 = load %struct.wined3d_cs_set_color_key*, %struct.wined3d_cs_set_color_key** %9, align 8
  %39 = getelementptr inbounds %struct.wined3d_cs_set_color_key, %struct.wined3d_cs_set_color_key* %38, i32 0, i32 0
  store i32 0, i32* %39, align 8
  br label %40

40:                                               ; preds = %37, %29
  %41 = load %struct.wined3d_cs*, %struct.wined3d_cs** %5, align 8
  %42 = getelementptr inbounds %struct.wined3d_cs, %struct.wined3d_cs* %41, i32 0, i32 0
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32 (%struct.wined3d_cs*, i32)*, i32 (%struct.wined3d_cs*, i32)** %44, align 8
  %46 = load %struct.wined3d_cs*, %struct.wined3d_cs** %5, align 8
  %47 = load i32, i32* @WINED3D_CS_QUEUE_DEFAULT, align 4
  %48 = call i32 %45(%struct.wined3d_cs* %46, i32 %47)
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
