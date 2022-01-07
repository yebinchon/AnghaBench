; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/arm/winedbg/extr_be_arm.c_arm_disasm_dataprocessing.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/arm/winedbg/extr_be_arm.c_arm_disasm_dataprocessing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.winedbg_arm_insn = type { i8* }

@.str = private unnamed_addr constant [7 x i8] c"%s%s%s\00", align 1
@tbl_dataops = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [6 x i8] c" %s, \00", align 1
@tbl_regs = common dso_local global i32* null, align 8
@.str.4 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"#%u\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"%s, #%u\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"%s, %s\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"%s, %s, %s %s\00", align 1
@tbl_shifts = common dso_local global i32* null, align 8
@.str.10 = private unnamed_addr constant [15 x i8] c"%s, %s, %s #%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.winedbg_arm_insn*, i32)* @arm_disasm_dataprocessing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arm_disasm_dataprocessing(%struct.winedbg_arm_insn* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.winedbg_arm_insn*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i16, align 2
  %7 = alloca i16, align 2
  %8 = alloca i16, align 2
  %9 = alloca i16, align 2
  %10 = alloca i16, align 2
  store %struct.winedbg_arm_insn* %0, %struct.winedbg_arm_insn** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = ashr i32 %11, 20
  %13 = and i32 %12, 1
  %14 = trunc i32 %13 to i16
  store i16 %14, i16* %6, align 2
  %15 = load i32, i32* %5, align 4
  %16 = ashr i32 %15, 21
  %17 = and i32 %16, 15
  %18 = trunc i32 %17 to i16
  store i16 %18, i16* %7, align 2
  %19 = load i32, i32* %5, align 4
  %20 = ashr i32 %19, 25
  %21 = and i32 %20, 1
  %22 = trunc i32 %21 to i16
  store i16 %22, i16* %8, align 2
  %23 = load i16, i16* %7, align 2
  %24 = sext i16 %23 to i32
  %25 = and i32 %24, 13
  %26 = icmp eq i32 %25, 13
  %27 = zext i1 %26 to i32
  %28 = trunc i32 %27 to i16
  store i16 %28, i16* %9, align 2
  %29 = load i16, i16* %7, align 2
  %30 = sext i16 %29 to i32
  %31 = and i32 %30, 12
  %32 = icmp eq i32 %31, 8
  %33 = zext i1 %32 to i32
  %34 = trunc i32 %33 to i16
  store i16 %34, i16* %10, align 2
  %35 = load %struct.winedbg_arm_insn*, %struct.winedbg_arm_insn** %4, align 8
  %36 = getelementptr inbounds %struct.winedbg_arm_insn, %struct.winedbg_arm_insn* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = load i32*, i32** @tbl_dataops, align 8
  %39 = load i16, i16* %7, align 2
  %40 = sext i16 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = load i16, i16* %6, align 2
  %44 = sext i16 %43 to i32
  %45 = icmp ne i32 %44, 0
  %46 = zext i1 %45 to i64
  %47 = select i1 %45, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %48 = load i32, i32* %5, align 4
  %49 = call i32 @get_cond(i32 %48)
  %50 = call i8* (i8*, i8*, ...) @r_str_appendf(i8* %37, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %42, i8* %47, i32 %49)
  %51 = load %struct.winedbg_arm_insn*, %struct.winedbg_arm_insn** %4, align 8
  %52 = getelementptr inbounds %struct.winedbg_arm_insn, %struct.winedbg_arm_insn* %51, i32 0, i32 0
  store i8* %50, i8** %52, align 8
  %53 = load i16, i16* %10, align 2
  %54 = icmp ne i16 %53, 0
  br i1 %54, label %67, label %55

