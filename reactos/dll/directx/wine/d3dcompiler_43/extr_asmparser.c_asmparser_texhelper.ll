; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dcompiler_43/extr_asmparser.c_asmparser_texhelper.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dcompiler_43/extr_asmparser.c_asmparser_texhelper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asm_parser = type { i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.asm_parser*, %struct.instruction*, %struct.shader_reg*)* }
%struct.instruction = type { %struct.shader_reg*, i64, i8*, i8*, i32 }
%struct.shader_reg = type { i32*, i32, %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [45 x i8] c"Error allocating memory for the instruction\0A\00", align 1
@PARSE_ERR = common dso_local global i32 0, align 4
@BWRITERSIO_TEX = common dso_local global i32 0, align 4
@BWRITERSPR_SAMPLER = common dso_local global i32 0, align 4
@BWRITERVS_NOSWIZZLE = common dso_local global i32 0, align 4
@BWRITERSPSM_NONE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"Out of memory\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.asm_parser*, i8*, i8*, %struct.shader_reg*, %struct.shader_reg*)* @asmparser_texhelper to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @asmparser_texhelper(%struct.asm_parser* %0, i8* %1, i8* %2, %struct.shader_reg* %3, %struct.shader_reg* %4) #0 {
  %6 = alloca %struct.asm_parser*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.shader_reg*, align 8
  %10 = alloca %struct.shader_reg*, align 8
  %11 = alloca %struct.instruction*, align 8
  store %struct.asm_parser* %0, %struct.asm_parser** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store %struct.shader_reg* %3, %struct.shader_reg** %9, align 8
  store %struct.shader_reg* %4, %struct.shader_reg** %10, align 8
  %12 = call %struct.instruction* @alloc_instr(i32 2)
  store %struct.instruction* %12, %struct.instruction** %11, align 8
  %13 = load %struct.instruction*, %struct.instruction** %11, align 8
  %14 = icmp ne %struct.instruction* %13, null
  br i1 %14, label %21, label %15

15:                                               ; preds = %5
  %16 = call i32 @ERR(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.asm_parser*, %struct.asm_parser** %6, align 8
  %18 = getelementptr inbounds %struct.asm_parser, %struct.asm_parser* %17, i32 0, i32 0
  %19 = load i32, i32* @PARSE_ERR, align 4
  %20 = call i32 @set_parse_status(i32* %18, i32 %19)
  br label %98

21:                                               ; preds = %5
  %22 = load i32, i32* @BWRITERSIO_TEX, align 4
  %23 = load %struct.instruction*, %struct.instruction** %11, align 8
  %24 = getelementptr inbounds %struct.instruction, %struct.instruction* %23, i32 0, i32 4
  store i32 %22, i32* %24, align 8
  %25 = load i8*, i8** %7, align 8
  %26 = load %struct.instruction*, %struct.instruction** %11, align 8
  %27 = getelementptr inbounds %struct.instruction, %struct.instruction* %26, i32 0, i32 3
  store i8* %25, i8** %27, align 8
  %28 = load i8*, i8** %8, align 8
  %29 = load %struct.instruction*, %struct.instruction** %11, align 8
  %30 = getelementptr inbounds %struct.instruction, %struct.instruction* %29, i32 0, i32 2
  store i8* %28, i8** %30, align 8
  %31 = load %struct.instruction*, %struct.instruction** %11, align 8
  %32 = getelementptr inbounds %struct.instruction, %struct.instruction* %31, i32 0, i32 1
  store i64 0, i64* %32, align 8
  %33 = load %struct.asm_parser*, %struct.asm_parser** %6, align 8
  %34 = getelementptr inbounds %struct.asm_parser, %struct.asm_parser* %33, i32 0, i32 2
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32 (%struct.asm_parser*, %struct.instruction*, %struct.shader_reg*)*, i32 (%struct.asm_parser*, %struct.instruction*, %struct.shader_reg*)** %36, align 8
  %38 = load %struct.asm_parser*, %struct.asm_parser** %6, align 8
  %39 = load %struct.instruction*, %struct.instruction** %11, align 8
  %40 = load %struct.shader_reg*, %struct.shader_reg** %9, align 8
  %41 = call i32 %37(%struct.asm_parser* %38, %struct.instruction* %39, %struct.shader_reg* %40)
  %42 = load %struct.instruction*, %struct.instruction** %11, align 8
  %43 = getelementptr inbounds %struct.instruction, %struct.instruction* %42, i32 0, i32 0
  %44 = load %struct.shader_reg*, %struct.shader_reg** %43, align 8
  %45 = getelementptr inbounds %struct.shader_reg, %struct.shader_reg* %44, i64 0
  %46 = load %struct.shader_reg*, %struct.shader_reg** %10, align 8
  %47 = bitcast %struct.shader_reg* %45 to i8*
  %48 = bitcast %struct.shader_reg* %46 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %47, i8* align 8 %48, i64 24, i1 false)
  %49 = load %struct.instruction*, %struct.instruction** %11, align 8
  %50 = getelementptr inbounds %struct.instruction, %struct.instruction* %49, i32 0, i32 0
  %51 = load %struct.shader_reg*, %struct.shader_reg** %50, align 8
  %52 = getelementptr inbounds %struct.shader_reg, %struct.shader_reg* %51, i64 1
  %53 = call i32 @ZeroMemory(%struct.shader_reg* %52, i32 24)
  %54 = load i32, i32* @BWRITERSPR_SAMPLER, align 4
  %55 = load %struct.instruction*, %struct.instruction** %11, align 8
  %56 = getelementptr inbounds %struct.instruction, %struct.instruction* %55, i32 0, i32 0
  %57 = load %struct.shader_reg*, %struct.shader_reg** %56, align 8
  %58 = getelementptr inbounds %struct.shader_reg, %struct.shader_reg* %57, i64 1
  %59 = getelementptr inbounds %struct.shader_reg, %struct.shader_reg* %58, i32 0, i32 4
  store i32 %54, i32* %59, align 4
  %60 = load %struct.shader_reg*, %struct.shader_reg** %9, align 8
  %61 = getelementptr inbounds %struct.shader_reg, %struct.shader_reg* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.instruction*, %struct.instruction** %11, align 8
  %64 = getelementptr inbounds %struct.instruction, %struct.instruction* %63, i32 0, i32 0
  %65 = load %struct.shader_reg*, %struct.shader_reg** %64, align 8
  %66 = getelementptr inbounds %struct.shader_reg, %struct.shader_reg* %65, i64 1
  %67 = getelementptr inbounds %struct.shader_reg, %struct.shader_reg* %66, i32 0, i32 3
  store i32 %62, i32* %67, align 8
  %68 = load i32, i32* @BWRITERVS_NOSWIZZLE, align 4
  %69 = load %struct.instruction*, %struct.instruction** %11, align 8
  %70 = getelementptr inbounds %struct.instruction, %struct.instruction* %69, i32 0, i32 0
  %71 = load %struct.shader_reg*, %struct.shader_reg** %70, align 8
  %72 = getelementptr inbounds %struct.shader_reg, %struct.shader_reg* %71, i64 1
  %73 = getelementptr inbounds %struct.shader_reg, %struct.shader_reg* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  store i32 %68, i32* %74, align 4
  %75 = load i32, i32* @BWRITERSPSM_NONE, align 4
  %76 = load %struct.instruction*, %struct.instruction** %11, align 8
  %77 = getelementptr inbounds %struct.instruction, %struct.instruction* %76, i32 0, i32 0
  %78 = load %struct.shader_reg*, %struct.shader_reg** %77, align 8
  %79 = getelementptr inbounds %struct.shader_reg, %struct.shader_reg* %78, i64 1
  %80 = getelementptr inbounds %struct.shader_reg, %struct.shader_reg* %79, i32 0, i32 1
  store i32 %75, i32* %80, align 8
  %81 = load %struct.instruction*, %struct.instruction** %11, align 8
  %82 = getelementptr inbounds %struct.instruction, %struct.instruction* %81, i32 0, i32 0
  %83 = load %struct.shader_reg*, %struct.shader_reg** %82, align 8
  %84 = getelementptr inbounds %struct.shader_reg, %struct.shader_reg* %83, i64 1
  %85 = getelementptr inbounds %struct.shader_reg, %struct.shader_reg* %84, i32 0, i32 0
  store i32* null, i32** %85, align 8
  %86 = load %struct.asm_parser*, %struct.asm_parser** %6, align 8
  %87 = getelementptr inbounds %struct.asm_parser, %struct.asm_parser* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.instruction*, %struct.instruction** %11, align 8
  %90 = call i32 @add_instruction(i32 %88, %struct.instruction* %89)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %98, label %92

92:                                               ; preds = %21
  %93 = call i32 @ERR(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %94 = load %struct.asm_parser*, %struct.asm_parser** %6, align 8
  %95 = getelementptr inbounds %struct.asm_parser, %struct.asm_parser* %94, i32 0, i32 0
  %96 = load i32, i32* @PARSE_ERR, align 4
  %97 = call i32 @set_parse_status(i32* %95, i32 %96)
  br label %98

98:                                               ; preds = %15, %92, %21
  ret void
}

declare dso_local %struct.instruction* @alloc_instr(i32) #1

declare dso_local i32 @ERR(i8*) #1

declare dso_local i32 @set_parse_status(i32*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ZeroMemory(%struct.shader_reg*, i32) #1

declare dso_local i32 @add_instruction(i32, %struct.instruction*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
