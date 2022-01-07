; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dcompiler_43/extr_asmparser.c_asmparser_dcl_input.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dcompiler_43/extr_asmparser.c_asmparser_dcl_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asm_parser = type { i32, %struct.TYPE_6__*, %struct.TYPE_4__*, i32 }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_4__ = type { i32 (%struct.asm_parser*, %struct.instruction*, %struct.shader_reg*)* }
%struct.instruction = type { i64, i64 }
%struct.shader_reg = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32 }

@BWRITERSPDM_MSAMPCENTROID = common dso_local global i64 0, align 8
@BWRITERSPDM_PARTIALPRECISION = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [50 x i8] c"Line %u: Unsupported modifier in dcl instruction\0A\00", align 1
@PARSE_ERR = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"Out of memory\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.asm_parser*, i64, i64, i64, %struct.shader_reg*)* @asmparser_dcl_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @asmparser_dcl_input(%struct.asm_parser* %0, i64 %1, i64 %2, i64 %3, %struct.shader_reg* %4) #0 {
  %6 = alloca %struct.asm_parser*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.shader_reg*, align 8
  %11 = alloca %struct.instruction, align 8
  store %struct.asm_parser* %0, %struct.asm_parser** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store %struct.shader_reg* %4, %struct.shader_reg** %10, align 8
  %12 = load %struct.asm_parser*, %struct.asm_parser** %6, align 8
  %13 = getelementptr inbounds %struct.asm_parser, %struct.asm_parser* %12, i32 0, i32 1
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %15 = icmp ne %struct.TYPE_6__* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %5
  br label %81

17:                                               ; preds = %5
  %18 = load i64, i64* %9, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %46

20:                                               ; preds = %17
  %21 = load %struct.asm_parser*, %struct.asm_parser** %6, align 8
  %22 = getelementptr inbounds %struct.asm_parser, %struct.asm_parser* %21, i32 0, i32 1
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = call i64 @BWRITERPS_VERSION(i32 3, i32 0)
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %36, label %28

28:                                               ; preds = %20
  %29 = load i64, i64* %9, align 8
  %30 = load i64, i64* @BWRITERSPDM_MSAMPCENTROID, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %46

32:                                               ; preds = %28
  %33 = load i64, i64* %9, align 8
  %34 = load i64, i64* @BWRITERSPDM_PARTIALPRECISION, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %46

36:                                               ; preds = %32, %20
  %37 = load %struct.asm_parser*, %struct.asm_parser** %6, align 8
  %38 = load %struct.asm_parser*, %struct.asm_parser** %6, align 8
  %39 = getelementptr inbounds %struct.asm_parser, %struct.asm_parser* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @asmparser_message(%struct.asm_parser* %37, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %40)
  %42 = load %struct.asm_parser*, %struct.asm_parser** %6, align 8
  %43 = getelementptr inbounds %struct.asm_parser, %struct.asm_parser* %42, i32 0, i32 0
  %44 = load i32, i32* @PARSE_ERR, align 4
  %45 = call i32 @set_parse_status(i32* %43, i32 %44)
  br label %81

46:                                               ; preds = %32, %28, %17
  %47 = load i64, i64* %9, align 8
  %48 = getelementptr inbounds %struct.instruction, %struct.instruction* %11, i32 0, i32 1
  store i64 %47, i64* %48, align 8
  %49 = getelementptr inbounds %struct.instruction, %struct.instruction* %11, i32 0, i32 0
  store i64 0, i64* %49, align 8
  %50 = load %struct.asm_parser*, %struct.asm_parser** %6, align 8
  %51 = getelementptr inbounds %struct.asm_parser, %struct.asm_parser* %50, i32 0, i32 2
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i32 (%struct.asm_parser*, %struct.instruction*, %struct.shader_reg*)*, i32 (%struct.asm_parser*, %struct.instruction*, %struct.shader_reg*)** %53, align 8
  %55 = load %struct.asm_parser*, %struct.asm_parser** %6, align 8
  %56 = load %struct.shader_reg*, %struct.shader_reg** %10, align 8
  %57 = call i32 %54(%struct.asm_parser* %55, %struct.instruction* %11, %struct.shader_reg* %56)
  %58 = load %struct.asm_parser*, %struct.asm_parser** %6, align 8
  %59 = getelementptr inbounds %struct.asm_parser, %struct.asm_parser* %58, i32 0, i32 1
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %59, align 8
  %61 = load i64, i64* %7, align 8
  %62 = load i64, i64* %8, align 8
  %63 = load i64, i64* %9, align 8
  %64 = load i32, i32* @FALSE, align 4
  %65 = load %struct.shader_reg*, %struct.shader_reg** %10, align 8
  %66 = getelementptr inbounds %struct.shader_reg, %struct.shader_reg* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.shader_reg*, %struct.shader_reg** %10, align 8
  %69 = getelementptr inbounds %struct.shader_reg, %struct.shader_reg* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @FALSE, align 4
  %73 = call i32 @record_declaration(%struct.TYPE_6__* %60, i64 %61, i64 %62, i64 %63, i32 %64, i32 %67, i32 %71, i32 %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %81, label %75

75:                                               ; preds = %46
  %76 = call i32 @ERR(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %77 = load %struct.asm_parser*, %struct.asm_parser** %6, align 8
  %78 = getelementptr inbounds %struct.asm_parser, %struct.asm_parser* %77, i32 0, i32 0
  %79 = load i32, i32* @PARSE_ERR, align 4
  %80 = call i32 @set_parse_status(i32* %78, i32 %79)
  br label %81

81:                                               ; preds = %16, %36, %75, %46
  ret void
}

declare dso_local i64 @BWRITERPS_VERSION(i32, i32) #1

declare dso_local i32 @asmparser_message(%struct.asm_parser*, i8*, i32) #1

declare dso_local i32 @set_parse_status(i32*, i32) #1

declare dso_local i32 @record_declaration(%struct.TYPE_6__*, i64, i64, i64, i32, i32, i32, i32) #1

declare dso_local i32 @ERR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
