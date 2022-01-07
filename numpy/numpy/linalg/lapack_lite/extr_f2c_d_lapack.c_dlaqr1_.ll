; ModuleID = '/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_d_lapack.c_dlaqr1_.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_d_lapack.c_dlaqr1_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dlaqr1_.s = internal global i32 0, align 4
@dlaqr1_.h21s = internal global i32 0, align 4
@dlaqr1_.h31s = internal global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dlaqr1_(i32* %0, i32* %1, i32* %2, i32* %3, i32* %4, i32* %5, i32* %6, i32* %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store i32* %1, i32** %10, align 8
  store i32* %2, i32** %11, align 8
  store i32* %3, i32** %12, align 8
  store i32* %4, i32** %13, align 8
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  store i32* %7, i32** %16, align 8
  %22 = load i32*, i32** %11, align 8
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %17, align 4
  %24 = load i32, i32* %17, align 4
  %25 = add nsw i32 1, %24
  store i32 %25, i32* %18, align 4
  %26 = load i32, i32* %18, align 4
  %27 = load i32*, i32** %10, align 8
  %28 = sext i32 %26 to i64
  %29 = sub i64 0, %28
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  store i32* %30, i32** %10, align 8
  %31 = load i32*, i32** %16, align 8
  %32 = getelementptr inbounds i32, i32* %31, i32 -1
  store i32* %32, i32** %16, align 8
  %33 = load i32*, i32** %9, align 8
  %34 = load i32, i32* %33, align 4
  %35 = icmp eq i32 %34, 2
  br i1 %35, label %36, label %144

36:                                               ; preds = %8
  %37 = load i32*, i32** %10, align 8
  %38 = load i32, i32* %17, align 4
  %39 = add nsw i32 %38, 1
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %37, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = load i32*, i32** %14, align 8
  %44 = load i32, i32* %43, align 4
  %45 = sub nsw i32 %42, %44
  store i32 %45, i32* %19, align 4
  %46 = load i32, i32* %19, align 4
  %47 = call i32 @abs(i32 %46) #2
  %48 = load i32*, i32** %15, align 8
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @abs(i32 %49) #2
  %51 = add nsw i32 %47, %50
  %52 = load i32*, i32** %10, align 8
  %53 = load i32, i32* %17, align 4
  %54 = add nsw i32 %53, 2
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %52, i64 %55
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %20, align 4
  %58 = load i32, i32* %20, align 4
  %59 = call i32 @abs(i32 %58) #2
  %60 = add nsw i32 %51, %59
  store i32 %60, i32* @dlaqr1_.s, align 4
  %61 = load i32, i32* @dlaqr1_.s, align 4
  %62 = sitofp i32 %61 to double
  %63 = fcmp oeq double %62, 0.000000e+00
  br i1 %63, label %64, label %69

64:                                               ; preds = %36
  %65 = load i32*, i32** %16, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 1
  store i32 0, i32* %66, align 4
  %67 = load i32*, i32** %16, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 2
  store i32 0, i32* %68, align 4
  br label %143

69:                                               ; preds = %36
  %70 = load i32*, i32** %10, align 8
  %71 = load i32, i32* %17, align 4
  %72 = add nsw i32 %71, 2
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %70, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @dlaqr1_.s, align 4
  %77 = sdiv i32 %75, %76
  store i32 %77, i32* @dlaqr1_.h21s, align 4
  %78 = load i32, i32* @dlaqr1_.h21s, align 4
  %79 = load i32*, i32** %10, align 8
  %80 = load i32, i32* %17, align 4
  %81 = shl i32 %80, 1
  %82 = add nsw i32 %81, 1
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %79, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = mul nsw i32 %78, %85
  %87 = load i32*, i32** %10, align 8
  %88 = load i32, i32* %17, align 4
  %89 = add nsw i32 %88, 1
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %87, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = load i32*, i32** %12, align 8
  %94 = load i32, i32* %93, align 4
  %95 = sub nsw i32 %92, %94
  %96 = load i32*, i32** %10, align 8
  %97 = load i32, i32* %17, align 4
  %98 = add nsw i32 %97, 1
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %96, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = load i32*, i32** %14, align 8
  %103 = load i32, i32* %102, align 4
  %104 = sub nsw i32 %101, %103
  %105 = load i32, i32* @dlaqr1_.s, align 4
  %106 = sdiv i32 %104, %105
  %107 = mul nsw i32 %95, %106
  %108 = add nsw i32 %86, %107
  %109 = load i32*, i32** %13, align 8
  %110 = load i32, i32* %109, align 4
  %111 = load i32*, i32** %15, align 8
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @dlaqr1_.s, align 4
  %114 = sdiv i32 %112, %113
  %115 = mul nsw i32 %110, %114
  %116 = sub nsw i32 %108, %115
  %117 = load i32*, i32** %16, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 1
  store i32 %116, i32* %118, align 4
  %119 = load i32, i32* @dlaqr1_.h21s, align 4
  %120 = load i32*, i32** %10, align 8
  %121 = load i32, i32* %17, align 4
  %122 = add nsw i32 %121, 1
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %120, i64 %123
  %125 = load i32, i32* %124, align 4
  %126 = load i32*, i32** %10, align 8
  %127 = load i32, i32* %17, align 4
  %128 = shl i32 %127, 1
  %129 = add nsw i32 %128, 2
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %126, i64 %130
  %132 = load i32, i32* %131, align 4
  %133 = add nsw i32 %125, %132
  %134 = load i32*, i32** %12, align 8
  %135 = load i32, i32* %134, align 4
  %136 = sub nsw i32 %133, %135
  %137 = load i32*, i32** %14, align 8
  %138 = load i32, i32* %137, align 4
  %139 = sub nsw i32 %136, %138
  %140 = mul nsw i32 %119, %139
  %141 = load i32*, i32** %16, align 8
  %142 = getelementptr inbounds i32, i32* %141, i64 2
  store i32 %140, i32* %142, align 4
  br label %143

143:                                              ; preds = %69, %64
  br label %325

144:                                              ; preds = %8
  %145 = load i32*, i32** %10, align 8
  %146 = load i32, i32* %17, align 4
  %147 = add nsw i32 %146, 1
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i32, i32* %145, i64 %148
  %150 = load i32, i32* %149, align 4
  %151 = load i32*, i32** %14, align 8
  %152 = load i32, i32* %151, align 4
  %153 = sub nsw i32 %150, %152
  store i32 %153, i32* %19, align 4
  %154 = load i32, i32* %19, align 4
  %155 = call i32 @abs(i32 %154) #2
  %156 = load i32*, i32** %15, align 8
  %157 = load i32, i32* %156, align 4
  %158 = call i32 @abs(i32 %157) #2
  %159 = add nsw i32 %155, %158
  %160 = load i32*, i32** %10, align 8
  %161 = load i32, i32* %17, align 4
  %162 = add nsw i32 %161, 2
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i32, i32* %160, i64 %163
  %165 = load i32, i32* %164, align 4
  store i32 %165, i32* %20, align 4
  %166 = load i32, i32* %20, align 4
  %167 = call i32 @abs(i32 %166) #2
  %168 = add nsw i32 %159, %167
  %169 = load i32*, i32** %10, align 8
  %170 = load i32, i32* %17, align 4
  %171 = add nsw i32 %170, 3
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i32, i32* %169, i64 %172
  %174 = load i32, i32* %173, align 4
  store i32 %174, i32* %21, align 4
  %175 = load i32, i32* %21, align 4
  %176 = call i32 @abs(i32 %175) #2
  %177 = add nsw i32 %168, %176
  store i32 %177, i32* @dlaqr1_.s, align 4
  %178 = load i32, i32* @dlaqr1_.s, align 4
  %179 = sitofp i32 %178 to double
  %180 = fcmp oeq double %179, 0.000000e+00
  br i1 %180, label %181, label %188

181:                                              ; preds = %144
  %182 = load i32*, i32** %16, align 8
  %183 = getelementptr inbounds i32, i32* %182, i64 1
  store i32 0, i32* %183, align 4
  %184 = load i32*, i32** %16, align 8
  %185 = getelementptr inbounds i32, i32* %184, i64 2
  store i32 0, i32* %185, align 4
  %186 = load i32*, i32** %16, align 8
  %187 = getelementptr inbounds i32, i32* %186, i64 3
  store i32 0, i32* %187, align 4
  br label %324

188:                                              ; preds = %144
  %189 = load i32*, i32** %10, align 8
  %190 = load i32, i32* %17, align 4
  %191 = add nsw i32 %190, 2
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds i32, i32* %189, i64 %192
  %194 = load i32, i32* %193, align 4
  %195 = load i32, i32* @dlaqr1_.s, align 4
  %196 = sdiv i32 %194, %195
  store i32 %196, i32* @dlaqr1_.h21s, align 4
  %197 = load i32*, i32** %10, align 8
  %198 = load i32, i32* %17, align 4
  %199 = add nsw i32 %198, 3
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds i32, i32* %197, i64 %200
  %202 = load i32, i32* %201, align 4
  %203 = load i32, i32* @dlaqr1_.s, align 4
  %204 = sdiv i32 %202, %203
  store i32 %204, i32* @dlaqr1_.h31s, align 4
  %205 = load i32*, i32** %10, align 8
  %206 = load i32, i32* %17, align 4
  %207 = add nsw i32 %206, 1
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds i32, i32* %205, i64 %208
  %210 = load i32, i32* %209, align 4
  %211 = load i32*, i32** %12, align 8
  %212 = load i32, i32* %211, align 4
  %213 = sub nsw i32 %210, %212
  %214 = load i32*, i32** %10, align 8
  %215 = load i32, i32* %17, align 4
  %216 = add nsw i32 %215, 1
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds i32, i32* %214, i64 %217
  %219 = load i32, i32* %218, align 4
  %220 = load i32*, i32** %14, align 8
  %221 = load i32, i32* %220, align 4
  %222 = sub nsw i32 %219, %221
  %223 = load i32, i32* @dlaqr1_.s, align 4
  %224 = sdiv i32 %222, %223
  %225 = mul nsw i32 %213, %224
  %226 = load i32*, i32** %13, align 8
  %227 = load i32, i32* %226, align 4
  %228 = load i32*, i32** %15, align 8
  %229 = load i32, i32* %228, align 4
  %230 = load i32, i32* @dlaqr1_.s, align 4
  %231 = sdiv i32 %229, %230
  %232 = mul nsw i32 %227, %231
  %233 = sub nsw i32 %225, %232
  %234 = load i32*, i32** %10, align 8
  %235 = load i32, i32* %17, align 4
  %236 = shl i32 %235, 1
  %237 = add nsw i32 %236, 1
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds i32, i32* %234, i64 %238
  %240 = load i32, i32* %239, align 4
  %241 = load i32, i32* @dlaqr1_.h21s, align 4
  %242 = mul nsw i32 %240, %241
  %243 = add nsw i32 %233, %242
  %244 = load i32*, i32** %10, align 8
  %245 = load i32, i32* %17, align 4
  %246 = mul nsw i32 %245, 3
  %247 = add nsw i32 %246, 1
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds i32, i32* %244, i64 %248
  %250 = load i32, i32* %249, align 4
  %251 = load i32, i32* @dlaqr1_.h31s, align 4
  %252 = mul nsw i32 %250, %251
  %253 = add nsw i32 %243, %252
  %254 = load i32*, i32** %16, align 8
  %255 = getelementptr inbounds i32, i32* %254, i64 1
  store i32 %253, i32* %255, align 4
  %256 = load i32, i32* @dlaqr1_.h21s, align 4
  %257 = load i32*, i32** %10, align 8
  %258 = load i32, i32* %17, align 4
  %259 = add nsw i32 %258, 1
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds i32, i32* %257, i64 %260
  %262 = load i32, i32* %261, align 4
  %263 = load i32*, i32** %10, align 8
  %264 = load i32, i32* %17, align 4
  %265 = shl i32 %264, 1
  %266 = add nsw i32 %265, 2
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds i32, i32* %263, i64 %267
  %269 = load i32, i32* %268, align 4
  %270 = add nsw i32 %262, %269
  %271 = load i32*, i32** %12, align 8
  %272 = load i32, i32* %271, align 4
  %273 = sub nsw i32 %270, %272
  %274 = load i32*, i32** %14, align 8
  %275 = load i32, i32* %274, align 4
  %276 = sub nsw i32 %273, %275
  %277 = mul nsw i32 %256, %276
  %278 = load i32*, i32** %10, align 8
  %279 = load i32, i32* %17, align 4
  %280 = mul nsw i32 %279, 3
  %281 = add nsw i32 %280, 2
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds i32, i32* %278, i64 %282
  %284 = load i32, i32* %283, align 4
  %285 = load i32, i32* @dlaqr1_.h31s, align 4
  %286 = mul nsw i32 %284, %285
  %287 = add nsw i32 %277, %286
  %288 = load i32*, i32** %16, align 8
  %289 = getelementptr inbounds i32, i32* %288, i64 2
  store i32 %287, i32* %289, align 4
  %290 = load i32, i32* @dlaqr1_.h31s, align 4
  %291 = load i32*, i32** %10, align 8
  %292 = load i32, i32* %17, align 4
  %293 = add nsw i32 %292, 1
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds i32, i32* %291, i64 %294
  %296 = load i32, i32* %295, align 4
  %297 = load i32*, i32** %10, align 8
  %298 = load i32, i32* %17, align 4
  %299 = mul nsw i32 %298, 3
  %300 = add nsw i32 %299, 3
  %301 = sext i32 %300 to i64
  %302 = getelementptr inbounds i32, i32* %297, i64 %301
  %303 = load i32, i32* %302, align 4
  %304 = add nsw i32 %296, %303
  %305 = load i32*, i32** %12, align 8
  %306 = load i32, i32* %305, align 4
  %307 = sub nsw i32 %304, %306
  %308 = load i32*, i32** %14, align 8
  %309 = load i32, i32* %308, align 4
  %310 = sub nsw i32 %307, %309
  %311 = mul nsw i32 %290, %310
  %312 = load i32, i32* @dlaqr1_.h21s, align 4
  %313 = load i32*, i32** %10, align 8
  %314 = load i32, i32* %17, align 4
  %315 = shl i32 %314, 1
  %316 = add nsw i32 %315, 3
  %317 = sext i32 %316 to i64
  %318 = getelementptr inbounds i32, i32* %313, i64 %317
  %319 = load i32, i32* %318, align 4
  %320 = mul nsw i32 %312, %319
  %321 = add nsw i32 %311, %320
  %322 = load i32*, i32** %16, align 8
  %323 = getelementptr inbounds i32, i32* %322, i64 3
  store i32 %321, i32* %323, align 4
  br label %324

324:                                              ; preds = %188, %181
  br label %325

325:                                              ; preds = %324, %143
  ret i32 0
}

; Function Attrs: nounwind readnone
declare dso_local i32 @abs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
