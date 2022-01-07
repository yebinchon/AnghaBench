; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/p/extr_asm_lm32.c_r_asm_lm32_decode.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/p/extr_asm_lm32.c_r_asm_lm32_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32 }
%struct.TYPE_16__ = type { i64, i32, i32, i8*, i8*, i8*, i8*, i8*, %struct.TYPE_15__ }

@RAsmLm32OpcodeNumber = common dso_local global i64 0, align 8
@RAsmLm32OpcodeList = common dso_local global %struct.TYPE_15__* null, align 8
@RAsmLm32Imm16SignBitPos = common dso_local global i32 0, align 4
@RAsmLm32Imm26SignBitPos = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*)* @r_asm_lm32_decode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r_asm_lm32_decode(%struct.TYPE_16__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_16__*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %3, align 8
  %4 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %5 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %4, i32 0, i32 2
  %6 = load i32, i32* %5, align 4
  %7 = call i64 @extract_opcode(i32 %6)
  %8 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %8, i32 0, i32 0
  store i64 %7, i64* %9, align 8
  %10 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @RAsmLm32OpcodeNumber, align 8
  %14 = icmp uge i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %256

16:                                               ; preds = %1
  %17 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %17, i32 0, i32 8
  %19 = load %struct.TYPE_15__*, %struct.TYPE_15__** @RAsmLm32OpcodeList, align 8
  %20 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i64 %22
  %24 = bitcast %struct.TYPE_15__* %18 to i8*
  %25 = bitcast %struct.TYPE_15__* %23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %24, i8* align 4 %25, i64 4, i1 false)
  %26 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %26, i32 0, i32 8
  %28 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  switch i32 %29, label %222 [
    i32 133, label %30
    i32 134, label %51
    i32 132, label %72
    i32 131, label %91
    i32 136, label %115
    i32 137, label %127
    i32 128, label %139
    i32 129, label %157
    i32 135, label %176
    i32 139, label %194
    i32 138, label %212
    i32 130, label %221
  ]

30:                                               ; preds = %16
  %31 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = call i8* @extract_reg_v(i32 %33)
  %35 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %35, i32 0, i32 5
  store i8* %34, i8** %36, align 8
  %37 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = call i8* @extract_reg_u(i32 %39)
  %41 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %41, i32 0, i32 6
  store i8* %40, i8** %42, align 8
  %43 = load i32, i32* @RAsmLm32Imm16SignBitPos, align 4
  %44 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = call i8* @extract_imm16(i32 %46)
  %48 = call i8* @shift_and_signextend(i32 0, i32 %43, i8* %47)
  %49 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %49, i32 0, i32 3
  store i8* %48, i8** %50, align 8
  br label %223

51:                                               ; preds = %16
  %52 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = call i8* @extract_reg_v(i32 %54)
  %56 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %56, i32 0, i32 5
  store i8* %55, i8** %57, align 8
  %58 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = call i8* @extract_reg_u(i32 %60)
  %62 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %62, i32 0, i32 6
  store i8* %61, i8** %63, align 8
  %64 = load i32, i32* @RAsmLm32Imm16SignBitPos, align 4
  %65 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = call i8* @extract_imm16(i32 %67)
  %69 = call i8* @shift_and_signextend(i32 2, i32 %64, i8* %68)
  %70 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %70, i32 0, i32 3
  store i8* %69, i8** %71, align 8
  br label %223

72:                                               ; preds = %16
  %73 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = call i8* @extract_reg_v(i32 %75)
  %77 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %77, i32 0, i32 5
  store i8* %76, i8** %78, align 8
  %79 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = call i8* @extract_reg_u(i32 %81)
  %83 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %83, i32 0, i32 6
  store i8* %82, i8** %84, align 8
  %85 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = call i8* @extract_imm16(i32 %87)
  %89 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %89, i32 0, i32 3
  store i8* %88, i8** %90, align 8
  br label %223

91:                                               ; preds = %16
  %92 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %93 = call i32 @is_invalid_imm5_instr(%struct.TYPE_16__* %92)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %91
  store i32 -1, i32* %2, align 4
  br label %256

96:                                               ; preds = %91
  %97 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %98 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = call i8* @extract_reg_v(i32 %99)
  %101 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %101, i32 0, i32 5
  store i8* %100, i8** %102, align 8
  %103 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 4
  %106 = call i8* @extract_reg_u(i32 %105)
  %107 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %108 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %107, i32 0, i32 6
  store i8* %106, i8** %108, align 8
  %109 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %110 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 4
  %112 = call i8* @extract_imm5(i32 %111)
  %113 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %114 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %113, i32 0, i32 3
  store i8* %112, i8** %114, align 8
  br label %223

