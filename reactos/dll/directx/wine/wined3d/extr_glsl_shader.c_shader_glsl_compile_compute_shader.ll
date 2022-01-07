; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_shader_glsl_compile_compute_shader.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_shader_glsl_compile_compute_shader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shader_glsl_priv = type { i32, %struct.wined3d_string_buffer }
%struct.wined3d_string_buffer = type { i32 }
%struct.wined3d_context = type { %struct.wined3d_gl_info*, %struct.glsl_context_data* }
%struct.wined3d_gl_info = type { i32 }
%struct.glsl_context_data = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { %struct.wined3d_shader* }
%struct.wined3d_shader = type { i32, i32, %struct.glsl_shader_prog_link* }
%struct.glsl_shader_prog_link = type { i32, i64, %struct.TYPE_15__, %struct.TYPE_14__, i64, i64, %struct.TYPE_13__, %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_10__, %struct.wined3d_shader*, i32, %struct.TYPE_9__ }
%struct.TYPE_15__ = type { i32, %struct.wined3d_shader* }
%struct.TYPE_14__ = type { i32*, i64 }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_9__ = type { %struct.glsl_cs_compiled_shader* }
%struct.glsl_cs_compiled_shader = type { %struct.wined3d_shader* }
%struct.glsl_shader_private = type { i32, i64, %struct.TYPE_15__, %struct.TYPE_14__, i64, i64, %struct.TYPE_13__, %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_10__, %struct.wined3d_shader*, i32, %struct.TYPE_9__ }

