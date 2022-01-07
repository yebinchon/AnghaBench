; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_arb_program_shader.c_gen_p8_shader.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_arb_program_shader.c_gen_p8_shader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_gl_info = type { i32 }
%struct.arbfp_blit_type = type { i64, i32 }
%struct.wined3d_string_buffer = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"Implement P8 color keying.\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"Failed to initialize shader buffer.\0A\00", align 1
@GL_FRAGMENT_PROGRAM_ARB = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"!!ARBfp1.0\0A\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"TEMP index;\0A\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"PARAM constants = { 0.996, 0.00195, 0, 0 };\0A\00", align 1
@.str.5 = private unnamed_addr constant [50 x i8] c"TEX index, fragment.texcoord[0], texture[0], %s;\0A\00", align 1
@.str.6 = private unnamed_addr constant [49 x i8] c"MAD index.a, index.a, constants.x, constants.y;\0A\00", align 1
@.str.7 = private unnamed_addr constant [44 x i8] c"TEX result.color, index.a, texture[1], 1D;\0A\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"END\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wined3d_gl_info*, %struct.arbfp_blit_type*)* @gen_p8_shader to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gen_p8_shader(%struct.wined3d_gl_info* %0, %struct.arbfp_blit_type* %1) #0 {
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
  %13 = load %struct.arbfp_blit_type*, %struct.arbfp_blit_type** %5, align 8
  %14 = getelementptr inbounds %struct.arbfp_blit_type, %struct.arbfp_blit_type* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = call i32 @FIXME(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %19

19:                                               ; preds = %17, %2
  %20 = call i32 @string_buffer_init(%struct.wined3d_string_buffer* %7)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %19
  %23 = call i32 @ERR(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %51

24:                                               ; preds = %19
  %25 = call i32 @glGenProgramsARB(i32 1, i32* %6)
  %26 = call i32 @GL_EXTCALL(i32 %25)
  %27 = load i32, i32* @GL_FRAGMENT_PROGRAM_ARB, align 4
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @glBindProgramARB(i32 %27, i32 %28)
  %30 = call i32 @GL_EXTCALL(i32 %29)
  %31 = load i32, i32* %6, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %24
  %34 = call i32 @string_buffer_free(%struct.wined3d_string_buffer* %7)
  store i32 0, i32* %3, align 4
  br label %51

35:                                               ; preds = %24
  %36 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %7, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %37 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %7, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  %38 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %7, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0))
  %39 = load i8*, i8** %8, align 8
  %40 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %7, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.5, i64 0, i64 0), i8* %39)
  %41 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %7, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.6, i64 0, i64 0))
  %42 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %7, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.7, i64 0, i64 0))
  %43 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %7, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  %44 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %4, align 8
  %45 = load i32, i32* @GL_FRAGMENT_PROGRAM_ARB, align 4
  %46 = getelementptr inbounds %struct.wined3d_string_buffer, %struct.wined3d_string_buffer* %7, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @shader_arb_compile(%struct.wined3d_gl_info* %44, i32 %45, i32 %47)
  %49 = call i32 @string_buffer_free(%struct.wined3d_string_buffer* %7)
  %50 = load i32, i32* %6, align 4
  store i32 %50, i32* %3, align 4
  br label %51

51:                                               ; preds = %35, %33, %22
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i8* @arbfp_texture_target(i32) #1

declare dso_local i32 @FIXME(i8*) #1

declare dso_local i32 @string_buffer_init(%struct.wined3d_string_buffer*) #1

declare dso_local i32 @ERR(i8*) #1

declare dso_local i32 @GL_EXTCALL(i32) #1

declare dso_local i32 @glGenProgramsARB(i32, i32*) #1

declare dso_local i32 @glBindProgramARB(i32, i32) #1

declare dso_local i32 @string_buffer_free(%struct.wined3d_string_buffer*) #1

declare dso_local i32 @shader_addline(%struct.wined3d_string_buffer*, i8*, ...) #1

declare dso_local i32 @shader_arb_compile(%struct.wined3d_gl_info*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
