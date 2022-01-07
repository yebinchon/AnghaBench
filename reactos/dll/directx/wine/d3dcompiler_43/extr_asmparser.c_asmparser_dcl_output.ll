; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dcompiler_43/extr_asmparser.c_asmparser_dcl_output.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dcompiler_43/extr_asmparser.c_asmparser_dcl_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asm_parser = type { i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i64 }
%struct.shader_reg = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32 }

@ST_PIXEL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [53 x i8] c"Line %u: Output register declared in a pixel shader\0A\00", align 1
@PARSE_ERR = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"Out of memory\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.asm_parser*, i32, i32, %struct.shader_reg*)* @asmparser_dcl_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @asmparser_dcl_output(%struct.asm_parser* %0, i32 %1, i32 %2, %struct.shader_reg* %3) #0 {
  %5 = alloca %struct.asm_parser*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.shader_reg*, align 8
  store %struct.asm_parser* %0, %struct.asm_parser** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.shader_reg* %3, %struct.shader_reg** %8, align 8
  %9 = load %struct.asm_parser*, %struct.asm_parser** %5, align 8
  %10 = getelementptr inbounds %struct.asm_parser, %struct.asm_parser* %9, i32 0, i32 1
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = icmp ne %struct.TYPE_4__* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %4
  br label %55

14:                                               ; preds = %4
  %15 = load %struct.asm_parser*, %struct.asm_parser** %5, align 8
  %16 = getelementptr inbounds %struct.asm_parser, %struct.asm_parser* %15, i32 0, i32 1
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @ST_PIXEL, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %32

22:                                               ; preds = %14
  %23 = load %struct.asm_parser*, %struct.asm_parser** %5, align 8
  %24 = load %struct.asm_parser*, %struct.asm_parser** %5, align 8
  %25 = getelementptr inbounds %struct.asm_parser, %struct.asm_parser* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @asmparser_message(%struct.asm_parser* %23, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load %struct.asm_parser*, %struct.asm_parser** %5, align 8
  %29 = getelementptr inbounds %struct.asm_parser, %struct.asm_parser* %28, i32 0, i32 0
  %30 = load i32, i32* @PARSE_ERR, align 4
  %31 = call i32 @set_parse_status(i32* %29, i32 %30)
  br label %32

32:                                               ; preds = %22, %14
  %33 = load %struct.asm_parser*, %struct.asm_parser** %5, align 8
  %34 = getelementptr inbounds %struct.asm_parser, %struct.asm_parser* %33, i32 0, i32 1
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* @TRUE, align 4
  %39 = load %struct.shader_reg*, %struct.shader_reg** %8, align 8
  %40 = getelementptr inbounds %struct.shader_reg, %struct.shader_reg* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.shader_reg*, %struct.shader_reg** %8, align 8
  %43 = getelementptr inbounds %struct.shader_reg, %struct.shader_reg* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @FALSE, align 4
  %47 = call i32 @record_declaration(%struct.TYPE_4__* %35, i32 %36, i32 %37, i32 0, i32 %38, i32 %41, i32 %45, i32 %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %55, label %49

49:                                               ; preds = %32
  %50 = call i32 @ERR(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %51 = load %struct.asm_parser*, %struct.asm_parser** %5, align 8
  %52 = getelementptr inbounds %struct.asm_parser, %struct.asm_parser* %51, i32 0, i32 0
  %53 = load i32, i32* @PARSE_ERR, align 4
  %54 = call i32 @set_parse_status(i32* %52, i32 %53)
  br label %55

55:                                               ; preds = %13, %49, %32
  ret void
}

declare dso_local i32 @asmparser_message(%struct.asm_parser*, i8*, i32) #1

declare dso_local i32 @set_parse_status(i32*, i32) #1

declare dso_local i32 @record_declaration(%struct.TYPE_4__*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ERR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
