; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/glad/src/extr_glad.c_gladLoadGLLoader.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/glad/src/extr_glad.c_gladLoadGLLoader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64 }

@GLVersion = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str = private unnamed_addr constant [12 x i8] c"glGetString\00", align 1
@glGetString = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gladLoadGLLoader(i64 (i8*)* %0) #0 {
  %2 = alloca i64 (i8*)*, align 8
  store i64 (i8*)* %0, i64 (i8*)** %2, align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @GLVersion, i32 0, i32 1), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @GLVersion, i32 0, i32 0), align 8
  %3 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %4 = call i64 %3(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %5 = inttoptr i64 %4 to i32*
  store i32* %5, i32** @glGetString, align 8
  %6 = load i32*, i32** @glGetString, align 8
  %7 = icmp eq i32* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %536

9:                                                ; preds = %1
  %10 = call i32 (...) @find_coreGL()
  %11 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %12 = call i32 @load_GL_VERSION_1_0(i64 (i8*)* %11)
  %13 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %14 = call i32 @load_GL_VERSION_1_1(i64 (i8*)* %13)
  %15 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %16 = call i32 @load_GL_VERSION_1_2(i64 (i8*)* %15)
  %17 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %18 = call i32 @load_GL_VERSION_1_3(i64 (i8*)* %17)
  %19 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %20 = call i32 @load_GL_VERSION_1_4(i64 (i8*)* %19)
  %21 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %22 = call i32 @load_GL_VERSION_1_5(i64 (i8*)* %21)
  %23 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %24 = call i32 @load_GL_VERSION_2_0(i64 (i8*)* %23)
  %25 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %26 = call i32 @load_GL_VERSION_2_1(i64 (i8*)* %25)
  %27 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %28 = call i32 @load_GL_VERSION_3_0(i64 (i8*)* %27)
  %29 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %30 = call i32 @load_GL_VERSION_3_1(i64 (i8*)* %29)
  %31 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %32 = call i32 @load_GL_VERSION_3_2(i64 (i8*)* %31)
  %33 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %34 = call i32 @load_GL_VERSION_3_3(i64 (i8*)* %33)
  %35 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %36 = call i32 @load_GL_VERSION_4_0(i64 (i8*)* %35)
  %37 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %38 = call i32 @load_GL_VERSION_4_1(i64 (i8*)* %37)
  %39 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %40 = call i32 @load_GL_VERSION_4_2(i64 (i8*)* %39)
  %41 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %42 = call i32 @load_GL_VERSION_4_3(i64 (i8*)* %41)
  %43 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %44 = call i32 @load_GL_VERSION_4_4(i64 (i8*)* %43)
  %45 = call i32 (...) @find_extensionsGL()
  %46 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %47 = call i32 @load_GL_NV_point_sprite(i64 (i8*)* %46)
  %48 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %49 = call i32 @load_GL_APPLE_element_array(i64 (i8*)* %48)
  %50 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %51 = call i32 @load_GL_AMD_multi_draw_indirect(i64 (i8*)* %50)
  %52 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %53 = call i32 @load_GL_SGIX_tag_sample_buffer(i64 (i8*)* %52)
  %54 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %55 = call i32 @load_GL_ATI_separate_stencil(i64 (i8*)* %54)
  %56 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %57 = call i32 @load_GL_EXT_texture_buffer_object(i64 (i8*)* %56)
  %58 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %59 = call i32 @load_GL_ARB_vertex_blend(i64 (i8*)* %58)
  %60 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %61 = call i32 @load_GL_ARB_program_interface_query(i64 (i8*)* %60)
  %62 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %63 = call i32 @load_GL_EXT_index_func(i64 (i8*)* %62)
  %64 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %65 = call i32 @load_GL_NV_shader_buffer_load(i64 (i8*)* %64)
  %66 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %67 = call i32 @load_GL_EXT_color_subtable(i64 (i8*)* %66)
  %68 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %69 = call i32 @load_GL_SUNX_constant_data(i64 (i8*)* %68)
  %70 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %71 = call i32 @load_GL_EXT_multi_draw_arrays(i64 (i8*)* %70)
  %72 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %73 = call i32 @load_GL_ARB_shader_atomic_counters(i64 (i8*)* %72)
  %74 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %75 = call i32 @load_GL_NV_conditional_render(i64 (i8*)* %74)
  %76 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %77 = call i32 @load_GL_MESA_resize_buffers(i64 (i8*)* %76)
  %78 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %79 = call i32 @load_GL_ARB_texture_view(i64 (i8*)* %78)
  %80 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %81 = call i32 @load_GL_ARB_map_buffer_range(i64 (i8*)* %80)
  %82 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %83 = call i32 @load_GL_EXT_convolution(i64 (i8*)* %82)
  %84 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %85 = call i32 @load_GL_NV_vertex_attrib_integer_64bit(i64 (i8*)* %84)
  %86 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %87 = call i32 @load_GL_EXT_paletted_texture(i64 (i8*)* %86)
  %88 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %89 = call i32 @load_GL_ARB_texture_buffer_object(i64 (i8*)* %88)
  %90 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %91 = call i32 @load_GL_ATI_pn_triangles(i64 (i8*)* %90)
  %92 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %93 = call i32 @load_GL_SGIX_flush_raster(i64 (i8*)* %92)
  %94 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %95 = call i32 @load_GL_EXT_light_texture(i64 (i8*)* %94)
  %96 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %97 = call i32 @load_GL_AMD_draw_buffers_blend(i64 (i8*)* %96)
  %98 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %99 = call i32 @load_GL_MESA_window_pos(i64 (i8*)* %98)
  %100 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %101 = call i32 @load_GL_NV_texture_barrier(i64 (i8*)* %100)
  %102 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %103 = call i32 @load_GL_ARB_vertex_type_2_10_10_10_rev(i64 (i8*)* %102)
  %104 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %105 = call i32 @load_GL_3DFX_tbuffer(i64 (i8*)* %104)
  %106 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %107 = call i32 @load_GL_GREMEDY_frame_terminator(i64 (i8*)* %106)
  %108 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %109 = call i32 @load_GL_ARB_blend_func_extended(i64 (i8*)* %108)
  %110 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %111 = call i32 @load_GL_EXT_separate_shader_objects(i64 (i8*)* %110)
  %112 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %113 = call i32 @load_GL_NV_texture_multisample(i64 (i8*)* %112)
  %114 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %115 = call i32 @load_GL_ARB_shader_objects(i64 (i8*)* %114)
  %116 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %117 = call i32 @load_GL_ARB_framebuffer_object(i64 (i8*)* %116)
  %118 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %119 = call i32 @load_GL_ATI_envmap_bumpmap(i64 (i8*)* %118)
  %120 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %121 = call i32 @load_GL_ATI_map_object_buffer(i64 (i8*)* %120)
  %122 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %123 = call i32 @load_GL_ARB_robustness(i64 (i8*)* %122)
  %124 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %125 = call i32 @load_GL_NV_pixel_data_range(i64 (i8*)* %124)
  %126 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %127 = call i32 @load_GL_EXT_framebuffer_blit(i64 (i8*)* %126)
  %128 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %129 = call i32 @load_GL_ARB_gpu_shader_fp64(i64 (i8*)* %128)
  %130 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %131 = call i32 @load_GL_EXT_vertex_weighting(i64 (i8*)* %130)
  %132 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %133 = call i32 @load_GL_GREMEDY_string_marker(i64 (i8*)* %132)
  %134 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %135 = call i32 @load_GL_EXT_subtexture(i64 (i8*)* %134)
  %136 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %137 = call i32 @load_GL_NV_evaluators(i64 (i8*)* %136)
  %138 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %139 = call i32 @load_GL_SGIS_texture_filter4(i64 (i8*)* %138)
  %140 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %141 = call i32 @load_GL_AMD_performance_monitor(i64 (i8*)* %140)
  %142 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %143 = call i32 @load_GL_EXT_stencil_clear_tag(i64 (i8*)* %142)
  %144 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %145 = call i32 @load_GL_NV_present_video(i64 (i8*)* %144)
  %146 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %147 = call i32 @load_GL_EXT_gpu_program_parameters(i64 (i8*)* %146)
  %148 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %149 = call i32 @load_GL_ARB_draw_elements_base_vertex(i64 (i8*)* %148)
  %150 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %151 = call i32 @load_GL_NV_transform_feedback(i64 (i8*)* %150)
  %152 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %153 = call i32 @load_GL_NV_fragment_program(i64 (i8*)* %152)
  %154 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %155 = call i32 @load_GL_AMD_stencil_operation_extended(i64 (i8*)* %154)
  %156 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %157 = call i32 @load_GL_ARB_instanced_arrays(i64 (i8*)* %156)
  %158 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %159 = call i32 @load_GL_EXT_polygon_offset(i64 (i8*)* %158)
  %160 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %161 = call i32 @load_GL_AMD_sparse_texture(i64 (i8*)* %160)
  %162 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %163 = call i32 @load_GL_NV_fence(i64 (i8*)* %162)
  %164 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %165 = call i32 @load_GL_ARB_texture_buffer_range(i64 (i8*)* %164)
  %166 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %167 = call i32 @load_GL_SUN_mesh_array(i64 (i8*)* %166)
  %168 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %169 = call i32 @load_GL_ARB_vertex_attrib_binding(i64 (i8*)* %168)
  %170 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %171 = call i32 @load_GL_ARB_framebuffer_no_attachments(i64 (i8*)* %170)
  %172 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %173 = call i32 @load_GL_ARB_cl_event(i64 (i8*)* %172)
  %174 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %175 = call i32 @load_GL_OES_single_precision(i64 (i8*)* %174)
  %176 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %177 = call i32 @load_GL_NV_primitive_restart(i64 (i8*)* %176)
  %178 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %179 = call i32 @load_GL_SUN_global_alpha(i64 (i8*)* %178)
  %180 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %181 = call i32 @load_GL_EXT_texture_object(i64 (i8*)* %180)
  %182 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %183 = call i32 @load_GL_AMD_name_gen_delete(i64 (i8*)* %182)
  %184 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %185 = call i32 @load_GL_ARB_buffer_storage(i64 (i8*)* %184)
  %186 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %187 = call i32 @load_GL_APPLE_vertex_program_evaluators(i64 (i8*)* %186)
  %188 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %189 = call i32 @load_GL_ARB_multi_bind(i64 (i8*)* %188)
  %190 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %191 = call i32 @load_GL_SGIX_list_priority(i64 (i8*)* %190)
  %192 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %193 = call i32 @load_GL_NV_vertex_buffer_unified_memory(i64 (i8*)* %192)
  %194 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %195 = call i32 @load_GL_NV_blend_equation_advanced(i64 (i8*)* %194)
  %196 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %197 = call i32 @load_GL_SGIS_sharpen_texture(i64 (i8*)* %196)
  %198 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %199 = call i32 @load_GL_ARB_vertex_program(i64 (i8*)* %198)
  %200 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %201 = call i32 @load_GL_ARB_vertex_buffer_object(i64 (i8*)* %200)
  %202 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %203 = call i32 @load_GL_NV_vertex_array_range(i64 (i8*)* %202)
  %204 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %205 = call i32 @load_GL_SGIX_fragment_lighting(i64 (i8*)* %204)
  %206 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %207 = call i32 @load_GL_NV_framebuffer_multisample_coverage(i64 (i8*)* %206)
  %208 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %209 = call i32 @load_GL_EXT_timer_query(i64 (i8*)* %208)
  %210 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %211 = call i32 @load_GL_NV_bindless_texture(i64 (i8*)* %210)
  %212 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %213 = call i32 @load_GL_KHR_debug(i64 (i8*)* %212)
  %214 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %215 = call i32 @load_GL_ATI_vertex_attrib_array_object(i64 (i8*)* %214)
  %216 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %217 = call i32 @load_GL_EXT_geometry_shader4(i64 (i8*)* %216)
  %218 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %219 = call i32 @load_GL_EXT_bindable_uniform(i64 (i8*)* %218)
  %220 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %221 = call i32 @load_GL_ATI_element_array(i64 (i8*)* %220)
  %222 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %223 = call i32 @load_GL_SGIX_reference_plane(i64 (i8*)* %222)
  %224 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %225 = call i32 @load_GL_EXT_stencil_two_side(i64 (i8*)* %224)
  %226 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %227 = call i32 @load_GL_NV_explicit_multisample(i64 (i8*)* %226)
  %228 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %229 = call i32 @load_GL_IBM_static_data(i64 (i8*)* %228)
  %230 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %231 = call i32 @load_GL_EXT_texture_perturb_normal(i64 (i8*)* %230)
  %232 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %233 = call i32 @load_GL_EXT_point_parameters(i64 (i8*)* %232)
  %234 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %235 = call i32 @load_GL_PGI_misc_hints(i64 (i8*)* %234)
  %236 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %237 = call i32 @load_GL_ARB_vertex_shader(i64 (i8*)* %236)
  %238 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %239 = call i32 @load_GL_ARB_tessellation_shader(i64 (i8*)* %238)
  %240 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %241 = call i32 @load_GL_EXT_draw_buffers2(i64 (i8*)* %240)
  %242 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %243 = call i32 @load_GL_ARB_vertex_attrib_64bit(i64 (i8*)* %242)
  %244 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %245 = call i32 @load_GL_AMD_interleaved_elements(i64 (i8*)* %244)
  %246 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %247 = call i32 @load_GL_ARB_fragment_program(i64 (i8*)* %246)
  %248 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %249 = call i32 @load_GL_ARB_texture_storage(i64 (i8*)* %248)
  %250 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %251 = call i32 @load_GL_ARB_copy_image(i64 (i8*)* %250)
  %252 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %253 = call i32 @load_GL_SGIS_pixel_texture(i64 (i8*)* %252)
  %254 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %255 = call i32 @load_GL_SGIX_instruments(i64 (i8*)* %254)
  %256 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %257 = call i32 @load_GL_ARB_shader_storage_buffer_object(i64 (i8*)* %256)
  %258 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %259 = call i32 @load_GL_EXT_blend_minmax(i64 (i8*)* %258)
  %260 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %261 = call i32 @load_GL_ARB_base_instance(i64 (i8*)* %260)
  %262 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %263 = call i32 @load_GL_EXT_texture_integer(i64 (i8*)* %262)
  %264 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %265 = call i32 @load_GL_ARB_texture_multisample(i64 (i8*)* %264)
  %266 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %267 = call i32 @load_GL_AMD_vertex_shader_tessellator(i64 (i8*)* %266)
  %268 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %269 = call i32 @load_GL_ARB_invalidate_subdata(i64 (i8*)* %268)
  %270 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %271 = call i32 @load_GL_EXT_index_material(i64 (i8*)* %270)
  %272 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %273 = call i32 @load_GL_INTEL_parallel_arrays(i64 (i8*)* %272)
  %274 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %275 = call i32 @load_GL_ATI_draw_buffers(i64 (i8*)* %274)
  %276 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %277 = call i32 @load_GL_SGIX_pixel_texture(i64 (i8*)* %276)
  %278 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %279 = call i32 @load_GL_ARB_timer_query(i64 (i8*)* %278)
  %280 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %281 = call i32 @load_GL_NV_parameter_buffer_object(i64 (i8*)* %280)
  %282 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %283 = call i32 @load_GL_ARB_uniform_buffer_object(i64 (i8*)* %282)
  %284 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %285 = call i32 @load_GL_NV_transform_feedback2(i64 (i8*)* %284)
  %286 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %287 = call i32 @load_GL_EXT_blend_color(i64 (i8*)* %286)
  %288 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %289 = call i32 @load_GL_EXT_histogram(i64 (i8*)* %288)
  %290 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %291 = call i32 @load_GL_SGIS_point_parameters(i64 (i8*)* %290)
  %292 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %293 = call i32 @load_GL_EXT_direct_state_access(i64 (i8*)* %292)
  %294 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %295 = call i32 @load_GL_AMD_sample_positions(i64 (i8*)* %294)
  %296 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %297 = call i32 @load_GL_NV_vertex_program(i64 (i8*)* %296)
  %298 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %299 = call i32 @load_GL_NVX_conditional_render(i64 (i8*)* %298)
  %300 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %301 = call i32 @load_GL_EXT_vertex_shader(i64 (i8*)* %300)
  %302 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %303 = call i32 @load_GL_EXT_blend_func_separate(i64 (i8*)* %302)
  %304 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %305 = call i32 @load_GL_APPLE_fence(i64 (i8*)* %304)
  %306 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %307 = call i32 @load_GL_OES_byte_coordinates(i64 (i8*)* %306)
  %308 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %309 = call i32 @load_GL_ARB_transpose_matrix(i64 (i8*)* %308)
  %310 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %311 = call i32 @load_GL_ARB_provoking_vertex(i64 (i8*)* %310)
  %312 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %313 = call i32 @load_GL_EXT_fog_coord(i64 (i8*)* %312)
  %314 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %315 = call i32 @load_GL_EXT_vertex_array(i64 (i8*)* %314)
  %316 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %317 = call i32 @load_GL_EXT_blend_equation_separate(i64 (i8*)* %316)
  %318 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %319 = call i32 @load_GL_ARB_multi_draw_indirect(i64 (i8*)* %318)
  %320 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %321 = call i32 @load_GL_NV_copy_image(i64 (i8*)* %320)
  %322 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %323 = call i32 @load_GL_ARB_transform_feedback2(i64 (i8*)* %322)
  %324 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %325 = call i32 @load_GL_ARB_transform_feedback3(i64 (i8*)* %324)
  %326 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %327 = call i32 @load_GL_EXT_debug_marker(i64 (i8*)* %326)
  %328 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %329 = call i32 @load_GL_EXT_pixel_transform(i64 (i8*)* %328)
  %330 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %331 = call i32 @load_GL_ATI_fragment_shader(i64 (i8*)* %330)
  %332 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %333 = call i32 @load_GL_ARB_vertex_array_object(i64 (i8*)* %332)
  %334 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %335 = call i32 @load_GL_SUN_triangle_list(i64 (i8*)* %334)
  %336 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %337 = call i32 @load_GL_ARB_transform_feedback_instanced(i64 (i8*)* %336)
  %338 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %339 = call i32 @load_GL_SGIX_async(i64 (i8*)* %338)
  %340 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %341 = call i32 @load_GL_INTEL_performance_query(i64 (i8*)* %340)
  %342 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %343 = call i32 @load_GL_NV_gpu_shader5(i64 (i8*)* %342)
  %344 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %345 = call i32 @load_GL_ARB_ES2_compatibility(i64 (i8*)* %344)
  %346 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %347 = call i32 @load_GL_ARB_indirect_parameters(i64 (i8*)* %346)
  %348 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %349 = call i32 @load_GL_NV_half_float(i64 (i8*)* %348)
  %350 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %351 = call i32 @load_GL_EXT_coordinate_frame(i64 (i8*)* %350)
  %352 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %353 = call i32 @load_GL_EXT_compiled_vertex_array(i64 (i8*)* %352)
  %354 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %355 = call i32 @load_GL_NV_depth_buffer_float(i64 (i8*)* %354)
  %356 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %357 = call i32 @load_GL_NV_occlusion_query(i64 (i8*)* %356)
  %358 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %359 = call i32 @load_GL_APPLE_flush_buffer_range(i64 (i8*)* %358)
  %360 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %361 = call i32 @load_GL_ARB_imaging(i64 (i8*)* %360)
  %362 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %363 = call i32 @load_GL_ARB_draw_buffers_blend(i64 (i8*)* %362)
  %364 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %365 = call i32 @load_GL_ARB_clear_buffer_object(i64 (i8*)* %364)
  %366 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %367 = call i32 @load_GL_ARB_multisample(i64 (i8*)* %366)
  %368 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %369 = call i32 @load_GL_EXT_debug_label(i64 (i8*)* %368)
  %370 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %371 = call i32 @load_GL_ARB_sample_shading(i64 (i8*)* %370)
  %372 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %373 = call i32 @load_GL_INTEL_map_texture(i64 (i8*)* %372)
  %374 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %375 = call i32 @load_GL_ARB_compute_shader(i64 (i8*)* %374)
  %376 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %377 = call i32 @load_GL_IBM_vertex_array_lists(i64 (i8*)* %376)
  %378 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %379 = call i32 @load_GL_ARB_color_buffer_float(i64 (i8*)* %378)
  %380 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %381 = call i32 @load_GL_ARB_bindless_texture(i64 (i8*)* %380)
  %382 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %383 = call i32 @load_GL_ARB_window_pos(i64 (i8*)* %382)
  %384 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %385 = call i32 @load_GL_ARB_internalformat_query(i64 (i8*)* %384)
  %386 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %387 = call i32 @load_GL_EXT_shader_image_load_store(i64 (i8*)* %386)
  %388 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %389 = call i32 @load_GL_EXT_copy_texture(i64 (i8*)* %388)
  %390 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %391 = call i32 @load_GL_NV_register_combiners2(i64 (i8*)* %390)
  %392 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %393 = call i32 @load_GL_NV_draw_texture(i64 (i8*)* %392)
  %394 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %395 = call i32 @load_GL_EXT_draw_instanced(i64 (i8*)* %394)
  %396 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %397 = call i32 @load_GL_ARB_viewport_array(i64 (i8*)* %396)
  %398 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %399 = call i32 @load_GL_ARB_separate_shader_objects(i64 (i8*)* %398)
  %400 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %401 = call i32 @load_GL_EXT_depth_bounds_test(i64 (i8*)* %400)
  %402 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %403 = call i32 @load_GL_HP_image_transform(i64 (i8*)* %402)
  %404 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %405 = call i32 @load_GL_NV_video_capture(i64 (i8*)* %404)
  %406 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %407 = call i32 @load_GL_ARB_sampler_objects(i64 (i8*)* %406)
  %408 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %409 = call i32 @load_GL_ARB_matrix_palette(i64 (i8*)* %408)
  %410 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %411 = call i32 @load_GL_SGIS_texture_color_mask(i64 (i8*)* %410)
  %412 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %413 = call i32 @load_GL_ARB_texture_compression(i64 (i8*)* %412)
  %414 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %415 = call i32 @load_GL_ARB_shader_subroutine(i64 (i8*)* %414)
  %416 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %417 = call i32 @load_GL_ARB_texture_storage_multisample(i64 (i8*)* %416)
  %418 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %419 = call i32 @load_GL_EXT_vertex_attrib_64bit(i64 (i8*)* %418)
  %420 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %421 = call i32 @load_GL_OES_query_matrix(i64 (i8*)* %420)
  %422 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %423 = call i32 @load_GL_APPLE_texture_range(i64 (i8*)* %422)
  %424 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %425 = call i32 @load_GL_ARB_copy_buffer(i64 (i8*)* %424)
  %426 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %427 = call i32 @load_GL_APPLE_object_purgeable(i64 (i8*)* %426)
  %428 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %429 = call i32 @load_GL_ARB_occlusion_query(i64 (i8*)* %428)
  %430 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %431 = call i32 @load_GL_SGI_color_table(i64 (i8*)* %430)
  %432 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %433 = call i32 @load_GL_EXT_gpu_shader4(i64 (i8*)* %432)
  %434 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %435 = call i32 @load_GL_NV_geometry_program4(i64 (i8*)* %434)
  %436 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %437 = call i32 @load_GL_AMD_debug_output(i64 (i8*)* %436)
  %438 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %439 = call i32 @load_GL_ARB_multitexture(i64 (i8*)* %438)
  %440 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %441 = call i32 @load_GL_SGIX_polynomial_ffd(i64 (i8*)* %440)
  %442 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %443 = call i32 @load_GL_EXT_provoking_vertex(i64 (i8*)* %442)
  %444 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %445 = call i32 @load_GL_ARB_point_parameters(i64 (i8*)* %444)
  %446 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %447 = call i32 @load_GL_ARB_shader_image_load_store(i64 (i8*)* %446)
  %448 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %449 = call i32 @load_GL_SGIX_framezoom(i64 (i8*)* %448)
  %450 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %451 = call i32 @load_GL_NV_bindless_multi_draw_indirect(i64 (i8*)* %450)
  %452 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %453 = call i32 @load_GL_EXT_transform_feedback(i64 (i8*)* %452)
  %454 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %455 = call i32 @load_GL_NV_gpu_program4(i64 (i8*)* %454)
  %456 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %457 = call i32 @load_GL_NV_gpu_program5(i64 (i8*)* %456)
  %458 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %459 = call i32 @load_GL_ARB_geometry_shader4(i64 (i8*)* %458)
  %460 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %461 = call i32 @load_GL_SGIX_sprite(i64 (i8*)* %460)
  %462 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %463 = call i32 @load_GL_ARB_get_program_binary(i64 (i8*)* %462)
  %464 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %465 = call i32 @load_GL_AMD_occlusion_query_event(i64 (i8*)* %464)
  %466 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %467 = call i32 @load_GL_SGIS_multisample(i64 (i8*)* %466)
  %468 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %469 = call i32 @load_GL_EXT_framebuffer_object(i64 (i8*)* %468)
  %470 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %471 = call i32 @load_GL_APPLE_vertex_array_range(i64 (i8*)* %470)
  %472 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %473 = call i32 @load_GL_NV_register_combiners(i64 (i8*)* %472)
  %474 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %475 = call i32 @load_GL_ARB_draw_buffers(i64 (i8*)* %474)
  %476 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %477 = call i32 @load_GL_ARB_clear_texture(i64 (i8*)* %476)
  %478 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %479 = call i32 @load_GL_ARB_debug_output(i64 (i8*)* %478)
  %480 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %481 = call i32 @load_GL_EXT_cull_vertex(i64 (i8*)* %480)
  %482 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %483 = call i32 @load_GL_IBM_multimode_draw_arrays(i64 (i8*)* %482)
  %484 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %485 = call i32 @load_GL_APPLE_vertex_array_object(i64 (i8*)* %484)
  %486 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %487 = call i32 @load_GL_SGIS_detail_texture(i64 (i8*)* %486)
  %488 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %489 = call i32 @load_GL_ARB_draw_instanced(i64 (i8*)* %488)
  %490 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %491 = call i32 @load_GL_ARB_shading_language_include(i64 (i8*)* %490)
  %492 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %493 = call i32 @load_GL_INGR_blend_func_separate(i64 (i8*)* %492)
  %494 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %495 = call i32 @load_GL_NV_path_rendering(i64 (i8*)* %494)
  %496 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %497 = call i32 @load_GL_ATI_vertex_streams(i64 (i8*)* %496)
  %498 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %499 = call i32 @load_GL_NV_vdpau_interop(i64 (i8*)* %498)
  %500 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %501 = call i32 @load_GL_ARB_internalformat_query2(i64 (i8*)* %500)
  %502 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %503 = call i32 @load_GL_SUN_vertex(i64 (i8*)* %502)
  %504 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %505 = call i32 @load_GL_SGIX_igloo_interface(i64 (i8*)* %504)
  %506 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %507 = call i32 @load_GL_ARB_draw_indirect(i64 (i8*)* %506)
  %508 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %509 = call i32 @load_GL_NV_vertex_program4(i64 (i8*)* %508)
  %510 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %511 = call i32 @load_GL_SGIS_fog_function(i64 (i8*)* %510)
  %512 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %513 = call i32 @load_GL_EXT_x11_sync_object(i64 (i8*)* %512)
  %514 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %515 = call i32 @load_GL_ARB_sync(i64 (i8*)* %514)
  %516 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %517 = call i32 @load_GL_ARB_compute_variable_group_size(i64 (i8*)* %516)
  %518 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %519 = call i32 @load_GL_OES_fixed_point(i64 (i8*)* %518)
  %520 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %521 = call i32 @load_GL_EXT_framebuffer_multisample(i64 (i8*)* %520)
  %522 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %523 = call i32 @load_GL_SGIS_texture4D(i64 (i8*)* %522)
  %524 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %525 = call i32 @load_GL_EXT_texture3D(i64 (i8*)* %524)
  %526 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %527 = call i32 @load_GL_EXT_multisample(i64 (i8*)* %526)
  %528 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %529 = call i32 @load_GL_EXT_secondary_color(i64 (i8*)* %528)
  %530 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %531 = call i32 @load_GL_ATI_vertex_array_object(i64 (i8*)* %530)
  %532 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %533 = call i32 @load_GL_ARB_sparse_texture(i64 (i8*)* %532)
  %534 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %535 = call i32 @load_GL_EXT_draw_range_elements(i64 (i8*)* %534)
  br label %536

536:                                              ; preds = %9, %8
  ret void
}

