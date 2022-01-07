; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_arb_program_shader.c_gen_planar_yuv_read.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_arb_program_shader.c_gen_planar_yuv_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_string_buffer = type { i32 }
%struct.arbfp_blit_type = type { i64, i64 }

@.str = private unnamed_addr constant [4 x i8] c"TXP\00", align 1
@COMPLEX_FIXUP_UYVY = common dso_local global i64 0, align 8
@WINED3D_GL_RES_TYPE_TEX_RECT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"TEX\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"MUL texcrd.xy, fragment.texcoord[0], size.x;\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"MOV texcrd.w, size.x;\0A\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"MOV texcrd, fragment.texcoord[0];\0A\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"FLR texcrd.x, texcrd.x;\0A\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"ADD texcrd.x, texcrd.x, coef.y;\0A\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"MUL texcrd2, texcrd, coef.y;\0A\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"FRC texcrd2, texcrd2;\0A\00", align 1
@.str.9 = private unnamed_addr constant [39 x i8] c"%s luminance, texcrd, texture[0], %s;\0A\00", align 1
@.str.10 = private unnamed_addr constant [32 x i8] c"SGE temp.x, texcrd2.x, coef.y;\0A\00", align 1
@.str.11 = private unnamed_addr constant [37 x i8] c"MUL chroma.x, luminance.%c, temp.x;\0A\00", align 1
@.str.12 = private unnamed_addr constant [32 x i8] c"SLT temp.x, texcrd2.x, coef.y;\0A\00", align 1
@.str.13 = private unnamed_addr constant [37 x i8] c"MUL chroma.y, luminance.%c, temp.x;\0A\00", align 1
@.str.14 = private unnamed_addr constant [38 x i8] c"MAD temp.x, temp.x, coef.z, -coef.x;\0A\00", align 1
@.str.15 = private unnamed_addr constant [31 x i8] c"ADD texcrd.x, texcrd, temp.x;\0A\00", align 1
@.str.16 = private unnamed_addr constant [47 x i8] c"MAD chroma.y, luminance.%c, temp.x, chroma.y;\0A\00", align 1
@.str.17 = private unnamed_addr constant [47 x i8] c"MAD chroma.x, luminance.%c, temp.x, chroma.x;\0A\00", align 1
@.str.18 = private unnamed_addr constant [54 x i8] c"TEX luminance, fragment.texcoord[0], texture[0], %s;\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wined3d_string_buffer*, %struct.arbfp_blit_type*, i8*)* @gen_planar_yuv_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gen_planar_yuv_read(%struct.wined3d_string_buffer* %0, %struct.arbfp_blit_type* %1, i8* %2) #0 {
  %4 = alloca %struct.wined3d_string_buffer*, align 8
  %5 = alloca %struct.arbfp_blit_type*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store %struct.wined3d_string_buffer* %0, %struct.wined3d_string_buffer** %4, align 8
  store %struct.arbfp_blit_type* %1, %struct.arbfp_blit_type** %5, align 8
  store i8* %2, i8** %6, align 8
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8** %9, align 8
  %10 = load %struct.arbfp_blit_type*, %struct.arbfp_blit_type** %5, align 8
  %11 = getelementptr inbounds %struct.arbfp_blit_type, %struct.arbfp_blit_type* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @COMPLEX_FIXUP_UYVY, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  store i8 120, i8* %7, align 1
  %16 = load i8*, i8** %6, align 8
  store i8 119, i8* %16, align 1
  br label %19

17:                                               ; preds = %3
  store i8 119, i8* %7, align 1
  %18 = load i8*, i8** %6, align 8
  store i8 120, i8* %18, align 1
  br label %19

19:                                               ; preds = %17, %15
  %20 = load %struct.arbfp_blit_type*, %struct.arbfp_blit_type** %5, align 8
  %21 = getelementptr inbounds %struct.arbfp_blit_type, %struct.arbfp_blit_type* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = call i8* @arbfp_texture_target(i64 %22)
  store i8* %23, i8** %8, align 8
  %24 = load %struct.arbfp_blit_type*, %struct.arbfp_blit_type** %5, align 8
  %25 = getelementptr inbounds %struct.arbfp_blit_type, %struct.arbfp_blit_type* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @WINED3D_GL_RES_TYPE_TEX_RECT, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %19
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8** %9, align 8
  br label %30

30:                                               ; preds = %29, %19
  %31 = load %struct.arbfp_blit_type*, %struct.arbfp_blit_type** %5, align 8
  %32 = getelementptr inbounds %struct.arbfp_blit_type, %struct.arbfp_blit_type* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @WINED3D_GL_RES_TYPE_TEX_RECT, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %41

36:                                               ; preds = %30
  %37 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %38 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %37, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0))
  %39 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %40 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %39, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  br label %44

41:                                               ; preds = %30
  %42 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %43 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %42, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0))
  br label %44

44:                                               ; preds = %41, %36
  %45 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %46 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %45, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
  %47 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %48 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %47, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0))
  %49 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %50 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %49, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0))
  %51 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %52 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %51, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0))
  %53 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %54 = load i8*, i8** %9, align 8
  %55 = load i8*, i8** %8, align 8
  %56 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %53, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.9, i64 0, i64 0), i8* %54, i8* %55)
  %57 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %58 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %57, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10, i64 0, i64 0))
  %59 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %60 = load i8, i8* %7, align 1
  %61 = sext i8 %60 to i32
  %62 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %59, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.11, i64 0, i64 0), i32 %61)
  %63 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %64 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %63, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.12, i64 0, i64 0))
  %65 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %66 = load i8, i8* %7, align 1
  %67 = sext i8 %66 to i32
  %68 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %65, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.13, i64 0, i64 0), i32 %67)
  %69 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %70 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %69, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.14, i64 0, i64 0))
  %71 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %72 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %71, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.15, i64 0, i64 0))
  %73 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %74 = load i8*, i8** %9, align 8
  %75 = load i8*, i8** %8, align 8
  %76 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %73, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.9, i64 0, i64 0), i8* %74, i8* %75)
  %77 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %78 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %77, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10, i64 0, i64 0))
  %79 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %80 = load i8, i8* %7, align 1
  %81 = sext i8 %80 to i32
  %82 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %79, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.16, i64 0, i64 0), i32 %81)
  %83 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %84 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %83, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.12, i64 0, i64 0))
  %85 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %86 = load i8, i8* %7, align 1
  %87 = sext i8 %86 to i32
  %88 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %85, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.17, i64 0, i64 0), i32 %87)
  %89 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %90 = load i8*, i8** %8, align 8
  %91 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %89, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.18, i64 0, i64 0), i8* %90)
  %92 = load i32, i32* @TRUE, align 4
  ret i32 %92
}

declare dso_local i8* @arbfp_texture_target(i64) #1

declare dso_local i32 @shader_addline(%struct.wined3d_string_buffer*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
