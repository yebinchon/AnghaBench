; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/arm/winedbg/extr_be_arm.c_arm_disasm_halfwordtrans.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/arm/winedbg/extr_be_arm.c_arm_disasm_halfwordtrans.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.winedbg_arm_insn = type { i8* }

@.str = private unnamed_addr constant [11 x i8] c"%s%s%s%s%s\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"ldr\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"str\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"h\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"t\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c" %s, \00", align 1
@tbl_regs = common dso_local global i16* null, align 8
@.str.9 = private unnamed_addr constant [10 x i8] c"[%s, #%d]\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"[%s, %s]\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"[%s], #%d\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"[%s], %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.winedbg_arm_insn*, i32)* @arm_disasm_halfwordtrans to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arm_disasm_halfwordtrans(%struct.winedbg_arm_insn* %0, i32 %1) #0 {
  %3 = alloca %struct.winedbg_arm_insn*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  %7 = alloca i16, align 2
  %8 = alloca i16, align 2
  %9 = alloca i16, align 2
  %10 = alloca i16, align 2
  %11 = alloca i16, align 2
  %12 = alloca i16, align 2
  store %struct.winedbg_arm_insn* %0, %struct.winedbg_arm_insn** %3, align 8
  store i32 %1, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = ashr i32 %13, 5
  %15 = and i32 %14, 1
  %16 = trunc i32 %15 to i16
  store i16 %16, i16* %5, align 2
  %17 = load i32, i32* %4, align 4
  %18 = ashr i32 %17, 6
  %19 = and i32 %18, 1
  %20 = trunc i32 %19 to i16
  store i16 %20, i16* %6, align 2
  %21 = load i32, i32* %4, align 4
  %22 = ashr i32 %21, 20
  %23 = and i32 %22, 1
  %24 = trunc i32 %23 to i16
  store i16 %24, i16* %7, align 2
  %25 = load i32, i32* %4, align 4
  %26 = ashr i32 %25, 21
  %27 = and i32 %26, 1
  %28 = trunc i32 %27 to i16
  store i16 %28, i16* %8, align 2
  %29 = load i32, i32* %4, align 4
  %30 = ashr i32 %29, 22
  %31 = and i32 %30, 1
  %32 = trunc i32 %31 to i16
  store i16 %32, i16* %9, align 2
  %33 = load i32, i32* %4, align 4
  %34 = ashr i32 %33, 23
  %35 = and i32 %34, 1
  %36 = trunc i32 %35 to i16
  store i16 %36, i16* %10, align 2
  %37 = load i32, i32* %4, align 4
  %38 = ashr i32 %37, 24
  %39 = and i32 %38, 1
  %40 = trunc i32 %39 to i16
  store i16 %40, i16* %11, align 2
  %41 = load i32, i32* %4, align 4
  %42 = ashr i32 %41, 4
  %43 = and i32 %42, 240
  %44 = load i32, i32* %4, align 4
  %45 = and i32 %44, 15
  %46 = add nsw i32 %43, %45
  %47 = trunc i32 %46 to i16
  store i16 %47, i16* %12, align 2
  %48 = load i16, i16* %10, align 2
  %49 = icmp ne i16 %48, 0
  br i1 %49, label %55, label %50

50:                                               ; preds = %2
  %51 = load i16, i16* %12, align 2
  %52 = sext i16 %51 to i32
  %53 = mul nsw i32 %52, -1
  %54 = trunc i32 %53 to i16
  store i16 %54, i16* %12, align 2
  br label %55

55:                                               ; preds = %50, %2
  %56 = load %struct.winedbg_arm_insn*, %struct.winedbg_arm_insn** %3, align 8
  %57 = getelementptr inbounds %struct.winedbg_arm_insn, %struct.winedbg_arm_insn* %56, i32 0, i32 0
  %58 = load i8*, i8** %57, align 8
  %59 = load i16, i16* %7, align 2
  %60 = sext i16 %59 to i32
  %61 = icmp ne i32 %60, 0
  %62 = zext i1 %61 to i64
  %63 = select i1 %61, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %64 = load i16, i16* %6, align 2
  %65 = sext i16 %64 to i32
  %66 = icmp ne i32 %65, 0
  %67 = zext i1 %66 to i64
  %68 = select i1 %66, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %69 = load i16, i16* %5, align 2
  %70 = sext i16 %69 to i32
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %55
  br label %79

