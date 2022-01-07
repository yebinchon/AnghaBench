; ModuleID = '/home/carl/AnghaBench/nuklear/demo/x11_rawfb/extr_nuklear_rawfb.h_nk_rawfb_stroke_arc.c'
source_filename = "/home/carl/AnghaBench/nuklear/demo/x11_rawfb/extr_nuklear_rawfb.h_nk_rawfb_stroke_arc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rawfb_context = type { i32 }
%struct.nk_color = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rawfb_context*, i16, i16, i16, i16, i16, i16, i32)* @nk_rawfb_stroke_arc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nk_rawfb_stroke_arc(%struct.rawfb_context* %0, i16 signext %1, i16 signext %2, i16 signext %3, i16 signext %4, i16 signext %5, i16 signext %6, i32 %7) #0 {
  %9 = alloca %struct.nk_color, align 4
  %10 = alloca %struct.rawfb_context*, align 8
  %11 = alloca i16, align 2
  %12 = alloca i16, align 2
  %13 = alloca i16, align 2
  %14 = alloca i16, align 2
  %15 = alloca i16, align 2
  %16 = alloca i16, align 2
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = getelementptr inbounds %struct.nk_color, %struct.nk_color* %9, i32 0, i32 0
  store i32 %7, i32* %24, align 4
  store %struct.rawfb_context* %0, %struct.rawfb_context** %10, align 8
  store i16 %1, i16* %11, align 2
  store i16 %2, i16* %12, align 2
  store i16 %3, i16* %13, align 2
  store i16 %4, i16* %14, align 2
  store i16 %5, i16* %15, align 2
  store i16 %6, i16* %16, align 2
  %25 = load i16, i16* %13, align 2
  %26 = sext i16 %25 to i32
  %27 = load i16, i16* %13, align 2
  %28 = sext i16 %27 to i32
  %29 = mul nsw i32 %26, %28
  %30 = sdiv i32 %29, 4
  store i32 %30, i32* %17, align 4
  %31 = load i16, i16* %14, align 2
  %32 = sext i16 %31 to i32
  %33 = load i16, i16* %14, align 2
  %34 = sext i16 %33 to i32
  %35 = mul nsw i32 %32, %34
  %36 = sdiv i32 %35, 4
  store i32 %36, i32* %18, align 4
  %37 = load i32, i32* %17, align 4
  %38 = mul nsw i32 4, %37
  store i32 %38, i32* %19, align 4
  %39 = load i32, i32* %18, align 4
  %40 = mul nsw i32 4, %39
  store i32 %40, i32* %20, align 4
  %41 = load i16, i16* %15, align 2
  %42 = sext i16 %41 to i32
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %57

44:                                               ; preds = %8
  %45 = load i16, i16* %15, align 2
  %46 = sext i16 %45 to i32
  %47 = icmp ne i32 %46, 90
  br i1 %47, label %48, label %57

48:                                               ; preds = %44
  %49 = load i16, i16* %15, align 2
  %50 = sext i16 %49 to i32
  %51 = icmp ne i32 %50, 180
  br i1 %51, label %52, label %57

52:                                               ; preds = %48
  %53 = load i16, i16* %15, align 2
  %54 = sext i16 %53 to i32
  %55 = icmp ne i32 %54, 270
  br i1 %55, label %56, label %57

56:                                               ; preds = %52
  br label %332

57:                                               ; preds = %52, %48, %44, %8
  %58 = load i16, i16* %13, align 2
  %59 = sext i16 %58 to i32
  %60 = icmp slt i32 %59, 1
  br i1 %60, label %65, label %61

61:                                               ; preds = %57
  %62 = load i16, i16* %14, align 2
  %63 = sext i16 %62 to i32
  %64 = icmp slt i32 %63, 1
  br i1 %64, label %65, label %66

65:                                               ; preds = %61, %57
  br label %332

