; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/arm/winedbg/extr_be_arm.c_thumb_disasm_aluop.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/arm/winedbg/extr_be_arm.c_thumb_disasm_aluop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.winedbg_arm_insn = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"%s %s, %s\00", align 1
@tbl_aluops_t = common dso_local global i32* null, align 8
@tbl_regs = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.winedbg_arm_insn*, i32)* @thumb_disasm_aluop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @thumb_disasm_aluop(%struct.winedbg_arm_insn* %0, i32 %1) #0 {
  %3 = alloca %struct.winedbg_arm_insn*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  %7 = alloca i16, align 2
  store %struct.winedbg_arm_insn* %0, %struct.winedbg_arm_insn** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = and i32 %8, 7
  %10 = trunc i32 %9 to i16
  store i16 %10, i16* %5, align 2
  %11 = load i32, i32* %4, align 4
  %12 = ashr i32 %11, 3
  %13 = and i32 %12, 7
  %14 = trunc i32 %13 to i16
  store i16 %14, i16* %6, align 2
  %15 = load i32, i32* %4, align 4
  %16 = ashr i32 %15, 6
  %17 = and i32 %16, 15
  %18 = trunc i32 %17 to i16
  store i16 %18, i16* %7, align 2
  %19 = load %struct.winedbg_arm_insn*, %struct.winedbg_arm_insn** %3, align 8
  %20 = getelementptr inbounds %struct.winedbg_arm_insn, %struct.winedbg_arm_insn* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32*, i32** @tbl_aluops_t, align 8
  %23 = load i16, i16* %7, align 2
  %24 = sext i16 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = load i32*, i32** @tbl_regs, align 8
  %28 = load i16, i16* %5, align 2
  %29 = sext i16 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = load i32*, i32** @tbl_regs, align 8
  %33 = load i16, i16* %6, align 2
  %34 = sext i16 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @r_str_appendf(i32 %21, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %26, i32 %31, i32 %36)
  %38 = load %struct.winedbg_arm_insn*, %struct.winedbg_arm_insn** %3, align 8
  %39 = getelementptr inbounds %struct.winedbg_arm_insn, %struct.winedbg_arm_insn* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 4
  ret i32 0
}

declare dso_local i32 @r_str_appendf(i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
