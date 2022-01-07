; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dcompiler_43/extr_asmparser.c_asmparser_texkill.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dcompiler_43/extr_asmparser.c_asmparser_texkill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asm_parser = type { i32, i32 }
%struct.shader_reg = type { i32 }
%struct.instruction = type { i32, i32, i64, i64, i64, i32 }

@.str = private unnamed_addr constant [45 x i8] c"Error allocating memory for the instruction\0A\00", align 1
@PARSE_ERR = common dso_local global i32 0, align 4
@BWRITERSIO_TEXKILL = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"Out of memory\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.asm_parser*, %struct.shader_reg*)* @asmparser_texkill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @asmparser_texkill(%struct.asm_parser* %0, %struct.shader_reg* %1) #0 {
  %3 = alloca %struct.asm_parser*, align 8
  %4 = alloca %struct.shader_reg*, align 8
  %5 = alloca %struct.instruction*, align 8
  store %struct.asm_parser* %0, %struct.asm_parser** %3, align 8
  store %struct.shader_reg* %1, %struct.shader_reg** %4, align 8
  %6 = call %struct.instruction* @alloc_instr(i32 0)
  store %struct.instruction* %6, %struct.instruction** %5, align 8
  %7 = load %struct.instruction*, %struct.instruction** %5, align 8
  %8 = icmp ne %struct.instruction* %7, null
  br i1 %8, label %15, label %9

9:                                                ; preds = %2
  %10 = call i32 @ERR(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.asm_parser*, %struct.asm_parser** %3, align 8
  %12 = getelementptr inbounds %struct.asm_parser, %struct.asm_parser* %11, i32 0, i32 0
  %13 = load i32, i32* @PARSE_ERR, align 4
  %14 = call i32 @set_parse_status(i32* %12, i32 %13)
  br label %45

15:                                               ; preds = %2
  %16 = load i32, i32* @BWRITERSIO_TEXKILL, align 4
  %17 = load %struct.instruction*, %struct.instruction** %5, align 8
  %18 = getelementptr inbounds %struct.instruction, %struct.instruction* %17, i32 0, i32 5
  store i32 %16, i32* %18, align 8
  %19 = load %struct.instruction*, %struct.instruction** %5, align 8
  %20 = getelementptr inbounds %struct.instruction, %struct.instruction* %19, i32 0, i32 4
  store i64 0, i64* %20, align 8
  %21 = load %struct.instruction*, %struct.instruction** %5, align 8
  %22 = getelementptr inbounds %struct.instruction, %struct.instruction* %21, i32 0, i32 3
  store i64 0, i64* %22, align 8
  %23 = load %struct.instruction*, %struct.instruction** %5, align 8
  %24 = getelementptr inbounds %struct.instruction, %struct.instruction* %23, i32 0, i32 2
  store i64 0, i64* %24, align 8
  %25 = load %struct.shader_reg*, %struct.shader_reg** %4, align 8
  %26 = load i32, i32* @TRUE, align 4
  %27 = call i32 @map_oldps_register(%struct.shader_reg* %25, i32 %26)
  %28 = load %struct.instruction*, %struct.instruction** %5, align 8
  %29 = getelementptr inbounds %struct.instruction, %struct.instruction* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* @TRUE, align 4
  %31 = load %struct.instruction*, %struct.instruction** %5, align 8
  %32 = getelementptr inbounds %struct.instruction, %struct.instruction* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  %33 = load %struct.asm_parser*, %struct.asm_parser** %3, align 8
  %34 = getelementptr inbounds %struct.asm_parser, %struct.asm_parser* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.instruction*, %struct.instruction** %5, align 8
  %37 = call i32 @add_instruction(i32 %35, %struct.instruction* %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %45, label %39

39:                                               ; preds = %15
  %40 = call i32 @ERR(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %41 = load %struct.asm_parser*, %struct.asm_parser** %3, align 8
  %42 = getelementptr inbounds %struct.asm_parser, %struct.asm_parser* %41, i32 0, i32 0
  %43 = load i32, i32* @PARSE_ERR, align 4
  %44 = call i32 @set_parse_status(i32* %42, i32 %43)
  br label %45

45:                                               ; preds = %9, %39, %15
  ret void
}

declare dso_local %struct.instruction* @alloc_instr(i32) #1

declare dso_local i32 @ERR(i8*) #1

declare dso_local i32 @set_parse_status(i32*, i32) #1

declare dso_local i32 @map_oldps_register(%struct.shader_reg*, i32) #1

declare dso_local i32 @add_instruction(i32, %struct.instruction*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
