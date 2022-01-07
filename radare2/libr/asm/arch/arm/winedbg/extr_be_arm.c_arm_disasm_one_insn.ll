; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/arm/winedbg/extr_be_arm.c_arm_disasm_one_insn.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/arm/winedbg/extr_be_arm.c_arm_disasm_one_insn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.winedbg_arm_insn = type { i64, i64, i8*, i8*, i32, i32 }
%struct.inst_arm = type { i32, i32, i32 (%struct.winedbg_arm_insn*, i32)* }
%struct.inst_thumb16 = type { i32, i32, i32 (%struct.winedbg_arm_insn*, i32)* }

@tbl_arm = common dso_local global i32 0, align 4
@tbl_thumb16 = common dso_local global i32 0, align 4
@tbl_thumb32 = common dso_local global i32 0, align 4
@ARM_INSN_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Unknown ARM Instruction: %08x\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"%02x%02x%02x%02x\00", align 1
@THUMB_INSN_SIZE = common dso_local global i32 0, align 4
@THUMB2_INSN_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"Unknown Thumb2 Instruction: %08x\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"Unknown Thumb Instruction: %04x\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"%02x%02x\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @arm_disasm_one_insn(%struct.winedbg_arm_insn* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.winedbg_arm_insn*, align 8
  %4 = alloca %struct.inst_arm*, align 8
  %5 = alloca %struct.inst_thumb16*, align 8
  %6 = alloca %struct.inst_arm*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.winedbg_arm_insn* %0, %struct.winedbg_arm_insn** %3, align 8
  store %struct.inst_arm* bitcast (i32* @tbl_arm to %struct.inst_arm*), %struct.inst_arm** %4, align 8
  store %struct.inst_thumb16* bitcast (i32* @tbl_thumb16 to %struct.inst_thumb16*), %struct.inst_thumb16** %5, align 8
  store %struct.inst_arm* bitcast (i32* @tbl_thumb32 to %struct.inst_arm*), %struct.inst_arm** %6, align 8
  store i32 0, i32* %10, align 4
  %11 = load %struct.winedbg_arm_insn*, %struct.winedbg_arm_insn** %3, align 8
  %12 = getelementptr inbounds %struct.winedbg_arm_insn, %struct.winedbg_arm_insn* %11, i32 0, i32 1
  store i64 -1, i64* %12, align 8
  %13 = load %struct.winedbg_arm_insn*, %struct.winedbg_arm_insn** %3, align 8
  %14 = getelementptr inbounds %struct.winedbg_arm_insn, %struct.winedbg_arm_insn* %13, i32 0, i32 0
  store i64 -1, i64* %14, align 8
  %15 = load %struct.winedbg_arm_insn*, %struct.winedbg_arm_insn** %3, align 8
  %16 = getelementptr inbounds %struct.winedbg_arm_insn, %struct.winedbg_arm_insn* %15, i32 0, i32 5
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %78, label %19

19:                                               ; preds = %1
  %20 = load i32, i32* @ARM_INSN_SIZE, align 4
  store i32 %20, i32* %9, align 4
  %21 = load %struct.winedbg_arm_insn*, %struct.winedbg_arm_insn** %3, align 8
  %22 = getelementptr inbounds %struct.winedbg_arm_insn, %struct.winedbg_arm_insn* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* %9, align 4
  %25 = call i32 @db_get_inst(i32 %23, i32 %24)
  store i32 %25, i32* %7, align 4
  br label %26

26:                                               ; preds = %42, %19
  %27 = load %struct.inst_arm*, %struct.inst_arm** %4, align 8
  %28 = getelementptr inbounds %struct.inst_arm, %struct.inst_arm* %27, i32 0, i32 2
  %29 = load i32 (%struct.winedbg_arm_insn*, i32)*, i32 (%struct.winedbg_arm_insn*, i32)** %28, align 8
  %30 = icmp ne i32 (%struct.winedbg_arm_insn*, i32)* %29, null
  br i1 %30, label %31, label %45

31:                                               ; preds = %26
  %32 = load i32, i32* %7, align 4
  %33 = load %struct.inst_arm*, %struct.inst_arm** %4, align 8
  %34 = getelementptr inbounds %struct.inst_arm, %struct.inst_arm* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = and i32 %32, %35
  %37 = load %struct.inst_arm*, %struct.inst_arm** %4, align 8
  %38 = getelementptr inbounds %struct.inst_arm, %struct.inst_arm* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = icmp eq i32 %36, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %31
  store i32 1, i32* %10, align 4
  br label %45

