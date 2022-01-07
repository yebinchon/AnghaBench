; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_cs.c_wined3d_cs_exec_set_shader.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_cs.c_wined3d_cs_exec_set_shader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_cs = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }
%struct.wined3d_cs_set_shader = type { i64, i32 }

@WINED3D_SHADER_TYPE_COMPUTE = common dso_local global i64 0, align 8
@STATE_GRAPHICS_SHADER_RESOURCE_BINDING = common dso_local global i32 0, align 4
@STATE_COMPUTE_SHADER_RESOURCE_BINDING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_cs*, i8*)* @wined3d_cs_exec_set_shader to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wined3d_cs_exec_set_shader(%struct.wined3d_cs* %0, i8* %1) #0 {
  %3 = alloca %struct.wined3d_cs*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.wined3d_cs_set_shader*, align 8
  store %struct.wined3d_cs* %0, %struct.wined3d_cs** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = bitcast i8* %6 to %struct.wined3d_cs_set_shader*
  store %struct.wined3d_cs_set_shader* %7, %struct.wined3d_cs_set_shader** %5, align 8
  %8 = load %struct.wined3d_cs_set_shader*, %struct.wined3d_cs_set_shader** %5, align 8
  %9 = getelementptr inbounds %struct.wined3d_cs_set_shader, %struct.wined3d_cs_set_shader* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = load %struct.wined3d_cs*, %struct.wined3d_cs** %3, align 8
  %12 = getelementptr inbounds %struct.wined3d_cs, %struct.wined3d_cs* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = load %struct.wined3d_cs_set_shader*, %struct.wined3d_cs_set_shader** %5, align 8
  %16 = getelementptr inbounds %struct.wined3d_cs_set_shader, %struct.wined3d_cs_set_shader* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds i32, i32* %14, i64 %17
  store i32 %10, i32* %18, align 4
  %19 = load %struct.wined3d_cs*, %struct.wined3d_cs** %3, align 8
  %20 = getelementptr inbounds %struct.wined3d_cs, %struct.wined3d_cs* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.wined3d_cs_set_shader*, %struct.wined3d_cs_set_shader** %5, align 8
  %23 = getelementptr inbounds %struct.wined3d_cs_set_shader, %struct.wined3d_cs_set_shader* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @STATE_SHADER(i64 %24)
  %26 = call i32 @device_invalidate_state(i32 %21, i32 %25)
  %27 = load %struct.wined3d_cs_set_shader*, %struct.wined3d_cs_set_shader** %5, align 8
  %28 = getelementptr inbounds %struct.wined3d_cs_set_shader, %struct.wined3d_cs_set_shader* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @WINED3D_SHADER_TYPE_COMPUTE, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %38

32:                                               ; preds = %2
  %33 = load %struct.wined3d_cs*, %struct.wined3d_cs** %3, align 8
  %34 = getelementptr inbounds %struct.wined3d_cs, %struct.wined3d_cs* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @STATE_GRAPHICS_SHADER_RESOURCE_BINDING, align 4
  %37 = call i32 @device_invalidate_state(i32 %35, i32 %36)
  br label %44

38:                                               ; preds = %2
  %39 = load %struct.wined3d_cs*, %struct.wined3d_cs** %3, align 8
  %40 = getelementptr inbounds %struct.wined3d_cs, %struct.wined3d_cs* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @STATE_COMPUTE_SHADER_RESOURCE_BINDING, align 4
  %43 = call i32 @device_invalidate_state(i32 %41, i32 %42)
  br label %44

44:                                               ; preds = %38, %32
  ret void
}

declare dso_local i32 @device_invalidate_state(i32, i32) #1

declare dso_local i32 @STATE_SHADER(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
