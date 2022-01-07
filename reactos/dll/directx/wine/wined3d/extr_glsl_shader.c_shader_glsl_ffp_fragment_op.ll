; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_shader_glsl_ffp_fragment_op.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_shader_glsl_ffp_fragment_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_string_buffer = type { i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [5 x i8] c".xyz\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c".w\00", align 1
@tempreg = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [9 x i8] c"temp_reg\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"ret\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"%s%s = %s%s;\0A\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"%s%s = %s%s * %s%s;\0A\00", align 1
@.str.7 = private unnamed_addr constant [44 x i8] c"%s%s = clamp(%s%s * %s%s * 4.0, 0.0, 1.0);\0A\00", align 1
@.str.8 = private unnamed_addr constant [44 x i8] c"%s%s = clamp(%s%s * %s%s * 2.0, 0.0, 1.0);\0A\00", align 1
@.str.9 = private unnamed_addr constant [38 x i8] c"%s%s = clamp(%s%s + %s%s, 0.0, 1.0);\0A\00", align 1
@.str.10 = private unnamed_addr constant [52 x i8] c"%s%s = clamp(%s%s + (%s - vec4(0.5))%s, 0.0, 1.0);\0A\00", align 1
@.str.11 = private unnamed_addr constant [60 x i8] c"%s%s = clamp((%s%s + (%s - vec4(0.5))%s) * 2.0, 0.0, 1.0);\0A\00", align 1
@.str.12 = private unnamed_addr constant [38 x i8] c"%s%s = clamp(%s%s - %s%s, 0.0, 1.0);\0A\00", align 1
@.str.13 = private unnamed_addr constant [59 x i8] c"%s%s = clamp((vec4(1.0) - %s)%s * %s%s + %s%s, 0.0, 1.0);\0A\00", align 1
@WINED3DTA_DIFFUSE = common dso_local global i64 0, align 8
@.str.14 = private unnamed_addr constant [31 x i8] c"%s%s = mix(%s%s, %s%s, %s.w);\0A\00", align 1
@WINED3DTA_TEXTURE = common dso_local global i64 0, align 8
@WINED3DTA_TFACTOR = common dso_local global i64 0, align 8
@.str.15 = private unnamed_addr constant [53 x i8] c"%s%s = clamp(%s%s * (1.0 - %s.w) + %s%s, 0.0, 1.0);\0A\00", align 1
@WINED3DTA_CURRENT = common dso_local global i64 0, align 8
@.str.16 = private unnamed_addr constant [45 x i8] c"%s%s = clamp(%s%s * %s.w + %s%s, 0.0, 1.0);\0A\00", align 1
@.str.17 = private unnamed_addr constant [45 x i8] c"%s%s = clamp(%s%s * %s%s + %s.w, 0.0, 1.0);\0A\00", align 1
@.str.18 = private unnamed_addr constant [59 x i8] c"%s%s = clamp((vec4(1.0) - %s)%s * %s%s + %s.w, 0.0, 1.0);\0A\00", align 1
@.str.19 = private unnamed_addr constant [72 x i8] c"%s%s = vec4(clamp(dot(%s.xyz - 0.5, %s.xyz - 0.5) * 4.0, 0.0, 1.0))%s;\0A\00", align 1
@.str.20 = private unnamed_addr constant [45 x i8] c"%s%s = clamp(%s%s * %s%s + %s%s, 0.0, 1.0);\0A\00", align 1
@.str.21 = private unnamed_addr constant [31 x i8] c"%s%s = mix(%s%s, %s%s, %s%s);\0A\00", align 1
@.str.22 = private unnamed_addr constant [26 x i8] c"Unhandled operation %#x.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_string_buffer*, i32, i64, i64, i64, i64, i64, i64, i64)* @shader_glsl_ffp_fragment_op to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @shader_glsl_ffp_fragment_op(%struct.wined3d_string_buffer* %0, i32 %1, i64 %2, i64 %3, i64 %4, i64 %5, i64 %6, i64 %7, i64 %8) #0 {
  %10 = alloca %struct.wined3d_string_buffer*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  store %struct.wined3d_string_buffer* %0, %struct.wined3d_string_buffer** %10, align 8
  store i32 %1, i32* %11, align 4
  store i64 %2, i64* %12, align 8
  store i64 %3, i64* %13, align 8
  store i64 %4, i64* %14, align 8
  store i64 %5, i64* %15, align 8
  store i64 %6, i64* %16, align 8
  store i64 %7, i64* %17, align 8
  store i64 %8, i64* %18, align 8
  %24 = load i64, i64* %12, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %9
  %27 = load i64, i64* %13, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %19, align 8
  br label %36

30:                                               ; preds = %26, %9
  %31 = load i64, i64* %12, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %19, align 8
  br label %35

34:                                               ; preds = %30
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8** %19, align 8
  br label %35

35:                                               ; preds = %34, %33
  br label %36

36:                                               ; preds = %35, %29
  %37 = load i64, i64* %14, align 8
  %38 = load i64, i64* @tempreg, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8** %20, align 8
  br label %42

41:                                               ; preds = %36
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8** %20, align 8
  br label %42

42:                                               ; preds = %41, %40
  %43 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %10, align 8
  %44 = load i32, i32* %11, align 4
  %45 = load i64, i64* %16, align 8
  %46 = call i8* @shader_glsl_get_ffp_fragment_op_arg(%struct.wined3d_string_buffer* %43, i32 0, i32 %44, i64 %45)
  store i8* %46, i8** %21, align 8
  %47 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %10, align 8
  %48 = load i32, i32* %11, align 4
  %49 = load i64, i64* %17, align 8
  %50 = call i8* @shader_glsl_get_ffp_fragment_op_arg(%struct.wined3d_string_buffer* %47, i32 1, i32 %48, i64 %49)
  store i8* %50, i8** %22, align 8
  %51 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %10, align 8
  %52 = load i32, i32* %11, align 4
  %53 = load i64, i64* %18, align 8
  %54 = call i8* @shader_glsl_get_ffp_fragment_op_arg(%struct.wined3d_string_buffer* %51, i32 2, i32 %52, i64 %53)
  store i8* %54, i8** %23, align 8
  %55 = load i64, i64* %15, align 8
  switch i64 %55, label %286 [
    i64 141, label %56
    i64 130, label %57
    i64 129, label %64
    i64 138, label %71
    i64 136, label %80
    i64 137, label %89
    i64 152, label %98
    i64 151, label %107
    i64 150, label %116
    i64 128, label %125
    i64 149, label %134
    i64 147, label %145
    i64 145, label %159
    i64 146, label %173
    i64 144, label %187
    i64 148, label %201
    i64 135, label %215
    i64 134, label %225
    i64 133, label %235
    i64 132, label %245
    i64 143, label %255
    i64 142, label %255
    i64 140, label %256
    i64 131, label %264
    i64 139, label %275
  ]

56:                                               ; preds = %42
  br label %289

57:                                               ; preds = %42
  %58 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %10, align 8
  %59 = load i8*, i8** %20, align 8
  %60 = load i8*, i8** %19, align 8
  %61 = load i8*, i8** %22, align 8
  %62 = load i8*, i8** %19, align 8
  %63 = call i32 (%struct.wined3d_string_buffer*, i8*, i8*, i8*, i8*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %58, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i8* %59, i8* %60, i8* %61, i8* %62)
  br label %289

64:                                               ; preds = %42
  %65 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %10, align 8
  %66 = load i8*, i8** %20, align 8
  %67 = load i8*, i8** %19, align 8
  %68 = load i8*, i8** %23, align 8
  %69 = load i8*, i8** %19, align 8
  %70 = call i32 (%struct.wined3d_string_buffer*, i8*, i8*, i8*, i8*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %65, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i8* %66, i8* %67, i8* %68, i8* %69)
  br label %289

71:                                               ; preds = %42
  %72 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %10, align 8
  %73 = load i8*, i8** %20, align 8
  %74 = load i8*, i8** %19, align 8
  %75 = load i8*, i8** %22, align 8
  %76 = load i8*, i8** %19, align 8
  %77 = load i8*, i8** %23, align 8
  %78 = load i8*, i8** %19, align 8
  %79 = call i32 (%struct.wined3d_string_buffer*, i8*, i8*, i8*, i8*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %72, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i8* %73, i8* %74, i8* %75, i8* %76, i8* %77, i8* %78)
  br label %289

80:                                               ; preds = %42
  %81 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %10, align 8
  %82 = load i8*, i8** %20, align 8
  %83 = load i8*, i8** %19, align 8
  %84 = load i8*, i8** %22, align 8
  %85 = load i8*, i8** %19, align 8
  %86 = load i8*, i8** %23, align 8
  %87 = load i8*, i8** %19, align 8
  %88 = call i32 (%struct.wined3d_string_buffer*, i8*, i8*, i8*, i8*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %81, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.7, i64 0, i64 0), i8* %82, i8* %83, i8* %84, i8* %85, i8* %86, i8* %87)
  br label %289

