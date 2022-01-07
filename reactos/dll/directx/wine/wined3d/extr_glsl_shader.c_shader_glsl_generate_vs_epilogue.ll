; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_shader_glsl_generate_vs_epilogue.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_shader_glsl_generate_vs_epilogue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_gl_info = type { i32*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.wined3d_string_buffer = type { i32 }
%struct.wined3d_shader = type { %struct.wined3d_shader_reg_maps }
%struct.wined3d_shader_reg_maps = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.vs_compile_args = type { i64, i64, i32, i64, i64 }

@.str = private unnamed_addr constant [26 x i8] c"setup_vs_output(vs_out);\0A\00", align 1
@VS_FOG_Z = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [21 x i8] c"%s = gl_Position.z;\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"gl_FogFragCoord\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"ffp_varying_fogcoord\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"%s = 0.0;\0A\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"gl_ClipVertex = gl_Position;\0A\00", align 1
@.str.6 = private unnamed_addr constant [58 x i8] c"gl_ClipDistance[%u] = dot(gl_Position, clip_planes[%u]);\0A\00", align 1
@.str.7 = private unnamed_addr constant [79 x i8] c"gl_PointSize = clamp(ffp_point.size, ffp_point.size_min, ffp_point.size_max);\0A\00", align 1
@WINED3D_SHADER_TYPE_PIXEL = common dso_local global i64 0, align 8
@ARB_CLIP_CONTROL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_gl_info*, %struct.wined3d_string_buffer*, %struct.wined3d_shader*, %struct.vs_compile_args*)* @shader_glsl_generate_vs_epilogue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @shader_glsl_generate_vs_epilogue(%struct.wined3d_gl_info* %0, %struct.wined3d_string_buffer* %1, %struct.wined3d_shader* %2, %struct.vs_compile_args* %3) #0 {
  %5 = alloca %struct.wined3d_gl_info*, align 8
  %6 = alloca %struct.wined3d_string_buffer*, align 8
  %7 = alloca %struct.wined3d_shader*, align 8
  %8 = alloca %struct.vs_compile_args*, align 8
  %9 = alloca %struct.wined3d_shader_reg_maps*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.wined3d_gl_info* %0, %struct.wined3d_gl_info** %5, align 8
  store %struct.wined3d_string_buffer* %1, %struct.wined3d_string_buffer** %6, align 8
  store %struct.wined3d_shader* %2, %struct.wined3d_shader** %7, align 8
  store %struct.vs_compile_args* %3, %struct.vs_compile_args** %8, align 8
  %12 = load %struct.wined3d_shader*, %struct.wined3d_shader** %7, align 8
  %13 = getelementptr inbounds %struct.wined3d_shader, %struct.wined3d_shader* %12, i32 0, i32 0
  store %struct.wined3d_shader_reg_maps* %13, %struct.wined3d_shader_reg_maps** %9, align 8
  %14 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %5, align 8
  %15 = call i64 @needs_legacy_glsl_syntax(%struct.wined3d_gl_info* %14)
  store i64 %15, i64* %10, align 8
  %16 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %6, align 8
  %17 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %16, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.wined3d_shader_reg_maps*, %struct.wined3d_shader_reg_maps** %9, align 8
  %19 = getelementptr inbounds %struct.wined3d_shader_reg_maps, %struct.wined3d_shader_reg_maps* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp slt i32 %21, 3
  br i1 %22, label %23, label %50

23:                                               ; preds = %4
  %24 = load %struct.vs_compile_args*, %struct.vs_compile_args** %8, align 8
  %25 = getelementptr inbounds %struct.vs_compile_args, %struct.vs_compile_args* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @VS_FOG_Z, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %36

29:                                               ; preds = %23
  %30 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %6, align 8
  %31 = load i64, i64* %10, align 8
  %32 = icmp ne i64 %31, 0
  %33 = zext i1 %32 to i64
  %34 = select i1 %32, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0)
  %35 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %30, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8* %34)
  br label %49

