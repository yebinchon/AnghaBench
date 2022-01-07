; ModuleID = '/home/carl/AnghaBench/php-src/ext/hash/extr_hash_haval.c_PHP_3HAVALTransform.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/hash/extr_hash_haval.c_PHP_3HAVALTransform.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@M1 = common dso_local global i64* null, align 8
@M0 = common dso_local global i64* null, align 8
@M3 = common dso_local global i64* null, align 8
@M5 = common dso_local global i64* null, align 8
@M6 = common dso_local global i64* null, align 8
@M2 = common dso_local global i64* null, align 8
@M4 = common dso_local global i64* null, align 8
@M7 = common dso_local global i64* null, align 8
@I2 = common dso_local global i64* null, align 8
@K2 = common dso_local global i64* null, align 8
@I3 = common dso_local global i64* null, align 8
@K3 = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64*, i8*)* @PHP_3HAVALTransform to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @PHP_3HAVALTransform(i64* %0, i8* %1) #0 {
  %3 = alloca i64*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca [8 x i64], align 16
  %6 = alloca [32 x i64], align 16
  %7 = alloca i32, align 4
  store i64* %0, i64** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = getelementptr inbounds [32 x i64], [32 x i64]* %6, i64 0, i64 0
  %9 = load i8*, i8** %4, align 8
  %10 = call i32 @Decode(i64* %8, i8* %9, i32 128)
  store i32 0, i32* %7, align 4
  br label %11

11:                                               ; preds = %23, %2
  %12 = load i32, i32* %7, align 4
  %13 = icmp slt i32 %12, 8
  br i1 %13, label %14, label %26

14:                                               ; preds = %11
  %15 = load i64*, i64** %3, align 8
  %16 = load i32, i32* %7, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i64, i64* %15, i64 %17
  %19 = load i64, i64* %18, align 8
  %20 = load i32, i32* %7, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [8 x i64], [8 x i64]* %5, i64 0, i64 %21
  store i64 %19, i64* %22, align 8
  br label %23

23:                                               ; preds = %14
  %24 = load i32, i32* %7, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %7, align 4
  br label %11

26:                                               ; preds = %11
  store i32 0, i32* %7, align 4
  br label %27

27:                                               ; preds = %101, %26
  %28 = load i32, i32* %7, align 4
  %29 = icmp slt i32 %28, 32
  br i1 %29, label %30, label %104

