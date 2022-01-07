; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_shader.c_shader_calculate_clip_or_cull_distance_mask.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_shader.c_shader_calculate_clip_or_cull_distance_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_shader_signature_element = type { i32, i32 }

@MAX_CLIP_DISTANCES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Invalid clip/cull distance index %u.\0A\00", align 1
@WINED3DERR_INVALIDCALL = common dso_local global i32 0, align 4
@WINED3DSP_WRITEMASK_ALL = common dso_local global i32 0, align 4
@WINED3D_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wined3d_shader_signature_element*, i32*)* @shader_calculate_clip_or_cull_distance_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @shader_calculate_clip_or_cull_distance_mask(%struct.wined3d_shader_signature_element* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wined3d_shader_signature_element*, align 8
  %5 = alloca i32*, align 8
  store %struct.wined3d_shader_signature_element* %0, %struct.wined3d_shader_signature_element** %4, align 8
  store i32* %1, i32** %5, align 8
  %6 = load %struct.wined3d_shader_signature_element*, %struct.wined3d_shader_signature_element** %4, align 8
  %7 = getelementptr inbounds %struct.wined3d_shader_signature_element, %struct.wined3d_shader_signature_element* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @MAX_CLIP_DISTANCES, align 4
  %10 = sdiv i32 %9, 4
  %11 = icmp sge i32 %8, %10
  br i1 %11, label %12, label %19

12:                                               ; preds = %2
  %13 = load i32*, i32** %5, align 8
  store i32 0, i32* %13, align 4
  %14 = load %struct.wined3d_shader_signature_element*, %struct.wined3d_shader_signature_element** %4, align 8
  %15 = getelementptr inbounds %struct.wined3d_shader_signature_element, %struct.wined3d_shader_signature_element* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @WARN(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load i32, i32* @WINED3DERR_INVALIDCALL, align 4
  store i32 %18, i32* %3, align 4
  br label %32

19:                                               ; preds = %2
  %20 = load %struct.wined3d_shader_signature_element*, %struct.wined3d_shader_signature_element** %4, align 8
  %21 = getelementptr inbounds %struct.wined3d_shader_signature_element, %struct.wined3d_shader_signature_element* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @WINED3DSP_WRITEMASK_ALL, align 4
  %24 = and i32 %22, %23
  %25 = load %struct.wined3d_shader_signature_element*, %struct.wined3d_shader_signature_element** %4, align 8
  %26 = getelementptr inbounds %struct.wined3d_shader_signature_element, %struct.wined3d_shader_signature_element* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = mul nsw i32 4, %27
  %29 = shl i32 %24, %28
  %30 = load i32*, i32** %5, align 8
  store i32 %29, i32* %30, align 4
  %31 = load i32, i32* @WINED3D_OK, align 4
  store i32 %31, i32* %3, align 4
  br label %32

32:                                               ; preds = %19, %12
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local i32 @WARN(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
