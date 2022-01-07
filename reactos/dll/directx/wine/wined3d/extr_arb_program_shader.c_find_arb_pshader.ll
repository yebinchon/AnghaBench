; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_arb_program_shader.c_find_arb_pshader.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_arb_program_shader.c_find_arb_pshader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arb_ps_compiled_shader = type { i32, %struct.arb_ps_compile_args }
%struct.arb_ps_compile_args = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.wined3d_shader = type { %struct.arb_pshader_private*, %struct.TYPE_10__, i32, %struct.wined3d_device* }
%struct.arb_pshader_private = type { i32, i32, i32, i64, i64, %struct.arb_ps_compiled_shader* }
%struct.TYPE_10__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.wined3d_device = type { %struct.shader_arb_priv*, %struct.TYPE_6__* }
%struct.shader_arb_priv = type { i32 }
%struct.TYPE_6__ = type { %struct.wined3d_d3d_info, %struct.wined3d_gl_info }
%struct.wined3d_d3d_info = type { %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i64 }
%struct.wined3d_gl_info = type { i32 }
%struct.wined3d_string_buffer = type { i32 }

@.str = private unnamed_addr constant [46 x i8] c"Shader got assigned input signature index %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [53 x i8] c"No matching GL shader found, compiling a new shader\0A\00", align 1
@HEAP_ZERO_MEMORY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"Out of memory\0A\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"Failed to initialize shader buffer.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.arb_ps_compiled_shader* (%struct.wined3d_shader*, %struct.arb_ps_compile_args*)* @find_arb_pshader to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.arb_ps_compiled_shader* @find_arb_pshader(%struct.wined3d_shader* %0, %struct.arb_ps_compile_args* %1) #0 {
  %3 = alloca %struct.arb_ps_compiled_shader*, align 8
  %4 = alloca %struct.wined3d_shader*, align 8
  %5 = alloca %struct.arb_ps_compile_args*, align 8
  %6 = alloca %struct.wined3d_device*, align 8
  %7 = alloca %struct.wined3d_gl_info*, align 8
  %8 = alloca %struct.wined3d_d3d_info*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.arb_ps_compiled_shader*, align 8
  %12 = alloca %struct.wined3d_string_buffer, align 4
  %13 = alloca %struct.arb_pshader_private*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.shader_arb_priv*, align 8
  store %struct.wined3d_shader* %0, %struct.wined3d_shader** %4, align 8
  store %struct.arb_ps_compile_args* %1, %struct.arb_ps_compile_args** %5, align 8
  %16 = load %struct.wined3d_shader*, %struct.wined3d_shader** %4, align 8
  %17 = getelementptr inbounds %struct.wined3d_shader, %struct.wined3d_shader* %16, i32 0, i32 3
  %18 = load %struct.wined3d_device*, %struct.wined3d_device** %17, align 8
  store %struct.wined3d_device* %18, %struct.wined3d_device** %6, align 8
  %19 = load %struct.wined3d_device*, %struct.wined3d_device** %6, align 8
  %20 = getelementptr inbounds %struct.wined3d_device, %struct.wined3d_device* %19, i32 0, i32 1
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 1
  store %struct.wined3d_gl_info* %22, %struct.wined3d_gl_info** %7, align 8
  %23 = load %struct.wined3d_device*, %struct.wined3d_device** %6, align 8
  %24 = getelementptr inbounds %struct.wined3d_device, %struct.wined3d_device* %23, i32 0, i32 1
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  store %struct.wined3d_d3d_info* %26, %struct.wined3d_d3d_info** %8, align 8
  %27 = load %struct.wined3d_shader*, %struct.wined3d_shader** %4, align 8
  %28 = getelementptr inbounds %struct.wined3d_shader, %struct.wined3d_shader* %27, i32 0, i32 0
  %29 = load %struct.arb_pshader_private*, %struct.arb_pshader_private** %28, align 8
  %30 = icmp ne %struct.arb_pshader_private* %29, null
  br i1 %30, label %91, label %31