declare dso_local i32 @find_coreGL(...) #1

declare dso_local i32 @load_GL_VERSION_1_0(i64 (i8*)*) #1

declare dso_local i32 @load_GL_VERSION_1_1(i64 (i8*)*) #1

declare dso_local i32 @load_GL_VERSION_1_2(i64 (i8*)*) #1

declare dso_local i32 @load_GL_VERSION_1_3(i64 (i8*)*) #1

declare dso_local i32 @load_GL_VERSION_1_4(i64 (i8*)*) #1

declare dso_local i32 @load_GL_VERSION_1_5(i64 (i8*)*) #1

declare dso_local i32 @load_GL_VERSION_2_0(i64 (i8*)*) #1

declare dso_local i32 @load_GL_VERSION_2_1(i64 (i8*)*) #1

declare dso_local i32 @load_GL_VERSION_3_0(i64 (i8*)*) #1

declare dso_local i32 @load_GL_VERSION_3_1(i64 (i8*)*) #1

declare dso_local i32 @load_GL_VERSION_3_2(i64 (i8*)*) #1

declare dso_local i32 @load_GL_VERSION_3_3(i64 (i8*)*) #1

declare dso_local i32 @load_GL_VERSION_4_0(i64 (i8*)*) #1

declare dso_local i32 @load_GL_VERSION_4_1(i64 (i8*)*) #1