30:                                               ; preds = %27
  %31 = load i64*, i64** @M1, align 8
  %32 = load i32, i32* %7, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i64, i64* %31, i64 %33
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds [8 x i64], [8 x i64]* %5, i64 0, i64 %35
  %37 = load i64, i64* %36, align 8
  %38 = load i64*, i64** @M0, align 8
  %39 = load i32, i32* %7, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i64, i64* %38, i64 %40
  %42 = load i64, i64* %41, align 8
  %43 = getelementptr inbounds [8 x i64], [8 x i64]* %5, i64 0, i64 %42
  %44 = load i64, i64* %43, align 8
  %45 = load i64*, i64** @M3, align 8
  %46 = load i32, i32* %7, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i64, i64* %45, i64 %47
  %49 = load i64, i64* %48, align 8
  %50 = getelementptr inbounds [8 x i64], [8 x i64]* %5, i64 0, i64 %49
  %51 = load i64, i64* %50, align 8
  %52 = load i64*, i64** @M5, align 8
  %53 = load i32, i32* %7, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i64, i64* %52, i64 %54
  %56 = load i64, i64* %55, align 8
  %57 = getelementptr inbounds [8 x i64], [8 x i64]* %5, i64 0, i64 %56
  %58 = load i64, i64* %57, align 8
  %59 = load i64*, i64** @M6, align 8
  %60 = load i32, i32* %7, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i64, i64* %59, i64 %61
  %63 = load i64, i64* %62, align 8
  %64 = getelementptr inbounds [8 x i64], [8 x i64]* %5, i64 0, i64 %63
  %65 = load i64, i64* %64, align 8
  %66 = load i64*, i64** @M2, align 8
  %67 = load i32, i32* %7, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i64, i64* %66, i64 %68
  %70 = load i64, i64* %69, align 8
  %71 = getelementptr inbounds [8 x i64], [8 x i64]* %5, i64 0, i64 %70
  %72 = load i64, i64* %71, align 8
  %73 = load i64*, i64** @M4, align 8
  %74 = load i32, i32* %7, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i64, i64* %73, i64 %75
  %77 = load i64, i64* %76, align 8
  %78 = getelementptr inbounds [8 x i64], [8 x i64]* %5, i64 0, i64 %77
  %79 = load i64, i64* %78, align 8
  %80 = call i64 @F1(i64 %37, i64 %44, i64 %51, i64 %58, i64 %65, i64 %72, i64 %79)
  %81 = call i64 @ROTR(i64 %80, i32 7)
  %82 = load i64*, i64** @M7, align 8
  %83 = load i32, i32* %7, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i64, i64* %82, i64 %84
  %86 = load i64, i64* %85, align 8
  %87 = getelementptr inbounds [8 x i64], [8 x i64]* %5, i64 0, i64 %86
  %88 = load i64, i64* %87, align 8
  %89 = call i64 @ROTR(i64 %88, i32 11)
  %90 = add nsw i64 %81, %89
  %91 = load i32, i32* %7, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds [32 x i64], [32 x i64]* %6, i64 0, i64 %92
  %94 = load i64, i64* %93, align 8
  %95 = add nsw i64 %90, %94
  %96 = load i32, i32* %7, align 4
  %97 = srem i32 %96, 8
  %98 = sub nsw i32 7, %97
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds [8 x i64], [8 x i64]* %5, i64 0, i64 %99
  store i64 %95, i64* %100, align 8
  br label %101

101:                                              ; preds = %30
  %102 = load i32, i32* %7, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %7, align 4
  br label %27

104:                                              ; preds = %27
  store i32 0, i32* %7, align 4
  br label %105

105:                                              ; preds = %188, %104
  %106 = load i32, i32* %7, align 4
  %107 = icmp slt i32 %106, 32
  br i1 %107, label %108, label %191

