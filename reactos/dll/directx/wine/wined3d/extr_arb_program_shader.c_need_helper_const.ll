; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_arb_program_shader.c_need_helper_const.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_arb_program_shader.c_need_helper_const.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arb_vshader_private = type { i32 }
%struct.wined3d_shader_reg_maps = type { i64, i64, i64 }
%struct.wined3d_gl_info = type { i32, i32* }

@TRUE = common dso_local global i32 0, align 4
@NV_VERTEX_PROGRAM = common dso_local global i64 0, align 8
@WINED3D_QUIRK_ARB_VS_OFFSET_LIMIT = common dso_local global i32 0, align 4
@WINED3D_QUIRK_SET_TEXCOORD_W = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.arb_vshader_private*, %struct.wined3d_shader_reg_maps*, %struct.wined3d_gl_info*)* @need_helper_const to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @need_helper_const(%struct.arb_vshader_private* %0, %struct.wined3d_shader_reg_maps* %1, %struct.wined3d_gl_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.arb_vshader_private*, align 8
  %6 = alloca %struct.wined3d_shader_reg_maps*, align 8
  %7 = alloca %struct.wined3d_gl_info*, align 8
  store %struct.arb_vshader_private* %0, %struct.arb_vshader_private** %5, align 8
  store %struct.wined3d_shader_reg_maps* %1, %struct.wined3d_shader_reg_maps** %6, align 8
  store %struct.wined3d_gl_info* %2, %struct.wined3d_gl_info** %7, align 8
  %8 = load %struct.arb_vshader_private*, %struct.arb_vshader_private** %5, align 8
  %9 = load %struct.wined3d_shader_reg_maps*, %struct.wined3d_shader_reg_maps** %6, align 8
  %10 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %7, align 8
  %11 = call i64 @need_rel_addr_const(%struct.arb_vshader_private* %8, %struct.wined3d_shader_reg_maps* %9, %struct.wined3d_gl_info* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %3
  %14 = load i32, i32* @TRUE, align 4
  store i32 %14, i32* %4, align 4
  br label %72

15:                                               ; preds = %3
  %16 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %7, align 8
  %17 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = load i64, i64* @NV_VERTEX_PROGRAM, align 8
  %20 = getelementptr inbounds i32, i32* %18, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %15
  %24 = load i32, i32* @TRUE, align 4
  store i32 %24, i32* %4, align 4
  br label %72

25:                                               ; preds = %15
  %26 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %7, align 8
  %27 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @WINED3D_QUIRK_ARB_VS_OFFSET_LIMIT, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %25
  %33 = load i32, i32* @TRUE, align 4
  store i32 %33, i32* %4, align 4
  br label %72

34:                                               ; preds = %25
  %35 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %7, align 8
  %36 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @WINED3D_QUIRK_SET_TEXCOORD_W, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %34
  %42 = load i32, i32* @TRUE, align 4
  store i32 %42, i32* %4, align 4
  br label %72

43:                                               ; preds = %34
  %44 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %7, align 8
  %45 = call i32 @use_nv_clip(%struct.wined3d_gl_info* %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %49, label %47

47:                                               ; preds = %43
  %48 = load i32, i32* @TRUE, align 4
  store i32 %48, i32* %4, align 4
  br label %72

49:                                               ; preds = %43
  %50 = load %struct.wined3d_shader_reg_maps*, %struct.wined3d_shader_reg_maps** %6, align 8
  %51 = getelementptr inbounds %struct.wined3d_shader_reg_maps, %struct.wined3d_shader_reg_maps* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %49
  %55 = load i32, i32* @TRUE, align 4
  store i32 %55, i32* %4, align 4
  br label %72

56:                                               ; preds = %49
  %57 = load %struct.wined3d_shader_reg_maps*, %struct.wined3d_shader_reg_maps** %6, align 8
  %58 = getelementptr inbounds %struct.wined3d_shader_reg_maps, %struct.wined3d_shader_reg_maps* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %56
  %62 = load i32, i32* @TRUE, align 4
  store i32 %62, i32* %4, align 4
  br label %72

63:                                               ; preds = %56
  %64 = load %struct.wined3d_shader_reg_maps*, %struct.wined3d_shader_reg_maps** %6, align 8
  %65 = getelementptr inbounds %struct.wined3d_shader_reg_maps, %struct.wined3d_shader_reg_maps* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %63
  %69 = load i32, i32* @TRUE, align 4
  store i32 %69, i32* %4, align 4
  br label %72

70:                                               ; preds = %63
  %71 = load i32, i32* @FALSE, align 4
  store i32 %71, i32* %4, align 4
  br label %72

72:                                               ; preds = %70, %68, %61, %54, %47, %41, %32, %23, %13
  %73 = load i32, i32* %4, align 4
  ret i32 %73
}

declare dso_local i64 @need_rel_addr_const(%struct.arb_vshader_private*, %struct.wined3d_shader_reg_maps*, %struct.wined3d_gl_info*) #1

declare dso_local i32 @use_nv_clip(%struct.wined3d_gl_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
