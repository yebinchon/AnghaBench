; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/arm/winedbg/extr_be_arm.c_arm_disasm_msrtrans.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/arm/winedbg/extr_be_arm.c_arm_disasm_msrtrans.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.winedbg_arm_insn = type { i8* }

@.str = private unnamed_addr constant [13 x i8] c"msr%s %s, %s\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"spsr\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"cpsr\00", align 1
@tbl_regs = common dso_local global i32* null, align 8
@.str.3 = private unnamed_addr constant [14 x i8] c"msr%s %s, #%u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.winedbg_arm_insn*, i32)* @arm_disasm_msrtrans to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arm_disasm_msrtrans(%struct.winedbg_arm_insn* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.winedbg_arm_insn*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i16, align 2
  %7 = alloca i16, align 2
  %8 = alloca i16, align 2
  store %struct.winedbg_arm_insn* %0, %struct.winedbg_arm_insn** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = ashr i32 %9, 25
  %11 = and i32 %10, 1
  %12 = trunc i32 %11 to i16
  store i16 %12, i16* %6, align 2
  %13 = load i32, i32* %5, align 4
  %14 = ashr i32 %13, 22
  %15 = and i32 %14, 1
  %16 = trunc i32 %15 to i16
  store i16 %16, i16* %7, align 2
  %17 = load i32, i32* %5, align 4
  %18 = ashr i32 %17, 16
  %19 = and i32 %18, 1
  %20 = trunc i32 %19 to i16
  store i16 %20, i16* %8, align 2
  %21 = load i16, i16* %8, align 2
  %22 = sext i16 %21 to i32
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %2
  %25 = load i16, i16* %6, align 2
  %26 = icmp ne i16 %25, 0
  br i1 %26, label %47, label %27

27:                                               ; preds = %24, %2
  %28 = load %struct.winedbg_arm_insn*, %struct.winedbg_arm_insn** %4, align 8
  %29 = getelementptr inbounds %struct.winedbg_arm_insn, %struct.winedbg_arm_insn* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @get_cond(i32 %31)
  %33 = load i16, i16* %7, align 2
  %34 = sext i16 %33 to i32
  %35 = icmp ne i32 %34, 0
  %36 = zext i1 %35 to i64
  %37 = select i1 %35, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)
  %38 = load i32*, i32** @tbl_regs, align 8
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @get_nibble(i32 %39, i32 0)
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %38, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = call i8* @r_str_appendf(i8* %30, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %32, i8* %37, i32 %43)
  %45 = load %struct.winedbg_arm_insn*, %struct.winedbg_arm_insn** %4, align 8
  %46 = getelementptr inbounds %struct.winedbg_arm_insn, %struct.winedbg_arm_insn* %45, i32 0, i32 0
  store i8* %44, i8** %46, align 8
  store i32 0, i32* %3, align 4
  br label %67

47:                                               ; preds = %24
  %48 = load %struct.winedbg_arm_insn*, %struct.winedbg_arm_insn** %4, align 8
  %49 = getelementptr inbounds %struct.winedbg_arm_insn, %struct.winedbg_arm_insn* %48, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  %51 = load i32, i32* %5, align 4
  %52 = call i32 @get_cond(i32 %51)
  %53 = load i16, i16* %7, align 2
  %54 = sext i16 %53 to i32
  %55 = icmp ne i32 %54, 0
  %56 = zext i1 %55 to i64
  %57 = select i1 %55, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)
  %58 = load i32, i32* %5, align 4
  %59 = and i32 %58, 255
  %60 = load i32, i32* %5, align 4
  %61 = call i32 @get_nibble(i32 %60, i32 2)
  %62 = mul nsw i32 2, %61
  %63 = call i32 @ROR32(i32 %59, i32 %62)
  %64 = call i8* @r_str_appendf(i8* %50, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 %52, i8* %57, i32 %63)
  %65 = load %struct.winedbg_arm_insn*, %struct.winedbg_arm_insn** %4, align 8
  %66 = getelementptr inbounds %struct.winedbg_arm_insn, %struct.winedbg_arm_insn* %65, i32 0, i32 0
  store i8* %64, i8** %66, align 8
  store i32 0, i32* %3, align 4
  br label %67

67:                                               ; preds = %47, %27
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local i8* @r_str_appendf(i8*, i8*, i32, i8*, i32) #1

declare dso_local i32 @get_cond(i32) #1

declare dso_local i32 @get_nibble(i32, i32) #1

declare dso_local i32 @ROR32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