66:                                               ; preds = %61
  %67 = load i16, i16* %14, align 2
  %68 = sext i16 %67 to i32
  %69 = add nsw i32 %68, 1
  %70 = sdiv i32 %69, 2
  %71 = trunc i32 %70 to i16
  store i16 %71, i16* %14, align 2
  %72 = load i16, i16* %13, align 2
  %73 = sext i16 %72 to i32
  %74 = add nsw i32 %73, 1
  %75 = sdiv i32 %74, 2
  %76 = trunc i32 %75 to i16
  store i16 %76, i16* %13, align 2
  %77 = load i16, i16* %13, align 2
  %78 = sext i16 %77 to i32
  %79 = load i16, i16* %11, align 2
  %80 = sext i16 %79 to i32
  %81 = add nsw i32 %80, %78
  %82 = trunc i32 %81 to i16
  store i16 %82, i16* %11, align 2
  %83 = load i16, i16* %14, align 2
  %84 = sext i16 %83 to i32
  %85 = load i16, i16* %12, align 2
  %86 = sext i16 %85 to i32
  %87 = add nsw i32 %86, %84
  %88 = trunc i32 %87 to i16
  store i16 %88, i16* %12, align 2
  store i32 0, i32* %21, align 4
  %89 = load i16, i16* %14, align 2
  %90 = sext i16 %89 to i32
  store i32 %90, i32* %22, align 4
  %91 = load i32, i32* %18, align 4
  %92 = mul nsw i32 2, %91
  %93 = load i32, i32* %17, align 4
  %94 = load i16, i16* %14, align 2
  %95 = sext i16 %94 to i32
  %96 = mul nsw i32 2, %95
  %97 = sub nsw i32 1, %96
  %98 = mul nsw i32 %93, %97
  %99 = add nsw i32 %92, %98
  store i32 %99, i32* %23, align 4
  br label %100

100:                                              ; preds = %207, %66
  %101 = load i32, i32* %18, align 4
  %102 = load i32, i32* %21, align 4
  %103 = mul nsw i32 %101, %102
  %104 = load i32, i32* %17, align 4
  %105 = load i32, i32* %22, align 4
  %106 = mul nsw i32 %104, %105
  %107 = icmp sle i32 %103, %106
  br i1 %107, label %108, label %210

108:                                              ; preds = %100
  %109 = load i16, i16* %15, align 2
  %110 = sext i16 %109 to i32
  %111 = icmp eq i32 %110, 180
  br i1 %111, label %112, label %127

112:                                              ; preds = %108
  %113 = load %struct.rawfb_context*, %struct.rawfb_context** %10, align 8
  %114 = load i16, i16* %11, align 2
  %115 = sext i16 %114 to i32
  %116 = load i32, i32* %21, align 4
  %117 = add nsw i32 %115, %116
  %118 = trunc i32 %117 to i16
  %119 = load i16, i16* %12, align 2
  %120 = sext i16 %119 to i32
  %121 = load i32, i32* %22, align 4
  %122 = add nsw i32 %120, %121
  %123 = trunc i32 %122 to i16
  %124 = getelementptr inbounds %struct.nk_color, %struct.nk_color* %9, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @nk_rawfb_ctx_setpixel(%struct.rawfb_context* %113, i16 signext %118, i16 signext %123, i32 %125)
  br label %187

127:                                              ; preds = %108
  %128 = load i16, i16* %15, align 2
  %129 = sext i16 %128 to i32
  %130 = icmp eq i32 %129, 270
  br i1 %130, label %131, label %146

131:                                              ; preds = %127
  %132 = load %struct.rawfb_context*, %struct.rawfb_context** %10, align 8
  %133 = load i16, i16* %11, align 2
  %134 = sext i16 %133 to i32
  %135 = load i32, i32* %21, align 4
  %136 = sub nsw i32 %134, %135
  %137 = trunc i32 %136 to i16
  %138 = load i16, i16* %12, align 2
  %139 = sext i16 %138 to i32
  %140 = load i32, i32* %22, align 4
  %141 = add nsw i32 %139, %140
  %142 = trunc i32 %141 to i16
  %143 = getelementptr inbounds %struct.nk_color, %struct.nk_color* %9, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @nk_rawfb_ctx_setpixel(%struct.rawfb_context* %132, i16 signext %137, i16 signext %142, i32 %144)
  br label %186

146:                                              ; preds = %127
  %147 = load i16, i16* %15, align 2
  %148 = sext i16 %147 to i32
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %150, label %165

150:                                              ; preds = %146
  %151 = load %struct.rawfb_context*, %struct.rawfb_context** %10, align 8
  %152 = load i16, i16* %11, align 2
  %153 = sext i16 %152 to i32
  %154 = load i32, i32* %21, align 4
  %155 = add nsw i32 %153, %154
  %156 = trunc i32 %155 to i16
  %157 = load i16, i16* %12, align 2
  %158 = sext i16 %157 to i32
  %159 = load i32, i32* %22, align 4
  %160 = sub nsw i32 %158, %159
  %161 = trunc i32 %160 to i16
  %162 = getelementptr inbounds %struct.nk_color, %struct.nk_color* %9, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = call i32 @nk_rawfb_ctx_setpixel(%struct.rawfb_context* %151, i16 signext %156, i16 signext %161, i32 %163)
  br label %185

165:                                              ; preds = %146
  %166 = load i16, i16* %15, align 2
  %167 = sext i16 %166 to i32
  %168 = icmp eq i32 %167, 90
  br i1 %168, label %169, label %184

