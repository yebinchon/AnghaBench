; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/arm/aarch64/extr_aarch64-dis-2.c_aarch64_extract_operand.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/arm/aarch64/extr_aarch64-dis-2.c_aarch64_extract_operand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@aarch64_operands = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @aarch64_extract_operand(i32* %0, i32* %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %13 = load i32*, i32** %7, align 8
  %14 = load i32*, i32** @aarch64_operands, align 8
  %15 = ptrtoint i32* %13 to i64
  %16 = ptrtoint i32* %14 to i64
  %17 = sub i64 %15, %16
  %18 = sdiv exact i64 %17, 4
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %12, align 4
  %20 = load i32, i32* %12, align 4
  switch i32 %20, label %441 [
    i32 1, label %21
    i32 2, label %21
    i32 3, label %21
    i32 4, label %21
    i32 5, label %21
    i32 6, label %21
    i32 7, label %21
    i32 9, label %21
    i32 10, label %21
    i32 11, label %21
    i32 15, label %21
    i32 16, label %21
    i32 17, label %21
    i32 18, label %21
    i32 20, label %21
    i32 21, label %21
    i32 22, label %21
    i32 23, label %21
    i32 24, label %21
    i32 25, label %21
    i32 26, label %21
    i32 27, label %21
    i32 28, label %21
    i32 29, label %21
    i32 153, label %21
    i32 154, label %21
    i32 155, label %21
    i32 156, label %21
    i32 157, label %21
    i32 158, label %21
    i32 159, label %21
    i32 160, label %21
    i32 161, label %21
    i32 162, label %21
    i32 175, label %21
    i32 176, label %21
    i32 177, label %21
    i32 178, label %21
    i32 179, label %21
    i32 180, label %21
    i32 181, label %21
    i32 182, label %21
    i32 183, label %21
    i32 187, label %21
    i32 190, label %21
    i32 8, label %28
    i32 12, label %35
    i32 13, label %42
    i32 14, label %49
    i32 19, label %56
    i32 30, label %63
    i32 31, label %63
    i32 32, label %63
    i32 33, label %63
    i32 192, label %63
    i32 34, label %70
    i32 35, label %77
    i32 36, label %84
    i32 37, label %91
    i32 38, label %98
    i32 39, label %98
    i32 40, label %98
    i32 41, label %98
    i32 51, label %98
    i32 52, label %98
    i32 53, label %98
    i32 54, label %98
    i32 55, label %98
    i32 56, label %98
    i32 57, label %98
    i32 58, label %98
    i32 59, label %98
    i32 60, label %98
    i32 61, label %98
    i32 62, label %98
    i32 63, label %98
    i32 64, label %98
    i32 75, label %98
    i32 76, label %98
    i32 77, label %98
    i32 78, label %98
    i32 79, label %98
    i32 150, label %98
    i32 152, label %98
    i32 167, label %98
    i32 168, label %98
    i32 169, label %98
    i32 170, label %98
    i32 171, label %98
    i32 172, label %98
    i32 173, label %98
    i32 174, label %98
    i32 42, label %105
    i32 43, label %105
    i32 44, label %112
    i32 45, label %112
    i32 46, label %112
    i32 47, label %119
    i32 50, label %126
    i32 141, label %126
    i32 65, label %133
    i32 148, label %133
    i32 66, label %140
    i32 67, label %147
    i32 68, label %154
    i32 70, label %161
    i32 71, label %161
    i32 146, label %161
    i32 72, label %168
    i32 145, label %168
    i32 73, label %175
    i32 74, label %175
    i32 80, label %182
    i32 87, label %182
    i32 81, label %189
    i32 82, label %196
    i32 83, label %196
    i32 84, label %196
    i32 85, label %203
    i32 86, label %210
    i32 88, label %217
    i32 89, label %224
    i32 90, label %231
    i32 91, label %238
    i32 92, label %245
    i32 93, label %245
    i32 94, label %245
    i32 95, label %245
    i32 96, label %252
    i32 97, label %252
    i32 98, label %259
    i32 99, label %266
    i32 100, label %273
    i32 101, label %280
    i32 102, label %280
    i32 103, label %280
    i32 104, label %280
    i32 105, label %287
    i32 106, label %294
    i32 107, label %301
    i32 108, label %301
    i32 109, label %301
    i32 110, label %301
    i32 111, label %308
    i32 112, label %308
    i32 113, label %308
    i32 114, label %308
    i32 115, label %308
    i32 116, label %308
    i32 117, label %308
    i32 118, label %308
    i32 119, label %308
    i32 120, label %308
    i32 121, label %308
    i32 122, label %308
    i32 123, label %308
    i32 124, label %315
    i32 125, label %315
    i32 126, label %315
    i32 127, label %315
    i32 128, label %315
    i32 129, label %315
    i32 130, label %315
    i32 131, label %315
    i32 132, label %322
    i32 133, label %322
    i32 134, label %322
    i32 135, label %322
    i32 136, label %329
    i32 137, label %336
    i32 138, label %343
    i32 139, label %350
    i32 140, label %357
    i32 142, label %364
    i32 143, label %371
    i32 144, label %378
    i32 147, label %385
    i32 149, label %392
    i32 151, label %399
    i32 163, label %406
    i32 164, label %406
    i32 165, label %413
    i32 166, label %413
    i32 184, label %420
    i32 185, label %420
    i32 186, label %420
    i32 188, label %427
    i32 189, label %434
    i32 191, label %434
  ]

21:                                               ; preds = %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5
  %22 = load i32*, i32** %7, align 8
  %23 = load i32*, i32** %8, align 8
  %24 = load i32, i32* %9, align 4
  %25 = load i32*, i32** %10, align 8
  %26 = load i32*, i32** %11, align 8
  %27 = call i32 @aarch64_ext_regno(i32* %22, i32* %23, i32 %24, i32* %25, i32* %26)
  store i32 %27, i32* %6, align 4
  br label %444

28:                                               ; preds = %5
  %29 = load i32*, i32** %7, align 8
  %30 = load i32*, i32** %8, align 8
  %31 = load i32, i32* %9, align 4
  %32 = load i32*, i32** %10, align 8
  %33 = load i32*, i32** %11, align 8
  %34 = call i32 @aarch64_ext_regrt_sysins(i32* %29, i32* %30, i32 %31, i32* %32, i32* %33)
  store i32 %34, i32* %6, align 4
  br label %444

35:                                               ; preds = %5
  %36 = load i32*, i32** %7, align 8
  %37 = load i32*, i32** %8, align 8
  %38 = load i32, i32* %9, align 4
  %39 = load i32*, i32** %10, align 8
  %40 = load i32*, i32** %11, align 8
  %41 = call i32 @aarch64_ext_regno_pair(i32* %36, i32* %37, i32 %38, i32* %39, i32* %40)
  store i32 %41, i32* %6, align 4
  br label %444

42:                                               ; preds = %5
  %43 = load i32*, i32** %7, align 8
  %44 = load i32*, i32** %8, align 8
  %45 = load i32, i32* %9, align 4
  %46 = load i32*, i32** %10, align 8
  %47 = load i32*, i32** %11, align 8
  %48 = call i32 @aarch64_ext_reg_extended(i32* %43, i32* %44, i32 %45, i32* %46, i32* %47)
  store i32 %48, i32* %6, align 4
  br label %444

49:                                               ; preds = %5
  %50 = load i32*, i32** %7, align 8
  %51 = load i32*, i32** %8, align 8
  %52 = load i32, i32* %9, align 4
  %53 = load i32*, i32** %10, align 8
  %54 = load i32*, i32** %11, align 8
  %55 = call i32 @aarch64_ext_reg_shifted(i32* %50, i32* %51, i32 %52, i32* %53, i32* %54)
  store i32 %55, i32* %6, align 4
  br label %444

56:                                               ; preds = %5
  %57 = load i32*, i32** %7, align 8
  %58 = load i32*, i32** %8, align 8
  %59 = load i32, i32* %9, align 4
  %60 = load i32*, i32** %10, align 8
  %61 = load i32*, i32** %11, align 8
  %62 = call i32 @aarch64_ext_ft(i32* %57, i32* %58, i32 %59, i32* %60, i32* %61)
  store i32 %62, i32* %6, align 4
  br label %444

63:                                               ; preds = %5, %5, %5, %5, %5
  %64 = load i32*, i32** %7, align 8
  %65 = load i32*, i32** %8, align 8
  %66 = load i32, i32* %9, align 4
  %67 = load i32*, i32** %10, align 8
  %68 = load i32*, i32** %11, align 8
  %69 = call i32 @aarch64_ext_reglane(i32* %64, i32* %65, i32 %66, i32* %67, i32* %68)
  store i32 %69, i32* %6, align 4
  br label %444

70:                                               ; preds = %5
  %71 = load i32*, i32** %7, align 8
  %72 = load i32*, i32** %8, align 8
  %73 = load i32, i32* %9, align 4
  %74 = load i32*, i32** %10, align 8
  %75 = load i32*, i32** %11, align 8
  %76 = call i32 @aarch64_ext_reglist(i32* %71, i32* %72, i32 %73, i32* %74, i32* %75)
  store i32 %76, i32* %6, align 4
  br label %444

77:                                               ; preds = %5
  %78 = load i32*, i32** %7, align 8
  %79 = load i32*, i32** %8, align 8
  %80 = load i32, i32* %9, align 4
  %81 = load i32*, i32** %10, align 8
  %82 = load i32*, i32** %11, align 8
  %83 = call i32 @aarch64_ext_ldst_reglist(i32* %78, i32* %79, i32 %80, i32* %81, i32* %82)
  store i32 %83, i32* %6, align 4
  br label %444

84:                                               ; preds = %5
  %85 = load i32*, i32** %7, align 8
  %86 = load i32*, i32** %8, align 8
  %87 = load i32, i32* %9, align 4
  %88 = load i32*, i32** %10, align 8
  %89 = load i32*, i32** %11, align 8
  %90 = call i32 @aarch64_ext_ldst_reglist_r(i32* %85, i32* %86, i32 %87, i32* %88, i32* %89)
  store i32 %90, i32* %6, align 4
  br label %444

91:                                               ; preds = %5
  %92 = load i32*, i32** %7, align 8
  %93 = load i32*, i32** %8, align 8
  %94 = load i32, i32* %9, align 4
  %95 = load i32*, i32** %10, align 8
  %96 = load i32*, i32** %11, align 8
  %97 = call i32 @aarch64_ext_ldst_elemlist(i32* %92, i32* %93, i32 %94, i32* %95, i32* %96)
  store i32 %97, i32* %6, align 4
  br label %444

98:                                               ; preds = %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5
  %99 = load i32*, i32** %7, align 8
  %100 = load i32*, i32** %8, align 8
  %101 = load i32, i32* %9, align 4
  %102 = load i32*, i32** %10, align 8
  %103 = load i32*, i32** %11, align 8
  %104 = call i32 @aarch64_ext_imm(i32* %99, i32* %100, i32 %101, i32* %102, i32* %103)
  store i32 %104, i32* %6, align 4
  br label %444

105:                                              ; preds = %5, %5
  %106 = load i32*, i32** %7, align 8
  %107 = load i32*, i32** %8, align 8
  %108 = load i32, i32* %9, align 4
  %109 = load i32*, i32** %10, align 8
  %110 = load i32*, i32** %11, align 8
  %111 = call i32 @aarch64_ext_advsimd_imm_shift(i32* %106, i32* %107, i32 %108, i32* %109, i32* %110)
  store i32 %111, i32* %6, align 4
  br label %444

112:                                              ; preds = %5, %5, %5
  %113 = load i32*, i32** %7, align 8
  %114 = load i32*, i32** %8, align 8
  %115 = load i32, i32* %9, align 4
  %116 = load i32*, i32** %10, align 8
  %117 = load i32*, i32** %11, align 8
  %118 = call i32 @aarch64_ext_advsimd_imm_modified(i32* %113, i32* %114, i32 %115, i32* %116, i32* %117)
  store i32 %118, i32* %6, align 4
  br label %444

119:                                              ; preds = %5
  %120 = load i32*, i32** %7, align 8
  %121 = load i32*, i32** %8, align 8
  %122 = load i32, i32* %9, align 4
  %123 = load i32*, i32** %10, align 8
  %124 = load i32*, i32** %11, align 8
  %125 = call i32 @aarch64_ext_shll_imm(i32* %120, i32* %121, i32 %122, i32* %123, i32* %124)
  store i32 %125, i32* %6, align 4
  br label %444

126:                                              ; preds = %5, %5
  %127 = load i32*, i32** %7, align 8
  %128 = load i32*, i32** %8, align 8
  %129 = load i32, i32* %9, align 4
  %130 = load i32*, i32** %10, align 8
  %131 = load i32*, i32** %11, align 8
  %132 = call i32 @aarch64_ext_fpimm(i32* %127, i32* %128, i32 %129, i32* %130, i32* %131)
  store i32 %132, i32* %6, align 4
  br label %444

133:                                              ; preds = %5, %5
  %134 = load i32*, i32** %7, align 8
  %135 = load i32*, i32** %8, align 8
  %136 = load i32, i32* %9, align 4
  %137 = load i32*, i32** %10, align 8
  %138 = load i32*, i32** %11, align 8
  %139 = call i32 @aarch64_ext_limm(i32* %134, i32* %135, i32 %136, i32* %137, i32* %138)
  store i32 %139, i32* %6, align 4
  br label %444

140:                                              ; preds = %5
  %141 = load i32*, i32** %7, align 8
  %142 = load i32*, i32** %8, align 8
  %143 = load i32, i32* %9, align 4
  %144 = load i32*, i32** %10, align 8
  %145 = load i32*, i32** %11, align 8
  %146 = call i32 @aarch64_ext_aimm(i32* %141, i32* %142, i32 %143, i32* %144, i32* %145)
  store i32 %146, i32* %6, align 4
  br label %444

147:                                              ; preds = %5
  %148 = load i32*, i32** %7, align 8
  %149 = load i32*, i32** %8, align 8
  %150 = load i32, i32* %9, align 4
  %151 = load i32*, i32** %10, align 8
  %152 = load i32*, i32** %11, align 8
  %153 = call i32 @aarch64_ext_imm_half(i32* %148, i32* %149, i32 %150, i32* %151, i32* %152)
  store i32 %153, i32* %6, align 4
  br label %444

154:                                              ; preds = %5
  %155 = load i32*, i32** %7, align 8
  %156 = load i32*, i32** %8, align 8
  %157 = load i32, i32* %9, align 4
  %158 = load i32*, i32** %10, align 8
  %159 = load i32*, i32** %11, align 8
  %160 = call i32 @aarch64_ext_fbits(i32* %155, i32* %156, i32 %157, i32* %158, i32* %159)
  store i32 %160, i32* %6, align 4
  br label %444

161:                                              ; preds = %5, %5, %5
  %162 = load i32*, i32** %7, align 8
  %163 = load i32*, i32** %8, align 8
  %164 = load i32, i32* %9, align 4
  %165 = load i32*, i32** %10, align 8
  %166 = load i32*, i32** %11, align 8
  %167 = call i32 @aarch64_ext_imm_rotate2(i32* %162, i32* %163, i32 %164, i32* %165, i32* %166)
  store i32 %167, i32* %6, align 4
  br label %444

168:                                              ; preds = %5, %5
  %169 = load i32*, i32** %7, align 8
  %170 = load i32*, i32** %8, align 8
  %171 = load i32, i32* %9, align 4
  %172 = load i32*, i32** %10, align 8
  %173 = load i32*, i32** %11, align 8
  %174 = call i32 @aarch64_ext_imm_rotate1(i32* %169, i32* %170, i32 %171, i32* %172, i32* %173)
  store i32 %174, i32* %6, align 4
  br label %444

175:                                              ; preds = %5, %5
  %176 = load i32*, i32** %7, align 8
  %177 = load i32*, i32** %8, align 8
  %178 = load i32, i32* %9, align 4
  %179 = load i32*, i32** %10, align 8
  %180 = load i32*, i32** %11, align 8
  %181 = call i32 @aarch64_ext_cond(i32* %176, i32* %177, i32 %178, i32* %179, i32* %180)
  store i32 %181, i32* %6, align 4
  br label %444

182:                                              ; preds = %5, %5
  %183 = load i32*, i32** %7, align 8
  %184 = load i32*, i32** %8, align 8
  %185 = load i32, i32* %9, align 4
  %186 = load i32*, i32** %10, align 8
  %187 = load i32*, i32** %11, align 8
  %188 = call i32 @aarch64_ext_addr_simple(i32* %183, i32* %184, i32 %185, i32* %186, i32* %187)
  store i32 %188, i32* %6, align 4
  br label %444

189:                                              ; preds = %5
  %190 = load i32*, i32** %7, align 8
  %191 = load i32*, i32** %8, align 8
  %192 = load i32, i32* %9, align 4
  %193 = load i32*, i32** %10, align 8
  %194 = load i32*, i32** %11, align 8
  %195 = call i32 @aarch64_ext_addr_regoff(i32* %190, i32* %191, i32 %192, i32* %193, i32* %194)
  store i32 %195, i32* %6, align 4
  br label %444

196:                                              ; preds = %5, %5, %5
  %197 = load i32*, i32** %7, align 8
  %198 = load i32*, i32** %8, align 8
  %199 = load i32, i32* %9, align 4
  %200 = load i32*, i32** %10, align 8
  %201 = load i32*, i32** %11, align 8
  %202 = call i32 @aarch64_ext_addr_simm(i32* %197, i32* %198, i32 %199, i32* %200, i32* %201)
  store i32 %202, i32* %6, align 4
  br label %444

203:                                              ; preds = %5
  %204 = load i32*, i32** %7, align 8
  %205 = load i32*, i32** %8, align 8
  %206 = load i32, i32* %9, align 4
  %207 = load i32*, i32** %10, align 8
  %208 = load i32*, i32** %11, align 8
  %209 = call i32 @aarch64_ext_addr_simm10(i32* %204, i32* %205, i32 %206, i32* %207, i32* %208)
  store i32 %209, i32* %6, align 4
  br label %444

210:                                              ; preds = %5
  %211 = load i32*, i32** %7, align 8
  %212 = load i32*, i32** %8, align 8
  %213 = load i32, i32* %9, align 4
  %214 = load i32*, i32** %10, align 8
  %215 = load i32*, i32** %11, align 8
  %216 = call i32 @aarch64_ext_addr_uimm12(i32* %211, i32* %212, i32 %213, i32* %214, i32* %215)
  store i32 %216, i32* %6, align 4
  br label %444

217:                                              ; preds = %5
  %218 = load i32*, i32** %7, align 8
  %219 = load i32*, i32** %8, align 8
  %220 = load i32, i32* %9, align 4
  %221 = load i32*, i32** %10, align 8
  %222 = load i32*, i32** %11, align 8
  %223 = call i32 @aarch64_ext_addr_offset(i32* %218, i32* %219, i32 %220, i32* %221, i32* %222)
  store i32 %223, i32* %6, align 4
  br label %444

224:                                              ; preds = %5
  %225 = load i32*, i32** %7, align 8
  %226 = load i32*, i32** %8, align 8
  %227 = load i32, i32* %9, align 4
  %228 = load i32*, i32** %10, align 8
  %229 = load i32*, i32** %11, align 8
  %230 = call i32 @aarch64_ext_simd_addr_post(i32* %225, i32* %226, i32 %227, i32* %228, i32* %229)
  store i32 %230, i32* %6, align 4
  br label %444

231:                                              ; preds = %5
  %232 = load i32*, i32** %7, align 8
  %233 = load i32*, i32** %8, align 8
  %234 = load i32, i32* %9, align 4
  %235 = load i32*, i32** %10, align 8
  %236 = load i32*, i32** %11, align 8
  %237 = call i32 @aarch64_ext_sysreg(i32* %232, i32* %233, i32 %234, i32* %235, i32* %236)
  store i32 %237, i32* %6, align 4
  br label %444

238:                                              ; preds = %5
  %239 = load i32*, i32** %7, align 8
  %240 = load i32*, i32** %8, align 8
  %241 = load i32, i32* %9, align 4
  %242 = load i32*, i32** %10, align 8
  %243 = load i32*, i32** %11, align 8
  %244 = call i32 @aarch64_ext_pstatefield(i32* %239, i32* %240, i32 %241, i32* %242, i32* %243)
  store i32 %244, i32* %6, align 4
  br label %444

245:                                              ; preds = %5, %5, %5, %5
  %246 = load i32*, i32** %7, align 8
  %247 = load i32*, i32** %8, align 8
  %248 = load i32, i32* %9, align 4
  %249 = load i32*, i32** %10, align 8
  %250 = load i32*, i32** %11, align 8
  %251 = call i32 @aarch64_ext_sysins_op(i32* %246, i32* %247, i32 %248, i32* %249, i32* %250)
  store i32 %251, i32* %6, align 4
  br label %444

252:                                              ; preds = %5, %5
  %253 = load i32*, i32** %7, align 8
  %254 = load i32*, i32** %8, align 8
  %255 = load i32, i32* %9, align 4
  %256 = load i32*, i32** %10, align 8
  %257 = load i32*, i32** %11, align 8
  %258 = call i32 @aarch64_ext_barrier(i32* %253, i32* %254, i32 %255, i32* %256, i32* %257)
  store i32 %258, i32* %6, align 4
  br label %444

259:                                              ; preds = %5
  %260 = load i32*, i32** %7, align 8
  %261 = load i32*, i32** %8, align 8
  %262 = load i32, i32* %9, align 4
  %263 = load i32*, i32** %10, align 8
  %264 = load i32*, i32** %11, align 8
  %265 = call i32 @aarch64_ext_prfop(i32* %260, i32* %261, i32 %262, i32* %263, i32* %264)
  store i32 %265, i32* %6, align 4
  br label %444

266:                                              ; preds = %5
  %267 = load i32*, i32** %7, align 8
  %268 = load i32*, i32** %8, align 8
  %269 = load i32, i32* %9, align 4
  %270 = load i32*, i32** %10, align 8
  %271 = load i32*, i32** %11, align 8
  %272 = call i32 @aarch64_ext_hint(i32* %267, i32* %268, i32 %269, i32* %270, i32* %271)
  store i32 %272, i32* %6, align 4
  br label %444

273:                                              ; preds = %5
  %274 = load i32*, i32** %7, align 8
  %275 = load i32*, i32** %8, align 8
  %276 = load i32, i32* %9, align 4
  %277 = load i32*, i32** %10, align 8
  %278 = load i32*, i32** %11, align 8
  %279 = call i32 @aarch64_ext_sve_addr_ri_s4(i32* %274, i32* %275, i32 %276, i32* %277, i32* %278)
  store i32 %279, i32* %6, align 4
  br label %444

280:                                              ; preds = %5, %5, %5, %5
  %281 = load i32*, i32** %7, align 8
  %282 = load i32*, i32** %8, align 8
  %283 = load i32, i32* %9, align 4
  %284 = load i32*, i32** %10, align 8
  %285 = load i32*, i32** %11, align 8
  %286 = call i32 @aarch64_ext_sve_addr_ri_s4xvl(i32* %281, i32* %282, i32 %283, i32* %284, i32* %285)
  store i32 %286, i32* %6, align 4
  br label %444

287:                                              ; preds = %5
  %288 = load i32*, i32** %7, align 8
  %289 = load i32*, i32** %8, align 8
  %290 = load i32, i32* %9, align 4
  %291 = load i32*, i32** %10, align 8
  %292 = load i32*, i32** %11, align 8
  %293 = call i32 @aarch64_ext_sve_addr_ri_s6xvl(i32* %288, i32* %289, i32 %290, i32* %291, i32* %292)
  store i32 %293, i32* %6, align 4
  br label %444

294:                                              ; preds = %5
  %295 = load i32*, i32** %7, align 8
  %296 = load i32*, i32** %8, align 8
  %297 = load i32, i32* %9, align 4
  %298 = load i32*, i32** %10, align 8
  %299 = load i32*, i32** %11, align 8
  %300 = call i32 @aarch64_ext_sve_addr_ri_s9xvl(i32* %295, i32* %296, i32 %297, i32* %298, i32* %299)
  store i32 %300, i32* %6, align 4
  br label %444

301:                                              ; preds = %5, %5, %5, %5
  %302 = load i32*, i32** %7, align 8
  %303 = load i32*, i32** %8, align 8
  %304 = load i32, i32* %9, align 4
  %305 = load i32*, i32** %10, align 8
  %306 = load i32*, i32** %11, align 8
  %307 = call i32 @aarch64_ext_sve_addr_ri_u6(i32* %302, i32* %303, i32 %304, i32* %305, i32* %306)
  store i32 %307, i32* %6, align 4
  br label %444

308:                                              ; preds = %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5
  %309 = load i32*, i32** %7, align 8
  %310 = load i32*, i32** %8, align 8
  %311 = load i32, i32* %9, align 4
  %312 = load i32*, i32** %10, align 8
  %313 = load i32*, i32** %11, align 8
  %314 = call i32 @aarch64_ext_sve_addr_rr_lsl(i32* %309, i32* %310, i32 %311, i32* %312, i32* %313)
  store i32 %314, i32* %6, align 4
  br label %444

315:                                              ; preds = %5, %5, %5, %5, %5, %5, %5, %5
  %316 = load i32*, i32** %7, align 8
  %317 = load i32*, i32** %8, align 8
  %318 = load i32, i32* %9, align 4
  %319 = load i32*, i32** %10, align 8
  %320 = load i32*, i32** %11, align 8
  %321 = call i32 @aarch64_ext_sve_addr_rz_xtw(i32* %316, i32* %317, i32 %318, i32* %319, i32* %320)
  store i32 %321, i32* %6, align 4
  br label %444

322:                                              ; preds = %5, %5, %5, %5
  %323 = load i32*, i32** %7, align 8
  %324 = load i32*, i32** %8, align 8
  %325 = load i32, i32* %9, align 4
  %326 = load i32*, i32** %10, align 8
  %327 = load i32*, i32** %11, align 8
  %328 = call i32 @aarch64_ext_sve_addr_zi_u5(i32* %323, i32* %324, i32 %325, i32* %326, i32* %327)
  store i32 %328, i32* %6, align 4
  br label %444

329:                                              ; preds = %5
  %330 = load i32*, i32** %7, align 8
  %331 = load i32*, i32** %8, align 8
  %332 = load i32, i32* %9, align 4
  %333 = load i32*, i32** %10, align 8
  %334 = load i32*, i32** %11, align 8
  %335 = call i32 @aarch64_ext_sve_addr_zz_lsl(i32* %330, i32* %331, i32 %332, i32* %333, i32* %334)
  store i32 %335, i32* %6, align 4
  br label %444

336:                                              ; preds = %5
  %337 = load i32*, i32** %7, align 8
  %338 = load i32*, i32** %8, align 8
  %339 = load i32, i32* %9, align 4
  %340 = load i32*, i32** %10, align 8
  %341 = load i32*, i32** %11, align 8
  %342 = call i32 @aarch64_ext_sve_addr_zz_sxtw(i32* %337, i32* %338, i32 %339, i32* %340, i32* %341)
  store i32 %342, i32* %6, align 4
  br label %444

343:                                              ; preds = %5
  %344 = load i32*, i32** %7, align 8
  %345 = load i32*, i32** %8, align 8
  %346 = load i32, i32* %9, align 4
  %347 = load i32*, i32** %10, align 8
  %348 = load i32*, i32** %11, align 8
  %349 = call i32 @aarch64_ext_sve_addr_zz_uxtw(i32* %344, i32* %345, i32 %346, i32* %347, i32* %348)
  store i32 %349, i32* %6, align 4
  br label %444

350:                                              ; preds = %5
  %351 = load i32*, i32** %7, align 8
  %352 = load i32*, i32** %8, align 8
  %353 = load i32, i32* %9, align 4
  %354 = load i32*, i32** %10, align 8
  %355 = load i32*, i32** %11, align 8
  %356 = call i32 @aarch64_ext_sve_aimm(i32* %351, i32* %352, i32 %353, i32* %354, i32* %355)
  store i32 %356, i32* %6, align 4
  br label %444

357:                                              ; preds = %5
  %358 = load i32*, i32** %7, align 8
  %359 = load i32*, i32** %8, align 8
  %360 = load i32, i32* %9, align 4
  %361 = load i32*, i32** %10, align 8
  %362 = load i32*, i32** %11, align 8
  %363 = call i32 @aarch64_ext_sve_asimm(i32* %358, i32* %359, i32 %360, i32* %361, i32* %362)
  store i32 %363, i32* %6, align 4
  br label %444

364:                                              ; preds = %5
  %365 = load i32*, i32** %7, align 8
  %366 = load i32*, i32** %8, align 8
  %367 = load i32, i32* %9, align 4
  %368 = load i32*, i32** %10, align 8
  %369 = load i32*, i32** %11, align 8
  %370 = call i32 @aarch64_ext_sve_float_half_one(i32* %365, i32* %366, i32 %367, i32* %368, i32* %369)
  store i32 %370, i32* %6, align 4
  br label %444

371:                                              ; preds = %5
  %372 = load i32*, i32** %7, align 8
  %373 = load i32*, i32** %8, align 8
  %374 = load i32, i32* %9, align 4
  %375 = load i32*, i32** %10, align 8
  %376 = load i32*, i32** %11, align 8
  %377 = call i32 @aarch64_ext_sve_float_half_two(i32* %372, i32* %373, i32 %374, i32* %375, i32* %376)
  store i32 %377, i32* %6, align 4
  br label %444

378:                                              ; preds = %5
  %379 = load i32*, i32** %7, align 8
  %380 = load i32*, i32** %8, align 8
  %381 = load i32, i32* %9, align 4
  %382 = load i32*, i32** %10, align 8
  %383 = load i32*, i32** %11, align 8
  %384 = call i32 @aarch64_ext_sve_float_zero_one(i32* %379, i32* %380, i32 %381, i32* %382, i32* %383)
  store i32 %384, i32* %6, align 4
  br label %444

385:                                              ; preds = %5
  %386 = load i32*, i32** %7, align 8
  %387 = load i32*, i32** %8, align 8
  %388 = load i32, i32* %9, align 4
  %389 = load i32*, i32** %10, align 8
  %390 = load i32*, i32** %11, align 8
  %391 = call i32 @aarch64_ext_inv_limm(i32* %386, i32* %387, i32 %388, i32* %389, i32* %390)
  store i32 %391, i32* %6, align 4
  br label %444

392:                                              ; preds = %5
  %393 = load i32*, i32** %7, align 8
  %394 = load i32*, i32** %8, align 8
  %395 = load i32, i32* %9, align 4
  %396 = load i32*, i32** %10, align 8
  %397 = load i32*, i32** %11, align 8
  %398 = call i32 @aarch64_ext_sve_limm_mov(i32* %393, i32* %394, i32 %395, i32* %396, i32* %397)
  store i32 %398, i32* %6, align 4
  br label %444

399:                                              ; preds = %5
  %400 = load i32*, i32** %7, align 8
  %401 = load i32*, i32** %8, align 8
  %402 = load i32, i32* %9, align 4
  %403 = load i32*, i32** %10, align 8
  %404 = load i32*, i32** %11, align 8
  %405 = call i32 @aarch64_ext_sve_scale(i32* %400, i32* %401, i32 %402, i32* %403, i32* %404)
  store i32 %405, i32* %6, align 4
  br label %444

406:                                              ; preds = %5, %5
  %407 = load i32*, i32** %7, align 8
  %408 = load i32*, i32** %8, align 8
  %409 = load i32, i32* %9, align 4
  %410 = load i32*, i32** %10, align 8
  %411 = load i32*, i32** %11, align 8
  %412 = call i32 @aarch64_ext_sve_shlimm(i32* %407, i32* %408, i32 %409, i32* %410, i32* %411)
  store i32 %412, i32* %6, align 4
  br label %444

413:                                              ; preds = %5, %5
  %414 = load i32*, i32** %7, align 8
  %415 = load i32*, i32** %8, align 8
  %416 = load i32, i32* %9, align 4
  %417 = load i32*, i32** %10, align 8
  %418 = load i32*, i32** %11, align 8
  %419 = call i32 @aarch64_ext_sve_shrimm(i32* %414, i32* %415, i32 %416, i32* %417, i32* %418)
  store i32 %419, i32* %6, align 4
  br label %444

420:                                              ; preds = %5, %5, %5
  %421 = load i32*, i32** %7, align 8
  %422 = load i32*, i32** %8, align 8
  %423 = load i32, i32* %9, align 4
  %424 = load i32*, i32** %10, align 8
  %425 = load i32*, i32** %11, align 8
  %426 = call i32 @aarch64_ext_sve_quad_index(i32* %421, i32* %422, i32 %423, i32* %424, i32* %425)
  store i32 %426, i32* %6, align 4
  br label %444

427:                                              ; preds = %5
  %428 = load i32*, i32** %7, align 8
  %429 = load i32*, i32** %8, align 8
  %430 = load i32, i32* %9, align 4
  %431 = load i32*, i32** %10, align 8
  %432 = load i32*, i32** %11, align 8
  %433 = call i32 @aarch64_ext_sve_index(i32* %428, i32* %429, i32 %430, i32* %431, i32* %432)
  store i32 %433, i32* %6, align 4
  br label %444

434:                                              ; preds = %5, %5
  %435 = load i32*, i32** %7, align 8
  %436 = load i32*, i32** %8, align 8
  %437 = load i32, i32* %9, align 4
  %438 = load i32*, i32** %10, align 8
  %439 = load i32*, i32** %11, align 8
  %440 = call i32 @aarch64_ext_sve_reglist(i32* %435, i32* %436, i32 %437, i32* %438, i32* %439)
  store i32 %440, i32* %6, align 4
  br label %444

441:                                              ; preds = %5
  %442 = call i32 @assert(i32 0)
  %443 = call i32 (...) @abort() #3
  unreachable

444:                                              ; preds = %434, %427, %420, %413, %406, %399, %392, %385, %378, %371, %364, %357, %350, %343, %336, %329, %322, %315, %308, %301, %294, %287, %280, %273, %266, %259, %252, %245, %238, %231, %224, %217, %210, %203, %196, %189, %182, %175, %168, %161, %154, %147, %140, %133, %126, %119, %112, %105, %98, %91, %84, %77, %70, %63, %56, %49, %42, %35, %28, %21
  %445 = load i32, i32* %6, align 4
  ret i32 %445
}