89:                                               ; preds = %42
  %90 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %10, align 8
  %91 = load i8*, i8** %20, align 8
  %92 = load i8*, i8** %19, align 8
  %93 = load i8*, i8** %22, align 8
  %94 = load i8*, i8** %19, align 8
  %95 = load i8*, i8** %23, align 8
  %96 = load i8*, i8** %19, align 8
  %97 = call i32 (%struct.wined3d_string_buffer*, i8*, i8*, i8*, i8*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %90, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.8, i64 0, i64 0), i8* %91, i8* %92, i8* %93, i8* %94, i8* %95, i8* %96)
  br label %289

98:                                               ; preds = %42
  %99 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %10, align 8
  %100 = load i8*, i8** %20, align 8
  %101 = load i8*, i8** %19, align 8
  %102 = load i8*, i8** %22, align 8
  %103 = load i8*, i8** %19, align 8
  %104 = load i8*, i8** %23, align 8
  %105 = load i8*, i8** %19, align 8
  %106 = call i32 (%struct.wined3d_string_buffer*, i8*, i8*, i8*, i8*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %99, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.9, i64 0, i64 0), i8* %100, i8* %101, i8* %102, i8* %103, i8* %104, i8* %105)
  br label %289

107:                                              ; preds = %42
  %108 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %10, align 8
  %109 = load i8*, i8** %20, align 8
  %110 = load i8*, i8** %19, align 8
  %111 = load i8*, i8** %22, align 8
  %112 = load i8*, i8** %19, align 8
  %113 = load i8*, i8** %23, align 8
  %114 = load i8*, i8** %19, align 8
  %115 = call i32 (%struct.wined3d_string_buffer*, i8*, i8*, i8*, i8*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %108, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.10, i64 0, i64 0), i8* %109, i8* %110, i8* %111, i8* %112, i8* %113, i8* %114)
  br label %289