73:                                               ; preds = %55
  %74 = load i16, i16* %6, align 2
  %75 = sext i16 %74 to i32
  %76 = icmp ne i32 %75, 0
  %77 = zext i1 %76 to i64
  %78 = select i1 %76, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  br label %79

79:                                               ; preds = %73, %72
  %80 = phi i8* [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), %72 ], [ %78, %73 ]
  %81 = load i16, i16* %8, align 2
  %82 = sext i16 %81 to i32
  %83 = icmp ne i32 %82, 0
  %84 = zext i1 %83 to i64
  %85 = select i1 %83, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %86 = load i32, i32* %4, align 4
  %87 = call i32 @get_cond(i32 %86)
  %88 = call i8* (i8*, i8*, ...) @r_str_appendf(i8* %58, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* %63, i8* %68, i8* %80, i8* %85, i32 %87)
  %89 = load %struct.winedbg_arm_insn*, %struct.winedbg_arm_insn** %3, align 8
  %90 = getelementptr inbounds %struct.winedbg_arm_insn, %struct.winedbg_arm_insn* %89, i32 0, i32 0
  store i8* %88, i8** %90, align 8
  %91 = load %struct.winedbg_arm_insn*, %struct.winedbg_arm_insn** %3, align 8
  %92 = getelementptr inbounds %struct.winedbg_arm_insn, %struct.winedbg_arm_insn* %91, i32 0, i32 0
  %93 = load i8*, i8** %92, align 8
  %94 = load i16*, i16** @tbl_regs, align 8
  %95 = load i32, i32* %4, align 4
  %96 = call i64 @get_nibble(i32 %95, i32 3)
  %97 = getelementptr inbounds i16, i16* %94, i64 %96
  %98 = load i16, i16* %97, align 2
  %99 = sext i16 %98 to i32
  %100 = call i8* (i8*, i8*, ...) @r_str_appendf(i8* %93, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i32 %99)
  %101 = load %struct.winedbg_arm_insn*, %struct.winedbg_arm_insn** %3, align 8
  %102 = getelementptr inbounds %struct.winedbg_arm_insn, %struct.winedbg_arm_insn* %101, i32 0, i32 0
  store i8* %100, i8** %102, align 8
  %103 = load i16, i16* %11, align 2
  %104 = icmp ne i16 %103, 0
  br i1 %104, label %105, label %143

105:                                              ; preds = %79
  %106 = load i16, i16* %9, align 2
  %107 = icmp ne i16 %106, 0
  br i1 %107, label %108, label %123

108:                                              ; preds = %105
  %109 = load %struct.winedbg_arm_insn*, %struct.winedbg_arm_insn** %3, align 8
  %110 = getelementptr inbounds %struct.winedbg_arm_insn, %struct.winedbg_arm_insn* %109, i32 0, i32 0
  %111 = load i8*, i8** %110, align 8
  %112 = load i16*, i16** @tbl_regs, align 8
  %113 = load i32, i32* %4, align 4
  %114 = call i64 @get_nibble(i32 %113, i32 4)
  %115 = getelementptr inbounds i16, i16* %112, i64 %114
  %116 = load i16, i16* %115, align 2
  %117 = sext i16 %116 to i32
  %118 = load i16, i16* %12, align 2
  %119 = sext i16 %118 to i32
  %120 = call i8* (i8*, i8*, ...) @r_str_appendf(i8* %111, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i32 %117, i32 %119)
  %121 = load %struct.winedbg_arm_insn*, %struct.winedbg_arm_insn** %3, align 8
  %122 = getelementptr inbounds %struct.winedbg_arm_insn, %struct.winedbg_arm_insn* %121, i32 0, i32 0
  store i8* %120, i8** %122, align 8
  br label %142

