; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_wined3d_private.h_use_software_vertex_processing.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_wined3d_private.h_use_software_vertex_processing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_device = type { i32, %struct.TYPE_2__, i32* }
%struct.TYPE_2__ = type { i32 }

@glsl_shader_backend = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@WINED3DCREATE_SOFTWARE_VERTEXPROCESSING = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@WINED3DCREATE_MIXED_VERTEXPROCESSING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wined3d_device*)* @use_software_vertex_processing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @use_software_vertex_processing(%struct.wined3d_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.wined3d_device*, align 8
  store %struct.wined3d_device* %0, %struct.wined3d_device** %3, align 8
  %4 = load %struct.wined3d_device*, %struct.wined3d_device** %3, align 8
  %5 = getelementptr inbounds %struct.wined3d_device, %struct.wined3d_device* %4, i32 0, i32 2
  %6 = load i32*, i32** %5, align 8
  %7 = icmp ne i32* %6, @glsl_shader_backend
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = load i32, i32* @FALSE, align 4
  store i32 %9, i32* %2, align 4
  br label %34

10:                                               ; preds = %1
  %11 = load %struct.wined3d_device*, %struct.wined3d_device** %3, align 8
  %12 = getelementptr inbounds %struct.wined3d_device, %struct.wined3d_device* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @WINED3DCREATE_SOFTWARE_VERTEXPROCESSING, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %10
  %19 = load i32, i32* @TRUE, align 4
  store i32 %19, i32* %2, align 4
  br label %34

20:                                               ; preds = %10
  %21 = load %struct.wined3d_device*, %struct.wined3d_device** %3, align 8
  %22 = getelementptr inbounds %struct.wined3d_device, %struct.wined3d_device* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @WINED3DCREATE_MIXED_VERTEXPROCESSING, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %20
  %29 = load i32, i32* @FALSE, align 4
  store i32 %29, i32* %2, align 4
  br label %34

30:                                               ; preds = %20
  %31 = load %struct.wined3d_device*, %struct.wined3d_device** %3, align 8
  %32 = getelementptr inbounds %struct.wined3d_device, %struct.wined3d_device* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  store i32 %33, i32* %2, align 4
  br label %34

34:                                               ; preds = %30, %28, %18, %8
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