116:                                              ; preds = %42
  %117 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %10, align 8
  %118 = load i8*, i8** %20, align 8
  %119 = load i8*, i8** %19, align 8
  %120 = load i8*, i8** %22, align 8
  %121 = load i8*, i8** %19, align 8
  %122 = load i8*, i8** %23, align 8
  %123 = load i8*, i8** %19, align 8
  %124 = call i32 (%struct.wined3d_string_buffer*, i8*, i8*, i8*, i8*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %117, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.11, i64 0, i64 0), i8* %118, i8* %119, i8* %120, i8* %121, i8* %122, i8* %123)
  br label %289

125:                                              ; preds = %42
  %126 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %10, align 8
  %127 = load i8*, i8** %20, align 8
  %128 = load i8*, i8** %19, align 8
  %129 = load i8*, i8** %22, align 8
  %130 = load i8*, i8** %19, align 8
  %131 = load i8*, i8** %23, align 8
  %132 = load i8*, i8** %19, align 8
  %133 = call i32 (%struct.wined3d_string_buffer*, i8*, i8*, i8*, i8*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %126, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.12, i64 0, i64 0), i8* %127, i8* %128, i8* %129, i8* %130, i8* %131, i8* %132)
  br label %289

134:                                              ; preds = %42
  %135 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %10, align 8
  %136 = load i8*, i8** %20, align 8
  %137 = load i8*, i8** %19, align 8
  %138 = load i8*, i8** %22, align 8
  %139 = load i8*, i8** %19, align 8
  %140 = load i8*, i8** %23, align 8
  %141 = load i8*, i8** %19, align 8
  %142 = load i8*, i8** %22, align 8
  %143 = load i8*, i8** %19, align 8
  %144 = call i32 (%struct.wined3d_string_buffer*, i8*, i8*, i8*, i8*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %135, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.13, i64 0, i64 0), i8* %136, i8* %137, i8* %138, i8* %139, i8* %140, i8* %141, i8* %142, i8* %143)
  br label %289

