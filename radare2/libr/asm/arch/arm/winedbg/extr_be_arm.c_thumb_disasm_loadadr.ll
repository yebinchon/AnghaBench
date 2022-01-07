; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/arm/winedbg/extr_be_arm.c_thumb_disasm_loadadr.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/arm/winedbg/extr_be_arm.c_thumb_disasm_loadadr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.winedbg_arm_insn = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"add %s, %s, #%d\00", align 1
@tbl_regs = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"sp\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"pc\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.winedbg_arm_insn*, i32)* @thumb_disasm_loadadr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @thumb_disasm_loadadr(%struct.winedbg_arm_insn* %0, i32 %1) #0 {
  %3 = alloca %struct.winedbg_arm_insn*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.winedbg_arm_insn* %0, %struct.winedbg_arm_insn** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = ashr i32 %7, 11
  %9 = and i32 %8, 1
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %4, align 4
  %11 = and i32 %10, 255
  %12 = shl i32 %11, 2
  store i32 %12, i32* %6, align 4
  %13 = load %struct.winedbg_arm_insn*, %struct.winedbg_arm_insn** %3, align 8
  %14 = getelementptr inbounds %struct.winedbg_arm_insn, %struct.winedbg_arm_insn* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32*, i32** @tbl_regs, align 8
  %17 = load i32, i32* %4, align 4
  %18 = ashr i32 %17, 8
  %19 = and i32 %18, 7
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %16, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp ne i32 %23, 0
  %25 = zext i1 %24 to i64
  %26 = select i1 %24, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @r_str_appendf(i32 %15, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %22, i8* %26, i32 %27)
  %29 = load %struct.winedbg_arm_insn*, %struct.winedbg_arm_insn** %3, align 8
  %30 = getelementptr inbounds %struct.winedbg_arm_insn, %struct.winedbg_arm_insn* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  ret i32 0
}

declare dso_local i32 @r_str_appendf(i32, i8*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
