; ModuleID = '/home/carl/AnghaBench/postgres/contrib/pg_trgm/extr_trgm_op.c_iterate_word_similarity.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/pg_trgm/extr_trgm_op.c_iterate_word_similarity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@WORD_SIMILARITY_STRICT = common dso_local global i32 0, align 4
@strict_word_similarity_threshold = common dso_local global double 0.000000e+00, align 8
@word_similarity_threshold = common dso_local global double 0.000000e+00, align 8
@TRGM_BOUND_RIGHT = common dso_local global i32 0, align 4
@TRGM_BOUND_LEFT = common dso_local global i32 0, align 4
@WORD_SIMILARITY_CHECK_ONLY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (float (i32*, i32*, i32, i32, i32, i32, i32*)* @iterate_word_similarity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal float @iterate_word_similarity(i32* %0, i32* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32* %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca float, align 4
  %22 = alloca float, align 4
  %23 = alloca double, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca float, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32* %6, i32** %14, align 8
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store i32 -1, i32* %19, align 4
  store float 0.000000e+00, float* %22, align 4
  %32 = load i32*, i32** %14, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %40, label %34

34:                                               ; preds = %7
  %35 = load i32, i32* %13, align 4
  %36 = load i32, i32* @WORD_SIMILARITY_STRICT, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  %39 = xor i1 %38, true
  br label %40

40:                                               ; preds = %34, %7
  %41 = phi i1 [ true, %7 ], [ %39, %34 ]
  %42 = zext i1 %41 to i32
  %43 = call i32 @Assert(i32 %42)
  %44 = load i32, i32* %13, align 4
  %45 = load i32, i32* @WORD_SIMILARITY_STRICT, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %40
  %49 = load double, double* @strict_word_similarity_threshold, align 8
  br label %52

50:                                               ; preds = %40
  %51 = load double, double* @word_similarity_threshold, align 8
  br label %52

52:                                               ; preds = %50, %48
  %53 = phi double [ %49, %48 ], [ %51, %50 ]
  store double %53, double* %23, align 8
  %54 = load i32, i32* %13, align 4
  %55 = load i32, i32* @WORD_SIMILARITY_STRICT, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  %58 = zext i1 %57 to i64
  %59 = select i1 %57, i32 0, i32 -1
  store i32 %59, i32* %20, align 4
  %60 = load i32, i32* %12, align 4
  %61 = sext i32 %60 to i64
  %62 = mul i64 4, %61
  %63 = trunc i64 %62 to i32
  %64 = call i64 @palloc(i32 %63)
  %65 = inttoptr i64 %64 to i32*
  store i32* %65, i32** %15, align 8
  %66 = load i32*, i32** %15, align 8
  %67 = load i32, i32* %12, align 4
  %68 = sext i32 %67 to i64
  %69 = mul i64 4, %68
  %70 = trunc i64 %69 to i32
  %71 = call i32 @memset(i32* %66, i32 -1, i32 %70)
  store i32 0, i32* %16, align 4
  br label %72

72:                                               ; preds = %270, %52
  %73 = load i32, i32* %16, align 4
  %74 = load i32, i32* %11, align 4
  %75 = icmp slt i32 %73, %74
  br i1 %75, label %76, label %273

76:                                               ; preds = %72
  %77 = load i32*, i32** %8, align 8
  %78 = load i32, i32* %16, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  %81 = load i32, i32* %80, align 4
  store i32 %81, i32* %24, align 4
  %82 = load i32, i32* %20, align 4
  %83 = icmp sge i32 %82, 0
  br i1 %83, label %91, label %84

84:                                               ; preds = %76
  %85 = load i32*, i32** %9, align 8
  %86 = load i32, i32* %24, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %117

91:                                               ; preds = %84, %76
  %92 = load i32*, i32** %15, align 8
  %93 = load i32, i32* %24, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = icmp slt i32 %96, 0
  br i1 %97, label %98, label %111

98:                                               ; preds = %91
  %99 = load i32, i32* %17, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %17, align 4
  %101 = load i32*, i32** %9, align 8
  %102 = load i32, i32* %24, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %101, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %98
  %108 = load i32, i32* %18, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %18, align 4
  br label %110

110:                                              ; preds = %107, %98
  br label %111

111:                                              ; preds = %110, %91
  %112 = load i32, i32* %16, align 4
  %113 = load i32*, i32** %15, align 8
  %114 = load i32, i32* %24, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %113, i64 %115
  store i32 %112, i32* %116, align 4
  br label %117

117:                                              ; preds = %111, %84
  %118 = load i32, i32* %13, align 4
  %119 = load i32, i32* @WORD_SIMILARITY_STRICT, align 4
  %120 = and i32 %118, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %131

122:                                              ; preds = %117
  %123 = load i32*, i32** %14, align 8
  %124 = load i32, i32* %16, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32, i32* %123, i64 %125
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* @TRGM_BOUND_RIGHT, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %138, label %269

131:                                              ; preds = %117
  %132 = load i32*, i32** %9, align 8
  %133 = load i32, i32* %24, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i32, i32* %132, i64 %134
  %136 = load i32, i32* %135, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %269

138:                                              ; preds = %131, %122
  %139 = load i32, i32* %16, align 4
  store i32 %139, i32* %19, align 4
  %140 = load i32, i32* %20, align 4
  %141 = icmp eq i32 %140, -1
  br i1 %141, label %142, label %144

142:                                              ; preds = %138
  %143 = load i32, i32* %16, align 4
  store i32 %143, i32* %20, align 4
  store i32 1, i32* %17, align 4
  br label %144

144:                                              ; preds = %142, %138
  %145 = load i32, i32* %18, align 4
  %146 = load i32, i32* %10, align 4
  %147 = load i32, i32* %17, align 4
  %148 = call float @CALCSML(i32 %145, i32 %146, i32 %147)
  store float %148, float* %21, align 4
  %149 = load i32, i32* %18, align 4
  store i32 %149, i32* %28, align 4
  %150 = load i32, i32* %17, align 4
  store i32 %150, i32* %26, align 4
  %151 = load i32, i32* %20, align 4
  store i32 %151, i32* %25, align 4
  %152 = load i32, i32* %20, align 4
  store i32 %152, i32* %27, align 4
  br label %153

153:                                              ; preds = %223, %144
  %154 = load i32, i32* %27, align 4
  %155 = load i32, i32* %19, align 4
  %156 = icmp sle i32 %154, %155
  br i1 %156, label %157, label %226

157:                                              ; preds = %153
  %158 = load i32, i32* %13, align 4
  %159 = load i32, i32* @WORD_SIMILARITY_STRICT, align 4
  %160 = and i32 %158, %159
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %171

162:                                              ; preds = %157
  %163 = load i32*, i32** %14, align 8
  %164 = load i32, i32* %27, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i32, i32* %163, i64 %165
  %167 = load i32, i32* %166, align 4
  %168 = load i32, i32* @TRGM_BOUND_LEFT, align 4
  %169 = and i32 %167, %168
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %196

171:                                              ; preds = %162, %157
  %172 = load i32, i32* %28, align 4
  %173 = load i32, i32* %10, align 4
  %174 = load i32, i32* %26, align 4
  %175 = call float @CALCSML(i32 %172, i32 %173, i32 %174)
  store float %175, float* %29, align 4
  %176 = load float, float* %29, align 4
  %177 = load float, float* %21, align 4
  %178 = fcmp ogt float %176, %177
  br i1 %178, label %179, label %184

179:                                              ; preds = %171
  %180 = load float, float* %29, align 4
  store float %180, float* %21, align 4
  %181 = load i32, i32* %26, align 4
  store i32 %181, i32* %17, align 4
  %182 = load i32, i32* %27, align 4
  store i32 %182, i32* %20, align 4
  %183 = load i32, i32* %28, align 4
  store i32 %183, i32* %18, align 4
  br label %184

184:                                              ; preds = %179, %171
  %185 = load i32, i32* %13, align 4
  %186 = load i32, i32* @WORD_SIMILARITY_CHECK_ONLY, align 4
  %187 = and i32 %185, %186
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %195

189:                                              ; preds = %184
  %190 = load float, float* %21, align 4
  %191 = fpext float %190 to double
  %192 = load double, double* %23, align 8
  %193 = fcmp oge double %191, %192
  br i1 %193, label %194, label %195

194:                                              ; preds = %189
  br label %226

195:                                              ; preds = %189, %184
  br label %196

196:                                              ; preds = %195, %162
  %197 = load i32*, i32** %8, align 8
  %198 = load i32, i32* %27, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds i32, i32* %197, i64 %199
  %201 = load i32, i32* %200, align 4
  store i32 %201, i32* %30, align 4
  %202 = load i32*, i32** %15, align 8
  %203 = load i32, i32* %30, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds i32, i32* %202, i64 %204
  %206 = load i32, i32* %205, align 4
  %207 = load i32, i32* %27, align 4
  %208 = icmp eq i32 %206, %207
  br i1 %208, label %209, label %222

209:                                              ; preds = %196
  %210 = load i32, i32* %26, align 4
  %211 = add nsw i32 %210, -1
  store i32 %211, i32* %26, align 4
  %212 = load i32*, i32** %9, align 8
  %213 = load i32, i32* %30, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds i32, i32* %212, i64 %214
  %216 = load i32, i32* %215, align 4
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %221

218:                                              ; preds = %209
  %219 = load i32, i32* %28, align 4
  %220 = add nsw i32 %219, -1
  store i32 %220, i32* %28, align 4
  br label %221

221:                                              ; preds = %218, %209
  br label %222

222:                                              ; preds = %221, %196
  br label %223

223:                                              ; preds = %222
  %224 = load i32, i32* %27, align 4
  %225 = add nsw i32 %224, 1
  store i32 %225, i32* %27, align 4
  br label %153

226:                                              ; preds = %194, %153
  %227 = load float, float* %22, align 4
  %228 = load float, float* %21, align 4
  %229 = call float @Max(float %227, float %228)
  store float %229, float* %22, align 4
  %230 = load i32, i32* %13, align 4
  %231 = load i32, i32* @WORD_SIMILARITY_CHECK_ONLY, align 4
  %232 = and i32 %230, %231
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %234, label %240

234:                                              ; preds = %226
  %235 = load float, float* %22, align 4
  %236 = fpext float %235 to double
  %237 = load double, double* %23, align 8
  %238 = fcmp oge double %236, %237
  br i1 %238, label %239, label %240

239:                                              ; preds = %234
  br label %273

240:                                              ; preds = %234, %226
  %241 = load i32, i32* %25, align 4
  store i32 %241, i32* %27, align 4
  br label %242

242:                                              ; preds = %265, %240
  %243 = load i32, i32* %27, align 4
  %244 = load i32, i32* %20, align 4
  %245 = icmp slt i32 %243, %244
  br i1 %245, label %246, label %268

246:                                              ; preds = %242
  %247 = load i32*, i32** %8, align 8
  %248 = load i32, i32* %27, align 4
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds i32, i32* %247, i64 %249
  %251 = load i32, i32* %250, align 4
  store i32 %251, i32* %31, align 4
  %252 = load i32*, i32** %15, align 8
  %253 = load i32, i32* %31, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds i32, i32* %252, i64 %254
  %256 = load i32, i32* %255, align 4
  %257 = load i32, i32* %27, align 4
  %258 = icmp eq i32 %256, %257
  br i1 %258, label %259, label %264

259:                                              ; preds = %246
  %260 = load i32*, i32** %15, align 8
  %261 = load i32, i32* %31, align 4
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds i32, i32* %260, i64 %262
  store i32 -1, i32* %263, align 4
  br label %264

264:                                              ; preds = %259, %246
  br label %265

265:                                              ; preds = %264
  %266 = load i32, i32* %27, align 4
  %267 = add nsw i32 %266, 1
  store i32 %267, i32* %27, align 4
  br label %242

268:                                              ; preds = %242
  br label %269

269:                                              ; preds = %268, %131, %122
  br label %270

270:                                              ; preds = %269
  %271 = load i32, i32* %16, align 4
  %272 = add nsw i32 %271, 1
  store i32 %272, i32* %16, align 4
  br label %72

273:                                              ; preds = %239, %72
  %274 = load i32*, i32** %15, align 8
  %275 = call i32 @pfree(i32* %274)
  %276 = load float, float* %22, align 4
  ret float %276
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i64 @palloc(i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local float @CALCSML(i32, i32, i32) #1

declare dso_local float @Max(float, float) #1

declare dso_local i32 @pfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
