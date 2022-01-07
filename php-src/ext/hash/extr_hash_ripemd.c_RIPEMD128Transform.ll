; ModuleID = '/home/carl/AnghaBench/php-src/ext/hash/extr_hash_ripemd.c_RIPEMD128Transform.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/hash/extr_hash_ripemd.c_RIPEMD128Transform.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@R = common dso_local global i64* null, align 8
@RR = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64*, i8*)* @RIPEMD128Transform to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @RIPEMD128Transform(i64* %0, i8* %1) #0 {
  %3 = alloca i64*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca [16 x i64], align 16
  %15 = alloca i32, align 4
  store i64* %0, i64** %3, align 8
  store i8* %1, i8** %4, align 8
  %16 = load i64*, i64** %3, align 8
  %17 = getelementptr inbounds i64, i64* %16, i64 0
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %5, align 8
  %19 = load i64*, i64** %3, align 8
  %20 = getelementptr inbounds i64, i64* %19, i64 1
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %6, align 8
  %22 = load i64*, i64** %3, align 8
  %23 = getelementptr inbounds i64, i64* %22, i64 2
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %7, align 8
  %25 = load i64*, i64** %3, align 8
  %26 = getelementptr inbounds i64, i64* %25, i64 3
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %8, align 8
  %28 = load i64*, i64** %3, align 8
  %29 = getelementptr inbounds i64, i64* %28, i64 0
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %9, align 8
  %31 = load i64*, i64** %3, align 8
  %32 = getelementptr inbounds i64, i64* %31, i64 1
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %10, align 8
  %34 = load i64*, i64** %3, align 8
  %35 = getelementptr inbounds i64, i64* %34, i64 2
  %36 = load i64, i64* %35, align 8
  store i64 %36, i64* %11, align 8
  %37 = load i64*, i64** %3, align 8
  %38 = getelementptr inbounds i64, i64* %37, i64 3
  %39 = load i64, i64* %38, align 8
  store i64 %39, i64* %12, align 8
  %40 = getelementptr inbounds [16 x i64], [16 x i64]* %14, i64 0, i64 0
  %41 = load i8*, i8** %4, align 8
  %42 = call i32 @RIPEMDDecode(i64* %40, i8* %41, i32 64)
  store i32 0, i32* %15, align 4
  br label %43

43:                                               ; preds = %93, %2
  %44 = load i32, i32* %15, align 4
  %45 = icmp slt i32 %44, 16
  br i1 %45, label %46, label %96

46:                                               ; preds = %43
  %47 = load i32, i32* %15, align 4
  %48 = load i64, i64* %5, align 8
  %49 = load i64, i64* %6, align 8
  %50 = load i64, i64* %7, align 8
  %51 = load i64, i64* %8, align 8
  %52 = call i64 @F0(i64 %49, i64 %50, i64 %51)
  %53 = add nsw i64 %48, %52
  %54 = load i64*, i64** @R, align 8
  %55 = load i32, i32* %15, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i64, i64* %54, i64 %56
  %58 = load i64, i64* %57, align 8
  %59 = getelementptr inbounds [16 x i64], [16 x i64]* %14, i64 0, i64 %58
  %60 = load i64, i64* %59, align 8
  %61 = add nsw i64 %53, %60
  %62 = load i32, i32* %15, align 4
  %63 = call i64 @K(i32 %62)
  %64 = add nsw i64 %61, %63
  %65 = call i64 @ROLS(i32 %47, i64 %64)
  store i64 %65, i64* %13, align 8
  %66 = load i64, i64* %8, align 8
  store i64 %66, i64* %5, align 8
  %67 = load i64, i64* %7, align 8
  store i64 %67, i64* %8, align 8
  %68 = load i64, i64* %6, align 8
  store i64 %68, i64* %7, align 8
  %69 = load i64, i64* %13, align 8
  store i64 %69, i64* %6, align 8
  %70 = load i32, i32* %15, align 4
  %71 = load i64, i64* %9, align 8
  %72 = load i64, i64* %10, align 8
  %73 = load i64, i64* %11, align 8
  %74 = load i64, i64* %12, align 8
  %75 = call i64 @F3(i64 %72, i64 %73, i64 %74)
  %76 = add nsw i64 %71, %75
  %77 = load i64*, i64** @RR, align 8
  %78 = load i32, i32* %15, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i64, i64* %77, i64 %79
  %81 = load i64, i64* %80, align 8
  %82 = getelementptr inbounds [16 x i64], [16 x i64]* %14, i64 0, i64 %81
  %83 = load i64, i64* %82, align 8
  %84 = add nsw i64 %76, %83
  %85 = load i32, i32* %15, align 4
  %86 = call i64 @KK(i32 %85)
  %87 = add nsw i64 %84, %86
  %88 = call i64 @ROLSS(i32 %70, i64 %87)
  store i64 %88, i64* %13, align 8
  %89 = load i64, i64* %12, align 8
  store i64 %89, i64* %9, align 8
  %90 = load i64, i64* %11, align 8
  store i64 %90, i64* %12, align 8
  %91 = load i64, i64* %10, align 8
  store i64 %91, i64* %11, align 8
  %92 = load i64, i64* %13, align 8
  store i64 %92, i64* %10, align 8
  br label %93

