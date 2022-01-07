; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/arm/winedbg/extr_be_arm.c_thumb_disasm_pushpop.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/arm/winedbg/extr_be_arm.c_thumb_disasm_pushpop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.winedbg_arm_insn = type { i8* }

@.str = private unnamed_addr constant [5 x i8] c"%s {\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"pop\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"push\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@tbl_regs = common dso_local global i32* null, align 8
@.str.4 = private unnamed_addr constant [5 x i8] c"%s, \00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"pc\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"lr\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"}\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.winedbg_arm_insn*, i32)* @thumb_disasm_pushpop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @thumb_disasm_pushpop(%struct.winedbg_arm_insn* %0, i32 %1) #0 {
  %3 = alloca %struct.winedbg_arm_insn*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  %7 = alloca i16, align 2
  %8 = alloca i16, align 2
  store %struct.winedbg_arm_insn* %0, %struct.winedbg_arm_insn** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = ashr i32 %9, 8
  %11 = and i32 %10, 1
  %12 = trunc i32 %11 to i16
  store i16 %12, i16* %5, align 2
  %13 = load i32, i32* %4, align 4
  %14 = ashr i32 %13, 11
  %15 = and i32 %14, 1
  %16 = trunc i32 %15 to i16
  store i16 %16, i16* %6, align 2
  store i16 7, i16* %7, align 2
  br label %17

17:                                               ; preds = %30, %2
  %18 = load i16, i16* %7, align 2
  %19 = sext i16 %18 to i32
  %20 = icmp sge i32 %19, 0
  br i1 %20, label %21, label %33

21:                                               ; preds = %17
  %22 = load i32, i32* %4, align 4
  %23 = load i16, i16* %7, align 2
  %24 = sext i16 %23 to i32
  %25 = ashr i32 %22, %24
  %26 = and i32 %25, 1
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %21
  br label %33

29:                                               ; preds = %21
  br label %30

30:                                               ; preds = %29
  %31 = load i16, i16* %7, align 2
  %32 = add i16 %31, -1
  store i16 %32, i16* %7, align 2
  br label %17

33:                                               ; preds = %28, %17
  %34 = load i16, i16* %7, align 2
  store i16 %34, i16* %8, align 2
  %35 = load %struct.winedbg_arm_insn*, %struct.winedbg_arm_insn** %3, align 8
  %36 = getelementptr inbounds %struct.winedbg_arm_insn, %struct.winedbg_arm_insn* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = load i16, i16* %6, align 2
  %39 = sext i16 %38 to i32
  %40 = icmp ne i32 %39, 0
  %41 = zext i1 %40 to i64
  %42 = select i1 %40, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)
  %43 = call i8* (i8*, i8*, ...) @r_str_appendf(i8* %37, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %42)
  %44 = load %struct.winedbg_arm_insn*, %struct.winedbg_arm_insn** %3, align 8
  %45 = getelementptr inbounds %struct.winedbg_arm_insn, %struct.winedbg_arm_insn* %44, i32 0, i32 0
  store i8* %43, i8** %45, align 8
  store i16 0, i16* %7, align 2
  br label %46

46:                                               ; preds = %89, %33
  %47 = load i16, i16* %7, align 2
  %48 = sext i16 %47 to i32
  %49 = icmp sle i32 %48, 7
  br i1 %49, label %50, label %92

50:                                               ; preds = %46
  %51 = load i32, i32* %4, align 4
  %52 = load i16, i16* %7, align 2
  %53 = sext i16 %52 to i32
  %54 = ashr i32 %51, %53
  %55 = and i32 %54, 1
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %88

57:                                               ; preds = %50
  %58 = load i16, i16* %7, align 2
  %59 = sext i16 %58 to i32
  %60 = load i16, i16* %8, align 2
  %61 = sext i16 %60 to i32
  %62 = icmp eq i32 %59, %61
  br i1 %62, label %63, label %75