55:                                               ; preds = %2
  %56 = load %struct.winedbg_arm_insn*, %struct.winedbg_arm_insn** %4, align 8
  %57 = getelementptr inbounds %struct.winedbg_arm_insn, %struct.winedbg_arm_insn* %56, i32 0, i32 0
  %58 = load i8*, i8** %57, align 8
  %59 = load i32*, i32** @tbl_regs, align 8
  %60 = load i32, i32* %5, align 4
  %61 = call i64 @get_nibble(i32 %60, i32 3)
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = call i8* (i8*, i8*, ...) @r_str_appendf(i8* %58, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 %63)
  %65 = load %struct.winedbg_arm_insn*, %struct.winedbg_arm_insn** %4, align 8
  %66 = getelementptr inbounds %struct.winedbg_arm_insn, %struct.winedbg_arm_insn* %65, i32 0, i32 0
  store i8* %64, i8** %66, align 8
  br label %74

67:                                               ; preds = %2
  %68 = load %struct.winedbg_arm_insn*, %struct.winedbg_arm_insn** %4, align 8
  %69 = getelementptr inbounds %struct.winedbg_arm_insn, %struct.winedbg_arm_insn* %68, i32 0, i32 0
  %70 = load i8*, i8** %69, align 8
  %71 = call i8* (i8*, i8*, ...) @r_str_appendf(i8* %70, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %72 = load %struct.winedbg_arm_insn*, %struct.winedbg_arm_insn** %4, align 8
  %73 = getelementptr inbounds %struct.winedbg_arm_insn, %struct.winedbg_arm_insn* %72, i32 0, i32 0
  store i8* %71, i8** %73, align 8
  br label %74

74:                                               ; preds = %67, %55
  %75 = load i16, i16* %9, align 2
  %76 = icmp ne i16 %75, 0
  br i1 %76, label %77, label %107

77:                                               ; preds = %74
  %78 = load i16, i16* %8, align 2
  %79 = icmp ne i16 %78, 0
  br i1 %79, label %80, label %94

80:                                               ; preds = %77
  %81 = load %struct.winedbg_arm_insn*, %struct.winedbg_arm_insn** %4, align 8
  %82 = getelementptr inbounds %struct.winedbg_arm_insn, %struct.winedbg_arm_insn* %81, i32 0, i32 0
  %83 = load i8*, i8** %82, align 8
  %84 = load i32, i32* %5, align 4
  %85 = and i32 %84, 255
  %86 = load i32, i32* %5, align 4
  %87 = call i64 @get_nibble(i32 %86, i32 2)
  %88 = mul i64 2, %87
  %89 = trunc i64 %88 to i32
  %90 = call i32 @ROR32(i32 %85, i32 %89)
  %91 = call i8* (i8*, i8*, ...) @r_str_appendf(i8* %83, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32 %90)
  %92 = load %struct.winedbg_arm_insn*, %struct.winedbg_arm_insn** %4, align 8
  %93 = getelementptr inbounds %struct.winedbg_arm_insn, %struct.winedbg_arm_insn* %92, i32 0, i32 0
  store i8* %91, i8** %93, align 8
  br label %106

94:                                               ; preds = %77
  %95 = load %struct.winedbg_arm_insn*, %struct.winedbg_arm_insn** %4, align 8
  %96 = getelementptr inbounds %struct.winedbg_arm_insn, %struct.winedbg_arm_insn* %95, i32 0, i32 0
  %97 = load i8*, i8** %96, align 8
  %98 = load i32*, i32** @tbl_regs, align 8
  %99 = load i32, i32* %5, align 4
  %100 = call i64 @get_nibble(i32 %99, i32 0)
  %101 = getelementptr inbounds i32, i32* %98, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = call i8* (i8*, i8*, ...) @r_str_appendf(i8* %97, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i32 %102)
  %104 = load %struct.winedbg_arm_insn*, %struct.winedbg_arm_insn** %4, align 8
  %105 = getelementptr inbounds %struct.winedbg_arm_insn, %struct.winedbg_arm_insn* %104, i32 0, i32 0
  store i8* %103, i8** %105, align 8
  br label %106

106:                                              ; preds = %94, %80
  br label %225

107:                                              ; preds = %74
  %108 = load i16, i16* %8, align 2
  %109 = icmp ne i16 %108, 0
  br i1 %109, label %110, label %129

110:                                              ; preds = %107
  %111 = load %struct.winedbg_arm_insn*, %struct.winedbg_arm_insn** %4, align 8
  %112 = getelementptr inbounds %struct.winedbg_arm_insn, %struct.winedbg_arm_insn* %111, i32 0, i32 0
  %113 = load i8*, i8** %112, align 8
  %114 = load i32*, i32** @tbl_regs, align 8
  %115 = load i32, i32* %5, align 4
  %116 = call i64 @get_nibble(i32 %115, i32 4)
  %117 = getelementptr inbounds i32, i32* %114, i64 %116
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* %5, align 4
  %120 = and i32 %119, 255
  %121 = load i32, i32* %5, align 4
  %122 = call i64 @get_nibble(i32 %121, i32 2)
  %123 = mul i64 2, %122
  %124 = trunc i64 %123 to i32
  %125 = call i32 @ROR32(i32 %120, i32 %124)
  %126 = call i8* (i8*, i8*, ...) @r_str_appendf(i8* %113, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i32 %118, i32 %125)
  %127 = load %struct.winedbg_arm_insn*, %struct.winedbg_arm_insn** %4, align 8
  %128 = getelementptr inbounds %struct.winedbg_arm_insn, %struct.winedbg_arm_insn* %127, i32 0, i32 0
  store i8* %126, i8** %128, align 8
  br label %224

129:                                              ; preds = %107
  %130 = load i32, i32* %5, align 4
  %131 = ashr i32 %130, 4
  %132 = and i32 %131, 255
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %151

134:                                              ; preds = %129
  %135 = load %struct.winedbg_arm_insn*, %struct.winedbg_arm_insn** %4, align 8
  %136 = getelementptr inbounds %struct.winedbg_arm_insn, %struct.winedbg_arm_insn* %135, i32 0, i32 0
  %137 = load i8*, i8** %136, align 8
  %138 = load i32*, i32** @tbl_regs, align 8
  %139 = load i32, i32* %5, align 4
  %140 = call i64 @get_nibble(i32 %139, i32 4)
  %141 = getelementptr inbounds i32, i32* %138, i64 %140
  %142 = load i32, i32* %141, align 4
  %143 = load i32*, i32** @tbl_regs, align 8
  %144 = load i32, i32* %5, align 4
  %145 = call i64 @get_nibble(i32 %144, i32 0)
  %146 = getelementptr inbounds i32, i32* %143, i64 %145
  %147 = load i32, i32* %146, align 4
  %148 = call i8* (i8*, i8*, ...) @r_str_appendf(i8* %137, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i32 %142, i32 %147)
  %149 = load %struct.winedbg_arm_insn*, %struct.winedbg_arm_insn** %4, align 8
  %150 = getelementptr inbounds %struct.winedbg_arm_insn, %struct.winedbg_arm_insn* %149, i32 0, i32 0
  store i8* %148, i8** %150, align 8
  br label %223

151:                                              ; preds = %129
  %152 = load i32, i32* %5, align 4
  %153 = ashr i32 %152, 4
  %154 = and i32 %153, 9
  %155 = icmp eq i32 %154, 1
  br i1 %155, label %156, label %187

156:                                              ; preds = %151
  %157 = load %struct.winedbg_arm_insn*, %struct.winedbg_arm_insn** %4, align 8
  %158 = getelementptr inbounds %struct.winedbg_arm_insn, %struct.winedbg_arm_insn* %157, i32 0, i32 0
  %159 = load i8*, i8** %158, align 8
  %160 = load i32*, i32** @tbl_regs, align 8
  %161 = load i32, i32* %5, align 4
  %162 = call i64 @get_nibble(i32 %161, i32 4)
  %163 = getelementptr inbounds i32, i32* %160, i64 %162
  %164 = load i32, i32* %163, align 4
  %165 = load i32*, i32** @tbl_regs, align 8
  %166 = load i32, i32* %5, align 4
  %167 = call i64 @get_nibble(i32 %166, i32 0)
  %168 = getelementptr inbounds i32, i32* %165, i64 %167
  %169 = load i32, i32* %168, align 4
  %170 = load i32*, i32** @tbl_shifts, align 8
  %171 = load i32, i32* %5, align 4
  %172 = ashr i32 %171, 5
  %173 = and i32 %172, 3
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i32, i32* %170, i64 %174
  %176 = load i32, i32* %175, align 4
  %177 = load i32*, i32** @tbl_regs, align 8
  %178 = load i32, i32* %5, align 4
  %179 = ashr i32 %178, 8
  %180 = and i32 %179, 15
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i32, i32* %177, i64 %181
  %183 = load i32, i32* %182, align 4
  %184 = call i8* (i8*, i8*, ...) @r_str_appendf(i8* %159, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i32 %164, i32 %169, i32 %176, i32 %183)
  %185 = load %struct.winedbg_arm_insn*, %struct.winedbg_arm_insn** %4, align 8
  %186 = getelementptr inbounds %struct.winedbg_arm_insn, %struct.winedbg_arm_insn* %185, i32 0, i32 0
  store i8* %184, i8** %186, align 8
  br label %222

187:                                              ; preds = %151
  %188 = load i32, i32* %5, align 4
  %189 = ashr i32 %188, 4
  %190 = and i32 %189, 1
  %191 = icmp eq i32 %190, 0
  br i1 %191, label %192, label %219

192:                                              ; preds = %187
  %193 = load %struct.winedbg_arm_insn*, %struct.winedbg_arm_insn** %4, align 8
  %194 = getelementptr inbounds %struct.winedbg_arm_insn, %struct.winedbg_arm_insn* %193, i32 0, i32 0
  %195 = load i8*, i8** %194, align 8
  %196 = load i32*, i32** @tbl_regs, align 8
  %197 = load i32, i32* %5, align 4
  %198 = call i64 @get_nibble(i32 %197, i32 4)
  %199 = getelementptr inbounds i32, i32* %196, i64 %198
  %200 = load i32, i32* %199, align 4
  %201 = load i32*, i32** @tbl_regs, align 8
  %202 = load i32, i32* %5, align 4
  %203 = call i64 @get_nibble(i32 %202, i32 0)
  %204 = getelementptr inbounds i32, i32* %201, i64 %203
  %205 = load i32, i32* %204, align 4
  %206 = load i32*, i32** @tbl_shifts, align 8
  %207 = load i32, i32* %5, align 4
  %208 = ashr i32 %207, 5
  %209 = and i32 %208, 3
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds i32, i32* %206, i64 %210
  %212 = load i32, i32* %211, align 4
  %213 = load i32, i32* %5, align 4
  %214 = ashr i32 %213, 7
  %215 = and i32 %214, 31
  %216 = call i8* (i8*, i8*, ...) @r_str_appendf(i8* %195, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0), i32 %200, i32 %205, i32 %212, i32 %215)
  %217 = load %struct.winedbg_arm_insn*, %struct.winedbg_arm_insn** %4, align 8
  %218 = getelementptr inbounds %struct.winedbg_arm_insn, %struct.winedbg_arm_insn* %217, i32 0, i32 0
  store i8* %216, i8** %218, align 8
  br label %221

219:                                              ; preds = %187
  %220 = load i32, i32* %5, align 4
  store i32 %220, i32* %3, align 4
  br label %226

221:                                              ; preds = %192
  br label %222

222:                                              ; preds = %221, %156
  br label %223

223:                                              ; preds = %222, %134
  br label %224

224:                                              ; preds = %223, %110
  br label %225

225:                                              ; preds = %224, %106
  store i32 0, i32* %3, align 4
  br label %226

226:                                              ; preds = %225, %219
  %227 = load i32, i32* %3, align 4
  ret i32 %227
}

declare dso_local i8* @r_str_appendf(i8*, i8*, ...) #1

declare dso_local i32 @get_cond(i32) #1

declare dso_local i64 @get_nibble(i32, i32) #1

declare dso_local i32 @ROR32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
