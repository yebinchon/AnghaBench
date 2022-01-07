; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/arm/winedbg/extr_be_arm.c_thumb2_disasm_mul.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/arm/winedbg/extr_be_arm.c_thumb2_disasm_mul.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.winedbg_arm_insn = type { i8* }

@.str = private unnamed_addr constant [20 x i8] c"mla %s, %s, %s, %s \00", align 1
@tbl_regs = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c"mul %s, %s, %s \00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"mls %s, %s, %s, %s \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.winedbg_arm_insn*, i32)* @thumb2_disasm_mul to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @thumb2_disasm_mul(%struct.winedbg_arm_insn* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.winedbg_arm_insn*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.winedbg_arm_insn* %0, %struct.winedbg_arm_insn** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = ashr i32 %8, 20
  %10 = and i32 %9, 7
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %5, align 4
  %12 = ashr i32 %11, 4
  %13 = and i32 %12, 3
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* %5, align 4
  store i32 %17, i32* %3, align 4
  br label %113

18:                                               ; preds = %2
  %19 = load i32, i32* %7, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %52

21:                                               ; preds = %18
  %22 = load i32, i32* %5, align 4
  %23 = call i64 @get_nibble(i32 %22, i32 3)
  %24 = icmp ne i64 %23, 15
  br i1 %24, label %25, label %52

25:                                               ; preds = %21
  %26 = load %struct.winedbg_arm_insn*, %struct.winedbg_arm_insn** %4, align 8
  %27 = getelementptr inbounds %struct.winedbg_arm_insn, %struct.winedbg_arm_insn* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = load i32*, i32** @tbl_regs, align 8
  %30 = load i32, i32* %5, align 4
  %31 = call i64 @get_nibble(i32 %30, i32 2)
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = load i32*, i32** @tbl_regs, align 8
  %35 = load i32, i32* %5, align 4
  %36 = call i64 @get_nibble(i32 %35, i32 4)
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = load i32*, i32** @tbl_regs, align 8
  %40 = load i32, i32* %5, align 4
  %41 = call i64 @get_nibble(i32 %40, i32 0)
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = load i32*, i32** @tbl_regs, align 8
  %45 = load i32, i32* %5, align 4
  %46 = call i64 @get_nibble(i32 %45, i32 3)
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = call i8* (i8*, i8*, i32, i32, i32, ...) @r_str_appendf(i8* %28, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %33, i32 %38, i32 %43, i32 %48)
  %50 = load %struct.winedbg_arm_insn*, %struct.winedbg_arm_insn** %4, align 8
  %51 = getelementptr inbounds %struct.winedbg_arm_insn, %struct.winedbg_arm_insn* %50, i32 0, i32 0
  store i8* %49, i8** %51, align 8
  store i32 0, i32* %3, align 4
  br label %113

52:                                               ; preds = %21, %18
  %53 = load i32, i32* %7, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %81

55:                                               ; preds = %52
  %56 = load i32, i32* %5, align 4
  %57 = call i64 @get_nibble(i32 %56, i32 3)
  %58 = icmp eq i64 %57, 15
  br i1 %58, label %59, label %81

59:                                               ; preds = %55
  %60 = load %struct.winedbg_arm_insn*, %struct.winedbg_arm_insn** %4, align 8
  %61 = getelementptr inbounds %struct.winedbg_arm_insn, %struct.winedbg_arm_insn* %60, i32 0, i32 0
  %62 = load i8*, i8** %61, align 8
  %63 = load i32*, i32** @tbl_regs, align 8
  %64 = load i32, i32* %5, align 4
  %65 = call i64 @get_nibble(i32 %64, i32 2)
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = load i32*, i32** @tbl_regs, align 8
  %69 = load i32, i32* %5, align 4
  %70 = call i64 @get_nibble(i32 %69, i32 4)
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = load i32*, i32** @tbl_regs, align 8
  %74 = load i32, i32* %5, align 4
  %75 = call i64 @get_nibble(i32 %74, i32 0)
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = call i8* (i8*, i8*, i32, i32, i32, ...) @r_str_appendf(i8* %62, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %67, i32 %72, i32 %77)
  %79 = load %struct.winedbg_arm_insn*, %struct.winedbg_arm_insn** %4, align 8
  %80 = getelementptr inbounds %struct.winedbg_arm_insn, %struct.winedbg_arm_insn* %79, i32 0, i32 0
  store i8* %78, i8** %80, align 8
  store i32 0, i32* %3, align 4
  br label %113

81:                                               ; preds = %55, %52
  %82 = load i32, i32* %7, align 4
  %83 = icmp eq i32 %82, 1
  br i1 %83, label %84, label %111

84:                                               ; preds = %81
  %85 = load %struct.winedbg_arm_insn*, %struct.winedbg_arm_insn** %4, align 8
  %86 = getelementptr inbounds %struct.winedbg_arm_insn, %struct.winedbg_arm_insn* %85, i32 0, i32 0
  %87 = load i8*, i8** %86, align 8
  %88 = load i32*, i32** @tbl_regs, align 8
  %89 = load i32, i32* %5, align 4
  %90 = call i64 @get_nibble(i32 %89, i32 2)
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = load i32*, i32** @tbl_regs, align 8
  %94 = load i32, i32* %5, align 4
  %95 = call i64 @get_nibble(i32 %94, i32 4)
  %96 = getelementptr inbounds i32, i32* %93, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = load i32*, i32** @tbl_regs, align 8
  %99 = load i32, i32* %5, align 4
  %100 = call i64 @get_nibble(i32 %99, i32 0)
  %101 = getelementptr inbounds i32, i32* %98, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = load i32*, i32** @tbl_regs, align 8
  %104 = load i32, i32* %5, align 4
  %105 = call i64 @get_nibble(i32 %104, i32 3)
  %106 = getelementptr inbounds i32, i32* %103, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = call i8* (i8*, i8*, i32, i32, i32, ...) @r_str_appendf(i8* %87, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %92, i32 %97, i32 %102, i32 %107)
  %109 = load %struct.winedbg_arm_insn*, %struct.winedbg_arm_insn** %4, align 8
  %110 = getelementptr inbounds %struct.winedbg_arm_insn, %struct.winedbg_arm_insn* %109, i32 0, i32 0
  store i8* %108, i8** %110, align 8
  store i32 0, i32* %3, align 4
  br label %113

111:                                              ; preds = %81
  %112 = load i32, i32* %5, align 4
  store i32 %112, i32* %3, align 4
  br label %113

113:                                              ; preds = %111, %84, %59, %25, %16
  %114 = load i32, i32* %3, align 4
  ret i32 %114
}

declare dso_local i64 @get_nibble(i32, i32) #1

declare dso_local i8* @r_str_appendf(i8*, i8*, i32, i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
