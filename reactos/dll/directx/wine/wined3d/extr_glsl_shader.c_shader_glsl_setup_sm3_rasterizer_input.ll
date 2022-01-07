; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_shader_glsl_setup_sm3_rasterizer_input.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_shader_glsl_setup_sm3_rasterizer_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shader_glsl_priv = type { %struct.wined3d_string_buffer }
%struct.wined3d_string_buffer = type { i32 }
%struct.wined3d_gl_info = type { i32 }
%struct.wined3d_shader_signature = type { i32, %struct.wined3d_shader_signature_element* }
%struct.wined3d_shader_signature_element = type { i32, i8*, i32, i64, i32, i64 }
%struct.wined3d_shader_reg_maps = type { i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@WINED3D_SV_POSITION = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"gl_Position%s = outputs[%u]%s;\0A\00", align 1
@WINED3D_DECL_USAGE_PSIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [79 x i8] c"gl_PointSize = clamp(outputs[%u].%c, ffp_point.size_min, ffp_point.size_max);\0A\00", align 1
@WINED3D_SV_RENDER_TARGET_ARRAY_INDEX = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [43 x i8] c"gl_Layer = floatBitsToInt(outputs[%u])%s;\0A\00", align 1
@WINED3D_SV_CLIP_DISTANCE = common dso_local global i64 0, align 8
@WINED3D_SV_CULL_DISTANCE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [32 x i8] c"Unhandled sysval semantic %#x.\0A\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"shader_out\00", align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.shader_glsl_priv*, %struct.wined3d_gl_info*, i32*, %struct.wined3d_shader_signature*, %struct.wined3d_shader_reg_maps*, i32, %struct.wined3d_shader_signature*, %struct.wined3d_shader_reg_maps*, i64)* @shader_glsl_setup_sm3_rasterizer_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @shader_glsl_setup_sm3_rasterizer_input(%struct.shader_glsl_priv* %0, %struct.wined3d_gl_info* %1, i32* %2, %struct.wined3d_shader_signature* %3, %struct.wined3d_shader_reg_maps* %4, i32 %5, %struct.wined3d_shader_signature* %6, %struct.wined3d_shader_reg_maps* %7, i64 %8) #0 {
  %10 = alloca %struct.shader_glsl_priv*, align 8
  %11 = alloca %struct.wined3d_gl_info*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.wined3d_shader_signature*, align 8
  %14 = alloca %struct.wined3d_shader_reg_maps*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.wined3d_shader_signature*, align 8
  %17 = alloca %struct.wined3d_shader_reg_maps*, align 8
  %18 = alloca i64, align 8
  %19 = alloca %struct.wined3d_string_buffer*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  %22 = alloca [6 x i8], align 1
  %23 = alloca i32, align 4
  %24 = alloca %struct.wined3d_shader_signature_element*, align 8
  store %struct.shader_glsl_priv* %0, %struct.shader_glsl_priv** %10, align 8
  store %struct.wined3d_gl_info* %1, %struct.wined3d_gl_info** %11, align 8
  store i32* %2, i32** %12, align 8
  store %struct.wined3d_shader_signature* %3, %struct.wined3d_shader_signature** %13, align 8
  store %struct.wined3d_shader_reg_maps* %4, %struct.wined3d_shader_reg_maps** %14, align 8
  store i32 %5, i32* %15, align 4
  store %struct.wined3d_shader_signature* %6, %struct.wined3d_shader_signature** %16, align 8
  store %struct.wined3d_shader_reg_maps* %7, %struct.wined3d_shader_reg_maps** %17, align 8
  store i64 %8, i64* %18, align 8
  %25 = load %struct.shader_glsl_priv*, %struct.shader_glsl_priv** %10, align 8
  %26 = getelementptr inbounds %struct.shader_glsl_priv, %struct.shader_glsl_priv* %25, i32 0, i32 0
  store %struct.wined3d_string_buffer* %26, %struct.wined3d_string_buffer** %19, align 8
  store i32 0, i32* %23, align 4
  br label %27

27:                                               ; preds = %159, %9
  %28 = load i32, i32* %23, align 4
  %29 = load %struct.wined3d_shader_signature*, %struct.wined3d_shader_signature** %16, align 8
  %30 = getelementptr inbounds %struct.wined3d_shader_signature, %struct.wined3d_shader_signature* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp ult i32 %28, %31
  br i1 %32, label %33, label %162

33:                                               ; preds = %27
  %34 = load %struct.wined3d_shader_signature*, %struct.wined3d_shader_signature** %16, align 8
  %35 = getelementptr inbounds %struct.wined3d_shader_signature, %struct.wined3d_shader_signature* %34, i32 0, i32 1
  %36 = load %struct.wined3d_shader_signature_element*, %struct.wined3d_shader_signature_element** %35, align 8
  %37 = load i32, i32* %23, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds %struct.wined3d_shader_signature_element, %struct.wined3d_shader_signature_element* %36, i64 %38
  store %struct.wined3d_shader_signature_element* %39, %struct.wined3d_shader_signature_element** %24, align 8
  %40 = load %struct.wined3d_shader_reg_maps*, %struct.wined3d_shader_reg_maps** %17, align 8
  %41 = getelementptr inbounds %struct.wined3d_shader_reg_maps, %struct.wined3d_shader_reg_maps* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.wined3d_shader_signature_element*, %struct.wined3d_shader_signature_element** %24, align 8
  %44 = getelementptr inbounds %struct.wined3d_shader_signature_element, %struct.wined3d_shader_signature_element* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = shl i32 1, %45
  %47 = and i32 %42, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %33
  br label %159

50:                                               ; preds = %33
  %51 = load %struct.wined3d_shader_signature_element*, %struct.wined3d_shader_signature_element** %24, align 8
  %52 = getelementptr inbounds %struct.wined3d_shader_signature_element, %struct.wined3d_shader_signature_element* %51, i32 0, i32 5
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %50
  br label %159

56:                                               ; preds = %50
  %57 = load %struct.wined3d_shader_signature_element*, %struct.wined3d_shader_signature_element** %24, align 8
  %58 = getelementptr inbounds %struct.wined3d_shader_signature_element, %struct.wined3d_shader_signature_element* %57, i32 0, i32 1
  %59 = load i8*, i8** %58, align 8
  store i8* %59, i8** %20, align 8
  %60 = load %struct.wined3d_shader_signature_element*, %struct.wined3d_shader_signature_element** %24, align 8
  %61 = getelementptr inbounds %struct.wined3d_shader_signature_element, %struct.wined3d_shader_signature_element* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  store i32 %62, i32* %21, align 4
  %63 = load %struct.wined3d_shader_signature_element*, %struct.wined3d_shader_signature_element** %24, align 8
  %64 = getelementptr inbounds %struct.wined3d_shader_signature_element, %struct.wined3d_shader_signature_element* %63, i32 0, i32 4
  %65 = load i32, i32* %64, align 8
  %66 = getelementptr inbounds [6 x i8], [6 x i8]* %22, i64 0, i64 0
  %67 = call i32 @shader_glsl_write_mask_to_str(i32 %65, i8* %66)
  %68 = load %struct.wined3d_shader_signature_element*, %struct.wined3d_shader_signature_element** %24, align 8
  %69 = getelementptr inbounds %struct.wined3d_shader_signature_element, %struct.wined3d_shader_signature_element* %68, i32 0, i32 3
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @WINED3D_SV_POSITION, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %84

73:                                               ; preds = %56
  %74 = load i32, i32* %21, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %84, label %76

76:                                               ; preds = %73
  %77 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %19, align 8
  %78 = getelementptr inbounds [6 x i8], [6 x i8]* %22, i64 0, i64 0
  %79 = load %struct.wined3d_shader_signature_element*, %struct.wined3d_shader_signature_element** %24, align 8
  %80 = getelementptr inbounds %struct.wined3d_shader_signature_element, %struct.wined3d_shader_signature_element* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = getelementptr inbounds [6 x i8], [6 x i8]* %22, i64 0, i64 0
  %83 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %77, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i8* %78, i32 %81, i8* %82)
  br label %158

