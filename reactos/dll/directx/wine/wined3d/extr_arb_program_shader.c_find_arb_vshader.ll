; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_arb_program_shader.c_find_arb_vshader.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_arb_program_shader.c_find_arb_vshader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arb_vs_compiled_shader = type { i32, %struct.arb_vs_compile_args }
%struct.arb_vs_compile_args = type { i32 }
%struct.wined3d_shader = type { %struct.arb_vshader_private*, %struct.wined3d_shader_reg_maps }
%struct.arb_vshader_private = type { i32, i64, i64, %struct.arb_vs_compiled_shader* }
%struct.wined3d_shader_reg_maps = type { i32, i32 }
%struct.wined3d_gl_info = type { i32, i32* }
%struct.wined3d_shader_signature = type { i32 }
%struct.wined3d_string_buffer = type { i32 }

@WINED3D_QUIRK_ARB_VS_OFFSET_LIMIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [74 x i8] c"The difference between the minimum and maximum relative offset is > 127.\0A\00", align 1
@.str.1 = private unnamed_addr constant [68 x i8] c"Which this OpenGL implementation does not support. Try using GLSL.\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"Min: %u, Max: %u.\0A\00", align 1
@NV_VERTEX_PROGRAM2_OPTION = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [53 x i8] c"No matching GL shader found, compiling a new shader\0A\00", align 1
@HEAP_ZERO_MEMORY = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [15 x i8] c"Out of memory\0A\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"Failed to initialize shader buffer.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.arb_vs_compiled_shader* (%struct.wined3d_shader*, %struct.wined3d_gl_info*, i32, %struct.arb_vs_compile_args*, %struct.wined3d_shader_signature*)* @find_arb_vshader to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.arb_vs_compiled_shader* @find_arb_vshader(%struct.wined3d_shader* %0, %struct.wined3d_gl_info* %1, i32 %2, %struct.arb_vs_compile_args* %3, %struct.wined3d_shader_signature* %4) #0 {
  %6 = alloca %struct.arb_vs_compiled_shader*, align 8
  %7 = alloca %struct.wined3d_shader*, align 8
  %8 = alloca %struct.wined3d_gl_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.arb_vs_compile_args*, align 8
  %11 = alloca %struct.wined3d_shader_signature*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.arb_vs_compiled_shader*, align 8
  %15 = alloca %struct.wined3d_string_buffer, align 4
  %16 = alloca %struct.arb_vshader_private*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.wined3d_shader_reg_maps*, align 8
  store %struct.wined3d_shader* %0, %struct.wined3d_shader** %7, align 8
  store %struct.wined3d_gl_info* %1, %struct.wined3d_gl_info** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.arb_vs_compile_args* %3, %struct.arb_vs_compile_args** %10, align 8
  store %struct.wined3d_shader_signature* %4, %struct.wined3d_shader_signature** %11, align 8
  %19 = load %struct.wined3d_shader*, %struct.wined3d_shader** %7, align 8
  %20 = getelementptr inbounds %struct.wined3d_shader, %struct.wined3d_shader* %19, i32 0, i32 0
  %21 = load %struct.arb_vshader_private*, %struct.arb_vshader_private** %20, align 8
  %22 = icmp ne %struct.arb_vshader_private* %21, null
  br i1 %22, label %97, label %23