145:                                              ; preds = %42
  %146 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %10, align 8
  %147 = load i32, i32* %11, align 4
  %148 = load i64, i64* @WINED3DTA_DIFFUSE, align 8
  %149 = call i8* @shader_glsl_get_ffp_fragment_op_arg(%struct.wined3d_string_buffer* %146, i32 0, i32 %147, i64 %148)
  store i8* %149, i8** %21, align 8
  %150 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %10, align 8
  %151 = load i8*, i8** %20, align 8
  %152 = load i8*, i8** %19, align 8
  %153 = load i8*, i8** %23, align 8
  %154 = load i8*, i8** %19, align 8
  %155 = load i8*, i8** %22, align 8
  %156 = load i8*, i8** %19, align 8
  %157 = load i8*, i8** %21, align 8
  %158 = call i32 (%struct.wined3d_string_buffer*, i8*, i8*, i8*, i8*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %150, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.14, i64 0, i64 0), i8* %151, i8* %152, i8* %153, i8* %154, i8* %155, i8* %156, i8* %157)
  br label %289

159:                                              ; preds = %42
  %160 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %10, align 8
  %161 = load i32, i32* %11, align 4
  %162 = load i64, i64* @WINED3DTA_TEXTURE, align 8
  %163 = call i8* @shader_glsl_get_ffp_fragment_op_arg(%struct.wined3d_string_buffer* %160, i32 0, i32 %161, i64 %162)
  store i8* %163, i8** %21, align 8
  %164 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %10, align 8
  %165 = load i8*, i8** %20, align 8
  %166 = load i8*, i8** %19, align 8
  %167 = load i8*, i8** %23, align 8
  %168 = load i8*, i8** %19, align 8
  %169 = load i8*, i8** %22, align 8
  %170 = load i8*, i8** %19, align 8
  %171 = load i8*, i8** %21, align 8
  %172 = call i32 (%struct.wined3d_string_buffer*, i8*, i8*, i8*, i8*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %164, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.14, i64 0, i64 0), i8* %165, i8* %166, i8* %167, i8* %168, i8* %169, i8* %170, i8* %171)
  br label %289

173:                                              ; preds = %42
  %174 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %10, align 8
  %175 = load i32, i32* %11, align 4
  %176 = load i64, i64* @WINED3DTA_TFACTOR, align 8
  %177 = call i8* @shader_glsl_get_ffp_fragment_op_arg(%struct.wined3d_string_buffer* %174, i32 0, i32 %175, i64 %176)
  store i8* %177, i8** %21, align 8
  %178 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %10, align 8
  %179 = load i8*, i8** %20, align 8
  %180 = load i8*, i8** %19, align 8
  %181 = load i8*, i8** %23, align 8
  %182 = load i8*, i8** %19, align 8
  %183 = load i8*, i8** %22, align 8
  %184 = load i8*, i8** %19, align 8
  %185 = load i8*, i8** %21, align 8
  %186 = call i32 (%struct.wined3d_string_buffer*, i8*, i8*, i8*, i8*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %178, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.14, i64 0, i64 0), i8* %179, i8* %180, i8* %181, i8* %182, i8* %183, i8* %184, i8* %185)
  br label %289