84:                                               ; preds = %73, %56
  %85 = load i8*, i8** %20, align 8
  %86 = load i32, i32* @WINED3D_DECL_USAGE_PSIZE, align 4
  %87 = call i64 @shader_match_semantic(i8* %85, i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %101

89:                                               ; preds = %84
  %90 = load i64, i64* %18, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %101

92:                                               ; preds = %89
  %93 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %19, align 8
  %94 = load %struct.wined3d_shader_signature_element*, %struct.wined3d_shader_signature_element** %24, align 8
  %95 = getelementptr inbounds %struct.wined3d_shader_signature_element, %struct.wined3d_shader_signature_element* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = getelementptr inbounds [6 x i8], [6 x i8]* %22, i64 0, i64 1
  %98 = load i8, i8* %97, align 1
  %99 = sext i8 %98 to i32
  %100 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %93, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.1, i64 0, i64 0), i32 %96, i32 %99)
  br label %157

101:                                              ; preds = %89, %84
  %102 = load %struct.wined3d_shader_signature_element*, %struct.wined3d_shader_signature_element** %24, align 8
  %103 = getelementptr inbounds %struct.wined3d_shader_signature_element, %struct.wined3d_shader_signature_element* %102, i32 0, i32 3
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @WINED3D_SV_RENDER_TARGET_ARRAY_INDEX, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %117