31:                                               ; preds = %2
  %32 = load %struct.wined3d_device*, %struct.wined3d_device** %6, align 8
  %33 = getelementptr inbounds %struct.wined3d_device, %struct.wined3d_device* %32, i32 0, i32 0
  %34 = load %struct.shader_arb_priv*, %struct.shader_arb_priv** %33, align 8
  store %struct.shader_arb_priv* %34, %struct.shader_arb_priv** %15, align 8
  %35 = call i8* @heap_alloc_zero(i32 40)
  %36 = bitcast i8* %35 to %struct.arb_pshader_private*
  %37 = load %struct.wined3d_shader*, %struct.wined3d_shader** %4, align 8
  %38 = getelementptr inbounds %struct.wined3d_shader, %struct.wined3d_shader* %37, i32 0, i32 0
  store %struct.arb_pshader_private* %36, %struct.arb_pshader_private** %38, align 8
  %39 = load %struct.wined3d_shader*, %struct.wined3d_shader** %4, align 8
  %40 = getelementptr inbounds %struct.wined3d_shader, %struct.wined3d_shader* %39, i32 0, i32 0
  %41 = load %struct.arb_pshader_private*, %struct.arb_pshader_private** %40, align 8
  store %struct.arb_pshader_private* %41, %struct.arb_pshader_private** %13, align 8
  %42 = load %struct.wined3d_shader*, %struct.wined3d_shader** %4, align 8
  %43 = getelementptr inbounds %struct.wined3d_shader, %struct.wined3d_shader* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp eq i32 %46, 1
  %48 = zext i1 %47 to i32
  %49 = load %struct.arb_pshader_private*, %struct.arb_pshader_private** %13, align 8
  %50 = getelementptr inbounds %struct.arb_pshader_private, %struct.arb_pshader_private* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  %51 = load %struct.wined3d_shader*, %struct.wined3d_shader** %4, align 8
  %52 = getelementptr inbounds %struct.wined3d_shader, %struct.wined3d_shader* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = icmp slt i32 %55, 3
  br i1 %56, label %57, label %60

57:                                               ; preds = %31
  %58 = load %struct.arb_pshader_private*, %struct.arb_pshader_private** %13, align 8
  %59 = getelementptr inbounds %struct.arb_pshader_private, %struct.arb_pshader_private* %58, i32 0, i32 1
  store i32 -1, i32* %59, align 4
  br label %67

60:                                               ; preds = %31
  %61 = load %struct.shader_arb_priv*, %struct.shader_arb_priv** %15, align 8
  %62 = load %struct.wined3d_shader*, %struct.wined3d_shader** %4, align 8
  %63 = getelementptr inbounds %struct.wined3d_shader, %struct.wined3d_shader* %62, i32 0, i32 2
  %64 = call i32 @find_input_signature(%struct.shader_arb_priv* %61, i32* %63)
  %65 = load %struct.arb_pshader_private*, %struct.arb_pshader_private** %13, align 8
  %66 = getelementptr inbounds %struct.arb_pshader_private, %struct.arb_pshader_private* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 4
  br label %67

67:                                               ; preds = %60, %57
  %68 = load %struct.arb_pshader_private*, %struct.arb_pshader_private** %13, align 8
  %69 = getelementptr inbounds %struct.arb_pshader_private, %struct.arb_pshader_private* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %70)
  %72 = load %struct.wined3d_d3d_info*, %struct.wined3d_d3d_info** %8, align 8
  %73 = getelementptr inbounds %struct.wined3d_d3d_info, %struct.wined3d_d3d_info* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %87, label %76

