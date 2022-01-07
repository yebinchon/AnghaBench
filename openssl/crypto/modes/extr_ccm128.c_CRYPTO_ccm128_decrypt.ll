; ModuleID = '/home/carl/AnghaBench/openssl/crypto/modes/extr_ccm128.c_CRYPTO_ccm128_decrypt.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/modes/extr_ccm128.c_CRYPTO_ccm128_decrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__, %struct.TYPE_5__, i8*, i32 (i8*, i8*, i8*)* }
%struct.TYPE_6__ = type { i8* }
%struct.TYPE_5__ = type { i8*, i32* }
%union.anon = type { [2 x i32], [8 x i8] }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CRYPTO_ccm128_decrypt(%struct.TYPE_7__* %0, i8* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8, align 1
  %14 = alloca i32 (i8*, i8*, i8*)*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca %union.anon, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 0
  %22 = load i8, i8* %21, align 1
  store i8 %22, i8* %13, align 1
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 3
  %25 = load i32 (i8*, i8*, i8*)*, i32 (i8*, i8*, i8*)** %24, align 8
  store i32 (i8*, i8*, i8*)* %25, i32 (i8*, i8*, i8*)** %14, align 8
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 2
  %28 = load i8*, i8** %27, align 8
  store i8* %28, i8** %15, align 8
  %29 = load i8, i8* %13, align 1
  %30 = zext i8 %29 to i32
  %31 = and i32 %30, 64
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %45, label %33

33:                                               ; preds = %4
  %34 = load i32 (i8*, i8*, i8*)*, i32 (i8*, i8*, i8*)** %14, align 8
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  %43 = load i8*, i8** %15, align 8
  %44 = call i32 %34(i8* %38, i8* %42, i8* %43)
  br label %45

45:                                               ; preds = %33, %4
  %46 = load i8, i8* %13, align 1
  %47 = zext i8 %46 to i32
  %48 = and i32 %47, 7
  store i32 %48, i32* %12, align 4
  %49 = trunc i32 %48 to i8
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i8*, i8** %52, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 0
  store i8 %49, i8* %54, align 1
  store i64 0, i64* %10, align 8
  %55 = load i32, i32* %12, align 4
  %56 = sub i32 15, %55
  store i32 %56, i32* %11, align 4
  br label %57

57:                                               ; preds = %81, %45
  %58 = load i32, i32* %11, align 4
  %59 = icmp ult i32 %58, 15
  br i1 %59, label %60, label %84

60:                                               ; preds = %57
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = load i8*, i8** %63, align 8
  %65 = load i32, i32* %11, align 4
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds i8, i8* %64, i64 %66
  %68 = load i8, i8* %67, align 1
  %69 = zext i8 %68 to i64
  %70 = load i64, i64* %10, align 8
  %71 = or i64 %70, %69
  store i64 %71, i64* %10, align 8
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = load i8*, i8** %74, align 8
  %76 = load i32, i32* %11, align 4
  %77 = zext i32 %76 to i64
  %78 = getelementptr inbounds i8, i8* %75, i64 %77
  store i8 0, i8* %78, align 1
  %79 = load i64, i64* %10, align 8
  %80 = shl i64 %79, 8
  store i64 %80, i64* %10, align 8
  br label %81

81:                                               ; preds = %60
  %82 = load i32, i32* %11, align 4
  %83 = add i32 %82, 1
  store i32 %83, i32* %11, align 4
  br label %57

84:                                               ; preds = %57
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 0
  %88 = load i8*, i8** %87, align 8
  %89 = getelementptr inbounds i8, i8* %88, i64 15
  %90 = load i8, i8* %89, align 1
  %91 = zext i8 %90 to i64
  %92 = load i64, i64* %10, align 8
  %93 = or i64 %92, %91
  store i64 %93, i64* %10, align 8
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 0
  %97 = load i8*, i8** %96, align 8
  %98 = getelementptr inbounds i8, i8* %97, i64 15
  store i8 1, i8* %98, align 1
  %99 = load i64, i64* %10, align 8
  %100 = load i64, i64* %9, align 8
  %101 = icmp ne i64 %99, %100
  br i1 %101, label %102, label %103

102:                                              ; preds = %84
  store i32 -1, i32* %5, align 4
  br label %292

103:                                              ; preds = %84
  br label %104

104:                                              ; preds = %107, %103
  %105 = load i64, i64* %9, align 8
  %106 = icmp uge i64 %105, 16
  br i1 %106, label %107, label %175

107:                                              ; preds = %104
  %108 = load i32 (i8*, i8*, i8*)*, i32 (i8*, i8*, i8*)** %14, align 8
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 0
  %112 = load i8*, i8** %111, align 8
  %113 = bitcast %union.anon* %16 to [16 x i8]*
  %114 = getelementptr inbounds [16 x i8], [16 x i8]* %113, i64 0, i64 0
  %115 = load i8*, i8** %15, align 8
  %116 = call i32 %108(i8* %112, i8* %114, i8* %115)
  %117 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 0
  %120 = load i8*, i8** %119, align 8
  %121 = call i32 @ctr64_inc(i8* %120)
  %122 = bitcast %union.anon* %16 to [2 x i32]*
  %123 = getelementptr inbounds [2 x i32], [2 x i32]* %122, i64 0, i64 0
  %124 = load i32, i32* %123, align 4
  %125 = load i8*, i8** %7, align 8
  %126 = bitcast i8* %125 to i32*
  %127 = getelementptr inbounds i32, i32* %126, i64 0
  %128 = load i32, i32* %127, align 4
  %129 = xor i32 %124, %128
  %130 = load i8*, i8** %8, align 8
  %131 = bitcast i8* %130 to i32*
  %132 = getelementptr inbounds i32, i32* %131, i64 0
  store i32 %129, i32* %132, align 4
  %133 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %133, i32 0, i32 1
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %134, i32 0, i32 1
  %136 = load i32*, i32** %135, align 8
  %137 = getelementptr inbounds i32, i32* %136, i64 0
  %138 = load i32, i32* %137, align 4
  %139 = xor i32 %138, %129
  store i32 %139, i32* %137, align 4
  %140 = bitcast %union.anon* %16 to [2 x i32]*
  %141 = getelementptr inbounds [2 x i32], [2 x i32]* %140, i64 0, i64 1
  %142 = load i32, i32* %141, align 4
  %143 = load i8*, i8** %7, align 8
  %144 = bitcast i8* %143 to i32*
  %145 = getelementptr inbounds i32, i32* %144, i64 1
  %146 = load i32, i32* %145, align 4
  %147 = xor i32 %142, %146
  %148 = load i8*, i8** %8, align 8
  %149 = bitcast i8* %148 to i32*
  %150 = getelementptr inbounds i32, i32* %149, i64 1
  store i32 %147, i32* %150, align 4
  %151 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %152 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %151, i32 0, i32 1
  %153 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %152, i32 0, i32 1
  %154 = load i32*, i32** %153, align 8
  %155 = getelementptr inbounds i32, i32* %154, i64 1
  %156 = load i32, i32* %155, align 4
  %157 = xor i32 %156, %147
  store i32 %157, i32* %155, align 4
  %158 = load i32 (i8*, i8*, i8*)*, i32 (i8*, i8*, i8*)** %14, align 8
  %159 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %160 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %159, i32 0, i32 1
  %161 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %160, i32 0, i32 0
  %162 = load i8*, i8** %161, align 8
  %163 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %164 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %163, i32 0, i32 1
  %165 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %164, i32 0, i32 0
  %166 = load i8*, i8** %165, align 8
  %167 = load i8*, i8** %15, align 8
  %168 = call i32 %158(i8* %162, i8* %166, i8* %167)
  %169 = load i8*, i8** %7, align 8
  %170 = getelementptr inbounds i8, i8* %169, i64 16
  store i8* %170, i8** %7, align 8
  %171 = load i8*, i8** %8, align 8
  %172 = getelementptr inbounds i8, i8* %171, i64 16
  store i8* %172, i8** %8, align 8
  %173 = load i64, i64* %9, align 8
  %174 = sub i64 %173, 16
  store i64 %174, i64* %9, align 8
  br label %104

175:                                              ; preds = %104
  %176 = load i64, i64* %9, align 8
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %239

178:                                              ; preds = %175
  %179 = load i32 (i8*, i8*, i8*)*, i32 (i8*, i8*, i8*)** %14, align 8
  %180 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %181 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %181, i32 0, i32 0
  %183 = load i8*, i8** %182, align 8
  %184 = bitcast %union.anon* %16 to [16 x i8]*
  %185 = getelementptr inbounds [16 x i8], [16 x i8]* %184, i64 0, i64 0
  %186 = load i8*, i8** %15, align 8
  %187 = call i32 %179(i8* %183, i8* %185, i8* %186)
  store i32 0, i32* %11, align 4
  br label %188

188:                                              ; preds = %224, %178
  %189 = load i32, i32* %11, align 4
  %190 = zext i32 %189 to i64
  %191 = load i64, i64* %9, align 8
  %192 = icmp ult i64 %190, %191
  br i1 %192, label %193, label %227

193:                                              ; preds = %188
  %194 = bitcast %union.anon* %16 to [16 x i8]*
  %195 = load i32, i32* %11, align 4
  %196 = zext i32 %195 to i64
  %197 = getelementptr inbounds [16 x i8], [16 x i8]* %194, i64 0, i64 %196
  %198 = load i8, i8* %197, align 1
  %199 = zext i8 %198 to i32
  %200 = load i8*, i8** %7, align 8
  %201 = load i32, i32* %11, align 4
  %202 = zext i32 %201 to i64
  %203 = getelementptr inbounds i8, i8* %200, i64 %202
  %204 = load i8, i8* %203, align 1
  %205 = zext i8 %204 to i32
  %206 = xor i32 %199, %205
  %207 = trunc i32 %206 to i8
  %208 = load i8*, i8** %8, align 8
  %209 = load i32, i32* %11, align 4
  %210 = zext i32 %209 to i64
  %211 = getelementptr inbounds i8, i8* %208, i64 %210
  store i8 %207, i8* %211, align 1
  %212 = zext i8 %207 to i32
  %213 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %214 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %213, i32 0, i32 1
  %215 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %214, i32 0, i32 0
  %216 = load i8*, i8** %215, align 8
  %217 = load i32, i32* %11, align 4
  %218 = zext i32 %217 to i64
  %219 = getelementptr inbounds i8, i8* %216, i64 %218
  %220 = load i8, i8* %219, align 1
  %221 = zext i8 %220 to i32
  %222 = xor i32 %221, %212
  %223 = trunc i32 %222 to i8
  store i8 %223, i8* %219, align 1
  br label %224

224:                                              ; preds = %193
  %225 = load i32, i32* %11, align 4
  %226 = add i32 %225, 1
  store i32 %226, i32* %11, align 4
  br label %188

227:                                              ; preds = %188
  %228 = load i32 (i8*, i8*, i8*)*, i32 (i8*, i8*, i8*)** %14, align 8
  %229 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %230 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %229, i32 0, i32 1
  %231 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %230, i32 0, i32 0
  %232 = load i8*, i8** %231, align 8
  %233 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %234 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %233, i32 0, i32 1
  %235 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %234, i32 0, i32 0
  %236 = load i8*, i8** %235, align 8
  %237 = load i8*, i8** %15, align 8
  %238 = call i32 %228(i8* %232, i8* %236, i8* %237)
  br label %239

239:                                              ; preds = %227, %175
  %240 = load i32, i32* %12, align 4
  %241 = sub i32 15, %240
  store i32 %241, i32* %11, align 4
  br label %242

242:                                              ; preds = %253, %239
  %243 = load i32, i32* %11, align 4
  %244 = icmp ult i32 %243, 16
  br i1 %244, label %245, label %256

245:                                              ; preds = %242
  %246 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %247 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %246, i32 0, i32 0
  %248 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %247, i32 0, i32 0
  %249 = load i8*, i8** %248, align 8
  %250 = load i32, i32* %11, align 4
  %251 = zext i32 %250 to i64
  %252 = getelementptr inbounds i8, i8* %249, i64 %251
  store i8 0, i8* %252, align 1
  br label %253

253:                                              ; preds = %245
  %254 = load i32, i32* %11, align 4
  %255 = add i32 %254, 1
  store i32 %255, i32* %11, align 4
  br label %242

256:                                              ; preds = %242
  %257 = load i32 (i8*, i8*, i8*)*, i32 (i8*, i8*, i8*)** %14, align 8
  %258 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %259 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %258, i32 0, i32 0
  %260 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %259, i32 0, i32 0
  %261 = load i8*, i8** %260, align 8
  %262 = bitcast %union.anon* %16 to [16 x i8]*
  %263 = getelementptr inbounds [16 x i8], [16 x i8]* %262, i64 0, i64 0
  %264 = load i8*, i8** %15, align 8
  %265 = call i32 %257(i8* %261, i8* %263, i8* %264)
  %266 = bitcast %union.anon* %16 to [2 x i32]*
  %267 = getelementptr inbounds [2 x i32], [2 x i32]* %266, i64 0, i64 0
  %268 = load i32, i32* %267, align 4
  %269 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %270 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %269, i32 0, i32 1
  %271 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %270, i32 0, i32 1
  %272 = load i32*, i32** %271, align 8
  %273 = getelementptr inbounds i32, i32* %272, i64 0
  %274 = load i32, i32* %273, align 4
  %275 = xor i32 %274, %268
  store i32 %275, i32* %273, align 4
  %276 = bitcast %union.anon* %16 to [2 x i32]*
  %277 = getelementptr inbounds [2 x i32], [2 x i32]* %276, i64 0, i64 1
  %278 = load i32, i32* %277, align 4
  %279 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %280 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %279, i32 0, i32 1
  %281 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %280, i32 0, i32 1
  %282 = load i32*, i32** %281, align 8
  %283 = getelementptr inbounds i32, i32* %282, i64 1
  %284 = load i32, i32* %283, align 4
  %285 = xor i32 %284, %278
  store i32 %285, i32* %283, align 4
  %286 = load i8, i8* %13, align 1
  %287 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %288 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %287, i32 0, i32 0
  %289 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %288, i32 0, i32 0
  %290 = load i8*, i8** %289, align 8
  %291 = getelementptr inbounds i8, i8* %290, i64 0
  store i8 %286, i8* %291, align 1
  store i32 0, i32* %5, align 4
  br label %292

292:                                              ; preds = %256, %102
  %293 = load i32, i32* %5, align 4
  ret i32 %293
}

declare dso_local i32 @ctr64_inc(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