42:                                               ; preds = %31
  %43 = load %struct.inst_arm*, %struct.inst_arm** %4, align 8
  %44 = getelementptr inbounds %struct.inst_arm, %struct.inst_arm* %43, i32 1
  store %struct.inst_arm* %44, %struct.inst_arm** %4, align 8
  br label %26

45:                                               ; preds = %41, %26
  %46 = load i32, i32* %10, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %56, label %48

48:                                               ; preds = %45
  %49 = load %struct.winedbg_arm_insn*, %struct.winedbg_arm_insn** %3, align 8
  %50 = getelementptr inbounds %struct.winedbg_arm_insn, %struct.winedbg_arm_insn* %49, i32 0, i32 3
  %51 = load i8*, i8** %50, align 8
  %52 = load i32, i32* %7, align 4
  %53 = call i8* (i8*, i8*, i32, ...) @r_str_appendf(i8* %51, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %52)
  %54 = load %struct.winedbg_arm_insn*, %struct.winedbg_arm_insn** %3, align 8
  %55 = getelementptr inbounds %struct.winedbg_arm_insn, %struct.winedbg_arm_insn* %54, i32 0, i32 3
  store i8* %53, i8** %55, align 8
  br label %63

56:                                               ; preds = %45
  %57 = load %struct.inst_arm*, %struct.inst_arm** %4, align 8
  %58 = getelementptr inbounds %struct.inst_arm, %struct.inst_arm* %57, i32 0, i32 2
  %59 = load i32 (%struct.winedbg_arm_insn*, i32)*, i32 (%struct.winedbg_arm_insn*, i32)** %58, align 8
  %60 = load %struct.winedbg_arm_insn*, %struct.winedbg_arm_insn** %3, align 8
  %61 = load i32, i32* %7, align 4
  %62 = call i32 %59(%struct.winedbg_arm_insn* %60, i32 %61)
  br label %63

63:                                               ; preds = %56, %48
  %64 = load %struct.winedbg_arm_insn*, %struct.winedbg_arm_insn** %3, align 8
  %65 = getelementptr inbounds %struct.winedbg_arm_insn, %struct.winedbg_arm_insn* %64, i32 0, i32 2
  %66 = load i8*, i8** %65, align 8
  %67 = load i32, i32* %7, align 4
  %68 = getelementptr inbounds i32, i32* %7, i64 1
  %69 = load i32, i32* %68, align 4
  %70 = getelementptr inbounds i32, i32* %7, i64 2
  %71 = load i32, i32* %70, align 4
  %72 = getelementptr inbounds i32, i32* %7, i64 3
  %73 = load i32, i32* %72, align 4
  %74 = call i8* (i8*, i8*, i32, ...) @r_str_appendf(i8* %66, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %67, i32 %69, i32 %71, i32 %73)
  %75 = load %struct.winedbg_arm_insn*, %struct.winedbg_arm_insn** %3, align 8
  %76 = getelementptr inbounds %struct.winedbg_arm_insn, %struct.winedbg_arm_insn* %75, i32 0, i32 2
  store i8* %74, i8** %76, align 8
  %77 = load i32, i32* %9, align 4
  store i32 %77, i32* %2, align 4
  br label %201

78:                                               ; preds = %1
  %79 = load %struct.winedbg_arm_insn*, %struct.winedbg_arm_insn** %3, align 8
  %80 = getelementptr inbounds %struct.winedbg_arm_insn, %struct.winedbg_arm_insn* %79, i32 0, i32 4
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @THUMB_INSN_SIZE, align 4
  %83 = call i32 @db_get_inst(i32 %81, i32 %82)
  store i32 %83, i32* %8, align 4
  %84 = load i32, i32* %8, align 4
  %85 = and i32 %84, 63488
  switch i32 %85, label %150 [
    i32 59392, label %86
    i32 61440, label %86
    i32 63488, label %86
  ]

86:                                               ; preds = %78, %78, %78
  %87 = load i32, i32* @THUMB2_INSN_SIZE, align 4
  store i32 %87, i32* %9, align 4
  %88 = load %struct.winedbg_arm_insn*, %struct.winedbg_arm_insn** %3, align 8
  %89 = getelementptr inbounds %struct.winedbg_arm_insn, %struct.winedbg_arm_insn* %88, i32 0, i32 4
  %90 = load i32, i32* %89, align 8
  %91 = add nsw i32 %90, 1
  %92 = load i32, i32* @THUMB_INSN_SIZE, align 4
  %93 = call i32 @db_get_inst(i32 %91, i32 %92)
  store i32 %93, i32* %7, align 4
  %94 = load i32, i32* %8, align 4
  %95 = shl i32 %94, 16
  %96 = load i32, i32* %7, align 4
  %97 = or i32 %96, %95
  store i32 %97, i32* %7, align 4
  br label %98