115:                                              ; preds = %16
  %116 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %117 = call i32 @is_invalid_imm5_instr(%struct.TYPE_16__* %116)
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %115
  store i32 -1, i32* %2, align 4
  br label %256

120:                                              ; preds = %115
  %121 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %122 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 4
  %124 = call i8* @extract_imm5(i32 %123)
  %125 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %126 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %125, i32 0, i32 3
  store i8* %124, i8** %126, align 8
  br label %223

127:                                              ; preds = %16
  %128 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %129 = call i32 @is_invalid_one_reg_instr(%struct.TYPE_16__* %128)
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %127
  store i32 -1, i32* %2, align 4
  br label %256

132:                                              ; preds = %127
  %133 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %134 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 4
  %136 = call i8* @extract_reg_u(i32 %135)
  %137 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %138 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %137, i32 0, i32 6
  store i8* %136, i8** %138, align 8
  br label %223

139:                                              ; preds = %16
  %140 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %141 = call i32 @is_invalid_two_reg_instr(%struct.TYPE_16__* %140)
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %139
  store i32 -1, i32* %2, align 4
  br label %256

144:                                              ; preds = %139
  %145 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %146 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 4
  %148 = call i8* @extract_reg_w(i32 %147)
  %149 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %150 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %149, i32 0, i32 5
  store i8* %148, i8** %150, align 8
  %151 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %152 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 4
  %154 = call i8* @extract_reg_u(i32 %153)
  %155 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %156 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %155, i32 0, i32 6
  store i8* %154, i8** %156, align 8
  br label %223

157:                                              ; preds = %16
  %158 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %159 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %158, i32 0, i32 2
  %160 = load i32, i32* %159, align 4
  %161 = call i8* @extract_reg_w(i32 %160)
  %162 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %163 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %162, i32 0, i32 5
  store i8* %161, i8** %163, align 8
  %164 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %165 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %164, i32 0, i32 2
  %166 = load i32, i32* %165, align 4
  %167 = call i8* @extract_reg_v(i32 %166)
  %168 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %169 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %168, i32 0, i32 6
  store i8* %167, i8** %169, align 8
  %170 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %171 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %170, i32 0, i32 2
  %172 = load i32, i32* %171, align 4
  %173 = call i8* @extract_reg_u(i32 %172)
  %174 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %175 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %174, i32 0, i32 7
  store i8* %173, i8** %175, align 8
  br label %223

176:                                              ; preds = %16
  %177 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %178 = call i32 @is_invalid_wcsr_instr(%struct.TYPE_16__* %177)
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %181

180:                                              ; preds = %176
  store i32 -1, i32* %2, align 4
  br label %256

181:                                              ; preds = %176
  %182 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %183 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %182, i32 0, i32 2
  %184 = load i32, i32* %183, align 4
  %185 = call i8* @extract_reg_v(i32 %184)
  %186 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %187 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %186, i32 0, i32 6
  store i8* %185, i8** %187, align 8
  %188 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %189 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %188, i32 0, i32 2
  %190 = load i32, i32* %189, align 4
  %191 = call i8* @extract_reg_u(i32 %190)
  %192 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %193 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %192, i32 0, i32 4
  store i8* %191, i8** %193, align 8
  br label %223

194:                                              ; preds = %16
  %195 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %196 = call i32 @is_invalid_two_reg_instr(%struct.TYPE_16__* %195)
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %199

198:                                              ; preds = %194
  store i32 -1, i32* %2, align 4
  br label %256

199:                                              ; preds = %194
  %200 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %201 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %200, i32 0, i32 2
  %202 = load i32, i32* %201, align 4
  %203 = call i8* @extract_reg_w(i32 %202)
  %204 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %205 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %204, i32 0, i32 5
  store i8* %203, i8** %205, align 8
  %206 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %207 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %206, i32 0, i32 2
  %208 = load i32, i32* %207, align 4
  %209 = call i8* @extract_reg_u(i32 %208)
  %210 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %211 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %210, i32 0, i32 4
  store i8* %209, i8** %211, align 8
  br label %223