declare dso_local i32 @load_GL_VERSION_4_2(i64 (i8*)*) #1

declare dso_local i32 @load_GL_VERSION_4_3(i64 (i8*)*) #1

declare dso_local i32 @load_GL_VERSION_4_4(i64 (i8*)*) #1

declare dso_local i32 @find_extensionsGL(...) #1

declare dso_local i32 @load_GL_NV_point_sprite(i64 (i8*)*) #1

declare dso_local i32 @load_GL_APPLE_element_array(i64 (i8*)*) #1

declare dso_local i32 @load_GL_AMD_multi_draw_indirect(i64 (i8*)*) #1

declare dso_local i32 @load_GL_SGIX_tag_sample_buffer(i64 (i8*)*) #1

declare dso_local i32 @load_GL_ATI_separate_stencil(i64 (i8*)*) #1

declare dso_local i32 @load_GL_EXT_texture_buffer_object(i64 (i8*)*) #1

declare dso_local i32 @load_GL_ARB_vertex_blend(i64 (i8*)*) #1

declare dso_local i32 @load_GL_ARB_program_interface_query(i64 (i8*)*) #1

declare dso_local i32 @load_GL_EXT_index_func(i64 (i8*)*) #1

declare dso_local i32 @load_GL_NV_shader_buffer_load(i64 (i8*)*) #1