93:                                               ; preds = %46
  %94 = load i32, i32* %15, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %15, align 4
  br label %43

96:                                               ; preds = %43
  store i32 16, i32* %15, align 4
  br label %97

97:                                               ; preds = %147, %96
  %98 = load i32, i32* %15, align 4
  %99 = icmp slt i32 %98, 32
  br i1 %99, label %100, label %150

100:                                              ; preds = %97
  %101 = load i32, i32* %15, align 4
  %102 = load i64, i64* %5, align 8
  %103 = load i64, i64* %6, align 8
  %104 = load i64, i64* %7, align 8
  %105 = load i64, i64* %8, align 8
  %106 = call i64 @F1(i64 %103, i64 %104, i64 %105)
  %107 = add nsw i64 %102, %106
  %108 = load i64*, i64** @R, align 8
  %109 = load i32, i32* %15, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i64, i64* %108, i64 %110
  %112 = load i64, i64* %111, align 8
  %113 = getelementptr inbounds [16 x i64], [16 x i64]* %14, i64 0, i64 %112
  %114 = load i64, i64* %113, align 8
  %115 = add nsw i64 %107, %114
  %116 = load i32, i32* %15, align 4
  %117 = call i64 @K(i32 %116)
  %118 = add nsw i64 %115, %117
  %119 = call i64 @ROLS(i32 %101, i64 %118)
  store i64 %119, i64* %13, align 8
  %120 = load i64, i64* %8, align 8
  store i64 %120, i64* %5, align 8
  %121 = load i64, i64* %7, align 8
  store i64 %121, i64* %8, align 8
  %122 = load i64, i64* %6, align 8
  store i64 %122, i64* %7, align 8
  %123 = load i64, i64* %13, align 8
  store i64 %123, i64* %6, align 8
  %124 = load i32, i32* %15, align 4
  %125 = load i64, i64* %9, align 8
  %126 = load i64, i64* %10, align 8
  %127 = load i64, i64* %11, align 8
  %128 = load i64, i64* %12, align 8
  %129 = call i64 @F2(i64 %126, i64 %127, i64 %128)
  %130 = add nsw i64 %125, %129
  %131 = load i64*, i64** @RR, align 8
  %132 = load i32, i32* %15, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i64, i64* %131, i64 %133
  %135 = load i64, i64* %134, align 8
  %136 = getelementptr inbounds [16 x i64], [16 x i64]* %14, i64 0, i64 %135
  %137 = load i64, i64* %136, align 8
  %138 = add nsw i64 %130, %137
  %139 = load i32, i32* %15, align 4
  %140 = call i64 @KK(i32 %139)
  %141 = add nsw i64 %138, %140
  %142 = call i64 @ROLSS(i32 %124, i64 %141)
  store i64 %142, i64* %13, align 8
  %143 = load i64, i64* %12, align 8
  store i64 %143, i64* %9, align 8
  %144 = load i64, i64* %11, align 8
  store i64 %144, i64* %12, align 8
  %145 = load i64, i64* %10, align 8
  store i64 %145, i64* %11, align 8
  %146 = load i64, i64* %13, align 8
  store i64 %146, i64* %10, align 8
  br label %147

147:                                              ; preds = %100
  %148 = load i32, i32* %15, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %15, align 4
  br label %97

150:                                              ; preds = %97
  store i32 32, i32* %15, align 4
  br label %151

151:                                              ; preds = %201, %150
  %152 = load i32, i32* %15, align 4
  %153 = icmp slt i32 %152, 48
  br i1 %153, label %154, label %204