23:                                               ; preds = %5
  %24 = load %struct.wined3d_shader*, %struct.wined3d_shader** %7, align 8
  %25 = getelementptr inbounds %struct.wined3d_shader, %struct.wined3d_shader* %24, i32 0, i32 1
  store %struct.wined3d_shader_reg_maps* %25, %struct.wined3d_shader_reg_maps** %18, align 8
  %26 = call i8* @heap_alloc_zero(i32 32)
  %27 = bitcast i8* %26 to %struct.arb_vshader_private*
  %28 = load %struct.wined3d_shader*, %struct.wined3d_shader** %7, align 8
  %29 = getelementptr inbounds %struct.wined3d_shader, %struct.wined3d_shader* %28, i32 0, i32 0
  store %struct.arb_vshader_private* %27, %struct.arb_vshader_private** %29, align 8
  %30 = load %struct.wined3d_shader*, %struct.wined3d_shader** %7, align 8
  %31 = getelementptr inbounds %struct.wined3d_shader, %struct.wined3d_shader* %30, i32 0, i32 0
  %32 = load %struct.arb_vshader_private*, %struct.arb_vshader_private** %31, align 8
  store %struct.arb_vshader_private* %32, %struct.arb_vshader_private** %16, align 8
  %33 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %8, align 8
  %34 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @WINED3D_QUIRK_ARB_VS_OFFSET_LIMIT, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %96

39:                                               ; preds = %23
  %40 = load %struct.wined3d_shader_reg_maps*, %struct.wined3d_shader_reg_maps** %18, align 8
  %41 = getelementptr inbounds %struct.wined3d_shader_reg_maps, %struct.wined3d_shader_reg_maps* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.wined3d_shader_reg_maps*, %struct.wined3d_shader_reg_maps** %18, align 8
  %44 = getelementptr inbounds %struct.wined3d_shader_reg_maps, %struct.wined3d_shader_reg_maps* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = icmp sle i32 %42, %45
  br i1 %46, label %47, label %96

47:                                               ; preds = %39
  %48 = load %struct.wined3d_shader_reg_maps*, %struct.wined3d_shader_reg_maps** %18, align 8
  %49 = getelementptr inbounds %struct.wined3d_shader_reg_maps, %struct.wined3d_shader_reg_maps* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.wined3d_shader_reg_maps*, %struct.wined3d_shader_reg_maps** %18, align 8
  %52 = getelementptr inbounds %struct.wined3d_shader_reg_maps, %struct.wined3d_shader_reg_maps* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = sub nsw i32 %50, %53
  %55 = icmp sgt i32 %54, 127
  br i1 %55, label %56, label %66

56:                                               ; preds = %47
  %57 = call i32 (i8*, ...) @FIXME(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0))
  %58 = call i32 (i8*, ...) @FIXME(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.1, i64 0, i64 0))
  %59 = load %struct.wined3d_shader_reg_maps*, %struct.wined3d_shader_reg_maps** %18, align 8
  %60 = getelementptr inbounds %struct.wined3d_shader_reg_maps, %struct.wined3d_shader_reg_maps* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.wined3d_shader_reg_maps*, %struct.wined3d_shader_reg_maps** %18, align 8
  %63 = getelementptr inbounds %struct.wined3d_shader_reg_maps, %struct.wined3d_shader_reg_maps* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i32 (i8*, ...) @FIXME(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %61, i32 %64)
  br label %95

66:                                               ; preds = %47
  %67 = load %struct.wined3d_shader_reg_maps*, %struct.wined3d_shader_reg_maps** %18, align 8
  %68 = getelementptr inbounds %struct.wined3d_shader_reg_maps, %struct.wined3d_shader_reg_maps* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.wined3d_shader_reg_maps*, %struct.wined3d_shader_reg_maps** %18, align 8
  %71 = getelementptr inbounds %struct.wined3d_shader_reg_maps, %struct.wined3d_shader_reg_maps* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = sub nsw i32 %69, %72
  %74 = icmp sgt i32 %73, 63
  br i1 %74, label %75, label %82

75:                                               ; preds = %66
  %76 = load %struct.wined3d_shader_reg_maps*, %struct.wined3d_shader_reg_maps** %18, align 8
  %77 = getelementptr inbounds %struct.wined3d_shader_reg_maps, %struct.wined3d_shader_reg_maps* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = add nsw i32 %78, 63
  %80 = load %struct.arb_vshader_private*, %struct.arb_vshader_private** %16, align 8
  %81 = getelementptr inbounds %struct.arb_vshader_private, %struct.arb_vshader_private* %80, i32 0, i32 0
  store i32 %79, i32* %81, align 8
  br label %94

