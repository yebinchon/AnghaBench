; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_shader_glsl_bitwise_op.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_shader_glsl_bitwise_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_shader_instruction = type { i32, i32, %struct.wined3d_shader_dst_param*, %struct.TYPE_12__*, %struct.TYPE_7__* }
%struct.wined3d_shader_dst_param = type { i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64, i64, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_12__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_7__ = type { %struct.wined3d_string_buffer* }
%struct.wined3d_string_buffer = type { i32 }
%struct.glsl_src_param = type { i8* }

@FALSE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [15 x i8] c"bitfieldInsert\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"bitfieldExtract\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"Unhandled opcode %#x.\0A\00", align 1
@TRUE = common dso_local global i64 0, align 8
@WINED3DSP_WRITEMASK_0 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"tmp0%s = %sBitsToFloat(\00", align 1
@WINED3D_DATA_INT = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [4 x i8] c"int\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"uint\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"%s(\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"%s, \00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"%s & 0x1f, %s & 0x1f));\0A\00", align 1
@WINED3D_DATA_FLOAT = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [10 x i8] c"tmp0%s);\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_shader_instruction*)* @shader_glsl_bitwise_op to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @shader_glsl_bitwise_op(%struct.wined3d_shader_instruction* %0) #0 {
  %2 = alloca %struct.wined3d_shader_instruction*, align 8
  %3 = alloca %struct.wined3d_string_buffer*, align 8
  %4 = alloca %struct.wined3d_shader_dst_param, align 8
  %5 = alloca [4 x %struct.glsl_src_param], align 16
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca [6 x i8], align 1
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.wined3d_shader_instruction* %0, %struct.wined3d_shader_instruction** %2, align 8
  %12 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %13 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %12, i32 0, i32 4
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %15, align 8
  store %struct.wined3d_string_buffer* %16, %struct.wined3d_string_buffer** %3, align 8
  %17 = load i64, i64* @FALSE, align 8
  store i64 %17, i64* %7, align 8
  %18 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %19 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  switch i32 %20, label %24 [
    i32 130, label %21
    i32 129, label %22
    i32 128, label %23
  ]

21:                                               ; preds = %1
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8** %6, align 8
  br label %29

22:                                               ; preds = %1
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8** %6, align 8
  br label %29

23:                                               ; preds = %1
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8** %6, align 8
  br label %29

24:                                               ; preds = %1
  %25 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %26 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @ERR(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %27)
  br label %216

29:                                               ; preds = %23, %22, %21
  store i32 0, i32* %9, align 4
  br label %30

30:                                               ; preds = %81, %29
  %31 = load i32, i32* %9, align 4
  %32 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %33 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = icmp ult i32 %31, %34
  br i1 %35, label %36, label %84

36:                                               ; preds = %30
  %37 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %38 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %37, i32 0, i32 2
  %39 = load %struct.wined3d_shader_dst_param*, %struct.wined3d_shader_dst_param** %38, align 8
  %40 = getelementptr inbounds %struct.wined3d_shader_dst_param, %struct.wined3d_shader_dst_param* %39, i64 0
  %41 = getelementptr inbounds %struct.wined3d_shader_dst_param, %struct.wined3d_shader_dst_param* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 2
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i64 0
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %48 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %47, i32 0, i32 3
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %48, align 8
  %50 = load i32, i32* %9, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 1
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i64 0
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp eq i64 %46, %58
  br i1 %59, label %60, label %80

60:                                               ; preds = %36
  %61 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %62 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %61, i32 0, i32 2
  %63 = load %struct.wined3d_shader_dst_param*, %struct.wined3d_shader_dst_param** %62, align 8
  %64 = getelementptr inbounds %struct.wined3d_shader_dst_param, %struct.wined3d_shader_dst_param* %63, i64 0
  %65 = getelementptr inbounds %struct.wined3d_shader_dst_param, %struct.wined3d_shader_dst_param* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %69 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %68, i32 0, i32 3
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %69, align 8
  %71 = load i32, i32* %9, align 4
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = icmp eq i64 %67, %76
  br i1 %77, label %78, label %80

78:                                               ; preds = %60
  %79 = load i64, i64* @TRUE, align 8
  store i64 %79, i64* %7, align 8
  br label %80

80:                                               ; preds = %78, %60, %36
  br label %81

81:                                               ; preds = %80
  %82 = load i32, i32* %9, align 4
  %83 = add i32 %82, 1
  store i32 %83, i32* %9, align 4
  br label %30

84:                                               ; preds = %30
  %85 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %86 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %85, i32 0, i32 2
  %87 = load %struct.wined3d_shader_dst_param*, %struct.wined3d_shader_dst_param** %86, align 8
  %88 = getelementptr inbounds %struct.wined3d_shader_dst_param, %struct.wined3d_shader_dst_param* %87, i64 0
  %89 = bitcast %struct.wined3d_shader_dst_param* %4 to i8*
  %90 = bitcast %struct.wined3d_shader_dst_param* %88 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %89, i8* align 8 %90, i64 32, i1 false)
  store i32 0, i32* %9, align 4
  br label %91

