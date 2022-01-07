; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_arb_program_shader.c_gen_yv12_read.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_arb_program_shader.c_gen_yv12_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_string_buffer = type { i32 }
%struct.arbfp_blit_type = type { i64 }

@gen_yv12_read.yv12_coef = internal constant [4 x float] [float 0x3FE5555560000000, float 0x3FC5555560000000, float 0x3FEAAAAAC0000000, float 0x3FD5555560000000], align 16
@.str = private unnamed_addr constant [19 x i8] c"PARAM yv12_coef = \00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c";\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"MOV texcrd, fragment.texcoord[0];\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"MUL texcrd.x, texcrd.x, coef.y;\0A\00", align 1
@WINED3D_GL_RES_TYPE_TEX_2D = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [23 x i8] c"RCP chroma.w, size.y;\0A\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"MUL texcrd2.y, texcrd.y, size.y;\0A\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"FLR texcrd2.y, texcrd2.y;\0A\00", align 1
@.str.7 = private unnamed_addr constant [51 x i8] c"MAD texcrd.y, texcrd.y, yv12_coef.y, yv12_coef.x;\0A\00", align 1
@.str.8 = private unnamed_addr constant [40 x i8] c"ADD texcrd2.x, texcrd2.y, yv12_coef.y;\0A\00", align 1
@.str.9 = private unnamed_addr constant [27 x i8] c"FRC texcrd2.x, texcrd2.x;\0A\00", align 1
@.str.10 = private unnamed_addr constant [35 x i8] c"SGE texcrd2.x, texcrd2.x, coef.y;\0A\00", align 1
@.str.11 = private unnamed_addr constant [44 x i8] c"MAD texcrd.x, texcrd2.x, coef.y, texcrd.x;\0A\00", align 1
@.str.12 = private unnamed_addr constant [44 x i8] c"MAD temp.y, coef.y, chroma.w, yv12_coef.x;\0A\00", align 1
@.str.13 = private unnamed_addr constant [33 x i8] c"MAX texcrd.y, temp.y, texcrd.y;\0A\00", align 1
@.str.14 = private unnamed_addr constant [45 x i8] c"MAD temp.y, -coef.y, chroma.w, yv12_coef.z;\0A\00", align 1
@.str.15 = private unnamed_addr constant [33 x i8] c"MIN texcrd.y, temp.y, texcrd.y;\0A\00", align 1
@.str.16 = private unnamed_addr constant [25 x i8] c"FLR texcrd.y, texcrd.y;\0A\00", align 1
@.str.17 = private unnamed_addr constant [41 x i8] c"MAD texcrd.y, texcrd.y, coef.w, size.y;\0A\00", align 1
@.str.18 = private unnamed_addr constant [39 x i8] c"ADD texcrd2.x, texcrd.y, yv12_coef.y;\0A\00", align 1
@.str.19 = private unnamed_addr constant [35 x i8] c"MUL texcrd2.x, texcrd2.x, size.x;\0A\00", align 1
@.str.20 = private unnamed_addr constant [33 x i8] c"ADD texcrd.y, texcrd.y, coef.y;\0A\00", align 1
@.str.21 = private unnamed_addr constant [37 x i8] c"MAD temp.y, size.y, coef.w, size.y;\0A\00", align 1
@.str.22 = private unnamed_addr constant [30 x i8] c"ADD temp.y, temp.y, -coef.y;\0A\00", align 1
@.str.23 = private unnamed_addr constant [29 x i8] c"ADD temp.y, size.y, coef.y;\0A\00", align 1
@.str.24 = private unnamed_addr constant [35 x i8] c"TEX temp, texcrd, texture[0], %s;\0A\00", align 1
@.str.25 = private unnamed_addr constant [23 x i8] c"MOV chroma.x, temp.w;\0A\00", align 1
@.str.26 = private unnamed_addr constant [38 x i8] c"ADD texcrd.y, texcrd.y, yv12_coef.y;\0A\00", align 1
@.str.27 = private unnamed_addr constant [41 x i8] c"MAD texcrd.y, size.y, coef.w, texcrd.y;\0A\00", align 1
@.str.28 = private unnamed_addr constant [23 x i8] c"MOV chroma.y, temp.w;\0A\00", align 1
@.str.29 = private unnamed_addr constant [38 x i8] c"MUL texcrd.y, texcrd.y, yv12_coef.x;\0A\00", align 1
@.str.30 = private unnamed_addr constant [45 x i8] c"MAD temp.y, -coef.y, chroma.w, yv12_coef.x;\0A\00", align 1
@.str.31 = private unnamed_addr constant [40 x i8] c"TEX luminance, texcrd, texture[0], %s;\0A\00", align 1
@.str.32 = private unnamed_addr constant [30 x i8] c"ADD temp.x, size.y, -coef.y;\0A\00", align 1
@.str.33 = private unnamed_addr constant [33 x i8] c"MIN texcrd.y, texcrd.y, size.x;\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wined3d_string_buffer*, %struct.arbfp_blit_type*, i8*)* @gen_yv12_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gen_yv12_read(%struct.wined3d_string_buffer* %0, %struct.arbfp_blit_type* %1, i8* %2) #0 {
  %4 = alloca %struct.wined3d_string_buffer*, align 8
  %5 = alloca %struct.arbfp_blit_type*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store %struct.wined3d_string_buffer* %0, %struct.wined3d_string_buffer** %4, align 8
  store %struct.arbfp_blit_type* %1, %struct.arbfp_blit_type** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load %struct.arbfp_blit_type*, %struct.arbfp_blit_type** %5, align 8
  %9 = getelementptr inbounds %struct.arbfp_blit_type, %struct.arbfp_blit_type* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = call i8* @arbfp_texture_target(i64 %10)
  store i8* %11, i8** %7, align 8
  %12 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %13 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %12, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %15 = call i32 @shader_arb_append_imm_vec4(%struct.wined3d_string_buffer* %14, float* getelementptr inbounds ([4 x float], [4 x float]* @gen_yv12_read.yv12_coef, i64 0, i64 0))
  %16 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %17 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %18 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %19 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %18, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %20 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %21 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %20, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  %22 = load %struct.arbfp_blit_type*, %struct.arbfp_blit_type** %5, align 8
  %23 = getelementptr inbounds %struct.arbfp_blit_type, %struct.arbfp_blit_type* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @WINED3D_GL_RES_TYPE_TEX_2D, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %52

