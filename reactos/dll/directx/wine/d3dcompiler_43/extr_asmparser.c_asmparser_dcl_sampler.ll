; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dcompiler_43/extr_asmparser.c_asmparser_dcl_sampler.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dcompiler_43/extr_asmparser.c_asmparser_dcl_sampler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asm_parser = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64 }

@BWRITERSPDM_MSAMPCENTROID = common dso_local global i64 0, align 8
@BWRITERSPDM_PARTIALPRECISION = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [50 x i8] c"Line %u: Unsupported modifier in dcl instruction\0A\00", align 1
@PARSE_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"Out of memory\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.asm_parser*, i64, i64, i64, i32)* @asmparser_dcl_sampler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @asmparser_dcl_sampler(%struct.asm_parser* %0, i64 %1, i64 %2, i64 %3, i32 %4) #0 {
  %6 = alloca %struct.asm_parser*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.asm_parser* %0, %struct.asm_parser** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 %4, i32* %10, align 4
  %11 = load %struct.asm_parser*, %struct.asm_parser** %6, align 8
  %12 = getelementptr inbounds %struct.asm_parser, %struct.asm_parser* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = icmp ne %struct.TYPE_2__* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %5
  br label %60

16:                                               ; preds = %5
  %17 = load i64, i64* %8, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %45

19:                                               ; preds = %16
  %20 = load %struct.asm_parser*, %struct.asm_parser** %6, align 8
  %21 = getelementptr inbounds %struct.asm_parser, %struct.asm_parser* %20, i32 0, i32 1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = call i64 @BWRITERPS_VERSION(i32 3, i32 0)
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %35, label %27

27:                                               ; preds = %19
  %28 = load i64, i64* %8, align 8
  %29 = load i64, i64* @BWRITERSPDM_MSAMPCENTROID, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %45

31:                                               ; preds = %27
  %32 = load i64, i64* %8, align 8
  %33 = load i64, i64* @BWRITERSPDM_PARTIALPRECISION, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %45

35:                                               ; preds = %31, %19
  %36 = load %struct.asm_parser*, %struct.asm_parser** %6, align 8
  %37 = load %struct.asm_parser*, %struct.asm_parser** %6, align 8
  %38 = getelementptr inbounds %struct.asm_parser, %struct.asm_parser* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @asmparser_message(%struct.asm_parser* %36, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %39)
  %41 = load %struct.asm_parser*, %struct.asm_parser** %6, align 8
  %42 = getelementptr inbounds %struct.asm_parser, %struct.asm_parser* %41, i32 0, i32 0
  %43 = load i32, i32* @PARSE_ERR, align 4
  %44 = call i32 @set_parse_status(i32* %42, i32 %43)
  br label %60

45:                                               ; preds = %31, %27, %16
  %46 = load %struct.asm_parser*, %struct.asm_parser** %6, align 8
  %47 = getelementptr inbounds %struct.asm_parser, %struct.asm_parser* %46, i32 0, i32 1
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = load i64, i64* %7, align 8
  %50 = load i64, i64* %8, align 8
  %51 = load i64, i64* %9, align 8
  %52 = call i32 @record_sampler(%struct.TYPE_2__* %48, i64 %49, i64 %50, i64 %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %60, label %54

54:                                               ; preds = %45
  %55 = call i32 @ERR(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %56 = load %struct.asm_parser*, %struct.asm_parser** %6, align 8
  %57 = getelementptr inbounds %struct.asm_parser, %struct.asm_parser* %56, i32 0, i32 0
  %58 = load i32, i32* @PARSE_ERR, align 4
  %59 = call i32 @set_parse_status(i32* %57, i32 %58)
  br label %60

60:                                               ; preds = %15, %35, %54, %45
  ret void
}

declare dso_local i64 @BWRITERPS_VERSION(i32, i32) #1

declare dso_local i32 @asmparser_message(%struct.asm_parser*, i8*, i32) #1

declare dso_local i32 @set_parse_status(i32*, i32) #1

declare dso_local i32 @record_sampler(%struct.TYPE_2__*, i64, i64, i64) #1

declare dso_local i32 @ERR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
