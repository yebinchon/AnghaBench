; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_shader_glsl_texbem.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_shader_glsl_texbem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_shader_instruction = type { i64, %struct.TYPE_10__*, %struct.TYPE_11__*, i32* }
%struct.TYPE_10__ = type { i32, %struct.shader_glsl_ctx_priv* }
%struct.shader_glsl_ctx_priv = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.glsl_sample_function = type { i32 }
%struct.glsl_src_param = type { i32 }
%struct.glsl_dst_param = type { i32, i32 }

@WINED3D_PSARGS_TEXTRANSFORM_SHIFT = common dso_local global i32 0, align 4
@WINED3D_PSARGS_TEXTRANSFORM_MASK = common dso_local global i32 0, align 4
@WINED3D_PSARGS_PROJECTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"WINED3D_TTFF_PROJECTED with WINED3D_TTFF_COUNT1?\0A\00", align 1
@WINED3DSP_WRITEMASK_1 = common dso_local global i32 0, align 4
@WINED3DSP_WRITEMASK_2 = common dso_local global i32 0, align 4
@WINED3DSP_WRITEMASK_3 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"T%u%s /= T%u%s;\0A\00", align 1
@WINED3DSP_WRITEMASK_0 = common dso_local global i32 0, align 4
@WINED3DSP_NOSWIZZLE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [45 x i8] c"T%u%s + vec4(bumpenv_mat%u * %s, 0.0, 0.0)%s\00", align 1
@WINED3DSIH_TEXBEML = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [60 x i8] c"%s%s *= (%s * bumpenv_lum_scale%u + bumpenv_lum_offset%u);\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_shader_instruction*)* @shader_glsl_texbem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @shader_glsl_texbem(%struct.wined3d_shader_instruction* %0) #0 {
  %2 = alloca %struct.wined3d_shader_instruction*, align 8
  %3 = alloca %struct.shader_glsl_ctx_priv*, align 8
  %4 = alloca %struct.glsl_sample_function, align 4
  %5 = alloca %struct.glsl_src_param, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [6 x i8], align 1
  %10 = alloca i32, align 4
  %11 = alloca [3 x i8], align 1
  %12 = alloca %struct.glsl_src_param, align 4
  %13 = alloca %struct.glsl_dst_param, align 4
  store %struct.wined3d_shader_instruction* %0, %struct.wined3d_shader_instruction** %2, align 8
  %14 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %15 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %14, i32 0, i32 1
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 1
  %18 = load %struct.shader_glsl_ctx_priv*, %struct.shader_glsl_ctx_priv** %17, align 8
  store %struct.shader_glsl_ctx_priv* %18, %struct.shader_glsl_ctx_priv** %3, align 8
  %19 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %20 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %19, i32 0, i32 2
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i64 0
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i64 0
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %6, align 4
  %29 = load %struct.shader_glsl_ctx_priv*, %struct.shader_glsl_ctx_priv** %3, align 8
  %30 = getelementptr inbounds %struct.shader_glsl_ctx_priv, %struct.shader_glsl_ctx_priv* %29, i32 0, i32 0
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* @WINED3D_PSARGS_TEXTRANSFORM_SHIFT, align 4
  %36 = mul nsw i32 %34, %35
  %37 = ashr i32 %33, %36
  %38 = load i32, i32* @WINED3D_PSARGS_TEXTRANSFORM_MASK, align 4
  %39 = and i32 %37, %38
  store i32 %39, i32* %8, align 4
  %40 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %41 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %40, i32 0, i32 1
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %41, align 8
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @shader_glsl_get_sample_function(%struct.TYPE_10__* %42, i32 %43, i32 %44, i32 0, %struct.glsl_sample_function* %4)
  %46 = getelementptr inbounds %struct.glsl_sample_function, %struct.glsl_sample_function* %4, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* %7, align 4
  %49 = getelementptr inbounds [6 x i8], [6 x i8]* %9, i64 0, i64 0
  %50 = call i32 @shader_glsl_write_mask_to_str(i32 %48, i8* %49)
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* @WINED3D_PSARGS_PROJECTED, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %82

55:                                               ; preds = %1
  store i32 0, i32* %10, align 4
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* @WINED3D_PSARGS_PROJECTED, align 4
  %58 = xor i32 %57, -1
  %59 = and i32 %56, %58
  switch i32 %59, label %68 [
    i32 132, label %60
    i32 131, label %62
    i32 130, label %64
    i32 129, label %66
    i32 128, label %66
  ]