76:                                               ; preds = %67
  %77 = load %struct.wined3d_shader*, %struct.wined3d_shader** %4, align 8
  %78 = getelementptr inbounds %struct.wined3d_shader, %struct.wined3d_shader* %77, i32 0, i32 1
  %79 = load %struct.wined3d_d3d_info*, %struct.wined3d_d3d_info** %8, align 8
  %80 = getelementptr inbounds %struct.wined3d_d3d_info, %struct.wined3d_d3d_info* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = sub nsw i64 %82, 1
  %84 = call i32 @shader_find_free_input_register(%struct.TYPE_10__* %78, i64 %83)
  %85 = load %struct.arb_pshader_private*, %struct.arb_pshader_private** %13, align 8
  %86 = getelementptr inbounds %struct.arb_pshader_private, %struct.arb_pshader_private* %85, i32 0, i32 2
  store i32 %84, i32* %86, align 8
  br label %90

87:                                               ; preds = %67
  %88 = load %struct.arb_pshader_private*, %struct.arb_pshader_private** %13, align 8
  %89 = getelementptr inbounds %struct.arb_pshader_private, %struct.arb_pshader_private* %88, i32 0, i32 2
  store i32 -1, i32* %89, align 8
  br label %90

90:                                               ; preds = %87, %76
  br label %91

91:                                               ; preds = %90, %2
  %92 = load %struct.wined3d_shader*, %struct.wined3d_shader** %4, align 8
  %93 = getelementptr inbounds %struct.wined3d_shader, %struct.wined3d_shader* %92, i32 0, i32 0
  %94 = load %struct.arb_pshader_private*, %struct.arb_pshader_private** %93, align 8
  store %struct.arb_pshader_private* %94, %struct.arb_pshader_private** %13, align 8
  store i64 0, i64* %9, align 8
  br label %95

95:                                               ; preds = %118, %91
  %96 = load i64, i64* %9, align 8
  %97 = load %struct.arb_pshader_private*, %struct.arb_pshader_private** %13, align 8
  %98 = getelementptr inbounds %struct.arb_pshader_private, %struct.arb_pshader_private* %97, i32 0, i32 3
  %99 = load i64, i64* %98, align 8
  %100 = icmp ult i64 %96, %99
  br i1 %100, label %101, label %121

101:                                              ; preds = %95
  %102 = load %struct.arb_pshader_private*, %struct.arb_pshader_private** %13, align 8
  %103 = getelementptr inbounds %struct.arb_pshader_private, %struct.arb_pshader_private* %102, i32 0, i32 5
  %104 = load %struct.arb_ps_compiled_shader*, %struct.arb_ps_compiled_shader** %103, align 8
  %105 = load i64, i64* %9, align 8
  %106 = getelementptr inbounds %struct.arb_ps_compiled_shader, %struct.arb_ps_compiled_shader* %104, i64 %105
  %107 = getelementptr inbounds %struct.arb_ps_compiled_shader, %struct.arb_ps_compiled_shader* %106, i32 0, i32 1
  %108 = load %struct.arb_ps_compile_args*, %struct.arb_ps_compile_args** %5, align 8
  %109 = call i32 @memcmp(%struct.arb_ps_compile_args* %107, %struct.arb_ps_compile_args* %108, i32 4)
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %117, label %111

111:                                              ; preds = %101
  %112 = load %struct.arb_pshader_private*, %struct.arb_pshader_private** %13, align 8
  %113 = getelementptr inbounds %struct.arb_pshader_private, %struct.arb_pshader_private* %112, i32 0, i32 5
  %114 = load %struct.arb_ps_compiled_shader*, %struct.arb_ps_compiled_shader** %113, align 8
  %115 = load i64, i64* %9, align 8
  %116 = getelementptr inbounds %struct.arb_ps_compiled_shader, %struct.arb_ps_compiled_shader* %114, i64 %115
  store %struct.arb_ps_compiled_shader* %116, %struct.arb_ps_compiled_shader** %3, align 8
  br label %226

117:                                              ; preds = %101
  br label %118

