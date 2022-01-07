; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dcompiler_43/extr_asmparser.c_asmparser_predicate_unsupported.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dcompiler_43/extr_asmparser.c_asmparser_predicate_unsupported.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asm_parser = type { i32, i32 }
%struct.shader_reg = type { i32 }

@.str = private unnamed_addr constant [56 x i8] c"Line %u: Predicate not supported in < VS 2.0 or PS 2.x\0A\00", align 1
@PARSE_ERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.asm_parser*, %struct.shader_reg*)* @asmparser_predicate_unsupported to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @asmparser_predicate_unsupported(%struct.asm_parser* %0, %struct.shader_reg* %1) #0 {
  %3 = alloca %struct.asm_parser*, align 8
  %4 = alloca %struct.shader_reg*, align 8
  store %struct.asm_parser* %0, %struct.asm_parser** %3, align 8
  store %struct.shader_reg* %1, %struct.shader_reg** %4, align 8
  %5 = load %struct.asm_parser*, %struct.asm_parser** %3, align 8
  %6 = load %struct.asm_parser*, %struct.asm_parser** %3, align 8
  %7 = getelementptr inbounds %struct.asm_parser, %struct.asm_parser* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @asmparser_message(%struct.asm_parser* %5, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 %8)
  %10 = load %struct.asm_parser*, %struct.asm_parser** %3, align 8
  %11 = getelementptr inbounds %struct.asm_parser, %struct.asm_parser* %10, i32 0, i32 0
  %12 = load i32, i32* @PARSE_ERR, align 4
  %13 = call i32 @set_parse_status(i32* %11, i32 %12)
  ret void
}

declare dso_local i32 @asmparser_message(%struct.asm_parser*, i8*, i32) #1

declare dso_local i32 @set_parse_status(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
