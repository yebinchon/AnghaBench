; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/arm/winedbg/extr_be_arm.c_thumb_disasm_movshift.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/arm/winedbg/extr_be_arm.c_thumb_disasm_movshift.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.winedbg_arm_insn = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"%s %s, %s, #%u\00", align 1
@tbl_shifts = common dso_local global i32* null, align 8
@tbl_regs = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.winedbg_arm_insn*, i32)* @thumb_disasm_movshift to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @thumb_disasm_movshift(%struct.winedbg_arm_insn* %0, i32 %1) #0 {
  %3 = alloca %struct.winedbg_arm_insn*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.winedbg_arm_insn* %0, %struct.winedbg_arm_insn** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = ashr i32 %6, 11
  %8 = and i32 %7, 3
  store i32 %8, i32* %5, align 4
  %9 = load %struct.winedbg_arm_insn*, %struct.winedbg_arm_insn** %3, align 8
  %10 = getelementptr inbounds %struct.winedbg_arm_insn, %struct.winedbg_arm_insn* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32*, i32** @tbl_shifts, align 8
  %13 = load i32, i32* %5, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i32, i32* %12, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = load i32*, i32** @tbl_regs, align 8
  %18 = load i32, i32* %4, align 4
  %19 = and i32 %18, 7
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %17, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = load i32*, i32** @tbl_regs, align 8
  %24 = load i32, i32* %4, align 4
  %25 = ashr i32 %24, 3
  %26 = and i32 %25, 7
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %23, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %4, align 4
  %31 = ashr i32 %30, 6
  %32 = and i32 %31, 31
  %33 = call i32 @r_str_appendf(i32 %11, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %16, i32 %22, i32 %29, i32 %32)
  %34 = load %struct.winedbg_arm_insn*, %struct.winedbg_arm_insn** %3, align 8
  %35 = getelementptr inbounds %struct.winedbg_arm_insn, %struct.winedbg_arm_insn* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  ret i32 0
}

declare dso_local i32 @r_str_appendf(i32, i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
