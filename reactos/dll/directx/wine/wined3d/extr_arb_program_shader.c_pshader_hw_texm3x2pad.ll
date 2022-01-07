; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_arb_program_shader.c_pshader_hw_texm3x2pad.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_arb_program_shader.c_pshader_hw_texm3x2pad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_shader_instruction = type { i32*, %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { %struct.wined3d_shader_register }
%struct.wined3d_shader_register = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_4__ = type { %struct.wined3d_string_buffer* }
%struct.wined3d_string_buffer = type { i32 }

@.str = private unnamed_addr constant [38 x i8] c"DP3 %s.x, fragment.texcoord[%u], %s;\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_shader_instruction*)* @pshader_hw_texm3x2pad to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pshader_hw_texm3x2pad(%struct.wined3d_shader_instruction* %0) #0 {
  %2 = alloca %struct.wined3d_shader_instruction*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.wined3d_string_buffer*, align 8
  %5 = alloca [50 x i8], align 16
  %6 = alloca [50 x i8], align 16
  %7 = alloca i32, align 4
  %8 = alloca %struct.wined3d_shader_register, align 8
  store %struct.wined3d_shader_instruction* %0, %struct.wined3d_shader_instruction** %2, align 8
  %9 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %10 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %9, i32 0, i32 1
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i64 0
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.wined3d_shader_register, %struct.wined3d_shader_register* %13, i32 0, i32 0
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i64 0
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %3, align 8
  %19 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %20 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %19, i32 0, i32 2
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %22, align 8
  store %struct.wined3d_string_buffer* %23, %struct.wined3d_string_buffer** %4, align 8
  %24 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %25 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %24, i32 0, i32 1
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i64 0
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = bitcast %struct.wined3d_shader_register* %8 to i8*
  %30 = bitcast %struct.wined3d_shader_register* %28 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %29, i8* align 8 %30, i64 8, i1 false)
  %31 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %32 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %33 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  %36 = getelementptr inbounds [50 x i8], [50 x i8]* %5, i64 0, i64 0
  %37 = call i32 @shader_arb_get_src_param(%struct.wined3d_shader_instruction* %31, i32* %35, i32 0, i8* %36)
  %38 = load i64, i64* %3, align 8
  %39 = add nsw i64 %38, 1
  %40 = getelementptr inbounds %struct.wined3d_shader_register, %struct.wined3d_shader_register* %8, i32 0, i32 0
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i64 0
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  store i64 %39, i64* %43, align 8
  %44 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %45 = getelementptr inbounds [50 x i8], [50 x i8]* %6, i64 0, i64 0
  %46 = call i32 @shader_arb_get_register_name(%struct.wined3d_shader_instruction* %44, %struct.wined3d_shader_register* %8, i8* %45, i32* %7)
  %47 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %48 = getelementptr inbounds [50 x i8], [50 x i8]* %6, i64 0, i64 0
  %49 = load i64, i64* %3, align 8
  %50 = getelementptr inbounds [50 x i8], [50 x i8]* %5, i64 0, i64 0
  %51 = call i32 @shader_addline(%struct.wined3d_string_buffer* %47, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i8* %48, i64 %49, i8* %50)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @shader_arb_get_src_param(%struct.wined3d_shader_instruction*, i32*, i32, i8*) #2

declare dso_local i32 @shader_arb_get_register_name(%struct.wined3d_shader_instruction*, %struct.wined3d_shader_register*, i8*, i32*) #2

declare dso_local i32 @shader_addline(%struct.wined3d_string_buffer*, i8*, i8*, i64, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
