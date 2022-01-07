; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_shader_glsl_ld_uav.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_shader_glsl_ld_uav.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, i32 }
%struct.wined3d_shader_instruction = type { %struct.TYPE_10__*, %struct.TYPE_11__*, i32* }
%struct.TYPE_10__ = type { i32, %struct.wined3d_shader_reg_maps* }
%struct.wined3d_shader_reg_maps = type { %struct.TYPE_12__*, %struct.wined3d_shader_version }
%struct.wined3d_shader_version = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.glsl_src_param = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"Invalid UAV index %u.\0A\00", align 1
@resource_type_info = common dso_local global %struct.TYPE_12__* null, align 8
@.str.1 = private unnamed_addr constant [31 x i8] c"Unexpected resource type %#x.\0A\00", align 1
@WINED3D_SHADER_RESOURCE_TEXTURE_2D = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"imageLoad(%s_image%u, %s)%s);\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_shader_instruction*)* @shader_glsl_ld_uav to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @shader_glsl_ld_uav(%struct.wined3d_shader_instruction* %0) #0 {
  %2 = alloca %struct.wined3d_shader_instruction*, align 8
  %3 = alloca %struct.wined3d_shader_reg_maps*, align 8
  %4 = alloca %struct.wined3d_shader_version*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.glsl_src_param, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [6 x i8], align 1
  store %struct.wined3d_shader_instruction* %0, %struct.wined3d_shader_instruction** %2, align 8
  %12 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %13 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %12, i32 0, i32 0
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 1
  %16 = load %struct.wined3d_shader_reg_maps*, %struct.wined3d_shader_reg_maps** %15, align 8
  store %struct.wined3d_shader_reg_maps* %16, %struct.wined3d_shader_reg_maps** %3, align 8
  %17 = load %struct.wined3d_shader_reg_maps*, %struct.wined3d_shader_reg_maps** %3, align 8
  %18 = getelementptr inbounds %struct.wined3d_shader_reg_maps, %struct.wined3d_shader_reg_maps* %17, i32 0, i32 1
  store %struct.wined3d_shader_version* %18, %struct.wined3d_shader_version** %4, align 8
  %19 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %20 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %19, i32 0, i32 1
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i64 1
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i64 0
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  %30 = load %struct.wined3d_shader_reg_maps*, %struct.wined3d_shader_reg_maps** %3, align 8
  %31 = getelementptr inbounds %struct.wined3d_shader_reg_maps, %struct.wined3d_shader_reg_maps* %30, i32 0, i32 0
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %31, align 8
  %33 = call i32 @ARRAY_SIZE(%struct.TYPE_12__* %32)
  %34 = icmp uge i32 %29, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %1
  %36 = load i32, i32* %10, align 4
  %37 = call i32 @ERR(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %36)
  br label %113

38:                                               ; preds = %1
  %39 = load %struct.wined3d_shader_reg_maps*, %struct.wined3d_shader_reg_maps** %3, align 8
  %40 = getelementptr inbounds %struct.wined3d_shader_reg_maps, %struct.wined3d_shader_reg_maps* %39, i32 0, i32 0
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %40, align 8
  %42 = load i32, i32* %10, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %5, align 4
  %47 = load i32, i32* %5, align 4
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** @resource_type_info, align 8
  %49 = call i32 @ARRAY_SIZE(%struct.TYPE_12__* %48)
  %50 = icmp uge i32 %47, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %38
  %52 = load i32, i32* %5, align 4
  %53 = call i32 @ERR(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %52)
  %54 = load i32, i32* @WINED3D_SHADER_RESOURCE_TEXTURE_2D, align 4
  store i32 %54, i32* %5, align 4
  br label %55

55:                                               ; preds = %51, %38
  %56 = load %struct.wined3d_shader_reg_maps*, %struct.wined3d_shader_reg_maps** %3, align 8
  %57 = getelementptr inbounds %struct.wined3d_shader_reg_maps, %struct.wined3d_shader_reg_maps* %56, i32 0, i32 0
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %57, align 8
  %59 = load i32, i32* %10, align 4
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* %7, align 4
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** @resource_type_info, align 8
  %65 = load i32, i32* %5, align 4
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = shl i32 1, %69
  %71 = sub i32 %70, 1
  store i32 %71, i32* %8, align 4
  %72 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %73 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %72, i32 0, i32 0
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %78 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %79 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %78, i32 0, i32 2
  %80 = load i32*, i32** %79, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 0
  %82 = load i32, i32* %7, align 4
  %83 = call i32 @shader_glsl_append_dst_ext(i32 %76, %struct.wined3d_shader_instruction* %77, i32* %81, i32 %82)
  store i32 %83, i32* %9, align 4
  %84 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %85 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %84, i32 0, i32 1
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i64 1
  %88 = load i32, i32* @FALSE, align 4
  %89 = load i32, i32* %9, align 4
  %90 = getelementptr inbounds [6 x i8], [6 x i8]* %11, i64 0, i64 0
  %91 = call i32 @shader_glsl_get_swizzle(%struct.TYPE_11__* %87, i32 %88, i32 %89, i8* %90)
  %92 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %93 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %94 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %93, i32 0, i32 1
  %95 = load %struct.TYPE_11__*, %struct.TYPE_11__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i64 0
  %97 = load i32, i32* %8, align 4
  %98 = call i32 @shader_glsl_add_src_param(%struct.wined3d_shader_instruction* %92, %struct.TYPE_11__* %96, i32 %97, %struct.glsl_src_param* %6)
  %99 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %100 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %99, i32 0, i32 0
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.wined3d_shader_version*, %struct.wined3d_shader_version** %4, align 8
  %105 = getelementptr inbounds %struct.wined3d_shader_version, %struct.wined3d_shader_version* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @shader_glsl_get_prefix(i32 %106)
  %108 = load i32, i32* %10, align 4
  %109 = getelementptr inbounds %struct.glsl_src_param, %struct.glsl_src_param* %6, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = getelementptr inbounds [6 x i8], [6 x i8]* %11, i64 0, i64 0
  %112 = call i32 @shader_addline(i32 %103, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %107, i32 %108, i32 %110, i8* %111)
  br label %113

113:                                              ; preds = %55, %35
  ret void
}

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_12__*) #1

declare dso_local i32 @ERR(i8*, i32) #1

declare dso_local i32 @shader_glsl_append_dst_ext(i32, %struct.wined3d_shader_instruction*, i32*, i32) #1

declare dso_local i32 @shader_glsl_get_swizzle(%struct.TYPE_11__*, i32, i32, i8*) #1

declare dso_local i32 @shader_glsl_add_src_param(%struct.wined3d_shader_instruction*, %struct.TYPE_11__*, i32, %struct.glsl_src_param*) #1

declare dso_local i32 @shader_addline(i32, i8*, i32, i32, i32, i8*) #1

declare dso_local i32 @shader_glsl_get_prefix(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