@.str = private unnamed_addr constant [16 x i8] c"Out of memory.\0A\00", align 1
@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Failed to allocate backend data.\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"Failed to allocate GL shader array.\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"Compiling compute shader %p.\0A\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"Created new GLSL shader program %u.\0A\00", align 1
@.str.5 = private unnamed_addr constant [48 x i8] c"Attaching GLSL shader object %u to program %u.\0A\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"glAttachShader\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"Linking GLSL shader program %u.\0A\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"glUseProgram\00", align 1
@WINED3D_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.shader_glsl_priv*, %struct.wined3d_context*, %struct.wined3d_shader*)* @shader_glsl_compile_compute_shader to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @shader_glsl_compile_compute_shader(%struct.shader_glsl_priv* %0, %struct.wined3d_context* %1, %struct.wined3d_shader* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.shader_glsl_priv*, align 8
  %6 = alloca %struct.wined3d_context*, align 8
  %7 = alloca %struct.wined3d_shader*, align 8
  %8 = alloca %struct.glsl_context_data*, align 8
  %9 = alloca %struct.wined3d_string_buffer*, align 8
  %10 = alloca %struct.wined3d_gl_info*, align 8
  %11 = alloca %struct.glsl_cs_compiled_shader*, align 8
  %12 = alloca %struct.glsl_shader_private*, align 8
  %13 = alloca %struct.glsl_shader_prog_link*, align 8
  %14 = alloca %struct.wined3d_shader*, align 8
  %15 = alloca %struct.wined3d_shader*, align 8
  store %struct.shader_glsl_priv* %0, %struct.shader_glsl_priv** %5, align 8
  store %struct.wined3d_context* %1, %struct.wined3d_context** %6, align 8
  store %struct.wined3d_shader* %2, %struct.wined3d_shader** %7, align 8
  %16 = load %struct.wined3d_context*, %struct.wined3d_context** %6, align 8
  %17 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %16, i32 0, i32 1
  %18 = load %struct.glsl_context_data*, %struct.glsl_context_data** %17, align 8
  store %struct.glsl_context_data* %18, %struct.glsl_context_data** %8, align 8
  %19 = load %struct.shader_glsl_priv*, %struct.shader_glsl_priv** %5, align 8
  %20 = getelementptr inbounds %struct.shader_glsl_priv, %struct.shader_glsl_priv* %19, i32 0, i32 1
  store %struct.wined3d_string_buffer* %20, %struct.wined3d_string_buffer** %9, align 8
  %21 = load %struct.wined3d_context*, %struct.wined3d_context** %6, align 8
  %22 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %21, i32 0, i32 0
  %23 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %22, align 8
  store %struct.wined3d_gl_info* %23, %struct.wined3d_gl_info** %10, align 8
  %24 = call i8* @heap_alloc(i32 120)
  %25 = bitcast i8* %24 to %struct.glsl_shader_prog_link*
  store %struct.glsl_shader_prog_link* %25, %struct.glsl_shader_prog_link** %13, align 8
  %26 = icmp ne %struct.glsl_shader_prog_link* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %3
  %28 = call i32 @ERR(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %29, i32* %4, align 4
  br label %184

30:                                               ; preds = %3
  %31 = call %struct.glsl_shader_prog_link* @heap_alloc_zero(i32 120)
  %32 = load %struct.wined3d_shader*, %struct.wined3d_shader** %7, align 8
  %33 = getelementptr inbounds %struct.wined3d_shader, %struct.wined3d_shader* %32, i32 0, i32 2
  store %struct.glsl_shader_prog_link* %31, %struct.glsl_shader_prog_link** %33, align 8
  %34 = icmp ne %struct.glsl_shader_prog_link* %31, null
  br i1 %34, label %40, label %35

35:                                               ; preds = %30
  %36 = call i32 @ERR(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %37 = load %struct.glsl_shader_prog_link*, %struct.glsl_shader_prog_link** %13, align 8
  %38 = call i32 @heap_free(%struct.glsl_shader_prog_link* %37)
  %39 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %39, i32* %4, align 4
  br label %184

40:                                               ; preds = %30
  %41 = load %struct.wined3d_shader*, %struct.wined3d_shader** %7, align 8
  %42 = getelementptr inbounds %struct.wined3d_shader, %struct.wined3d_shader* %41, i32 0, i32 2
  %43 = load %struct.glsl_shader_prog_link*, %struct.glsl_shader_prog_link** %42, align 8
  %44 = bitcast %struct.glsl_shader_prog_link* %43 to %struct.glsl_shader_private*
  store %struct.glsl_shader_private* %44, %struct.glsl_shader_private** %12, align 8
  %45 = load %struct.glsl_shader_private*, %struct.glsl_shader_private** %12, align 8
  %46 = getelementptr inbounds %struct.glsl_shader_private, %struct.glsl_shader_private* %45, i32 0, i32 12
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 0
  %48 = load %struct.glsl_cs_compiled_shader*, %struct.glsl_cs_compiled_shader** %47, align 8
  store %struct.glsl_cs_compiled_shader* %48, %struct.glsl_cs_compiled_shader** %11, align 8
  %49 = call i8* @heap_alloc(i32 8)
  %50 = bitcast i8* %49 to %struct.glsl_cs_compiled_shader*
  %51 = load %struct.glsl_shader_private*, %struct.glsl_shader_private** %12, align 8
  %52 = getelementptr inbounds %struct.glsl_shader_private, %struct.glsl_shader_private* %51, i32 0, i32 12
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 0
  store %struct.glsl_cs_compiled_shader* %50, %struct.glsl_cs_compiled_shader** %53, align 8
  %54 = icmp ne %struct.glsl_cs_compiled_shader* %50, null
  br i1 %54, label %66, label %55

55:                                               ; preds = %40
  %56 = call i32 @ERR(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  %57 = load %struct.glsl_shader_prog_link*, %struct.glsl_shader_prog_link** %13, align 8
  %58 = call i32 @heap_free(%struct.glsl_shader_prog_link* %57)
  %59 = load %struct.wined3d_shader*, %struct.wined3d_shader** %7, align 8
  %60 = getelementptr inbounds %struct.wined3d_shader, %struct.wined3d_shader* %59, i32 0, i32 2
  %61 = load %struct.glsl_shader_prog_link*, %struct.glsl_shader_prog_link** %60, align 8
  %62 = call i32 @heap_free(%struct.glsl_shader_prog_link* %61)
  %63 = load %struct.wined3d_shader*, %struct.wined3d_shader** %7, align 8
  %64 = getelementptr inbounds %struct.wined3d_shader, %struct.wined3d_shader* %63, i32 0, i32 2
  store %struct.glsl_shader_prog_link* null, %struct.glsl_shader_prog_link** %64, align 8
  %65 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %65, i32* %4, align 4
  br label %184

66:                                               ; preds = %40
  %67 = load %struct.glsl_shader_private*, %struct.glsl_shader_private** %12, align 8
  %68 = getelementptr inbounds %struct.glsl_shader_private, %struct.glsl_shader_private* %67, i32 0, i32 0
  store i32 1, i32* %68, align 8
  %69 = load %struct.glsl_shader_private*, %struct.glsl_shader_private** %12, align 8
  %70 = getelementptr inbounds %struct.glsl_shader_private, %struct.glsl_shader_private* %69, i32 0, i32 12
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 0
  %72 = load %struct.glsl_cs_compiled_shader*, %struct.glsl_cs_compiled_shader** %71, align 8
  store %struct.glsl_cs_compiled_shader* %72, %struct.glsl_cs_compiled_shader** %11, align 8
  %73 = load %struct.wined3d_shader*, %struct.wined3d_shader** %7, align 8
  %74 = call i32 (i8*, %struct.wined3d_shader*, ...) @TRACE(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), %struct.wined3d_shader* %73)
  %75 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %9, align 8
  %76 = call i32 @string_buffer_clear(%struct.wined3d_string_buffer* %75)
  %77 = load %struct.wined3d_context*, %struct.wined3d_context** %6, align 8
  %78 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %9, align 8
  %79 = load %struct.shader_glsl_priv*, %struct.shader_glsl_priv** %5, align 8
  %80 = getelementptr inbounds %struct.shader_glsl_priv, %struct.shader_glsl_priv* %79, i32 0, i32 0
  %81 = load %struct.wined3d_shader*, %struct.wined3d_shader** %7, align 8
  %82 = call %struct.wined3d_shader* @shader_glsl_generate_compute_shader(%struct.wined3d_context* %77, %struct.wined3d_string_buffer* %78, i32* %80, %struct.wined3d_shader* %81)
  store %struct.wined3d_shader* %82, %struct.wined3d_shader** %14, align 8
  %83 = load %struct.wined3d_shader*, %struct.wined3d_shader** %14, align 8
  %84 = load %struct.glsl_cs_compiled_shader*, %struct.glsl_cs_compiled_shader** %11, align 8
  %85 = load %struct.glsl_shader_private*, %struct.glsl_shader_private** %12, align 8
  %86 = getelementptr inbounds %struct.glsl_shader_private, %struct.glsl_shader_private* %85, i32 0, i32 11
  %87 = load i32, i32* %86, align 8
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %86, align 8
  %89 = sext i32 %87 to i64
  %90 = getelementptr inbounds %struct.glsl_cs_compiled_shader, %struct.glsl_cs_compiled_shader* %84, i64 %89
  %91 = getelementptr inbounds %struct.glsl_cs_compiled_shader, %struct.glsl_cs_compiled_shader* %90, i32 0, i32 0
  store %struct.wined3d_shader* %83, %struct.wined3d_shader** %91, align 8
  %92 = call i32 (...) @glCreateProgram()
  %93 = call %struct.wined3d_shader* @GL_EXTCALL(i32 %92)
  store %struct.wined3d_shader* %93, %struct.wined3d_shader** %15, align 8
  %94 = load %struct.wined3d_shader*, %struct.wined3d_shader** %15, align 8
  %95 = call i32 (i8*, %struct.wined3d_shader*, ...) @TRACE(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), %struct.wined3d_shader* %94)
  %96 = load %struct.wined3d_shader*, %struct.wined3d_shader** %15, align 8
  %97 = load %struct.glsl_shader_prog_link*, %struct.glsl_shader_prog_link** %13, align 8
  %98 = getelementptr inbounds %struct.glsl_shader_prog_link, %struct.glsl_shader_prog_link* %97, i32 0, i32 10
  store %struct.wined3d_shader* %96, %struct.wined3d_shader** %98, align 8
  %99 = load %struct.glsl_shader_prog_link*, %struct.glsl_shader_prog_link** %13, align 8
  %100 = getelementptr inbounds %struct.glsl_shader_prog_link, %struct.glsl_shader_prog_link* %99, i32 0, i32 9
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 0
  store i64 0, i64* %101, align 8
  %102 = load %struct.glsl_shader_prog_link*, %struct.glsl_shader_prog_link** %13, align 8
  %103 = getelementptr inbounds %struct.glsl_shader_prog_link, %struct.glsl_shader_prog_link* %102, i32 0, i32 8
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %103, i32 0, i32 0
  store i64 0, i64* %104, align 8
  %105 = load %struct.glsl_shader_prog_link*, %struct.glsl_shader_prog_link** %13, align 8
  %106 = getelementptr inbounds %struct.glsl_shader_prog_link, %struct.glsl_shader_prog_link* %105, i32 0, i32 7
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %106, i32 0, i32 0
  store i64 0, i64* %107, align 8
  %108 = load %struct.glsl_shader_prog_link*, %struct.glsl_shader_prog_link** %13, align 8
  %109 = getelementptr inbounds %struct.glsl_shader_prog_link, %struct.glsl_shader_prog_link* %108, i32 0, i32 6
  %110 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %109, i32 0, i32 0
  store i64 0, i64* %110, align 8
  %111 = load %struct.glsl_shader_prog_link*, %struct.glsl_shader_prog_link** %13, align 8
  %112 = getelementptr inbounds %struct.glsl_shader_prog_link, %struct.glsl_shader_prog_link* %111, i32 0, i32 3
  %113 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %112, i32 0, i32 1
  store i64 0, i64* %113, align 8
  %114 = load %struct.wined3d_shader*, %struct.wined3d_shader** %14, align 8
  %115 = load %struct.glsl_shader_prog_link*, %struct.glsl_shader_prog_link** %13, align 8
  %116 = getelementptr inbounds %struct.glsl_shader_prog_link, %struct.glsl_shader_prog_link* %115, i32 0, i32 2
  %117 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %116, i32 0, i32 1
  store %struct.wined3d_shader* %114, %struct.wined3d_shader** %117, align 8
  %118 = load %struct.glsl_shader_prog_link*, %struct.glsl_shader_prog_link** %13, align 8
  %119 = getelementptr inbounds %struct.glsl_shader_prog_link, %struct.glsl_shader_prog_link* %118, i32 0, i32 5
  store i64 0, i64* %119, align 8
  %120 = load %struct.glsl_shader_prog_link*, %struct.glsl_shader_prog_link** %13, align 8
  %121 = getelementptr inbounds %struct.glsl_shader_prog_link, %struct.glsl_shader_prog_link* %120, i32 0, i32 4
  store i64 0, i64* %121, align 8
  %122 = load %struct.glsl_shader_prog_link*, %struct.glsl_shader_prog_link** %13, align 8
  %123 = getelementptr inbounds %struct.glsl_shader_prog_link, %struct.glsl_shader_prog_link* %122, i32 0, i32 3
  %124 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %123, i32 0, i32 0
  store i32* null, i32** %124, align 8
  %125 = load %struct.shader_glsl_priv*, %struct.shader_glsl_priv** %5, align 8
  %126 = load %struct.glsl_shader_prog_link*, %struct.glsl_shader_prog_link** %13, align 8
  %127 = call i32 @add_glsl_program_entry(%struct.shader_glsl_priv* %125, %struct.glsl_shader_prog_link* %126)
  %128 = load %struct.wined3d_shader*, %struct.wined3d_shader** %14, align 8
  %129 = load %struct.wined3d_shader*, %struct.wined3d_shader** %15, align 8
  %130 = call i32 (i8*, %struct.wined3d_shader*, ...) @TRACE(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.5, i64 0, i64 0), %struct.wined3d_shader* %128, %struct.wined3d_shader* %129)
  %131 = load %struct.wined3d_shader*, %struct.wined3d_shader** %15, align 8
  %132 = load %struct.wined3d_shader*, %struct.wined3d_shader** %14, align 8
  %133 = call i32 @glAttachShader(%struct.wined3d_shader* %131, %struct.wined3d_shader* %132)
  %134 = call %struct.wined3d_shader* @GL_EXTCALL(i32 %133)
  %135 = call i32 @checkGLcall(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0))
  %136 = load %struct.wined3d_shader*, %struct.wined3d_shader** %7, align 8
  %137 = getelementptr inbounds %struct.wined3d_shader, %struct.wined3d_shader* %136, i32 0, i32 1
  %138 = load %struct.glsl_shader_prog_link*, %struct.glsl_shader_prog_link** %13, align 8
  %139 = getelementptr inbounds %struct.glsl_shader_prog_link, %struct.glsl_shader_prog_link* %138, i32 0, i32 2
  %140 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %139, i32 0, i32 0
  %141 = call i32 @list_add_head(i32* %137, i32* %140)
  %142 = load %struct.wined3d_shader*, %struct.wined3d_shader** %15, align 8
  %143 = call i32 (i8*, %struct.wined3d_shader*, ...) @TRACE(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0), %struct.wined3d_shader* %142)
  %144 = load %struct.wined3d_shader*, %struct.wined3d_shader** %15, align 8
  %145 = call i32 @glLinkProgram(%struct.wined3d_shader* %144)
  %146 = call %struct.wined3d_shader* @GL_EXTCALL(i32 %145)
  %147 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %10, align 8
  %148 = load %struct.wined3d_shader*, %struct.wined3d_shader** %15, align 8
  %149 = call i32 @shader_glsl_validate_link(%struct.wined3d_gl_info* %147, %struct.wined3d_shader* %148)
  %150 = load %struct.wined3d_shader*, %struct.wined3d_shader** %15, align 8
  %151 = call i32 @glUseProgram(%struct.wined3d_shader* %150)
  %152 = call %struct.wined3d_shader* @GL_EXTCALL(i32 %151)
  %153 = call i32 @checkGLcall(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0))
  %154 = load %struct.wined3d_context*, %struct.wined3d_context** %6, align 8
  %155 = load %struct.shader_glsl_priv*, %struct.shader_glsl_priv** %5, align 8
  %156 = load %struct.wined3d_shader*, %struct.wined3d_shader** %15, align 8
  %157 = load %struct.wined3d_shader*, %struct.wined3d_shader** %7, align 8
  %158 = call i32 @shader_glsl_load_program_resources(%struct.wined3d_context* %154, %struct.shader_glsl_priv* %155, %struct.wined3d_shader* %156, %struct.wined3d_shader* %157)
  %159 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %10, align 8
  %160 = load %struct.shader_glsl_priv*, %struct.shader_glsl_priv** %5, align 8
  %161 = load %struct.wined3d_shader*, %struct.wined3d_shader** %15, align 8
  %162 = load %struct.wined3d_shader*, %struct.wined3d_shader** %7, align 8
  %163 = getelementptr inbounds %struct.wined3d_shader, %struct.wined3d_shader* %162, i32 0, i32 0
  %164 = call i32 @shader_glsl_load_images(%struct.wined3d_gl_info* %159, %struct.shader_glsl_priv* %160, %struct.wined3d_shader* %161, i32* %163)
  %165 = load %struct.glsl_shader_prog_link*, %struct.glsl_shader_prog_link** %13, align 8
  %166 = getelementptr inbounds %struct.glsl_shader_prog_link, %struct.glsl_shader_prog_link* %165, i32 0, i32 1
  store i64 0, i64* %166, align 8
  %167 = load %struct.glsl_context_data*, %struct.glsl_context_data** %8, align 8
  %168 = getelementptr inbounds %struct.glsl_context_data, %struct.glsl_context_data* %167, i32 0, i32 0
  %169 = load %struct.TYPE_16__*, %struct.TYPE_16__** %168, align 8
  %170 = icmp ne %struct.TYPE_16__* %169, null
  br i1 %170, label %171, label %177

