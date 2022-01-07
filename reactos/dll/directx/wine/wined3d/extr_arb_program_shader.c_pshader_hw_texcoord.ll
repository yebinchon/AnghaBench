; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_arb_program_shader.c_pshader_hw_texcoord.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_arb_program_shader.c_pshader_hw_texcoord.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_shader_instruction = type { %struct.wined3d_shader_dst_param*, i32*, %struct.TYPE_8__* }
%struct.wined3d_shader_dst_param = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i8* }
%struct.TYPE_8__ = type { %struct.TYPE_7__*, %struct.wined3d_string_buffer* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.wined3d_string_buffer = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"MOV_SAT %s, fragment.texcoord[%u];\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"MOV %s, %s;\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_shader_instruction*)* @pshader_hw_texcoord to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pshader_hw_texcoord(%struct.wined3d_shader_instruction* %0) #0 {
  %2 = alloca %struct.wined3d_shader_instruction*, align 8
  %3 = alloca %struct.wined3d_shader_dst_param*, align 8
  %4 = alloca %struct.wined3d_string_buffer*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca [50 x i8], align 16
  %7 = alloca i8*, align 8
  %8 = alloca [40 x i8], align 16
  store %struct.wined3d_shader_instruction* %0, %struct.wined3d_shader_instruction** %2, align 8
  %9 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %10 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %9, i32 0, i32 0
  %11 = load %struct.wined3d_shader_dst_param*, %struct.wined3d_shader_dst_param** %10, align 8
  %12 = getelementptr inbounds %struct.wined3d_shader_dst_param, %struct.wined3d_shader_dst_param* %11, i64 0
  store %struct.wined3d_shader_dst_param* %12, %struct.wined3d_shader_dst_param** %3, align 8
  %13 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %14 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %13, i32 0, i32 2
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 1
  %17 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %16, align 8
  store %struct.wined3d_string_buffer* %17, %struct.wined3d_string_buffer** %4, align 8
  %18 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %19 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %18, i32 0, i32 2
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %27 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %26, i32 0, i32 2
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i8* @WINED3D_SHADER_VERSION(i32 %25, i32 %33)
  store i8* %34, i8** %5, align 8
  %35 = load i8*, i8** %5, align 8
  %36 = call i8* @WINED3D_SHADER_VERSION(i32 1, i32 4)
  %37 = icmp ult i8* %35, %36
  br i1 %37, label %38, label %57

38:                                               ; preds = %1
  %39 = load %struct.wined3d_shader_dst_param*, %struct.wined3d_shader_dst_param** %3, align 8
  %40 = getelementptr inbounds %struct.wined3d_shader_dst_param, %struct.wined3d_shader_dst_param* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i64 0
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  store i8* %45, i8** %7, align 8
  %46 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %47 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %48 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %47, i32 0, i32 0
  %49 = load %struct.wined3d_shader_dst_param*, %struct.wined3d_shader_dst_param** %48, align 8
  %50 = getelementptr inbounds %struct.wined3d_shader_dst_param, %struct.wined3d_shader_dst_param* %49, i64 0
  %51 = getelementptr inbounds [50 x i8], [50 x i8]* %6, i64 0, i64 0
  %52 = call i32 @shader_arb_get_dst_param(%struct.wined3d_shader_instruction* %46, %struct.wined3d_shader_dst_param* %50, i8* %51)
  %53 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %54 = getelementptr inbounds [50 x i8], [50 x i8]* %6, i64 0, i64 0
  %55 = load i8*, i8** %7, align 8
  %56 = call i32 @shader_addline(%struct.wined3d_string_buffer* %53, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i8* %54, i8* %55)
  br label %76

57:                                               ; preds = %1
  %58 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %59 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %60 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %59, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 0
  %63 = getelementptr inbounds [40 x i8], [40 x i8]* %8, i64 0, i64 0
  %64 = call i32 @shader_arb_get_src_param(%struct.wined3d_shader_instruction* %58, i32* %62, i32 0, i8* %63)
  %65 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %66 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %67 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %66, i32 0, i32 0
  %68 = load %struct.wined3d_shader_dst_param*, %struct.wined3d_shader_dst_param** %67, align 8
  %69 = getelementptr inbounds %struct.wined3d_shader_dst_param, %struct.wined3d_shader_dst_param* %68, i64 0
  %70 = getelementptr inbounds [50 x i8], [50 x i8]* %6, i64 0, i64 0
  %71 = call i32 @shader_arb_get_dst_param(%struct.wined3d_shader_instruction* %65, %struct.wined3d_shader_dst_param* %69, i8* %70)
  %72 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %73 = getelementptr inbounds [50 x i8], [50 x i8]* %6, i64 0, i64 0
  %74 = getelementptr inbounds [40 x i8], [40 x i8]* %8, i64 0, i64 0
  %75 = call i32 @shader_addline(%struct.wined3d_string_buffer* %72, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8* %73, i8* %74)
  br label %76

76:                                               ; preds = %57, %38
  ret void
}

declare dso_local i8* @WINED3D_SHADER_VERSION(i32, i32) #1

declare dso_local i32 @shader_arb_get_dst_param(%struct.wined3d_shader_instruction*, %struct.wined3d_shader_dst_param*, i8*) #1

declare dso_local i32 @shader_addline(%struct.wined3d_string_buffer*, i8*, i8*, i8*) #1

declare dso_local i32 @shader_arb_get_src_param(%struct.wined3d_shader_instruction*, i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
