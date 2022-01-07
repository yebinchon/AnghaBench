; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/arm/winedbg/extr_be_arm.c_arm_disasm_coprocdatatrans.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/arm/winedbg/extr_be_arm.c_arm_disasm_coprocdatatrans.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.winedbg_arm_insn = type { i8* }

@.str = private unnamed_addr constant [7 x i8] c"%s%s%s\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"ldc\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"stc\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"l\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [23 x i8] c" %u, cr%u, [%s, #%d]%s\00", align 1
@tbl_regs = common dso_local global i32* null, align 8
@.str.6 = private unnamed_addr constant [2 x i8] c"!\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c" %u, cr%u, [%s], #%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.winedbg_arm_insn*, i32)* @arm_disasm_coprocdatatrans to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arm_disasm_coprocdatatrans(%struct.winedbg_arm_insn* %0, i32 %1) #0 {
  %3 = alloca %struct.winedbg_arm_insn*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i16, align 2
  store %struct.winedbg_arm_insn* %0, %struct.winedbg_arm_insn** %3, align 8
  store i32 %1, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = ashr i32 %13, 8
  %15 = and i32 %14, 15
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %4, align 4
  %17 = ashr i32 %16, 12
  %18 = and i32 %17, 15
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %4, align 4
  %20 = ashr i32 %19, 20
  %21 = and i32 %20, 1
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %4, align 4
  %23 = ashr i32 %22, 21
  %24 = and i32 %23, 1
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %4, align 4
  %26 = ashr i32 %25, 22
  %27 = and i32 %26, 1
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %4, align 4
  %29 = ashr i32 %28, 23
  %30 = and i32 %29, 1
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %4, align 4
  %32 = ashr i32 %31, 24
  %33 = and i32 %32, 1
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* %4, align 4
  %35 = and i32 %34, 255
  %36 = shl i32 %35, 2
  %37 = trunc i32 %36 to i16
  store i16 %37, i16* %12, align 2
  %38 = load i32, i32* %10, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %45, label %40

40:                                               ; preds = %2
  %41 = load i16, i16* %12, align 2
  %42 = sext i16 %41 to i32
  %43 = mul nsw i32 %42, -1
  %44 = trunc i32 %43 to i16
  store i16 %44, i16* %12, align 2
  br label %45

45:                                               ; preds = %40, %2
  %46 = load %struct.winedbg_arm_insn*, %struct.winedbg_arm_insn** %3, align 8
  %47 = getelementptr inbounds %struct.winedbg_arm_insn, %struct.winedbg_arm_insn* %46, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  %49 = load i32, i32* %7, align 4
  %50 = icmp ne i32 %49, 0
  %51 = zext i1 %50 to i64
  %52 = select i1 %50, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %53 = load i32, i32* %9, align 4
  %54 = icmp ne i32 %53, 0
  %55 = zext i1 %54 to i64
  %56 = select i1 %54, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %57 = load i32, i32* %4, align 4
  %58 = call i32 @get_cond(i32 %57)
  %59 = call i8* (i8*, i8*, ...) @r_str_appendf(i8* %48, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %52, i8* %56, i32 %58)
  %60 = load %struct.winedbg_arm_insn*, %struct.winedbg_arm_insn** %3, align 8
  %61 = getelementptr inbounds %struct.winedbg_arm_insn, %struct.winedbg_arm_insn* %60, i32 0, i32 0
  store i8* %59, i8** %61, align 8
  %62 = load i32, i32* %11, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %84

64:                                               ; preds = %45
  %65 = load %struct.winedbg_arm_insn*, %struct.winedbg_arm_insn** %3, align 8
  %66 = getelementptr inbounds %struct.winedbg_arm_insn, %struct.winedbg_arm_insn* %65, i32 0, i32 0
  %67 = load i8*, i8** %66, align 8
  %68 = load i32, i32* %5, align 4
  %69 = load i32, i32* %6, align 4
  %70 = load i32*, i32** @tbl_regs, align 8
  %71 = load i32, i32* %4, align 4
  %72 = call i64 @get_nibble(i32 %71, i32 4)
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = load i16, i16* %12, align 2
  %76 = sext i16 %75 to i32
  %77 = load i32, i32* %8, align 4
  %78 = icmp ne i32 %77, 0
  %79 = zext i1 %78 to i64
  %80 = select i1 %78, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %81 = call i8* (i8*, i8*, ...) @r_str_appendf(i8* %67, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i32 %68, i32 %69, i32 %74, i32 %76, i8* %80)
  %82 = load %struct.winedbg_arm_insn*, %struct.winedbg_arm_insn** %3, align 8
  %83 = getelementptr inbounds %struct.winedbg_arm_insn, %struct.winedbg_arm_insn* %82, i32 0, i32 0
  store i8* %81, i8** %83, align 8
  br label %100

84:                                               ; preds = %45
  %85 = load %struct.winedbg_arm_insn*, %struct.winedbg_arm_insn** %3, align 8
  %86 = getelementptr inbounds %struct.winedbg_arm_insn, %struct.winedbg_arm_insn* %85, i32 0, i32 0
  %87 = load i8*, i8** %86, align 8
  %88 = load i32, i32* %5, align 4
  %89 = load i32, i32* %6, align 4
  %90 = load i32*, i32** @tbl_regs, align 8
  %91 = load i32, i32* %4, align 4
  %92 = call i64 @get_nibble(i32 %91, i32 4)
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = load i16, i16* %12, align 2
  %96 = sext i16 %95 to i32
  %97 = call i8* (i8*, i8*, ...) @r_str_appendf(i8* %87, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0), i32 %88, i32 %89, i32 %94, i32 %96)
  %98 = load %struct.winedbg_arm_insn*, %struct.winedbg_arm_insn** %3, align 8
  %99 = getelementptr inbounds %struct.winedbg_arm_insn, %struct.winedbg_arm_insn* %98, i32 0, i32 0
  store i8* %97, i8** %99, align 8
  br label %100

100:                                              ; preds = %84, %64
  ret i32 0
}

declare dso_local i8* @r_str_appendf(i8*, i8*, ...) #1

declare dso_local i32 @get_cond(i32) #1

declare dso_local i64 @get_nibble(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
