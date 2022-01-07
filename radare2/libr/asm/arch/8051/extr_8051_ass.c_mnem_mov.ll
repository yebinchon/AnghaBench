; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/8051/extr_8051_ass.c_mnem_mov.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/8051/extr_8051_ass.c_mnem_mov.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"dptr\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i32, i32**)* @mnem_mov to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mnem_mov(i8** %0, i32 %1, i32** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8** %0, i8*** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32** %2, i32*** %7, align 8
  %12 = load i8**, i8*** %5, align 8
  %13 = getelementptr inbounds i8*, i8** %12, i64 0
  %14 = load i8*, i8** %13, align 8
  %15 = call i32 @r_str_casecmp(i8* %14, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %41, label %17

17:                                               ; preds = %3
  %18 = load i8**, i8*** %5, align 8
  %19 = getelementptr inbounds i8*, i8** %18, i64 1
  %20 = load i8*, i8** %19, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 1
  %22 = call i32 @resolve_immediate(i8* %21, i32* %8)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %17
  store i32 0, i32* %4, align 4
  br label %306

25:                                               ; preds = %17
  %26 = load i32**, i32*** %7, align 8
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  store i32 144, i32* %28, align 4
  %29 = load i32, i32* %8, align 4
  %30 = ashr i32 %29, 8
  %31 = load i32**, i32*** %7, align 8
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 1
  store i32 %30, i32* %33, align 4
  %34 = load i32, i32* %8, align 4
  %35 = load i32**, i32*** %7, align 8
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 2
  store i32 %34, i32* %37, align 4
  %38 = load i32**, i32*** %7, align 8
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 3
  store i32* %40, i32** %38, align 8
  store i32 1, i32* %4, align 4
  br label %306

41:                                               ; preds = %3
  %42 = load i8**, i8*** %5, align 8
  %43 = getelementptr inbounds i8*, i8** %42, i64 0
  %44 = load i8*, i8** %43, align 8
  %45 = call i64 @is_indirect_reg(i8* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %89

47:                                               ; preds = %41
  %48 = load i8**, i8*** %5, align 8
  %49 = getelementptr inbounds i8*, i8** %48, i64 1
  %50 = load i8*, i8** %49, align 8
  %51 = call i32 @r_str_casecmp(i8* %50, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %59, label %53

53:                                               ; preds = %47
  %54 = load i8**, i8*** %5, align 8
  %55 = getelementptr inbounds i8*, i8** %54, i64 0
  %56 = load i8*, i8** %55, align 8
  %57 = load i32**, i32*** %7, align 8
  %58 = call i32 @singlearg_register(i32 246, i8* %56, i32** %57)
  store i32 %58, i32* %4, align 4
  br label %306

59:                                               ; preds = %47
  %60 = load i8**, i8*** %5, align 8
  %61 = getelementptr inbounds i8*, i8** %60, i64 1
  %62 = load i8*, i8** %61, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 0
  %64 = load i8, i8* %63, align 1
  %65 = sext i8 %64 to i32
  %66 = icmp ne i32 %65, 35
  br i1 %66, label %67, label %78

67:                                               ; preds = %59
  %68 = load i8**, i8*** %5, align 8
  %69 = getelementptr inbounds i8*, i8** %68, i64 0
  %70 = load i8*, i8** %69, align 8
  %71 = call i32 @register_number(i8* %70)
  %72 = or i32 166, %71
  %73 = load i8**, i8*** %5, align 8
  %74 = getelementptr inbounds i8*, i8** %73, i64 1
  %75 = load i8*, i8** %74, align 8
  %76 = load i32**, i32*** %7, align 8
  %77 = call i32 @singlearg_direct(i32 %72, i8* %75, i32** %76)
  store i32 %77, i32* %4, align 4
  br label %306

78:                                               ; preds = %59
  %79 = load i8**, i8*** %5, align 8
  %80 = getelementptr inbounds i8*, i8** %79, i64 0
  %81 = load i8*, i8** %80, align 8
  %82 = call i32 @register_number(i8* %81)
  %83 = or i32 118, %82
  %84 = load i8**, i8*** %5, align 8
  %85 = getelementptr inbounds i8*, i8** %84, i64 1
  %86 = load i8*, i8** %85, align 8
  %87 = load i32**, i32*** %7, align 8
  %88 = call i32 @singlearg_immediate(i32 %83, i8* %86, i32** %87)
  store i32 %88, i32* %4, align 4
  br label %306

89:                                               ; preds = %41
  %90 = load i8**, i8*** %5, align 8
  %91 = getelementptr inbounds i8*, i8** %90, i64 0
  %92 = load i8*, i8** %91, align 8
  %93 = call i32 @r_str_casecmp(i8* %92, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %139, label %95

95:                                               ; preds = %89
  %96 = load i8**, i8*** %5, align 8
  %97 = getelementptr inbounds i8*, i8** %96, i64 1
  %98 = load i8*, i8** %97, align 8
  %99 = call i64 @is_indirect_reg(i8* %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %107

101:                                              ; preds = %95
  %102 = load i8**, i8*** %5, align 8
  %103 = getelementptr inbounds i8*, i8** %102, i64 1
  %104 = load i8*, i8** %103, align 8
  %105 = load i32**, i32*** %7, align 8
  %106 = call i32 @singlearg_register(i32 230, i8* %104, i32** %105)
  store i32 %106, i32* %4, align 4
  br label %306

107:                                              ; preds = %95
  %108 = load i8**, i8*** %5, align 8
  %109 = getelementptr inbounds i8*, i8** %108, i64 1
  %110 = load i8*, i8** %109, align 8
  %111 = call i64 @is_reg(i8* %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %119

113:                                              ; preds = %107
  %114 = load i8**, i8*** %5, align 8
  %115 = getelementptr inbounds i8*, i8** %114, i64 1
  %116 = load i8*, i8** %115, align 8
  %117 = load i32**, i32*** %7, align 8
  %118 = call i32 @singlearg_register(i32 232, i8* %116, i32** %117)
  store i32 %118, i32* %4, align 4
  br label %306

119:                                              ; preds = %107
  %120 = load i8**, i8*** %5, align 8
  %121 = getelementptr inbounds i8*, i8** %120, i64 1
  %122 = load i8*, i8** %121, align 8
  %123 = getelementptr inbounds i8, i8* %122, i64 0
  %124 = load i8, i8* %123, align 1
  %125 = sext i8 %124 to i32
  %126 = icmp eq i32 %125, 35
  br i1 %126, label %127, label %133

127:                                              ; preds = %119
  %128 = load i8**, i8*** %5, align 8
  %129 = getelementptr inbounds i8*, i8** %128, i64 1
  %130 = load i8*, i8** %129, align 8
  %131 = load i32**, i32*** %7, align 8
  %132 = call i32 @singlearg_immediate(i32 116, i8* %130, i32** %131)
  store i32 %132, i32* %4, align 4
  br label %306

133:                                              ; preds = %119
  %134 = load i8**, i8*** %5, align 8
  %135 = getelementptr inbounds i8*, i8** %134, i64 1
  %136 = load i8*, i8** %135, align 8
  %137 = load i32**, i32*** %7, align 8
  %138 = call i32 @singlearg_direct(i32 229, i8* %136, i32** %137)
  store i32 %138, i32* %4, align 4
  br label %306

139:                                              ; preds = %89
  %140 = load i8**, i8*** %5, align 8
  %141 = getelementptr inbounds i8*, i8** %140, i64 0
  %142 = load i8*, i8** %141, align 8
  %143 = call i64 @is_reg(i8* %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %187

145:                                              ; preds = %139
  %146 = load i8**, i8*** %5, align 8
  %147 = getelementptr inbounds i8*, i8** %146, i64 1
  %148 = load i8*, i8** %147, align 8
  %149 = call i32 @r_str_casecmp(i8* %148, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %157, label %151

151:                                              ; preds = %145
  %152 = load i8**, i8*** %5, align 8
  %153 = getelementptr inbounds i8*, i8** %152, i64 0
  %154 = load i8*, i8** %153, align 8
  %155 = load i32**, i32*** %7, align 8
  %156 = call i32 @singlearg_register(i32 248, i8* %154, i32** %155)
  store i32 %156, i32* %4, align 4
  br label %306

157:                                              ; preds = %145
  %158 = load i8**, i8*** %5, align 8
  %159 = getelementptr inbounds i8*, i8** %158, i64 1
  %160 = load i8*, i8** %159, align 8
  %161 = getelementptr inbounds i8, i8* %160, i64 0
  %162 = load i8, i8* %161, align 1
  %163 = sext i8 %162 to i32
  %164 = icmp eq i32 %163, 35
  br i1 %164, label %165, label %176

165:                                              ; preds = %157
  %166 = load i8**, i8*** %5, align 8
  %167 = getelementptr inbounds i8*, i8** %166, i64 0
  %168 = load i8*, i8** %167, align 8
  %169 = call i32 @register_number(i8* %168)
  %170 = or i32 120, %169
  %171 = load i8**, i8*** %5, align 8
  %172 = getelementptr inbounds i8*, i8** %171, i64 1
  %173 = load i8*, i8** %172, align 8
  %174 = load i32**, i32*** %7, align 8
  %175 = call i32 @singlearg_immediate(i32 %170, i8* %173, i32** %174)
  store i32 %175, i32* %4, align 4
  br label %306

176:                                              ; preds = %157
  %177 = load i8**, i8*** %5, align 8
  %178 = getelementptr inbounds i8*, i8** %177, i64 0
  %179 = load i8*, i8** %178, align 8
  %180 = call i32 @register_number(i8* %179)
  %181 = or i32 168, %180
  %182 = load i8**, i8*** %5, align 8
  %183 = getelementptr inbounds i8*, i8** %182, i64 1
  %184 = load i8*, i8** %183, align 8
  %185 = load i32**, i32*** %7, align 8
  %186 = call i32 @singlearg_direct(i32 %181, i8* %184, i32** %185)
  store i32 %186, i32* %4, align 4
  br label %306

187:                                              ; preds = %139
  %188 = load i8**, i8*** %5, align 8
  %189 = getelementptr inbounds i8*, i8** %188, i64 1
  %190 = load i8*, i8** %189, align 8
  %191 = call i32 @r_str_casecmp(i8* %190, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %199, label %193

193:                                              ; preds = %187
  %194 = load i8**, i8*** %5, align 8
  %195 = getelementptr inbounds i8*, i8** %194, i64 0
  %196 = load i8*, i8** %195, align 8
  %197 = load i32**, i32*** %7, align 8
  %198 = call i32 @singlearg_bit(i32 146, i8* %196, i32** %197)
  store i32 %198, i32* %4, align 4
  br label %306

199:                                              ; preds = %187
  %200 = load i8**, i8*** %5, align 8
  %201 = getelementptr inbounds i8*, i8** %200, i64 1
  %202 = load i8*, i8** %201, align 8
  %203 = call i32 @r_str_casecmp(i8* %202, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %211, label %205

205:                                              ; preds = %199
  %206 = load i8**, i8*** %5, align 8
  %207 = getelementptr inbounds i8*, i8** %206, i64 0
  %208 = load i8*, i8** %207, align 8
  %209 = load i32**, i32*** %7, align 8
  %210 = call i32 @singlearg_direct(i32 245, i8* %208, i32** %209)
  store i32 %210, i32* %4, align 4
  br label %306

211:                                              ; preds = %199
  %212 = load i8**, i8*** %5, align 8
  %213 = getelementptr inbounds i8*, i8** %212, i64 1
  %214 = load i8*, i8** %213, align 8
  %215 = call i64 @is_reg(i8* %214)
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %217, label %228

217:                                              ; preds = %211
  %218 = load i8**, i8*** %5, align 8
  %219 = getelementptr inbounds i8*, i8** %218, i64 1
  %220 = load i8*, i8** %219, align 8
  %221 = call i32 @register_number(i8* %220)
  %222 = or i32 136, %221
  %223 = load i8**, i8*** %5, align 8
  %224 = getelementptr inbounds i8*, i8** %223, i64 0
  %225 = load i8*, i8** %224, align 8
  %226 = load i32**, i32*** %7, align 8
  %227 = call i32 @singlearg_direct(i32 %222, i8* %225, i32** %226)
  store i32 %227, i32* %4, align 4
  br label %306

228:                                              ; preds = %211
  %229 = load i8**, i8*** %5, align 8
  %230 = getelementptr inbounds i8*, i8** %229, i64 1
  %231 = load i8*, i8** %230, align 8
  %232 = call i64 @is_indirect_reg(i8* %231)
  %233 = icmp ne i64 %232, 0
  br i1 %233, label %234, label %245

234:                                              ; preds = %228
  %235 = load i8**, i8*** %5, align 8
  %236 = getelementptr inbounds i8*, i8** %235, i64 1
  %237 = load i8*, i8** %236, align 8
  %238 = call i32 @register_number(i8* %237)
  %239 = or i32 134, %238
  %240 = load i8**, i8*** %5, align 8
  %241 = getelementptr inbounds i8*, i8** %240, i64 0
  %242 = load i8*, i8** %241, align 8
  %243 = load i32**, i32*** %7, align 8
  %244 = call i32 @singlearg_direct(i32 %239, i8* %242, i32** %243)
  store i32 %244, i32* %4, align 4
  br label %306

245:                                              ; preds = %228
  %246 = load i8**, i8*** %5, align 8
  %247 = getelementptr inbounds i8*, i8** %246, i64 0
  %248 = load i8*, i8** %247, align 8
  %249 = call i32 @address_direct(i8* %248, i32* %9)
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %252, label %251

251:                                              ; preds = %245
  store i32 0, i32* %4, align 4
  br label %306

252:                                              ; preds = %245
  %253 = load i8**, i8*** %5, align 8
  %254 = getelementptr inbounds i8*, i8** %253, i64 1
  %255 = load i8*, i8** %254, align 8
  %256 = getelementptr inbounds i8, i8* %255, i64 0
  %257 = load i8, i8* %256, align 1
  %258 = sext i8 %257 to i32
  %259 = icmp eq i32 %258, 35
  br i1 %259, label %260, label %284

260:                                              ; preds = %252
  %261 = load i8**, i8*** %5, align 8
  %262 = getelementptr inbounds i8*, i8** %261, i64 1
  %263 = load i8*, i8** %262, align 8
  %264 = getelementptr inbounds i8, i8* %263, i64 1
  %265 = call i32 @resolve_immediate(i8* %264, i32* %10)
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %268, label %267

267:                                              ; preds = %260
  store i32 0, i32* %4, align 4
  br label %306

268:                                              ; preds = %260
  %269 = load i32**, i32*** %7, align 8
  %270 = load i32*, i32** %269, align 8
  %271 = getelementptr inbounds i32, i32* %270, i64 0
  store i32 117, i32* %271, align 4
  %272 = load i32, i32* %9, align 4
  %273 = load i32**, i32*** %7, align 8
  %274 = load i32*, i32** %273, align 8
  %275 = getelementptr inbounds i32, i32* %274, i64 1
  store i32 %272, i32* %275, align 4
  %276 = load i32, i32* %10, align 4
  %277 = and i32 %276, 255
  %278 = load i32**, i32*** %7, align 8
  %279 = load i32*, i32** %278, align 8
  %280 = getelementptr inbounds i32, i32* %279, i64 2
  store i32 %277, i32* %280, align 4
  %281 = load i32**, i32*** %7, align 8
  %282 = load i32*, i32** %281, align 8
  %283 = getelementptr inbounds i32, i32* %282, i64 3
  store i32* %283, i32** %281, align 8
  store i32 1, i32* %4, align 4
  br label %306

284:                                              ; preds = %252
  %285 = load i8**, i8*** %5, align 8
  %286 = getelementptr inbounds i8*, i8** %285, i64 1
  %287 = load i8*, i8** %286, align 8
  %288 = call i32 @address_direct(i8* %287, i32* %11)
  %289 = icmp ne i32 %288, 0
  br i1 %289, label %291, label %290

290:                                              ; preds = %284
  store i32 0, i32* %4, align 4
  br label %306

291:                                              ; preds = %284
  %292 = load i32**, i32*** %7, align 8
  %293 = load i32*, i32** %292, align 8
  %294 = getelementptr inbounds i32, i32* %293, i64 0
  store i32 133, i32* %294, align 4
  %295 = load i32, i32* %11, align 4
  %296 = load i32**, i32*** %7, align 8
  %297 = load i32*, i32** %296, align 8
  %298 = getelementptr inbounds i32, i32* %297, i64 1
  store i32 %295, i32* %298, align 4
  %299 = load i32, i32* %9, align 4
  %300 = load i32**, i32*** %7, align 8
  %301 = load i32*, i32** %300, align 8
  %302 = getelementptr inbounds i32, i32* %301, i64 2
  store i32 %299, i32* %302, align 4
  %303 = load i32**, i32*** %7, align 8
  %304 = load i32*, i32** %303, align 8
  %305 = getelementptr inbounds i32, i32* %304, i64 3
  store i32* %305, i32** %303, align 8
  store i32 1, i32* %4, align 4
  br label %306

306:                                              ; preds = %291, %290, %268, %267, %251, %234, %217, %205, %193, %176, %165, %151, %133, %127, %113, %101, %78, %67, %53, %25, %24
  %307 = load i32, i32* %4, align 4
  ret i32 %307
}

declare dso_local i32 @r_str_casecmp(i8*, i8*) #1

declare dso_local i32 @resolve_immediate(i8*, i32*) #1

declare dso_local i64 @is_indirect_reg(i8*) #1

declare dso_local i32 @singlearg_register(i32, i8*, i32**) #1

declare dso_local i32 @singlearg_direct(i32, i8*, i32**) #1

declare dso_local i32 @register_number(i8*) #1

declare dso_local i32 @singlearg_immediate(i32, i8*, i32**) #1

declare dso_local i64 @is_reg(i8*) #1

declare dso_local i32 @singlearg_bit(i32, i8*, i32**) #1

declare dso_local i32 @address_direct(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
