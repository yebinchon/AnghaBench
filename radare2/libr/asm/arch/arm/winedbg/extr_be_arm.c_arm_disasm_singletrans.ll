; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/arm/winedbg/extr_be_arm.c_arm_disasm_singletrans.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/arm/winedbg/extr_be_arm.c_arm_disasm_singletrans.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.winedbg_arm_insn = type { i8* }

@.str = private unnamed_addr constant [9 x i8] c"%s%s%s%s\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"ldr\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"str\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"t\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c" %s, \00", align 1
@tbl_regs = common dso_local global i8** null, align 8
@.str.7 = private unnamed_addr constant [10 x i8] c"[%s, #%d]\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"[%s, %s]\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"[%s, %s, %s #%d]\00", align 1
@tbl_shifts = common dso_local global i8** null, align 8
@.str.10 = private unnamed_addr constant [10 x i8] c"[%s], #%d\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"[%s], %s\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"[%s], %s, %s #%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.winedbg_arm_insn*, i32)* @arm_disasm_singletrans to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arm_disasm_singletrans(%struct.winedbg_arm_insn* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.winedbg_arm_insn*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i16, align 2
  %7 = alloca i16, align 2
  %8 = alloca i16, align 2
  %9 = alloca i16, align 2
  %10 = alloca i16, align 2
  %11 = alloca i16, align 2
  %12 = alloca i16, align 2
  store %struct.winedbg_arm_insn* %0, %struct.winedbg_arm_insn** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = ashr i32 %13, 20
  %15 = and i32 %14, 1
  %16 = trunc i32 %15 to i16
  store i16 %16, i16* %6, align 2
  %17 = load i32, i32* %5, align 4
  %18 = ashr i32 %17, 21
  %19 = and i32 %18, 1
  %20 = trunc i32 %19 to i16
  store i16 %20, i16* %7, align 2
  %21 = load i32, i32* %5, align 4
  %22 = ashr i32 %21, 22
  %23 = and i32 %22, 1
  %24 = trunc i32 %23 to i16
  store i16 %24, i16* %8, align 2
  %25 = load i32, i32* %5, align 4
  %26 = ashr i32 %25, 23
  %27 = and i32 %26, 1
  %28 = trunc i32 %27 to i16
  store i16 %28, i16* %9, align 2
  %29 = load i32, i32* %5, align 4
  %30 = ashr i32 %29, 24
  %31 = and i32 %30, 1
  %32 = trunc i32 %31 to i16
  store i16 %32, i16* %10, align 2
  %33 = load i32, i32* %5, align 4
  %34 = ashr i32 %33, 25
  %35 = and i32 %34, 1
  %36 = icmp ne i32 %35, 0
  %37 = xor i1 %36, true
  %38 = zext i1 %37 to i32
  %39 = trunc i32 %38 to i16
  store i16 %39, i16* %11, align 2
  %40 = load i32, i32* %5, align 4
  %41 = and i32 %40, 4095
  %42 = trunc i32 %41 to i16
  store i16 %42, i16* %12, align 2
  %43 = load i16, i16* %9, align 2
  %44 = icmp ne i16 %43, 0
  br i1 %44, label %50, label %45

45:                                               ; preds = %2
  %46 = load i16, i16* %12, align 2
  %47 = sext i16 %46 to i32
  %48 = mul nsw i32 %47, -1
  %49 = trunc i32 %48 to i16
  store i16 %49, i16* %12, align 2
  br label %50