declare dso_local i32 @aarch64_ext_regno(i32*, i32*, i32, i32*, i32*) #1

declare dso_local i32 @aarch64_ext_regrt_sysins(i32*, i32*, i32, i32*, i32*) #1

declare dso_local i32 @aarch64_ext_regno_pair(i32*, i32*, i32, i32*, i32*) #1

declare dso_local i32 @aarch64_ext_reg_extended(i32*, i32*, i32, i32*, i32*) #1

declare dso_local i32 @aarch64_ext_reg_shifted(i32*, i32*, i32, i32*, i32*) #1

declare dso_local i32 @aarch64_ext_ft(i32*, i32*, i32, i32*, i32*) #1

declare dso_local i32 @aarch64_ext_reglane(i32*, i32*, i32, i32*, i32*) #1

declare dso_local i32 @aarch64_ext_reglist(i32*, i32*, i32, i32*, i32*) #1

declare dso_local i32 @aarch64_ext_ldst_reglist(i32*, i32*, i32, i32*, i32*) #1

declare dso_local i32 @aarch64_ext_ldst_reglist_r(i32*, i32*, i32, i32*, i32*) #1

declare dso_local i32 @aarch64_ext_ldst_elemlist(i32*, i32*, i32, i32*, i32*) #1

declare dso_local i32 @aarch64_ext_imm(i32*, i32*, i32, i32*, i32*) #1

