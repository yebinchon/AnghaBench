; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/arm/winedbg/extr_be_arm.c_arm_disasm_longmul.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/arm/winedbg/extr_be_arm.c_arm_disasm_longmul.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.winedbg_arm_insn = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"%s%s%s%s %s, %s, %s, %s\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"u\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"mlal\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"mull\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@tbl_regs = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.winedbg_arm_insn*, i32)* @arm_disasm_longmul to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arm_disasm_longmul(%struct.winedbg_arm_insn* %0, i32 %1) #0 {
  %3 = alloca %struct.winedbg_arm_insn*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  %7 = alloca i16, align 2
  store %struct.winedbg_arm_insn* %0, %struct.winedbg_arm_insn** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = ashr i32 %8, 22
  %10 = and i32 %9, 1
  %11 = trunc i32 %10 to i16
  store i16 %11, i16* %5, align 2
  %12 = load i32, i32* %4, align 4
  %13 = ashr i32 %12, 21
  %14 = and i32 %13, 1
  %15 = trunc i32 %14 to i16
  store i16 %15, i16* %6, align 2
  %16 = load i32, i32* %4, align 4
  %17 = ashr i32 %16, 20
  %18 = and i32 %17, 1
  %19 = trunc i32 %18 to i16
  store i16 %19, i16* %7, align 2
  %20 = load %struct.winedbg_arm_insn*, %struct.winedbg_arm_insn** %3, align 8
  %21 = getelementptr inbounds %struct.winedbg_arm_insn, %struct.winedbg_arm_insn* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i16, i16* %5, align 2
  %24 = sext i16 %23 to i32
  %25 = icmp ne i32 %24, 0
  %26 = zext i1 %25 to i64
  %27 = select i1 %25, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)
  %28 = load i16, i16* %6, align 2
  %29 = sext i16 %28 to i32
  %30 = icmp ne i32 %29, 0
  %31 = zext i1 %30 to i64
  %32 = select i1 %30, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0)
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @get_cond(i32 %33)
  %35 = load i16, i16* %7, align 2
  %36 = sext i16 %35 to i32
  %37 = icmp ne i32 %36, 0
  %38 = zext i1 %37 to i64
  %39 = select i1 %37, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0)
  %40 = load i32*, i32** @tbl_regs, align 8
  %41 = load i32, i32* %4, align 4
  %42 = call i64 @get_nibble(i32 %41, i32 3)
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = load i32*, i32** @tbl_regs, align 8
  %46 = load i32, i32* %4, align 4
  %47 = call i64 @get_nibble(i32 %46, i32 4)
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = load i32*, i32** @tbl_regs, align 8
  %51 = load i32, i32* %4, align 4
  %52 = call i64 @get_nibble(i32 %51, i32 0)
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = load i32*, i32** @tbl_regs, align 8
  %56 = load i32, i32* %4, align 4
  %57 = call i64 @get_nibble(i32 %56, i32 2)
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @r_str_appendf(i32 %22, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8* %27, i8* %32, i32 %34, i8* %39, i32 %44, i32 %49, i32 %54, i32 %59)
  %61 = load %struct.winedbg_arm_insn*, %struct.winedbg_arm_insn** %3, align 8
  %62 = getelementptr inbounds %struct.winedbg_arm_insn, %struct.winedbg_arm_insn* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 4
  ret i32 0
}

declare dso_local i32 @r_str_appendf(i32, i8*, i8*, i8*, i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @get_cond(i32) #1

declare dso_local i64 @get_nibble(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