50:                                               ; preds = %45, %2
  %51 = load %struct.winedbg_arm_insn*, %struct.winedbg_arm_insn** %4, align 8
  %52 = getelementptr inbounds %struct.winedbg_arm_insn, %struct.winedbg_arm_insn* %51, i32 0, i32 0
  %53 = load i8*, i8** %52, align 8
  %54 = load i16, i16* %6, align 2
  %55 = sext i16 %54 to i32
  %56 = icmp ne i32 %55, 0
  %57 = zext i1 %56 to i64
  %58 = select i1 %56, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %59 = load i16, i16* %8, align 2
  %60 = sext i16 %59 to i32
  %61 = icmp ne i32 %60, 0
  %62 = zext i1 %61 to i64
  %63 = select i1 %61, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %64 = load i16, i16* %7, align 2
  %65 = sext i16 %64 to i32
  %66 = icmp ne i32 %65, 0
  %67 = zext i1 %66 to i64
  %68 = select i1 %66, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %69 = load i32, i32* %5, align 4
  %70 = call i32 @get_cond(i32 %69)
  %71 = call i8* (i8*, i8*, i8*, ...) @r_str_appendf(i8* %53, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %58, i8* %63, i8* %68, i32 %70)
  %72 = load %struct.winedbg_arm_insn*, %struct.winedbg_arm_insn** %4, align 8
  %73 = getelementptr inbounds %struct.winedbg_arm_insn, %struct.winedbg_arm_insn* %72, i32 0, i32 0
  store i8* %71, i8** %73, align 8
  %74 = load %struct.winedbg_arm_insn*, %struct.winedbg_arm_insn** %4, align 8
  %75 = getelementptr inbounds %struct.winedbg_arm_insn, %struct.winedbg_arm_insn* %74, i32 0, i32 0
  %76 = load i8*, i8** %75, align 8
  %77 = load i8**, i8*** @tbl_regs, align 8
  %78 = load i32, i32* %5, align 4
  %79 = call i64 @get_nibble(i32 %78, i32 3)
  %80 = getelementptr inbounds i8*, i8** %77, i64 %79
  %81 = load i8*, i8** %80, align 8
  %82 = call i8* (i8*, i8*, i8*, ...) @r_str_appendf(i8* %76, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8* %81)
  %83 = load %struct.winedbg_arm_insn*, %struct.winedbg_arm_insn** %4, align 8
  %84 = getelementptr inbounds %struct.winedbg_arm_insn, %struct.winedbg_arm_insn* %83, i32 0, i32 0
  store i8* %82, i8** %84, align 8
  %85 = load i16, i16* %10, align 2
  %86 = icmp ne i16 %85, 0
  br i1 %86, label %87, label %163

87:                                               ; preds = %50
  %88 = load i16, i16* %11, align 2
  %89 = icmp ne i16 %88, 0
  br i1 %89, label %90, label %104

90:                                               ; preds = %87
  %91 = load %struct.winedbg_arm_insn*, %struct.winedbg_arm_insn** %4, align 8
  %92 = getelementptr inbounds %struct.winedbg_arm_insn, %struct.winedbg_arm_insn* %91, i32 0, i32 0
  %93 = load i8*, i8** %92, align 8
  %94 = load i8**, i8*** @tbl_regs, align 8
  %95 = load i32, i32* %5, align 4
  %96 = call i64 @get_nibble(i32 %95, i32 4)
  %97 = getelementptr inbounds i8*, i8** %94, i64 %96
  %98 = load i8*, i8** %97, align 8
  %99 = load i16, i16* %12, align 2
  %100 = sext i16 %99 to i32
  %101 = call i8* (i8*, i8*, i8*, ...) @r_str_appendf(i8* %93, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i8* %98, i32 %100)
  %102 = load %struct.winedbg_arm_insn*, %struct.winedbg_arm_insn** %4, align 8
  %103 = getelementptr inbounds %struct.winedbg_arm_insn, %struct.winedbg_arm_insn* %102, i32 0, i32 0
  store i8* %101, i8** %103, align 8
  br label %162

104:                                              ; preds = %87
  %105 = load i32, i32* %5, align 4
  %106 = ashr i32 %105, 4
  %107 = and i32 %106, 255
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %126

109:                                              ; preds = %104
  %110 = load %struct.winedbg_arm_insn*, %struct.winedbg_arm_insn** %4, align 8
  %111 = getelementptr inbounds %struct.winedbg_arm_insn, %struct.winedbg_arm_insn* %110, i32 0, i32 0
  %112 = load i8*, i8** %111, align 8
  %113 = load i8**, i8*** @tbl_regs, align 8
  %114 = load i32, i32* %5, align 4
  %115 = call i64 @get_nibble(i32 %114, i32 4)
  %116 = getelementptr inbounds i8*, i8** %113, i64 %115
  %117 = load i8*, i8** %116, align 8
  %118 = load i8**, i8*** @tbl_regs, align 8
  %119 = load i32, i32* %5, align 4
  %120 = call i64 @get_nibble(i32 %119, i32 0)
  %121 = getelementptr inbounds i8*, i8** %118, i64 %120
  %122 = load i8*, i8** %121, align 8
  %123 = call i8* (i8*, i8*, i8*, ...) @r_str_appendf(i8* %112, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i8* %117, i8* %122)
  %124 = load %struct.winedbg_arm_insn*, %struct.winedbg_arm_insn** %4, align 8
  %125 = getelementptr inbounds %struct.winedbg_arm_insn, %struct.winedbg_arm_insn* %124, i32 0, i32 0
  store i8* %123, i8** %125, align 8
  br label %161