154:                                              ; preds = %151
  %155 = load i32, i32* %15, align 4
  %156 = load i64, i64* %5, align 8
  %157 = load i64, i64* %6, align 8
  %158 = load i64, i64* %7, align 8
  %159 = load i64, i64* %8, align 8
  %160 = call i64 @F2(i64 %157, i64 %158, i64 %159)
  %161 = add nsw i64 %156, %160
  %162 = load i64*, i64** @R, align 8
  %163 = load i32, i32* %15, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i64, i64* %162, i64 %164
  %166 = load i64, i64* %165, align 8
  %167 = getelementptr inbounds [16 x i64], [16 x i64]* %14, i64 0, i64 %166
  %168 = load i64, i64* %167, align 8
  %169 = add nsw i64 %161, %168
  %170 = load i32, i32* %15, align 4
  %171 = call i64 @K(i32 %170)
  %172 = add nsw i64 %169, %171
  %173 = call i64 @ROLS(i32 %155, i64 %172)
  store i64 %173, i64* %13, align 8
  %174 = load i64, i64* %8, align 8
  store i64 %174, i64* %5, align 8
  %175 = load i64, i64* %7, align 8
  store i64 %175, i64* %8, align 8
  %176 = load i64, i64* %6, align 8
  store i64 %176, i64* %7, align 8
  %177 = load i64, i64* %13, align 8
  store i64 %177, i64* %6, align 8
  %178 = load i32, i32* %15, align 4
  %179 = load i64, i64* %9, align 8
  %180 = load i64, i64* %10, align 8
  %181 = load i64, i64* %11, align 8
  %182 = load i64, i64* %12, align 8
  %183 = call i64 @F1(i64 %180, i64 %181, i64 %182)
  %184 = add nsw i64 %179, %183
  %185 = load i64*, i64** @RR, align 8
  %186 = load i32, i32* %15, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i64, i64* %185, i64 %187
  %189 = load i64, i64* %188, align 8
  %190 = getelementptr inbounds [16 x i64], [16 x i64]* %14, i64 0, i64 %189
  %191 = load i64, i64* %190, align 8
  %192 = add nsw i64 %184, %191
  %193 = load i32, i32* %15, align 4
  %194 = call i64 @KK(i32 %193)
  %195 = add nsw i64 %192, %194
  %196 = call i64 @ROLSS(i32 %178, i64 %195)
  store i64 %196, i64* %13, align 8
  %197 = load i64, i64* %12, align 8
  store i64 %197, i64* %9, align 8
  %198 = load i64, i64* %11, align 8
  store i64 %198, i64* %12, align 8
  %199 = load i64, i64* %10, align 8
  store i64 %199, i64* %11, align 8
  %200 = load i64, i64* %13, align 8
  store i64 %200, i64* %10, align 8
  br label %201

201:                                              ; preds = %154
  %202 = load i32, i32* %15, align 4
  %203 = add nsw i32 %202, 1
  store i32 %203, i32* %15, align 4
  br label %151

204:                                              ; preds = %151
  store i32 48, i32* %15, align 4
  br label %205

205:                                              ; preds = %255, %204
  %206 = load i32, i32* %15, align 4
  %207 = icmp slt i32 %206, 64
  br i1 %207, label %208, label %258

208:                                              ; preds = %205
  %209 = load i32, i32* %15, align 4
  %210 = load i64, i64* %5, align 8
  %211 = load i64, i64* %6, align 8
  %212 = load i64, i64* %7, align 8
  %213 = load i64, i64* %8, align 8
  %214 = call i64 @F3(i64 %211, i64 %212, i64 %213)
  %215 = add nsw i64 %210, %214
  %216 = load i64*, i64** @R, align 8
  %217 = load i32, i32* %15, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds i64, i64* %216, i64 %218
  %220 = load i64, i64* %219, align 8
  %221 = getelementptr inbounds [16 x i64], [16 x i64]* %14, i64 0, i64 %220
  %222 = load i64, i64* %221, align 8
  %223 = add nsw i64 %215, %222
  %224 = load i32, i32* %15, align 4
  %225 = call i64 @K(i32 %224)
  %226 = add nsw i64 %223, %225
  %227 = call i64 @ROLS(i32 %209, i64 %226)
  store i64 %227, i64* %13, align 8
  %228 = load i64, i64* %8, align 8
  store i64 %228, i64* %5, align 8
  %229 = load i64, i64* %7, align 8
  store i64 %229, i64* %8, align 8
  %230 = load i64, i64* %6, align 8
  store i64 %230, i64* %7, align 8
  %231 = load i64, i64* %13, align 8
  store i64 %231, i64* %6, align 8
  %232 = load i32, i32* %15, align 4
  %233 = load i64, i64* %9, align 8
  %234 = load i64, i64* %10, align 8
  %235 = load i64, i64* %11, align 8
  %236 = load i64, i64* %12, align 8
  %237 = call i64 @F0(i64 %234, i64 %235, i64 %236)
  %238 = add nsw i64 %233, %237
  %239 = load i64*, i64** @RR, align 8
  %240 = load i32, i32* %15, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds i64, i64* %239, i64 %241
  %243 = load i64, i64* %242, align 8
  %244 = getelementptr inbounds [16 x i64], [16 x i64]* %14, i64 0, i64 %243
  %245 = load i64, i64* %244, align 8
  %246 = add nsw i64 %238, %245
  %247 = load i32, i32* %15, align 4
  %248 = call i64 @KK(i32 %247)
  %249 = add nsw i64 %246, %248
  %250 = call i64 @ROLSS(i32 %232, i64 %249)
  store i64 %250, i64* %13, align 8
  %251 = load i64, i64* %12, align 8
  store i64 %251, i64* %9, align 8
  %252 = load i64, i64* %11, align 8
  store i64 %252, i64* %12, align 8
  %253 = load i64, i64* %10, align 8
  store i64 %253, i64* %11, align 8
  %254 = load i64, i64* %13, align 8
  store i64 %254, i64* %10, align 8
  br label %255

