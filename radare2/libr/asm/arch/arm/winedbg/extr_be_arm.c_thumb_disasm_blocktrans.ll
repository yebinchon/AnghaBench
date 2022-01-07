; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/arm/winedbg/extr_be_arm.c_thumb_disasm_blocktrans.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/arm/winedbg/extr_be_arm.c_thumb_disasm_blocktrans.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.winedbg_arm_insn = type { i8* }

@.str = private unnamed_addr constant [10 x i8] c"%s %s!, {\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"ldmia\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"stmia\00", align 1
@tbl_regs = common dso_local global i32* null, align 8
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"%s, \00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"}\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.winedbg_arm_insn*, i32)* @thumb_disasm_blocktrans to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @thumb_disasm_blocktrans(%struct.winedbg_arm_insn* %0, i32 %1) #0 {
  %3 = alloca %struct.winedbg_arm_insn*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  %7 = alloca i16, align 2
  store %struct.winedbg_arm_insn* %0, %struct.winedbg_arm_insn** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = ashr i32 %8, 11
  %10 = and i32 %9, 1
  %11 = trunc i32 %10 to i16
  store i16 %11, i16* %5, align 2
  store i16 7, i16* %6, align 2
  br label %12

12:                                               ; preds = %25, %2
  %13 = load i16, i16* %6, align 2
  %14 = sext i16 %13 to i32
  %15 = icmp sge i32 %14, 0
  br i1 %15, label %16, label %28

16:                                               ; preds = %12
  %17 = load i32, i32* %4, align 4
  %18 = load i16, i16* %6, align 2
  %19 = sext i16 %18 to i32
  %20 = ashr i32 %17, %19
  %21 = and i32 %20, 1
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %16
  br label %28

24:                                               ; preds = %16
  br label %25

25:                                               ; preds = %24
  %26 = load i16, i16* %6, align 2
  %27 = add i16 %26, -1
  store i16 %27, i16* %6, align 2
  br label %12

28:                                               ; preds = %23, %12
  %29 = load i16, i16* %6, align 2
  store i16 %29, i16* %7, align 2
  %30 = load %struct.winedbg_arm_insn*, %struct.winedbg_arm_insn** %3, align 8
  %31 = getelementptr inbounds %struct.winedbg_arm_insn, %struct.winedbg_arm_insn* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = load i16, i16* %5, align 2
  %34 = sext i16 %33 to i32
  %35 = icmp ne i32 %34, 0
  %36 = zext i1 %35 to i64
  %37 = select i1 %35, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)
  %38 = load i32*, i32** @tbl_regs, align 8
  %39 = load i32, i32* %4, align 4
  %40 = ashr i32 %39, 8
  %41 = and i32 %40, 7
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %38, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = call i8* (i8*, i8*, ...) @r_str_appendf(i8* %32, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %37, i32 %44)
  %46 = load %struct.winedbg_arm_insn*, %struct.winedbg_arm_insn** %3, align 8
  %47 = getelementptr inbounds %struct.winedbg_arm_insn, %struct.winedbg_arm_insn* %46, i32 0, i32 0
  store i8* %45, i8** %47, align 8
  store i16 0, i16* %6, align 2
  br label %48

48:                                               ; preds = %91, %28
  %49 = load i16, i16* %6, align 2
  %50 = sext i16 %49 to i32
  %51 = icmp sle i32 %50, 7
  br i1 %51, label %52, label %94

52:                                               ; preds = %48
  %53 = load i32, i32* %4, align 4
  %54 = load i16, i16* %6, align 2
  %55 = sext i16 %54 to i32
  %56 = ashr i32 %53, %55
  %57 = and i32 %56, 1
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %90

59:                                               ; preds = %52
  %60 = load i16, i16* %6, align 2
  %61 = sext i16 %60 to i32
  %62 = load i16, i16* %7, align 2
  %63 = sext i16 %62 to i32
  %64 = icmp eq i32 %61, %63
  br i1 %64, label %65, label %77

65:                                               ; preds = %59
  %66 = load %struct.winedbg_arm_insn*, %struct.winedbg_arm_insn** %3, align 8
  %67 = getelementptr inbounds %struct.winedbg_arm_insn, %struct.winedbg_arm_insn* %66, i32 0, i32 0
  %68 = load i8*, i8** %67, align 8
  %69 = load i32*, i32** @tbl_regs, align 8
  %70 = load i16, i16* %6, align 2
  %71 = sext i16 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = call i8* (i8*, i8*, ...) @r_str_appendf(i8* %68, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %73)
  %75 = load %struct.winedbg_arm_insn*, %struct.winedbg_arm_insn** %3, align 8
  %76 = getelementptr inbounds %struct.winedbg_arm_insn, %struct.winedbg_arm_insn* %75, i32 0, i32 0
  store i8* %74, i8** %76, align 8
  br label %89

77:                                               ; preds = %59
  %78 = load %struct.winedbg_arm_insn*, %struct.winedbg_arm_insn** %3, align 8
  %79 = getelementptr inbounds %struct.winedbg_arm_insn, %struct.winedbg_arm_insn* %78, i32 0, i32 0
  %80 = load i8*, i8** %79, align 8
  %81 = load i32*, i32** @tbl_regs, align 8
  %82 = load i16, i16* %6, align 2
  %83 = sext i16 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = call i8* (i8*, i8*, ...) @r_str_appendf(i8* %80, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 %85)
  %87 = load %struct.winedbg_arm_insn*, %struct.winedbg_arm_insn** %3, align 8
  %88 = getelementptr inbounds %struct.winedbg_arm_insn, %struct.winedbg_arm_insn* %87, i32 0, i32 0
  store i8* %86, i8** %88, align 8
  br label %89

89:                                               ; preds = %77, %65
  br label %90

90:                                               ; preds = %89, %52
  br label %91

91:                                               ; preds = %90
  %92 = load i16, i16* %6, align 2
  %93 = add i16 %92, 1
  store i16 %93, i16* %6, align 2
  br label %48

94:                                               ; preds = %48
  %95 = load %struct.winedbg_arm_insn*, %struct.winedbg_arm_insn** %3, align 8
  %96 = getelementptr inbounds %struct.winedbg_arm_insn, %struct.winedbg_arm_insn* %95, i32 0, i32 0
  %97 = load i8*, i8** %96, align 8
  %98 = call i8* (i8*, i8*, ...) @r_str_appendf(i8* %97, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %99 = load %struct.winedbg_arm_insn*, %struct.winedbg_arm_insn** %3, align 8
  %100 = getelementptr inbounds %struct.winedbg_arm_insn, %struct.winedbg_arm_insn* %99, i32 0, i32 0
  store i8* %98, i8** %100, align 8
  ret i32 0
}

declare dso_local i8* @r_str_appendf(i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
