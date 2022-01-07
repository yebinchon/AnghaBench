; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_shader_glsl_setup_vs3_output.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_shader_glsl_setup_vs3_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shader_glsl_priv = type { i32, %struct.wined3d_string_buffer }
%struct.wined3d_string_buffer = type { i32 }
%struct.wined3d_gl_info = type { i32 }
%struct.wined3d_shader_signature = type { i32, %struct.wined3d_shader_signature_element* }
%struct.wined3d_shader_signature_element = type { i32, i64, i32, i32 }
%struct.wined3d_shader_reg_maps = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@.str = private unnamed_addr constant [61 x i8] c"More input varyings declared than supported, expect issues.\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"gl_FrontColor\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"gl_FrontSecondaryColor\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"%s[%u]\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"%s%s = outputs[%u]%s;\0A\00", align 1
@WINED3DSP_WRITEMASK_ALL = common dso_local global i32 0, align 4
@WINED3DSP_WRITEMASK_0 = common dso_local global i32 0, align 4
@WINED3DSP_WRITEMASK_1 = common dso_local global i32 0, align 4
@WINED3DSP_WRITEMASK_2 = common dso_local global i32 0, align 4
@WINED3DSP_WRITEMASK_3 = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [14 x i8] c"%s.%s = 0.0;\0A\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"%s.%s = vec%u(0.0);\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.shader_glsl_priv*, %struct.wined3d_gl_info*, i32*, %struct.wined3d_shader_signature*, %struct.wined3d_shader_reg_maps*, %struct.wined3d_shader_signature*, %struct.wined3d_shader_reg_maps*)* @shader_glsl_setup_vs3_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @shader_glsl_setup_vs3_output(%struct.shader_glsl_priv* %0, %struct.wined3d_gl_info* %1, i32* %2, %struct.wined3d_shader_signature* %3, %struct.wined3d_shader_reg_maps* %4, %struct.wined3d_shader_signature* %5, %struct.wined3d_shader_reg_maps* %6) #0 {
  %8 = alloca %struct.shader_glsl_priv*, align 8
  %9 = alloca %struct.wined3d_gl_info*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.wined3d_shader_signature*, align 8
  %12 = alloca %struct.wined3d_shader_reg_maps*, align 8
  %13 = alloca %struct.wined3d_shader_signature*, align 8
  %14 = alloca %struct.wined3d_shader_reg_maps*, align 8
  %15 = alloca %struct.wined3d_string_buffer*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca %struct.wined3d_string_buffer*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca [6 x i8], align 1
  %25 = alloca %struct.wined3d_shader_signature_element*, align 8
  %26 = alloca %struct.wined3d_shader_signature_element*, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  store %struct.shader_glsl_priv* %0, %struct.shader_glsl_priv** %8, align 8
  store %struct.wined3d_gl_info* %1, %struct.wined3d_gl_info** %9, align 8
  store i32* %2, i32** %10, align 8
  store %struct.wined3d_shader_signature* %3, %struct.wined3d_shader_signature** %11, align 8
  store %struct.wined3d_shader_reg_maps* %4, %struct.wined3d_shader_reg_maps** %12, align 8
  store %struct.wined3d_shader_signature* %5, %struct.wined3d_shader_signature** %13, align 8
  store %struct.wined3d_shader_reg_maps* %6, %struct.wined3d_shader_reg_maps** %14, align 8
  %29 = load %struct.shader_glsl_priv*, %struct.shader_glsl_priv** %8, align 8
  %30 = getelementptr inbounds %struct.shader_glsl_priv, %struct.shader_glsl_priv* %29, i32 0, i32 0
  %31 = call %struct.wined3d_string_buffer* @string_buffer_get(i32* %30)
  store %struct.wined3d_string_buffer* %31, %struct.wined3d_string_buffer** %15, align 8
  %32 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %9, align 8
  %33 = call i8* @shader_glsl_shader_output_name(%struct.wined3d_gl_info* %32)
  store i8* %33, i8** %16, align 8
  %34 = load %struct.shader_glsl_priv*, %struct.shader_glsl_priv** %8, align 8
  %35 = getelementptr inbounds %struct.shader_glsl_priv, %struct.shader_glsl_priv* %34, i32 0, i32 1
  store %struct.wined3d_string_buffer* %35, %struct.wined3d_string_buffer** %17, align 8
  %36 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %9, align 8
  %37 = call i32 @vec4_varyings(i32 3, %struct.wined3d_gl_info* %36)
  store i32 %37, i32* %18, align 4
  %38 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %9, align 8
  %39 = call i64 @needs_legacy_glsl_syntax(%struct.wined3d_gl_info* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %7
  %42 = load i32, i32* %18, align 4
  %43 = add i32 %42, 2
  br label %46

44:                                               ; preds = %7
  %45 = load i32, i32* %18, align 4
  br label %46

46:                                               ; preds = %44, %41
  %47 = phi i32 [ %43, %41 ], [ %45, %44 ]
  store i32 %47, i32* %19, align 4
  store i32* null, i32** %21, align 8
  %48 = load i32, i32* %19, align 4
  %49 = call i32* @heap_calloc(i32 %48, i32 4)
  store i32* %49, i32** %21, align 8
  store i32 0, i32* %22, align 4
  br label %50

50:                                               ; preds = %221, %46
  %51 = load i32, i32* %22, align 4
  %52 = load %struct.wined3d_shader_signature*, %struct.wined3d_shader_signature** %11, align 8
  %53 = getelementptr inbounds %struct.wined3d_shader_signature, %struct.wined3d_shader_signature* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp ult i32 %51, %54
  br i1 %55, label %56, label %224

56:                                               ; preds = %50
  %57 = load %struct.wined3d_shader_signature*, %struct.wined3d_shader_signature** %11, align 8
  %58 = getelementptr inbounds %struct.wined3d_shader_signature, %struct.wined3d_shader_signature* %57, i32 0, i32 1
  %59 = load %struct.wined3d_shader_signature_element*, %struct.wined3d_shader_signature_element** %58, align 8
  %60 = load i32, i32* %22, align 4
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds %struct.wined3d_shader_signature_element, %struct.wined3d_shader_signature_element* %59, i64 %61
  store %struct.wined3d_shader_signature_element* %62, %struct.wined3d_shader_signature_element** %25, align 8
  %63 = load %struct.wined3d_shader_reg_maps*, %struct.wined3d_shader_reg_maps** %12, align 8
  %64 = getelementptr inbounds %struct.wined3d_shader_reg_maps, %struct.wined3d_shader_reg_maps* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.wined3d_shader_signature_element*, %struct.wined3d_shader_signature_element** %25, align 8
  %67 = getelementptr inbounds %struct.wined3d_shader_signature_element, %struct.wined3d_shader_signature_element* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = shl i32 1, %68
  %70 = and i32 %65, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %56
  br label %221

73:                                               ; preds = %56
  %74 = load i32*, i32** %10, align 8
  %75 = load %struct.wined3d_shader_signature_element*, %struct.wined3d_shader_signature_element** %25, align 8
  %76 = getelementptr inbounds %struct.wined3d_shader_signature_element, %struct.wined3d_shader_signature_element* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %74, i64 %78
  %80 = load i32, i32* %79, align 4
  store i32 %80, i32* %20, align 4
  %81 = load i32, i32* %20, align 4
  %82 = icmp eq i32 %81, -1
  br i1 %82, label %83, label %84

83:                                               ; preds = %73
  br label %221

84:                                               ; preds = %73
  %85 = load i32, i32* %20, align 4
  %86 = load i32, i32* %19, align 4
  %87 = icmp uge i32 %85, %86
  br i1 %87, label %88, label %90

88:                                               ; preds = %84
  %89 = call i32 @FIXME(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0))
  br label %221

