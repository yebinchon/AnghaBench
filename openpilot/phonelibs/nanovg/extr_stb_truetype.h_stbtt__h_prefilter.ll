; ModuleID = '/home/carl/AnghaBench/openpilot/phonelibs/nanovg/extr_stb_truetype.h_stbtt__h_prefilter.c'
source_filename = "/home/carl/AnghaBench/openpilot/phonelibs/nanovg/extr_stb_truetype.h_stbtt__h_prefilter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@STBTT_MAX_OVERSAMPLE = common dso_local global i32 0, align 4
@STBTT__OVER_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i32, i32, i32)* @stbtt__h_prefilter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stbtt__h_prefilter(i8* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %17 = load i32, i32* @STBTT_MAX_OVERSAMPLE, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %11, align 8
  %20 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %12, align 8
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* %10, align 4
  %23 = sub i32 %21, %22
  store i32 %23, i32* %13, align 4
  %24 = load i32, i32* @STBTT_MAX_OVERSAMPLE, align 4
  %25 = call i32 @STBTT_memset(i8* %20, i32 0, i32 %24)
  store i32 0, i32* %14, align 4
  br label %26

26:                                               ; preds = %300, %5
  %27 = load i32, i32* %14, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %303

30:                                               ; preds = %26
  %31 = load i32, i32* %10, align 4
  %32 = call i32 @STBTT_memset(i8* %20, i32 0, i32 %31)
  store i32 0, i32* %16, align 4
  %33 = load i32, i32* %10, align 4
  switch i32 %33, label %214 [
    i32 2, label %34
    i32 3, label %79
    i32 4, label %124
    i32 5, label %169
  ]

34:                                               ; preds = %30
  store i32 0, i32* %15, align 4
  br label %35

35:                                               ; preds = %75, %34
  %36 = load i32, i32* %15, align 4
  %37 = load i32, i32* %13, align 4
  %38 = icmp sle i32 %36, %37
  br i1 %38, label %39, label %78

39:                                               ; preds = %35
  %40 = load i8*, i8** %6, align 8
  %41 = load i32, i32* %15, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8, i8* %40, i64 %42
  %44 = load i8, i8* %43, align 1
  %45 = zext i8 %44 to i32
  %46 = load i32, i32* %15, align 4
  %47 = load i32, i32* @STBTT__OVER_MASK, align 4
  %48 = and i32 %46, %47
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8, i8* %20, i64 %49
  %51 = load i8, i8* %50, align 1
  %52 = zext i8 %51 to i32
  %53 = sub nsw i32 %45, %52
  %54 = load i32, i32* %16, align 4
  %55 = add i32 %54, %53
  store i32 %55, i32* %16, align 4
  %56 = load i8*, i8** %6, align 8
  %57 = load i32, i32* %15, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i8, i8* %56, i64 %58
  %60 = load i8, i8* %59, align 1
  %61 = load i32, i32* %15, align 4
  %62 = load i32, i32* %10, align 4
  %63 = add i32 %61, %62
  %64 = load i32, i32* @STBTT__OVER_MASK, align 4
  %65 = and i32 %63, %64
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds i8, i8* %20, i64 %66
  store i8 %60, i8* %67, align 1
  %68 = load i32, i32* %16, align 4
  %69 = udiv i32 %68, 2
  %70 = trunc i32 %69 to i8
  %71 = load i8*, i8** %6, align 8
  %72 = load i32, i32* %15, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i8, i8* %71, i64 %73
  store i8 %70, i8* %74, align 1
  br label %75

75:                                               ; preds = %39
  %76 = load i32, i32* %15, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %15, align 4
  br label %35

78:                                               ; preds = %35
  br label %260

79:                                               ; preds = %30
  store i32 0, i32* %15, align 4
  br label %80

80:                                               ; preds = %120, %79
  %81 = load i32, i32* %15, align 4
  %82 = load i32, i32* %13, align 4
  %83 = icmp sle i32 %81, %82
  br i1 %83, label %84, label %123

84:                                               ; preds = %80
  %85 = load i8*, i8** %6, align 8
  %86 = load i32, i32* %15, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i8, i8* %85, i64 %87
  %89 = load i8, i8* %88, align 1
  %90 = zext i8 %89 to i32
  %91 = load i32, i32* %15, align 4
  %92 = load i32, i32* @STBTT__OVER_MASK, align 4
  %93 = and i32 %91, %92
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i8, i8* %20, i64 %94
  %96 = load i8, i8* %95, align 1
  %97 = zext i8 %96 to i32
  %98 = sub nsw i32 %90, %97
  %99 = load i32, i32* %16, align 4
  %100 = add i32 %99, %98
  store i32 %100, i32* %16, align 4
  %101 = load i8*, i8** %6, align 8
  %102 = load i32, i32* %15, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i8, i8* %101, i64 %103
  %105 = load i8, i8* %104, align 1
  %106 = load i32, i32* %15, align 4
  %107 = load i32, i32* %10, align 4
  %108 = add i32 %106, %107
  %109 = load i32, i32* @STBTT__OVER_MASK, align 4
  %110 = and i32 %108, %109
  %111 = zext i32 %110 to i64
  %112 = getelementptr inbounds i8, i8* %20, i64 %111
  store i8 %105, i8* %112, align 1
  %113 = load i32, i32* %16, align 4
  %114 = udiv i32 %113, 3
  %115 = trunc i32 %114 to i8
  %116 = load i8*, i8** %6, align 8
  %117 = load i32, i32* %15, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i8, i8* %116, i64 %118
  store i8 %115, i8* %119, align 1
  br label %120

120:                                              ; preds = %84
  %121 = load i32, i32* %15, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %15, align 4
  br label %80

123:                                              ; preds = %80
  br label %260

124:                                              ; preds = %30
  store i32 0, i32* %15, align 4
  br label %125

125:                                              ; preds = %165, %124
  %126 = load i32, i32* %15, align 4
  %127 = load i32, i32* %13, align 4
  %128 = icmp sle i32 %126, %127
  br i1 %128, label %129, label %168

129:                                              ; preds = %125
  %130 = load i8*, i8** %6, align 8
  %131 = load i32, i32* %15, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i8, i8* %130, i64 %132
  %134 = load i8, i8* %133, align 1
  %135 = zext i8 %134 to i32
  %136 = load i32, i32* %15, align 4
  %137 = load i32, i32* @STBTT__OVER_MASK, align 4
  %138 = and i32 %136, %137
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i8, i8* %20, i64 %139
  %141 = load i8, i8* %140, align 1
  %142 = zext i8 %141 to i32
  %143 = sub nsw i32 %135, %142
  %144 = load i32, i32* %16, align 4
  %145 = add i32 %144, %143
  store i32 %145, i32* %16, align 4
  %146 = load i8*, i8** %6, align 8
  %147 = load i32, i32* %15, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i8, i8* %146, i64 %148
  %150 = load i8, i8* %149, align 1
  %151 = load i32, i32* %15, align 4
  %152 = load i32, i32* %10, align 4
  %153 = add i32 %151, %152
  %154 = load i32, i32* @STBTT__OVER_MASK, align 4
  %155 = and i32 %153, %154
  %156 = zext i32 %155 to i64
  %157 = getelementptr inbounds i8, i8* %20, i64 %156
  store i8 %150, i8* %157, align 1
  %158 = load i32, i32* %16, align 4
  %159 = udiv i32 %158, 4
  %160 = trunc i32 %159 to i8
  %161 = load i8*, i8** %6, align 8
  %162 = load i32, i32* %15, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i8, i8* %161, i64 %163
  store i8 %160, i8* %164, align 1
  br label %165

165:                                              ; preds = %129
  %166 = load i32, i32* %15, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %15, align 4
  br label %125

168:                                              ; preds = %125
  br label %260

169:                                              ; preds = %30
  store i32 0, i32* %15, align 4
  br label %170

170:                                              ; preds = %210, %169
  %171 = load i32, i32* %15, align 4
  %172 = load i32, i32* %13, align 4
  %173 = icmp sle i32 %171, %172
  br i1 %173, label %174, label %213

174:                                              ; preds = %170
  %175 = load i8*, i8** %6, align 8
  %176 = load i32, i32* %15, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i8, i8* %175, i64 %177
  %179 = load i8, i8* %178, align 1
  %180 = zext i8 %179 to i32
  %181 = load i32, i32* %15, align 4
  %182 = load i32, i32* @STBTT__OVER_MASK, align 4
  %183 = and i32 %181, %182
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i8, i8* %20, i64 %184
  %186 = load i8, i8* %185, align 1
  %187 = zext i8 %186 to i32
  %188 = sub nsw i32 %180, %187
  %189 = load i32, i32* %16, align 4
  %190 = add i32 %189, %188
  store i32 %190, i32* %16, align 4
  %191 = load i8*, i8** %6, align 8
  %192 = load i32, i32* %15, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i8, i8* %191, i64 %193
  %195 = load i8, i8* %194, align 1
  %196 = load i32, i32* %15, align 4
  %197 = load i32, i32* %10, align 4
  %198 = add i32 %196, %197
  %199 = load i32, i32* @STBTT__OVER_MASK, align 4
  %200 = and i32 %198, %199
  %201 = zext i32 %200 to i64
  %202 = getelementptr inbounds i8, i8* %20, i64 %201
  store i8 %195, i8* %202, align 1
  %203 = load i32, i32* %16, align 4
  %204 = udiv i32 %203, 5
  %205 = trunc i32 %204 to i8
  %206 = load i8*, i8** %6, align 8
  %207 = load i32, i32* %15, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds i8, i8* %206, i64 %208
  store i8 %205, i8* %209, align 1
  br label %210

210:                                              ; preds = %174
  %211 = load i32, i32* %15, align 4
  %212 = add nsw i32 %211, 1
  store i32 %212, i32* %15, align 4
  br label %170

213:                                              ; preds = %170
  br label %260

214:                                              ; preds = %30
  store i32 0, i32* %15, align 4
  br label %215

215:                                              ; preds = %256, %214
  %216 = load i32, i32* %15, align 4
  %217 = load i32, i32* %13, align 4
  %218 = icmp sle i32 %216, %217
  br i1 %218, label %219, label %259

219:                                              ; preds = %215
  %220 = load i8*, i8** %6, align 8
  %221 = load i32, i32* %15, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds i8, i8* %220, i64 %222
  %224 = load i8, i8* %223, align 1
  %225 = zext i8 %224 to i32
  %226 = load i32, i32* %15, align 4
  %227 = load i32, i32* @STBTT__OVER_MASK, align 4
  %228 = and i32 %226, %227
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds i8, i8* %20, i64 %229
  %231 = load i8, i8* %230, align 1
  %232 = zext i8 %231 to i32
  %233 = sub nsw i32 %225, %232
  %234 = load i32, i32* %16, align 4
  %235 = add i32 %234, %233
  store i32 %235, i32* %16, align 4
  %236 = load i8*, i8** %6, align 8
  %237 = load i32, i32* %15, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds i8, i8* %236, i64 %238
  %240 = load i8, i8* %239, align 1
  %241 = load i32, i32* %15, align 4
  %242 = load i32, i32* %10, align 4
  %243 = add i32 %241, %242
  %244 = load i32, i32* @STBTT__OVER_MASK, align 4
  %245 = and i32 %243, %244
  %246 = zext i32 %245 to i64
  %247 = getelementptr inbounds i8, i8* %20, i64 %246
  store i8 %240, i8* %247, align 1
  %248 = load i32, i32* %16, align 4
  %249 = load i32, i32* %10, align 4
  %250 = udiv i32 %248, %249
  %251 = trunc i32 %250 to i8
  %252 = load i8*, i8** %6, align 8
  %253 = load i32, i32* %15, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds i8, i8* %252, i64 %254
  store i8 %251, i8* %255, align 1
  br label %256

256:                                              ; preds = %219
  %257 = load i32, i32* %15, align 4
  %258 = add nsw i32 %257, 1
  store i32 %258, i32* %15, align 4
  br label %215

259:                                              ; preds = %215
  br label %260

260:                                              ; preds = %259, %213, %168, %123, %78
  br label %261

261:                                              ; preds = %292, %260
  %262 = load i32, i32* %15, align 4
  %263 = load i32, i32* %7, align 4
  %264 = icmp slt i32 %262, %263
  br i1 %264, label %265, label %295

265:                                              ; preds = %261
  %266 = load i8*, i8** %6, align 8
  %267 = load i32, i32* %15, align 4
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds i8, i8* %266, i64 %268
  %270 = load i8, i8* %269, align 1
  %271 = zext i8 %270 to i32
  %272 = icmp eq i32 %271, 0
  %273 = zext i1 %272 to i32
  %274 = call i32 @STBTT_assert(i32 %273)
  %275 = load i32, i32* %15, align 4
  %276 = load i32, i32* @STBTT__OVER_MASK, align 4
  %277 = and i32 %275, %276
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds i8, i8* %20, i64 %278
  %280 = load i8, i8* %279, align 1
  %281 = zext i8 %280 to i32
  %282 = load i32, i32* %16, align 4
  %283 = sub i32 %282, %281
  store i32 %283, i32* %16, align 4
  %284 = load i32, i32* %16, align 4
  %285 = load i32, i32* %10, align 4
  %286 = udiv i32 %284, %285
  %287 = trunc i32 %286 to i8
  %288 = load i8*, i8** %6, align 8
  %289 = load i32, i32* %15, align 4
  %290 = sext i32 %289 to i64
  %291 = getelementptr inbounds i8, i8* %288, i64 %290
  store i8 %287, i8* %291, align 1
  br label %292

292:                                              ; preds = %265
  %293 = load i32, i32* %15, align 4
  %294 = add nsw i32 %293, 1
  store i32 %294, i32* %15, align 4
  br label %261

295:                                              ; preds = %261
  %296 = load i32, i32* %9, align 4
  %297 = load i8*, i8** %6, align 8
  %298 = sext i32 %296 to i64
  %299 = getelementptr inbounds i8, i8* %297, i64 %298
  store i8* %299, i8** %6, align 8
  br label %300

300:                                              ; preds = %295
  %301 = load i32, i32* %14, align 4
  %302 = add nsw i32 %301, 1
  store i32 %302, i32* %14, align 4
  br label %26

303:                                              ; preds = %26
  %304 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %304)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @STBTT_memset(i8*, i32, i32) #2

declare dso_local i32 @STBTT_assert(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