123:                                              ; preds = %105
  %124 = load %struct.winedbg_arm_insn*, %struct.winedbg_arm_insn** %3, align 8
  %125 = getelementptr inbounds %struct.winedbg_arm_insn, %struct.winedbg_arm_insn* %124, i32 0, i32 0
  %126 = load i8*, i8** %125, align 8
  %127 = load i16*, i16** @tbl_regs, align 8
  %128 = load i32, i32* %4, align 4
  %129 = call i64 @get_nibble(i32 %128, i32 4)
  %130 = getelementptr inbounds i16, i16* %127, i64 %129
  %131 = load i16, i16* %130, align 2
  %132 = sext i16 %131 to i32
  %133 = load i16*, i16** @tbl_regs, align 8
  %134 = load i32, i32* %4, align 4
  %135 = call i64 @get_nibble(i32 %134, i32 0)
  %136 = getelementptr inbounds i16, i16* %133, i64 %135
  %137 = load i16, i16* %136, align 2
  %138 = sext i16 %137 to i32
  %139 = call i8* (i8*, i8*, ...) @r_str_appendf(i8* %126, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0), i32 %132, i32 %138)
  %140 = load %struct.winedbg_arm_insn*, %struct.winedbg_arm_insn** %3, align 8
  %141 = getelementptr inbounds %struct.winedbg_arm_insn, %struct.winedbg_arm_insn* %140, i32 0, i32 0
  store i8* %139, i8** %141, align 8
  br label %142

142:                                              ; preds = %123, %108
  br label %181

143:                                              ; preds = %79
  %144 = load i16, i16* %9, align 2
  %145 = icmp ne i16 %144, 0
  br i1 %145, label %146, label %161

146:                                              ; preds = %143
  %147 = load %struct.winedbg_arm_insn*, %struct.winedbg_arm_insn** %3, align 8
  %148 = getelementptr inbounds %struct.winedbg_arm_insn, %struct.winedbg_arm_insn* %147, i32 0, i32 0
  %149 = load i8*, i8** %148, align 8
  %150 = load i16*, i16** @tbl_regs, align 8
  %151 = load i32, i32* %4, align 4
  %152 = call i64 @get_nibble(i32 %151, i32 4)
  %153 = getelementptr inbounds i16, i16* %150, i64 %152
  %154 = load i16, i16* %153, align 2
  %155 = sext i16 %154 to i32
  %156 = load i16, i16* %12, align 2
  %157 = sext i16 %156 to i32
  %158 = call i8* (i8*, i8*, ...) @r_str_appendf(i8* %149, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0), i32 %155, i32 %157)
  %159 = load %struct.winedbg_arm_insn*, %struct.winedbg_arm_insn** %3, align 8
  %160 = getelementptr inbounds %struct.winedbg_arm_insn, %struct.winedbg_arm_insn* %159, i32 0, i32 0
  store i8* %158, i8** %160, align 8
  br label %180

161:                                              ; preds = %143
  %162 = load %struct.winedbg_arm_insn*, %struct.winedbg_arm_insn** %3, align 8
  %163 = getelementptr inbounds %struct.winedbg_arm_insn, %struct.winedbg_arm_insn* %162, i32 0, i32 0
  %164 = load i8*, i8** %163, align 8
  %165 = load i16*, i16** @tbl_regs, align 8
  %166 = load i32, i32* %4, align 4
  %167 = call i64 @get_nibble(i32 %166, i32 4)
  %168 = getelementptr inbounds i16, i16* %165, i64 %167
  %169 = load i16, i16* %168, align 2
  %170 = sext i16 %169 to i32
  %171 = load i16*, i16** @tbl_regs, align 8
  %172 = load i32, i32* %4, align 4
  %173 = call i64 @get_nibble(i32 %172, i32 0)
  %174 = getelementptr inbounds i16, i16* %171, i64 %173
  %175 = load i16, i16* %174, align 2
  %176 = sext i16 %175 to i32
  %177 = call i8* (i8*, i8*, ...) @r_str_appendf(i8* %164, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0), i32 %170, i32 %176)
  %178 = load %struct.winedbg_arm_insn*, %struct.winedbg_arm_insn** %3, align 8
  %179 = getelementptr inbounds %struct.winedbg_arm_insn, %struct.winedbg_arm_insn* %178, i32 0, i32 0
  store i8* %177, i8** %179, align 8
  br label %180

180:                                              ; preds = %161, %146
  br label %181

181:                                              ; preds = %180, %142
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