118:                                              ; preds = %117
  %119 = load i64, i64* %9, align 8
  %120 = add i64 %119, 1
  store i64 %120, i64* %9, align 8
  br label %95

121:                                              ; preds = %95
  %122 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0))
  %123 = load %struct.arb_pshader_private*, %struct.arb_pshader_private** %13, align 8
  %124 = getelementptr inbounds %struct.arb_pshader_private, %struct.arb_pshader_private* %123, i32 0, i32 4
  %125 = load i64, i64* %124, align 8
  %126 = load %struct.arb_pshader_private*, %struct.arb_pshader_private** %13, align 8
  %127 = getelementptr inbounds %struct.arb_pshader_private, %struct.arb_pshader_private* %126, i32 0, i32 3
  %128 = load i64, i64* %127, align 8
  %129 = icmp eq i64 %125, %128
  br i1 %129, label %130, label %174

130:                                              ; preds = %121
  %131 = load %struct.arb_pshader_private*, %struct.arb_pshader_private** %13, align 8
  %132 = getelementptr inbounds %struct.arb_pshader_private, %struct.arb_pshader_private* %131, i32 0, i32 3
  %133 = load i64, i64* %132, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %158

135:                                              ; preds = %130
  %136 = load %struct.arb_pshader_private*, %struct.arb_pshader_private** %13, align 8
  %137 = getelementptr inbounds %struct.arb_pshader_private, %struct.arb_pshader_private* %136, i32 0, i32 4
  %138 = load i64, i64* %137, align 8
  %139 = load %struct.arb_pshader_private*, %struct.arb_pshader_private** %13, align 8
  %140 = getelementptr inbounds %struct.arb_pshader_private, %struct.arb_pshader_private* %139, i32 0, i32 4
  %141 = load i64, i64* %140, align 8
  %142 = udiv i64 %141, 2
  %143 = trunc i64 %142 to i32
  %144 = call i32 @max(i32 1, i32 %143)
  %145 = sext i32 %144 to i64
  %146 = add i64 %138, %145
  %147 = trunc i64 %146 to i32
  store i32 %147, i32* %10, align 4
  %148 = call i32 (...) @GetProcessHeap()
  %149 = load i32, i32* @HEAP_ZERO_MEMORY, align 4
  %150 = load %struct.arb_pshader_private*, %struct.arb_pshader_private** %13, align 8
  %151 = getelementptr inbounds %struct.arb_pshader_private, %struct.arb_pshader_private* %150, i32 0, i32 5
  %152 = load %struct.arb_ps_compiled_shader*, %struct.arb_ps_compiled_shader** %151, align 8
  %153 = load i32, i32* %10, align 4
  %154 = sext i32 %153 to i64
  %155 = mul i64 %154, 8
  %156 = trunc i64 %155 to i32
  %157 = call %struct.arb_ps_compiled_shader* @HeapReAlloc(i32 %148, i32 %149, %struct.arb_ps_compiled_shader* %152, i32 %156)
  store %struct.arb_ps_compiled_shader* %157, %struct.arb_ps_compiled_shader** %11, align 8
  br label %161

158:                                              ; preds = %130
  %159 = call i8* @heap_alloc_zero(i32 8)
  %160 = bitcast i8* %159 to %struct.arb_ps_compiled_shader*
  store %struct.arb_ps_compiled_shader* %160, %struct.arb_ps_compiled_shader** %11, align 8
  store i32 1, i32* %10, align 4
  br label %161

161:                                              ; preds = %158, %135
  %162 = load %struct.arb_ps_compiled_shader*, %struct.arb_ps_compiled_shader** %11, align 8
  %163 = icmp ne %struct.arb_ps_compiled_shader* %162, null
  br i1 %163, label %166, label %164

