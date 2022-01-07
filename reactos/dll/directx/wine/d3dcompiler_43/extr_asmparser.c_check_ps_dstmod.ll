; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dcompiler_43/extr_asmparser.c_check_ps_dstmod.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dcompiler_43/extr_asmparser.c_check_ps_dstmod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asm_parser = type { i32, i32 }

@BWRITERSPDM_PARTIALPRECISION = common dso_local global i64 0, align 8
@BWRITERSPDM_MSAMPCENTROID = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [71 x i8] c"Line %u: Instruction modifier %s not supported in this shader version\0A\00", align 1
@PARSE_ERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.asm_parser*, i64)* @check_ps_dstmod to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_ps_dstmod(%struct.asm_parser* %0, i64 %1) #0 {
  %3 = alloca %struct.asm_parser*, align 8
  %4 = alloca i64, align 8
  store %struct.asm_parser* %0, %struct.asm_parser** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @BWRITERSPDM_PARTIALPRECISION, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %12, label %8

8:                                                ; preds = %2
  %9 = load i64, i64* %4, align 8
  %10 = load i64, i64* @BWRITERSPDM_MSAMPCENTROID, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %24

12:                                               ; preds = %8, %2
  %13 = load %struct.asm_parser*, %struct.asm_parser** %3, align 8
  %14 = load %struct.asm_parser*, %struct.asm_parser** %3, align 8
  %15 = getelementptr inbounds %struct.asm_parser, %struct.asm_parser* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load i64, i64* %4, align 8
  %18 = call i32 @debug_print_dstmod(i64 %17)
  %19 = call i32 @asmparser_message(%struct.asm_parser* %13, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str, i64 0, i64 0), i32 %16, i32 %18)
  %20 = load %struct.asm_parser*, %struct.asm_parser** %3, align 8
  %21 = getelementptr inbounds %struct.asm_parser, %struct.asm_parser* %20, i32 0, i32 0
  %22 = load i32, i32* @PARSE_ERR, align 4
  %23 = call i32 @set_parse_status(i32* %21, i32 %22)
  br label %24

24:                                               ; preds = %12, %8
  ret void
}

declare dso_local i32 @asmparser_message(%struct.asm_parser*, i8*, i32, i32) #1

declare dso_local i32 @debug_print_dstmod(i64) #1

declare dso_local i32 @set_parse_status(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
