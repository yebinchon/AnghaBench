; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/arm/winedbg/extr_be_arm.c_arm_disasm_swp.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/arm/winedbg/extr_be_arm.c_arm_disasm_swp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.winedbg_arm_insn = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"swp%s%s %s, %s, [%s]\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@tbl_regs = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.winedbg_arm_insn*, i32)* @arm_disasm_swp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arm_disasm_swp(%struct.winedbg_arm_insn* %0, i32 %1) #0 {
  %3 = alloca %struct.winedbg_arm_insn*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i16, align 2
  store %struct.winedbg_arm_insn* %0, %struct.winedbg_arm_insn** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = ashr i32 %6, 22
  %8 = and i32 %7, 1
  %9 = trunc i32 %8 to i16
  store i16 %9, i16* %5, align 2
  %10 = load %struct.winedbg_arm_insn*, %struct.winedbg_arm_insn** %3, align 8
  %11 = getelementptr inbounds %struct.winedbg_arm_insn, %struct.winedbg_arm_insn* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @get_cond(i32 %13)
  %15 = load i16, i16* %5, align 2
  %16 = sext i16 %15 to i32
  %17 = icmp ne i32 %16, 0
  %18 = zext i1 %17 to i64
  %19 = select i1 %17, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %20 = load i32*, i32** @tbl_regs, align 8
  %21 = load i32, i32* %4, align 4
  %22 = call i64 @get_nibble(i32 %21, i32 3)
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = load i32*, i32** @tbl_regs, align 8
  %26 = load i32, i32* %4, align 4
  %27 = call i64 @get_nibble(i32 %26, i32 0)
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = load i32*, i32** @tbl_regs, align 8
  %31 = load i32, i32* %4, align 4
  %32 = call i64 @get_nibble(i32 %31, i32 4)
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @r_str_appendf(i32 %12, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %14, i8* %19, i32 %24, i32 %29, i32 %34)
  %36 = load %struct.winedbg_arm_insn*, %struct.winedbg_arm_insn** %3, align 8
  %37 = getelementptr inbounds %struct.winedbg_arm_insn, %struct.winedbg_arm_insn* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 4
  ret i32 0
}

declare dso_local i32 @r_str_appendf(i32, i8*, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @get_cond(i32) #1

declare dso_local i64 @get_nibble(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
