; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_shader_glsl_ffp_vertex_light_uniform.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_shader_glsl_ffp_vertex_light_uniform.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_context = type { %struct.wined3d_gl_info* }
%struct.wined3d_gl_info = type { i32 }
%struct.wined3d_state = type { %struct.wined3d_matrix* }
%struct.wined3d_matrix = type { i32 }
%struct.wined3d_light_info = type { %struct.TYPE_12__, i32, i32 }
%struct.TYPE_12__ = type { i32, float, float, i32, i32, i32, i32, i32, %struct.TYPE_9__, %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.glsl_shader_prog_link = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.wined3d_vec4 = type { i32 }

@WINED3D_TS_VIEW = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"Unrecognized light type %#x.\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"setting FFP lights uniforms\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_context*, %struct.wined3d_state*, i32, %struct.wined3d_light_info*, %struct.glsl_shader_prog_link*)* @shader_glsl_ffp_vertex_light_uniform to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @shader_glsl_ffp_vertex_light_uniform(%struct.wined3d_context* %0, %struct.wined3d_state* %1, i32 %2, %struct.wined3d_light_info* %3, %struct.glsl_shader_prog_link* %4) #0 {
  %6 = alloca %struct.wined3d_context*, align 8
  %7 = alloca %struct.wined3d_state*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.wined3d_light_info*, align 8
  %10 = alloca %struct.glsl_shader_prog_link*, align 8
  %11 = alloca %struct.wined3d_matrix*, align 8
  %12 = alloca %struct.wined3d_gl_info*, align 8
  %13 = alloca %struct.wined3d_vec4, align 4
  store %struct.wined3d_context* %0, %struct.wined3d_context** %6, align 8
  store %struct.wined3d_state* %1, %struct.wined3d_state** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.wined3d_light_info* %3, %struct.wined3d_light_info** %9, align 8
  store %struct.glsl_shader_prog_link* %4, %struct.glsl_shader_prog_link** %10, align 8
  %14 = load %struct.wined3d_state*, %struct.wined3d_state** %7, align 8
  %15 = getelementptr inbounds %struct.wined3d_state, %struct.wined3d_state* %14, i32 0, i32 0
  %16 = load %struct.wined3d_matrix*, %struct.wined3d_matrix** %15, align 8
  %17 = load i64, i64* @WINED3D_TS_VIEW, align 8
  %18 = getelementptr inbounds %struct.wined3d_matrix, %struct.wined3d_matrix* %16, i64 %17
  store %struct.wined3d_matrix* %18, %struct.wined3d_matrix** %11, align 8
  %19 = load %struct.wined3d_context*, %struct.wined3d_context** %6, align 8
  %20 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %19, i32 0, i32 0
  %21 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %20, align 8
  store %struct.wined3d_gl_info* %21, %struct.wined3d_gl_info** %12, align 8
  %22 = load %struct.glsl_shader_prog_link*, %struct.glsl_shader_prog_link** %10, align 8
  %23 = getelementptr inbounds %struct.glsl_shader_prog_link, %struct.glsl_shader_prog_link* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %24, align 8
  %26 = load i32, i32* %8, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 11
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.wined3d_light_info*, %struct.wined3d_light_info** %9, align 8
  %32 = getelementptr inbounds %struct.wined3d_light_info, %struct.wined3d_light_info* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 10
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = call i32 @glUniform4fv(i32 %30, i32 1, i32* %34)
  %36 = call i32 @GL_EXTCALL(i32 %35)
  %37 = load %struct.glsl_shader_prog_link*, %struct.glsl_shader_prog_link** %10, align 8
  %38 = getelementptr inbounds %struct.glsl_shader_prog_link, %struct.glsl_shader_prog_link* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %39, align 8
  %41 = load i32, i32* %8, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 10
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.wined3d_light_info*, %struct.wined3d_light_info** %9, align 8
  %47 = getelementptr inbounds %struct.wined3d_light_info, %struct.wined3d_light_info* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 9
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = call i32 @glUniform4fv(i32 %45, i32 1, i32* %49)
  %51 = call i32 @GL_EXTCALL(i32 %50)
  %52 = load %struct.glsl_shader_prog_link*, %struct.glsl_shader_prog_link** %10, align 8
  %53 = getelementptr inbounds %struct.glsl_shader_prog_link, %struct.glsl_shader_prog_link* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %54, align 8
  %56 = load i32, i32* %8, align 4
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 9
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.wined3d_light_info*, %struct.wined3d_light_info** %9, align 8
  %62 = getelementptr inbounds %struct.wined3d_light_info, %struct.wined3d_light_info* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 0
  %65 = call i32 @glUniform4fv(i32 %60, i32 1, i32* %64)
  %66 = call i32 @GL_EXTCALL(i32 %65)
  %67 = load %struct.wined3d_light_info*, %struct.wined3d_light_info** %9, align 8
  %68 = getelementptr inbounds %struct.wined3d_light_info, %struct.wined3d_light_info* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  switch i32 %70, label %324 [
    i32 129, label %71
    i32 128, label %148
    i32 131, label %290
    i32 130, label %307
  ]

