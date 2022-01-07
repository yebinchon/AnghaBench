; ModuleID = '/home/carl/AnghaBench/php-src/ext/hash/extr_hash_ripemd.c_RIPEMD256Transform.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/hash/extr_hash_ripemd.c_RIPEMD256Transform.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@R = common dso_local global i64* null, align 8
@RR = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64*, i8*)* @RIPEMD256Transform to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @RIPEMD256Transform(i64* %0, i8* %1) #0 {
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
  %29 = getelementptr inbounds i64, i64* %28, i64 4
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %9, align 8
  %31 = load i64*, i64** %3, align 8
  %32 = getelementptr inbounds i64, i64* %31, i64 5
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %10, align 8
  %34 = load i64*, i64** %3, align 8
  %35 = getelementptr inbounds i64, i64* %34, i64 6
  %36 = load i64, i64* %35, align 8
  store i64 %36, i64* %11, align 8
  %37 = load i64*, i64** %3, align 8
  %38 = getelementptr inbounds i64, i64* %37, i64 7
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
  %97 = load i64, i64* %5, align 8
  store i64 %97, i64* %13, align 8
  %98 = load i64, i64* %9, align 8
  store i64 %98, i64* %5, align 8
  %99 = load i64, i64* %13, align 8
  store i64 %99, i64* %9, align 8
  store i32 16, i32* %15, align 4
  br label %100

100:                                              ; preds = %150, %96
  %101 = load i32, i32* %15, align 4
  %102 = icmp slt i32 %101, 32
  br i1 %102, label %103, label %153

103:                                              ; preds = %100
  %104 = load i32, i32* %15, align 4
  %105 = load i64, i64* %5, align 8
  %106 = load i64, i64* %6, align 8
  %107 = load i64, i64* %7, align 8
  %108 = load i64, i64* %8, align 8
  %109 = call i64 @F1(i64 %106, i64 %107, i64 %108)
  %110 = add nsw i64 %105, %109
  %111 = load i64*, i64** @R, align 8
  %112 = load i32, i32* %15, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i64, i64* %111, i64 %113
  %115 = load i64, i64* %114, align 8
  %116 = getelementptr inbounds [16 x i64], [16 x i64]* %14, i64 0, i64 %115
  %117 = load i64, i64* %116, align 8
  %118 = add nsw i64 %110, %117
  %119 = load i32, i32* %15, align 4
  %120 = call i64 @K(i32 %119)
  %121 = add nsw i64 %118, %120
  %122 = call i64 @ROLS(i32 %104, i64 %121)
  store i64 %122, i64* %13, align 8
  %123 = load i64, i64* %8, align 8
  store i64 %123, i64* %5, align 8
  %124 = load i64, i64* %7, align 8
  store i64 %124, i64* %8, align 8
  %125 = load i64, i64* %6, align 8
  store i64 %125, i64* %7, align 8
  %126 = load i64, i64* %13, align 8
  store i64 %126, i64* %6, align 8
  %127 = load i32, i32* %15, align 4
  %128 = load i64, i64* %9, align 8
  %129 = load i64, i64* %10, align 8
  %130 = load i64, i64* %11, align 8
  %131 = load i64, i64* %12, align 8
  %132 = call i64 @F2(i64 %129, i64 %130, i64 %131)
  %133 = add nsw i64 %128, %132
  %134 = load i64*, i64** @RR, align 8
  %135 = load i32, i32* %15, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i64, i64* %134, i64 %136
  %138 = load i64, i64* %137, align 8
  %139 = getelementptr inbounds [16 x i64], [16 x i64]* %14, i64 0, i64 %138
  %140 = load i64, i64* %139, align 8
  %141 = add nsw i64 %133, %140
  %142 = load i32, i32* %15, align 4
  %143 = call i64 @KK(i32 %142)
  %144 = add nsw i64 %141, %143
  %145 = call i64 @ROLSS(i32 %127, i64 %144)
  store i64 %145, i64* %13, align 8
  %146 = load i64, i64* %12, align 8
  store i64 %146, i64* %9, align 8
  %147 = load i64, i64* %11, align 8
  store i64 %147, i64* %12, align 8
  %148 = load i64, i64* %10, align 8
  store i64 %148, i64* %11, align 8
  %149 = load i64, i64* %13, align 8
  store i64 %149, i64* %10, align 8
  br label %150

150:                                              ; preds = %103
  %151 = load i32, i32* %15, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %15, align 4
  br label %100

153:                                              ; preds = %100
  %154 = load i64, i64* %6, align 8
  store i64 %154, i64* %13, align 8
  %155 = load i64, i64* %10, align 8
  store i64 %155, i64* %6, align 8
  %156 = load i64, i64* %13, align 8
  store i64 %156, i64* %10, align 8
  store i32 32, i32* %15, align 4
  br label %157