declare dso_local i32 @load_GL_EXT_color_subtable(i64 (i8*)*) #1

declare dso_local i32 @load_GL_SUNX_constant_data(i64 (i8*)*) #1

declare dso_local i32 @load_GL_EXT_multi_draw_arrays(i64 (i8*)*) #1

declare dso_local i32 @load_GL_ARB_shader_atomic_counters(i64 (i8*)*) #1

declare dso_local i32 @load_GL_NV_conditional_render(i64 (i8*)*) #1

declare dso_local i32 @load_GL_MESA_resize_buffers(i64 (i8*)*) #1

declare dso_local i32 @load_GL_ARB_texture_view(i64 (i8*)*) #1

declare dso_local i32 @load_GL_ARB_map_buffer_range(i64 (i8*)*) #1

declare dso_local i32 @load_GL_EXT_convolution(i64 (i8*)*) #1

declare dso_local i32 @load_GL_NV_vertex_attrib_integer_64bit(i64 (i8*)*) #1

declare dso_local i32 @load_GL_EXT_paletted_texture(i64 (i8*)*) #1

declare dso_local i32 @load_GL_ARB_texture_buffer_object(i64 (i8*)*) #1

declare dso_local i32 @load_GL_ATI_pn_triangles(i64 (i8*)*) #1

