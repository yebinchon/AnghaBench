; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_shader_glsl_store_raw_structured.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_shader_glsl_store_raw_structured.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_shader_instruction = type { i64, i32*, %struct.TYPE_13__*, %struct.TYPE_9__* }
%struct.TYPE_13__ = type { i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { %struct.wined3d_string_buffer*, %struct.shader_glsl_ctx_priv*, %struct.wined3d_shader_reg_maps* }
%struct.wined3d_string_buffer = type { i32 }
%struct.shader_glsl_ctx_priv = type { i32 }
%struct.wined3d_shader_reg_maps = type { i32, %struct.TYPE_14__*, %struct.TYPE_12__*, %struct.TYPE_8__ }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.glsl_src_param = type { i32 }

@WINED3DSPR_GROUPSHAREDMEM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"Invalid TGSM index %u.\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Invalid UAV index %u.\0A\00", align 1
@WINED3DSIH_STORE_STRUCTURED = common dso_local global i64 0, align 8
@WINED3DSP_WRITEMASK_0 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"%s * %u + \00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"%s / 4\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"%s_g%u[%s + %u] = %s;\0A\00", align 1
@.str.5 = private unnamed_addr constant [54 x i8] c"imageStore(%s_image%u, %s + %u, uvec4(%s, 0, 0, 0));\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_shader_instruction*)* @shader_glsl_store_raw_structured to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @shader_glsl_store_raw_structured(%struct.wined3d_shader_instruction* %0) #0 {
  %2 = alloca %struct.wined3d_shader_instruction*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.wined3d_shader_reg_maps*, align 8
  %5 = alloca %struct.shader_glsl_ctx_priv*, align 8
  %6 = alloca %struct.wined3d_string_buffer*, align 8
  %7 = alloca %struct.glsl_src_param, align 4
  %8 = alloca %struct.glsl_src_param, align 4
  %9 = alloca %struct.glsl_src_param, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.wined3d_string_buffer*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.wined3d_shader_instruction* %0, %struct.wined3d_shader_instruction** %2, align 8
  %17 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %18 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %17, i32 0, i32 3
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 2
  %21 = load %struct.wined3d_shader_reg_maps*, %struct.wined3d_shader_reg_maps** %20, align 8
  %22 = getelementptr inbounds %struct.wined3d_shader_reg_maps, %struct.wined3d_shader_reg_maps* %21, i32 0, i32 3
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i8* @shader_glsl_get_prefix(i32 %24)
  store i8* %25, i8** %3, align 8
  %26 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %27 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %26, i32 0, i32 3
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 2
  %30 = load %struct.wined3d_shader_reg_maps*, %struct.wined3d_shader_reg_maps** %29, align 8
  store %struct.wined3d_shader_reg_maps* %30, %struct.wined3d_shader_reg_maps** %4, align 8
  %31 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %32 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %31, i32 0, i32 3
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 1
  %35 = load %struct.shader_glsl_ctx_priv*, %struct.shader_glsl_ctx_priv** %34, align 8
  store %struct.shader_glsl_ctx_priv* %35, %struct.shader_glsl_ctx_priv** %5, align 8
  %36 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %37 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %36, i32 0, i32 3
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  %40 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %39, align 8
  store %struct.wined3d_string_buffer* %40, %struct.wined3d_string_buffer** %6, align 8
  store i32 0, i32* %13, align 4
  %41 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %42 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %41, i32 0, i32 2
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %43, i64 0
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 1
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i64 0
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %11, align 4
  %51 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %52 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %51, i32 0, i32 2
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i64 0
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @WINED3DSPR_GROUPSHAREDMEM, align 8
  %59 = icmp eq i64 %57, %58
  %60 = zext i1 %59 to i32
  store i32 %60, i32* %16, align 4
  %61 = load i32, i32* %16, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %81

63:                                               ; preds = %1
  %64 = load i32, i32* %11, align 4
  %65 = load %struct.wined3d_shader_reg_maps*, %struct.wined3d_shader_reg_maps** %4, align 8
  %66 = getelementptr inbounds %struct.wined3d_shader_reg_maps, %struct.wined3d_shader_reg_maps* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = icmp uge i32 %64, %67
  br i1 %68, label %69, label %72

69:                                               ; preds = %63
  %70 = load i32, i32* %11, align 4
  %71 = call i32 @ERR(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %70)
  br label %205

72:                                               ; preds = %63
  %73 = load %struct.wined3d_shader_reg_maps*, %struct.wined3d_shader_reg_maps** %4, align 8
  %74 = getelementptr inbounds %struct.wined3d_shader_reg_maps, %struct.wined3d_shader_reg_maps* %73, i32 0, i32 2
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %74, align 8
  %76 = load i32, i32* %11, align 4
  %77 = zext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  store i32 %80, i32* %12, align 4
  br label %100

81:                                               ; preds = %1
  %82 = load i32, i32* %11, align 4
  %83 = load %struct.wined3d_shader_reg_maps*, %struct.wined3d_shader_reg_maps** %4, align 8
  %84 = getelementptr inbounds %struct.wined3d_shader_reg_maps, %struct.wined3d_shader_reg_maps* %83, i32 0, i32 1
  %85 = load %struct.TYPE_14__*, %struct.TYPE_14__** %84, align 8
  %86 = call i32 @ARRAY_SIZE(%struct.TYPE_14__* %85)
  %87 = icmp uge i32 %82, %86
  br i1 %87, label %88, label %91

88:                                               ; preds = %81
  %89 = load i32, i32* %11, align 4
  %90 = call i32 @ERR(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %89)
  br label %205

91:                                               ; preds = %81
  %92 = load %struct.wined3d_shader_reg_maps*, %struct.wined3d_shader_reg_maps** %4, align 8
  %93 = getelementptr inbounds %struct.wined3d_shader_reg_maps, %struct.wined3d_shader_reg_maps* %92, i32 0, i32 1
  %94 = load %struct.TYPE_14__*, %struct.TYPE_14__** %93, align 8
  %95 = load i32, i32* %11, align 4
  %96 = zext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %94, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  store i32 %99, i32* %12, align 4
  br label %100

100:                                              ; preds = %91, %72
  %101 = load %struct.shader_glsl_ctx_priv*, %struct.shader_glsl_ctx_priv** %5, align 8
  %102 = getelementptr inbounds %struct.shader_glsl_ctx_priv, %struct.shader_glsl_ctx_priv* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = call %struct.wined3d_string_buffer* @string_buffer_get(i32 %103)
  store %struct.wined3d_string_buffer* %104, %struct.wined3d_string_buffer** %14, align 8
  %105 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %106 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @WINED3DSIH_STORE_STRUCTURED, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %110, label %128

110:                                              ; preds = %100
  %111 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %112 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %113 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %112, i32 0, i32 1
  %114 = load i32*, i32** %113, align 8
  %115 = load i32, i32* %13, align 4
  %116 = add i32 %115, 1
  store i32 %116, i32* %13, align 4
  %117 = zext i32 %115 to i64
  %118 = getelementptr inbounds i32, i32* %114, i64 %117
  %119 = load i32, i32* @WINED3DSP_WRITEMASK_0, align 4
  %120 = call i32 @shader_glsl_add_src_param(%struct.wined3d_shader_instruction* %111, i32* %118, i32 %119, %struct.glsl_src_param* %7)
  %121 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %14, align 8
  %122 = getelementptr inbounds %struct.glsl_src_param, %struct.glsl_src_param* %7, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = sext i32 %123 to i64
  %125 = inttoptr i64 %124 to i8*
  %126 = load i32, i32* %12, align 4
  %127 = call i32 (%struct.wined3d_string_buffer*, i8*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %121, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* %125, i32 %126)
  br label %128

128:                                              ; preds = %110, %100
  %129 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %130 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %131 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %130, i32 0, i32 1
  %132 = load i32*, i32** %131, align 8
  %133 = load i32, i32* %13, align 4
  %134 = add i32 %133, 1
  store i32 %134, i32* %13, align 4
  %135 = zext i32 %133 to i64
  %136 = getelementptr inbounds i32, i32* %132, i64 %135
  %137 = load i32, i32* @WINED3DSP_WRITEMASK_0, align 4
  %138 = call i32 @shader_glsl_add_src_param(%struct.wined3d_shader_instruction* %129, i32* %136, i32 %137, %struct.glsl_src_param* %8)
  %139 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %14, align 8
  %140 = getelementptr inbounds %struct.glsl_src_param, %struct.glsl_src_param* %8, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = sext i32 %141 to i64
  %143 = inttoptr i64 %142 to i8*
  %144 = call i32 (%struct.wined3d_string_buffer*, i8*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %139, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* %143)
  store i32 0, i32* %10, align 4
  br label %145

145:                                              ; preds = %196, %128
  %146 = load i32, i32* %10, align 4
  %147 = icmp ult i32 %146, 4
  br i1 %147, label %148, label %199

148:                                              ; preds = %145
  %149 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %150 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %149, i32 0, i32 2
  %151 = load %struct.TYPE_13__*, %struct.TYPE_13__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %151, i64 0
  %153 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = load i32, i32* @WINED3DSP_WRITEMASK_0, align 4
  %156 = load i32, i32* %10, align 4
  %157 = shl i32 %155, %156
  %158 = and i32 %154, %157
  store i32 %158, i32* %15, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %161, label %160

160:                                              ; preds = %148
  br label %196

161:                                              ; preds = %148
  %162 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %163 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %164 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %163, i32 0, i32 1
  %165 = load i32*, i32** %164, align 8
  %166 = load i32, i32* %13, align 4
  %167 = zext i32 %166 to i64
  %168 = getelementptr inbounds i32, i32* %165, i64 %167
  %169 = load i32, i32* %15, align 4
  %170 = call i32 @shader_glsl_add_src_param(%struct.wined3d_shader_instruction* %162, i32* %168, i32 %169, %struct.glsl_src_param* %9)
  %171 = load i32, i32* %16, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %184

173:                                              ; preds = %161
  %174 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %6, align 8
  %175 = load i8*, i8** %3, align 8
  %176 = load i32, i32* %11, align 4
  %177 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %14, align 8
  %178 = getelementptr inbounds %struct.wined3d_string_buffer, %struct.wined3d_string_buffer* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = load i32, i32* %10, align 4
  %181 = getelementptr inbounds %struct.glsl_src_param, %struct.glsl_src_param* %9, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  %183 = call i32 (%struct.wined3d_string_buffer*, i8*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %174, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i8* %175, i32 %176, i32 %179, i32 %180, i32 %182)
  br label %195

184:                                              ; preds = %161
  %185 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %6, align 8
  %186 = load i8*, i8** %3, align 8
  %187 = load i32, i32* %11, align 4
  %188 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %14, align 8
  %189 = getelementptr inbounds %struct.wined3d_string_buffer, %struct.wined3d_string_buffer* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 4
  %191 = load i32, i32* %10, align 4
  %192 = getelementptr inbounds %struct.glsl_src_param, %struct.glsl_src_param* %9, i32 0, i32 0
  %193 = load i32, i32* %192, align 4
  %194 = call i32 (%struct.wined3d_string_buffer*, i8*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %185, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.5, i64 0, i64 0), i8* %186, i32 %187, i32 %190, i32 %191, i32 %193)
  br label %195