169:                                              ; preds = %165
  %170 = load %struct.rawfb_context*, %struct.rawfb_context** %10, align 8
  %171 = load i16, i16* %11, align 2
  %172 = sext i16 %171 to i32
  %173 = load i32, i32* %21, align 4
  %174 = sub nsw i32 %172, %173
  %175 = trunc i32 %174 to i16
  %176 = load i16, i16* %12, align 2
  %177 = sext i16 %176 to i32
  %178 = load i32, i32* %22, align 4
  %179 = sub nsw i32 %177, %178
  %180 = trunc i32 %179 to i16
  %181 = getelementptr inbounds %struct.nk_color, %struct.nk_color* %9, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  %183 = call i32 @nk_rawfb_ctx_setpixel(%struct.rawfb_context* %170, i16 signext %175, i16 signext %180, i32 %182)
  br label %184

184:                                              ; preds = %169, %165
  br label %185

185:                                              ; preds = %184, %150
  br label %186

186:                                              ; preds = %185, %131
  br label %187

187:                                              ; preds = %186, %112
  %188 = load i32, i32* %23, align 4
  %189 = icmp sge i32 %188, 0
  br i1 %189, label %190, label %199

190:                                              ; preds = %187
  %191 = load i32, i32* %19, align 4
  %192 = load i32, i32* %22, align 4
  %193 = sub nsw i32 1, %192
  %194 = mul nsw i32 %191, %193
  %195 = load i32, i32* %23, align 4
  %196 = add nsw i32 %195, %194
  store i32 %196, i32* %23, align 4
  %197 = load i32, i32* %22, align 4
  %198 = add nsw i32 %197, -1
  store i32 %198, i32* %22, align 4
  br label %199

199:                                              ; preds = %190, %187
  %200 = load i32, i32* %18, align 4
  %201 = load i32, i32* %21, align 4
  %202 = mul nsw i32 4, %201
  %203 = add nsw i32 %202, 6
  %204 = mul nsw i32 %200, %203
  %205 = load i32, i32* %23, align 4
  %206 = add nsw i32 %205, %204
  store i32 %206, i32* %23, align 4
  br label %207

207:                                              ; preds = %199
  %208 = load i32, i32* %21, align 4
  %209 = add nsw i32 %208, 1
  store i32 %209, i32* %21, align 4
  br label %100

210:                                              ; preds = %100
  %211 = load i16, i16* %13, align 2
  %212 = sext i16 %211 to i32
  store i32 %212, i32* %21, align 4
  store i32 0, i32* %22, align 4
  %213 = load i32, i32* %17, align 4
  %214 = mul nsw i32 2, %213
  %215 = load i32, i32* %18, align 4
  %216 = load i16, i16* %13, align 2
  %217 = sext i16 %216 to i32
  %218 = mul nsw i32 2, %217
  %219 = sub nsw i32 1, %218
  %220 = mul nsw i32 %215, %219
  %221 = add nsw i32 %214, %220
  store i32 %221, i32* %23, align 4
  br label %222

222:                                              ; preds = %329, %210
  %223 = load i32, i32* %17, align 4
  %224 = load i32, i32* %22, align 4
  %225 = mul nsw i32 %223, %224
  %226 = load i32, i32* %18, align 4
  %227 = load i32, i32* %21, align 4
  %228 = mul nsw i32 %226, %227
  %229 = icmp sle i32 %225, %228
  br i1 %229, label %230, label %332

230:                                              ; preds = %222
  %231 = load i16, i16* %15, align 2
  %232 = sext i16 %231 to i32
  %233 = icmp eq i32 %232, 180
  br i1 %233, label %234, label %249

234:                                              ; preds = %230
  %235 = load %struct.rawfb_context*, %struct.rawfb_context** %10, align 8
  %236 = load i16, i16* %11, align 2
  %237 = sext i16 %236 to i32
  %238 = load i32, i32* %21, align 4
  %239 = add nsw i32 %237, %238
  %240 = trunc i32 %239 to i16
  %241 = load i16, i16* %12, align 2
  %242 = sext i16 %241 to i32
  %243 = load i32, i32* %22, align 4
  %244 = add nsw i32 %242, %243
  %245 = trunc i32 %244 to i16
  %246 = getelementptr inbounds %struct.nk_color, %struct.nk_color* %9, i32 0, i32 0
  %247 = load i32, i32* %246, align 4
  %248 = call i32 @nk_rawfb_ctx_setpixel(%struct.rawfb_context* %235, i16 signext %240, i16 signext %245, i32 %247)
  br label %309

249:                                              ; preds = %230
  %250 = load i16, i16* %15, align 2
  %251 = sext i16 %250 to i32
  %252 = icmp eq i32 %251, 270
  br i1 %252, label %253, label %268

