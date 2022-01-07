; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_shader_glsl_mul_extended.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_shader_glsl_mul_extended.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_shader_instruction = type { %struct.TYPE_5__*, i32*, %struct.TYPE_6__* }
%struct.TYPE_5__ = type { %struct.wined3d_string_buffer* }
%struct.wined3d_string_buffer = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i32 }
%struct.glsl_src_param = type { i32 }

@WINED3DSPR_NULL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [44 x i8] c"64-bit integer multiplies not implemented.\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"%s * %s);\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_shader_instruction*)* @shader_glsl_mul_extended to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @shader_glsl_mul_extended(%struct.wined3d_shader_instruction* %0) #0 {
  %2 = alloca %struct.wined3d_shader_instruction*, align 8
  %3 = alloca %struct.wined3d_string_buffer*, align 8
  %4 = alloca %struct.glsl_src_param, align 4
  %5 = alloca %struct.glsl_src_param, align 4
  %6 = alloca i32, align 4
  store %struct.wined3d_shader_instruction* %0, %struct.wined3d_shader_instruction** %2, align 8
  %7 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %8 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %7, i32 0, i32 0
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %10, align 8
  store %struct.wined3d_string_buffer* %11, %struct.wined3d_string_buffer** %3, align 8
  %12 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %13 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %12, i32 0, i32 2
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i64 0
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @WINED3DSPR_NULL, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %1
  %22 = call i32 @FIXME(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  br label %23

23:                                               ; preds = %21, %1
  %24 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %25 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %24, i32 0, i32 2
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i64 1
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @WINED3DSPR_NULL, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %72

33:                                               ; preds = %23
  %34 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %3, align 8
  %35 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %36 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %37 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %36, i32 0, i32 2
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i64 1
  %40 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %41 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %40, i32 0, i32 2
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i64 1
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @shader_glsl_append_dst_ext(%struct.wined3d_string_buffer* %34, %struct.wined3d_shader_instruction* %35, %struct.TYPE_6__* %39, i32 %46)
  store i32 %47, i32* %6, align 4
  %48 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %49 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %50 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 0
  %53 = load i32, i32* %6, align 4
  %54 = call i32 @shader_glsl_add_src_param(%struct.wined3d_shader_instruction* %48, i32* %52, i32 %53, %struct.glsl_src_param* %4)
  %55 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %56 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %57 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 1
  %60 = load i32, i32* %6, align 4
  %61 = call i32 @shader_glsl_add_src_param(%struct.wined3d_shader_instruction* %55, i32* %59, i32 %60, %struct.glsl_src_param* %5)
  %62 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %63 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %62, i32 0, i32 0
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %65, align 8
  %67 = getelementptr inbounds %struct.glsl_src_param, %struct.glsl_src_param* %4, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = getelementptr inbounds %struct.glsl_src_param, %struct.glsl_src_param* %5, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @shader_addline(%struct.wined3d_string_buffer* %66, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %68, i32 %70)
  br label %72

72:                                               ; preds = %33, %23
  ret void
}

declare dso_local i32 @FIXME(i8*) #1

declare dso_local i32 @shader_glsl_append_dst_ext(%struct.wined3d_string_buffer*, %struct.wined3d_shader_instruction*, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @shader_glsl_add_src_param(%struct.wined3d_shader_instruction*, i32*, i32, %struct.glsl_src_param*) #1

declare dso_local i32 @shader_addline(%struct.wined3d_string_buffer*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