108:                                              ; preds = %105
  %109 = load i64*, i64** @M4, align 8
  %110 = load i32, i32* %7, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i64, i64* %109, i64 %111
  %113 = load i64, i64* %112, align 8
  %114 = getelementptr inbounds [8 x i64], [8 x i64]* %5, i64 0, i64 %113
  %115 = load i64, i64* %114, align 8
  %116 = load i64*, i64** @M2, align 8
  %117 = load i32, i32* %7, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i64, i64* %116, i64 %118
  %120 = load i64, i64* %119, align 8
  %121 = getelementptr inbounds [8 x i64], [8 x i64]* %5, i64 0, i64 %120
  %122 = load i64, i64* %121, align 8
  %123 = load i64*, i64** @M1, align 8
  %124 = load i32, i32* %7, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i64, i64* %123, i64 %125
  %127 = load i64, i64* %126, align 8
  %128 = getelementptr inbounds [8 x i64], [8 x i64]* %5, i64 0, i64 %127
  %129 = load i64, i64* %128, align 8
  %130 = load i64*, i64** @M0, align 8
  %131 = load i32, i32* %7, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i64, i64* %130, i64 %132
  %134 = load i64, i64* %133, align 8
  %135 = getelementptr inbounds [8 x i64], [8 x i64]* %5, i64 0, i64 %134
  %136 = load i64, i64* %135, align 8
  %137 = load i64*, i64** @M5, align 8
  %138 = load i32, i32* %7, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i64, i64* %137, i64 %139
  %141 = load i64, i64* %140, align 8
  %142 = getelementptr inbounds [8 x i64], [8 x i64]* %5, i64 0, i64 %141
  %143 = load i64, i64* %142, align 8
  %144 = load i64*, i64** @M3, align 8
  %145 = load i32, i32* %7, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i64, i64* %144, i64 %146
  %148 = load i64, i64* %147, align 8
  %149 = getelementptr inbounds [8 x i64], [8 x i64]* %5, i64 0, i64 %148
  %150 = load i64, i64* %149, align 8
  %151 = load i64*, i64** @M6, align 8
  %152 = load i32, i32* %7, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i64, i64* %151, i64 %153
  %155 = load i64, i64* %154, align 8
  %156 = getelementptr inbounds [8 x i64], [8 x i64]* %5, i64 0, i64 %155
  %157 = load i64, i64* %156, align 8
  %158 = call i64 @F2(i64 %115, i64 %122, i64 %129, i64 %136, i64 %143, i64 %150, i64 %157)
  %159 = call i64 @ROTR(i64 %158, i32 7)
  %160 = load i64*, i64** @M7, align 8
  %161 = load i32, i32* %7, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i64, i64* %160, i64 %162
  %164 = load i64, i64* %163, align 8
  %165 = getelementptr inbounds [8 x i64], [8 x i64]* %5, i64 0, i64 %164
  %166 = load i64, i64* %165, align 8
  %167 = call i64 @ROTR(i64 %166, i32 11)
  %168 = add nsw i64 %159, %167
  %169 = load i64*, i64** @I2, align 8
  %170 = load i32, i32* %7, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i64, i64* %169, i64 %171
  %173 = load i64, i64* %172, align 8
  %174 = getelementptr inbounds [32 x i64], [32 x i64]* %6, i64 0, i64 %173
  %175 = load i64, i64* %174, align 8
  %176 = add nsw i64 %168, %175
  %177 = load i64*, i64** @K2, align 8
  %178 = load i32, i32* %7, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i64, i64* %177, i64 %179
  %181 = load i64, i64* %180, align 8
  %182 = add nsw i64 %176, %181
  %183 = load i32, i32* %7, align 4
  %184 = srem i32 %183, 8
  %185 = sub nsw i32 7, %184
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds [8 x i64], [8 x i64]* %5, i64 0, i64 %186
  store i64 %182, i64* %187, align 8
  br label %188

188:                                              ; preds = %108
  %189 = load i32, i32* %7, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %7, align 4
  br label %105

191:                                              ; preds = %105
  store i32 0, i32* %7, align 4
  br label %192

192:                                              ; preds = %275, %191
  %193 = load i32, i32* %7, align 4
  %194 = icmp slt i32 %193, 32
  br i1 %194, label %195, label %278