declare dso_local i32 @aarch64_ext_advsimd_imm_shift(i32*, i32*, i32, i32*, i32*) #1

declare dso_local i32 @aarch64_ext_advsimd_imm_modified(i32*, i32*, i32, i32*, i32*) #1

declare dso_local i32 @aarch64_ext_shll_imm(i32*, i32*, i32, i32*, i32*) #1

declare dso_local i32 @aarch64_ext_fpimm(i32*, i32*, i32, i32*, i32*) #1

declare dso_local i32 @aarch64_ext_limm(i32*, i32*, i32, i32*, i32*) #1

declare dso_local i32 @aarch64_ext_aimm(i32*, i32*, i32, i32*, i32*) #1

declare dso_local i32 @aarch64_ext_imm_half(i32*, i32*, i32, i32*, i32*) #1

declare dso_local i32 @aarch64_ext_fbits(i32*, i32*, i32, i32*, i32*) #1

declare dso_local i32 @aarch64_ext_imm_rotate2(i32*, i32*, i32, i32*, i32*) #1

declare dso_local i32 @aarch64_ext_imm_rotate1(i32*, i32*, i32, i32*, i32*) #1

declare dso_local i32 @aarch64_ext_cond(i32*, i32*, i32, i32*, i32*) #1

declare dso_local i32 @aarch64_ext_addr_simple(i32*, i32*, i32, i32*, i32*) #1

