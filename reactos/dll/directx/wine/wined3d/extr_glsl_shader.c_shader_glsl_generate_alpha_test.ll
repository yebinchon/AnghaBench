; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_shader_glsl_generate_alpha_test.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_shader_glsl_generate_alpha_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_string_buffer = type { i32 }
%struct.wined3d_gl_info = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"gl_FragData[0]\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"ps_out0\00", align 1
@shader_glsl_generate_alpha_test.comparison_operator = internal constant [8 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0)], align 16
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"<\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"==\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"<=\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c">\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"!=\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c">=\00", align 1
@WINED3D_CMP_ALWAYS = common dso_local global i32 0, align 4
@WINED3D_CMP_NEVER = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [32 x i8] c"if (!(%s.a %s alpha_test_ref))\0A\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"    discard;\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_string_buffer*, %struct.wined3d_gl_info*, i32)* @shader_glsl_generate_alpha_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @shader_glsl_generate_alpha_test(%struct.wined3d_string_buffer* %0, %struct.wined3d_gl_info* %1, i32 %2) #0 {
  %4 = alloca %struct.wined3d_string_buffer*, align 8
  %5 = alloca %struct.wined3d_gl_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store %struct.wined3d_string_buffer* %0, %struct.wined3d_string_buffer** %4, align 8
  store %struct.wined3d_gl_info* %1, %struct.wined3d_gl_info** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %5, align 8
  %9 = call i64 @needs_legacy_glsl_syntax(%struct.wined3d_gl_info* %8)
  %10 = icmp ne i64 %9, 0
  %11 = zext i1 %10 to i64
  %12 = select i1 %10, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0)
  store i8* %12, i8** %7, align 8
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @WINED3D_CMP_ALWAYS, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  br label %34

17:                                               ; preds = %3
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @WINED3D_CMP_NEVER, align 4
  %20 = icmp ne i32 %18, %19
  br i1 %20, label %21, label %31

21:                                               ; preds = %17
  %22 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %23 = load i8*, i8** %7, align 8
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @WINED3D_CMP_NEVER, align 4
  %26 = sub i32 %24, %25
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds [8 x i8*], [8 x i8*]* @shader_glsl_generate_alpha_test.comparison_operator, i64 0, i64 %27
  %29 = load i8*, i8** %28, align 8
  %30 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %22, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9, i64 0, i64 0), i8* %23, i8* %29)
  br label %31

31:                                               ; preds = %21, %17
  %32 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %33 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %32, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0))
  br label %34

34:                                               ; preds = %31, %16
  ret void
}

declare dso_local i64 @needs_legacy_glsl_syntax(%struct.wined3d_gl_info*) #1

declare dso_local i32 @shader_addline(%struct.wined3d_string_buffer*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