195:                                              ; preds = %192
  %196 = load i64*, i64** @M6, align 8
  %197 = load i32, i32* %7, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds i64, i64* %196, i64 %198
  %200 = load i64, i64* %199, align 8
  %201 = getelementptr inbounds [8 x i64], [8 x i64]* %5, i64 0, i64 %200
  %202 = load i64, i64* %201, align 8
  %203 = load i64*, i64** @M1, align 8
  %204 = load i32, i32* %7, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds i64, i64* %203, i64 %205
  %207 = load i64, i64* %206, align 8
  %208 = getelementptr inbounds [8 x i64], [8 x i64]* %5, i64 0, i64 %207
  %209 = load i64, i64* %208, align 8
  %210 = load i64*, i64** @M2, align 8
  %211 = load i32, i32* %7, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds i64, i64* %210, i64 %212
  %214 = load i64, i64* %213, align 8
  %215 = getelementptr inbounds [8 x i64], [8 x i64]* %5, i64 0, i64 %214
  %216 = load i64, i64* %215, align 8
  %217 = load i64*, i64** @M3, align 8
  %218 = load i32, i32* %7, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds i64, i64* %217, i64 %219
  %221 = load i64, i64* %220, align 8
  %222 = getelementptr inbounds [8 x i64], [8 x i64]* %5, i64 0, i64 %221
  %223 = load i64, i64* %222, align 8
  %224 = load i64*, i64** @M4, align 8
  %225 = load i32, i32* %7, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds i64, i64* %224, i64 %226
  %228 = load i64, i64* %227, align 8
  %229 = getelementptr inbounds [8 x i64], [8 x i64]* %5, i64 0, i64 %228
  %230 = load i64, i64* %229, align 8
  %231 = load i64*, i64** @M5, align 8
  %232 = load i32, i32* %7, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds i64, i64* %231, i64 %233
  %235 = load i64, i64* %234, align 8
  %236 = getelementptr inbounds [8 x i64], [8 x i64]* %5, i64 0, i64 %235
  %237 = load i64, i64* %236, align 8
  %238 = load i64*, i64** @M0, align 8
  %239 = load i32, i32* %7, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds i64, i64* %238, i64 %240
  %242 = load i64, i64* %241, align 8
  %243 = getelementptr inbounds [8 x i64], [8 x i64]* %5, i64 0, i64 %242
  %244 = load i64, i64* %243, align 8
  %245 = call i64 @F3(i64 %202, i64 %209, i64 %216, i64 %223, i64 %230, i64 %237, i64 %244)
  %246 = call i64 @ROTR(i64 %245, i32 7)
  %247 = load i64*, i64** @M7, align 8
  %248 = load i32, i32* %7, align 4
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds i64, i64* %247, i64 %249
  %251 = load i64, i64* %250, align 8
  %252 = getelementptr inbounds [8 x i64], [8 x i64]* %5, i64 0, i64 %251
  %253 = load i64, i64* %252, align 8
  %254 = call i64 @ROTR(i64 %253, i32 11)
  %255 = add nsw i64 %246, %254
  %256 = load i64*, i64** @I3, align 8
  %257 = load i32, i32* %7, align 4
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds i64, i64* %256, i64 %258
  %260 = load i64, i64* %259, align 8
  %261 = getelementptr inbounds [32 x i64], [32 x i64]* %6, i64 0, i64 %260
  %262 = load i64, i64* %261, align 8
  %263 = add nsw i64 %255, %262
  %264 = load i64*, i64** @K3, align 8
  %265 = load i32, i32* %7, align 4
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds i64, i64* %264, i64 %266
  %268 = load i64, i64* %267, align 8
  %269 = add nsw i64 %263, %268
  %270 = load i32, i32* %7, align 4
  %271 = srem i32 %270, 8
  %272 = sub nsw i32 7, %271
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds [8 x i64], [8 x i64]* %5, i64 0, i64 %273
  store i64 %269, i64* %274, align 8
  br label %275

275:                                              ; preds = %195
  %276 = load i32, i32* %7, align 4
  %277 = add nsw i32 %276, 1
  store i32 %277, i32* %7, align 4
  br label %192

278:                                              ; preds = %192
  store i32 0, i32* %7, align 4
  br label %279

279:                                              ; preds = %293, %278
  %280 = load i32, i32* %7, align 4
  %281 = icmp slt i32 %280, 8
  br i1 %281, label %282, label %296

282:                                              ; preds = %279
  %283 = load i32, i32* %7, align 4
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds [8 x i64], [8 x i64]* %5, i64 0, i64 %284
  %286 = load i64, i64* %285, align 8
  %287 = load i64*, i64** %3, align 8
  %288 = load i32, i32* %7, align 4
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds i64, i64* %287, i64 %289
  %291 = load i64, i64* %290, align 8
  %292 = add nsw i64 %291, %286
  store i64 %292, i64* %290, align 8
  br label %293

293:                                              ; preds = %282
  %294 = load i32, i32* %7, align 4
  %295 = add nsw i32 %294, 1
  store i32 %295, i32* %7, align 4
  br label %279

296:                                              ; preds = %279
  %297 = getelementptr inbounds [32 x i64], [32 x i64]* %6, i64 0, i64 0
  %298 = bitcast i64* %297 to i8*
  %299 = call i32 @ZEND_SECURE_ZERO(i8* %298, i32 256)
  ret void
}

declare dso_local i32 @Decode(i64*, i8*, i32) #1

declare dso_local i64 @ROTR(i64, i32) #1

declare dso_local i64 @F1(i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i64 @F2(i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i64 @F3(i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @ZEND_SECURE_ZERO(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