82:                                               ; preds = %66
  %83 = load %struct.wined3d_shader_reg_maps*, %struct.wined3d_shader_reg_maps** %18, align 8
  %84 = getelementptr inbounds %struct.wined3d_shader_reg_maps, %struct.wined3d_shader_reg_maps* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = icmp sgt i32 %85, 63
  br i1 %86, label %87, label %93

87:                                               ; preds = %82
  %88 = load %struct.wined3d_shader_reg_maps*, %struct.wined3d_shader_reg_maps** %18, align 8
  %89 = getelementptr inbounds %struct.wined3d_shader_reg_maps, %struct.wined3d_shader_reg_maps* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.arb_vshader_private*, %struct.arb_vshader_private** %16, align 8
  %92 = getelementptr inbounds %struct.arb_vshader_private, %struct.arb_vshader_private* %91, i32 0, i32 0
  store i32 %90, i32* %92, align 8
  br label %93

93:                                               ; preds = %87, %82
  br label %94

94:                                               ; preds = %93, %75
  br label %95

95:                                               ; preds = %94, %56
  br label %96

96:                                               ; preds = %95, %39, %23
  br label %97

97:                                               ; preds = %96, %5
  %98 = load %struct.wined3d_shader*, %struct.wined3d_shader** %7, align 8
  %99 = getelementptr inbounds %struct.wined3d_shader, %struct.wined3d_shader* %98, i32 0, i32 0
  %100 = load %struct.arb_vshader_private*, %struct.arb_vshader_private** %99, align 8
  store %struct.arb_vshader_private* %100, %struct.arb_vshader_private** %16, align 8
  store i64 0, i64* %12, align 8
  br label %101

101:                                              ; preds = %131, %97
  %102 = load i64, i64* %12, align 8
  %103 = load %struct.arb_vshader_private*, %struct.arb_vshader_private** %16, align 8
  %104 = getelementptr inbounds %struct.arb_vshader_private, %struct.arb_vshader_private* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = icmp ult i64 %102, %105
  br i1 %106, label %107, label %134

107:                                              ; preds = %101
  %108 = load %struct.arb_vshader_private*, %struct.arb_vshader_private** %16, align 8
  %109 = getelementptr inbounds %struct.arb_vshader_private, %struct.arb_vshader_private* %108, i32 0, i32 3
  %110 = load %struct.arb_vs_compiled_shader*, %struct.arb_vs_compiled_shader** %109, align 8
  %111 = load i64, i64* %12, align 8
  %112 = getelementptr inbounds %struct.arb_vs_compiled_shader, %struct.arb_vs_compiled_shader* %110, i64 %111
  %113 = getelementptr inbounds %struct.arb_vs_compiled_shader, %struct.arb_vs_compiled_shader* %112, i32 0, i32 1
  %114 = load %struct.arb_vs_compile_args*, %struct.arb_vs_compile_args** %10, align 8
  %115 = load i32, i32* %9, align 4
  %116 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %8, align 8
  %117 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %116, i32 0, i32 1
  %118 = load i32*, i32** %117, align 8
  %119 = load i64, i64* @NV_VERTEX_PROGRAM2_OPTION, align 8
  %120 = getelementptr inbounds i32, i32* %118, i64 %119
  %121 = load i32, i32* %120, align 4
  %122 = call i64 @vs_args_equal(%struct.arb_vs_compile_args* %113, %struct.arb_vs_compile_args* %114, i32 %115, i32 %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %130

124:                                              ; preds = %107
  %125 = load %struct.arb_vshader_private*, %struct.arb_vshader_private** %16, align 8
  %126 = getelementptr inbounds %struct.arb_vshader_private, %struct.arb_vshader_private* %125, i32 0, i32 3
  %127 = load %struct.arb_vs_compiled_shader*, %struct.arb_vs_compiled_shader** %126, align 8
  %128 = load i64, i64* %12, align 8
  %129 = getelementptr inbounds %struct.arb_vs_compiled_shader, %struct.arb_vs_compiled_shader* %127, i64 %128
  store %struct.arb_vs_compiled_shader* %129, %struct.arb_vs_compiled_shader** %6, align 8
  br label %234

130:                                              ; preds = %107
  br label %131

131:                                              ; preds = %130
  %132 = load i64, i64* %12, align 8
  %133 = add i64 %132, 1
  store i64 %133, i64* %12, align 8
  br label %101

134:                                              ; preds = %101
  %135 = call i32 @TRACE(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0))
  %136 = load %struct.arb_vshader_private*, %struct.arb_vshader_private** %16, align 8
  %137 = getelementptr inbounds %struct.arb_vshader_private, %struct.arb_vshader_private* %136, i32 0, i32 2
  %138 = load i64, i64* %137, align 8
  %139 = load %struct.arb_vshader_private*, %struct.arb_vshader_private** %16, align 8
  %140 = getelementptr inbounds %struct.arb_vshader_private, %struct.arb_vshader_private* %139, i32 0, i32 1
  %141 = load i64, i64* %140, align 8
  %142 = icmp eq i64 %138, %141
  br i1 %142, label %143, label %187

