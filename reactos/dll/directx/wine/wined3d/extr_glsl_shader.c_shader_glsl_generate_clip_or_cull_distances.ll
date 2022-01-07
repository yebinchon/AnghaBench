; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_shader_glsl_generate_clip_or_cull_distances.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_shader_glsl_generate_clip_or_cull_distances.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_string_buffer = type { i32 }
%struct.wined3d_shader_signature_element = type { i64, i32, i32, i64 }

@WINED3D_SV_CLIP_DISTANCE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"Clip\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"Cull\00", align 1
@WINED3DSP_WRITEMASK_0 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"gl_%sDistance[%u] = outputs[%u]%s;\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_string_buffer*, %struct.wined3d_shader_signature_element*, i32)* @shader_glsl_generate_clip_or_cull_distances to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @shader_glsl_generate_clip_or_cull_distances(%struct.wined3d_string_buffer* %0, %struct.wined3d_shader_signature_element* %1, i32 %2) #0 {
  %4 = alloca %struct.wined3d_string_buffer*, align 8
  %5 = alloca %struct.wined3d_shader_signature_element*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca [6 x i8], align 1
  store %struct.wined3d_string_buffer* %0, %struct.wined3d_string_buffer** %4, align 8
  store %struct.wined3d_shader_signature_element* %1, %struct.wined3d_shader_signature_element** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.wined3d_shader_signature_element*, %struct.wined3d_shader_signature_element** %5, align 8
  %12 = getelementptr inbounds %struct.wined3d_shader_signature_element, %struct.wined3d_shader_signature_element* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @WINED3D_SV_CLIP_DISTANCE, align 8
  %15 = icmp eq i64 %13, %14
  %16 = zext i1 %15 to i64
  %17 = select i1 %15, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0)
  store i8* %17, i8** %9, align 8
  %18 = load %struct.wined3d_shader_signature_element*, %struct.wined3d_shader_signature_element** %5, align 8
  %19 = getelementptr inbounds %struct.wined3d_shader_signature_element, %struct.wined3d_shader_signature_element* %18, i32 0, i32 3
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %3
  %23 = load i32, i32* %6, align 4
  %24 = and i32 %23, 15
  %25 = call i32 @wined3d_popcount(i32 %24)
  br label %27

26:                                               ; preds = %3
  br label %27

27:                                               ; preds = %26, %22
  %28 = phi i32 [ %25, %22 ], [ 0, %26 ]
  store i32 %28, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %29

29:                                               ; preds = %58, %27
  %30 = load i32, i32* %7, align 4
  %31 = icmp ult i32 %30, 4
  br i1 %31, label %32, label %61

32:                                               ; preds = %29
  %33 = load %struct.wined3d_shader_signature_element*, %struct.wined3d_shader_signature_element** %5, align 8
  %34 = getelementptr inbounds %struct.wined3d_shader_signature_element, %struct.wined3d_shader_signature_element* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @WINED3DSP_WRITEMASK_0, align 4
  %37 = load i32, i32* %7, align 4
  %38 = shl i32 %36, %37
  %39 = and i32 %35, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %32
  br label %58

42:                                               ; preds = %32
  %43 = load i32, i32* @WINED3DSP_WRITEMASK_0, align 4
  %44 = load i32, i32* %7, align 4
  %45 = shl i32 %43, %44
  %46 = getelementptr inbounds [6 x i8], [6 x i8]* %10, i64 0, i64 0
  %47 = call i32 @shader_glsl_write_mask_to_str(i32 %45, i8* %46)
  %48 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %49 = load i8*, i8** %9, align 8
  %50 = load i32, i32* %8, align 4
  %51 = load %struct.wined3d_shader_signature_element*, %struct.wined3d_shader_signature_element** %5, align 8
  %52 = getelementptr inbounds %struct.wined3d_shader_signature_element, %struct.wined3d_shader_signature_element* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = getelementptr inbounds [6 x i8], [6 x i8]* %10, i64 0, i64 0
  %55 = call i32 @shader_addline(%struct.wined3d_string_buffer* %48, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i8* %49, i32 %50, i32 %53, i8* %54)
  %56 = load i32, i32* %8, align 4
  %57 = add i32 %56, 1
  store i32 %57, i32* %8, align 4
  br label %58

58:                                               ; preds = %42, %41
  %59 = load i32, i32* %7, align 4
  %60 = add i32 %59, 1
  store i32 %60, i32* %7, align 4
  br label %29

61:                                               ; preds = %29
  ret void
}

declare dso_local i32 @wined3d_popcount(i32) #1

declare dso_local i32 @shader_glsl_write_mask_to_str(i32, i8*) #1

declare dso_local i32 @shader_addline(%struct.wined3d_string_buffer*, i8*, i8*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
