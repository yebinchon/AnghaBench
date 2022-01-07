; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_cs.c_acquire_compute_pipeline_resources.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_cs.c_acquire_compute_pipeline_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_state = type { i32*, i32* }

@WINED3D_SHADER_TYPE_COMPUTE = common dso_local global i32 0, align 4
@WINED3D_PIPELINE_COMPUTE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_state*)* @acquire_compute_pipeline_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @acquire_compute_pipeline_resources(%struct.wined3d_state* %0) #0 {
  %2 = alloca %struct.wined3d_state*, align 8
  store %struct.wined3d_state* %0, %struct.wined3d_state** %2, align 8
  %3 = load %struct.wined3d_state*, %struct.wined3d_state** %2, align 8
  %4 = load i32, i32* @WINED3D_SHADER_TYPE_COMPUTE, align 4
  %5 = shl i32 1, %4
  %6 = call i32 @acquire_shader_resources(%struct.wined3d_state* %3, i32 %5)
  %7 = load %struct.wined3d_state*, %struct.wined3d_state** %2, align 8
  %8 = getelementptr inbounds %struct.wined3d_state, %struct.wined3d_state* %7, i32 0, i32 1
  %9 = load i32*, i32** %8, align 8
  %10 = load i32, i32* @WINED3D_SHADER_TYPE_COMPUTE, align 4
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds i32, i32* %9, i64 %11
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.wined3d_state*, %struct.wined3d_state** %2, align 8
  %15 = getelementptr inbounds %struct.wined3d_state, %struct.wined3d_state* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = load i64, i64* @WINED3D_PIPELINE_COMPUTE, align 8
  %18 = getelementptr inbounds i32, i32* %16, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @acquire_unordered_access_resources(i32 %13, i32 %19)
  ret void
}

declare dso_local i32 @acquire_shader_resources(%struct.wined3d_state*, i32) #1

declare dso_local i32 @acquire_unordered_access_resources(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