143:                                              ; preds = %134
  %144 = load %struct.arb_vshader_private*, %struct.arb_vshader_private** %16, align 8
  %145 = getelementptr inbounds %struct.arb_vshader_private, %struct.arb_vshader_private* %144, i32 0, i32 1
  %146 = load i64, i64* %145, align 8
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %171

148:                                              ; preds = %143
  %149 = load %struct.arb_vshader_private*, %struct.arb_vshader_private** %16, align 8
  %150 = getelementptr inbounds %struct.arb_vshader_private, %struct.arb_vshader_private* %149, i32 0, i32 2
  %151 = load i64, i64* %150, align 8
  %152 = load %struct.arb_vshader_private*, %struct.arb_vshader_private** %16, align 8
  %153 = getelementptr inbounds %struct.arb_vshader_private, %struct.arb_vshader_private* %152, i32 0, i32 2
  %154 = load i64, i64* %153, align 8
  %155 = udiv i64 %154, 2
  %156 = trunc i64 %155 to i32
  %157 = call i32 @max(i32 1, i32 %156)
  %158 = sext i32 %157 to i64
  %159 = add i64 %151, %158
  %160 = trunc i64 %159 to i32
  store i32 %160, i32* %13, align 4
  %161 = call i32 (...) @GetProcessHeap()
  %162 = load i32, i32* @HEAP_ZERO_MEMORY, align 4
  %163 = load %struct.arb_vshader_private*, %struct.arb_vshader_private** %16, align 8
  %164 = getelementptr inbounds %struct.arb_vshader_private, %struct.arb_vshader_private* %163, i32 0, i32 3
  %165 = load %struct.arb_vs_compiled_shader*, %struct.arb_vs_compiled_shader** %164, align 8
  %166 = load i32, i32* %13, align 4
  %167 = sext i32 %166 to i64
  %168 = mul i64 %167, 8
  %169 = trunc i64 %168 to i32
  %170 = call %struct.arb_vs_compiled_shader* @HeapReAlloc(i32 %161, i32 %162, %struct.arb_vs_compiled_shader* %165, i32 %169)
  store %struct.arb_vs_compiled_shader* %170, %struct.arb_vs_compiled_shader** %14, align 8
  br label %174

171:                                              ; preds = %143
  %172 = call i8* @heap_alloc_zero(i32 8)
  %173 = bitcast i8* %172 to %struct.arb_vs_compiled_shader*
  store %struct.arb_vs_compiled_shader* %173, %struct.arb_vs_compiled_shader** %14, align 8
  store i32 1, i32* %13, align 4
  br label %174

