; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_arb_program_shader.c_gen_yuv_shader.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_arb_program_shader.c_gen_yuv_shader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_gl_info = type { i32 }
%struct.arbfp_blit_type = type { i32, i64 }
%struct.wined3d_string_buffer = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"Implement YUV color keying.\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"Failed to initialize shader buffer.\0A\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"GL_EXTCALL(glGenProgramsARB(1, &shader))\00", align 1
@GL_FRAGMENT_PROGRAM_ARB = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [50 x i8] c"glBindProgramARB(GL_FRAGMENT_PROGRAM_ARB, shader)\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"!!ARBfp1.0\0A\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"TEMP luminance;\0A\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"TEMP temp;\0A\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"TEMP chroma;\0A\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"TEMP texcrd;\0A\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"TEMP texcrd2;\0A\00", align 1
@.str.10 = private unnamed_addr constant [37 x i8] c"PARAM coef = {1.0, 0.5, 2.0, 0.25};\0A\00", align 1
@.str.11 = private unnamed_addr constant [48 x i8] c"PARAM yuv_coef = {1.403, 0.344, 0.714, 1.770};\0A\00", align 1
@.str.12 = private unnamed_addr constant [33 x i8] c"PARAM size = program.local[%u];\0A\00", align 1
@ARBFP_BLIT_PARAM_SIZE = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [27 x i8] c"Unsupported YUV fixup %#x\0A\00", align 1
@.str.14 = private unnamed_addr constant [32 x i8] c"SUB chroma.xy, chroma, coef.y;\0A\00", align 1
@.str.15 = private unnamed_addr constant [57 x i8] c"MAD result.color.x, chroma.x, yuv_coef.x, luminance.%c;\0A\00", align 1
@.str.16 = private unnamed_addr constant [50 x i8] c"MAD temp.x, -chroma.y, yuv_coef.y, luminance.%c;\0A\00", align 1
@.str.17 = private unnamed_addr constant [52 x i8] c"MAD result.color.y, -chroma.x, yuv_coef.z, temp.x;\0A\00", align 1
@.str.18 = private unnamed_addr constant [57 x i8] c"MAD result.color.z, chroma.y, yuv_coef.w, luminance.%c;\0A\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"END\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wined3d_gl_info*, %struct.arbfp_blit_type*)* @gen_yuv_shader to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gen_yuv_shader(%struct.wined3d_gl_info* %0, %struct.arbfp_blit_type* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wined3d_gl_info*, align 8
  %5 = alloca %struct.arbfp_blit_type*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.wined3d_string_buffer, align 4
  %8 = alloca i8, align 1
  store %struct.wined3d_gl_info* %0, %struct.wined3d_gl_info** %4, align 8
  store %struct.arbfp_blit_type* %1, %struct.arbfp_blit_type** %5, align 8
  %9 = load %struct.arbfp_blit_type*, %struct.arbfp_blit_type** %5, align 8
  %10 = getelementptr inbounds %struct.arbfp_blit_type, %struct.arbfp_blit_type* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = call i32 (i8*, ...) @FIXME(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %15

15:                                               ; preds = %13, %2
  %16 = call i32 @string_buffer_init(%struct.wined3d_string_buffer* %7)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %15
  %19 = call i32 @ERR(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %94

20:                                               ; preds = %15
  %21 = call i32 @glGenProgramsARB(i32 1, i32* %6)
  %22 = call i32 @GL_EXTCALL(i32 %21)
  %23 = call i32 @checkGLcall(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  %24 = load i32, i32* @GL_FRAGMENT_PROGRAM_ARB, align 4
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @glBindProgramARB(i32 %24, i32 %25)
  %27 = call i32 @GL_EXTCALL(i32 %26)
  %28 = call i32 @checkGLcall(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0))
  %29 = load i32, i32* %6, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %20
  %32 = call i32 @string_buffer_free(%struct.wined3d_string_buffer* %7)
  store i32 0, i32* %3, align 4
  br label %94

33:                                               ; preds = %20
  %34 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %7, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  %35 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %7, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0))
  %36 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %7, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0))
  %37 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %7, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0))
  %38 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %7, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0))
  %39 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %7, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0))
  %40 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %7, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.10, i64 0, i64 0))
  %41 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %7, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11, i64 0, i64 0))
  %42 = load i32, i32* @ARBFP_BLIT_PARAM_SIZE, align 4
  %43 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %7, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.12, i64 0, i64 0), i32 %42)
  %44 = load %struct.arbfp_blit_type*, %struct.arbfp_blit_type** %5, align 8
  %45 = getelementptr inbounds %struct.arbfp_blit_type, %struct.arbfp_blit_type* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  switch i32 %46, label %68 [
    i32 130, label %47
    i32 129, label %47
    i32 128, label %54
    i32 131, label %61
  ]