90:                                               ; preds = %84
  %91 = load i32, i32* %20, align 4
  %92 = load i32, i32* %18, align 4
  %93 = icmp eq i32 %91, %92
  br i1 %93, label %94, label %97

94:                                               ; preds = %90
  %95 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %15, align 8
  %96 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @string_buffer_sprintf(%struct.wined3d_string_buffer* %95, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  br label %111

97:                                               ; preds = %90
  %98 = load i32, i32* %20, align 4
  %99 = load i32, i32* %18, align 4
  %100 = add i32 %99, 1
  %101 = icmp eq i32 %98, %100
  br i1 %101, label %102, label %105

102:                                              ; preds = %97
  %103 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %15, align 8
  %104 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @string_buffer_sprintf(%struct.wined3d_string_buffer* %103, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  br label %110

105:                                              ; preds = %97
  %106 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %15, align 8
  %107 = load i8*, i8** %16, align 8
  %108 = load i32, i32* %20, align 4
  %109 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @string_buffer_sprintf(%struct.wined3d_string_buffer* %106, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* %107, i32 %108)
  br label %110

110:                                              ; preds = %105, %102
  br label %111

111:                                              ; preds = %110, %94
  %112 = load i32*, i32** %21, align 8
  %113 = load i32, i32* %20, align 4
  %114 = zext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %112, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %123, label %118

118:                                              ; preds = %111
  %119 = load i32*, i32** %21, align 8
  %120 = load i32, i32* %20, align 4
  %121 = zext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %119, i64 %121
  store i32 -1, i32* %122, align 4
  br label %123

123:                                              ; preds = %118, %111
  store i32 0, i32* %23, align 4
  br label %124

124:                                              ; preds = %217, %123
  %125 = load i32, i32* %23, align 4
  %126 = load %struct.wined3d_shader_signature*, %struct.wined3d_shader_signature** %13, align 8
  %127 = getelementptr inbounds %struct.wined3d_shader_signature, %struct.wined3d_shader_signature* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = icmp ult i32 %125, %128
  br i1 %129, label %130, label %220

130:                                              ; preds = %124
  %131 = load %struct.wined3d_shader_signature*, %struct.wined3d_shader_signature** %13, align 8
  %132 = getelementptr inbounds %struct.wined3d_shader_signature, %struct.wined3d_shader_signature* %131, i32 0, i32 1
  %133 = load %struct.wined3d_shader_signature_element*, %struct.wined3d_shader_signature_element** %132, align 8
  %134 = load i32, i32* %23, align 4
  %135 = zext i32 %134 to i64
  %136 = getelementptr inbounds %struct.wined3d_shader_signature_element, %struct.wined3d_shader_signature_element* %133, i64 %135
  store %struct.wined3d_shader_signature_element* %136, %struct.wined3d_shader_signature_element** %26, align 8
  %137 = load %struct.wined3d_shader_reg_maps*, %struct.wined3d_shader_reg_maps** %14, align 8
  %138 = getelementptr inbounds %struct.wined3d_shader_reg_maps, %struct.wined3d_shader_reg_maps* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.wined3d_shader_signature_element*, %struct.wined3d_shader_signature_element** %26, align 8
  %141 = getelementptr inbounds %struct.wined3d_shader_signature_element, %struct.wined3d_shader_signature_element* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = shl i32 1, %142
  %144 = and i32 %139, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %172

146:                                              ; preds = %130
  %147 = load %struct.wined3d_shader_signature_element*, %struct.wined3d_shader_signature_element** %25, align 8
  %148 = getelementptr inbounds %struct.wined3d_shader_signature_element, %struct.wined3d_shader_signature_element* %147, i32 0, i32 1
  %149 = load i64, i64* %148, align 8
  %150 = load %struct.wined3d_shader_signature_element*, %struct.wined3d_shader_signature_element** %26, align 8
  %151 = getelementptr inbounds %struct.wined3d_shader_signature_element, %struct.wined3d_shader_signature_element* %150, i32 0, i32 1
  %152 = load i64, i64* %151, align 8
  %153 = icmp ne i64 %149, %152
  br i1 %153, label %172, label %154

154:                                              ; preds = %146
  %155 = load %struct.wined3d_shader_signature_element*, %struct.wined3d_shader_signature_element** %25, align 8
  %156 = getelementptr inbounds %struct.wined3d_shader_signature_element, %struct.wined3d_shader_signature_element* %155, i32 0, i32 3
  %157 = load i32, i32* %156, align 4
  %158 = load %struct.wined3d_shader_signature_element*, %struct.wined3d_shader_signature_element** %26, align 8
  %159 = getelementptr inbounds %struct.wined3d_shader_signature_element, %struct.wined3d_shader_signature_element* %158, i32 0, i32 3
  %160 = load i32, i32* %159, align 4
  %161 = call i64 @strcmp(i32 %157, i32 %160)
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %172, label %163

163:                                              ; preds = %154
  %164 = load %struct.wined3d_shader_signature_element*, %struct.wined3d_shader_signature_element** %25, align 8
  %165 = getelementptr inbounds %struct.wined3d_shader_signature_element, %struct.wined3d_shader_signature_element* %164, i32 0, i32 2
  %166 = load i32, i32* %165, align 8
  %167 = load %struct.wined3d_shader_signature_element*, %struct.wined3d_shader_signature_element** %26, align 8
  %168 = getelementptr inbounds %struct.wined3d_shader_signature_element, %struct.wined3d_shader_signature_element* %167, i32 0, i32 2
  %169 = load i32, i32* %168, align 8
  %170 = and i32 %166, %169
  store i32 %170, i32* %27, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %173, label %172

172:                                              ; preds = %163, %154, %146, %130
  br label %217

173:                                              ; preds = %163
  %174 = load i32*, i32** %21, align 8
  %175 = load i32, i32* %20, align 4
  %176 = zext i32 %175 to i64
  %177 = getelementptr inbounds i32, i32* %174, i64 %176
  %178 = load i32, i32* %177, align 4
  %179 = icmp eq i32 %178, -1
  br i1 %179, label %180, label %185

180:                                              ; preds = %173
  %181 = load i32*, i32** %21, align 8
  %182 = load i32, i32* %20, align 4
  %183 = zext i32 %182 to i64
  %184 = getelementptr inbounds i32, i32* %181, i64 %183
  store i32 0, i32* %184, align 4
  br label %185

185:                                              ; preds = %180, %173
  %186 = load i32, i32* %27, align 4
  %187 = load %struct.wined3d_shader_reg_maps*, %struct.wined3d_shader_reg_maps** %14, align 8
  %188 = getelementptr inbounds %struct.wined3d_shader_reg_maps, %struct.wined3d_shader_reg_maps* %187, i32 0, i32 2
  %189 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %188, i32 0, i32 0
  %190 = load i32*, i32** %189, align 8
  %191 = load %struct.wined3d_shader_signature_element*, %struct.wined3d_shader_signature_element** %26, align 8
  %192 = getelementptr inbounds %struct.wined3d_shader_signature_element, %struct.wined3d_shader_signature_element* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = zext i32 %193 to i64
  %195 = getelementptr inbounds i32, i32* %190, i64 %194
  %196 = load i32, i32* %195, align 4
  %197 = and i32 %186, %196
  %198 = load i32*, i32** %21, align 8
  %199 = load i32, i32* %20, align 4
  %200 = zext i32 %199 to i64
  %201 = getelementptr inbounds i32, i32* %198, i64 %200
  %202 = load i32, i32* %201, align 4
  %203 = or i32 %202, %197
  store i32 %203, i32* %201, align 4
  %204 = load i32, i32* %27, align 4
  %205 = getelementptr inbounds [6 x i8], [6 x i8]* %24, i64 0, i64 0
  %206 = call i32 @shader_glsl_write_mask_to_str(i32 %204, i8* %205)
  %207 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %17, align 8
  %208 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %15, align 8
  %209 = getelementptr inbounds %struct.wined3d_string_buffer, %struct.wined3d_string_buffer* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 4
  %211 = getelementptr inbounds [6 x i8], [6 x i8]* %24, i64 0, i64 0
  %212 = load %struct.wined3d_shader_signature_element*, %struct.wined3d_shader_signature_element** %26, align 8
  %213 = getelementptr inbounds %struct.wined3d_shader_signature_element, %struct.wined3d_shader_signature_element* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 8
  %215 = getelementptr inbounds [6 x i8], [6 x i8]* %24, i64 0, i64 0
  %216 = call i32 (%struct.wined3d_string_buffer*, i8*, i32, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %207, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32 %210, i8* %211, i32 %214, i8* %215)
  br label %217

217:                                              ; preds = %185, %172
  %218 = load i32, i32* %23, align 4
  %219 = add i32 %218, 1
  store i32 %219, i32* %23, align 4
  br label %124

220:                                              ; preds = %124
  br label %221

221:                                              ; preds = %220, %88, %83, %72
  %222 = load i32, i32* %22, align 4
  %223 = add i32 %222, 1
  store i32 %223, i32* %22, align 4
  br label %50

224:                                              ; preds = %50
  store i32 0, i32* %22, align 4
  br label %225

225:                                              ; preds = %356, %224
  %226 = load i32, i32* %22, align 4
  %227 = load i32, i32* %19, align 4
  %228 = icmp ult i32 %226, %227
  br i1 %228, label %229, label %359

229:                                              ; preds = %225
  %230 = load i32*, i32** %21, align 8
  %231 = load i32, i32* %22, align 4
  %232 = zext i32 %231 to i64
  %233 = getelementptr inbounds i32, i32* %230, i64 %232
  %234 = load i32, i32* %233, align 4
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %236, label %244

236:                                              ; preds = %229
  %237 = load i32*, i32** %21, align 8
  %238 = load i32, i32* %22, align 4
  %239 = zext i32 %238 to i64
  %240 = getelementptr inbounds i32, i32* %237, i64 %239
  %241 = load i32, i32* %240, align 4
  %242 = load i32, i32* @WINED3DSP_WRITEMASK_ALL, align 4
  %243 = icmp eq i32 %241, %242
  br i1 %243, label %244, label %245

244:                                              ; preds = %236, %229
  br label %356

245:                                              ; preds = %236
  %246 = load i32*, i32** %21, align 8
  %247 = load i32, i32* %22, align 4
  %248 = zext i32 %247 to i64
  %249 = getelementptr inbounds i32, i32* %246, i64 %248
  %250 = load i32, i32* %249, align 4
  %251 = icmp eq i32 %250, -1
  br i1 %251, label %252, label %257

252:                                              ; preds = %245
  %253 = load i32*, i32** %21, align 8
  %254 = load i32, i32* %22, align 4
  %255 = zext i32 %254 to i64
  %256 = getelementptr inbounds i32, i32* %253, i64 %255
  store i32 0, i32* %256, align 4
  br label %257

257:                                              ; preds = %252, %245
  store i32 0, i32* %28, align 4
  %258 = load i32*, i32** %21, align 8
  %259 = load i32, i32* %22, align 4
  %260 = zext i32 %259 to i64
  %261 = getelementptr inbounds i32, i32* %258, i64 %260
  %262 = load i32, i32* %261, align 4
  %263 = load i32, i32* @WINED3DSP_WRITEMASK_0, align 4
  %264 = and i32 %262, %263
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %271, label %266

266:                                              ; preds = %257
  %267 = load i32, i32* %28, align 4
  %268 = add i32 %267, 1
  store i32 %268, i32* %28, align 4
  %269 = zext i32 %267 to i64
  %270 = getelementptr inbounds [6 x i8], [6 x i8]* %24, i64 0, i64 %269
  store i8 120, i8* %270, align 1
  br label %271

271:                                              ; preds = %266, %257
  %272 = load i32*, i32** %21, align 8
  %273 = load i32, i32* %22, align 4
  %274 = zext i32 %273 to i64
  %275 = getelementptr inbounds i32, i32* %272, i64 %274
  %276 = load i32, i32* %275, align 4
  %277 = load i32, i32* @WINED3DSP_WRITEMASK_1, align 4
  %278 = and i32 %276, %277
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %285, label %280

280:                                              ; preds = %271
  %281 = load i32, i32* %28, align 4
  %282 = add i32 %281, 1
  store i32 %282, i32* %28, align 4
  %283 = zext i32 %281 to i64
  %284 = getelementptr inbounds [6 x i8], [6 x i8]* %24, i64 0, i64 %283
  store i8 121, i8* %284, align 1
  br label %285

285:                                              ; preds = %280, %271
  %286 = load i32*, i32** %21, align 8
  %287 = load i32, i32* %22, align 4
  %288 = zext i32 %287 to i64
  %289 = getelementptr inbounds i32, i32* %286, i64 %288
  %290 = load i32, i32* %289, align 4
  %291 = load i32, i32* @WINED3DSP_WRITEMASK_2, align 4
  %292 = and i32 %290, %291
  %293 = icmp ne i32 %292, 0
  br i1 %293, label %299, label %294

294:                                              ; preds = %285
  %295 = load i32, i32* %28, align 4
  %296 = add i32 %295, 1
  store i32 %296, i32* %28, align 4
  %297 = zext i32 %295 to i64
  %298 = getelementptr inbounds [6 x i8], [6 x i8]* %24, i64 0, i64 %297
  store i8 122, i8* %298, align 1
  br label %299

299:                                              ; preds = %294, %285
  %300 = load i32*, i32** %21, align 8
  %301 = load i32, i32* %22, align 4
  %302 = zext i32 %301 to i64
  %303 = getelementptr inbounds i32, i32* %300, i64 %302
  %304 = load i32, i32* %303, align 4
  %305 = load i32, i32* @WINED3DSP_WRITEMASK_3, align 4
  %306 = and i32 %304, %305
  %307 = icmp ne i32 %306, 0
  br i1 %307, label %313, label %308

308:                                              ; preds = %299
  %309 = load i32, i32* %28, align 4
  %310 = add i32 %309, 1
  store i32 %310, i32* %28, align 4
  %311 = zext i32 %309 to i64
  %312 = getelementptr inbounds [6 x i8], [6 x i8]* %24, i64 0, i64 %311
  store i8 119, i8* %312, align 1
  br label %313

313:                                              ; preds = %308, %299
  %314 = load i32, i32* %28, align 4
  %315 = zext i32 %314 to i64
  %316 = getelementptr inbounds [6 x i8], [6 x i8]* %24, i64 0, i64 %315
  store i8 0, i8* %316, align 1
  %317 = load i32, i32* %22, align 4
  %318 = load i32, i32* %18, align 4
  %319 = icmp eq i32 %317, %318
  br i1 %319, label %320, label %323

320:                                              ; preds = %313
  %321 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %15, align 8
  %322 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @string_buffer_sprintf(%struct.wined3d_string_buffer* %321, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  br label %337

323:                                              ; preds = %313
  %324 = load i32, i32* %22, align 4
  %325 = load i32, i32* %18, align 4
  %326 = add i32 %325, 1
  %327 = icmp eq i32 %324, %326
  br i1 %327, label %328, label %331

328:                                              ; preds = %323
  %329 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %15, align 8
  %330 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @string_buffer_sprintf(%struct.wined3d_string_buffer* %329, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  br label %336

331:                                              ; preds = %323
  %332 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %15, align 8
  %333 = load i8*, i8** %16, align 8
  %334 = load i32, i32* %22, align 4
  %335 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @string_buffer_sprintf(%struct.wined3d_string_buffer* %332, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* %333, i32 %334)
  br label %336

336:                                              ; preds = %331, %328
  br label %337

337:                                              ; preds = %336, %320
  %338 = load i32, i32* %28, align 4
  %339 = icmp eq i32 %338, 1
  br i1 %339, label %340, label %347

340:                                              ; preds = %337
  %341 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %17, align 8
  %342 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %15, align 8
  %343 = getelementptr inbounds %struct.wined3d_string_buffer, %struct.wined3d_string_buffer* %342, i32 0, i32 0
  %344 = load i32, i32* %343, align 4
  %345 = getelementptr inbounds [6 x i8], [6 x i8]* %24, i64 0, i64 0
  %346 = call i32 (%struct.wined3d_string_buffer*, i8*, i32, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %341, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i32 %344, i8* %345)
  br label %355

347:                                              ; preds = %337
  %348 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %17, align 8
  %349 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %15, align 8
  %350 = getelementptr inbounds %struct.wined3d_string_buffer, %struct.wined3d_string_buffer* %349, i32 0, i32 0
  %351 = load i32, i32* %350, align 4
  %352 = getelementptr inbounds [6 x i8], [6 x i8]* %24, i64 0, i64 0
  %353 = load i32, i32* %28, align 4
  %354 = call i32 (%struct.wined3d_string_buffer*, i8*, i32, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %348, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i32 %351, i8* %352, i32 %353)
  br label %355

355:                                              ; preds = %347, %340
  br label %356

356:                                              ; preds = %355, %244
  %357 = load i32, i32* %22, align 4
  %358 = add i32 %357, 1
  store i32 %358, i32* %22, align 4
  br label %225

359:                                              ; preds = %225
  %360 = load i32*, i32** %21, align 8
  %361 = call i32 @heap_free(i32* %360)
  %362 = load %struct.shader_glsl_priv*, %struct.shader_glsl_priv** %8, align 8
  %363 = getelementptr inbounds %struct.shader_glsl_priv, %struct.shader_glsl_priv* %362, i32 0, i32 0
  %364 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %15, align 8
  %365 = call i32 @string_buffer_release(i32* %363, %struct.wined3d_string_buffer* %364)
  ret void
}

declare dso_local %struct.wined3d_string_buffer* @string_buffer_get(i32*) #1

declare dso_local i8* @shader_glsl_shader_output_name(%struct.wined3d_gl_info*) #1

declare dso_local i32 @vec4_varyings(i32, %struct.wined3d_gl_info*) #1

declare dso_local i64 @needs_legacy_glsl_syntax(%struct.wined3d_gl_info*) #1

declare dso_local i32* @heap_calloc(i32, i32) #1

declare dso_local i32 @FIXME(i8*) #1

declare dso_local i32 @string_buffer_sprintf(%struct.wined3d_string_buffer*, i8*, ...) #1

declare dso_local i64 @strcmp(i32, i32) #1

declare dso_local i32 @shader_glsl_write_mask_to_str(i32, i8*) #1

declare dso_local i32 @shader_addline(%struct.wined3d_string_buffer*, i8*, i32, i8*, ...) #1

declare dso_local i32 @heap_free(i32*) #1

declare dso_local i32 @string_buffer_release(i32*, %struct.wined3d_string_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