187:                                              ; preds = %42
  %188 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %10, align 8
  %189 = load i32, i32* %11, align 4
  %190 = load i64, i64* @WINED3DTA_TEXTURE, align 8
  %191 = call i8* @shader_glsl_get_ffp_fragment_op_arg(%struct.wined3d_string_buffer* %188, i32 0, i32 %189, i64 %190)
  store i8* %191, i8** %21, align 8
  %192 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %10, align 8
  %193 = load i8*, i8** %20, align 8
  %194 = load i8*, i8** %19, align 8
  %195 = load i8*, i8** %23, align 8
  %196 = load i8*, i8** %19, align 8
  %197 = load i8*, i8** %21, align 8
  %198 = load i8*, i8** %22, align 8
  %199 = load i8*, i8** %19, align 8
  %200 = call i32 (%struct.wined3d_string_buffer*, i8*, i8*, i8*, i8*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %192, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.15, i64 0, i64 0), i8* %193, i8* %194, i8* %195, i8* %196, i8* %197, i8* %198, i8* %199)
  br label %289

201:                                              ; preds = %42
  %202 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %10, align 8
  %203 = load i32, i32* %11, align 4
  %204 = load i64, i64* @WINED3DTA_CURRENT, align 8
  %205 = call i8* @shader_glsl_get_ffp_fragment_op_arg(%struct.wined3d_string_buffer* %202, i32 0, i32 %203, i64 %204)
  store i8* %205, i8** %21, align 8
  %206 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %10, align 8
  %207 = load i8*, i8** %20, align 8
  %208 = load i8*, i8** %19, align 8
  %209 = load i8*, i8** %23, align 8
  %210 = load i8*, i8** %19, align 8
  %211 = load i8*, i8** %22, align 8
  %212 = load i8*, i8** %19, align 8
  %213 = load i8*, i8** %21, align 8
  %214 = call i32 (%struct.wined3d_string_buffer*, i8*, i8*, i8*, i8*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %206, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.14, i64 0, i64 0), i8* %207, i8* %208, i8* %209, i8* %210, i8* %211, i8* %212, i8* %213)
  br label %289

215:                                              ; preds = %42
  %216 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %10, align 8
  %217 = load i8*, i8** %20, align 8
  %218 = load i8*, i8** %19, align 8
  %219 = load i8*, i8** %23, align 8
  %220 = load i8*, i8** %19, align 8
  %221 = load i8*, i8** %22, align 8
  %222 = load i8*, i8** %22, align 8
  %223 = load i8*, i8** %19, align 8
  %224 = call i32 (%struct.wined3d_string_buffer*, i8*, i8*, i8*, i8*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %216, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.16, i64 0, i64 0), i8* %217, i8* %218, i8* %219, i8* %220, i8* %221, i8* %222, i8* %223)
  br label %289

225:                                              ; preds = %42
  %226 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %10, align 8
  %227 = load i8*, i8** %20, align 8
  %228 = load i8*, i8** %19, align 8
  %229 = load i8*, i8** %22, align 8
  %230 = load i8*, i8** %19, align 8
  %231 = load i8*, i8** %23, align 8
  %232 = load i8*, i8** %19, align 8
  %233 = load i8*, i8** %22, align 8
  %234 = call i32 (%struct.wined3d_string_buffer*, i8*, i8*, i8*, i8*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %226, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.17, i64 0, i64 0), i8* %227, i8* %228, i8* %229, i8* %230, i8* %231, i8* %232, i8* %233)
  br label %289