107:                                              ; preds = %101
  %108 = load i32, i32* %21, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %117, label %110

110:                                              ; preds = %107
  %111 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %19, align 8
  %112 = load %struct.wined3d_shader_signature_element*, %struct.wined3d_shader_signature_element** %24, align 8
  %113 = getelementptr inbounds %struct.wined3d_shader_signature_element, %struct.wined3d_shader_signature_element* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = getelementptr inbounds [6 x i8], [6 x i8]* %22, i64 0, i64 0
  %116 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %111, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i32 %114, i8* %115)
  br label %156

117:                                              ; preds = %107, %101
  %118 = load %struct.wined3d_shader_signature_element*, %struct.wined3d_shader_signature_element** %24, align 8
  %119 = getelementptr inbounds %struct.wined3d_shader_signature_element, %struct.wined3d_shader_signature_element* %118, i32 0, i32 3
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @WINED3D_SV_CLIP_DISTANCE, align 8
  %122 = icmp eq i64 %120, %121
  br i1 %122, label %123, label %130

123:                                              ; preds = %117
  %124 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %19, align 8
  %125 = load %struct.wined3d_shader_signature_element*, %struct.wined3d_shader_signature_element** %24, align 8
  %126 = load %struct.wined3d_shader_reg_maps*, %struct.wined3d_shader_reg_maps** %17, align 8
  %127 = getelementptr inbounds %struct.wined3d_shader_reg_maps, %struct.wined3d_shader_reg_maps* %126, i32 0, i32 3
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @shader_glsl_generate_clip_or_cull_distances(%struct.wined3d_string_buffer* %124, %struct.wined3d_shader_signature_element* %125, i32 %128)
  br label %155

130:                                              ; preds = %117
  %131 = load %struct.wined3d_shader_signature_element*, %struct.wined3d_shader_signature_element** %24, align 8
  %132 = getelementptr inbounds %struct.wined3d_shader_signature_element, %struct.wined3d_shader_signature_element* %131, i32 0, i32 3
  %133 = load i64, i64* %132, align 8
  %134 = load i64, i64* @WINED3D_SV_CULL_DISTANCE, align 8
  %135 = icmp eq i64 %133, %134
  br i1 %135, label %136, label %143

136:                                              ; preds = %130
  %137 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %19, align 8
  %138 = load %struct.wined3d_shader_signature_element*, %struct.wined3d_shader_signature_element** %24, align 8
  %139 = load %struct.wined3d_shader_reg_maps*, %struct.wined3d_shader_reg_maps** %17, align 8
  %140 = getelementptr inbounds %struct.wined3d_shader_reg_maps, %struct.wined3d_shader_reg_maps* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @shader_glsl_generate_clip_or_cull_distances(%struct.wined3d_string_buffer* %137, %struct.wined3d_shader_signature_element* %138, i32 %141)
  br label %154

143:                                              ; preds = %130
  %144 = load %struct.wined3d_shader_signature_element*, %struct.wined3d_shader_signature_element** %24, align 8
  %145 = getelementptr inbounds %struct.wined3d_shader_signature_element, %struct.wined3d_shader_signature_element* %144, i32 0, i32 3
  %146 = load i64, i64* %145, align 8
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %153