126:                                              ; preds = %104
  %127 = load i32, i32* %5, align 4
  %128 = ashr i32 %127, 4
  %129 = and i32 %128, 1
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %131, label %158

131:                                              ; preds = %126
  %132 = load %struct.winedbg_arm_insn*, %struct.winedbg_arm_insn** %4, align 8
  %133 = getelementptr inbounds %struct.winedbg_arm_insn, %struct.winedbg_arm_insn* %132, i32 0, i32 0
  %134 = load i8*, i8** %133, align 8
  %135 = load i8**, i8*** @tbl_regs, align 8
  %136 = load i32, i32* %5, align 4
  %137 = call i64 @get_nibble(i32 %136, i32 4)
  %138 = getelementptr inbounds i8*, i8** %135, i64 %137
  %139 = load i8*, i8** %138, align 8
  %140 = load i8**, i8*** @tbl_regs, align 8
  %141 = load i32, i32* %5, align 4
  %142 = call i64 @get_nibble(i32 %141, i32 0)
  %143 = getelementptr inbounds i8*, i8** %140, i64 %142
  %144 = load i8*, i8** %143, align 8
  %145 = load i8**, i8*** @tbl_shifts, align 8
  %146 = load i32, i32* %5, align 4
  %147 = ashr i32 %146, 5
  %148 = and i32 %147, 3
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i8*, i8** %145, i64 %149
  %151 = load i8*, i8** %150, align 8
  %152 = load i32, i32* %5, align 4
  %153 = ashr i32 %152, 7
  %154 = and i32 %153, 31
  %155 = call i8* (i8*, i8*, i8*, ...) @r_str_appendf(i8* %134, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i64 0, i64 0), i8* %139, i8* %144, i8* %151, i32 %154)
  %156 = load %struct.winedbg_arm_insn*, %struct.winedbg_arm_insn** %4, align 8
  %157 = getelementptr inbounds %struct.winedbg_arm_insn, %struct.winedbg_arm_insn* %156, i32 0, i32 0
  store i8* %155, i8** %157, align 8
  br label %160

158:                                              ; preds = %126
  %159 = load i32, i32* %5, align 4
  store i32 %159, i32* %3, align 4
  br label %240

160:                                              ; preds = %131
  br label %161

161:                                              ; preds = %160, %109
  br label %162

162:                                              ; preds = %161, %90
  br label %239

163:                                              ; preds = %50
  %164 = load i16, i16* %11, align 2
  %165 = icmp ne i16 %164, 0
  br i1 %165, label %166, label %180

166:                                              ; preds = %163
  %167 = load %struct.winedbg_arm_insn*, %struct.winedbg_arm_insn** %4, align 8
  %168 = getelementptr inbounds %struct.winedbg_arm_insn, %struct.winedbg_arm_insn* %167, i32 0, i32 0
  %169 = load i8*, i8** %168, align 8
  %170 = load i8**, i8*** @tbl_regs, align 8
  %171 = load i32, i32* %5, align 4
  %172 = call i64 @get_nibble(i32 %171, i32 4)
  %173 = getelementptr inbounds i8*, i8** %170, i64 %172
  %174 = load i8*, i8** %173, align 8
  %175 = load i16, i16* %12, align 2
  %176 = sext i16 %175 to i32
  %177 = call i8* (i8*, i8*, i8*, ...) @r_str_appendf(i8* %169, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i8* %174, i32 %176)
  %178 = load %struct.winedbg_arm_insn*, %struct.winedbg_arm_insn** %4, align 8
  %179 = getelementptr inbounds %struct.winedbg_arm_insn, %struct.winedbg_arm_insn* %178, i32 0, i32 0
  store i8* %177, i8** %179, align 8
  br label %238

