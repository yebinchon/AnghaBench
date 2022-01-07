; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dcompiler_43/extr_asmparser.c_check_legacy_srcmod.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dcompiler_43/extr_asmparser.c_check_legacy_srcmod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asm_parser = type { i32, i32 }

@BWRITERSPSM_BIAS = common dso_local global i64 0, align 8
@BWRITERSPSM_BIASNEG = common dso_local global i64 0, align 8
@BWRITERSPSM_SIGN = common dso_local global i64 0, align 8
@BWRITERSPSM_SIGNNEG = common dso_local global i64 0, align 8
@BWRITERSPSM_COMP = common dso_local global i64 0, align 8
@BWRITERSPSM_X2 = common dso_local global i64 0, align 8
@BWRITERSPSM_X2NEG = common dso_local global i64 0, align 8
@BWRITERSPSM_DZ = common dso_local global i64 0, align 8
@BWRITERSPSM_DW = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [66 x i8] c"Line %u: Source modifier %s not supported in this shader version\0A\00", align 1
@PARSE_ERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.asm_parser*, i64)* @check_legacy_srcmod to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_legacy_srcmod(%struct.asm_parser* %0, i64 %1) #0 {
  %3 = alloca %struct.asm_parser*, align 8
  %4 = alloca i64, align 8
  store %struct.asm_parser* %0, %struct.asm_parser** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @BWRITERSPSM_BIAS, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %40, label %8

8:                                                ; preds = %2
  %9 = load i64, i64* %4, align 8
  %10 = load i64, i64* @BWRITERSPSM_BIASNEG, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %40, label %12

12:                                               ; preds = %8
  %13 = load i64, i64* %4, align 8
  %14 = load i64, i64* @BWRITERSPSM_SIGN, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %40, label %16

16:                                               ; preds = %12
  %17 = load i64, i64* %4, align 8
  %18 = load i64, i64* @BWRITERSPSM_SIGNNEG, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %40, label %20

20:                                               ; preds = %16
  %21 = load i64, i64* %4, align 8
  %22 = load i64, i64* @BWRITERSPSM_COMP, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %40, label %24

24:                                               ; preds = %20
  %25 = load i64, i64* %4, align 8
  %26 = load i64, i64* @BWRITERSPSM_X2, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %40, label %28

28:                                               ; preds = %24
  %29 = load i64, i64* %4, align 8
  %30 = load i64, i64* @BWRITERSPSM_X2NEG, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %40, label %32

32:                                               ; preds = %28
  %33 = load i64, i64* %4, align 8
  %34 = load i64, i64* @BWRITERSPSM_DZ, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %40, label %36

36:                                               ; preds = %32
  %37 = load i64, i64* %4, align 8
  %38 = load i64, i64* @BWRITERSPSM_DW, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %52

40:                                               ; preds = %36, %32, %28, %24, %20, %16, %12, %8, %2
  %41 = load %struct.asm_parser*, %struct.asm_parser** %3, align 8
  %42 = load %struct.asm_parser*, %struct.asm_parser** %3, align 8
  %43 = getelementptr inbounds %struct.asm_parser, %struct.asm_parser* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i64, i64* %4, align 8
  %46 = call i32 @debug_print_srcmod(i64 %45)
  %47 = call i32 @asmparser_message(%struct.asm_parser* %41, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0), i32 %44, i32 %46)
  %48 = load %struct.asm_parser*, %struct.asm_parser** %3, align 8
  %49 = getelementptr inbounds %struct.asm_parser, %struct.asm_parser* %48, i32 0, i32 0
  %50 = load i32, i32* @PARSE_ERR, align 4
  %51 = call i32 @set_parse_status(i32* %49, i32 %50)
  br label %52

52:                                               ; preds = %40, %36
  ret void
}

declare dso_local i32 @asmparser_message(%struct.asm_parser*, i8*, i32, i32) #1

declare dso_local i32 @debug_print_srcmod(i64) #1

declare dso_local i32 @set_parse_status(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
