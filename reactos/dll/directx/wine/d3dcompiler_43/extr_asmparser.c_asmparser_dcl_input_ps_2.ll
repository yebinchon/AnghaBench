; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dcompiler_43/extr_asmparser.c_asmparser_dcl_input_ps_2.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dcompiler_43/extr_asmparser.c_asmparser_dcl_input_ps_2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asm_parser = type { i32, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 (%struct.asm_parser*, %struct.instruction*, %struct.shader_reg*)* }
%struct.instruction = type { %struct.TYPE_5__, i64, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.shader_reg = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"Out of memory\0A\00", align 1
@PARSE_ERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.asm_parser*, i32, i32, i32, %struct.shader_reg*)* @asmparser_dcl_input_ps_2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @asmparser_dcl_input_ps_2(%struct.asm_parser* %0, i32 %1, i32 %2, i32 %3, %struct.shader_reg* %4) #0 {
  %6 = alloca %struct.asm_parser*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.shader_reg*, align 8
  %11 = alloca %struct.instruction, align 8
  store %struct.asm_parser* %0, %struct.asm_parser** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.shader_reg* %4, %struct.shader_reg** %10, align 8
  %12 = load %struct.asm_parser*, %struct.asm_parser** %6, align 8
  %13 = getelementptr inbounds %struct.asm_parser, %struct.asm_parser* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %5
  br label %52

17:                                               ; preds = %5
  %18 = load i32, i32* %9, align 4
  %19 = getelementptr inbounds %struct.instruction, %struct.instruction* %11, i32 0, i32 2
  store i32 %18, i32* %19, align 8
  %20 = getelementptr inbounds %struct.instruction, %struct.instruction* %11, i32 0, i32 1
  store i64 0, i64* %20, align 8
  %21 = load %struct.asm_parser*, %struct.asm_parser** %6, align 8
  %22 = getelementptr inbounds %struct.asm_parser, %struct.asm_parser* %21, i32 0, i32 2
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i32 (%struct.asm_parser*, %struct.instruction*, %struct.shader_reg*)*, i32 (%struct.asm_parser*, %struct.instruction*, %struct.shader_reg*)** %24, align 8
  %26 = load %struct.asm_parser*, %struct.asm_parser** %6, align 8
  %27 = load %struct.shader_reg*, %struct.shader_reg** %10, align 8
  %28 = call i32 %25(%struct.asm_parser* %26, %struct.instruction* %11, %struct.shader_reg* %27)
  %29 = load %struct.asm_parser*, %struct.asm_parser** %6, align 8
  %30 = getelementptr inbounds %struct.asm_parser, %struct.asm_parser* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* @FALSE, align 4
  %36 = getelementptr inbounds %struct.instruction, %struct.instruction* %11, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = getelementptr inbounds %struct.instruction, %struct.instruction* %11, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @FALSE, align 4
  %44 = call i32 @record_declaration(i32 %31, i32 %32, i32 %33, i32 %34, i32 %35, i32 %38, i32 %42, i32 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %52, label %46

46:                                               ; preds = %17
  %47 = call i32 @ERR(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %48 = load %struct.asm_parser*, %struct.asm_parser** %6, align 8
  %49 = getelementptr inbounds %struct.asm_parser, %struct.asm_parser* %48, i32 0, i32 0
  %50 = load i32, i32* @PARSE_ERR, align 4
  %51 = call i32 @set_parse_status(i32* %49, i32 %50)
  br label %52

52:                                               ; preds = %16, %46, %17
  ret void
}

declare dso_local i32 @record_declaration(i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ERR(i8*) #1

declare dso_local i32 @set_parse_status(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