declare dso_local i32 @load_GL_SGIX_flush_raster(i64 (i8*)*) #1

declare dso_local i32 @load_GL_EXT_light_texture(i64 (i8*)*) #1

declare dso_local i32 @load_GL_AMD_draw_buffers_blend(i64 (i8*)*) #1

declare dso_local i32 @load_GL_MESA_window_pos(i64 (i8*)*) #1

declare dso_local i32 @load_GL_NV_texture_barrier(i64 (i8*)*) #1

declare dso_local i32 @load_GL_ARB_vertex_type_2_10_10_10_rev(i64 (i8*)*) #1

declare dso_local i32 @load_GL_3DFX_tbuffer(i64 (i8*)*) #1

declare dso_local i32 @load_GL_GREMEDY_frame_terminator(i64 (i8*)*) #1

declare dso_local i32 @load_GL_ARB_blend_func_extended(i64 (i8*)*) #1

declare dso_local i32 @load_GL_EXT_separate_shader_objects(i64 (i8*)*) #1

declare dso_local i32 @load_GL_NV_texture_multisample(i64 (i8*)*) #1

declare dso_local i32 @load_GL_ARB_shader_objects(i64 (i8*)*) #1

declare dso_local i32 @load_GL_ARB_framebuffer_object(i64 (i8*)*) #1