180:                                              ; preds = %163
  %181 = load i32, i32* %5, align 4
  %182 = ashr i32 %181, 4
  %183 = and i32 %182, 255
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %185, label %202

185:                                              ; preds = %180
  %186 = load %struct.winedbg_arm_insn*, %struct.winedbg_arm_insn** %4, align 8
  %187 = getelementptr inbounds %struct.winedbg_arm_insn, %struct.winedbg_arm_insn* %186, i32 0, i32 0
  %188 = load i8*, i8** %187, align 8
  %189 = load i8**, i8*** @tbl_regs, align 8
  %190 = load i32, i32* %5, align 4
  %191 = call i64 @get_nibble(i32 %190, i32 4)
  %192 = getelementptr inbounds i8*, i8** %189, i64 %191
  %193 = load i8*, i8** %192, align 8
  %194 = load i8**, i8*** @tbl_regs, align 8
  %195 = load i32, i32* %5, align 4
  %196 = call i64 @get_nibble(i32 %195, i32 0)
  %197 = getelementptr inbounds i8*, i8** %194, i64 %196
  %198 = load i8*, i8** %197, align 8
  %199 = call i8* (i8*, i8*, i8*, ...) @r_str_appendf(i8* %188, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0), i8* %193, i8* %198)
  %200 = load %struct.winedbg_arm_insn*, %struct.winedbg_arm_insn** %4, align 8
  %201 = getelementptr inbounds %struct.winedbg_arm_insn, %struct.winedbg_arm_insn* %200, i32 0, i32 0
  store i8* %199, i8** %201, align 8
  br label %237

202:                                              ; preds = %180
  %203 = load i32, i32* %5, align 4
  %204 = ashr i32 %203, 4
  %205 = and i32 %204, 1
  %206 = icmp eq i32 %205, 0
  br i1 %206, label %207, label %234

207:                                              ; preds = %202
  %208 = load %struct.winedbg_arm_insn*, %struct.winedbg_arm_insn** %4, align 8
  %209 = getelementptr inbounds %struct.winedbg_arm_insn, %struct.winedbg_arm_insn* %208, i32 0, i32 0
  %210 = load i8*, i8** %209, align 8
  %211 = load i8**, i8*** @tbl_regs, align 8
  %212 = load i32, i32* %5, align 4
  %213 = call i64 @get_nibble(i32 %212, i32 4)
  %214 = getelementptr inbounds i8*, i8** %211, i64 %213
  %215 = load i8*, i8** %214, align 8
  %216 = load i8**, i8*** @tbl_regs, align 8
  %217 = load i32, i32* %5, align 4
  %218 = call i64 @get_nibble(i32 %217, i32 0)
  %219 = getelementptr inbounds i8*, i8** %216, i64 %218
  %220 = load i8*, i8** %219, align 8
  %221 = load i8**, i8*** @tbl_shifts, align 8
  %222 = load i32, i32* %5, align 4
  %223 = ashr i32 %222, 5
  %224 = and i32 %223, 3
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds i8*, i8** %221, i64 %225
  %227 = load i8*, i8** %226, align 8
  %228 = load i32, i32* %5, align 4
  %229 = ashr i32 %228, 7
  %230 = and i32 %229, 31
  %231 = call i8* (i8*, i8*, i8*, ...) @r_str_appendf(i8* %210, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i64 0, i64 0), i8* %215, i8* %220, i8* %227, i32 %230)
  %232 = load %struct.winedbg_arm_insn*, %struct.winedbg_arm_insn** %4, align 8
  %233 = getelementptr inbounds %struct.winedbg_arm_insn, %struct.winedbg_arm_insn* %232, i32 0, i32 0
  store i8* %231, i8** %233, align 8
  br label %236

234:                                              ; preds = %202
  %235 = load i32, i32* %5, align 4
  store i32 %235, i32* %3, align 4
  br label %240

236:                                              ; preds = %207
  br label %237

237:                                              ; preds = %236, %185
  br label %238

238:                                              ; preds = %237, %166
  br label %239

239:                                              ; preds = %238, %162
  store i32 0, i32* %3, align 4
  br label %240

240:                                              ; preds = %239, %234, %158
  %241 = load i32, i32* %3, align 4
  ret i32 %241
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
