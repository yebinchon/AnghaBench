; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dcompiler_43/extr_asmparser.c_asmparser_sincos.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dcompiler_43/extr_asmparser.c_asmparser_sincos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asm_parser = type { i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 (%struct.asm_parser*, %struct.instruction*, i32, i32*)*, i32 (%struct.asm_parser*, %struct.instruction*, %struct.shader_reg*)* }
%struct.instruction = type { i64, i8*, i8*, i32 }
%struct.shader_reg = type { i32 }
%struct.src_regs = type { i32, i32* }

@.str = private unnamed_addr constant [68 x i8] c"Line %u: sincos (vs 2) has an incorrect number of source registers\0A\00", align 1
@PARSE_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"Error allocating memory for the instruction\0A\00", align 1
@BWRITERSIO_SINCOS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"Out of memory\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.asm_parser*, i8*, i8*, %struct.shader_reg*, %struct.src_regs*)* @asmparser_sincos to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @asmparser_sincos(%struct.asm_parser* %0, i8* %1, i8* %2, %struct.shader_reg* %3, %struct.src_regs* %4) #0 {
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
  %18 = icmp ne i32 %17, 3
  br i1 %18, label %19, label %29

19:                                               ; preds = %14, %5
  %20 = load %struct.asm_parser*, %struct.asm_parser** %6, align 8
  %21 = load %struct.asm_parser*, %struct.asm_parser** %6, align 8
  %22 = getelementptr inbounds %struct.asm_parser, %struct.asm_parser* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @asmparser_message(%struct.asm_parser* %20, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load %struct.asm_parser*, %struct.asm_parser** %6, align 8
  %26 = getelementptr inbounds %struct.asm_parser, %struct.asm_parser* %25, i32 0, i32 0
  %27 = load i32, i32* @PARSE_ERR, align 4
  %28 = call i32 @set_parse_status(i32* %26, i32 %27)
  br label %108

29:                                               ; preds = %14
  %30 = call %struct.instruction* @alloc_instr(i32 3)
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
  br label %108

39:                                               ; preds = %29
  %40 = load i32, i32* @BWRITERSIO_SINCOS, align 4
  %41 = load %struct.instruction*, %struct.instruction** %11, align 8
  %42 = getelementptr inbounds %struct.instruction, %struct.instruction* %41, i32 0, i32 3
  store i32 %40, i32* %42, align 8
  %43 = load i8*, i8** %7, align 8
  %44 = load %struct.instruction*, %struct.instruction** %11, align 8
  %45 = getelementptr inbounds %struct.instruction, %struct.instruction* %44, i32 0, i32 2
  store i8* %43, i8** %45, align 8
  %46 = load i8*, i8** %8, align 8
  %47 = load %struct.instruction*, %struct.instruction** %11, align 8
  %48 = getelementptr inbounds %struct.instruction, %struct.instruction* %47, i32 0, i32 1
  store i8* %46, i8** %48, align 8
  %49 = load %struct.instruction*, %struct.instruction** %11, align 8
  %50 = getelementptr inbounds %struct.instruction, %struct.instruction* %49, i32 0, i32 0
  store i64 0, i64* %50, align 8
  %51 = load %struct.asm_parser*, %struct.asm_parser** %6, align 8
  %52 = getelementptr inbounds %struct.asm_parser, %struct.asm_parser* %51, i32 0, i32 2
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  %55 = load i32 (%struct.asm_parser*, %struct.instruction*, %struct.shader_reg*)*, i32 (%struct.asm_parser*, %struct.instruction*, %struct.shader_reg*)** %54, align 8
  %56 = load %struct.asm_parser*, %struct.asm_parser** %6, align 8
  %57 = load %struct.instruction*, %struct.instruction** %11, align 8
  %58 = load %struct.shader_reg*, %struct.shader_reg** %9, align 8
  %59 = call i32 %55(%struct.asm_parser* %56, %struct.instruction* %57, %struct.shader_reg* %58)
  %60 = load %struct.asm_parser*, %struct.asm_parser** %6, align 8
  %61 = getelementptr inbounds %struct.asm_parser, %struct.asm_parser* %60, i32 0, i32 2
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i32 (%struct.asm_parser*, %struct.instruction*, i32, i32*)*, i32 (%struct.asm_parser*, %struct.instruction*, i32, i32*)** %63, align 8
  %65 = load %struct.asm_parser*, %struct.asm_parser** %6, align 8
  %66 = load %struct.instruction*, %struct.instruction** %11, align 8
  %67 = load %struct.src_regs*, %struct.src_regs** %10, align 8
  %68 = getelementptr inbounds %struct.src_regs, %struct.src_regs* %67, i32 0, i32 1
  %69 = load i32*, i32** %68, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 0
  %71 = call i32 %64(%struct.asm_parser* %65, %struct.instruction* %66, i32 0, i32* %70)
  %72 = load %struct.asm_parser*, %struct.asm_parser** %6, align 8
  %73 = getelementptr inbounds %struct.asm_parser, %struct.asm_parser* %72, i32 0, i32 2
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i32 (%struct.asm_parser*, %struct.instruction*, i32, i32*)*, i32 (%struct.asm_parser*, %struct.instruction*, i32, i32*)** %75, align 8
  %77 = load %struct.asm_parser*, %struct.asm_parser** %6, align 8
  %78 = load %struct.instruction*, %struct.instruction** %11, align 8
  %79 = load %struct.src_regs*, %struct.src_regs** %10, align 8
  %80 = getelementptr inbounds %struct.src_regs, %struct.src_regs* %79, i32 0, i32 1
  %81 = load i32*, i32** %80, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 1
  %83 = call i32 %76(%struct.asm_parser* %77, %struct.instruction* %78, i32 1, i32* %82)
  %84 = load %struct.asm_parser*, %struct.asm_parser** %6, align 8
  %85 = getelementptr inbounds %struct.asm_parser, %struct.asm_parser* %84, i32 0, i32 2
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  %88 = load i32 (%struct.asm_parser*, %struct.instruction*, i32, i32*)*, i32 (%struct.asm_parser*, %struct.instruction*, i32, i32*)** %87, align 8
  %89 = load %struct.asm_parser*, %struct.asm_parser** %6, align 8
  %90 = load %struct.instruction*, %struct.instruction** %11, align 8
  %91 = load %struct.src_regs*, %struct.src_regs** %10, align 8
  %92 = getelementptr inbounds %struct.src_regs, %struct.src_regs* %91, i32 0, i32 1
  %93 = load i32*, i32** %92, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 2
  %95 = call i32 %88(%struct.asm_parser* %89, %struct.instruction* %90, i32 2, i32* %94)
  %96 = load %struct.asm_parser*, %struct.asm_parser** %6, align 8
  %97 = getelementptr inbounds %struct.asm_parser, %struct.asm_parser* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.instruction*, %struct.instruction** %11, align 8
  %100 = call i32 @add_instruction(i32 %98, %struct.instruction* %99)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %108, label %102

102:                                              ; preds = %39
  %103 = call i32 @ERR(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %104 = load %struct.asm_parser*, %struct.asm_parser** %6, align 8
  %105 = getelementptr inbounds %struct.asm_parser, %struct.asm_parser* %104, i32 0, i32 0
  %106 = load i32, i32* @PARSE_ERR, align 4
  %107 = call i32 @set_parse_status(i32* %105, i32 %106)
  br label %108

108:                                              ; preds = %19, %33, %102, %39
  ret void
}

declare dso_local i32 @asmparser_message(%struct.asm_parser*, i8*, i32) #1

declare dso_local i32 @set_parse_status(i32*, i32) #1

declare dso_local %struct.instruction* @alloc_instr(i32) #1

declare dso_local i32 @ERR(i8*) #1

declare dso_local i32 @add_instruction(i32, %struct.instruction*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