declare dso_local i32 @aarch64_ext_addr_regoff(i32*, i32*, i32, i32*, i32*) #1

declare dso_local i32 @aarch64_ext_addr_simm(i32*, i32*, i32, i32*, i32*) #1

declare dso_local i32 @aarch64_ext_addr_simm10(i32*, i32*, i32, i32*, i32*) #1

declare dso_local i32 @aarch64_ext_addr_uimm12(i32*, i32*, i32, i32*, i32*) #1

declare dso_local i32 @aarch64_ext_addr_offset(i32*, i32*, i32, i32*, i32*) #1

declare dso_local i32 @aarch64_ext_simd_addr_post(i32*, i32*, i32, i32*, i32*) #1

declare dso_local i32 @aarch64_ext_sysreg(i32*, i32*, i32, i32*, i32*) #1

declare dso_local i32 @aarch64_ext_pstatefield(i32*, i32*, i32, i32*, i32*) #1

declare dso_local i32 @aarch64_ext_sysins_op(i32*, i32*, i32, i32*, i32*) #1

declare dso_local i32 @aarch64_ext_barrier(i32*, i32*, i32, i32*, i32*) #1

declare dso_local i32 @aarch64_ext_prfop(i32*, i32*, i32, i32*, i32*) #1

declare dso_local i32 @aarch64_ext_hint(i32*, i32*, i32, i32*, i32*) #1