71:                                               ; preds = %5
  %72 = load %struct.wined3d_light_info*, %struct.wined3d_light_info** %9, align 8
  %73 = getelementptr inbounds %struct.wined3d_light_info, %struct.wined3d_light_info* %72, i32 0, i32 1
  %74 = load %struct.wined3d_matrix*, %struct.wined3d_matrix** %11, align 8
  %75 = call i32 @multiply_vector_matrix(%struct.wined3d_vec4* %13, i32* %73, %struct.wined3d_matrix* %74)
  %76 = load %struct.glsl_shader_prog_link*, %struct.glsl_shader_prog_link** %10, align 8
  %77 = getelementptr inbounds %struct.glsl_shader_prog_link, %struct.glsl_shader_prog_link* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %78, align 8
  %80 = load i32, i32* %8, align 4
  %81 = zext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = getelementptr inbounds %struct.wined3d_vec4, %struct.wined3d_vec4* %13, i32 0, i32 0
  %86 = call i32 @glUniform4fv(i32 %84, i32 1, i32* %85)
  %87 = call i32 @GL_EXTCALL(i32 %86)
  %88 = load %struct.glsl_shader_prog_link*, %struct.glsl_shader_prog_link** %10, align 8
  %89 = getelementptr inbounds %struct.glsl_shader_prog_link, %struct.glsl_shader_prog_link* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 0
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %90, align 8
  %92 = load i32, i32* %8, align 4
  %93 = zext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 8
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.wined3d_light_info*, %struct.wined3d_light_info** %9, align 8
  %98 = getelementptr inbounds %struct.wined3d_light_info, %struct.wined3d_light_info* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %98, i32 0, i32 7
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @glUniform1f(i32 %96, i32 %100)
  %102 = call i32 @GL_EXTCALL(i32 %101)
  %103 = load %struct.glsl_shader_prog_link*, %struct.glsl_shader_prog_link** %10, align 8
  %104 = getelementptr inbounds %struct.glsl_shader_prog_link, %struct.glsl_shader_prog_link* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %104, i32 0, i32 0
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %105, align 8
  %107 = load i32, i32* %8, align 4
  %108 = zext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 6
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.wined3d_light_info*, %struct.wined3d_light_info** %9, align 8
  %113 = getelementptr inbounds %struct.wined3d_light_info, %struct.wined3d_light_info* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %113, i32 0, i32 5
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @glUniform1f(i32 %111, i32 %115)
  %117 = call i32 @GL_EXTCALL(i32 %116)
  %118 = load %struct.glsl_shader_prog_link*, %struct.glsl_shader_prog_link** %10, align 8
  %119 = getelementptr inbounds %struct.glsl_shader_prog_link, %struct.glsl_shader_prog_link* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %119, i32 0, i32 0
  %121 = load %struct.TYPE_10__*, %struct.TYPE_10__** %120, align 8
  %122 = load i32, i32* %8, align 4
  %123 = zext i32 %122 to i64
  %124 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %121, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %124, i32 0, i32 5
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.wined3d_light_info*, %struct.wined3d_light_info** %9, align 8
  %128 = getelementptr inbounds %struct.wined3d_light_info, %struct.wined3d_light_info* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %128, i32 0, i32 4
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @glUniform1f(i32 %126, i32 %130)
  %132 = call i32 @GL_EXTCALL(i32 %131)
  %133 = load %struct.glsl_shader_prog_link*, %struct.glsl_shader_prog_link** %10, align 8
  %134 = getelementptr inbounds %struct.glsl_shader_prog_link, %struct.glsl_shader_prog_link* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %134, i32 0, i32 0
  %136 = load %struct.TYPE_10__*, %struct.TYPE_10__** %135, align 8
  %137 = load i32, i32* %8, align 4
  %138 = zext i32 %137 to i64
  %139 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %136, i64 %138
  %140 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %139, i32 0, i32 4
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.wined3d_light_info*, %struct.wined3d_light_info** %9, align 8
  %143 = getelementptr inbounds %struct.wined3d_light_info, %struct.wined3d_light_info* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %143, i32 0, i32 3
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @glUniform1f(i32 %141, i32 %145)
  %147 = call i32 @GL_EXTCALL(i32 %146)
  br label %330

