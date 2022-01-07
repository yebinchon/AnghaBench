; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/arm/winedbg/extr_be_arm.c_arm_disasm_blocktrans.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/arm/winedbg/extr_be_arm.c_arm_disasm_blocktrans.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.winedbg_arm_insn = type { i8* }

@.str = private unnamed_addr constant [15 x i8] c"%s%s%s %s%s, {\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"ldm\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"stm\00", align 1
@tbl_addrmode = common dso_local global i32* null, align 8
@tbl_regs = common dso_local global i8** null, align 8
@.str.3 = private unnamed_addr constant [2 x i8] c"!\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"%s, \00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"}%s\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"^\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.winedbg_arm_insn*, i32)* @arm_disasm_blocktrans to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arm_disasm_blocktrans(%struct.winedbg_arm_insn* %0, i32 %1) #0 {
  %3 = alloca %struct.winedbg_arm_insn*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  %7 = alloca i16, align 2
  %8 = alloca i16, align 2
  %9 = alloca i16, align 2
  %10 = alloca i16, align 2
  store %struct.winedbg_arm_insn* %0, %struct.winedbg_arm_insn** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = ashr i32 %11, 20
  %13 = and i32 %12, 1
  %14 = trunc i32 %13 to i16
  store i16 %14, i16* %5, align 2
  %15 = load i32, i32* %4, align 4
  %16 = ashr i32 %15, 21
  %17 = and i32 %16, 1
  %18 = trunc i32 %17 to i16
  store i16 %18, i16* %6, align 2
  %19 = load i32, i32* %4, align 4
  %20 = ashr i32 %19, 22
  %21 = and i32 %20, 1
  %22 = trunc i32 %21 to i16
  store i16 %22, i16* %7, align 2
  %23 = load i32, i32* %4, align 4
  %24 = ashr i32 %23, 23
  %25 = and i32 %24, 3
  %26 = trunc i32 %25 to i16
  store i16 %26, i16* %8, align 2
  store i16 15, i16* %10, align 2
  store i16 15, i16* %9, align 2
  br label %27

27:                                               ; preds = %41, %2
  %28 = load i16, i16* %9, align 2
  %29 = sext i16 %28 to i32
  %30 = icmp sge i32 %29, 0
  br i1 %30, label %31, label %44

31:                                               ; preds = %27
  %32 = load i32, i32* %4, align 4
  %33 = load i16, i16* %9, align 2
  %34 = sext i16 %33 to i32
  %35 = ashr i32 %32, %34
  %36 = and i32 %35, 1
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %31
  %39 = load i16, i16* %9, align 2
  store i16 %39, i16* %10, align 2
  br label %44

40:                                               ; preds = %31
  br label %41

41:                                               ; preds = %40
  %42 = load i16, i16* %9, align 2
  %43 = add i16 %42, -1
  store i16 %43, i16* %9, align 2
  br label %27

44:                                               ; preds = %38, %27
  %45 = load %struct.winedbg_arm_insn*, %struct.winedbg_arm_insn** %3, align 8
  %46 = getelementptr inbounds %struct.winedbg_arm_insn, %struct.winedbg_arm_insn* %45, i32 0, i32 0
  %47 = load i8*, i8** %46, align 8
  %48 = load i16, i16* %5, align 2
  %49 = sext i16 %48 to i32
  %50 = icmp ne i32 %49, 0
  %51 = zext i1 %50 to i64
  %52 = select i1 %50, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %53 = load i32*, i32** @tbl_addrmode, align 8
  %54 = load i16, i16* %8, align 2
  %55 = sext i16 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %4, align 4
  %59 = call i32 @get_cond(i32 %58)
  %60 = load i8**, i8*** @tbl_regs, align 8
  %61 = load i32, i32* %4, align 4
  %62 = call i64 @get_nibble(i32 %61, i32 4)
  %63 = getelementptr inbounds i8*, i8** %60, i64 %62
  %64 = load i8*, i8** %63, align 8
  %65 = load i16, i16* %6, align 2
  %66 = sext i16 %65 to i32
  %67 = icmp ne i32 %66, 0
  %68 = zext i1 %67 to i64
  %69 = select i1 %67, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %70 = call i8* (i8*, i8*, i8*, ...) @r_str_appendf(i8* %47, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* %52, i32 %57, i32 %59, i8* %64, i8* %69)
  %71 = load %struct.winedbg_arm_insn*, %struct.winedbg_arm_insn** %3, align 8
  %72 = getelementptr inbounds %struct.winedbg_arm_insn, %struct.winedbg_arm_insn* %71, i32 0, i32 0
  store i8* %70, i8** %72, align 8
  store i16 0, i16* %9, align 2
  br label %73