declare dso_local i32 @aarch64_ext_sve_addr_ri_s4(i32*, i32*, i32, i32*, i32*) #1

declare dso_local i32 @aarch64_ext_sve_addr_ri_s4xvl(i32*, i32*, i32, i32*, i32*) #1

declare dso_local i32 @aarch64_ext_sve_addr_ri_s6xvl(i32*, i32*, i32, i32*, i32*) #1

declare dso_local i32 @aarch64_ext_sve_addr_ri_s9xvl(i32*, i32*, i32, i32*, i32*) #1

declare dso_local i32 @aarch64_ext_sve_addr_ri_u6(i32*, i32*, i32, i32*, i32*) #1

declare dso_local i32 @aarch64_ext_sve_addr_rr_lsl(i32*, i32*, i32, i32*, i32*) #1

declare dso_local i32 @aarch64_ext_sve_addr_rz_xtw(i32*, i32*, i32, i32*, i32*) #1

declare dso_local i32 @aarch64_ext_sve_addr_zi_u5(i32*, i32*, i32, i32*, i32*) #1

declare dso_local i32 @aarch64_ext_sve_addr_zz_lsl(i32*, i32*, i32, i32*, i32*) #1

declare dso_local i32 @aarch64_ext_sve_addr_zz_sxtw(i32*, i32*, i32, i32*, i32*) #1

