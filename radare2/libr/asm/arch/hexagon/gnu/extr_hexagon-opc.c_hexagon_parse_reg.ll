; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/hexagon/gnu/extr_hexagon-opc.c_hexagon_parse_reg.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/hexagon/gnu/extr_hexagon-opc.c_hexagon_parse_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@hexagon_gp_regs = common dso_local global i32 0, align 4
@hexagon_gp_regs_count = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@HEXAGON_OPERAND_IS_REGISTER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @hexagon_parse_reg(i32* %0, i32* %1, i32* %2, i8* %3, i64* %4, i32* %5, i8** %6) #0 {
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i8**, align 8
  %16 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store i32* %1, i32** %10, align 8
  store i32* %2, i32** %11, align 8
  store i8* %3, i8** %12, align 8
  store i64* %4, i64** %13, align 8
  store i32* %5, i32** %14, align 8
  store i8** %6, i8*** %15, align 8
  %17 = load i32*, i32** %9, align 8
  %18 = load i32, i32* @hexagon_gp_regs, align 4
  %19 = load i32, i32* @hexagon_gp_regs_count, align 4
  %20 = call i32 @hexagon_reg_num(i32* %17, i8** %12, i8 signext 114, i32 %18, i32 %19, i32* null, i8 signext 0)
  store i32 %20, i32* %16, align 4
  %21 = load i32, i32* %16, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %7
  store i8* null, i8** %8, align 8
  br label %46

24:                                               ; preds = %7
  %25 = load i32*, i32** %9, align 8
  %26 = load i32*, i32** %10, align 8
  %27 = load i32*, i32** %11, align 8
  %28 = load i32, i32* %16, align 4
  %29 = load i32, i32* @FALSE, align 4
  %30 = load i32, i32* @FALSE, align 4
  %31 = load i8**, i8*** %15, align 8
  %32 = call i64 @hexagon_encode_operand(i32* %25, i32* %26, i32* %27, i32 %28, i32* null, i32 %29, i32 %30, i8** %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %45

34:                                               ; preds = %24
  %35 = load i32*, i32** %14, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %40

37:                                               ; preds = %34
  %38 = load i32, i32* @HEXAGON_OPERAND_IS_REGISTER, align 4
  %39 = load i32*, i32** %14, align 8
  store i32 %38, i32* %39, align 4
  br label %40

40:                                               ; preds = %37, %34
  %41 = load i32, i32* %16, align 4
  %42 = sext i32 %41 to i64
  %43 = load i64*, i64** %13, align 8
  store i64 %42, i64* %43, align 8
  %44 = load i8*, i8** %12, align 8
  store i8* %44, i8** %8, align 8
  br label %46

45:                                               ; preds = %24
  store i8* null, i8** %8, align 8
  br label %46

46:                                               ; preds = %45, %40, %23
  %47 = load i8*, i8** %8, align 8
  ret i8* %47
}

declare dso_local i32 @hexagon_reg_num(i32*, i8**, i8 signext, i32, i32, i32*, i8 signext) #1

declare dso_local i64 @hexagon_encode_operand(i32*, i32*, i32*, i32, i32*, i32, i32, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
