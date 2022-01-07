; ModuleID = '/home/carl/AnghaBench/php-src/ext/pcre/pcre2lib/sljit/extr_sljitNativeSPARC_common.c_getput_arg.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/pcre/pcre2lib/sljit/extr_sljitNativeSPARC_common.c_getput_arg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sljit_compiler = type { i64, i32 }

@SLJIT_MEM = common dso_local global i64 0, align 8
@REG_MASK = common dso_local global i64 0, align 8
@OFFS_REG_MASK = common dso_local global i64 0, align 8
@TMP_REG3 = common dso_local global i64 0, align 8
@LOAD_DATA = common dso_local global i64 0, align 8
@MEM_MASK = common dso_local global i64 0, align 8
@GPR_REG = common dso_local global i64 0, align 8
@TMP_REG1 = common dso_local global i64 0, align 8
@SLL_W = common dso_local global i32 0, align 4
@IMM_ARG = common dso_local global i32 0, align 4
@SIMM_MAX = common dso_local global i64 0, align 8
@SIMM_MIN = common dso_local global i64 0, align 8
@ADD = common dso_local global i32 0, align 4
@MOVABLE_INS = common dso_local global i64 0, align 8
@data_transfer_insts = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.sljit_compiler*, i64, i64, i64, i32, i64, i32)* @getput_arg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @getput_arg(%struct.sljit_compiler* %0, i64 %1, i64 %2, i64 %3, i32 %4, i64 %5, i32 %6) #0 {
  %8 = alloca i64, align 8
  %9 = alloca %struct.sljit_compiler*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  store %struct.sljit_compiler* %0, %struct.sljit_compiler** %9, align 8
  store i64 %1, i64* %10, align 8
  store i64 %2, i64* %11, align 8
  store i64 %3, i64* %12, align 8
  store i32 %4, i32* %13, align 4
  store i64 %5, i64* %14, align 8
  store i32 %6, i32* %15, align 4
  %20 = load i64, i64* %12, align 8
  %21 = load i64, i64* @SLJIT_MEM, align 8
  %22 = and i64 %20, %21
  %23 = call i32 @SLJIT_ASSERT(i64 %22)
  %24 = load i64, i64* %14, align 8
  %25 = load i64, i64* @SLJIT_MEM, align 8
  %26 = and i64 %24, %25
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %7
  store i64 0, i64* %14, align 8
  store i32 0, i32* %15, align 4
  br label %29