60:                                               ; preds = %55
  %61 = call i32 @FIXME(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  br label %68

62:                                               ; preds = %55
  %63 = load i32, i32* @WINED3DSP_WRITEMASK_1, align 4
  store i32 %63, i32* %10, align 4
  br label %68

64:                                               ; preds = %55
  %65 = load i32, i32* @WINED3DSP_WRITEMASK_2, align 4
  store i32 %65, i32* %10, align 4
  br label %68

66:                                               ; preds = %55, %55
  %67 = load i32, i32* @WINED3DSP_WRITEMASK_3, align 4
  store i32 %67, i32* %10, align 4
  br label %68

68:                                               ; preds = %55, %66, %64, %62, %60
  %69 = load i32, i32* %10, align 4
  %70 = getelementptr inbounds [3 x i8], [3 x i8]* %11, i64 0, i64 0
  %71 = call i32 @shader_glsl_write_mask_to_str(i32 %69, i8* %70)
  %72 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %73 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %72, i32 0, i32 1
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* %6, align 4
  %78 = getelementptr inbounds [6 x i8], [6 x i8]* %9, i64 0, i64 0
  %79 = load i32, i32* %6, align 4
  %80 = getelementptr inbounds [3 x i8], [3 x i8]* %11, i64 0, i64 0
  %81 = call i32 (i32, i8*, i32, i8*, i32, ...) @shader_addline(i32 %76, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %77, i8* %78, i32 %79, i8* %80)
  br label %82

82:                                               ; preds = %68, %1
  %83 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %84 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %85 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %84, i32 0, i32 3
  %86 = load i32*, i32** %85, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 0
  %88 = load i32, i32* @WINED3DSP_WRITEMASK_0, align 4
  %89 = load i32, i32* @WINED3DSP_WRITEMASK_1, align 4
  %90 = or i32 %88, %89
  %91 = call i32 @shader_glsl_add_src_param(%struct.wined3d_shader_instruction* %83, i32* %87, i32 %90, %struct.glsl_src_param* %5)
  %92 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %93 = load i32, i32* %6, align 4
  %94 = load i32, i32* @WINED3DSP_NOSWIZZLE, align 4
  %95 = load i32, i32* %6, align 4
  %96 = getelementptr inbounds [6 x i8], [6 x i8]* %9, i64 0, i64 0
  %97 = load i32, i32* %6, align 4
  %98 = getelementptr inbounds %struct.glsl_src_param, %struct.glsl_src_param* %5, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = getelementptr inbounds [6 x i8], [6 x i8]* %9, i64 0, i64 0
  %101 = call i32 @shader_glsl_gen_sample_code(%struct.wined3d_shader_instruction* %92, i32 %93, %struct.glsl_sample_function* %4, i32 %94, i32* null, i32* null, i32* null, i32* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i32 %95, i8* %96, i32 %97, i32 %99, i8* %100)
  %102 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %103 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @WINED3DSIH_TEXBEML, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %137

107:                                              ; preds = %82
  %108 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %109 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %110 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %109, i32 0, i32 3
  %111 = load i32*, i32** %110, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 0
  %113 = load i32, i32* @WINED3DSP_WRITEMASK_2, align 4
  %114 = call i32 @shader_glsl_add_src_param(%struct.wined3d_shader_instruction* %108, i32* %112, i32 %113, %struct.glsl_src_param* %12)
  %115 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %116 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %117 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %116, i32 0, i32 2
  %118 = load %struct.TYPE_11__*, %struct.TYPE_11__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %118, i64 0
  %120 = call i32 @shader_glsl_add_dst_param(%struct.wined3d_shader_instruction* %115, %struct.TYPE_11__* %119, %struct.glsl_dst_param* %13)
  %121 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %122 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %121, i32 0, i32 1
  %123 = load %struct.TYPE_10__*, %struct.TYPE_10__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = getelementptr inbounds %struct.glsl_dst_param, %struct.glsl_dst_param* %13, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = getelementptr inbounds %struct.glsl_dst_param, %struct.glsl_dst_param* %13, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = sext i32 %129 to i64
  %131 = inttoptr i64 %130 to i8*
  %132 = getelementptr inbounds %struct.glsl_src_param, %struct.glsl_src_param* %12, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* %6, align 4
  %135 = load i32, i32* %6, align 4
  %136 = call i32 (i32, i8*, i32, i8*, i32, ...) @shader_addline(i32 %125, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.3, i64 0, i64 0), i32 %127, i8* %131, i32 %133, i32 %134, i32 %135)
  br label %137

137:                                              ; preds = %107, %82
  %138 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %139 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %138, i32 0, i32 1
  %140 = load %struct.TYPE_10__*, %struct.TYPE_10__** %139, align 8
  %141 = call i32 @shader_glsl_release_sample_function(%struct.TYPE_10__* %140, %struct.glsl_sample_function* %4)
  ret void
}

declare dso_local i32 @shader_glsl_get_sample_function(%struct.TYPE_10__*, i32, i32, i32, %struct.glsl_sample_function*) #1

declare dso_local i32 @shader_glsl_write_mask_to_str(i32, i8*) #1

declare dso_local i32 @FIXME(i8*) #1

declare dso_local i32 @shader_addline(i32, i8*, i32, i8*, i32, ...) #1

declare dso_local i32 @shader_glsl_add_src_param(%struct.wined3d_shader_instruction*, i32*, i32, %struct.glsl_src_param*) #1

declare dso_local i32 @shader_glsl_gen_sample_code(%struct.wined3d_shader_instruction*, i32, %struct.glsl_sample_function*, i32, i32*, i32*, i32*, i32*, i8*, i32, i8*, i32, i32, i8*) #1

declare dso_local i32 @shader_glsl_add_dst_param(%struct.wined3d_shader_instruction*, %struct.TYPE_11__*, %struct.glsl_dst_param*) #1

declare dso_local i32 @shader_glsl_release_sample_function(%struct.TYPE_10__*, %struct.glsl_sample_function*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