164:                                              ; preds = %161
  %165 = call i32 @ERR(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  store %struct.arb_ps_compiled_shader* null, %struct.arb_ps_compiled_shader** %3, align 8
  br label %226

166:                                              ; preds = %161
  %167 = load %struct.arb_ps_compiled_shader*, %struct.arb_ps_compiled_shader** %11, align 8
  %168 = load %struct.arb_pshader_private*, %struct.arb_pshader_private** %13, align 8
  %169 = getelementptr inbounds %struct.arb_pshader_private, %struct.arb_pshader_private* %168, i32 0, i32 5
  store %struct.arb_ps_compiled_shader* %167, %struct.arb_ps_compiled_shader** %169, align 8
  %170 = load i32, i32* %10, align 4
  %171 = sext i32 %170 to i64
  %172 = load %struct.arb_pshader_private*, %struct.arb_pshader_private** %13, align 8
  %173 = getelementptr inbounds %struct.arb_pshader_private, %struct.arb_pshader_private* %172, i32 0, i32 4
  store i64 %171, i64* %173, align 8
  br label %174

174:                                              ; preds = %166, %121
  %175 = load %struct.arb_pshader_private*, %struct.arb_pshader_private** %13, align 8
  %176 = getelementptr inbounds %struct.arb_pshader_private, %struct.arb_pshader_private* %175, i32 0, i32 5
  %177 = load %struct.arb_ps_compiled_shader*, %struct.arb_ps_compiled_shader** %176, align 8
  %178 = load %struct.arb_pshader_private*, %struct.arb_pshader_private** %13, align 8
  %179 = getelementptr inbounds %struct.arb_pshader_private, %struct.arb_pshader_private* %178, i32 0, i32 3
  %180 = load i64, i64* %179, align 8
  %181 = getelementptr inbounds %struct.arb_ps_compiled_shader, %struct.arb_ps_compiled_shader* %177, i64 %180
  %182 = getelementptr inbounds %struct.arb_ps_compiled_shader, %struct.arb_ps_compiled_shader* %181, i32 0, i32 1
  %183 = load %struct.arb_ps_compile_args*, %struct.arb_ps_compile_args** %5, align 8
  %184 = bitcast %struct.arb_ps_compile_args* %182 to i8*
  %185 = bitcast %struct.arb_ps_compile_args* %183 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %184, i8* align 4 %185, i64 4, i1 false)
  %186 = load %struct.wined3d_shader*, %struct.wined3d_shader** %4, align 8
  %187 = load %struct.arb_ps_compile_args*, %struct.arb_ps_compile_args** %5, align 8
  %188 = getelementptr inbounds %struct.arb_ps_compile_args, %struct.arb_ps_compile_args* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 4
  %191 = call i32 @pixelshader_update_resource_types(%struct.wined3d_shader* %186, i32 %190)
  %192 = call i32 @string_buffer_init(%struct.wined3d_string_buffer* %12)
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %196, label %194