148:                                              ; preds = %143
  %149 = load %struct.wined3d_shader_signature_element*, %struct.wined3d_shader_signature_element** %24, align 8
  %150 = getelementptr inbounds %struct.wined3d_shader_signature_element, %struct.wined3d_shader_signature_element* %149, i32 0, i32 3
  %151 = load i64, i64* %150, align 8
  %152 = call i32 @FIXME(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i64 %151)
  br label %153

153:                                              ; preds = %148, %143
  br label %154

154:                                              ; preds = %153, %136
  br label %155

155:                                              ; preds = %154, %123
  br label %156

156:                                              ; preds = %155, %110
  br label %157

157:                                              ; preds = %156, %92
  br label %158

158:                                              ; preds = %157, %76
  br label %159

159:                                              ; preds = %158, %55, %49
  %160 = load i32, i32* %23, align 4
  %161 = add i32 %160, 1
  store i32 %161, i32* %23, align 4
  br label %27

162:                                              ; preds = %27
  %163 = load %struct.wined3d_shader_reg_maps*, %struct.wined3d_shader_reg_maps** %17, align 8
  %164 = getelementptr inbounds %struct.wined3d_shader_reg_maps, %struct.wined3d_shader_reg_maps* %163, i32 0, i32 1
  %165 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = icmp slt i32 %166, 4
  br i1 %167, label %168, label %177

168:                                              ; preds = %162
  %169 = load %struct.shader_glsl_priv*, %struct.shader_glsl_priv** %10, align 8
  %170 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %11, align 8
  %171 = load i32*, i32** %12, align 8
  %172 = load %struct.wined3d_shader_signature*, %struct.wined3d_shader_signature** %13, align 8
  %173 = load %struct.wined3d_shader_reg_maps*, %struct.wined3d_shader_reg_maps** %14, align 8
  %174 = load %struct.wined3d_shader_signature*, %struct.wined3d_shader_signature** %16, align 8
  %175 = load %struct.wined3d_shader_reg_maps*, %struct.wined3d_shader_reg_maps** %17, align 8
  %176 = call i32 @shader_glsl_setup_vs3_output(%struct.shader_glsl_priv* %169, %struct.wined3d_gl_info* %170, i32* %171, %struct.wined3d_shader_signature* %172, %struct.wined3d_shader_reg_maps* %173, %struct.wined3d_shader_signature* %174, %struct.wined3d_shader_reg_maps* %175)
  br label %184

177:                                              ; preds = %162
  %178 = load %struct.shader_glsl_priv*, %struct.shader_glsl_priv** %10, align 8
  %179 = load i32, i32* %15, align 4
  %180 = load %struct.wined3d_shader_signature*, %struct.wined3d_shader_signature** %16, align 8
  %181 = load %struct.wined3d_shader_reg_maps*, %struct.wined3d_shader_reg_maps** %17, align 8
  %182 = load i32, i32* @TRUE, align 4
  %183 = call i32 @shader_glsl_setup_sm4_shader_output(%struct.shader_glsl_priv* %178, i32 %179, %struct.wined3d_shader_signature* %180, %struct.wined3d_shader_reg_maps* %181, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32 %182)
  br label %184

184:                                              ; preds = %177, %168
  ret void
}

declare dso_local i32 @shader_glsl_write_mask_to_str(i32, i8*) #1

declare dso_local i32 @shader_addline(%struct.wined3d_string_buffer*, i8*, ...) #1

declare dso_local i64 @shader_match_semantic(i8*, i32) #1

declare dso_local i32 @shader_glsl_generate_clip_or_cull_distances(%struct.wined3d_string_buffer*, %struct.wined3d_shader_signature_element*, i32) #1

declare dso_local i32 @FIXME(i8*, i64) #1

declare dso_local i32 @shader_glsl_setup_vs3_output(%struct.shader_glsl_priv*, %struct.wined3d_gl_info*, i32*, %struct.wined3d_shader_signature*, %struct.wined3d_shader_reg_maps*, %struct.wined3d_shader_signature*, %struct.wined3d_shader_reg_maps*) #1

declare dso_local i32 @shader_glsl_setup_sm4_shader_output(%struct.shader_glsl_priv*, i32, %struct.wined3d_shader_signature*, %struct.wined3d_shader_reg_maps*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
