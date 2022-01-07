; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_arb_program_shader.c_arbfp_gen_plain_shader.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_arb_program_shader.c_arbfp_gen_plain_shader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_gl_info = type { i32 }
%struct.arbfp_blit_type = type { i64, i32 }
%struct.wined3d_string_buffer = type { i32 }

@.str = private unnamed_addr constant [37 x i8] c"Failed to initialize shader buffer.\0A\00", align 1
@GL_FRAGMENT_PROGRAM_ARB = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"!!ARBfp1.0\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"TEMP color;\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"TEMP less, greater;\0A\00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"PARAM color_key_low = program.local[%u];\0A\00", align 1
@ARBFP_BLIT_PARAM_COLOR_KEY_LOW = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [43 x i8] c"PARAM color_key_high = program.local[%u];\0A\00", align 1
@ARBFP_BLIT_PARAM_COLOR_KEY_HIGH = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [50 x i8] c"TEX color, fragment.texcoord[0], texture[0], %s;\0A\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"SLT less, color, color_key_low;\0A\00", align 1
@.str.8 = private unnamed_addr constant [37 x i8] c"SGE greater, color, color_key_high;\0A\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"ADD less, less, greater;\0A\00", align 1
@.str.10 = private unnamed_addr constant [25 x i8] c"DP4 less.b, less, less;\0A\00", align 1
@.str.11 = private unnamed_addr constant [25 x i8] c"SGE less, -less.b, 0.0;\0A\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"KIL -less;\0A\00", align 1
@.str.13 = private unnamed_addr constant [26 x i8] c"MOV result.color, color;\0A\00", align 1
@.str.14 = private unnamed_addr constant [57 x i8] c"TEX result.color, fragment.texcoord[0], texture[0], %s;\0A\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"END\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wined3d_gl_info*, %struct.arbfp_blit_type*)* @arbfp_gen_plain_shader to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arbfp_gen_plain_shader(%struct.wined3d_gl_info* %0, %struct.arbfp_blit_type* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wined3d_gl_info*, align 8
  %5 = alloca %struct.arbfp_blit_type*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.wined3d_string_buffer, align 4
  %8 = alloca i8*, align 8
  store %struct.wined3d_gl_info* %0, %struct.wined3d_gl_info** %4, align 8
  store %struct.arbfp_blit_type* %1, %struct.arbfp_blit_type** %5, align 8
  %9 = load %struct.arbfp_blit_type*, %struct.arbfp_blit_type** %5, align 8
  %10 = getelementptr inbounds %struct.arbfp_blit_type, %struct.arbfp_blit_type* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = call i8* @arbfp_texture_target(i32 %11)
  store i8* %12, i8** %8, align 8
  %13 = call i32 @string_buffer_init(%struct.wined3d_string_buffer* %7)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %2
  %16 = call i32 @ERR(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %62

17:                                               ; preds = %2
  %18 = call i32 @glGenProgramsARB(i32 1, i32* %6)
  %19 = call i32 @GL_EXTCALL(i32 %18)
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %17
  %23 = call i32 @string_buffer_free(%struct.wined3d_string_buffer* %7)
  store i32 0, i32* %3, align 4
  br label %62

24:                                               ; preds = %17
  %25 = load i32, i32* @GL_FRAGMENT_PROGRAM_ARB, align 4
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @glBindProgramARB(i32 %25, i32 %26)
  %28 = call i32 @GL_EXTCALL(i32 %27)
  %29 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %7, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %30 = load %struct.arbfp_blit_type*, %struct.arbfp_blit_type** %5, align 8
  %31 = getelementptr inbounds %struct.arbfp_blit_type, %struct.arbfp_blit_type* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %50

34:                                               ; preds = %24
  %35 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %7, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %36 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %7, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %37 = load i32, i32* @ARBFP_BLIT_PARAM_COLOR_KEY_LOW, align 4
  %38 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %7, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0), i32 %37)
  %39 = load i32, i32* @ARBFP_BLIT_PARAM_COLOR_KEY_HIGH, align 4
  %40 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %7, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i64 0, i64 0), i32 %39)
  %41 = load i8*, i8** %8, align 8
  %42 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %7, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.6, i64 0, i64 0), i8* %41)
  %43 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %7, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0))
  %44 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %7, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.8, i64 0, i64 0))
  %45 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %7, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0))
  %46 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %7, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i64 0, i64 0))
  %47 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %7, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.11, i64 0, i64 0))
  %48 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %7, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0))
  %49 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %7, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.13, i64 0, i64 0))
  br label %53

50:                                               ; preds = %24
  %51 = load i8*, i8** %8, align 8
  %52 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %7, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.14, i64 0, i64 0), i8* %51)
  br label %53

53:                                               ; preds = %50, %34
  %54 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %7, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0))
  %55 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %4, align 8
  %56 = load i32, i32* @GL_FRAGMENT_PROGRAM_ARB, align 4
  %57 = getelementptr inbounds %struct.wined3d_string_buffer, %struct.wined3d_string_buffer* %7, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @shader_arb_compile(%struct.wined3d_gl_info* %55, i32 %56, i32 %58)
  %60 = call i32 @string_buffer_free(%struct.wined3d_string_buffer* %7)
  %61 = load i32, i32* %6, align 4
  store i32 %61, i32* %3, align 4
  br label %62

62:                                               ; preds = %53, %22, %15
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local i8* @arbfp_texture_target(i32) #1

declare dso_local i32 @string_buffer_init(%struct.wined3d_string_buffer*) #1

declare dso_local i32 @ERR(i8*) #1

declare dso_local i32 @GL_EXTCALL(i32) #1

declare dso_local i32 @glGenProgramsARB(i32, i32*) #1

declare dso_local i32 @string_buffer_free(%struct.wined3d_string_buffer*) #1

declare dso_local i32 @glBindProgramARB(i32, i32) #1

declare dso_local i32 @shader_addline(%struct.wined3d_string_buffer*, i8*, ...) #1

declare dso_local i32 @shader_arb_compile(%struct.wined3d_gl_info*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
