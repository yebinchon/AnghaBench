; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_shader_glsl_store_uav.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_shader_glsl_store_uav.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, i32 }
%struct.wined3d_shader_instruction = type { %struct.TYPE_10__*, i32*, %struct.TYPE_9__* }
%struct.TYPE_10__ = type { i32, %struct.wined3d_shader_reg_maps* }
%struct.wined3d_shader_reg_maps = type { %struct.TYPE_11__*, %struct.wined3d_shader_version }
%struct.wined3d_shader_version = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.glsl_src_param = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"Invalid UAV index %u.\0A\00", align 1
@resource_type_info = common dso_local global %struct.TYPE_11__* null, align 8
@.str.1 = private unnamed_addr constant [31 x i8] c"Unexpected resource type %#x.\0A\00", align 1
@WINED3DSP_WRITEMASK_ALL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"imageStore(%s_image%u, %s, %s);\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_shader_instruction*)* @shader_glsl_store_uav to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @shader_glsl_store_uav(%struct.wined3d_shader_instruction* %0) #0 {
  %2 = alloca %struct.wined3d_shader_instruction*, align 8
  %3 = alloca %struct.wined3d_shader_reg_maps*, align 8
  %4 = alloca %struct.wined3d_shader_version*, align 8
  %5 = alloca %struct.glsl_src_param, align 4
  %6 = alloca %struct.glsl_src_param, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.wined3d_shader_instruction* %0, %struct.wined3d_shader_instruction** %2, align 8
  %11 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %12 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %11, i32 0, i32 0
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 1
  %15 = load %struct.wined3d_shader_reg_maps*, %struct.wined3d_shader_reg_maps** %14, align 8
  store %struct.wined3d_shader_reg_maps* %15, %struct.wined3d_shader_reg_maps** %3, align 8
  %16 = load %struct.wined3d_shader_reg_maps*, %struct.wined3d_shader_reg_maps** %3, align 8
  %17 = getelementptr inbounds %struct.wined3d_shader_reg_maps, %struct.wined3d_shader_reg_maps* %16, i32 0, i32 1
  store %struct.wined3d_shader_version* %17, %struct.wined3d_shader_version** %4, align 8
  %18 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %19 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %18, i32 0, i32 2
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i64 0
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i64 0
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  %29 = load %struct.wined3d_shader_reg_maps*, %struct.wined3d_shader_reg_maps** %3, align 8
  %30 = getelementptr inbounds %struct.wined3d_shader_reg_maps, %struct.wined3d_shader_reg_maps* %29, i32 0, i32 0
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %30, align 8
  %32 = call i32 @ARRAY_SIZE(%struct.TYPE_11__* %31)
  %33 = icmp uge i32 %28, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %1
  %35 = load i32, i32* %9, align 4
  %36 = call i32 @ERR(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %35)
  br label %100

37:                                               ; preds = %1
  %38 = load %struct.wined3d_shader_reg_maps*, %struct.wined3d_shader_reg_maps** %3, align 8
  %39 = getelementptr inbounds %struct.wined3d_shader_reg_maps, %struct.wined3d_shader_reg_maps* %38, i32 0, i32 0
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %39, align 8
  %41 = load i32, i32* %9, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* %7, align 4
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** @resource_type_info, align 8
  %48 = call i32 @ARRAY_SIZE(%struct.TYPE_11__* %47)
  %49 = icmp uge i32 %46, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %37
  %51 = load i32, i32* %7, align 4
  %52 = call i32 @ERR(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %51)
  br label %100

53:                                               ; preds = %37
  %54 = load %struct.wined3d_shader_reg_maps*, %struct.wined3d_shader_reg_maps** %3, align 8
  %55 = getelementptr inbounds %struct.wined3d_shader_reg_maps, %struct.wined3d_shader_reg_maps* %54, i32 0, i32 0
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %55, align 8
  %57 = load i32, i32* %9, align 4
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* %8, align 4
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** @resource_type_info, align 8
  %63 = load i32, i32* %7, align 4
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = shl i32 1, %67
  %69 = sub i32 %68, 1
  store i32 %69, i32* %10, align 4
  %70 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %71 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %72 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %71, i32 0, i32 1
  %73 = load i32*, i32** %72, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 0
  %75 = load i32, i32* %10, align 4
  %76 = call i32 @shader_glsl_add_src_param(%struct.wined3d_shader_instruction* %70, i32* %74, i32 %75, %struct.glsl_src_param* %5)
  %77 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %78 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %79 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %78, i32 0, i32 1
  %80 = load i32*, i32** %79, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 1
  %82 = load i32, i32* @WINED3DSP_WRITEMASK_ALL, align 4
  %83 = load i32, i32* %8, align 4
  %84 = call i32 @shader_glsl_add_src_param_ext(%struct.wined3d_shader_instruction* %77, i32* %81, i32 %82, %struct.glsl_src_param* %6, i32 %83)
  %85 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %86 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %85, i32 0, i32 0
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.wined3d_shader_version*, %struct.wined3d_shader_version** %4, align 8
  %91 = getelementptr inbounds %struct.wined3d_shader_version, %struct.wined3d_shader_version* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @shader_glsl_get_prefix(i32 %92)
  %94 = load i32, i32* %9, align 4
  %95 = getelementptr inbounds %struct.glsl_src_param, %struct.glsl_src_param* %5, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = getelementptr inbounds %struct.glsl_src_param, %struct.glsl_src_param* %6, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @shader_addline(i32 %89, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %93, i32 %94, i32 %96, i32 %98)
  br label %100

100:                                              ; preds = %53, %50, %34
  ret void
}

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_11__*) #1

declare dso_local i32 @ERR(i8*, i32) #1

declare dso_local i32 @shader_glsl_add_src_param(%struct.wined3d_shader_instruction*, i32*, i32, %struct.glsl_src_param*) #1

declare dso_local i32 @shader_glsl_add_src_param_ext(%struct.wined3d_shader_instruction*, i32*, i32, %struct.glsl_src_param*, i32) #1

declare dso_local i32 @shader_addline(i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @shader_glsl_get_prefix(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