255:                                              ; preds = %208
  %256 = load i32, i32* %15, align 4
  %257 = add nsw i32 %256, 1
  store i32 %257, i32* %15, align 4
  br label %205

258:                                              ; preds = %205
  %259 = load i64*, i64** %3, align 8
  %260 = getelementptr inbounds i64, i64* %259, i64 1
  %261 = load i64, i64* %260, align 8
  %262 = load i64, i64* %7, align 8
  %263 = add nsw i64 %261, %262
  %264 = load i64, i64* %12, align 8
  %265 = add nsw i64 %263, %264
  store i64 %265, i64* %13, align 8
  %266 = load i64*, i64** %3, align 8
  %267 = getelementptr inbounds i64, i64* %266, i64 2
  %268 = load i64, i64* %267, align 8
  %269 = load i64, i64* %8, align 8
  %270 = add nsw i64 %268, %269
  %271 = load i64, i64* %9, align 8
  %272 = add nsw i64 %270, %271
  %273 = load i64*, i64** %3, align 8
  %274 = getelementptr inbounds i64, i64* %273, i64 1
  store i64 %272, i64* %274, align 8
  %275 = load i64*, i64** %3, align 8
  %276 = getelementptr inbounds i64, i64* %275, i64 3
  %277 = load i64, i64* %276, align 8
  %278 = load i64, i64* %5, align 8
  %279 = add nsw i64 %277, %278
  %280 = load i64, i64* %10, align 8
  %281 = add nsw i64 %279, %280
  %282 = load i64*, i64** %3, align 8
  %283 = getelementptr inbounds i64, i64* %282, i64 2
  store i64 %281, i64* %283, align 8
  %284 = load i64*, i64** %3, align 8
  %285 = getelementptr inbounds i64, i64* %284, i64 0
  %286 = load i64, i64* %285, align 8
  %287 = load i64, i64* %6, align 8
  %288 = add nsw i64 %286, %287
  %289 = load i64, i64* %11, align 8
  %290 = add nsw i64 %288, %289
  %291 = load i64*, i64** %3, align 8
  %292 = getelementptr inbounds i64, i64* %291, i64 3
  store i64 %290, i64* %292, align 8
  %293 = load i64, i64* %13, align 8
  %294 = load i64*, i64** %3, align 8
  %295 = getelementptr inbounds i64, i64* %294, i64 0
  store i64 %293, i64* %295, align 8
  store i64 0, i64* %13, align 8
  %296 = getelementptr inbounds [16 x i64], [16 x i64]* %14, i64 0, i64 0
  %297 = call i32 @ZEND_SECURE_ZERO(i64* %296, i32 128)
  ret void
}

declare dso_local i32 @RIPEMDDecode(i64*, i8*, i32) #1

declare dso_local i64 @ROLS(i32, i64) #1

declare dso_local i64 @F0(i64, i64, i64) #1

declare dso_local i64 @K(i32) #1

declare dso_local i64 @ROLSS(i32, i64) #1

declare dso_local i64 @F3(i64, i64, i64) #1

declare dso_local i64 @KK(i32) #1

declare dso_local i64 @F1(i64, i64, i64) #1

declare dso_local i64 @F2(i64, i64, i64) #1

declare dso_local i32 @ZEND_SECURE_ZERO(i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