174:                                              ; preds = %171, %148
  %175 = load %struct.arb_vs_compiled_shader*, %struct.arb_vs_compiled_shader** %14, align 8
  %176 = icmp ne %struct.arb_vs_compiled_shader* %175, null
  br i1 %176, label %179, label %177

177:                                              ; preds = %174
  %178 = call i32 @ERR(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  store %struct.arb_vs_compiled_shader* null, %struct.arb_vs_compiled_shader** %6, align 8
  br label %234

179:                                              ; preds = %174
  %180 = load %struct.arb_vs_compiled_shader*, %struct.arb_vs_compiled_shader** %14, align 8
  %181 = load %struct.arb_vshader_private*, %struct.arb_vshader_private** %16, align 8
  %182 = getelementptr inbounds %struct.arb_vshader_private, %struct.arb_vshader_private* %181, i32 0, i32 3
  store %struct.arb_vs_compiled_shader* %180, %struct.arb_vs_compiled_shader** %182, align 8
  %183 = load i32, i32* %13, align 4
  %184 = sext i32 %183 to i64
  %185 = load %struct.arb_vshader_private*, %struct.arb_vshader_private** %16, align 8
  %186 = getelementptr inbounds %struct.arb_vshader_private, %struct.arb_vshader_private* %185, i32 0, i32 2
  store i64 %184, i64* %186, align 8
  br label %187

187:                                              ; preds = %179, %134
  %188 = load %struct.arb_vshader_private*, %struct.arb_vshader_private** %16, align 8
  %189 = getelementptr inbounds %struct.arb_vshader_private, %struct.arb_vshader_private* %188, i32 0, i32 3
  %190 = load %struct.arb_vs_compiled_shader*, %struct.arb_vs_compiled_shader** %189, align 8
  %191 = load %struct.arb_vshader_private*, %struct.arb_vshader_private** %16, align 8
  %192 = getelementptr inbounds %struct.arb_vshader_private, %struct.arb_vshader_private* %191, i32 0, i32 1
  %193 = load i64, i64* %192, align 8
  %194 = getelementptr inbounds %struct.arb_vs_compiled_shader, %struct.arb_vs_compiled_shader* %190, i64 %193
  %195 = getelementptr inbounds %struct.arb_vs_compiled_shader, %struct.arb_vs_compiled_shader* %194, i32 0, i32 1
  %196 = load %struct.arb_vs_compile_args*, %struct.arb_vs_compile_args** %10, align 8
  %197 = bitcast %struct.arb_vs_compile_args* %195 to i8*
  %198 = bitcast %struct.arb_vs_compile_args* %196 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %197, i8* align 4 %198, i64 4, i1 false)
  %199 = call i32 @string_buffer_init(%struct.wined3d_string_buffer* %15)
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %203, label %201

201:                                              ; preds = %187
  %202 = call i32 @ERR(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0))
  store %struct.arb_vs_compiled_shader* null, %struct.arb_vs_compiled_shader** %6, align 8
  br label %234