declare dso_local i32 @load_GL_ATI_envmap_bumpmap(i64 (i8*)*) #1

declare dso_local i32 @load_GL_ATI_map_object_buffer(i64 (i8*)*) #1

declare dso_local i32 @load_GL_ARB_robustness(i64 (i8*)*) #1

declare dso_local i32 @load_GL_NV_pixel_data_range(i64 (i8*)*) #1

declare dso_local i32 @load_GL_EXT_framebuffer_blit(i64 (i8*)*) #1

declare dso_local i32 @load_GL_ARB_gpu_shader_fp64(i64 (i8*)*) #1

declare dso_local i32 @load_GL_EXT_vertex_weighting(i64 (i8*)*) #1

declare dso_local i32 @load_GL_GREMEDY_string_marker(i64 (i8*)*) #1

declare dso_local i32 @load_GL_EXT_subtexture(i64 (i8*)*) #1

declare dso_local i32 @load_GL_NV_evaluators(i64 (i8*)*) #1

declare dso_local i32 @load_GL_SGIS_texture_filter4(i64 (i8*)*) #1

declare dso_local i32 @load_GL_AMD_performance_monitor(i64 (i8*)*) #1

declare dso_local i32 @load_GL_EXT_stencil_clear_tag(i64 (i8*)*) #1

declare dso_local i32 @load_GL_NV_present_video(i64 (i8*)*) #1

declare dso_local i32 @load_GL_EXT_gpu_program_parameters(i64 (i8*)*) #1

declare dso_local i32 @load_GL_ARB_draw_elements_base_vertex(i64 (i8*)*) #1

declare dso_local i32 @load_GL_NV_transform_feedback(i64 (i8*)*) #1

declare dso_local i32 @load_GL_NV_fragment_program(i64 (i8*)*) #1

declare dso_local i32 @load_GL_AMD_stencil_operation_extended(i64 (i8*)*) #1

declare dso_local i32 @load_GL_ARB_instanced_arrays(i64 (i8*)*) #1

declare dso_local i32 @load_GL_EXT_polygon_offset(i64 (i8*)*) #1

declare dso_local i32 @load_GL_AMD_sparse_texture(i64 (i8*)*) #1

declare dso_local i32 @load_GL_NV_fence(i64 (i8*)*) #1

declare dso_local i32 @load_GL_ARB_texture_buffer_range(i64 (i8*)*) #1

declare dso_local i32 @load_GL_SUN_mesh_array(i64 (i8*)*) #1

declare dso_local i32 @load_GL_ARB_vertex_attrib_binding(i64 (i8*)*) #1

declare dso_local i32 @load_GL_ARB_framebuffer_no_attachments(i64 (i8*)*) #1

declare dso_local i32 @load_GL_ARB_cl_event(i64 (i8*)*) #1

declare dso_local i32 @load_GL_OES_single_precision(i64 (i8*)*) #1

declare dso_local i32 @load_GL_NV_primitive_restart(i64 (i8*)*) #1

declare dso_local i32 @load_GL_SUN_global_alpha(i64 (i8*)*) #1

declare dso_local i32 @load_GL_EXT_texture_object(i64 (i8*)*) #1

declare dso_local i32 @load_GL_AMD_name_gen_delete(i64 (i8*)*) #1

declare dso_local i32 @load_GL_ARB_buffer_storage(i64 (i8*)*) #1

declare dso_local i32 @load_GL_APPLE_vertex_program_evaluators(i64 (i8*)*) #1

declare dso_local i32 @load_GL_ARB_multi_bind(i64 (i8*)*) #1

declare dso_local i32 @load_GL_SGIX_list_priority(i64 (i8*)*) #1

declare dso_local i32 @load_GL_NV_vertex_buffer_unified_memory(i64 (i8*)*) #1

declare dso_local i32 @load_GL_NV_blend_equation_advanced(i64 (i8*)*) #1

declare dso_local i32 @load_GL_SGIS_sharpen_texture(i64 (i8*)*) #1

declare dso_local i32 @load_GL_ARB_vertex_program(i64 (i8*)*) #1

declare dso_local i32 @load_GL_ARB_vertex_buffer_object(i64 (i8*)*) #1

declare dso_local i32 @load_GL_NV_vertex_array_range(i64 (i8*)*) #1

declare dso_local i32 @load_GL_SGIX_fragment_lighting(i64 (i8*)*) #1

declare dso_local i32 @load_GL_NV_framebuffer_multisample_coverage(i64 (i8*)*) #1

declare dso_local i32 @load_GL_EXT_timer_query(i64 (i8*)*) #1

declare dso_local i32 @load_GL_NV_bindless_texture(i64 (i8*)*) #1

declare dso_local i32 @load_GL_KHR_debug(i64 (i8*)*) #1

declare dso_local i32 @load_GL_ATI_vertex_attrib_array_object(i64 (i8*)*) #1

declare dso_local i32 @load_GL_EXT_geometry_shader4(i64 (i8*)*) #1

declare dso_local i32 @load_GL_EXT_bindable_uniform(i64 (i8*)*) #1

declare dso_local i32 @load_GL_ATI_element_array(i64 (i8*)*) #1

declare dso_local i32 @load_GL_SGIX_reference_plane(i64 (i8*)*) #1

declare dso_local i32 @load_GL_EXT_stencil_two_side(i64 (i8*)*) #1

declare dso_local i32 @load_GL_NV_explicit_multisample(i64 (i8*)*) #1

declare dso_local i32 @load_GL_IBM_static_data(i64 (i8*)*) #1

declare dso_local i32 @load_GL_EXT_texture_perturb_normal(i64 (i8*)*) #1

declare dso_local i32 @load_GL_EXT_point_parameters(i64 (i8*)*) #1

declare dso_local i32 @load_GL_PGI_misc_hints(i64 (i8*)*) #1

declare dso_local i32 @load_GL_ARB_vertex_shader(i64 (i8*)*) #1

declare dso_local i32 @load_GL_ARB_tessellation_shader(i64 (i8*)*) #1

declare dso_local i32 @load_GL_EXT_draw_buffers2(i64 (i8*)*) #1

declare dso_local i32 @load_GL_ARB_vertex_attrib_64bit(i64 (i8*)*) #1

declare dso_local i32 @load_GL_AMD_interleaved_elements(i64 (i8*)*) #1

declare dso_local i32 @load_GL_ARB_fragment_program(i64 (i8*)*) #1

declare dso_local i32 @load_GL_ARB_texture_storage(i64 (i8*)*) #1

declare dso_local i32 @load_GL_ARB_copy_image(i64 (i8*)*) #1

declare dso_local i32 @load_GL_SGIS_pixel_texture(i64 (i8*)*) #1