148:                                              ; preds = %5
  %149 = load %struct.wined3d_light_info*, %struct.wined3d_light_info** %9, align 8
  %150 = getelementptr inbounds %struct.wined3d_light_info, %struct.wined3d_light_info* %149, i32 0, i32 1
  %151 = load %struct.wined3d_matrix*, %struct.wined3d_matrix** %11, align 8
  %152 = call i32 @multiply_vector_matrix(%struct.wined3d_vec4* %13, i32* %150, %struct.wined3d_matrix* %151)
  %153 = load %struct.glsl_shader_prog_link*, %struct.glsl_shader_prog_link** %10, align 8
  %154 = getelementptr inbounds %struct.glsl_shader_prog_link, %struct.glsl_shader_prog_link* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %154, i32 0, i32 0
  %156 = load %struct.TYPE_10__*, %struct.TYPE_10__** %155, align 8
  %157 = load i32, i32* %8, align 4
  %158 = zext i32 %157 to i64
  %159 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %156, i64 %158
  %160 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = getelementptr inbounds %struct.wined3d_vec4, %struct.wined3d_vec4* %13, i32 0, i32 0
  %163 = call i32 @glUniform4fv(i32 %161, i32 1, i32* %162)
  %164 = call i32 @GL_EXTCALL(i32 %163)
  %165 = load %struct.wined3d_light_info*, %struct.wined3d_light_info** %9, align 8
  %166 = getelementptr inbounds %struct.wined3d_light_info, %struct.wined3d_light_info* %165, i32 0, i32 2
  %167 = load %struct.wined3d_matrix*, %struct.wined3d_matrix** %11, align 8
  %168 = call i32 @multiply_vector_matrix(%struct.wined3d_vec4* %13, i32* %166, %struct.wined3d_matrix* %167)
  %169 = load %struct.glsl_shader_prog_link*, %struct.glsl_shader_prog_link** %10, align 8
  %170 = getelementptr inbounds %struct.glsl_shader_prog_link, %struct.glsl_shader_prog_link* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %170, i32 0, i32 0
  %172 = load %struct.TYPE_10__*, %struct.TYPE_10__** %171, align 8
  %173 = load i32, i32* %8, align 4
  %174 = zext i32 %173 to i64
  %175 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %172, i64 %174
  %176 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 4
  %178 = getelementptr inbounds %struct.wined3d_vec4, %struct.wined3d_vec4* %13, i32 0, i32 0
  %179 = call i32 @glUniform3fv(i32 %177, i32 1, i32* %178)
  %180 = call i32 @GL_EXTCALL(i32 %179)
  %181 = load %struct.glsl_shader_prog_link*, %struct.glsl_shader_prog_link** %10, align 8
  %182 = getelementptr inbounds %struct.glsl_shader_prog_link, %struct.glsl_shader_prog_link* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %182, i32 0, i32 0
  %184 = load %struct.TYPE_10__*, %struct.TYPE_10__** %183, align 8
  %185 = load i32, i32* %8, align 4
  %186 = zext i32 %185 to i64
  %187 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %184, i64 %186
  %188 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %187, i32 0, i32 8
  %189 = load i32, i32* %188, align 4
  %190 = load %struct.wined3d_light_info*, %struct.wined3d_light_info** %9, align 8
  %191 = getelementptr inbounds %struct.wined3d_light_info, %struct.wined3d_light_info* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %191, i32 0, i32 7
  %193 = load i32, i32* %192, align 4
  %194 = call i32 @glUniform1f(i32 %189, i32 %193)
  %195 = call i32 @GL_EXTCALL(i32 %194)
  %196 = load %struct.glsl_shader_prog_link*, %struct.glsl_shader_prog_link** %10, align 8
  %197 = getelementptr inbounds %struct.glsl_shader_prog_link, %struct.glsl_shader_prog_link* %196, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %197, i32 0, i32 0
  %199 = load %struct.TYPE_10__*, %struct.TYPE_10__** %198, align 8
  %200 = load i32, i32* %8, align 4
  %201 = zext i32 %200 to i64
  %202 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %199, i64 %201
  %203 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %202, i32 0, i32 7
  %204 = load i32, i32* %203, align 4
  %205 = load %struct.wined3d_light_info*, %struct.wined3d_light_info** %9, align 8
  %206 = getelementptr inbounds %struct.wined3d_light_info, %struct.wined3d_light_info* %205, i32 0, i32 0
  %207 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %206, i32 0, i32 6
  %208 = load i32, i32* %207, align 4
  %209 = call i32 @glUniform1f(i32 %204, i32 %208)
  %210 = call i32 @GL_EXTCALL(i32 %209)
  %211 = load %struct.glsl_shader_prog_link*, %struct.glsl_shader_prog_link** %10, align 8
  %212 = getelementptr inbounds %struct.glsl_shader_prog_link, %struct.glsl_shader_prog_link* %211, i32 0, i32 0
  %213 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %212, i32 0, i32 0
  %214 = load %struct.TYPE_10__*, %struct.TYPE_10__** %213, align 8
  %215 = load i32, i32* %8, align 4
  %216 = zext i32 %215 to i64
  %217 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %214, i64 %216
  %218 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %217, i32 0, i32 6
  %219 = load i32, i32* %218, align 4
  %220 = load %struct.wined3d_light_info*, %struct.wined3d_light_info** %9, align 8
  %221 = getelementptr inbounds %struct.wined3d_light_info, %struct.wined3d_light_info* %220, i32 0, i32 0
  %222 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %221, i32 0, i32 5
  %223 = load i32, i32* %222, align 4
  %224 = call i32 @glUniform1f(i32 %219, i32 %223)
  %225 = call i32 @GL_EXTCALL(i32 %224)
  %226 = load %struct.glsl_shader_prog_link*, %struct.glsl_shader_prog_link** %10, align 8
  %227 = getelementptr inbounds %struct.glsl_shader_prog_link, %struct.glsl_shader_prog_link* %226, i32 0, i32 0
  %228 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %227, i32 0, i32 0
  %229 = load %struct.TYPE_10__*, %struct.TYPE_10__** %228, align 8
  %230 = load i32, i32* %8, align 4
  %231 = zext i32 %230 to i64
  %232 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %229, i64 %231
  %233 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %232, i32 0, i32 5
  %234 = load i32, i32* %233, align 4
  %235 = load %struct.wined3d_light_info*, %struct.wined3d_light_info** %9, align 8
  %236 = getelementptr inbounds %struct.wined3d_light_info, %struct.wined3d_light_info* %235, i32 0, i32 0
  %237 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %236, i32 0, i32 4
  %238 = load i32, i32* %237, align 4
  %239 = call i32 @glUniform1f(i32 %234, i32 %238)
  %240 = call i32 @GL_EXTCALL(i32 %239)
  %241 = load %struct.glsl_shader_prog_link*, %struct.glsl_shader_prog_link** %10, align 8
  %242 = getelementptr inbounds %struct.glsl_shader_prog_link, %struct.glsl_shader_prog_link* %241, i32 0, i32 0
  %243 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %242, i32 0, i32 0
  %244 = load %struct.TYPE_10__*, %struct.TYPE_10__** %243, align 8
  %245 = load i32, i32* %8, align 4
  %246 = zext i32 %245 to i64
  %247 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %244, i64 %246
  %248 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %247, i32 0, i32 4
  %249 = load i32, i32* %248, align 4
  %250 = load %struct.wined3d_light_info*, %struct.wined3d_light_info** %9, align 8
  %251 = getelementptr inbounds %struct.wined3d_light_info, %struct.wined3d_light_info* %250, i32 0, i32 0
  %252 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %251, i32 0, i32 3
  %253 = load i32, i32* %252, align 4
  %254 = call i32 @glUniform1f(i32 %249, i32 %253)
  %255 = call i32 @GL_EXTCALL(i32 %254)
  %256 = load %struct.glsl_shader_prog_link*, %struct.glsl_shader_prog_link** %10, align 8
  %257 = getelementptr inbounds %struct.glsl_shader_prog_link, %struct.glsl_shader_prog_link* %256, i32 0, i32 0
  %258 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %257, i32 0, i32 0
  %259 = load %struct.TYPE_10__*, %struct.TYPE_10__** %258, align 8
  %260 = load i32, i32* %8, align 4
  %261 = zext i32 %260 to i64
  %262 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %259, i64 %261
  %263 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %262, i32 0, i32 3
  %264 = load i32, i32* %263, align 4
  %265 = load %struct.wined3d_light_info*, %struct.wined3d_light_info** %9, align 8
  %266 = getelementptr inbounds %struct.wined3d_light_info, %struct.wined3d_light_info* %265, i32 0, i32 0
  %267 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %266, i32 0, i32 1
  %268 = load float, float* %267, align 4
  %269 = fdiv float %268, 2.000000e+00
  %270 = call i32 @cosf(float %269)
  %271 = call i32 @glUniform1f(i32 %264, i32 %270)
  %272 = call i32 @GL_EXTCALL(i32 %271)
  %273 = load %struct.glsl_shader_prog_link*, %struct.glsl_shader_prog_link** %10, align 8
  %274 = getelementptr inbounds %struct.glsl_shader_prog_link, %struct.glsl_shader_prog_link* %273, i32 0, i32 0
  %275 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %274, i32 0, i32 0
  %276 = load %struct.TYPE_10__*, %struct.TYPE_10__** %275, align 8
  %277 = load i32, i32* %8, align 4
  %278 = zext i32 %277 to i64
  %279 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %276, i64 %278
  %280 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %279, i32 0, i32 2
  %281 = load i32, i32* %280, align 4
  %282 = load %struct.wined3d_light_info*, %struct.wined3d_light_info** %9, align 8
  %283 = getelementptr inbounds %struct.wined3d_light_info, %struct.wined3d_light_info* %282, i32 0, i32 0
  %284 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %283, i32 0, i32 2
  %285 = load float, float* %284, align 4
  %286 = fdiv float %285, 2.000000e+00
  %287 = call i32 @cosf(float %286)
  %288 = call i32 @glUniform1f(i32 %281, i32 %287)
  %289 = call i32 @GL_EXTCALL(i32 %288)
  br label %330