47:                                               ; preds = %33, %33
  %48 = load %struct.arbfp_blit_type*, %struct.arbfp_blit_type** %5, align 8
  %49 = call i32 @gen_planar_yuv_read(%struct.wined3d_string_buffer* %7, %struct.arbfp_blit_type* %48, i8* %8)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %53, label %51

51:                                               ; preds = %47
  %52 = call i32 @string_buffer_free(%struct.wined3d_string_buffer* %7)
  store i32 0, i32* %3, align 4
  br label %94

53:                                               ; preds = %47
  br label %74

54:                                               ; preds = %33
  %55 = load %struct.arbfp_blit_type*, %struct.arbfp_blit_type** %5, align 8
  %56 = call i32 @gen_yv12_read(%struct.wined3d_string_buffer* %7, %struct.arbfp_blit_type* %55, i8* %8)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %60, label %58

58:                                               ; preds = %54
  %59 = call i32 @string_buffer_free(%struct.wined3d_string_buffer* %7)
  store i32 0, i32* %3, align 4
  br label %94

60:                                               ; preds = %54
  br label %74

61:                                               ; preds = %33
  %62 = load %struct.arbfp_blit_type*, %struct.arbfp_blit_type** %5, align 8
  %63 = call i32 @gen_nv12_read(%struct.wined3d_string_buffer* %7, %struct.arbfp_blit_type* %62, i8* %8)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %67, label %65

65:                                               ; preds = %61
  %66 = call i32 @string_buffer_free(%struct.wined3d_string_buffer* %7)
  store i32 0, i32* %3, align 4
  br label %94

67:                                               ; preds = %61
  br label %74

68:                                               ; preds = %33
  %69 = load %struct.arbfp_blit_type*, %struct.arbfp_blit_type** %5, align 8
  %70 = getelementptr inbounds %struct.arbfp_blit_type, %struct.arbfp_blit_type* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call i32 (i8*, ...) @FIXME(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.13, i64 0, i64 0), i32 %71)
  %73 = call i32 @string_buffer_free(%struct.wined3d_string_buffer* %7)
  store i32 0, i32* %3, align 4
  br label %94

74:                                               ; preds = %67, %60, %53
  %75 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %7, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.14, i64 0, i64 0))
  %76 = load i8, i8* %8, align 1
  %77 = sext i8 %76 to i32
  %78 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %7, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.15, i64 0, i64 0), i32 %77)
  %79 = load i8, i8* %8, align 1
  %80 = sext i8 %79 to i32
  %81 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %7, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.16, i64 0, i64 0), i32 %80)
  %82 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %7, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.17, i64 0, i64 0))
  %83 = load i8, i8* %8, align 1
  %84 = sext i8 %83 to i32
  %85 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %7, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.18, i64 0, i64 0), i32 %84)
  %86 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %7, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0))
  %87 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %4, align 8
  %88 = load i32, i32* @GL_FRAGMENT_PROGRAM_ARB, align 4
  %89 = getelementptr inbounds %struct.wined3d_string_buffer, %struct.wined3d_string_buffer* %7, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @shader_arb_compile(%struct.wined3d_gl_info* %87, i32 %88, i32 %90)
  %92 = call i32 @string_buffer_free(%struct.wined3d_string_buffer* %7)
  %93 = load i32, i32* %6, align 4
  store i32 %93, i32* %3, align 4
  br label %94

94:                                               ; preds = %74, %68, %65, %58, %51, %31, %18
  %95 = load i32, i32* %3, align 4
  ret i32 %95
}

declare dso_local i32 @FIXME(i8*, ...) #1

declare dso_local i32 @string_buffer_init(%struct.wined3d_string_buffer*) #1

declare dso_local i32 @ERR(i8*) #1

declare dso_local i32 @GL_EXTCALL(i32) #1

declare dso_local i32 @glGenProgramsARB(i32, i32*) #1

declare dso_local i32 @checkGLcall(i8*) #1

declare dso_local i32 @glBindProgramARB(i32, i32) #1

declare dso_local i32 @string_buffer_free(%struct.wined3d_string_buffer*) #1

declare dso_local i32 @shader_addline(%struct.wined3d_string_buffer*, i8*, ...) #1

declare dso_local i32 @gen_planar_yuv_read(%struct.wined3d_string_buffer*, %struct.arbfp_blit_type*, i8*) #1

declare dso_local i32 @gen_yv12_read(%struct.wined3d_string_buffer*, %struct.arbfp_blit_type*, i8*) #1

declare dso_local i32 @gen_nv12_read(%struct.wined3d_string_buffer*, %struct.arbfp_blit_type*, i8*) #1

declare dso_local i32 @shader_arb_compile(%struct.wined3d_gl_info*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
