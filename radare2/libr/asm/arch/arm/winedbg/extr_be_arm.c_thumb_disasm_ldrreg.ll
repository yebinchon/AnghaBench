; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/arm/winedbg/extr_be_arm.c_thumb_disasm_ldrreg.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/arm/winedbg/extr_be_arm.c_thumb_disasm_ldrreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.winedbg_arm_insn = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"%s%s %s, [%s, %s]\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"ldr\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"str\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@tbl_regs = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.winedbg_arm_insn*, i32)* @thumb_disasm_ldrreg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @thumb_disasm_ldrreg(%struct.winedbg_arm_insn* %0, i32 %1) #0 {
  %3 = alloca %struct.winedbg_arm_insn*, align 8
  %4 = alloca i32, align 4
  store %struct.winedbg_arm_insn* %0, %struct.winedbg_arm_insn** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.winedbg_arm_insn*, %struct.winedbg_arm_insn** %3, align 8
  %6 = getelementptr inbounds %struct.winedbg_arm_insn, %struct.winedbg_arm_insn* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* %4, align 4
  %9 = and i32 %8, 2048
  %10 = icmp ne i32 %9, 0
  %11 = zext i1 %10 to i64
  %12 = select i1 %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %13 = load i32, i32* %4, align 4
  %14 = and i32 %13, 1024
  %15 = icmp ne i32 %14, 0
  %16 = zext i1 %15 to i64
  %17 = select i1 %15, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %18 = load i32*, i32** @tbl_regs, align 8
  %19 = load i32, i32* %4, align 4
  %20 = and i32 %19, 7
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %18, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = load i32*, i32** @tbl_regs, align 8
  %25 = load i32, i32* %4, align 4
  %26 = ashr i32 %25, 3
  %27 = and i32 %26, 7
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %24, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = load i32*, i32** @tbl_regs, align 8
  %32 = load i32, i32* %4, align 4
  %33 = ashr i32 %32, 6
  %34 = and i32 %33, 7
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %31, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @r_str_appendf(i32 %7, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8* %12, i8* %17, i32 %23, i32 %30, i32 %37)
  %39 = load %struct.winedbg_arm_insn*, %struct.winedbg_arm_insn** %3, align 8
  %40 = getelementptr inbounds %struct.winedbg_arm_insn, %struct.winedbg_arm_insn* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 4
  ret i32 0
}

declare dso_local i32 @r_str_appendf(i32, i8*, i8*, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