declare dso_local i32 @load_GL_SGIX_instruments(i64 (i8*)*) #1

declare dso_local i32 @load_GL_ARB_shader_storage_buffer_object(i64 (i8*)*) #1

declare dso_local i32 @load_GL_EXT_blend_minmax(i64 (i8*)*) #1

declare dso_local i32 @load_GL_ARB_base_instance(i64 (i8*)*) #1

declare dso_local i32 @load_GL_EXT_texture_integer(i64 (i8*)*) #1

declare dso_local i32 @load_GL_ARB_texture_multisample(i64 (i8*)*) #1

declare dso_local i32 @load_GL_AMD_vertex_shader_tessellator(i64 (i8*)*) #1

declare dso_local i32 @load_GL_ARB_invalidate_subdata(i64 (i8*)*) #1

declare dso_local i32 @load_GL_EXT_index_material(i64 (i8*)*) #1

declare dso_local i32 @load_GL_INTEL_parallel_arrays(i64 (i8*)*) #1

declare dso_local i32 @load_GL_ATI_draw_buffers(i64 (i8*)*) #1

declare dso_local i32 @load_GL_SGIX_pixel_texture(i64 (i8*)*) #1

declare dso_local i32 @load_GL_ARB_timer_query(i64 (i8*)*) #1

declare dso_local i32 @load_GL_NV_parameter_buffer_object(i64 (i8*)*) #1

declare dso_local i32 @load_GL_ARB_uniform_buffer_object(i64 (i8*)*) #1

declare dso_local i32 @load_GL_NV_transform_feedback2(i64 (i8*)*) #1

declare dso_local i32 @load_GL_EXT_blend_color(i64 (i8*)*) #1

declare dso_local i32 @load_GL_EXT_histogram(i64 (i8*)*) #1

declare dso_local i32 @load_GL_SGIS_point_parameters(i64 (i8*)*) #1

declare dso_local i32 @load_GL_EXT_direct_state_access(i64 (i8*)*) #1

declare dso_local i32 @load_GL_AMD_sample_positions(i64 (i8*)*) #1

declare dso_local i32 @load_GL_NV_vertex_program(i64 (i8*)*) #1

declare dso_local i32 @load_GL_NVX_conditional_render(i64 (i8*)*) #1

declare dso_local i32 @load_GL_EXT_vertex_shader(i64 (i8*)*) #1

declare dso_local i32 @load_GL_EXT_blend_func_separate(i64 (i8*)*) #1

declare dso_local i32 @load_GL_APPLE_fence(i64 (i8*)*) #1

declare dso_local i32 @load_GL_OES_byte_coordinates(i64 (i8*)*) #1

declare dso_local i32 @load_GL_ARB_transpose_matrix(i64 (i8*)*) #1

declare dso_local i32 @load_GL_ARB_provoking_vertex(i64 (i8*)*) #1

declare dso_local i32 @load_GL_EXT_fog_coord(i64 (i8*)*) #1

declare dso_local i32 @load_GL_EXT_vertex_array(i64 (i8*)*) #1

declare dso_local i32 @load_GL_EXT_blend_equation_separate(i64 (i8*)*) #1

declare dso_local i32 @load_GL_ARB_multi_draw_indirect(i64 (i8*)*) #1

declare dso_local i32 @load_GL_NV_copy_image(i64 (i8*)*) #1

declare dso_local i32 @load_GL_ARB_transform_feedback2(i64 (i8*)*) #1

declare dso_local i32 @load_GL_ARB_transform_feedback3(i64 (i8*)*) #1

declare dso_local i32 @load_GL_EXT_debug_marker(i64 (i8*)*) #1

declare dso_local i32 @load_GL_EXT_pixel_transform(i64 (i8*)*) #1

declare dso_local i32 @load_GL_ATI_fragment_shader(i64 (i8*)*) #1

declare dso_local i32 @load_GL_ARB_vertex_array_object(i64 (i8*)*) #1

declare dso_local i32 @load_GL_SUN_triangle_list(i64 (i8*)*) #1

declare dso_local i32 @load_GL_ARB_transform_feedback_instanced(i64 (i8*)*) #1

declare dso_local i32 @load_GL_SGIX_async(i64 (i8*)*) #1

declare dso_local i32 @load_GL_INTEL_performance_query(i64 (i8*)*) #1

declare dso_local i32 @load_GL_NV_gpu_shader5(i64 (i8*)*) #1

declare dso_local i32 @load_GL_ARB_ES2_compatibility(i64 (i8*)*) #1

declare dso_local i32 @load_GL_ARB_indirect_parameters(i64 (i8*)*) #1

declare dso_local i32 @load_GL_NV_half_float(i64 (i8*)*) #1

declare dso_local i32 @load_GL_EXT_coordinate_frame(i64 (i8*)*) #1

declare dso_local i32 @load_GL_EXT_compiled_vertex_array(i64 (i8*)*) #1

declare dso_local i32 @load_GL_NV_depth_buffer_float(i64 (i8*)*) #1

declare dso_local i32 @load_GL_NV_occlusion_query(i64 (i8*)*) #1

declare dso_local i32 @load_GL_APPLE_flush_buffer_range(i64 (i8*)*) #1

declare dso_local i32 @load_GL_ARB_imaging(i64 (i8*)*) #1

declare dso_local i32 @load_GL_ARB_draw_buffers_blend(i64 (i8*)*) #1

declare dso_local i32 @load_GL_ARB_clear_buffer_object(i64 (i8*)*) #1

declare dso_local i32 @load_GL_ARB_multisample(i64 (i8*)*) #1

declare dso_local i32 @load_GL_EXT_debug_label(i64 (i8*)*) #1

declare dso_local i32 @load_GL_ARB_sample_shading(i64 (i8*)*) #1

declare dso_local i32 @load_GL_INTEL_map_texture(i64 (i8*)*) #1

declare dso_local i32 @load_GL_ARB_compute_shader(i64 (i8*)*) #1

declare dso_local i32 @load_GL_IBM_vertex_array_lists(i64 (i8*)*) #1

declare dso_local i32 @load_GL_ARB_color_buffer_float(i64 (i8*)*) #1

declare dso_local i32 @load_GL_ARB_bindless_texture(i64 (i8*)*) #1

declare dso_local i32 @load_GL_ARB_window_pos(i64 (i8*)*) #1

declare dso_local i32 @load_GL_ARB_internalformat_query(i64 (i8*)*) #1

declare dso_local i32 @load_GL_EXT_shader_image_load_store(i64 (i8*)*) #1

declare dso_local i32 @load_GL_EXT_copy_texture(i64 (i8*)*) #1

declare dso_local i32 @load_GL_NV_register_combiners2(i64 (i8*)*) #1

declare dso_local i32 @load_GL_NV_draw_texture(i64 (i8*)*) #1

declare dso_local i32 @load_GL_EXT_draw_instanced(i64 (i8*)*) #1

