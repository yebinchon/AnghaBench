; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dcompiler_43/extr_asmparser.c_asmparser_dstreg_vs_3.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dcompiler_43/extr_asmparser.c_asmparser_dstreg_vs_3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asm_parser = type { i32, i32 }
%struct.instruction = type { i32, %struct.shader_reg, i32, i32 }
%struct.shader_reg = type { i32 }

@vs_3_reg_allowed = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"Line %u: Destination register %s not supported in VS 3.0\0A\00", align 1
@PARSE_ERR = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.asm_parser*, %struct.instruction*, %struct.shader_reg*)* @asmparser_dstreg_vs_3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @asmparser_dstreg_vs_3(%struct.asm_parser* %0, %struct.instruction* %1, %struct.shader_reg* %2) #0 {
  %4 = alloca %struct.asm_parser*, align 8
  %5 = alloca %struct.instruction*, align 8
  %6 = alloca %struct.shader_reg*, align 8
  store %struct.asm_parser* %0, %struct.asm_parser** %4, align 8
  store %struct.instruction* %1, %struct.instruction** %5, align 8
  store %struct.shader_reg* %2, %struct.shader_reg** %6, align 8
  %7 = load %struct.shader_reg*, %struct.shader_reg** %6, align 8
  %8 = load i32, i32* @vs_3_reg_allowed, align 4
  %9 = call i32 @check_reg_type(%struct.shader_reg* %7, i32 %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %23, label %11

11:                                               ; preds = %3
  %12 = load %struct.asm_parser*, %struct.asm_parser** %4, align 8
  %13 = load %struct.asm_parser*, %struct.asm_parser** %4, align 8
  %14 = getelementptr inbounds %struct.asm_parser, %struct.asm_parser* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.shader_reg*, %struct.shader_reg** %6, align 8
  %17 = call i32 @debug_print_dstreg(%struct.shader_reg* %16)
  %18 = call i32 @asmparser_message(%struct.asm_parser* %12, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %17)
  %19 = load %struct.asm_parser*, %struct.asm_parser** %4, align 8
  %20 = getelementptr inbounds %struct.asm_parser, %struct.asm_parser* %19, i32 0, i32 0
  %21 = load i32, i32* @PARSE_ERR, align 4
  %22 = call i32 @set_parse_status(i32* %20, i32 %21)
  br label %23

23:                                               ; preds = %11, %3
  %24 = load %struct.asm_parser*, %struct.asm_parser** %4, align 8
  %25 = load %struct.instruction*, %struct.instruction** %5, align 8
  %26 = getelementptr inbounds %struct.instruction, %struct.instruction* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @check_ps_dstmod(%struct.asm_parser* %24, i32 %27)
  %29 = load %struct.asm_parser*, %struct.asm_parser** %4, align 8
  %30 = load %struct.instruction*, %struct.instruction** %5, align 8
  %31 = getelementptr inbounds %struct.instruction, %struct.instruction* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @check_shift_dstmod(%struct.asm_parser* %29, i32 %32)
  %34 = load %struct.instruction*, %struct.instruction** %5, align 8
  %35 = getelementptr inbounds %struct.instruction, %struct.instruction* %34, i32 0, i32 1
  %36 = load %struct.shader_reg*, %struct.shader_reg** %6, align 8
  %37 = bitcast %struct.shader_reg* %35 to i8*
  %38 = bitcast %struct.shader_reg* %36 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %37, i8* align 4 %38, i64 4, i1 false)
  %39 = load i32, i32* @TRUE, align 4
  %40 = load %struct.instruction*, %struct.instruction** %5, align 8
  %41 = getelementptr inbounds %struct.instruction, %struct.instruction* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 4
  ret void
}

declare dso_local i32 @check_reg_type(%struct.shader_reg*, i32) #1

declare dso_local i32 @asmparser_message(%struct.asm_parser*, i8*, i32, i32) #1

declare dso_local i32 @debug_print_dstreg(%struct.shader_reg*) #1

declare dso_local i32 @set_parse_status(i32*, i32) #1

declare dso_local i32 @check_ps_dstmod(%struct.asm_parser*, i32) #1

declare dso_local i32 @check_shift_dstmod(%struct.asm_parser*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