27:                                               ; preds = %3
  %28 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %29 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %28, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  %30 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %31 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %30, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0))
  %32 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %33 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %32, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0))
  %34 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %35 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %34, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.7, i64 0, i64 0))
  %36 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %37 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %36, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.8, i64 0, i64 0))
  %38 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %39 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %38, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i64 0, i64 0))
  %40 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %41 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %40, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.10, i64 0, i64 0))
  %42 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %43 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %42, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.11, i64 0, i64 0))
  %44 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %45 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %44, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.12, i64 0, i64 0))
  %46 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %47 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %46, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.13, i64 0, i64 0))
  %48 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %49 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %48, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.14, i64 0, i64 0))
  %50 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %51 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %50, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.15, i64 0, i64 0))
  br label %81

52:                                               ; preds = %3
  %53 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %54 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %53, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.16, i64 0, i64 0))
  %55 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %56 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %55, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.17, i64 0, i64 0))
  %57 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %58 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %57, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.18, i64 0, i64 0))
  %59 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %60 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %59, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i64 0, i64 0))
  %61 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %62 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %61, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.10, i64 0, i64 0))
  %63 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %64 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %63, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.19, i64 0, i64 0))
  %65 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %66 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %65, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.11, i64 0, i64 0))
  %67 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %68 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %67, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.16, i64 0, i64 0))
  %69 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %70 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %69, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.20, i64 0, i64 0))
  %71 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %72 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %71, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.21, i64 0, i64 0))
  %73 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %74 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %73, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.22, i64 0, i64 0))
  %75 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %76 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %75, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.15, i64 0, i64 0))
  %77 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %78 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %77, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.23, i64 0, i64 0))
  %79 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %80 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %79, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.13, i64 0, i64 0))
  br label %81

81:                                               ; preds = %52, %27
  %82 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %83 = load i8*, i8** %7, align 8
  %84 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %82, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.24, i64 0, i64 0), i8* %83)
  %85 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %86 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %85, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.25, i64 0, i64 0))
  %87 = load %struct.arbfp_blit_type*, %struct.arbfp_blit_type** %5, align 8
  %88 = getelementptr inbounds %struct.arbfp_blit_type, %struct.arbfp_blit_type* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @WINED3D_GL_RES_TYPE_TEX_2D, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %95

92:                                               ; preds = %81
  %93 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %94 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %93, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.26, i64 0, i64 0))
  br label %98

95:                                               ; preds = %81
  %96 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %97 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %96, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.27, i64 0, i64 0))
  br label %98

98:                                               ; preds = %95, %92
  %99 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %100 = load i8*, i8** %7, align 8
  %101 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %99, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.24, i64 0, i64 0), i8* %100)
  %102 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %103 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %102, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.28, i64 0, i64 0))
  %104 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %105 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %104, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %106 = load %struct.arbfp_blit_type*, %struct.arbfp_blit_type** %5, align 8
  %107 = getelementptr inbounds %struct.arbfp_blit_type, %struct.arbfp_blit_type* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @WINED3D_GL_RES_TYPE_TEX_2D, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %111, label %121

111:                                              ; preds = %98
  %112 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %113 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %112, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.29, i64 0, i64 0))
  %114 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %115 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %114, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.30, i64 0, i64 0))
  %116 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %117 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %116, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.15, i64 0, i64 0))
  %118 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %119 = load i8*, i8** %7, align 8
  %120 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %118, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.31, i64 0, i64 0), i8* %119)
  br label %129

121:                                              ; preds = %98
  %122 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %123 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %122, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.32, i64 0, i64 0))
  %124 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %125 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %124, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.33, i64 0, i64 0))
  %126 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %127 = load i8*, i8** %7, align 8
  %128 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %126, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.31, i64 0, i64 0), i8* %127)
  br label %129

129:                                              ; preds = %121, %111
  %130 = load i8*, i8** %6, align 8
  store i8 97, i8* %130, align 1
  %131 = load i32, i32* @TRUE, align 4
  ret i32 %131
}

declare dso_local i8* @arbfp_texture_target(i64) #1

declare dso_local i32 @shader_addline(%struct.wined3d_string_buffer*, i8*, ...) #1

declare dso_local i32 @shader_arb_append_imm_vec4(%struct.wined3d_string_buffer*, float*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