195:                                              ; preds = %184, %173
  br label %196

196:                                              ; preds = %195, %160
  %197 = load i32, i32* %10, align 4
  %198 = add i32 %197, 1
  store i32 %198, i32* %10, align 4
  br label %145

199:                                              ; preds = %145
  %200 = load %struct.shader_glsl_ctx_priv*, %struct.shader_glsl_ctx_priv** %5, align 8
  %201 = getelementptr inbounds %struct.shader_glsl_ctx_priv, %struct.shader_glsl_ctx_priv* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 4
  %203 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %14, align 8
  %204 = call i32 @string_buffer_release(i32 %202, %struct.wined3d_string_buffer* %203)
  br label %205

205:                                              ; preds = %199, %88, %69
  ret void
}

declare dso_local i8* @shader_glsl_get_prefix(i32) #1

declare dso_local i32 @ERR(i8*, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_14__*) #1

declare dso_local %struct.wined3d_string_buffer* @string_buffer_get(i32) #1

declare dso_local i32 @shader_glsl_add_src_param(%struct.wined3d_shader_instruction*, i32*, i32, %struct.glsl_src_param*) #1

declare dso_local i32 @shader_addline(%struct.wined3d_string_buffer*, i8*, i8*, ...) #1

declare dso_local i32 @string_buffer_release(i32, %struct.wined3d_string_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