98:                                               ; preds = %114, %86
  %99 = load %struct.inst_arm*, %struct.inst_arm** %6, align 8
  %100 = getelementptr inbounds %struct.inst_arm, %struct.inst_arm* %99, i32 0, i32 2
  %101 = load i32 (%struct.winedbg_arm_insn*, i32)*, i32 (%struct.winedbg_arm_insn*, i32)** %100, align 8
  %102 = icmp ne i32 (%struct.winedbg_arm_insn*, i32)* %101, null
  br i1 %102, label %103, label %117

103:                                              ; preds = %98
  %104 = load i32, i32* %7, align 4
  %105 = load %struct.inst_arm*, %struct.inst_arm** %6, align 8
  %106 = getelementptr inbounds %struct.inst_arm, %struct.inst_arm* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = and i32 %104, %107
  %109 = load %struct.inst_arm*, %struct.inst_arm** %6, align 8
  %110 = getelementptr inbounds %struct.inst_arm, %struct.inst_arm* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = icmp eq i32 %108, %111
  br i1 %112, label %113, label %114

113:                                              ; preds = %103
  store i32 1, i32* %10, align 4
  br label %117

114:                                              ; preds = %103
  %115 = load %struct.inst_arm*, %struct.inst_arm** %6, align 8
  %116 = getelementptr inbounds %struct.inst_arm, %struct.inst_arm* %115, i32 1
  store %struct.inst_arm* %116, %struct.inst_arm** %6, align 8
  br label %98

117:                                              ; preds = %113, %98
  %118 = load i32, i32* %10, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %128, label %120

120:                                              ; preds = %117
  %121 = load %struct.winedbg_arm_insn*, %struct.winedbg_arm_insn** %3, align 8
  %122 = getelementptr inbounds %struct.winedbg_arm_insn, %struct.winedbg_arm_insn* %121, i32 0, i32 3
  %123 = load i8*, i8** %122, align 8
  %124 = load i32, i32* %7, align 4
  %125 = call i8* (i8*, i8*, i32, ...) @r_str_appendf(i8* %123, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %124)
  %126 = load %struct.winedbg_arm_insn*, %struct.winedbg_arm_insn** %3, align 8
  %127 = getelementptr inbounds %struct.winedbg_arm_insn, %struct.winedbg_arm_insn* %126, i32 0, i32 3
  store i8* %125, i8** %127, align 8
  br label %135

128:                                              ; preds = %117
  %129 = load %struct.inst_arm*, %struct.inst_arm** %6, align 8
  %130 = getelementptr inbounds %struct.inst_arm, %struct.inst_arm* %129, i32 0, i32 2
  %131 = load i32 (%struct.winedbg_arm_insn*, i32)*, i32 (%struct.winedbg_arm_insn*, i32)** %130, align 8
  %132 = load %struct.winedbg_arm_insn*, %struct.winedbg_arm_insn** %3, align 8
  %133 = load i32, i32* %7, align 4
  %134 = call i32 %131(%struct.winedbg_arm_insn* %132, i32 %133)
  br label %135

135:                                              ; preds = %128, %120
  %136 = load %struct.winedbg_arm_insn*, %struct.winedbg_arm_insn** %3, align 8
  %137 = getelementptr inbounds %struct.winedbg_arm_insn, %struct.winedbg_arm_insn* %136, i32 0, i32 2
  %138 = load i8*, i8** %137, align 8
  %139 = load i32, i32* %7, align 4
  %140 = getelementptr inbounds i32, i32* %7, i64 1
  %141 = load i32, i32* %140, align 4
  %142 = getelementptr inbounds i32, i32* %7, i64 2
  %143 = load i32, i32* %142, align 4
  %144 = getelementptr inbounds i32, i32* %7, i64 3
  %145 = load i32, i32* %144, align 4
  %146 = call i8* (i8*, i8*, i32, ...) @r_str_appendf(i8* %138, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %139, i32 %141, i32 %143, i32 %145)
  %147 = load %struct.winedbg_arm_insn*, %struct.winedbg_arm_insn** %3, align 8
  %148 = getelementptr inbounds %struct.winedbg_arm_insn, %struct.winedbg_arm_insn* %147, i32 0, i32 2
  store i8* %146, i8** %148, align 8
  %149 = load i32, i32* %9, align 4
  store i32 %149, i32* %2, align 4
  br label %201

150:                                              ; preds = %78
  br label %151

