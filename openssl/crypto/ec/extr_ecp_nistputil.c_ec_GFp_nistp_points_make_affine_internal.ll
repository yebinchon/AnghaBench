; ModuleID = '/home/carl/AnghaBench/openssl/crypto/ec/extr_ecp_nistputil.c_ec_GFp_nistp_points_make_affine_internal.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/ec/extr_ecp_nistputil.c_ec_GFp_nistp_points_make_affine_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ec_GFp_nistp_points_make_affine_internal(i64 %0, i8* %1, i64 %2, i8* %3, void (i8*)* %4, i32 (i8*)* %5, void (i8*, i8*)* %6, void (i8*, i8*)* %7, void (i8*, i8*, i8*)* %8, void (i8*, i8*)* %9, void (i8*, i8*)* %10) #0 {
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca void (i8*)*, align 8
  %17 = alloca i32 (i8*)*, align 8
  %18 = alloca void (i8*, i8*)*, align 8
  %19 = alloca void (i8*, i8*)*, align 8
  %20 = alloca void (i8*, i8*, i8*)*, align 8
  %21 = alloca void (i8*, i8*)*, align 8
  %22 = alloca void (i8*, i8*)*, align 8
  %23 = alloca i32, align 4
  store i64 %0, i64* %12, align 8
  store i8* %1, i8** %13, align 8
  store i64 %2, i64* %14, align 8
  store i8* %3, i8** %15, align 8
  store void (i8*)* %4, void (i8*)** %16, align 8
  store i32 (i8*)* %5, i32 (i8*)** %17, align 8
  store void (i8*, i8*)* %6, void (i8*, i8*)** %18, align 8
  store void (i8*, i8*)* %7, void (i8*, i8*)** %19, align 8
  store void (i8*, i8*, i8*)* %8, void (i8*, i8*, i8*)** %20, align 8
  store void (i8*, i8*)* %9, void (i8*, i8*)** %21, align 8
  store void (i8*, i8*)* %10, void (i8*, i8*)** %22, align 8
  store i32 0, i32* %23, align 4
  %24 = load i32 (i8*)*, i32 (i8*)** %17, align 8
  %25 = load i8*, i8** %13, align 8
  %26 = load i64, i64* %14, align 8
  %27 = mul i64 2, %26
  %28 = getelementptr inbounds i8, i8* %25, i64 %27
  %29 = call i32 %24(i8* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %41, label %31

31:                                               ; preds = %11
  %32 = load void (i8*, i8*)*, void (i8*, i8*)** %18, align 8
  %33 = load i8*, i8** %15, align 8
  %34 = load i64, i64* %14, align 8
  %35 = mul i64 0, %34
  %36 = getelementptr inbounds i8, i8* %33, i64 %35
  %37 = load i8*, i8** %13, align 8
  %38 = load i64, i64* %14, align 8
  %39 = mul i64 2, %38
  %40 = getelementptr inbounds i8, i8* %37, i64 %39
  call void %32(i8* %36, i8* %40)
  br label %47

41:                                               ; preds = %11
  %42 = load void (i8*)*, void (i8*)** %16, align 8
  %43 = load i8*, i8** %15, align 8
  %44 = load i64, i64* %14, align 8
  %45 = mul i64 0, %44
  %46 = getelementptr inbounds i8, i8* %43, i64 %45
  call void %42(i8* %46)
  br label %47

47:                                               ; preds = %41, %31
  store i32 1, i32* %23, align 4
  br label %48

48:                                               ; preds = %104, %47
  %49 = load i32, i32* %23, align 4
  %50 = load i64, i64* %12, align 8
  %51 = trunc i64 %50 to i32
  %52 = icmp slt i32 %49, %51
  br i1 %52, label %53, label %107

53:                                               ; preds = %48
  %54 = load i32 (i8*)*, i32 (i8*)** %17, align 8
  %55 = load i8*, i8** %13, align 8
  %56 = load i32, i32* %23, align 4
  %57 = mul nsw i32 3, %56
  %58 = add nsw i32 %57, 2
  %59 = sext i32 %58 to i64
  %60 = load i64, i64* %14, align 8
  %61 = mul i64 %59, %60
  %62 = getelementptr inbounds i8, i8* %55, i64 %61
  %63 = call i32 %54(i8* %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %88, label %65

65:                                               ; preds = %53
  %66 = load void (i8*, i8*, i8*)*, void (i8*, i8*, i8*)** %20, align 8
  %67 = load i8*, i8** %15, align 8
  %68 = load i32, i32* %23, align 4
  %69 = sext i32 %68 to i64
  %70 = load i64, i64* %14, align 8
  %71 = mul i64 %69, %70
  %72 = getelementptr inbounds i8, i8* %67, i64 %71
  %73 = load i8*, i8** %15, align 8
  %74 = load i32, i32* %23, align 4
  %75 = sub nsw i32 %74, 1
  %76 = sext i32 %75 to i64
  %77 = load i64, i64* %14, align 8
  %78 = mul i64 %76, %77
  %79 = getelementptr inbounds i8, i8* %73, i64 %78
  %80 = load i8*, i8** %13, align 8
  %81 = load i32, i32* %23, align 4
  %82 = mul nsw i32 3, %81
  %83 = add nsw i32 %82, 2
  %84 = sext i32 %83 to i64
  %85 = load i64, i64* %14, align 8
  %86 = mul i64 %84, %85
  %87 = getelementptr inbounds i8, i8* %80, i64 %86
  call void %66(i8* %72, i8* %79, i8* %87)
  br label %103

88:                                               ; preds = %53
  %89 = load void (i8*, i8*)*, void (i8*, i8*)** %18, align 8
  %90 = load i8*, i8** %15, align 8
  %91 = load i32, i32* %23, align 4
  %92 = sext i32 %91 to i64
  %93 = load i64, i64* %14, align 8
  %94 = mul i64 %92, %93
  %95 = getelementptr inbounds i8, i8* %90, i64 %94
  %96 = load i8*, i8** %15, align 8
  %97 = load i32, i32* %23, align 4
  %98 = sub nsw i32 %97, 1
  %99 = sext i32 %98 to i64
  %100 = load i64, i64* %14, align 8
  %101 = mul i64 %99, %100
  %102 = getelementptr inbounds i8, i8* %96, i64 %101
  call void %89(i8* %95, i8* %102)
  br label %103

103:                                              ; preds = %88, %65
  br label %104

104:                                              ; preds = %103
  %105 = load i32, i32* %23, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %23, align 4
  br label %48

107:                                              ; preds = %48
  %108 = load void (i8*, i8*)*, void (i8*, i8*)** %21, align 8
  %109 = load i8*, i8** %15, align 8
  %110 = load i64, i64* %12, align 8
  %111 = sub i64 %110, 1
  %112 = load i64, i64* %14, align 8
  %113 = mul i64 %111, %112
  %114 = getelementptr inbounds i8, i8* %109, i64 %113
  %115 = load i8*, i8** %15, align 8
  %116 = load i64, i64* %12, align 8
  %117 = sub i64 %116, 1
  %118 = load i64, i64* %14, align 8
  %119 = mul i64 %117, %118
  %120 = getelementptr inbounds i8, i8* %115, i64 %119
  call void %108(i8* %114, i8* %120)
  %121 = load i64, i64* %12, align 8
  %122 = sub i64 %121, 1
  %123 = trunc i64 %122 to i32
  store i32 %123, i32* %23, align 4
  br label %124

124:                                              ; preds = %345, %107
  %125 = load i32, i32* %23, align 4
  %126 = icmp sge i32 %125, 0
  br i1 %126, label %127, label %348

127:                                              ; preds = %124
  %128 = load i32, i32* %23, align 4
  %129 = icmp sgt i32 %128, 0
  br i1 %129, label %130, label %150

130:                                              ; preds = %127
  %131 = load void (i8*, i8*, i8*)*, void (i8*, i8*, i8*)** %20, align 8
  %132 = load i8*, i8** %15, align 8
  %133 = load i64, i64* %12, align 8
  %134 = load i64, i64* %14, align 8
  %135 = mul i64 %133, %134
  %136 = getelementptr inbounds i8, i8* %132, i64 %135
  %137 = load i8*, i8** %15, align 8
  %138 = load i32, i32* %23, align 4
  %139 = sub nsw i32 %138, 1
  %140 = sext i32 %139 to i64
  %141 = load i64, i64* %14, align 8
  %142 = mul i64 %140, %141
  %143 = getelementptr inbounds i8, i8* %137, i64 %142
  %144 = load i8*, i8** %15, align 8
  %145 = load i32, i32* %23, align 4
  %146 = sext i32 %145 to i64
  %147 = load i64, i64* %14, align 8
  %148 = mul i64 %146, %147
  %149 = getelementptr inbounds i8, i8* %144, i64 %148
  call void %131(i8* %136, i8* %143, i8* %149)
  br label %161

150:                                              ; preds = %127
  %151 = load void (i8*, i8*)*, void (i8*, i8*)** %18, align 8
  %152 = load i8*, i8** %15, align 8
  %153 = load i64, i64* %12, align 8
  %154 = load i64, i64* %14, align 8
  %155 = mul i64 %153, %154
  %156 = getelementptr inbounds i8, i8* %152, i64 %155
  %157 = load i8*, i8** %15, align 8
  %158 = load i64, i64* %14, align 8
  %159 = mul i64 0, %158
  %160 = getelementptr inbounds i8, i8* %157, i64 %159
  call void %151(i8* %156, i8* %160)
  br label %161

161:                                              ; preds = %150, %130
  %162 = load i32 (i8*)*, i32 (i8*)** %17, align 8
  %163 = load i8*, i8** %13, align 8
  %164 = load i32, i32* %23, align 4
  %165 = mul nsw i32 3, %164
  %166 = add nsw i32 %165, 2
  %167 = sext i32 %166 to i64
  %168 = load i64, i64* %14, align 8
  %169 = mul i64 %167, %168
  %170 = getelementptr inbounds i8, i8* %163, i64 %169
  %171 = call i32 %162(i8* %170)
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %325, label %173

173:                                              ; preds = %161
  %174 = load i32, i32* %23, align 4
  %175 = icmp sgt i32 %174, 0
  br i1 %175, label %176, label %199

176:                                              ; preds = %173
  %177 = load void (i8*, i8*, i8*)*, void (i8*, i8*, i8*)** %20, align 8
  %178 = load i8*, i8** %15, align 8
  %179 = load i32, i32* %23, align 4
  %180 = sub nsw i32 %179, 1
  %181 = sext i32 %180 to i64
  %182 = load i64, i64* %14, align 8
  %183 = mul i64 %181, %182
  %184 = getelementptr inbounds i8, i8* %178, i64 %183
  %185 = load i8*, i8** %15, align 8
  %186 = load i32, i32* %23, align 4
  %187 = sext i32 %186 to i64
  %188 = load i64, i64* %14, align 8
  %189 = mul i64 %187, %188
  %190 = getelementptr inbounds i8, i8* %185, i64 %189
  %191 = load i8*, i8** %13, align 8
  %192 = load i32, i32* %23, align 4
  %193 = mul nsw i32 3, %192
  %194 = add nsw i32 %193, 2
  %195 = sext i32 %194 to i64
  %196 = load i64, i64* %14, align 8
  %197 = mul i64 %195, %196
  %198 = getelementptr inbounds i8, i8* %191, i64 %197
  call void %177(i8* %184, i8* %190, i8* %198)
  br label %199

199:                                              ; preds = %176, %173
  %200 = load void (i8*, i8*)*, void (i8*, i8*)** %19, align 8
  %201 = load i8*, i8** %13, align 8
  %202 = load i32, i32* %23, align 4
  %203 = mul nsw i32 3, %202
  %204 = add nsw i32 %203, 2
  %205 = sext i32 %204 to i64
  %206 = load i64, i64* %14, align 8
  %207 = mul i64 %205, %206
  %208 = getelementptr inbounds i8, i8* %201, i64 %207
  %209 = load i8*, i8** %15, align 8
  %210 = load i64, i64* %12, align 8
  %211 = load i64, i64* %14, align 8
  %212 = mul i64 %210, %211
  %213 = getelementptr inbounds i8, i8* %209, i64 %212
  call void %200(i8* %208, i8* %213)
  %214 = load void (i8*, i8*, i8*)*, void (i8*, i8*, i8*)** %20, align 8
  %215 = load i8*, i8** %13, align 8
  %216 = load i32, i32* %23, align 4
  %217 = mul nsw i32 3, %216
  %218 = sext i32 %217 to i64
  %219 = load i64, i64* %14, align 8
  %220 = mul i64 %218, %219
  %221 = getelementptr inbounds i8, i8* %215, i64 %220
  %222 = load i8*, i8** %13, align 8
  %223 = load i32, i32* %23, align 4
  %224 = mul nsw i32 3, %223
  %225 = sext i32 %224 to i64
  %226 = load i64, i64* %14, align 8
  %227 = mul i64 %225, %226
  %228 = getelementptr inbounds i8, i8* %222, i64 %227
  %229 = load i8*, i8** %13, align 8
  %230 = load i32, i32* %23, align 4
  %231 = mul nsw i32 3, %230
  %232 = add nsw i32 %231, 2
  %233 = sext i32 %232 to i64
  %234 = load i64, i64* %14, align 8
  %235 = mul i64 %233, %234
  %236 = getelementptr inbounds i8, i8* %229, i64 %235
  call void %214(i8* %221, i8* %228, i8* %236)
  %237 = load void (i8*, i8*, i8*)*, void (i8*, i8*, i8*)** %20, align 8
  %238 = load i8*, i8** %13, align 8
  %239 = load i32, i32* %23, align 4
  %240 = mul nsw i32 3, %239
  %241 = add nsw i32 %240, 2
  %242 = sext i32 %241 to i64
  %243 = load i64, i64* %14, align 8
  %244 = mul i64 %242, %243
  %245 = getelementptr inbounds i8, i8* %238, i64 %244
  %246 = load i8*, i8** %13, align 8
  %247 = load i32, i32* %23, align 4
  %248 = mul nsw i32 3, %247
  %249 = add nsw i32 %248, 2
  %250 = sext i32 %249 to i64
  %251 = load i64, i64* %14, align 8
  %252 = mul i64 %250, %251
  %253 = getelementptr inbounds i8, i8* %246, i64 %252
  %254 = load i8*, i8** %15, align 8
  %255 = load i64, i64* %12, align 8
  %256 = load i64, i64* %14, align 8
  %257 = mul i64 %255, %256
  %258 = getelementptr inbounds i8, i8* %254, i64 %257
  call void %237(i8* %245, i8* %253, i8* %258)
  %259 = load void (i8*, i8*, i8*)*, void (i8*, i8*, i8*)** %20, align 8
  %260 = load i8*, i8** %13, align 8
  %261 = load i32, i32* %23, align 4
  %262 = mul nsw i32 3, %261
  %263 = add nsw i32 %262, 1
  %264 = sext i32 %263 to i64
  %265 = load i64, i64* %14, align 8
  %266 = mul i64 %264, %265
  %267 = getelementptr inbounds i8, i8* %260, i64 %266
  %268 = load i8*, i8** %13, align 8
  %269 = load i32, i32* %23, align 4
  %270 = mul nsw i32 3, %269
  %271 = add nsw i32 %270, 1
  %272 = sext i32 %271 to i64
  %273 = load i64, i64* %14, align 8
  %274 = mul i64 %272, %273
  %275 = getelementptr inbounds i8, i8* %268, i64 %274
  %276 = load i8*, i8** %13, align 8
  %277 = load i32, i32* %23, align 4
  %278 = mul nsw i32 3, %277
  %279 = add nsw i32 %278, 2
  %280 = sext i32 %279 to i64
  %281 = load i64, i64* %14, align 8
  %282 = mul i64 %280, %281
  %283 = getelementptr inbounds i8, i8* %276, i64 %282
  call void %259(i8* %267, i8* %275, i8* %283)
  %284 = load void (i8*, i8*)*, void (i8*, i8*)** %22, align 8
  %285 = load i8*, i8** %13, align 8
  %286 = load i32, i32* %23, align 4
  %287 = mul nsw i32 3, %286
  %288 = sext i32 %287 to i64
  %289 = load i64, i64* %14, align 8
  %290 = mul i64 %288, %289
  %291 = getelementptr inbounds i8, i8* %285, i64 %290
  %292 = load i8*, i8** %13, align 8
  %293 = load i32, i32* %23, align 4
  %294 = mul nsw i32 3, %293
  %295 = sext i32 %294 to i64
  %296 = load i64, i64* %14, align 8
  %297 = mul i64 %295, %296
  %298 = getelementptr inbounds i8, i8* %292, i64 %297
  call void %284(i8* %291, i8* %298)
  %299 = load void (i8*, i8*)*, void (i8*, i8*)** %22, align 8
  %300 = load i8*, i8** %13, align 8
  %301 = load i32, i32* %23, align 4
  %302 = mul nsw i32 3, %301
  %303 = add nsw i32 %302, 1
  %304 = sext i32 %303 to i64
  %305 = load i64, i64* %14, align 8
  %306 = mul i64 %304, %305
  %307 = getelementptr inbounds i8, i8* %300, i64 %306
  %308 = load i8*, i8** %13, align 8
  %309 = load i32, i32* %23, align 4
  %310 = mul nsw i32 3, %309
  %311 = add nsw i32 %310, 1
  %312 = sext i32 %311 to i64
  %313 = load i64, i64* %14, align 8
  %314 = mul i64 %312, %313
  %315 = getelementptr inbounds i8, i8* %308, i64 %314
  call void %299(i8* %307, i8* %315)
  %316 = load void (i8*)*, void (i8*)** %16, align 8
  %317 = load i8*, i8** %13, align 8
  %318 = load i32, i32* %23, align 4
  %319 = mul nsw i32 3, %318
  %320 = add nsw i32 %319, 2
  %321 = sext i32 %320 to i64
  %322 = load i64, i64* %14, align 8
  %323 = mul i64 %321, %322
  %324 = getelementptr inbounds i8, i8* %317, i64 %323
  call void %316(i8* %324)
  br label %344

325:                                              ; preds = %161
  %326 = load i32, i32* %23, align 4
  %327 = icmp sgt i32 %326, 0
  br i1 %327, label %328, label %343

328:                                              ; preds = %325
  %329 = load void (i8*, i8*)*, void (i8*, i8*)** %18, align 8
  %330 = load i8*, i8** %15, align 8
  %331 = load i32, i32* %23, align 4
  %332 = sub nsw i32 %331, 1
  %333 = sext i32 %332 to i64
  %334 = load i64, i64* %14, align 8
  %335 = mul i64 %333, %334
  %336 = getelementptr inbounds i8, i8* %330, i64 %335
  %337 = load i8*, i8** %15, align 8
  %338 = load i32, i32* %23, align 4
  %339 = sext i32 %338 to i64
  %340 = load i64, i64* %14, align 8
  %341 = mul i64 %339, %340
  %342 = getelementptr inbounds i8, i8* %337, i64 %341
  call void %329(i8* %336, i8* %342)
  br label %343

343:                                              ; preds = %328, %325
  br label %344

344:                                              ; preds = %343, %199
  br label %345

345:                                              ; preds = %344
  %346 = load i32, i32* %23, align 4
  %347 = add nsw i32 %346, -1
  store i32 %347, i32* %23, align 4
  br label %124

348:                                              ; preds = %124
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