36:                                               ; preds = %23
  %37 = load %struct.wined3d_shader_reg_maps*, %struct.wined3d_shader_reg_maps** %9, align 8
  %38 = getelementptr inbounds %struct.wined3d_shader_reg_maps, %struct.wined3d_shader_reg_maps* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %48, label %41

41:                                               ; preds = %36
  %42 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %6, align 8
  %43 = load i64, i64* %10, align 8
  %44 = icmp ne i64 %43, 0
  %45 = zext i1 %44 to i64
  %46 = select i1 %44, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0)
  %47 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %42, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i8* %46)
  br label %48

48:                                               ; preds = %41, %36
  br label %49

49:                                               ; preds = %48, %29
  br label %50

50:                                               ; preds = %49, %4
  %51 = load %struct.vs_compile_args*, %struct.vs_compile_args** %8, align 8
  %52 = getelementptr inbounds %struct.vs_compile_args, %struct.vs_compile_args* %51, i32 0, i32 4
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %79

55:                                               ; preds = %50
  %56 = load i64, i64* %10, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %55
  %59 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %6, align 8
  %60 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %59, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0))
  br label %78

61:                                               ; preds = %55
  store i32 0, i32* %11, align 4
  br label %62

62:                                               ; preds = %74, %61
  %63 = load i32, i32* %11, align 4
  %64 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %5, align 8
  %65 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = icmp ult i32 %63, %67
  br i1 %68, label %69, label %77

69:                                               ; preds = %62
  %70 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %6, align 8
  %71 = load i32, i32* %11, align 4
  %72 = load i32, i32* %11, align 4
  %73 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %70, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.6, i64 0, i64 0), i32 %71, i32 %72)
  br label %74

74:                                               ; preds = %69
  %75 = load i32, i32* %11, align 4
  %76 = add i32 %75, 1
  store i32 %76, i32* %11, align 4
  br label %62

77:                                               ; preds = %62
  br label %78

78:                                               ; preds = %77, %58
  br label %79

79:                                               ; preds = %78, %50
  %80 = load %struct.vs_compile_args*, %struct.vs_compile_args** %8, align 8
  %81 = getelementptr inbounds %struct.vs_compile_args, %struct.vs_compile_args* %80, i32 0, i32 3
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %92

84:                                               ; preds = %79
  %85 = load %struct.vs_compile_args*, %struct.vs_compile_args** %8, align 8
  %86 = getelementptr inbounds %struct.vs_compile_args, %struct.vs_compile_args* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %92, label %89

89:                                               ; preds = %84
  %90 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %6, align 8
  %91 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %90, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.7, i64 0, i64 0))
  br label %92

92:                                               ; preds = %89, %84, %79
  %93 = load %struct.vs_compile_args*, %struct.vs_compile_args** %8, align 8
  %94 = getelementptr inbounds %struct.vs_compile_args, %struct.vs_compile_args* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @WINED3D_SHADER_TYPE_PIXEL, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %98, label %109

98:                                               ; preds = %92
  %99 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %5, align 8
  %100 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %99, i32 0, i32 0
  %101 = load i32*, i32** %100, align 8
  %102 = load i64, i64* @ARB_CLIP_CONTROL, align 8
  %103 = getelementptr inbounds i32, i32* %101, i64 %102
  %104 = load i32, i32* %103, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %109, label %106

106:                                              ; preds = %98
  %107 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %6, align 8
  %108 = call i32 @shader_glsl_fixup_position(%struct.wined3d_string_buffer* %107)
  br label %109

109:                                              ; preds = %106, %98, %92
  ret void
}

declare dso_local i64 @needs_legacy_glsl_syntax(%struct.wined3d_gl_info*) #1

declare dso_local i32 @shader_addline(%struct.wined3d_string_buffer*, i8*, ...) #1

declare dso_local i32 @shader_glsl_fixup_position(%struct.wined3d_string_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
