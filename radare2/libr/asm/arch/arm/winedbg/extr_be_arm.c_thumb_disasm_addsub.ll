; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/arm/winedbg/extr_be_arm.c_thumb_disasm_addsub.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/arm/winedbg/extr_be_arm.c_thumb_disasm_addsub.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.winedbg_arm_insn = type { i8* }

@.str = private unnamed_addr constant [12 x i8] c"%s %s, %s, \00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"sub\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"add\00", align 1
@tbl_regs = common dso_local global i32* null, align 8
@.str.3 = private unnamed_addr constant [4 x i8] c"#%d\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.winedbg_arm_insn*, i32)* @thumb_disasm_addsub to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @thumb_disasm_addsub(%struct.winedbg_arm_insn* %0, i32 %1) #0 {
  %3 = alloca %struct.winedbg_arm_insn*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.winedbg_arm_insn* %0, %struct.winedbg_arm_insn** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = ashr i32 %7, 9
  %9 = and i32 %8, 1
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %4, align 4
  %11 = ashr i32 %10, 10
  %12 = and i32 %11, 1
  store i32 %12, i32* %6, align 4
  %13 = load %struct.winedbg_arm_insn*, %struct.winedbg_arm_insn** %3, align 8
  %14 = getelementptr inbounds %struct.winedbg_arm_insn, %struct.winedbg_arm_insn* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  %16 = load i32, i32* %5, align 4
  %17 = icmp ne i32 %16, 0
  %18 = zext i1 %17 to i64
  %19 = select i1 %17, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %20 = load i32*, i32** @tbl_regs, align 8
  %21 = load i32, i32* %4, align 4
  %22 = and i32 %21, 7
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %20, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = load i32*, i32** @tbl_regs, align 8
  %27 = load i32, i32* %4, align 4
  %28 = ashr i32 %27, 3
  %29 = and i32 %28, 7
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %26, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = call i8* (i8*, i8*, ...) @r_str_appendf(i8* %15, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %19, i32 %25, i32 %32)
  %34 = load %struct.winedbg_arm_insn*, %struct.winedbg_arm_insn** %3, align 8
  %35 = getelementptr inbounds %struct.winedbg_arm_insn, %struct.winedbg_arm_insn* %34, i32 0, i32 0
  store i8* %33, i8** %35, align 8
  %36 = load i32, i32* %6, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %48

38:                                               ; preds = %2
  %39 = load %struct.winedbg_arm_insn*, %struct.winedbg_arm_insn** %3, align 8
  %40 = getelementptr inbounds %struct.winedbg_arm_insn, %struct.winedbg_arm_insn* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  %42 = load i32, i32* %4, align 4
  %43 = ashr i32 %42, 6
  %44 = and i32 %43, 7
  %45 = call i8* (i8*, i8*, ...) @r_str_appendf(i8* %41, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %44)
  %46 = load %struct.winedbg_arm_insn*, %struct.winedbg_arm_insn** %3, align 8
  %47 = getelementptr inbounds %struct.winedbg_arm_insn, %struct.winedbg_arm_insn* %46, i32 0, i32 0
  store i8* %45, i8** %47, align 8
  br label %62

48:                                               ; preds = %2
  %49 = load %struct.winedbg_arm_insn*, %struct.winedbg_arm_insn** %3, align 8
  %50 = getelementptr inbounds %struct.winedbg_arm_insn, %struct.winedbg_arm_insn* %49, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8
  %52 = load i32*, i32** @tbl_regs, align 8
  %53 = load i32, i32* %4, align 4
  %54 = ashr i32 %53, 6
  %55 = and i32 %54, 7
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %52, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = call i8* (i8*, i8*, ...) @r_str_appendf(i8* %51, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32 %58)
  %60 = load %struct.winedbg_arm_insn*, %struct.winedbg_arm_insn** %3, align 8
  %61 = getelementptr inbounds %struct.winedbg_arm_insn, %struct.winedbg_arm_insn* %60, i32 0, i32 0
  store i8* %59, i8** %61, align 8
  br label %62

62:                                               ; preds = %48, %38
  ret i32 0
}

declare dso_local i8* @r_str_appendf(i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