91:                                               ; preds = %192, %84
  %92 = load i32, i32* %9, align 4
  %93 = icmp ult i32 %92, 4
  br i1 %93, label %94, label %195

94:                                               ; preds = %91
  %95 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %96 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %95, i32 0, i32 2
  %97 = load %struct.wined3d_shader_dst_param*, %struct.wined3d_shader_dst_param** %96, align 8
  %98 = getelementptr inbounds %struct.wined3d_shader_dst_param, %struct.wined3d_shader_dst_param* %97, i64 0
  %99 = getelementptr inbounds %struct.wined3d_shader_dst_param, %struct.wined3d_shader_dst_param* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* @WINED3DSP_WRITEMASK_0, align 4
  %102 = load i32, i32* %9, align 4
  %103 = shl i32 %101, %102
  %104 = and i32 %100, %103
  %105 = getelementptr inbounds %struct.wined3d_shader_dst_param, %struct.wined3d_shader_dst_param* %4, i32 0, i32 0
  store i32 %104, i32* %105, align 8
  %106 = load i64, i64* %7, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %123

108:                                              ; preds = %94
  %109 = getelementptr inbounds [6 x i8], [6 x i8]* %8, i64 0, i64 0
  %110 = call i32 @shader_glsl_get_write_mask(%struct.wined3d_shader_dst_param* %4, i8* %109)
  store i32 %110, i32* %11, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %123

112:                                              ; preds = %108
  %113 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %3, align 8
  %114 = getelementptr inbounds [6 x i8], [6 x i8]* %8, i64 0, i64 0
  %115 = getelementptr inbounds %struct.wined3d_shader_dst_param, %struct.wined3d_shader_dst_param* %4, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* @WINED3D_DATA_INT, align 8
  %119 = icmp eq i64 %117, %118
  %120 = zext i1 %119 to i64
  %121 = select i1 %119, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0)
  %122 = call i32 (%struct.wined3d_string_buffer*, i8*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %113, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i8* %114, i8* %121)
  br label %133

123:                                              ; preds = %108, %94
  %124 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %3, align 8
  %125 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %126 = getelementptr inbounds %struct.wined3d_shader_dst_param, %struct.wined3d_shader_dst_param* %4, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %126, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = call i32 @shader_glsl_append_dst_ext(%struct.wined3d_string_buffer* %124, %struct.wined3d_shader_instruction* %125, %struct.wined3d_shader_dst_param* %4, i64 %128)
  store i32 %129, i32* %11, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %132, label %131

131:                                              ; preds = %123
  br label %192

132:                                              ; preds = %123
  br label %133

133:                                              ; preds = %132, %112
  store i32 0, i32* %10, align 4
  br label %134

134:                                              ; preds = %153, %133
  %135 = load i32, i32* %10, align 4
  %136 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %137 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = icmp ult i32 %135, %138
  br i1 %139, label %140, label %156

140:                                              ; preds = %134
  %141 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %142 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %143 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %142, i32 0, i32 3
  %144 = load %struct.TYPE_12__*, %struct.TYPE_12__** %143, align 8
  %145 = load i32, i32* %10, align 4
  %146 = zext i32 %145 to i64
  %147 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %144, i64 %146
  %148 = load i32, i32* %11, align 4
  %149 = load i32, i32* %10, align 4
  %150 = zext i32 %149 to i64
  %151 = getelementptr inbounds [4 x %struct.glsl_src_param], [4 x %struct.glsl_src_param]* %5, i64 0, i64 %150
  %152 = call i32 @shader_glsl_add_src_param(%struct.wined3d_shader_instruction* %141, %struct.TYPE_12__* %147, i32 %148, %struct.glsl_src_param* %151)
  br label %153

153:                                              ; preds = %140
  %154 = load i32, i32* %10, align 4
  %155 = add i32 %154, 1
  store i32 %155, i32* %10, align 4
  br label %134

156:                                              ; preds = %134
  %157 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %3, align 8
  %158 = load i8*, i8** %6, align 8
  %159 = call i32 (%struct.wined3d_string_buffer*, i8*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %157, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8* %158)
  store i32 0, i32* %10, align 4
  br label %160