63:                                               ; preds = %57
  %64 = load %struct.winedbg_arm_insn*, %struct.winedbg_arm_insn** %3, align 8
  %65 = getelementptr inbounds %struct.winedbg_arm_insn, %struct.winedbg_arm_insn* %64, i32 0, i32 0
  %66 = load i8*, i8** %65, align 8
  %67 = load i32*, i32** @tbl_regs, align 8
  %68 = load i16, i16* %7, align 2
  %69 = sext i16 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = call i8* (i8*, i8*, ...) @r_str_appendf(i8* %66, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %71)
  %73 = load %struct.winedbg_arm_insn*, %struct.winedbg_arm_insn** %3, align 8
  %74 = getelementptr inbounds %struct.winedbg_arm_insn, %struct.winedbg_arm_insn* %73, i32 0, i32 0
  store i8* %72, i8** %74, align 8
  br label %87

75:                                               ; preds = %57
  %76 = load %struct.winedbg_arm_insn*, %struct.winedbg_arm_insn** %3, align 8
  %77 = getelementptr inbounds %struct.winedbg_arm_insn, %struct.winedbg_arm_insn* %76, i32 0, i32 0
  %78 = load i8*, i8** %77, align 8
  %79 = load i32*, i32** @tbl_regs, align 8
  %80 = load i16, i16* %7, align 2
  %81 = sext i16 %80 to i64
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = call i8* (i8*, i8*, ...) @r_str_appendf(i8* %78, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 %83)
  %85 = load %struct.winedbg_arm_insn*, %struct.winedbg_arm_insn** %3, align 8
  %86 = getelementptr inbounds %struct.winedbg_arm_insn, %struct.winedbg_arm_insn* %85, i32 0, i32 0
  store i8* %84, i8** %86, align 8
  br label %87

87:                                               ; preds = %75, %63
  br label %88

88:                                               ; preds = %87, %50
  br label %89

89:                                               ; preds = %88
  %90 = load i16, i16* %7, align 2
  %91 = add i16 %90, 1
  store i16 %91, i16* %7, align 2
  br label %46

92:                                               ; preds = %46
  %93 = load i16, i16* %5, align 2
  %94 = icmp ne i16 %93, 0
  br i1 %94, label %95, label %112

95:                                               ; preds = %92
  %96 = load %struct.winedbg_arm_insn*, %struct.winedbg_arm_insn** %3, align 8
  %97 = getelementptr inbounds %struct.winedbg_arm_insn, %struct.winedbg_arm_insn* %96, i32 0, i32 0
  %98 = load i8*, i8** %97, align 8
  %99 = load i16, i16* %8, align 2
  %100 = sext i16 %99 to i32
  %101 = icmp ne i32 %100, 0
  %102 = zext i1 %101 to i64
  %103 = select i1 %101, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0)
  %104 = load i16, i16* %6, align 2
  %105 = sext i16 %104 to i32
  %106 = icmp ne i32 %105, 0
  %107 = zext i1 %106 to i64
  %108 = select i1 %106, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0)
  %109 = call i8* (i8*, i8*, ...) @r_str_appendf(i8* %98, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* %103, i8* %108)
  %110 = load %struct.winedbg_arm_insn*, %struct.winedbg_arm_insn** %3, align 8
  %111 = getelementptr inbounds %struct.winedbg_arm_insn, %struct.winedbg_arm_insn* %110, i32 0, i32 0
  store i8* %109, i8** %111, align 8
  br label %112

112:                                              ; preds = %95, %92
  %113 = load %struct.winedbg_arm_insn*, %struct.winedbg_arm_insn** %3, align 8
  %114 = getelementptr inbounds %struct.winedbg_arm_insn, %struct.winedbg_arm_insn* %113, i32 0, i32 0
  %115 = load i8*, i8** %114, align 8
  %116 = call i8* (i8*, i8*, ...) @r_str_appendf(i8* %115, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0))
  %117 = load %struct.winedbg_arm_insn*, %struct.winedbg_arm_insn** %3, align 8
  %118 = getelementptr inbounds %struct.winedbg_arm_insn, %struct.winedbg_arm_insn* %117, i32 0, i32 0
  store i8* %116, i8** %118, align 8
  ret i32 0
}

declare dso_local i8* @r_str_appendf(i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
