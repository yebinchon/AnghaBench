; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/arm/winedbg/extr_be_arm.c_arm_disasm_mul.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/arm/winedbg/extr_be_arm.c_arm_disasm_mul.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.winedbg_arm_insn = type { i8* }

@.str = private unnamed_addr constant [23 x i8] c"mla%s%s %s, %s, %s, %s\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@tbl_regs = common dso_local global i32* null, align 8
@.str.3 = private unnamed_addr constant [19 x i8] c"mul%s%s %s, %s, %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.winedbg_arm_insn*, i32)* @arm_disasm_mul to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arm_disasm_mul(%struct.winedbg_arm_insn* %0, i32 %1) #0 {
  %3 = alloca %struct.winedbg_arm_insn*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  store %struct.winedbg_arm_insn* %0, %struct.winedbg_arm_insn** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = ashr i32 %7, 21
  %9 = and i32 %8, 1
  %10 = trunc i32 %9 to i16
  store i16 %10, i16* %5, align 2
  %11 = load i32, i32* %4, align 4
  %12 = ashr i32 %11, 20
  %13 = and i32 %12, 1
  %14 = trunc i32 %13 to i16
  store i16 %14, i16* %6, align 2
  %15 = load i16, i16* %5, align 2
  %16 = icmp ne i16 %15, 0
  br i1 %16, label %17, label %51

17:                                               ; preds = %2
  %18 = load %struct.winedbg_arm_insn*, %struct.winedbg_arm_insn** %3, align 8
  %19 = getelementptr inbounds %struct.winedbg_arm_insn, %struct.winedbg_arm_insn* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @get_cond(i32 %21)
  %23 = load i16, i16* %6, align 2
  %24 = sext i16 %23 to i32
  %25 = icmp ne i32 %24, 0
  %26 = zext i1 %25 to i64
  %27 = select i1 %25, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %28 = load i32*, i32** @tbl_regs, align 8
  %29 = load i32, i32* %4, align 4
  %30 = call i64 @get_nibble(i32 %29, i32 4)
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = load i32*, i32** @tbl_regs, align 8
  %34 = load i32, i32* %4, align 4
  %35 = call i64 @get_nibble(i32 %34, i32 0)
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = load i32*, i32** @tbl_regs, align 8
  %39 = load i32, i32* %4, align 4
  %40 = call i64 @get_nibble(i32 %39, i32 2)
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = load i32*, i32** @tbl_regs, align 8
  %44 = load i32, i32* %4, align 4
  %45 = call i64 @get_nibble(i32 %44, i32 3)
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = call i8* (i8*, i8*, i32, i8*, i32, i32, i32, ...) @r_str_appendf(i8* %20, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %22, i8* %27, i32 %32, i32 %37, i32 %42, i32 %47)
  %49 = load %struct.winedbg_arm_insn*, %struct.winedbg_arm_insn** %3, align 8
  %50 = getelementptr inbounds %struct.winedbg_arm_insn, %struct.winedbg_arm_insn* %49, i32 0, i32 0
  store i8* %48, i8** %50, align 8
  br label %80

51:                                               ; preds = %2
  %52 = load %struct.winedbg_arm_insn*, %struct.winedbg_arm_insn** %3, align 8
  %53 = getelementptr inbounds %struct.winedbg_arm_insn, %struct.winedbg_arm_insn* %52, i32 0, i32 0
  %54 = load i8*, i8** %53, align 8
  %55 = load i32, i32* %4, align 4
  %56 = call i32 @get_cond(i32 %55)
  %57 = load i16, i16* %6, align 2
  %58 = sext i16 %57 to i32
  %59 = icmp ne i32 %58, 0
  %60 = zext i1 %59 to i64
  %61 = select i1 %59, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %62 = load i32*, i32** @tbl_regs, align 8
  %63 = load i32, i32* %4, align 4
  %64 = call i64 @get_nibble(i32 %63, i32 4)
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = load i32*, i32** @tbl_regs, align 8
  %68 = load i32, i32* %4, align 4
  %69 = call i64 @get_nibble(i32 %68, i32 0)
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = load i32*, i32** @tbl_regs, align 8
  %73 = load i32, i32* %4, align 4
  %74 = call i64 @get_nibble(i32 %73, i32 2)
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = call i8* (i8*, i8*, i32, i8*, i32, i32, i32, ...) @r_str_appendf(i8* %54, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 %56, i8* %61, i32 %66, i32 %71, i32 %76)
  %78 = load %struct.winedbg_arm_insn*, %struct.winedbg_arm_insn** %3, align 8
  %79 = getelementptr inbounds %struct.winedbg_arm_insn, %struct.winedbg_arm_insn* %78, i32 0, i32 0
  store i8* %77, i8** %79, align 8
  br label %80

80:                                               ; preds = %51, %17
  ret i32 0
}

declare dso_local i8* @r_str_appendf(i8*, i8*, i32, i8*, i32, i32, i32, ...) #1

declare dso_local i32 @get_cond(i32) #1

declare dso_local i64 @get_nibble(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