194:                                              ; preds = %174
  %195 = call i32 @ERR(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  store %struct.arb_ps_compiled_shader* null, %struct.arb_ps_compiled_shader** %3, align 8
  br label %226

196:                                              ; preds = %174
  %197 = load %struct.wined3d_shader*, %struct.wined3d_shader** %4, align 8
  %198 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %7, align 8
  %199 = load %struct.arb_ps_compile_args*, %struct.arb_ps_compile_args** %5, align 8
  %200 = load %struct.arb_pshader_private*, %struct.arb_pshader_private** %13, align 8
  %201 = getelementptr inbounds %struct.arb_pshader_private, %struct.arb_pshader_private* %200, i32 0, i32 5
  %202 = load %struct.arb_ps_compiled_shader*, %struct.arb_ps_compiled_shader** %201, align 8
  %203 = load %struct.arb_pshader_private*, %struct.arb_pshader_private** %13, align 8
  %204 = getelementptr inbounds %struct.arb_pshader_private, %struct.arb_pshader_private* %203, i32 0, i32 3
  %205 = load i64, i64* %204, align 8
  %206 = getelementptr inbounds %struct.arb_ps_compiled_shader, %struct.arb_ps_compiled_shader* %202, i64 %205
  %207 = call i32 @shader_arb_generate_pshader(%struct.wined3d_shader* %197, %struct.wined3d_gl_info* %198, %struct.wined3d_string_buffer* %12, %struct.arb_ps_compile_args* %199, %struct.arb_ps_compiled_shader* %206)
  store i32 %207, i32* %14, align 4
  %208 = call i32 @string_buffer_free(%struct.wined3d_string_buffer* %12)
  %209 = load i32, i32* %14, align 4
  %210 = load %struct.arb_pshader_private*, %struct.arb_pshader_private** %13, align 8
  %211 = getelementptr inbounds %struct.arb_pshader_private, %struct.arb_pshader_private* %210, i32 0, i32 5
  %212 = load %struct.arb_ps_compiled_shader*, %struct.arb_ps_compiled_shader** %211, align 8
  %213 = load %struct.arb_pshader_private*, %struct.arb_pshader_private** %13, align 8
  %214 = getelementptr inbounds %struct.arb_pshader_private, %struct.arb_pshader_private* %213, i32 0, i32 3
  %215 = load i64, i64* %214, align 8
  %216 = getelementptr inbounds %struct.arb_ps_compiled_shader, %struct.arb_ps_compiled_shader* %212, i64 %215
  %217 = getelementptr inbounds %struct.arb_ps_compiled_shader, %struct.arb_ps_compiled_shader* %216, i32 0, i32 0
  store i32 %209, i32* %217, align 4
  %218 = load %struct.arb_pshader_private*, %struct.arb_pshader_private** %13, align 8
  %219 = getelementptr inbounds %struct.arb_pshader_private, %struct.arb_pshader_private* %218, i32 0, i32 5
  %220 = load %struct.arb_ps_compiled_shader*, %struct.arb_ps_compiled_shader** %219, align 8
  %221 = load %struct.arb_pshader_private*, %struct.arb_pshader_private** %13, align 8
  %222 = getelementptr inbounds %struct.arb_pshader_private, %struct.arb_pshader_private* %221, i32 0, i32 3
  %223 = load i64, i64* %222, align 8
  %224 = add i64 %223, 1
  store i64 %224, i64* %222, align 8
  %225 = getelementptr inbounds %struct.arb_ps_compiled_shader, %struct.arb_ps_compiled_shader* %220, i64 %223
  store %struct.arb_ps_compiled_shader* %225, %struct.arb_ps_compiled_shader** %3, align 8
  br label %226

226:                                              ; preds = %196, %194, %164, %111
  %227 = load %struct.arb_ps_compiled_shader*, %struct.arb_ps_compiled_shader** %3, align 8
  ret %struct.arb_ps_compiled_shader* %227
}

declare dso_local i8* @heap_alloc_zero(i32) #1

declare dso_local i32 @find_input_signature(%struct.shader_arb_priv*, i32*) #1

declare dso_local i32 @TRACE(i8*, ...) #1

declare dso_local i32 @shader_find_free_input_register(%struct.TYPE_10__*, i64) #1

declare dso_local i32 @memcmp(%struct.arb_ps_compile_args*, %struct.arb_ps_compile_args*, i32) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local %struct.arb_ps_compiled_shader* @HeapReAlloc(i32, i32, %struct.arb_ps_compiled_shader*, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @ERR(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @pixelshader_update_resource_types(%struct.wined3d_shader*, i32) #1

declare dso_local i32 @string_buffer_init(%struct.wined3d_string_buffer*) #1

declare dso_local i32 @shader_arb_generate_pshader(%struct.wined3d_shader*, %struct.wined3d_gl_info*, %struct.wined3d_string_buffer*, %struct.arb_ps_compile_args*, %struct.arb_ps_compiled_shader*) #1

declare dso_local i32 @string_buffer_free(%struct.wined3d_string_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