29:                                               ; preds = %28, %7
  %30 = load i64, i64* %12, align 8
  %31 = load i64, i64* @REG_MASK, align 8
  %32 = and i64 %30, %31
  store i64 %32, i64* %16, align 8
  %33 = load i64, i64* %12, align 8
  %34 = load i64, i64* @OFFS_REG_MASK, align 8
  %35 = and i64 %33, %34
  %36 = call i64 @SLJIT_UNLIKELY(i64 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %127

38:                                               ; preds = %29
  %39 = load i32, i32* %13, align 4
  %40 = and i32 %39, 3
  store i32 %40, i32* %13, align 4
  %41 = load i64, i64* @SLJIT_MEM, align 8
  %42 = load i64, i64* %12, align 8
  %43 = load i64, i64* @OFFS_REG_MASK, align 8
  %44 = and i64 %42, %43
  %45 = or i64 %41, %44
  %46 = load %struct.sljit_compiler*, %struct.sljit_compiler** %9, align 8
  %47 = getelementptr inbounds %struct.sljit_compiler, %struct.sljit_compiler* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp eq i64 %45, %48
  br i1 %49, label %50, label %58

50:                                               ; preds = %38
  %51 = load i32, i32* %13, align 4
  %52 = load %struct.sljit_compiler*, %struct.sljit_compiler** %9, align 8
  %53 = getelementptr inbounds %struct.sljit_compiler, %struct.sljit_compiler* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = icmp eq i32 %51, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %50
  %57 = load i64, i64* @TMP_REG3, align 8
  store i64 %57, i64* %17, align 8
  br label %126

58:                                               ; preds = %50, %38
  %59 = load i64, i64* %12, align 8
  %60 = load i64, i64* @OFFS_REG_MASK, align 8
  %61 = and i64 %59, %60
  %62 = load i64, i64* %14, align 8
  %63 = load i64, i64* @OFFS_REG_MASK, align 8
  %64 = and i64 %62, %63
  %65 = icmp eq i64 %61, %64
  br i1 %65, label %66, label %83

66:                                               ; preds = %58
  %67 = load i32, i32* %13, align 4
  %68 = load i32, i32* %15, align 4
  %69 = and i32 %68, 3
  %70 = icmp eq i32 %67, %69
  br i1 %70, label %71, label %83

71:                                               ; preds = %66
  %72 = load i64, i64* @SLJIT_MEM, align 8
  %73 = load i64, i64* %12, align 8
  %74 = load i64, i64* @OFFS_REG_MASK, align 8
  %75 = and i64 %73, %74
  %76 = or i64 %72, %75
  %77 = load %struct.sljit_compiler*, %struct.sljit_compiler** %9, align 8
  %78 = getelementptr inbounds %struct.sljit_compiler, %struct.sljit_compiler* %77, i32 0, i32 0
  store i64 %76, i64* %78, align 8
  %79 = load i32, i32* %13, align 4
  %80 = load %struct.sljit_compiler*, %struct.sljit_compiler** %9, align 8
  %81 = getelementptr inbounds %struct.sljit_compiler, %struct.sljit_compiler* %80, i32 0, i32 1
  store i32 %79, i32* %81, align 8
  %82 = load i64, i64* @TMP_REG3, align 8
  store i64 %82, i64* %17, align 8
  br label %108

83:                                               ; preds = %66, %58
  %84 = load i64, i64* %10, align 8
  %85 = load i64, i64* @LOAD_DATA, align 8
  %86 = and i64 %84, %85
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %105

88:                                               ; preds = %83
  %89 = load i64, i64* %10, align 8
  %90 = load i64, i64* @MEM_MASK, align 8
  %91 = and i64 %89, %90
  %92 = load i64, i64* @GPR_REG, align 8
  %93 = icmp ule i64 %91, %92
  br i1 %93, label %94, label %105

94:                                               ; preds = %88
  %95 = load i64, i64* %11, align 8
  %96 = load i64, i64* %16, align 8
  %97 = icmp ne i64 %95, %96
  br i1 %97, label %98, label %105

98:                                               ; preds = %94
  %99 = load i64, i64* %11, align 8
  %100 = load i64, i64* %12, align 8
  %101 = call i64 @OFFS_REG(i64 %100)
  %102 = icmp ne i64 %99, %101
  br i1 %102, label %103, label %105

103:                                              ; preds = %98
  %104 = load i64, i64* %11, align 8
  store i64 %104, i64* %17, align 8
  br label %107

105:                                              ; preds = %98, %94, %88, %83
  %106 = load i64, i64* @TMP_REG1, align 8
  store i64 %106, i64* %17, align 8
  br label %107

107:                                              ; preds = %105, %103
  br label %108

108:                                              ; preds = %107, %71
  %109 = load %struct.sljit_compiler*, %struct.sljit_compiler** %9, align 8
  %110 = load i32, i32* @SLL_W, align 4
  %111 = load i64, i64* %17, align 8
  %112 = call i32 @D(i64 %111)
  %113 = or i32 %110, %112
  %114 = load i64, i64* %12, align 8
  %115 = call i64 @OFFS_REG(i64 %114)
  %116 = call i32 @S1(i64 %115)
  %117 = or i32 %113, %116
  %118 = load i32, i32* @IMM_ARG, align 4
  %119 = or i32 %117, %118
  %120 = load i32, i32* %13, align 4
  %121 = or i32 %119, %120
  %122 = load i64, i64* %17, align 8
  %123 = call i64 @DR(i64 %122)
  %124 = call i64 @push_inst(%struct.sljit_compiler* %109, i32 %121, i64 %123)
  %125 = call i32 @FAIL_IF(i64 %124)
  br label %126

126:                                              ; preds = %108, %56
  br label %231

127:                                              ; preds = %29
  %128 = load %struct.sljit_compiler*, %struct.sljit_compiler** %9, align 8
  %129 = getelementptr inbounds %struct.sljit_compiler, %struct.sljit_compiler* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* @SLJIT_MEM, align 8
  %132 = icmp eq i64 %130, %131
  br i1 %132, label %133, label %182

133:                                              ; preds = %127
  %134 = load i32, i32* %13, align 4
  %135 = load %struct.sljit_compiler*, %struct.sljit_compiler** %9, align 8
  %136 = getelementptr inbounds %struct.sljit_compiler, %struct.sljit_compiler* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 8
  %138 = sub nsw i32 %134, %137
  %139 = sext i32 %138 to i64
  %140 = load i64, i64* @SIMM_MAX, align 8
  %141 = icmp sle i64 %139, %140
  br i1 %141, label %142, label %182

142:                                              ; preds = %133
  %143 = load i32, i32* %13, align 4
  %144 = load %struct.sljit_compiler*, %struct.sljit_compiler** %9, align 8
  %145 = getelementptr inbounds %struct.sljit_compiler, %struct.sljit_compiler* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 8
  %147 = sub nsw i32 %143, %146
  %148 = sext i32 %147 to i64
  %149 = load i64, i64* @SIMM_MIN, align 8
  %150 = icmp sge i64 %148, %149
  br i1 %150, label %151, label %182

151:                                              ; preds = %142
  %152 = load i32, i32* %13, align 4
  %153 = load %struct.sljit_compiler*, %struct.sljit_compiler** %9, align 8
  %154 = getelementptr inbounds %struct.sljit_compiler, %struct.sljit_compiler* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 8
  %156 = icmp ne i32 %152, %155
  br i1 %156, label %157, label %180

157:                                              ; preds = %151
  %158 = load %struct.sljit_compiler*, %struct.sljit_compiler** %9, align 8
  %159 = load i32, i32* @ADD, align 4
  %160 = load i64, i64* @TMP_REG3, align 8
  %161 = call i32 @D(i64 %160)
  %162 = or i32 %159, %161
  %163 = load i64, i64* @TMP_REG3, align 8
  %164 = call i32 @S1(i64 %163)
  %165 = or i32 %162, %164
  %166 = load i32, i32* %13, align 4
  %167 = load %struct.sljit_compiler*, %struct.sljit_compiler** %9, align 8
  %168 = getelementptr inbounds %struct.sljit_compiler, %struct.sljit_compiler* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 8
  %170 = sub nsw i32 %166, %169
  %171 = call i32 @IMM(i32 %170)
  %172 = or i32 %165, %171
  %173 = load i64, i64* @TMP_REG3, align 8
  %174 = call i64 @DR(i64 %173)
  %175 = call i64 @push_inst(%struct.sljit_compiler* %158, i32 %172, i64 %174)
  %176 = call i32 @FAIL_IF(i64 %175)
  %177 = load i32, i32* %13, align 4
  %178 = load %struct.sljit_compiler*, %struct.sljit_compiler** %9, align 8
  %179 = getelementptr inbounds %struct.sljit_compiler, %struct.sljit_compiler* %178, i32 0, i32 1
  store i32 %177, i32* %179, align 8
  br label %180

180:                                              ; preds = %157, %151
  %181 = load i64, i64* @TMP_REG3, align 8
  store i64 %181, i64* %17, align 8
  br label %230

182:                                              ; preds = %142, %133, %127
  %183 = load i32, i32* %15, align 4
  %184 = load i32, i32* %13, align 4
  %185 = sub nsw i32 %183, %184
  %186 = sext i32 %185 to i64
  %187 = load i64, i64* @SIMM_MAX, align 8
  %188 = icmp sle i64 %186, %187
  br i1 %188, label %189, label %204

189:                                              ; preds = %182
  %190 = load i32, i32* %15, align 4
  %191 = load i32, i32* %13, align 4
  %192 = sub nsw i32 %190, %191
  %193 = sext i32 %192 to i64
  %194 = load i64, i64* @SIMM_MIN, align 8
  %195 = icmp sge i64 %193, %194
  br i1 %195, label %196, label %204

196:                                              ; preds = %189
  %197 = load i64, i64* @SLJIT_MEM, align 8
  %198 = load %struct.sljit_compiler*, %struct.sljit_compiler** %9, align 8
  %199 = getelementptr inbounds %struct.sljit_compiler, %struct.sljit_compiler* %198, i32 0, i32 0
  store i64 %197, i64* %199, align 8
  %200 = load i32, i32* %13, align 4
  %201 = load %struct.sljit_compiler*, %struct.sljit_compiler** %9, align 8
  %202 = getelementptr inbounds %struct.sljit_compiler, %struct.sljit_compiler* %201, i32 0, i32 1
  store i32 %200, i32* %202, align 8
  %203 = load i64, i64* @TMP_REG3, align 8
  store i64 %203, i64* %17, align 8
  br label %224

204:                                              ; preds = %189, %182
  %205 = load i64, i64* %10, align 8
  %206 = load i64, i64* @LOAD_DATA, align 8
  %207 = and i64 %205, %206
  %208 = icmp ne i64 %207, 0
  br i1 %208, label %209, label %221

209:                                              ; preds = %204
  %210 = load i64, i64* %10, align 8
  %211 = load i64, i64* @MEM_MASK, align 8
  %212 = and i64 %210, %211
  %213 = load i64, i64* @GPR_REG, align 8
  %214 = icmp ule i64 %212, %213
  br i1 %214, label %215, label %221

215:                                              ; preds = %209
  %216 = load i64, i64* %11, align 8
  %217 = load i64, i64* %16, align 8
  %218 = icmp ne i64 %216, %217
  br i1 %218, label %219, label %221

219:                                              ; preds = %215
  %220 = load i64, i64* %11, align 8
  store i64 %220, i64* %17, align 8
  br label %223

221:                                              ; preds = %215, %209, %204
  %222 = load i64, i64* @TMP_REG1, align 8
  store i64 %222, i64* %17, align 8
  br label %223

223:                                              ; preds = %221, %219
  br label %224

224:                                              ; preds = %223, %196
  %225 = load %struct.sljit_compiler*, %struct.sljit_compiler** %9, align 8
  %226 = load i64, i64* %17, align 8
  %227 = load i32, i32* %13, align 4
  %228 = call i64 @load_immediate(%struct.sljit_compiler* %225, i64 %226, i32 %227)
  %229 = call i32 @FAIL_IF(i64 %228)
  br label %230

230:                                              ; preds = %224, %180
  br label %231

231:                                              ; preds = %230, %126
  %232 = load i64, i64* %10, align 8
  %233 = load i64, i64* @MEM_MASK, align 8
  %234 = and i64 %232, %233
  %235 = load i64, i64* @GPR_REG, align 8
  %236 = icmp ule i64 %234, %235
  br i1 %236, label %237, label %240

237:                                              ; preds = %231
  %238 = load i64, i64* %11, align 8
  %239 = call i32 @D(i64 %238)
  br label %243

240:                                              ; preds = %231
  %241 = load i64, i64* %11, align 8
  %242 = call i32 @FD(i64 %241)
  br label %243

243:                                              ; preds = %240, %237
  %244 = phi i32 [ %239, %237 ], [ %242, %240 ]
  store i32 %244, i32* %19, align 4
  %245 = load i64, i64* %10, align 8
  %246 = load i64, i64* @MEM_MASK, align 8
  %247 = and i64 %245, %246
  %248 = load i64, i64* @GPR_REG, align 8
  %249 = icmp ule i64 %247, %248
  br i1 %249, label %250, label %258

250:                                              ; preds = %243
  %251 = load i64, i64* %10, align 8
  %252 = load i64, i64* @LOAD_DATA, align 8
  %253 = and i64 %251, %252
  %254 = icmp ne i64 %253, 0
  br i1 %254, label %255, label %258

255:                                              ; preds = %250
  %256 = load i64, i64* %11, align 8
  %257 = call i64 @DR(i64 %256)
  br label %260

258:                                              ; preds = %250, %243
  %259 = load i64, i64* @MOVABLE_INS, align 8
  br label %260

260:                                              ; preds = %258, %255
  %261 = phi i64 [ %257, %255 ], [ %259, %258 ]
  store i64 %261, i64* %18, align 8
  %262 = load i64, i64* %16, align 8
  %263 = icmp ne i64 %262, 0
  br i1 %263, label %281, label %264

264:                                              ; preds = %260
  %265 = load %struct.sljit_compiler*, %struct.sljit_compiler** %9, align 8
  %266 = load i32*, i32** @data_transfer_insts, align 8
  %267 = load i64, i64* %10, align 8
  %268 = load i64, i64* @MEM_MASK, align 8
  %269 = and i64 %267, %268
  %270 = getelementptr inbounds i32, i32* %266, i64 %269
  %271 = load i32, i32* %270, align 4
  %272 = load i32, i32* %19, align 4
  %273 = or i32 %271, %272
  %274 = load i64, i64* %17, align 8
  %275 = call i32 @S1(i64 %274)
  %276 = or i32 %273, %275
  %277 = call i32 @IMM(i32 0)
  %278 = or i32 %276, %277
  %279 = load i64, i64* %18, align 8
  %280 = call i64 @push_inst(%struct.sljit_compiler* %265, i32 %278, i64 %279)
  store i64 %280, i64* %8, align 8
  br label %299

281:                                              ; preds = %260
  %282 = load %struct.sljit_compiler*, %struct.sljit_compiler** %9, align 8
  %283 = load i32*, i32** @data_transfer_insts, align 8
  %284 = load i64, i64* %10, align 8
  %285 = load i64, i64* @MEM_MASK, align 8
  %286 = and i64 %284, %285
  %287 = getelementptr inbounds i32, i32* %283, i64 %286
  %288 = load i32, i32* %287, align 4
  %289 = load i32, i32* %19, align 4
  %290 = or i32 %288, %289
  %291 = load i64, i64* %16, align 8
  %292 = call i32 @S1(i64 %291)
  %293 = or i32 %290, %292
  %294 = load i64, i64* %17, align 8
  %295 = call i32 @S2(i64 %294)
  %296 = or i32 %293, %295
  %297 = load i64, i64* %18, align 8
  %298 = call i64 @push_inst(%struct.sljit_compiler* %282, i32 %296, i64 %297)
  store i64 %298, i64* %8, align 8
  br label %299

299:                                              ; preds = %281, %264
  %300 = load i64, i64* %8, align 8
  ret i64 %300
}

declare dso_local i32 @SLJIT_ASSERT(i64) #1

declare dso_local i64 @SLJIT_UNLIKELY(i64) #1

declare dso_local i64 @OFFS_REG(i64) #1

declare dso_local i32 @FAIL_IF(i64) #1

declare dso_local i64 @push_inst(%struct.sljit_compiler*, i32, i64) #1

declare dso_local i32 @D(i64) #1

declare dso_local i32 @S1(i64) #1

declare dso_local i64 @DR(i64) #1

declare dso_local i32 @IMM(i32) #1

declare dso_local i64 @load_immediate(%struct.sljit_compiler*, i64, i32) #1

declare dso_local i32 @FD(i64) #1

declare dso_local i32 @S2(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