253:                                              ; preds = %249
  %254 = load %struct.rawfb_context*, %struct.rawfb_context** %10, align 8
  %255 = load i16, i16* %11, align 2
  %256 = sext i16 %255 to i32
  %257 = load i32, i32* %21, align 4
  %258 = sub nsw i32 %256, %257
  %259 = trunc i32 %258 to i16
  %260 = load i16, i16* %12, align 2
  %261 = sext i16 %260 to i32
  %262 = load i32, i32* %22, align 4
  %263 = add nsw i32 %261, %262
  %264 = trunc i32 %263 to i16
  %265 = getelementptr inbounds %struct.nk_color, %struct.nk_color* %9, i32 0, i32 0
  %266 = load i32, i32* %265, align 4
  %267 = call i32 @nk_rawfb_ctx_setpixel(%struct.rawfb_context* %254, i16 signext %259, i16 signext %264, i32 %266)
  br label %308

268:                                              ; preds = %249
  %269 = load i16, i16* %15, align 2
  %270 = sext i16 %269 to i32
  %271 = icmp eq i32 %270, 0
  br i1 %271, label %272, label %287

272:                                              ; preds = %268
  %273 = load %struct.rawfb_context*, %struct.rawfb_context** %10, align 8
  %274 = load i16, i16* %11, align 2
  %275 = sext i16 %274 to i32
  %276 = load i32, i32* %21, align 4
  %277 = add nsw i32 %275, %276
  %278 = trunc i32 %277 to i16
  %279 = load i16, i16* %12, align 2
  %280 = sext i16 %279 to i32
  %281 = load i32, i32* %22, align 4
  %282 = sub nsw i32 %280, %281
  %283 = trunc i32 %282 to i16
  %284 = getelementptr inbounds %struct.nk_color, %struct.nk_color* %9, i32 0, i32 0
  %285 = load i32, i32* %284, align 4
  %286 = call i32 @nk_rawfb_ctx_setpixel(%struct.rawfb_context* %273, i16 signext %278, i16 signext %283, i32 %285)
  br label %307

287:                                              ; preds = %268
  %288 = load i16, i16* %15, align 2
  %289 = sext i16 %288 to i32
  %290 = icmp eq i32 %289, 90
  br i1 %290, label %291, label %306

291:                                              ; preds = %287
  %292 = load %struct.rawfb_context*, %struct.rawfb_context** %10, align 8
  %293 = load i16, i16* %11, align 2
  %294 = sext i16 %293 to i32
  %295 = load i32, i32* %21, align 4
  %296 = sub nsw i32 %294, %295
  %297 = trunc i32 %296 to i16
  %298 = load i16, i16* %12, align 2
  %299 = sext i16 %298 to i32
  %300 = load i32, i32* %22, align 4
  %301 = sub nsw i32 %299, %300
  %302 = trunc i32 %301 to i16
  %303 = getelementptr inbounds %struct.nk_color, %struct.nk_color* %9, i32 0, i32 0
  %304 = load i32, i32* %303, align 4
  %305 = call i32 @nk_rawfb_ctx_setpixel(%struct.rawfb_context* %292, i16 signext %297, i16 signext %302, i32 %304)
  br label %306

306:                                              ; preds = %291, %287
  br label %307

307:                                              ; preds = %306, %272
  br label %308

308:                                              ; preds = %307, %253
  br label %309

309:                                              ; preds = %308, %234
  %310 = load i32, i32* %23, align 4
  %311 = icmp sge i32 %310, 0
  br i1 %311, label %312, label %321

312:                                              ; preds = %309
  %313 = load i32, i32* %20, align 4
  %314 = load i32, i32* %21, align 4
  %315 = sub nsw i32 1, %314
  %316 = mul nsw i32 %313, %315
  %317 = load i32, i32* %23, align 4
  %318 = add nsw i32 %317, %316
  store i32 %318, i32* %23, align 4
  %319 = load i32, i32* %21, align 4
  %320 = add nsw i32 %319, -1
  store i32 %320, i32* %21, align 4
  br label %321

321:                                              ; preds = %312, %309
  %322 = load i32, i32* %17, align 4
  %323 = load i32, i32* %22, align 4
  %324 = mul nsw i32 4, %323
  %325 = add nsw i32 %324, 6
  %326 = mul nsw i32 %322, %325
  %327 = load i32, i32* %23, align 4
  %328 = add nsw i32 %327, %326
  store i32 %328, i32* %23, align 4
  br label %329

329:                                              ; preds = %321
  %330 = load i32, i32* %22, align 4
  %331 = add nsw i32 %330, 1
  store i32 %331, i32* %22, align 4
  br label %222

332:                                              ; preds = %56, %65, %222
  ret void
}

declare dso_local i32 @nk_rawfb_ctx_setpixel(%struct.rawfb_context*, i16 signext, i16 signext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