290:                                              ; preds = %5
  %291 = load %struct.wined3d_light_info*, %struct.wined3d_light_info** %9, align 8
  %292 = getelementptr inbounds %struct.wined3d_light_info, %struct.wined3d_light_info* %291, i32 0, i32 2
  %293 = load %struct.wined3d_matrix*, %struct.wined3d_matrix** %11, align 8
  %294 = call i32 @multiply_vector_matrix(%struct.wined3d_vec4* %13, i32* %292, %struct.wined3d_matrix* %293)
  %295 = load %struct.glsl_shader_prog_link*, %struct.glsl_shader_prog_link** %10, align 8
  %296 = getelementptr inbounds %struct.glsl_shader_prog_link, %struct.glsl_shader_prog_link* %295, i32 0, i32 0
  %297 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %296, i32 0, i32 0
  %298 = load %struct.TYPE_10__*, %struct.TYPE_10__** %297, align 8
  %299 = load i32, i32* %8, align 4
  %300 = zext i32 %299 to i64
  %301 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %298, i64 %300
  %302 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %301, i32 0, i32 1
  %303 = load i32, i32* %302, align 4
  %304 = getelementptr inbounds %struct.wined3d_vec4, %struct.wined3d_vec4* %13, i32 0, i32 0
  %305 = call i32 @glUniform3fv(i32 %303, i32 1, i32* %304)
  %306 = call i32 @GL_EXTCALL(i32 %305)
  br label %330