171:                                              ; preds = %66
  %172 = load %struct.glsl_context_data*, %struct.glsl_context_data** %8, align 8
  %173 = getelementptr inbounds %struct.glsl_context_data, %struct.glsl_context_data* %172, i32 0, i32 0
  %174 = load %struct.TYPE_16__*, %struct.TYPE_16__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %174, i32 0, i32 0
  %176 = load %struct.wined3d_shader*, %struct.wined3d_shader** %175, align 8
  br label %178

177:                                              ; preds = %66
  br label %178

178:                                              ; preds = %177, %171
  %179 = phi %struct.wined3d_shader* [ %176, %171 ], [ null, %177 ]
  %180 = call i32 @glUseProgram(%struct.wined3d_shader* %179)
  %181 = call %struct.wined3d_shader* @GL_EXTCALL(i32 %180)
  %182 = call i32 @checkGLcall(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0))
  %183 = load i32, i32* @WINED3D_OK, align 4
  store i32 %183, i32* %4, align 4
  br label %184

184:                                              ; preds = %178, %55, %35, %27
  %185 = load i32, i32* %4, align 4
  ret i32 %185
}

declare dso_local i8* @heap_alloc(i32) #1

declare dso_local i32 @ERR(i8*) #1

declare dso_local %struct.glsl_shader_prog_link* @heap_alloc_zero(i32) #1