235:                                              ; preds = %42
  %236 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %10, align 8
  %237 = load i8*, i8** %20, align 8
  %238 = load i8*, i8** %19, align 8
  %239 = load i8*, i8** %23, align 8
  %240 = load i8*, i8** %19, align 8
  %241 = load i8*, i8** %22, align 8
  %242 = load i8*, i8** %22, align 8
  %243 = load i8*, i8** %19, align 8
  %244 = call i32 (%struct.wined3d_string_buffer*, i8*, i8*, i8*, i8*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %236, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.15, i64 0, i64 0), i8* %237, i8* %238, i8* %239, i8* %240, i8* %241, i8* %242, i8* %243)
  br label %289

245:                                              ; preds = %42
  %246 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %10, align 8
  %247 = load i8*, i8** %20, align 8
  %248 = load i8*, i8** %19, align 8
  %249 = load i8*, i8** %22, align 8
  %250 = load i8*, i8** %19, align 8
  %251 = load i8*, i8** %23, align 8
  %252 = load i8*, i8** %19, align 8
  %253 = load i8*, i8** %22, align 8
  %254 = call i32 (%struct.wined3d_string_buffer*, i8*, i8*, i8*, i8*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %246, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.18, i64 0, i64 0), i8* %247, i8* %248, i8* %249, i8* %250, i8* %251, i8* %252, i8* %253)
  br label %289

255:                                              ; preds = %42, %42
  br label %289

256:                                              ; preds = %42
  %257 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %10, align 8
  %258 = load i8*, i8** %20, align 8
  %259 = load i8*, i8** %19, align 8
  %260 = load i8*, i8** %22, align 8
  %261 = load i8*, i8** %23, align 8
  %262 = load i8*, i8** %19, align 8
  %263 = call i32 (%struct.wined3d_string_buffer*, i8*, i8*, i8*, i8*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %257, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.19, i64 0, i64 0), i8* %258, i8* %259, i8* %260, i8* %261, i8* %262)
  br label %289

264:                                              ; preds = %42
  %265 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %10, align 8
  %266 = load i8*, i8** %20, align 8
  %267 = load i8*, i8** %19, align 8
  %268 = load i8*, i8** %22, align 8
  %269 = load i8*, i8** %19, align 8
  %270 = load i8*, i8** %23, align 8
  %271 = load i8*, i8** %19, align 8
  %272 = load i8*, i8** %21, align 8
  %273 = load i8*, i8** %19, align 8
  %274 = call i32 (%struct.wined3d_string_buffer*, i8*, i8*, i8*, i8*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %265, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.20, i64 0, i64 0), i8* %266, i8* %267, i8* %268, i8* %269, i8* %270, i8* %271, i8* %272, i8* %273)
  br label %289

275:                                              ; preds = %42
  %276 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %10, align 8
  %277 = load i8*, i8** %20, align 8
  %278 = load i8*, i8** %19, align 8
  %279 = load i8*, i8** %23, align 8
  %280 = load i8*, i8** %19, align 8
  %281 = load i8*, i8** %22, align 8
  %282 = load i8*, i8** %19, align 8
  %283 = load i8*, i8** %21, align 8
  %284 = load i8*, i8** %19, align 8
  %285 = call i32 (%struct.wined3d_string_buffer*, i8*, i8*, i8*, i8*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %276, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.21, i64 0, i64 0), i8* %277, i8* %278, i8* %279, i8* %280, i8* %281, i8* %282, i8* %283, i8* %284)
  br label %289

286:                                              ; preds = %42
  %287 = load i64, i64* %15, align 8
  %288 = call i32 @FIXME(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.22, i64 0, i64 0), i64 %287)
  br label %289

289:                                              ; preds = %286, %275, %264, %256, %255, %245, %235, %225, %215, %201, %187, %173, %159, %145, %134, %125, %116, %107, %98, %89, %80, %71, %64, %57, %56
  ret void
}

declare dso_local i8* @shader_glsl_get_ffp_fragment_op_arg(%struct.wined3d_string_buffer*, i32, i32, i64) #1

declare dso_local i32 @shader_addline(%struct.wined3d_string_buffer*, i8*, i8*, i8*, i8*, i8*, ...) #1

declare dso_local i32 @FIXME(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