73:                                               ; preds = %116, %44
  %74 = load i16, i16* %9, align 2
  %75 = sext i16 %74 to i32
  %76 = icmp sle i32 %75, 15
  br i1 %76, label %77, label %119

77:                                               ; preds = %73
  %78 = load i32, i32* %4, align 4
  %79 = load i16, i16* %9, align 2
  %80 = sext i16 %79 to i32
  %81 = ashr i32 %78, %80
  %82 = and i32 %81, 1
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %115

84:                                               ; preds = %77
  %85 = load i16, i16* %9, align 2
  %86 = sext i16 %85 to i32
  %87 = load i16, i16* %10, align 2
  %88 = sext i16 %87 to i32
  %89 = icmp eq i32 %86, %88
  br i1 %89, label %90, label %102

90:                                               ; preds = %84
  %91 = load %struct.winedbg_arm_insn*, %struct.winedbg_arm_insn** %3, align 8
  %92 = getelementptr inbounds %struct.winedbg_arm_insn, %struct.winedbg_arm_insn* %91, i32 0, i32 0
  %93 = load i8*, i8** %92, align 8
  %94 = load i8**, i8*** @tbl_regs, align 8
  %95 = load i16, i16* %9, align 2
  %96 = sext i16 %95 to i64
  %97 = getelementptr inbounds i8*, i8** %94, i64 %96
  %98 = load i8*, i8** %97, align 8
  %99 = call i8* (i8*, i8*, i8*, ...) @r_str_appendf(i8* %93, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* %98)
  %100 = load %struct.winedbg_arm_insn*, %struct.winedbg_arm_insn** %3, align 8
  %101 = getelementptr inbounds %struct.winedbg_arm_insn, %struct.winedbg_arm_insn* %100, i32 0, i32 0
  store i8* %99, i8** %101, align 8
  br label %114

102:                                              ; preds = %84
  %103 = load %struct.winedbg_arm_insn*, %struct.winedbg_arm_insn** %3, align 8
  %104 = getelementptr inbounds %struct.winedbg_arm_insn, %struct.winedbg_arm_insn* %103, i32 0, i32 0
  %105 = load i8*, i8** %104, align 8
  %106 = load i8**, i8*** @tbl_regs, align 8
  %107 = load i16, i16* %9, align 2
  %108 = sext i16 %107 to i64
  %109 = getelementptr inbounds i8*, i8** %106, i64 %108
  %110 = load i8*, i8** %109, align 8
  %111 = call i8* (i8*, i8*, i8*, ...) @r_str_appendf(i8* %105, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8* %110)
  %112 = load %struct.winedbg_arm_insn*, %struct.winedbg_arm_insn** %3, align 8
  %113 = getelementptr inbounds %struct.winedbg_arm_insn, %struct.winedbg_arm_insn* %112, i32 0, i32 0
  store i8* %111, i8** %113, align 8
  br label %114

114:                                              ; preds = %102, %90
  br label %115

115:                                              ; preds = %114, %77
  br label %116

116:                                              ; preds = %115
  %117 = load i16, i16* %9, align 2
  %118 = add i16 %117, 1
  store i16 %118, i16* %9, align 2
  br label %73

119:                                              ; preds = %73
  %120 = load %struct.winedbg_arm_insn*, %struct.winedbg_arm_insn** %3, align 8
  %121 = getelementptr inbounds %struct.winedbg_arm_insn, %struct.winedbg_arm_insn* %120, i32 0, i32 0
  %122 = load i8*, i8** %121, align 8
  %123 = load i16, i16* %7, align 2
  %124 = sext i16 %123 to i32
  %125 = icmp ne i32 %124, 0
  %126 = zext i1 %125 to i64
  %127 = select i1 %125, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %128 = call i8* (i8*, i8*, i8*, ...) @r_str_appendf(i8* %122, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8* %127)
  %129 = load %struct.winedbg_arm_insn*, %struct.winedbg_arm_insn** %3, align 8
  %130 = getelementptr inbounds %struct.winedbg_arm_insn, %struct.winedbg_arm_insn* %129, i32 0, i32 0
  store i8* %128, i8** %130, align 8
  ret i32 0
}

declare dso_local i8* @r_str_appendf(i8*, i8*, i8*, ...) #1

declare dso_local i32 @get_cond(i32) #1

declare dso_local i64 @get_nibble(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