declare dso_local i32 @heap_free(%struct.glsl_shader_prog_link*) #1

declare dso_local i32 @TRACE(i8*, %struct.wined3d_shader*, ...) #1

declare dso_local i32 @string_buffer_clear(%struct.wined3d_string_buffer*) #1

declare dso_local %struct.wined3d_shader* @shader_glsl_generate_compute_shader(%struct.wined3d_context*, %struct.wined3d_string_buffer*, i32*, %struct.wined3d_shader*) #1

declare dso_local %struct.wined3d_shader* @GL_EXTCALL(i32) #1

declare dso_local i32 @glCreateProgram(...) #1

declare dso_local i32 @add_glsl_program_entry(%struct.shader_glsl_priv*, %struct.glsl_shader_prog_link*) #1

declare dso_local i32 @glAttachShader(%struct.wined3d_shader*, %struct.wined3d_shader*) #1

declare dso_local i32 @checkGLcall(i8*) #1

declare dso_local i32 @list_add_head(i32*, i32*) #1

declare dso_local i32 @glLinkProgram(%struct.wined3d_shader*) #1

declare dso_local i32 @shader_glsl_validate_link(%struct.wined3d_gl_info*, %struct.wined3d_shader*) #1

declare dso_local i32 @glUseProgram(%struct.wined3d_shader*) #1

declare dso_local i32 @shader_glsl_load_program_resources(%struct.wined3d_context*, %struct.shader_glsl_priv*, %struct.wined3d_shader*, %struct.wined3d_shader*) #1

declare dso_local i32 @shader_glsl_load_images(%struct.wined3d_gl_info*, %struct.shader_glsl_priv*, %struct.wined3d_shader*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
