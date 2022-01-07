; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/arm/winedbg/extr_be_arm.c_thumb2_disasm_coprocmov1.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/arm/winedbg/extr_be_arm.c_thumb2_disasm_coprocmov1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.winedbg_arm_insn = type { i8* }

@.str = private unnamed_addr constant [35 x i8] c"%s%s\09p%u, #%u, %s, cr%u, cr%u, #%u\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"mrc\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"mcr\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"2\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@tbl_regs = common dso_local global i32* null, align 8
@.str.5 = private unnamed_addr constant [30 x i8] c"%s%s\09p%u, #%u, %s, cr%u, cr%u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.winedbg_arm_insn*, i32)* @thumb2_disasm_coprocmov1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @thumb2_disasm_coprocmov1(%struct.winedbg_arm_insn* %0, i32 %1) #0 {
  %3 = alloca %struct.winedbg_arm_insn*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.winedbg_arm_insn* %0, %struct.winedbg_arm_insn** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = ashr i32 %7, 21
  %9 = and i32 %8, 7
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %4, align 4
  %11 = ashr i32 %10, 5
  %12 = and i32 %11, 7
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %45

15:                                               ; preds = %2
  %16 = load %struct.winedbg_arm_insn*, %struct.winedbg_arm_insn** %3, align 8
  %17 = getelementptr inbounds %struct.winedbg_arm_insn, %struct.winedbg_arm_insn* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  %19 = load i32, i32* %4, align 4
  %20 = and i32 %19, 1048576
  %21 = icmp ne i32 %20, 0
  %22 = zext i1 %21 to i64
  %23 = select i1 %21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %24 = load i32, i32* %4, align 4
  %25 = and i32 %24, 268435456
  %26 = icmp ne i32 %25, 0
  %27 = zext i1 %26 to i64
  %28 = select i1 %26, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %29 = load i32, i32* %4, align 4
  %30 = call i64 @get_nibble(i32 %29, i32 2)
  %31 = load i32, i32* %5, align 4
  %32 = load i32*, i32** @tbl_regs, align 8
  %33 = load i32, i32* %4, align 4
  %34 = call i64 @get_nibble(i32 %33, i32 3)
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %4, align 4
  %38 = call i64 @get_nibble(i32 %37, i32 4)
  %39 = load i32, i32* %4, align 4
  %40 = call i64 @get_nibble(i32 %39, i32 0)
  %41 = load i32, i32* %6, align 4
  %42 = call i8* (i8*, i8*, i8*, i8*, i64, i32, i32, i64, i64, ...) @r_str_appendf(i8* %18, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i8* %23, i8* %28, i64 %30, i32 %31, i32 %36, i64 %38, i64 %40, i32 %41)
  %43 = load %struct.winedbg_arm_insn*, %struct.winedbg_arm_insn** %3, align 8
  %44 = getelementptr inbounds %struct.winedbg_arm_insn, %struct.winedbg_arm_insn* %43, i32 0, i32 0
  store i8* %42, i8** %44, align 8
  br label %74

45:                                               ; preds = %2
  %46 = load %struct.winedbg_arm_insn*, %struct.winedbg_arm_insn** %3, align 8
  %47 = getelementptr inbounds %struct.winedbg_arm_insn, %struct.winedbg_arm_insn* %46, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  %49 = load i32, i32* %4, align 4
  %50 = and i32 %49, 1048576
  %51 = icmp ne i32 %50, 0
  %52 = zext i1 %51 to i64
  %53 = select i1 %51, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %54 = load i32, i32* %4, align 4
  %55 = and i32 %54, 268435456
  %56 = icmp ne i32 %55, 0
  %57 = zext i1 %56 to i64
  %58 = select i1 %56, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %59 = load i32, i32* %4, align 4
  %60 = call i64 @get_nibble(i32 %59, i32 2)
  %61 = load i32, i32* %5, align 4
  %62 = load i32*, i32** @tbl_regs, align 8
  %63 = load i32, i32* %4, align 4
  %64 = call i64 @get_nibble(i32 %63, i32 3)
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %4, align 4
  %68 = call i64 @get_nibble(i32 %67, i32 4)
  %69 = load i32, i32* %4, align 4
  %70 = call i64 @get_nibble(i32 %69, i32 0)
  %71 = call i8* (i8*, i8*, i8*, i8*, i64, i32, i32, i64, i64, ...) @r_str_appendf(i8* %48, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i8* %53, i8* %58, i64 %60, i32 %61, i32 %66, i64 %68, i64 %70)
  %72 = load %struct.winedbg_arm_insn*, %struct.winedbg_arm_insn** %3, align 8
  %73 = getelementptr inbounds %struct.winedbg_arm_insn, %struct.winedbg_arm_insn* %72, i32 0, i32 0
  store i8* %71, i8** %73, align 8
  br label %74

74:                                               ; preds = %45, %15
  ret i32 0
}

declare dso_local i8* @r_str_appendf(i8*, i8*, i8*, i8*, i64, i32, i32, i64, i64, ...) #1

declare dso_local i64 @get_nibble(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
