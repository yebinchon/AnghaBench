; ModuleID = '/home/carl/AnghaBench/netdata/libnetdata/statistical/extr_statistical.c___HoltWinters.c'
source_filename = "/home/carl/AnghaBench/netdata/libnetdata/statistical/extr_statistical.c___HoltWinters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32, i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*)* @__HoltWinters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__HoltWinters(i32* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32* %5, i32* %6, i32* %7, i32* %8, i32* %9, i32* %10, i32* %11, i32* %12, i32* %13) #0 {
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i32*, align 8
  %27 = alloca i32*, align 8
  %28 = alloca i32*, align 8
  %29 = alloca i32*, align 8
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  store i32* %0, i32** %16, align 8
  store i32 %1, i32* %17, align 4
  store i32 %2, i32* %18, align 4
  store i32 %3, i32* %19, align 4
  store i32 %4, i32* %20, align 4
  store i32* %5, i32** %21, align 8
  store i32* %6, i32** %22, align 8
  store i32* %7, i32** %23, align 8
  store i32* %8, i32** %24, align 8
  store i32* %9, i32** %25, align 8
  store i32* %10, i32** %26, align 8
  store i32* %11, i32** %27, align 8
  store i32* %12, i32** %28, align 8
  store i32* %13, i32** %29, align 8
  %37 = load i32, i32* %17, align 4
  %38 = icmp slt i32 %37, 4
  %39 = zext i1 %38 to i32
  %40 = call i64 @unlikely(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %14
  store i32 0, i32* %15, align 4
  br label %302

43:                                               ; preds = %14
  store i32 2, i32* %30, align 4
  store i32 0, i32* %31, align 4
  store i32 0, i32* %32, align 4
  store i32 0, i32* %33, align 4
  %44 = load i32*, i32** %23, align 8
  %45 = load i32, i32* %44, align 4
  %46 = load i32*, i32** %27, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 0
  store i32 %45, i32* %47, align 4
  %48 = load i32, i32* %19, align 4
  %49 = icmp sgt i32 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %43
  %51 = load i32*, i32** %24, align 8
  %52 = load i32, i32* %51, align 4
  %53 = load i32*, i32** %28, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 0
  store i32 %52, i32* %54, align 4
  br label %55

55:                                               ; preds = %50, %43
  %56 = load i32, i32* %20, align 4
  %57 = icmp sgt i32 %56, 0
  br i1 %57, label %58, label %67

58:                                               ; preds = %55
  %59 = load i32*, i32** %29, align 8
  %60 = load i32*, i32** %25, align 8
  %61 = load i32*, i32** %22, align 8
  %62 = load i32, i32* %61, align 4
  %63 = sext i32 %62 to i64
  %64 = mul i64 %63, 4
  %65 = trunc i64 %64 to i32
  %66 = call i32 @memcpy(i32* %59, i32* %60, i32 %65)
  br label %67

67:                                               ; preds = %58, %55
  %68 = load i32, i32* %30, align 4
  %69 = sub nsw i32 %68, 1
  store i32 %69, i32* %34, align 4
  br label %70

70:                                               ; preds = %298, %67
  %71 = load i32, i32* %34, align 4
  %72 = load i32, i32* %17, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %301

74:                                               ; preds = %70
  %75 = load i32, i32* %34, align 4
  %76 = load i32, i32* %30, align 4
  %77 = sub nsw i32 %75, %76
  %78 = add nsw i32 %77, 2
  store i32 %78, i32* %35, align 4
  %79 = load i32, i32* %35, align 4
  %80 = load i32*, i32** %22, align 8
  %81 = load i32, i32* %80, align 4
  %82 = add nsw i32 %79, %81
  %83 = sub nsw i32 %82, 1
  store i32 %83, i32* %36, align 4
  %84 = load i32*, i32** %27, align 8
  %85 = load i32, i32* %35, align 4
  %86 = sub nsw i32 %85, 1
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %84, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* %19, align 4
  %91 = icmp sgt i32 %90, 0
  br i1 %91, label %92, label %99

92:                                               ; preds = %74
  %93 = load i32*, i32** %28, align 8
  %94 = load i32, i32* %35, align 4
  %95 = sub nsw i32 %94, 1
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %93, i64 %96
  %98 = load i32, i32* %97, align 4
  br label %100

99:                                               ; preds = %74
  br label %100

100:                                              ; preds = %99, %92
  %101 = phi i32 [ %98, %92 ], [ 0, %99 ]
  %102 = add nsw i32 %89, %101
  store i32 %102, i32* %32, align 4
  %103 = load i32, i32* %20, align 4
  %104 = icmp sgt i32 %103, 0
  br i1 %104, label %105, label %114

105:                                              ; preds = %100
  %106 = load i32*, i32** %29, align 8
  %107 = load i32, i32* %36, align 4
  %108 = load i32*, i32** %22, align 8
  %109 = load i32, i32* %108, align 4
  %110 = sub nsw i32 %107, %109
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %106, i64 %111
  %113 = load i32, i32* %112, align 4
  br label %119

114:                                              ; preds = %100
  %115 = load i32*, i32** %21, align 8
  %116 = load i32, i32* %115, align 4
  %117 = icmp ne i32 %116, 1
  %118 = zext i1 %117 to i32
  br label %119

119:                                              ; preds = %114, %105
  %120 = phi i32 [ %113, %105 ], [ %118, %114 ]
  store i32 %120, i32* %33, align 4
  %121 = load i32*, i32** %21, align 8
  %122 = load i32, i32* %121, align 4
  %123 = icmp eq i32 %122, 1
  br i1 %123, label %124, label %128

124:                                              ; preds = %119
  %125 = load i32, i32* %33, align 4
  %126 = load i32, i32* %32, align 4
  %127 = add nsw i32 %126, %125
  store i32 %127, i32* %32, align 4
  br label %132

128:                                              ; preds = %119
  %129 = load i32, i32* %33, align 4
  %130 = load i32, i32* %32, align 4
  %131 = mul nsw i32 %130, %129
  store i32 %131, i32* %32, align 4
  br label %132

132:                                              ; preds = %128, %124
  %133 = load i32*, i32** %16, align 8
  %134 = load i32, i32* %34, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i32, i32* %133, i64 %135
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* %32, align 4
  %139 = sub nsw i32 %137, %138
  store i32 %139, i32* %31, align 4
  %140 = load i32, i32* %31, align 4
  %141 = load i32, i32* %31, align 4
  %142 = mul nsw i32 %140, %141
  %143 = load i32*, i32** %26, align 8
  %144 = load i32, i32* %143, align 4
  %145 = add nsw i32 %144, %142
  store i32 %145, i32* %143, align 4
  %146 = load i32*, i32** %21, align 8
  %147 = load i32, i32* %146, align 4
  %148 = icmp eq i32 %147, 1
  br i1 %148, label %149, label %180

149:                                              ; preds = %132
  %150 = load i32, i32* %18, align 4
  %151 = load i32*, i32** %16, align 8
  %152 = load i32, i32* %34, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i32, i32* %151, i64 %153
  %155 = load i32, i32* %154, align 4
  %156 = load i32, i32* %33, align 4
  %157 = sub nsw i32 %155, %156
  %158 = mul nsw i32 %150, %157
  %159 = load i32, i32* %18, align 4
  %160 = sub nsw i32 1, %159
  %161 = load i32*, i32** %27, align 8
  %162 = load i32, i32* %35, align 4
  %163 = sub nsw i32 %162, 1
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i32, i32* %161, i64 %164
  %166 = load i32, i32* %165, align 4
  %167 = load i32*, i32** %28, align 8
  %168 = load i32, i32* %35, align 4
  %169 = sub nsw i32 %168, 1
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i32, i32* %167, i64 %170
  %172 = load i32, i32* %171, align 4
  %173 = add nsw i32 %166, %172
  %174 = mul nsw i32 %160, %173
  %175 = add nsw i32 %158, %174
  %176 = load i32*, i32** %27, align 8
  %177 = load i32, i32* %35, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i32, i32* %176, i64 %178
  store i32 %175, i32* %179, align 4
  br label %211

180:                                              ; preds = %132
  %181 = load i32, i32* %18, align 4
  %182 = load i32*, i32** %16, align 8
  %183 = load i32, i32* %34, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i32, i32* %182, i64 %184
  %186 = load i32, i32* %185, align 4
  %187 = load i32, i32* %33, align 4
  %188 = sdiv i32 %186, %187
  %189 = mul nsw i32 %181, %188
  %190 = load i32, i32* %18, align 4
  %191 = sub nsw i32 1, %190
  %192 = load i32*, i32** %27, align 8
  %193 = load i32, i32* %35, align 4
  %194 = sub nsw i32 %193, 1
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i32, i32* %192, i64 %195
  %197 = load i32, i32* %196, align 4
  %198 = load i32*, i32** %28, align 8
  %199 = load i32, i32* %35, align 4
  %200 = sub nsw i32 %199, 1
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds i32, i32* %198, i64 %201
  %203 = load i32, i32* %202, align 4
  %204 = add nsw i32 %197, %203
  %205 = mul nsw i32 %191, %204
  %206 = add nsw i32 %189, %205
  %207 = load i32*, i32** %27, align 8
  %208 = load i32, i32* %35, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds i32, i32* %207, i64 %209
  store i32 %206, i32* %210, align 4
  br label %211

211:                                              ; preds = %180, %149
  %212 = load i32, i32* %19, align 4
  %213 = icmp sgt i32 %212, 0
  br i1 %213, label %214, label %243

214:                                              ; preds = %211
  %215 = load i32, i32* %19, align 4
  %216 = load i32*, i32** %27, align 8
  %217 = load i32, i32* %35, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds i32, i32* %216, i64 %218
  %220 = load i32, i32* %219, align 4
  %221 = load i32*, i32** %27, align 8
  %222 = load i32, i32* %35, align 4
  %223 = sub nsw i32 %222, 1
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds i32, i32* %221, i64 %224
  %226 = load i32, i32* %225, align 4
  %227 = sub nsw i32 %220, %226
  %228 = mul nsw i32 %215, %227
  %229 = load i32, i32* %19, align 4
  %230 = sub nsw i32 1, %229
  %231 = load i32*, i32** %28, align 8
  %232 = load i32, i32* %35, align 4
  %233 = sub nsw i32 %232, 1
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds i32, i32* %231, i64 %234
  %236 = load i32, i32* %235, align 4
  %237 = mul nsw i32 %230, %236
  %238 = add nsw i32 %228, %237
  %239 = load i32*, i32** %28, align 8
  %240 = load i32, i32* %35, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds i32, i32* %239, i64 %241
  store i32 %238, i32* %242, align 4
  br label %243

243:                                              ; preds = %214, %211
  %244 = load i32, i32* %20, align 4
  %245 = icmp sgt i32 %244, 0
  br i1 %245, label %246, label %297

246:                                              ; preds = %243
  %247 = load i32*, i32** %21, align 8
  %248 = load i32, i32* %247, align 4
  %249 = icmp eq i32 %248, 1
  br i1 %249, label %250, label %273

250:                                              ; preds = %246
  %251 = load i32, i32* %20, align 4
  %252 = load i32*, i32** %16, align 8
  %253 = load i32, i32* %34, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds i32, i32* %252, i64 %254
  %256 = load i32, i32* %255, align 4
  %257 = load i32*, i32** %27, align 8
  %258 = load i32, i32* %35, align 4
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds i32, i32* %257, i64 %259
  %261 = load i32, i32* %260, align 4
  %262 = sub nsw i32 %256, %261
  %263 = mul nsw i32 %251, %262
  %264 = load i32, i32* %20, align 4
  %265 = sub nsw i32 1, %264
  %266 = load i32, i32* %33, align 4
  %267 = mul nsw i32 %265, %266
  %268 = add nsw i32 %263, %267
  %269 = load i32*, i32** %29, align 8
  %270 = load i32, i32* %36, align 4
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds i32, i32* %269, i64 %271
  store i32 %268, i32* %272, align 4
  br label %296

273:                                              ; preds = %246
  %274 = load i32, i32* %20, align 4
  %275 = load i32*, i32** %16, align 8
  %276 = load i32, i32* %34, align 4
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds i32, i32* %275, i64 %277
  %279 = load i32, i32* %278, align 4
  %280 = load i32*, i32** %27, align 8
  %281 = load i32, i32* %35, align 4
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds i32, i32* %280, i64 %282
  %284 = load i32, i32* %283, align 4
  %285 = sdiv i32 %279, %284
  %286 = mul nsw i32 %274, %285
  %287 = load i32, i32* %20, align 4
  %288 = sub nsw i32 1, %287
  %289 = load i32, i32* %33, align 4
  %290 = mul nsw i32 %288, %289
  %291 = add nsw i32 %286, %290
  %292 = load i32*, i32** %29, align 8
  %293 = load i32, i32* %36, align 4
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds i32, i32* %292, i64 %294
  store i32 %291, i32* %295, align 4
  br label %296

296:                                              ; preds = %273, %250
  br label %297

297:                                              ; preds = %296, %243
  br label %298

298:                                              ; preds = %297
  %299 = load i32, i32* %34, align 4
  %300 = add nsw i32 %299, 1
  store i32 %300, i32* %34, align 4
  br label %70

301:                                              ; preds = %70
  store i32 1, i32* %15, align 4
  br label %302

302:                                              ; preds = %301, %42
  %303 = load i32, i32* %15, align 4
  ret i32 %303
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