203:                                              ; preds = %187
  %204 = load %struct.wined3d_shader*, %struct.wined3d_shader** %7, align 8
  %205 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %8, align 8
  %206 = load %struct.arb_vs_compile_args*, %struct.arb_vs_compile_args** %10, align 8
  %207 = load %struct.arb_vshader_private*, %struct.arb_vshader_private** %16, align 8
  %208 = getelementptr inbounds %struct.arb_vshader_private, %struct.arb_vshader_private* %207, i32 0, i32 3
  %209 = load %struct.arb_vs_compiled_shader*, %struct.arb_vs_compiled_shader** %208, align 8
  %210 = load %struct.arb_vshader_private*, %struct.arb_vshader_private** %16, align 8
  %211 = getelementptr inbounds %struct.arb_vshader_private, %struct.arb_vshader_private* %210, i32 0, i32 1
  %212 = load i64, i64* %211, align 8
  %213 = getelementptr inbounds %struct.arb_vs_compiled_shader, %struct.arb_vs_compiled_shader* %209, i64 %212
  %214 = load %struct.wined3d_shader_signature*, %struct.wined3d_shader_signature** %11, align 8
  %215 = call i32 @shader_arb_generate_vshader(%struct.wined3d_shader* %204, %struct.wined3d_gl_info* %205, %struct.wined3d_string_buffer* %15, %struct.arb_vs_compile_args* %206, %struct.arb_vs_compiled_shader* %213, %struct.wined3d_shader_signature* %214)
  store i32 %215, i32* %17, align 4
  %216 = call i32 @string_buffer_free(%struct.wined3d_string_buffer* %15)
  %217 = load i32, i32* %17, align 4
  %218 = load %struct.arb_vshader_private*, %struct.arb_vshader_private** %16, align 8
  %219 = getelementptr inbounds %struct.arb_vshader_private, %struct.arb_vshader_private* %218, i32 0, i32 3
  %220 = load %struct.arb_vs_compiled_shader*, %struct.arb_vs_compiled_shader** %219, align 8
  %221 = load %struct.arb_vshader_private*, %struct.arb_vshader_private** %16, align 8
  %222 = getelementptr inbounds %struct.arb_vshader_private, %struct.arb_vshader_private* %221, i32 0, i32 1
  %223 = load i64, i64* %222, align 8
  %224 = getelementptr inbounds %struct.arb_vs_compiled_shader, %struct.arb_vs_compiled_shader* %220, i64 %223
  %225 = getelementptr inbounds %struct.arb_vs_compiled_shader, %struct.arb_vs_compiled_shader* %224, i32 0, i32 0
  store i32 %217, i32* %225, align 4
  %226 = load %struct.arb_vshader_private*, %struct.arb_vshader_private** %16, align 8
  %227 = getelementptr inbounds %struct.arb_vshader_private, %struct.arb_vshader_private* %226, i32 0, i32 3
  %228 = load %struct.arb_vs_compiled_shader*, %struct.arb_vs_compiled_shader** %227, align 8
  %229 = load %struct.arb_vshader_private*, %struct.arb_vshader_private** %16, align 8
  %230 = getelementptr inbounds %struct.arb_vshader_private, %struct.arb_vshader_private* %229, i32 0, i32 1
  %231 = load i64, i64* %230, align 8
  %232 = add i64 %231, 1
  store i64 %232, i64* %230, align 8
  %233 = getelementptr inbounds %struct.arb_vs_compiled_shader, %struct.arb_vs_compiled_shader* %228, i64 %231
  store %struct.arb_vs_compiled_shader* %233, %struct.arb_vs_compiled_shader** %6, align 8
  br label %234

234:                                              ; preds = %203, %201, %177, %124
  %235 = load %struct.arb_vs_compiled_shader*, %struct.arb_vs_compiled_shader** %6, align 8
  ret %struct.arb_vs_compiled_shader* %235
}

declare dso_local i8* @heap_alloc_zero(i32) #1

declare dso_local i32 @FIXME(i8*, ...) #1

declare dso_local i64 @vs_args_equal(%struct.arb_vs_compile_args*, %struct.arb_vs_compile_args*, i32, i32) #1

declare dso_local i32 @TRACE(i8*) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local %struct.arb_vs_compiled_shader* @HeapReAlloc(i32, i32, %struct.arb_vs_compiled_shader*, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @ERR(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @string_buffer_init(%struct.wined3d_string_buffer*) #1

declare dso_local i32 @shader_arb_generate_vshader(%struct.wined3d_shader*, %struct.wined3d_gl_info*, %struct.wined3d_string_buffer*, %struct.arb_vs_compile_args*, %struct.arb_vs_compiled_shader*, %struct.wined3d_shader_signature*) #1

declare dso_local i32 @string_buffer_free(%struct.wined3d_string_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