212:                                              ; preds = %16
  %213 = load i32, i32* @RAsmLm32Imm26SignBitPos, align 4
  %214 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %215 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %214, i32 0, i32 2
  %216 = load i32, i32* %215, align 4
  %217 = call i8* @extract_imm26(i32 %216)
  %218 = call i8* @shift_and_signextend(i32 2, i32 %213, i8* %217)
  %219 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %220 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %219, i32 0, i32 3
  store i8* %218, i8** %220, align 8
  br label %223

221:                                              ; preds = %16
  br label %222

222:                                              ; preds = %16, %221
  store i32 -1, i32* %2, align 4
  br label %256

223:                                              ; preds = %212, %199, %181, %157, %144, %132, %120, %96, %72, %51, %30
  %224 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %225 = call i64 @is_pseudo_instr_ret(%struct.TYPE_16__* %224)
  %226 = icmp ne i64 %225, 0
  br i1 %226, label %251, label %227

227:                                              ; preds = %223
  %228 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %229 = call i64 @is_pseudo_instr_mv(%struct.TYPE_16__* %228)
  %230 = icmp ne i64 %229, 0
  br i1 %230, label %251, label %231

231:                                              ; preds = %227
  %232 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %233 = call i64 @is_pseudo_instr_mvhi(%struct.TYPE_16__* %232)
  %234 = icmp ne i64 %233, 0
  br i1 %234, label %251, label %235

235:                                              ; preds = %231
  %236 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %237 = call i64 @is_pseudo_instr_not(%struct.TYPE_16__* %236)
  %238 = icmp ne i64 %237, 0
  br i1 %238, label %251, label %239

239:                                              ; preds = %235
  %240 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %241 = call i64 @is_pseudo_instr_mvi(%struct.TYPE_16__* %240)
  %242 = icmp ne i64 %241, 0
  br i1 %242, label %251, label %243

243:                                              ; preds = %239
  %244 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %245 = call i64 @is_pseudo_instr_nop(%struct.TYPE_16__* %244)
  %246 = icmp ne i64 %245, 0
  br i1 %246, label %251, label %247

247:                                              ; preds = %243
  %248 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %249 = call i64 @is_pseudo_instr_raise(%struct.TYPE_16__* %248)
  %250 = icmp ne i64 %249, 0
  br label %251

251:                                              ; preds = %247, %243, %239, %235, %231, %227, %223
  %252 = phi i1 [ true, %243 ], [ true, %239 ], [ true, %235 ], [ true, %231 ], [ true, %227 ], [ true, %223 ], [ %250, %247 ]
  %253 = zext i1 %252 to i32
  %254 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %255 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %254, i32 0, i32 1
  store i32 %253, i32* %255, align 8
  store i32 0, i32* %2, align 4
  br label %256

256:                                              ; preds = %251, %222, %198, %180, %143, %131, %119, %95, %15
  %257 = load i32, i32* %2, align 4
  ret i32 %257
}

declare dso_local i64 @extract_opcode(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i8* @extract_reg_v(i32) #1

declare dso_local i8* @extract_reg_u(i32) #1

declare dso_local i8* @shift_and_signextend(i32, i32, i8*) #1

declare dso_local i8* @extract_imm16(i32) #1

declare dso_local i32 @is_invalid_imm5_instr(%struct.TYPE_16__*) #1

declare dso_local i8* @extract_imm5(i32) #1

declare dso_local i32 @is_invalid_one_reg_instr(%struct.TYPE_16__*) #1

declare dso_local i32 @is_invalid_two_reg_instr(%struct.TYPE_16__*) #1

declare dso_local i8* @extract_reg_w(i32) #1

declare dso_local i32 @is_invalid_wcsr_instr(%struct.TYPE_16__*) #1

declare dso_local i8* @extract_imm26(i32) #1

declare dso_local i64 @is_pseudo_instr_ret(%struct.TYPE_16__*) #1

declare dso_local i64 @is_pseudo_instr_mv(%struct.TYPE_16__*) #1

declare dso_local i64 @is_pseudo_instr_mvhi(%struct.TYPE_16__*) #1

declare dso_local i64 @is_pseudo_instr_not(%struct.TYPE_16__*) #1

declare dso_local i64 @is_pseudo_instr_mvi(%struct.TYPE_16__*) #1

declare dso_local i64 @is_pseudo_instr_nop(%struct.TYPE_16__*) #1

declare dso_local i64 @is_pseudo_instr_raise(%struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