307:                                              ; preds = %5
  %308 = load %struct.wined3d_light_info*, %struct.wined3d_light_info** %9, align 8
  %309 = getelementptr inbounds %struct.wined3d_light_info, %struct.wined3d_light_info* %308, i32 0, i32 1
  %310 = load %struct.wined3d_matrix*, %struct.wined3d_matrix** %11, align 8
  %311 = call i32 @multiply_vector_matrix(%struct.wined3d_vec4* %13, i32* %309, %struct.wined3d_matrix* %310)
  %312 = load %struct.glsl_shader_prog_link*, %struct.glsl_shader_prog_link** %10, align 8
  %313 = getelementptr inbounds %struct.glsl_shader_prog_link, %struct.glsl_shader_prog_link* %312, i32 0, i32 0
  %314 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %313, i32 0, i32 0
  %315 = load %struct.TYPE_10__*, %struct.TYPE_10__** %314, align 8
  %316 = load i32, i32* %8, align 4
  %317 = zext i32 %316 to i64
  %318 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %315, i64 %317
  %319 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %318, i32 0, i32 0
  %320 = load i32, i32* %319, align 4
  %321 = getelementptr inbounds %struct.wined3d_vec4, %struct.wined3d_vec4* %13, i32 0, i32 0
  %322 = call i32 @glUniform4fv(i32 %320, i32 1, i32* %321)
  %323 = call i32 @GL_EXTCALL(i32 %322)
  br label %330

324:                                              ; preds = %5
  %325 = load %struct.wined3d_light_info*, %struct.wined3d_light_info** %9, align 8
  %326 = getelementptr inbounds %struct.wined3d_light_info, %struct.wined3d_light_info* %325, i32 0, i32 0
  %327 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %326, i32 0, i32 0
  %328 = load i32, i32* %327, align 4
  %329 = call i32 @FIXME(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %328)
  br label %330

330:                                              ; preds = %324, %307, %290, %148, %71
  %331 = call i32 @checkGLcall(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local i32 @GL_EXTCALL(i32) #1

declare dso_local i32 @glUniform4fv(i32, i32, i32*) #1

declare dso_local i32 @multiply_vector_matrix(%struct.wined3d_vec4*, i32*, %struct.wined3d_matrix*) #1

declare dso_local i32 @glUniform1f(i32, i32) #1

declare dso_local i32 @glUniform3fv(i32, i32, i32*) #1

declare dso_local i32 @cosf(float) #1

declare dso_local i32 @FIXME(i8*, i32) #1

declare dso_local i32 @checkGLcall(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