157:                                              ; preds = %207, %153
  %158 = load i32, i32* %15, align 4
  %159 = icmp slt i32 %158, 48
  br i1 %159, label %160, label %210

160:                                              ; preds = %157
  %161 = load i32, i32* %15, align 4
  %162 = load i64, i64* %5, align 8
  %163 = load i64, i64* %6, align 8
  %164 = load i64, i64* %7, align 8
  %165 = load i64, i64* %8, align 8
  %166 = call i64 @F2(i64 %163, i64 %164, i64 %165)
  %167 = add nsw i64 %162, %166
  %168 = load i64*, i64** @R, align 8
  %169 = load i32, i32* %15, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i64, i64* %168, i64 %170
  %172 = load i64, i64* %171, align 8
  %173 = getelementptr inbounds [16 x i64], [16 x i64]* %14, i64 0, i64 %172
  %174 = load i64, i64* %173, align 8
  %175 = add nsw i64 %167, %174
  %176 = load i32, i32* %15, align 4
  %177 = call i64 @K(i32 %176)
  %178 = add nsw i64 %175, %177
  %179 = call i64 @ROLS(i32 %161, i64 %178)
  store i64 %179, i64* %13, align 8
  %180 = load i64, i64* %8, align 8
  store i64 %180, i64* %5, align 8
  %181 = load i64, i64* %7, align 8
  store i64 %181, i64* %8, align 8
  %182 = load i64, i64* %6, align 8
  store i64 %182, i64* %7, align 8
  %183 = load i64, i64* %13, align 8
  store i64 %183, i64* %6, align 8
  %184 = load i32, i32* %15, align 4
  %185 = load i64, i64* %9, align 8
  %186 = load i64, i64* %10, align 8
  %187 = load i64, i64* %11, align 8
  %188 = load i64, i64* %12, align 8
  %189 = call i64 @F1(i64 %186, i64 %187, i64 %188)
  %190 = add nsw i64 %185, %189
  %191 = load i64*, i64** @RR, align 8
  %192 = load i32, i32* %15, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i64, i64* %191, i64 %193
  %195 = load i64, i64* %194, align 8
  %196 = getelementptr inbounds [16 x i64], [16 x i64]* %14, i64 0, i64 %195
  %197 = load i64, i64* %196, align 8
  %198 = add nsw i64 %190, %197
  %199 = load i32, i32* %15, align 4
  %200 = call i64 @KK(i32 %199)
  %201 = add nsw i64 %198, %200
  %202 = call i64 @ROLSS(i32 %184, i64 %201)
  store i64 %202, i64* %13, align 8
  %203 = load i64, i64* %12, align 8
  store i64 %203, i64* %9, align 8
  %204 = load i64, i64* %11, align 8
  store i64 %204, i64* %12, align 8
  %205 = load i64, i64* %10, align 8
  store i64 %205, i64* %11, align 8
  %206 = load i64, i64* %13, align 8
  store i64 %206, i64* %10, align 8
  br label %207

207:                                              ; preds = %160
  %208 = load i32, i32* %15, align 4
  %209 = add nsw i32 %208, 1
  store i32 %209, i32* %15, align 4
  br label %157

210:                                              ; preds = %157
  %211 = load i64, i64* %7, align 8
  store i64 %211, i64* %13, align 8
  %212 = load i64, i64* %11, align 8
  store i64 %212, i64* %7, align 8
  %213 = load i64, i64* %13, align 8
  store i64 %213, i64* %11, align 8
  store i32 48, i32* %15, align 4
  br label %214

214:                                              ; preds = %264, %210
  %215 = load i32, i32* %15, align 4
  %216 = icmp slt i32 %215, 64
  br i1 %216, label %217, label %267