160:                                              ; preds = %180, %156
  %161 = load i32, i32* %10, align 4
  %162 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %163 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = sub i32 %164, 2
  %166 = icmp ult i32 %161, %165
  br i1 %166, label %167, label %183

167:                                              ; preds = %160
  %168 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %3, align 8
  %169 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %170 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = load i32, i32* %10, align 4
  %173 = sub i32 %171, %172
  %174 = sub i32 %173, 1
  %175 = zext i32 %174 to i64
  %176 = getelementptr inbounds [4 x %struct.glsl_src_param], [4 x %struct.glsl_src_param]* %5, i64 0, i64 %175
  %177 = getelementptr inbounds %struct.glsl_src_param, %struct.glsl_src_param* %176, i32 0, i32 0
  %178 = load i8*, i8** %177, align 8
  %179 = call i32 (%struct.wined3d_string_buffer*, i8*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %168, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8* %178)
  br label %180

180:                                              ; preds = %167
  %181 = load i32, i32* %10, align 4
  %182 = add i32 %181, 1
  store i32 %182, i32* %10, align 4
  br label %160

183:                                              ; preds = %160
  %184 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %3, align 8
  %185 = getelementptr inbounds [4 x %struct.glsl_src_param], [4 x %struct.glsl_src_param]* %5, i64 0, i64 1
  %186 = getelementptr inbounds %struct.glsl_src_param, %struct.glsl_src_param* %185, i32 0, i32 0
  %187 = load i8*, i8** %186, align 8
  %188 = getelementptr inbounds [4 x %struct.glsl_src_param], [4 x %struct.glsl_src_param]* %5, i64 0, i64 0
  %189 = getelementptr inbounds %struct.glsl_src_param, %struct.glsl_src_param* %188, i32 0, i32 0
  %190 = load i8*, i8** %189, align 16
  %191 = call i32 (%struct.wined3d_string_buffer*, i8*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %184, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0), i8* %187, i8* %190)
  br label %192

192:                                              ; preds = %183, %131
  %193 = load i32, i32* %9, align 4
  %194 = add i32 %193, 1
  store i32 %194, i32* %9, align 4
  br label %91

195:                                              ; preds = %91
  %196 = load i64, i64* %7, align 8
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %216

198:                                              ; preds = %195
  %199 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %3, align 8
  %200 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %201 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %202 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %201, i32 0, i32 2
  %203 = load %struct.wined3d_shader_dst_param*, %struct.wined3d_shader_dst_param** %202, align 8
  %204 = getelementptr inbounds %struct.wined3d_shader_dst_param, %struct.wined3d_shader_dst_param* %203, i64 0
  %205 = load i64, i64* @WINED3D_DATA_FLOAT, align 8
  %206 = call i32 @shader_glsl_append_dst_ext(%struct.wined3d_string_buffer* %199, %struct.wined3d_shader_instruction* %200, %struct.wined3d_shader_dst_param* %204, i64 %205)
  %207 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %208 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %207, i32 0, i32 2
  %209 = load %struct.wined3d_shader_dst_param*, %struct.wined3d_shader_dst_param** %208, align 8
  %210 = getelementptr inbounds %struct.wined3d_shader_dst_param, %struct.wined3d_shader_dst_param* %209, i64 0
  %211 = getelementptr inbounds [6 x i8], [6 x i8]* %8, i64 0, i64 0
  %212 = call i32 @shader_glsl_get_write_mask(%struct.wined3d_shader_dst_param* %210, i8* %211)
  %213 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %3, align 8
  %214 = getelementptr inbounds [6 x i8], [6 x i8]* %8, i64 0, i64 0
  %215 = call i32 (%struct.wined3d_string_buffer*, i8*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %213, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i8* %214)
  br label %216

216:                                              ; preds = %24, %198, %195
  ret void
}

declare dso_local i32 @ERR(i8*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @shader_glsl_get_write_mask(%struct.wined3d_shader_dst_param*, i8*) #1

declare dso_local i32 @shader_addline(%struct.wined3d_string_buffer*, i8*, i8*, ...) #1

declare dso_local i32 @shader_glsl_append_dst_ext(%struct.wined3d_string_buffer*, %struct.wined3d_shader_instruction*, %struct.wined3d_shader_dst_param*, i64) #1

declare dso_local i32 @shader_glsl_add_src_param(%struct.wined3d_shader_instruction*, %struct.TYPE_12__*, i32, %struct.glsl_src_param*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