151:                                              ; preds = %150
  %152 = load i32, i32* @THUMB_INSN_SIZE, align 4
  store i32 %152, i32* %9, align 4
  br label %153

153:                                              ; preds = %169, %151
  %154 = load %struct.inst_thumb16*, %struct.inst_thumb16** %5, align 8
  %155 = getelementptr inbounds %struct.inst_thumb16, %struct.inst_thumb16* %154, i32 0, i32 2
  %156 = load i32 (%struct.winedbg_arm_insn*, i32)*, i32 (%struct.winedbg_arm_insn*, i32)** %155, align 8
  %157 = icmp ne i32 (%struct.winedbg_arm_insn*, i32)* %156, null
  br i1 %157, label %158, label %172

158:                                              ; preds = %153
  %159 = load i32, i32* %8, align 4
  %160 = load %struct.inst_thumb16*, %struct.inst_thumb16** %5, align 8
  %161 = getelementptr inbounds %struct.inst_thumb16, %struct.inst_thumb16* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = and i32 %159, %162
  %164 = load %struct.inst_thumb16*, %struct.inst_thumb16** %5, align 8
  %165 = getelementptr inbounds %struct.inst_thumb16, %struct.inst_thumb16* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = icmp eq i32 %163, %166
  br i1 %167, label %168, label %169

168:                                              ; preds = %158
  store i32 1, i32* %10, align 4
  br label %172

169:                                              ; preds = %158
  %170 = load %struct.inst_thumb16*, %struct.inst_thumb16** %5, align 8
  %171 = getelementptr inbounds %struct.inst_thumb16, %struct.inst_thumb16* %170, i32 1
  store %struct.inst_thumb16* %171, %struct.inst_thumb16** %5, align 8
  br label %153

172:                                              ; preds = %168, %153
  %173 = load i32, i32* %10, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %183, label %175

175:                                              ; preds = %172
  %176 = load %struct.winedbg_arm_insn*, %struct.winedbg_arm_insn** %3, align 8
  %177 = getelementptr inbounds %struct.winedbg_arm_insn, %struct.winedbg_arm_insn* %176, i32 0, i32 3
  %178 = load i8*, i8** %177, align 8
  %179 = load i32, i32* %8, align 4
  %180 = call i8* (i8*, i8*, i32, ...) @r_str_appendf(i8* %178, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %179)
  %181 = load %struct.winedbg_arm_insn*, %struct.winedbg_arm_insn** %3, align 8
  %182 = getelementptr inbounds %struct.winedbg_arm_insn, %struct.winedbg_arm_insn* %181, i32 0, i32 3
  store i8* %180, i8** %182, align 8
  br label %190

183:                                              ; preds = %172
  %184 = load %struct.inst_thumb16*, %struct.inst_thumb16** %5, align 8
  %185 = getelementptr inbounds %struct.inst_thumb16, %struct.inst_thumb16* %184, i32 0, i32 2
  %186 = load i32 (%struct.winedbg_arm_insn*, i32)*, i32 (%struct.winedbg_arm_insn*, i32)** %185, align 8
  %187 = load %struct.winedbg_arm_insn*, %struct.winedbg_arm_insn** %3, align 8
  %188 = load i32, i32* %8, align 4
  %189 = call i32 %186(%struct.winedbg_arm_insn* %187, i32 %188)
  br label %190

190:                                              ; preds = %183, %175
  %191 = load %struct.winedbg_arm_insn*, %struct.winedbg_arm_insn** %3, align 8
  %192 = getelementptr inbounds %struct.winedbg_arm_insn, %struct.winedbg_arm_insn* %191, i32 0, i32 2
  %193 = load i8*, i8** %192, align 8
  %194 = load i32, i32* %8, align 4
  %195 = getelementptr inbounds i32, i32* %8, i64 1
  %196 = load i32, i32* %195, align 4
  %197 = call i8* (i8*, i8*, i32, ...) @r_str_appendf(i8* %193, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 %194, i32 %196)
  %198 = load %struct.winedbg_arm_insn*, %struct.winedbg_arm_insn** %3, align 8
  %199 = getelementptr inbounds %struct.winedbg_arm_insn, %struct.winedbg_arm_insn* %198, i32 0, i32 2
  store i8* %197, i8** %199, align 8
  %200 = load i32, i32* %9, align 4
  store i32 %200, i32* %2, align 4
  br label %201

201:                                              ; preds = %190, %135, %63
  %202 = load i32, i32* %2, align 4
  ret i32 %202
}

declare dso_local i32 @db_get_inst(i32, i32) #1

declare dso_local i8* @r_str_appendf(i8*, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