217:                                              ; preds = %214
  %218 = load i32, i32* %15, align 4
  %219 = load i64, i64* %5, align 8
  %220 = load i64, i64* %6, align 8
  %221 = load i64, i64* %7, align 8
  %222 = load i64, i64* %8, align 8
  %223 = call i64 @F3(i64 %220, i64 %221, i64 %222)
  %224 = add nsw i64 %219, %223
  %225 = load i64*, i64** @R, align 8
  %226 = load i32, i32* %15, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds i64, i64* %225, i64 %227
  %229 = load i64, i64* %228, align 8
  %230 = getelementptr inbounds [16 x i64], [16 x i64]* %14, i64 0, i64 %229
  %231 = load i64, i64* %230, align 8
  %232 = add nsw i64 %224, %231
  %233 = load i32, i32* %15, align 4
  %234 = call i64 @K(i32 %233)
  %235 = add nsw i64 %232, %234
  %236 = call i64 @ROLS(i32 %218, i64 %235)
  store i64 %236, i64* %13, align 8
  %237 = load i64, i64* %8, align 8
  store i64 %237, i64* %5, align 8
  %238 = load i64, i64* %7, align 8
  store i64 %238, i64* %8, align 8
  %239 = load i64, i64* %6, align 8
  store i64 %239, i64* %7, align 8
  %240 = load i64, i64* %13, align 8
  store i64 %240, i64* %6, align 8
  %241 = load i32, i32* %15, align 4
  %242 = load i64, i64* %9, align 8
  %243 = load i64, i64* %10, align 8
  %244 = load i64, i64* %11, align 8
  %245 = load i64, i64* %12, align 8
  %246 = call i64 @F0(i64 %243, i64 %244, i64 %245)
  %247 = add nsw i64 %242, %246
  %248 = load i64*, i64** @RR, align 8
  %249 = load i32, i32* %15, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds i64, i64* %248, i64 %250
  %252 = load i64, i64* %251, align 8
  %253 = getelementptr inbounds [16 x i64], [16 x i64]* %14, i64 0, i64 %252
  %254 = load i64, i64* %253, align 8
  %255 = add nsw i64 %247, %254
  %256 = load i32, i32* %15, align 4
  %257 = call i64 @KK(i32 %256)
  %258 = add nsw i64 %255, %257
  %259 = call i64 @ROLSS(i32 %241, i64 %258)
  store i64 %259, i64* %13, align 8
  %260 = load i64, i64* %12, align 8
  store i64 %260, i64* %9, align 8
  %261 = load i64, i64* %11, align 8
  store i64 %261, i64* %12, align 8
  %262 = load i64, i64* %10, align 8
  store i64 %262, i64* %11, align 8
  %263 = load i64, i64* %13, align 8
  store i64 %263, i64* %10, align 8
  br label %264

264:                                              ; preds = %217
  %265 = load i32, i32* %15, align 4
  %266 = add nsw i32 %265, 1
  store i32 %266, i32* %15, align 4
  br label %214

267:                                              ; preds = %214
  %268 = load i64, i64* %8, align 8
  store i64 %268, i64* %13, align 8
  %269 = load i64, i64* %12, align 8
  store i64 %269, i64* %8, align 8
  %270 = load i64, i64* %13, align 8
  store i64 %270, i64* %12, align 8
  %271 = load i64, i64* %5, align 8
  %272 = load i64*, i64** %3, align 8
  %273 = getelementptr inbounds i64, i64* %272, i64 0
  %274 = load i64, i64* %273, align 8
  %275 = add nsw i64 %274, %271
  store i64 %275, i64* %273, align 8
  %276 = load i64, i64* %6, align 8
  %277 = load i64*, i64** %3, align 8
  %278 = getelementptr inbounds i64, i64* %277, i64 1
  %279 = load i64, i64* %278, align 8
  %280 = add nsw i64 %279, %276
  store i64 %280, i64* %278, align 8
  %281 = load i64, i64* %7, align 8
  %282 = load i64*, i64** %3, align 8
  %283 = getelementptr inbounds i64, i64* %282, i64 2
  %284 = load i64, i64* %283, align 8
  %285 = add nsw i64 %284, %281
  store i64 %285, i64* %283, align 8
  %286 = load i64, i64* %8, align 8
  %287 = load i64*, i64** %3, align 8
  %288 = getelementptr inbounds i64, i64* %287, i64 3
  %289 = load i64, i64* %288, align 8
  %290 = add nsw i64 %289, %286
  store i64 %290, i64* %288, align 8
  %291 = load i64, i64* %9, align 8
  %292 = load i64*, i64** %3, align 8
  %293 = getelementptr inbounds i64, i64* %292, i64 4
  %294 = load i64, i64* %293, align 8
  %295 = add nsw i64 %294, %291
  store i64 %295, i64* %293, align 8
  %296 = load i64, i64* %10, align 8
  %297 = load i64*, i64** %3, align 8
  %298 = getelementptr inbounds i64, i64* %297, i64 5
  %299 = load i64, i64* %298, align 8
  %300 = add nsw i64 %299, %296
  store i64 %300, i64* %298, align 8
  %301 = load i64, i64* %11, align 8
  %302 = load i64*, i64** %3, align 8
  %303 = getelementptr inbounds i64, i64* %302, i64 6
  %304 = load i64, i64* %303, align 8
  %305 = add nsw i64 %304, %301
  store i64 %305, i64* %303, align 8
  %306 = load i64, i64* %12, align 8
  %307 = load i64*, i64** %3, align 8
  %308 = getelementptr inbounds i64, i64* %307, i64 7
  %309 = load i64, i64* %308, align 8
  %310 = add nsw i64 %309, %306
  store i64 %310, i64* %308, align 8
  store i64 0, i64* %13, align 8
  %311 = getelementptr inbounds [16 x i64], [16 x i64]* %14, i64 0, i64 0
  %312 = call i32 @ZEND_SECURE_ZERO(i64* %311, i32 128)
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
