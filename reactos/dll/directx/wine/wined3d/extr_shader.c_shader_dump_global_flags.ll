; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_shader.c_shader_dump_global_flags.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_shader.c_shader_dump_global_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_string_buffer = type { i32 }

@WINED3DSGF_REFACTORING_ALLOWED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"refactoringAllowed\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c" | \00", align 1
@WINED3DSGF_FORCE_EARLY_DEPTH_STENCIL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"forceEarlyDepthStencil\00", align 1
@WINED3DSGF_ENABLE_RAW_AND_STRUCTURED_BUFFERS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"enableRawAndStructuredBuffers\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"unknown_flags(%#x)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_string_buffer*, i32)* @shader_dump_global_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @shader_dump_global_flags(%struct.wined3d_string_buffer* %0, i32 %1) #0 {
  %3 = alloca %struct.wined3d_string_buffer*, align 8
  %4 = alloca i32, align 4
  store %struct.wined3d_string_buffer* %0, %struct.wined3d_string_buffer** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @WINED3DSGF_REFACTORING_ALLOWED, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %22

9:                                                ; preds = %2
  %10 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %3, align 8
  %11 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %10, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %12 = load i32, i32* @WINED3DSGF_REFACTORING_ALLOWED, align 4
  %13 = xor i32 %12, -1
  %14 = load i32, i32* %4, align 4
  %15 = and i32 %14, %13
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %9
  %19 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %3, align 8
  %20 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %19, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  br label %21

21:                                               ; preds = %18, %9
  br label %22

22:                                               ; preds = %21, %2
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @WINED3DSGF_FORCE_EARLY_DEPTH_STENCIL, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %40

27:                                               ; preds = %22
  %28 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %3, align 8
  %29 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %28, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %30 = load i32, i32* @WINED3DSGF_FORCE_EARLY_DEPTH_STENCIL, align 4
  %31 = xor i32 %30, -1
  %32 = load i32, i32* %4, align 4
  %33 = and i32 %32, %31
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* %4, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %27
  %37 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %3, align 8
  %38 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %37, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  br label %39

39:                                               ; preds = %36, %27
  br label %40

40:                                               ; preds = %39, %22
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* @WINED3DSGF_ENABLE_RAW_AND_STRUCTURED_BUFFERS, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %40
  %46 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %3, align 8
  %47 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %46, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  %48 = load i32, i32* @WINED3DSGF_ENABLE_RAW_AND_STRUCTURED_BUFFERS, align 4
  %49 = xor i32 %48, -1
  %50 = load i32, i32* %4, align 4
  %51 = and i32 %50, %49
  store i32 %51, i32* %4, align 4
  br label %52

52:                                               ; preds = %45, %40
  %53 = load i32, i32* %4, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %52
  %56 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %3, align 8
  %57 = load i32, i32* %4, align 4
  %58 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %56, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i32 %57)
  br label %59

59:                                               ; preds = %55, %52
  ret void
}

declare dso_local i32 @shader_addline(%struct.wined3d_string_buffer*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