declare dso_local i32 @load_GL_ARB_viewport_array(i64 (i8*)*) #1

declare dso_local i32 @load_GL_ARB_separate_shader_objects(i64 (i8*)*) #1

declare dso_local i32 @load_GL_EXT_depth_bounds_test(i64 (i8*)*) #1

declare dso_local i32 @load_GL_HP_image_transform(i64 (i8*)*) #1

declare dso_local i32 @load_GL_NV_video_capture(i64 (i8*)*) #1

declare dso_local i32 @load_GL_ARB_sampler_objects(i64 (i8*)*) #1

declare dso_local i32 @load_GL_ARB_matrix_palette(i64 (i8*)*) #1

declare dso_local i32 @load_GL_SGIS_texture_color_mask(i64 (i8*)*) #1

declare dso_local i32 @load_GL_ARB_texture_compression(i64 (i8*)*) #1

declare dso_local i32 @load_GL_ARB_shader_subroutine(i64 (i8*)*) #1

declare dso_local i32 @load_GL_ARB_texture_storage_multisample(i64 (i8*)*) #1

declare dso_local i32 @load_GL_EXT_vertex_attrib_64bit(i64 (i8*)*) #1

declare dso_local i32 @load_GL_OES_query_matrix(i64 (i8*)*) #1

declare dso_local i32 @load_GL_APPLE_texture_range(i64 (i8*)*) #1

declare dso_local i32 @load_GL_ARB_copy_buffer(i64 (i8*)*) #1

declare dso_local i32 @load_GL_APPLE_object_purgeable(i64 (i8*)*) #1

declare dso_local i32 @load_GL_ARB_occlusion_query(i64 (i8*)*) #1

declare dso_local i32 @load_GL_SGI_color_table(i64 (i8*)*) #1

declare dso_local i32 @load_GL_EXT_gpu_shader4(i64 (i8*)*) #1

declare dso_local i32 @load_GL_NV_geometry_program4(i64 (i8*)*) #1

declare dso_local i32 @load_GL_AMD_debug_output(i64 (i8*)*) #1

declare dso_local i32 @load_GL_ARB_multitexture(i64 (i8*)*) #1

declare dso_local i32 @load_GL_SGIX_polynomial_ffd(i64 (i8*)*) #1

declare dso_local i32 @load_GL_EXT_provoking_vertex(i64 (i8*)*) #1

declare dso_local i32 @load_GL_ARB_point_parameters(i64 (i8*)*) #1

declare dso_local i32 @load_GL_ARB_shader_image_load_store(i64 (i8*)*) #1

declare dso_local i32 @load_GL_SGIX_framezoom(i64 (i8*)*) #1

declare dso_local i32 @load_GL_NV_bindless_multi_draw_indirect(i64 (i8*)*) #1

declare dso_local i32 @load_GL_EXT_transform_feedback(i64 (i8*)*) #1

declare dso_local i32 @load_GL_NV_gpu_program4(i64 (i8*)*) #1

declare dso_local i32 @load_GL_NV_gpu_program5(i64 (i8*)*) #1

declare dso_local i32 @load_GL_ARB_geometry_shader4(i64 (i8*)*) #1

declare dso_local i32 @load_GL_SGIX_sprite(i64 (i8*)*) #1

declare dso_local i32 @load_GL_ARB_get_program_binary(i64 (i8*)*) #1

declare dso_local i32 @load_GL_AMD_occlusion_query_event(i64 (i8*)*) #1

declare dso_local i32 @load_GL_SGIS_multisample(i64 (i8*)*) #1

declare dso_local i32 @load_GL_EXT_framebuffer_object(i64 (i8*)*) #1

declare dso_local i32 @load_GL_APPLE_vertex_array_range(i64 (i8*)*) #1

declare dso_local i32 @load_GL_NV_register_combiners(i64 (i8*)*) #1

declare dso_local i32 @load_GL_ARB_draw_buffers(i64 (i8*)*) #1

declare dso_local i32 @load_GL_ARB_clear_texture(i64 (i8*)*) #1

declare dso_local i32 @load_GL_ARB_debug_output(i64 (i8*)*) #1

declare dso_local i32 @load_GL_EXT_cull_vertex(i64 (i8*)*) #1

declare dso_local i32 @load_GL_IBM_multimode_draw_arrays(i64 (i8*)*) #1

declare dso_local i32 @load_GL_APPLE_vertex_array_object(i64 (i8*)*) #1

declare dso_local i32 @load_GL_SGIS_detail_texture(i64 (i8*)*) #1

declare dso_local i32 @load_GL_ARB_draw_instanced(i64 (i8*)*) #1

declare dso_local i32 @load_GL_ARB_shading_language_include(i64 (i8*)*) #1

declare dso_local i32 @load_GL_INGR_blend_func_separate(i64 (i8*)*) #1

declare dso_local i32 @load_GL_NV_path_rendering(i64 (i8*)*) #1

declare dso_local i32 @load_GL_ATI_vertex_streams(i64 (i8*)*) #1

declare dso_local i32 @load_GL_NV_vdpau_interop(i64 (i8*)*) #1

declare dso_local i32 @load_GL_ARB_internalformat_query2(i64 (i8*)*) #1

declare dso_local i32 @load_GL_SUN_vertex(i64 (i8*)*) #1

declare dso_local i32 @load_GL_SGIX_igloo_interface(i64 (i8*)*) #1

declare dso_local i32 @load_GL_ARB_draw_indirect(i64 (i8*)*) #1

declare dso_local i32 @load_GL_NV_vertex_program4(i64 (i8*)*) #1

declare dso_local i32 @load_GL_SGIS_fog_function(i64 (i8*)*) #1

declare dso_local i32 @load_GL_EXT_x11_sync_object(i64 (i8*)*) #1

declare dso_local i32 @load_GL_ARB_sync(i64 (i8*)*) #1

declare dso_local i32 @load_GL_ARB_compute_variable_group_size(i64 (i8*)*) #1

declare dso_local i32 @load_GL_OES_fixed_point(i64 (i8*)*) #1

declare dso_local i32 @load_GL_EXT_framebuffer_multisample(i64 (i8*)*) #1

declare dso_local i32 @load_GL_SGIS_texture4D(i64 (i8*)*) #1

declare dso_local i32 @load_GL_EXT_texture3D(i64 (i8*)*) #1

declare dso_local i32 @load_GL_EXT_multisample(i64 (i8*)*) #1

declare dso_local i32 @load_GL_EXT_secondary_color(i64 (i8*)*) #1

declare dso_local i32 @load_GL_ATI_vertex_array_object(i64 (i8*)*) #1

declare dso_local i32 @load_GL_ARB_sparse_texture(i64 (i8*)*) #1

declare dso_local i32 @load_GL_EXT_draw_range_elements(i64 (i8*)*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