declare dso_local i32 @aarch64_ext_sve_addr_zz_uxtw(i32*, i32*, i32, i32*, i32*) #1

declare dso_local i32 @aarch64_ext_sve_aimm(i32*, i32*, i32, i32*, i32*) #1

declare dso_local i32 @aarch64_ext_sve_asimm(i32*, i32*, i32, i32*, i32*) #1

declare dso_local i32 @aarch64_ext_sve_float_half_one(i32*, i32*, i32, i32*, i32*) #1

declare dso_local i32 @aarch64_ext_sve_float_half_two(i32*, i32*, i32, i32*, i32*) #1

declare dso_local i32 @aarch64_ext_sve_float_zero_one(i32*, i32*, i32, i32*, i32*) #1

declare dso_local i32 @aarch64_ext_inv_limm(i32*, i32*, i32, i32*, i32*) #1

declare dso_local i32 @aarch64_ext_sve_limm_mov(i32*, i32*, i32, i32*, i32*) #1

declare dso_local i32 @aarch64_ext_sve_scale(i32*, i32*, i32, i32*, i32*) #1

declare dso_local i32 @aarch64_ext_sve_shlimm(i32*, i32*, i32, i32*, i32*) #1

declare dso_local i32 @aarch64_ext_sve_shrimm(i32*, i32*, i32, i32*, i32*) #1

declare dso_local i32 @aarch64_ext_sve_quad_index(i32*, i32*, i32, i32*, i32*) #1

declare dso_local i32 @aarch64_ext_sve_index(i32*, i32*, i32, i32*, i32*) #1

declare dso_local i32 @aarch64_ext_sve_reglist(i32*, i32*, i32, i32*, i32*) #1

declare dso_local i32 @assert(i32) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
