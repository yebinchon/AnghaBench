; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dcompiler_43/extr_asmparser.c_asmparser_texld14.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dcompiler_43/extr_asmparser.c_asmparser_texld14.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asm_parser = type { i32, i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 (%struct.asm_parser*, %struct.instruction*, i32, i32*)*, i32 (%struct.asm_parser*, %struct.instruction*, %struct.shader_reg*)* }
%struct.instruction = type { %struct.TYPE_6__*, i64, i8*, i8*, i32 }
%struct.TYPE_6__ = type { i32*, i32, %struct.TYPE_5__, i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.shader_reg = type { i32 }
%struct.src_regs = type { i32, i32* }

@.str = private unnamed_addr constant [64 x i8] c"Line %u: texld (PS 1.4) has a wrong number of source registers\0A\00", align 1
@PARSE_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"Error allocating memory for the instruction\0A\00", align 1
@BWRITERSIO_TEX = common dso_local global i32 0, align 4
@BWRITERSPR_SAMPLER = common dso_local global i32 0, align 4
@BWRITERVS_NOSWIZZLE = common dso_local global i32 0, align 4
@BWRITERSPSM_NONE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"Out of memory\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.asm_parser*, i8*, i8*, %struct.shader_reg*, %struct.src_regs*)* @asmparser_texld14 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @asmparser_texld14(%struct.asm_parser* %0, i8* %1, i8* %2, %struct.shader_reg* %3, %struct.src_regs* %4) #0 {
  %6 = alloca %struct.asm_parser*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.shader_reg*, align 8
  %10 = alloca %struct.src_regs*, align 8
  %11 = alloca %struct.instruction*, align 8
  store %struct.asm_parser* %0, %struct.asm_parser** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store %struct.shader_reg* %3, %struct.shader_reg** %9, align 8
  store %struct.src_regs* %4, %struct.src_regs** %10, align 8
  %12 = load %struct.src_regs*, %struct.src_regs** %10, align 8
  %13 = icmp ne %struct.src_regs* %12, null
  br i1 %13, label %14, label %19

14:                                               ; preds = %5
  %15 = load %struct.src_regs*, %struct.src_regs** %10, align 8
  %16 = getelementptr inbounds %struct.src_regs, %struct.src_regs* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 1
  br i1 %18, label %19, label %29

19:                                               ; preds = %14, %5
  %20 = load %struct.asm_parser*, %struct.asm_parser** %6, align 8
  %21 = load %struct.asm_parser*, %struct.asm_parser** %6, align 8
  %22 = getelementptr inbounds %struct.asm_parser, %struct.asm_parser* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @asmparser_message(%struct.asm_parser* %20, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load %struct.asm_parser*, %struct.asm_parser** %6, align 8
  %26 = getelementptr inbounds %struct.asm_parser, %struct.asm_parser* %25, i32 0, i32 0
  %27 = load i32, i32* @PARSE_ERR, align 4
  %28 = call i32 @set_parse_status(i32* %26, i32 %27)
  br label %121

29:                                               ; preds = %14
  %30 = call %struct.instruction* @alloc_instr(i32 2)
  store %struct.instruction* %30, %struct.instruction** %11, align 8
  %31 = load %struct.instruction*, %struct.instruction** %11, align 8
  %32 = icmp ne %struct.instruction* %31, null
  br i1 %32, label %39, label %33

33:                                               ; preds = %29
  %34 = call i32 @ERR(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  %35 = load %struct.asm_parser*, %struct.asm_parser** %6, align 8
  %36 = getelementptr inbounds %struct.asm_parser, %struct.asm_parser* %35, i32 0, i32 0
  %37 = load i32, i32* @PARSE_ERR, align 4
  %38 = call i32 @set_parse_status(i32* %36, i32 %37)
  br label %121

39:                                               ; preds = %29
  %40 = load i32, i32* @BWRITERSIO_TEX, align 4
  %41 = load %struct.instruction*, %struct.instruction** %11, align 8
  %42 = getelementptr inbounds %struct.instruction, %struct.instruction* %41, i32 0, i32 4
  store i32 %40, i32* %42, align 8
  %43 = load i8*, i8** %7, align 8
  %44 = load %struct.instruction*, %struct.instruction** %11, align 8
  %45 = getelementptr inbounds %struct.instruction, %struct.instruction* %44, i32 0, i32 3
  store i8* %43, i8** %45, align 8
  %46 = load i8*, i8** %8, align 8
  %47 = load %struct.instruction*, %struct.instruction** %11, align 8
  %48 = getelementptr inbounds %struct.instruction, %struct.instruction* %47, i32 0, i32 2
  store i8* %46, i8** %48, align 8
  %49 = load %struct.instruction*, %struct.instruction** %11, align 8
  %50 = getelementptr inbounds %struct.instruction, %struct.instruction* %49, i32 0, i32 1
  store i64 0, i64* %50, align 8
  %51 = load %struct.asm_parser*, %struct.asm_parser** %6, align 8
  %52 = getelementptr inbounds %struct.asm_parser, %struct.asm_parser* %51, i32 0, i32 2
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 1
  %55 = load i32 (%struct.asm_parser*, %struct.instruction*, %struct.shader_reg*)*, i32 (%struct.asm_parser*, %struct.instruction*, %struct.shader_reg*)** %54, align 8
  %56 = load %struct.asm_parser*, %struct.asm_parser** %6, align 8
  %57 = load %struct.instruction*, %struct.instruction** %11, align 8
  %58 = load %struct.shader_reg*, %struct.shader_reg** %9, align 8
  %59 = call i32 %55(%struct.asm_parser* %56, %struct.instruction* %57, %struct.shader_reg* %58)
  %60 = load %struct.asm_parser*, %struct.asm_parser** %6, align 8
  %61 = getelementptr inbounds %struct.asm_parser, %struct.asm_parser* %60, i32 0, i32 2
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i32 (%struct.asm_parser*, %struct.instruction*, i32, i32*)*, i32 (%struct.asm_parser*, %struct.instruction*, i32, i32*)** %63, align 8
  %65 = load %struct.asm_parser*, %struct.asm_parser** %6, align 8
  %66 = load %struct.instruction*, %struct.instruction** %11, align 8
  %67 = load %struct.src_regs*, %struct.src_regs** %10, align 8
  %68 = getelementptr inbounds %struct.src_regs, %struct.src_regs* %67, i32 0, i32 1
  %69 = load i32*, i32** %68, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 0
  %71 = call i32 %64(%struct.asm_parser* %65, %struct.instruction* %66, i32 0, i32* %70)
  %72 = load %struct.instruction*, %struct.instruction** %11, align 8
  %73 = getelementptr inbounds %struct.instruction, %struct.instruction* %72, i32 0, i32 0
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i64 1
  %76 = call i32 @ZeroMemory(%struct.TYPE_6__* %75, i32 24)
  %77 = load i32, i32* @BWRITERSPR_SAMPLER, align 4
  %78 = load %struct.instruction*, %struct.instruction** %11, align 8
  %79 = getelementptr inbounds %struct.instruction, %struct.instruction* %78, i32 0, i32 0
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i64 1
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 4
  store i32 %77, i32* %82, align 4
  %83 = load %struct.shader_reg*, %struct.shader_reg** %9, align 8
  %84 = getelementptr inbounds %struct.shader_reg, %struct.shader_reg* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.instruction*, %struct.instruction** %11, align 8
  %87 = getelementptr inbounds %struct.instruction, %struct.instruction* %86, i32 0, i32 0
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i64 1
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 3
  store i32 %85, i32* %90, align 8
  %91 = load i32, i32* @BWRITERVS_NOSWIZZLE, align 4
  %92 = load %struct.instruction*, %struct.instruction** %11, align 8
  %93 = getelementptr inbounds %struct.instruction, %struct.instruction* %92, i32 0, i32 0
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i64 1
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 2
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 0
  store i32 %91, i32* %97, align 4
  %98 = load i32, i32* @BWRITERSPSM_NONE, align 4
  %99 = load %struct.instruction*, %struct.instruction** %11, align 8
  %100 = getelementptr inbounds %struct.instruction, %struct.instruction* %99, i32 0, i32 0
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i64 1
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 1
  store i32 %98, i32* %103, align 8
  %104 = load %struct.instruction*, %struct.instruction** %11, align 8
  %105 = getelementptr inbounds %struct.instruction, %struct.instruction* %104, i32 0, i32 0
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i64 1
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 0
  store i32* null, i32** %108, align 8
  %109 = load %struct.asm_parser*, %struct.asm_parser** %6, align 8
  %110 = getelementptr inbounds %struct.asm_parser, %struct.asm_parser* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.instruction*, %struct.instruction** %11, align 8
  %113 = call i32 @add_instruction(i32 %111, %struct.instruction* %112)
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %121, label %115

115:                                              ; preds = %39
  %116 = call i32 @ERR(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %117 = load %struct.asm_parser*, %struct.asm_parser** %6, align 8
  %118 = getelementptr inbounds %struct.asm_parser, %struct.asm_parser* %117, i32 0, i32 0
  %119 = load i32, i32* @PARSE_ERR, align 4
  %120 = call i32 @set_parse_status(i32* %118, i32 %119)
  br label %121

121:                                              ; preds = %19, %33, %115, %39
  ret void
}

declare dso_local i32 @asmparser_message(%struct.asm_parser*, i8*, i32) #1

declare dso_local i32 @set_parse_status(i32*, i32) #1

declare dso_local %struct.instruction* @alloc_instr(i32) #1

declare dso_local i32 @ERR(i8*) #1

declare dso_local i32 @ZeroMemory(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @add_instruction(i32, %struct.instruction*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
