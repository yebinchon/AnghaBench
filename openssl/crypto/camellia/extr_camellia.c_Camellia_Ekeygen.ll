; ModuleID = '/home/carl/AnghaBench/openssl/crypto/camellia/extr_camellia.c_Camellia_Ekeygen.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/camellia/extr_camellia.c_Camellia_Ekeygen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SIGMA = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Camellia_Ekeygen(i32 %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %12 = load i32*, i32** %6, align 8
  %13 = call i32 @GETU32(i32* %12)
  store i32 %13, i32* %8, align 4
  %14 = load i32*, i32** %7, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 0
  store i32 %13, i32* %15, align 4
  %16 = load i32*, i32** %6, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 4
  %18 = call i32 @GETU32(i32* %17)
  store i32 %18, i32* %9, align 4
  %19 = load i32*, i32** %7, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 1
  store i32 %18, i32* %20, align 4
  %21 = load i32*, i32** %6, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 8
  %23 = call i32 @GETU32(i32* %22)
  store i32 %23, i32* %10, align 4
  %24 = load i32*, i32** %7, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 2
  store i32 %23, i32* %25, align 4
  %26 = load i32*, i32** %6, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 12
  %28 = call i32 @GETU32(i32* %27)
  store i32 %28, i32* %11, align 4
  %29 = load i32*, i32** %7, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 3
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* %5, align 4
  %32 = icmp ne i32 %31, 128
  br i1 %32, label %33, label %87

33:                                               ; preds = %3
  %34 = load i32*, i32** %6, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 16
  %36 = call i32 @GETU32(i32* %35)
  store i32 %36, i32* %8, align 4
  %37 = load i32*, i32** %7, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 8
  store i32 %36, i32* %38, align 4
  %39 = load i32*, i32** %6, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 20
  %41 = call i32 @GETU32(i32* %40)
  store i32 %41, i32* %9, align 4
  %42 = load i32*, i32** %7, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 9
  store i32 %41, i32* %43, align 4
  %44 = load i32, i32* %5, align 4
  %45 = icmp eq i32 %44, 192
  br i1 %45, label %46, label %55

46:                                               ; preds = %33
  %47 = load i32, i32* %8, align 4
  %48 = xor i32 %47, -1
  store i32 %48, i32* %10, align 4
  %49 = load i32*, i32** %7, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 10
  store i32 %48, i32* %50, align 4
  %51 = load i32, i32* %9, align 4
  %52 = xor i32 %51, -1
  store i32 %52, i32* %11, align 4
  %53 = load i32*, i32** %7, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 11
  store i32 %52, i32* %54, align 4
  br label %66

55:                                               ; preds = %33
  %56 = load i32*, i32** %6, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 24
  %58 = call i32 @GETU32(i32* %57)
  store i32 %58, i32* %10, align 4
  %59 = load i32*, i32** %7, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 10
  store i32 %58, i32* %60, align 4
  %61 = load i32*, i32** %6, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 28
  %63 = call i32 @GETU32(i32* %62)
  store i32 %63, i32* %11, align 4
  %64 = load i32*, i32** %7, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 11
  store i32 %63, i32* %65, align 4
  br label %66

66:                                               ; preds = %55, %46
  %67 = load i32*, i32** %7, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %8, align 4
  %71 = xor i32 %70, %69
  store i32 %71, i32* %8, align 4
  %72 = load i32*, i32** %7, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 1
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %9, align 4
  %76 = xor i32 %75, %74
  store i32 %76, i32* %9, align 4
  %77 = load i32*, i32** %7, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 2
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* %10, align 4
  %81 = xor i32 %80, %79
  store i32 %81, i32* %10, align 4
  %82 = load i32*, i32** %7, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 3
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %11, align 4
  %86 = xor i32 %85, %84
  store i32 %86, i32* %11, align 4
  br label %87

87:                                               ; preds = %66, %3
  %88 = load i32, i32* %8, align 4
  %89 = load i32, i32* %9, align 4
  %90 = load i32, i32* %10, align 4
  %91 = load i32, i32* %11, align 4
  %92 = load i64, i64* @SIGMA, align 8
  %93 = add nsw i64 %92, 0
  %94 = call i32 @Camellia_Feistel(i32 %88, i32 %89, i32 %90, i32 %91, i64 %93)
  %95 = load i32, i32* %10, align 4
  %96 = load i32, i32* %11, align 4
  %97 = load i32, i32* %8, align 4
  %98 = load i32, i32* %9, align 4
  %99 = load i64, i64* @SIGMA, align 8
  %100 = add nsw i64 %99, 2
  %101 = call i32 @Camellia_Feistel(i32 %95, i32 %96, i32 %97, i32 %98, i64 %100)
  %102 = load i32*, i32** %7, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 0
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* %8, align 4
  %106 = xor i32 %105, %104
  store i32 %106, i32* %8, align 4
  %107 = load i32*, i32** %7, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 1
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* %9, align 4
  %111 = xor i32 %110, %109
  store i32 %111, i32* %9, align 4
  %112 = load i32*, i32** %7, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 2
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* %10, align 4
  %116 = xor i32 %115, %114
  store i32 %116, i32* %10, align 4
  %117 = load i32*, i32** %7, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 3
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* %11, align 4
  %121 = xor i32 %120, %119
  store i32 %121, i32* %11, align 4
  %122 = load i32, i32* %8, align 4
  %123 = load i32, i32* %9, align 4
  %124 = load i32, i32* %10, align 4
  %125 = load i32, i32* %11, align 4
  %126 = load i64, i64* @SIGMA, align 8
  %127 = add nsw i64 %126, 4
  %128 = call i32 @Camellia_Feistel(i32 %122, i32 %123, i32 %124, i32 %125, i64 %127)
  %129 = load i32, i32* %10, align 4
  %130 = load i32, i32* %11, align 4
  %131 = load i32, i32* %8, align 4
  %132 = load i32, i32* %9, align 4
  %133 = load i64, i64* @SIGMA, align 8
  %134 = add nsw i64 %133, 6
  %135 = call i32 @Camellia_Feistel(i32 %129, i32 %130, i32 %131, i32 %132, i64 %134)
  %136 = load i32, i32* %5, align 4
  %137 = icmp eq i32 %136, 128
  br i1 %137, label %138, label %355

138:                                              ; preds = %87
  %139 = load i32, i32* %8, align 4
  %140 = load i32*, i32** %7, align 8
  %141 = getelementptr inbounds i32, i32* %140, i64 4
  store i32 %139, i32* %141, align 4
  %142 = load i32, i32* %9, align 4
  %143 = load i32*, i32** %7, align 8
  %144 = getelementptr inbounds i32, i32* %143, i64 5
  store i32 %142, i32* %144, align 4
  %145 = load i32, i32* %10, align 4
  %146 = load i32*, i32** %7, align 8
  %147 = getelementptr inbounds i32, i32* %146, i64 6
  store i32 %145, i32* %147, align 4
  %148 = load i32, i32* %11, align 4
  %149 = load i32*, i32** %7, align 8
  %150 = getelementptr inbounds i32, i32* %149, i64 7
  store i32 %148, i32* %150, align 4
  %151 = load i32, i32* %8, align 4
  %152 = load i32, i32* %9, align 4
  %153 = load i32, i32* %10, align 4
  %154 = load i32, i32* %11, align 4
  %155 = call i32 @RotLeft128(i32 %151, i32 %152, i32 %153, i32 %154, i32 15)
  %156 = load i32, i32* %8, align 4
  %157 = load i32*, i32** %7, align 8
  %158 = getelementptr inbounds i32, i32* %157, i64 12
  store i32 %156, i32* %158, align 4
  %159 = load i32, i32* %9, align 4
  %160 = load i32*, i32** %7, align 8
  %161 = getelementptr inbounds i32, i32* %160, i64 13
  store i32 %159, i32* %161, align 4
  %162 = load i32, i32* %10, align 4
  %163 = load i32*, i32** %7, align 8
  %164 = getelementptr inbounds i32, i32* %163, i64 14
  store i32 %162, i32* %164, align 4
  %165 = load i32, i32* %11, align 4
  %166 = load i32*, i32** %7, align 8
  %167 = getelementptr inbounds i32, i32* %166, i64 15
  store i32 %165, i32* %167, align 4
  %168 = load i32, i32* %8, align 4
  %169 = load i32, i32* %9, align 4
  %170 = load i32, i32* %10, align 4
  %171 = load i32, i32* %11, align 4
  %172 = call i32 @RotLeft128(i32 %168, i32 %169, i32 %170, i32 %171, i32 15)
  %173 = load i32, i32* %8, align 4
  %174 = load i32*, i32** %7, align 8
  %175 = getelementptr inbounds i32, i32* %174, i64 16
  store i32 %173, i32* %175, align 4
  %176 = load i32, i32* %9, align 4
  %177 = load i32*, i32** %7, align 8
  %178 = getelementptr inbounds i32, i32* %177, i64 17
  store i32 %176, i32* %178, align 4
  %179 = load i32, i32* %10, align 4
  %180 = load i32*, i32** %7, align 8
  %181 = getelementptr inbounds i32, i32* %180, i64 18
  store i32 %179, i32* %181, align 4
  %182 = load i32, i32* %11, align 4
  %183 = load i32*, i32** %7, align 8
  %184 = getelementptr inbounds i32, i32* %183, i64 19
  store i32 %182, i32* %184, align 4
  %185 = load i32, i32* %8, align 4
  %186 = load i32, i32* %9, align 4
  %187 = load i32, i32* %10, align 4
  %188 = load i32, i32* %11, align 4
  %189 = call i32 @RotLeft128(i32 %185, i32 %186, i32 %187, i32 %188, i32 15)
  %190 = load i32, i32* %8, align 4
  %191 = load i32*, i32** %7, align 8
  %192 = getelementptr inbounds i32, i32* %191, i64 24
  store i32 %190, i32* %192, align 4
  %193 = load i32, i32* %9, align 4
  %194 = load i32*, i32** %7, align 8
  %195 = getelementptr inbounds i32, i32* %194, i64 25
  store i32 %193, i32* %195, align 4
  %196 = load i32, i32* %8, align 4
  %197 = load i32, i32* %9, align 4
  %198 = load i32, i32* %10, align 4
  %199 = load i32, i32* %11, align 4
  %200 = call i32 @RotLeft128(i32 %196, i32 %197, i32 %198, i32 %199, i32 15)
  %201 = load i32, i32* %8, align 4
  %202 = load i32*, i32** %7, align 8
  %203 = getelementptr inbounds i32, i32* %202, i64 28
  store i32 %201, i32* %203, align 4
  %204 = load i32, i32* %9, align 4
  %205 = load i32*, i32** %7, align 8
  %206 = getelementptr inbounds i32, i32* %205, i64 29
  store i32 %204, i32* %206, align 4
  %207 = load i32, i32* %10, align 4
  %208 = load i32*, i32** %7, align 8
  %209 = getelementptr inbounds i32, i32* %208, i64 30
  store i32 %207, i32* %209, align 4
  %210 = load i32, i32* %11, align 4
  %211 = load i32*, i32** %7, align 8
  %212 = getelementptr inbounds i32, i32* %211, i64 31
  store i32 %210, i32* %212, align 4
  %213 = load i32, i32* %9, align 4
  %214 = load i32, i32* %10, align 4
  %215 = load i32, i32* %11, align 4
  %216 = load i32, i32* %8, align 4
  %217 = call i32 @RotLeft128(i32 %213, i32 %214, i32 %215, i32 %216, i32 2)
  %218 = load i32, i32* %9, align 4
  %219 = load i32*, i32** %7, align 8
  %220 = getelementptr inbounds i32, i32* %219, i64 40
  store i32 %218, i32* %220, align 4
  %221 = load i32, i32* %10, align 4
  %222 = load i32*, i32** %7, align 8
  %223 = getelementptr inbounds i32, i32* %222, i64 41
  store i32 %221, i32* %223, align 4
  %224 = load i32, i32* %11, align 4
  %225 = load i32*, i32** %7, align 8
  %226 = getelementptr inbounds i32, i32* %225, i64 42
  store i32 %224, i32* %226, align 4
  %227 = load i32, i32* %8, align 4
  %228 = load i32*, i32** %7, align 8
  %229 = getelementptr inbounds i32, i32* %228, i64 43
  store i32 %227, i32* %229, align 4
  %230 = load i32, i32* %9, align 4
  %231 = load i32, i32* %10, align 4
  %232 = load i32, i32* %11, align 4
  %233 = load i32, i32* %8, align 4
  %234 = call i32 @RotLeft128(i32 %230, i32 %231, i32 %232, i32 %233, i32 17)
  %235 = load i32, i32* %9, align 4
  %236 = load i32*, i32** %7, align 8
  %237 = getelementptr inbounds i32, i32* %236, i64 48
  store i32 %235, i32* %237, align 4
  %238 = load i32, i32* %10, align 4
  %239 = load i32*, i32** %7, align 8
  %240 = getelementptr inbounds i32, i32* %239, i64 49
  store i32 %238, i32* %240, align 4
  %241 = load i32, i32* %11, align 4
  %242 = load i32*, i32** %7, align 8
  %243 = getelementptr inbounds i32, i32* %242, i64 50
  store i32 %241, i32* %243, align 4
  %244 = load i32, i32* %8, align 4
  %245 = load i32*, i32** %7, align 8
  %246 = getelementptr inbounds i32, i32* %245, i64 51
  store i32 %244, i32* %246, align 4
  %247 = load i32*, i32** %7, align 8
  %248 = getelementptr inbounds i32, i32* %247, i64 0
  %249 = load i32, i32* %248, align 4
  store i32 %249, i32* %8, align 4
  %250 = load i32*, i32** %7, align 8
  %251 = getelementptr inbounds i32, i32* %250, i64 1
  %252 = load i32, i32* %251, align 4
  store i32 %252, i32* %9, align 4
  %253 = load i32*, i32** %7, align 8
  %254 = getelementptr inbounds i32, i32* %253, i64 2
  %255 = load i32, i32* %254, align 4
  store i32 %255, i32* %10, align 4
  %256 = load i32*, i32** %7, align 8
  %257 = getelementptr inbounds i32, i32* %256, i64 3
  %258 = load i32, i32* %257, align 4
  store i32 %258, i32* %11, align 4
  %259 = load i32, i32* %8, align 4
  %260 = load i32, i32* %9, align 4
  %261 = load i32, i32* %10, align 4
  %262 = load i32, i32* %11, align 4
  %263 = call i32 @RotLeft128(i32 %259, i32 %260, i32 %261, i32 %262, i32 15)
  %264 = load i32, i32* %8, align 4
  %265 = load i32*, i32** %7, align 8
  %266 = getelementptr inbounds i32, i32* %265, i64 8
  store i32 %264, i32* %266, align 4
  %267 = load i32, i32* %9, align 4
  %268 = load i32*, i32** %7, align 8
  %269 = getelementptr inbounds i32, i32* %268, i64 9
  store i32 %267, i32* %269, align 4
  %270 = load i32, i32* %10, align 4
  %271 = load i32*, i32** %7, align 8
  %272 = getelementptr inbounds i32, i32* %271, i64 10
  store i32 %270, i32* %272, align 4
  %273 = load i32, i32* %11, align 4
  %274 = load i32*, i32** %7, align 8
  %275 = getelementptr inbounds i32, i32* %274, i64 11
  store i32 %273, i32* %275, align 4
  %276 = load i32, i32* %8, align 4
  %277 = load i32, i32* %9, align 4
  %278 = load i32, i32* %10, align 4
  %279 = load i32, i32* %11, align 4
  %280 = call i32 @RotLeft128(i32 %276, i32 %277, i32 %278, i32 %279, i32 30)
  %281 = load i32, i32* %8, align 4
  %282 = load i32*, i32** %7, align 8
  %283 = getelementptr inbounds i32, i32* %282, i64 20
  store i32 %281, i32* %283, align 4
  %284 = load i32, i32* %9, align 4
  %285 = load i32*, i32** %7, align 8
  %286 = getelementptr inbounds i32, i32* %285, i64 21
  store i32 %284, i32* %286, align 4
  %287 = load i32, i32* %10, align 4
  %288 = load i32*, i32** %7, align 8
  %289 = getelementptr inbounds i32, i32* %288, i64 22
  store i32 %287, i32* %289, align 4
  %290 = load i32, i32* %11, align 4
  %291 = load i32*, i32** %7, align 8
  %292 = getelementptr inbounds i32, i32* %291, i64 23
  store i32 %290, i32* %292, align 4
  %293 = load i32, i32* %8, align 4
  %294 = load i32, i32* %9, align 4
  %295 = load i32, i32* %10, align 4
  %296 = load i32, i32* %11, align 4
  %297 = call i32 @RotLeft128(i32 %293, i32 %294, i32 %295, i32 %296, i32 15)
  %298 = load i32, i32* %10, align 4
  %299 = load i32*, i32** %7, align 8
  %300 = getelementptr inbounds i32, i32* %299, i64 26
  store i32 %298, i32* %300, align 4
  %301 = load i32, i32* %11, align 4
  %302 = load i32*, i32** %7, align 8
  %303 = getelementptr inbounds i32, i32* %302, i64 27
  store i32 %301, i32* %303, align 4
  %304 = load i32, i32* %8, align 4
  %305 = load i32, i32* %9, align 4
  %306 = load i32, i32* %10, align 4
  %307 = load i32, i32* %11, align 4
  %308 = call i32 @RotLeft128(i32 %304, i32 %305, i32 %306, i32 %307, i32 17)
  %309 = load i32, i32* %8, align 4
  %310 = load i32*, i32** %7, align 8
  %311 = getelementptr inbounds i32, i32* %310, i64 32
  store i32 %309, i32* %311, align 4
  %312 = load i32, i32* %9, align 4
  %313 = load i32*, i32** %7, align 8
  %314 = getelementptr inbounds i32, i32* %313, i64 33
  store i32 %312, i32* %314, align 4
  %315 = load i32, i32* %10, align 4
  %316 = load i32*, i32** %7, align 8
  %317 = getelementptr inbounds i32, i32* %316, i64 34
  store i32 %315, i32* %317, align 4
  %318 = load i32, i32* %11, align 4
  %319 = load i32*, i32** %7, align 8
  %320 = getelementptr inbounds i32, i32* %319, i64 35
  store i32 %318, i32* %320, align 4
  %321 = load i32, i32* %8, align 4
  %322 = load i32, i32* %9, align 4
  %323 = load i32, i32* %10, align 4
  %324 = load i32, i32* %11, align 4
  %325 = call i32 @RotLeft128(i32 %321, i32 %322, i32 %323, i32 %324, i32 17)
  %326 = load i32, i32* %8, align 4
  %327 = load i32*, i32** %7, align 8
  %328 = getelementptr inbounds i32, i32* %327, i64 36
  store i32 %326, i32* %328, align 4
  %329 = load i32, i32* %9, align 4
  %330 = load i32*, i32** %7, align 8
  %331 = getelementptr inbounds i32, i32* %330, i64 37
  store i32 %329, i32* %331, align 4
  %332 = load i32, i32* %10, align 4
  %333 = load i32*, i32** %7, align 8
  %334 = getelementptr inbounds i32, i32* %333, i64 38
  store i32 %332, i32* %334, align 4
  %335 = load i32, i32* %11, align 4
  %336 = load i32*, i32** %7, align 8
  %337 = getelementptr inbounds i32, i32* %336, i64 39
  store i32 %335, i32* %337, align 4
  %338 = load i32, i32* %8, align 4
  %339 = load i32, i32* %9, align 4
  %340 = load i32, i32* %10, align 4
  %341 = load i32, i32* %11, align 4
  %342 = call i32 @RotLeft128(i32 %338, i32 %339, i32 %340, i32 %341, i32 17)
  %343 = load i32, i32* %8, align 4
  %344 = load i32*, i32** %7, align 8
  %345 = getelementptr inbounds i32, i32* %344, i64 44
  store i32 %343, i32* %345, align 4
  %346 = load i32, i32* %9, align 4
  %347 = load i32*, i32** %7, align 8
  %348 = getelementptr inbounds i32, i32* %347, i64 45
  store i32 %346, i32* %348, align 4
  %349 = load i32, i32* %10, align 4
  %350 = load i32*, i32** %7, align 8
  %351 = getelementptr inbounds i32, i32* %350, i64 46
  store i32 %349, i32* %351, align 4
  %352 = load i32, i32* %11, align 4
  %353 = load i32*, i32** %7, align 8
  %354 = getelementptr inbounds i32, i32* %353, i64 47
  store i32 %352, i32* %354, align 4
  store i32 3, i32* %4, align 4
  br label %700

355:                                              ; preds = %87
  %356 = load i32, i32* %8, align 4
  %357 = load i32*, i32** %7, align 8
  %358 = getelementptr inbounds i32, i32* %357, i64 12
  store i32 %356, i32* %358, align 4
  %359 = load i32, i32* %9, align 4
  %360 = load i32*, i32** %7, align 8
  %361 = getelementptr inbounds i32, i32* %360, i64 13
  store i32 %359, i32* %361, align 4
  %362 = load i32, i32* %10, align 4
  %363 = load i32*, i32** %7, align 8
  %364 = getelementptr inbounds i32, i32* %363, i64 14
  store i32 %362, i32* %364, align 4
  %365 = load i32, i32* %11, align 4
  %366 = load i32*, i32** %7, align 8
  %367 = getelementptr inbounds i32, i32* %366, i64 15
  store i32 %365, i32* %367, align 4
  %368 = load i32*, i32** %7, align 8
  %369 = getelementptr inbounds i32, i32* %368, i64 8
  %370 = load i32, i32* %369, align 4
  %371 = load i32, i32* %8, align 4
  %372 = xor i32 %371, %370
  store i32 %372, i32* %8, align 4
  %373 = load i32*, i32** %7, align 8
  %374 = getelementptr inbounds i32, i32* %373, i64 9
  %375 = load i32, i32* %374, align 4
  %376 = load i32, i32* %9, align 4
  %377 = xor i32 %376, %375
  store i32 %377, i32* %9, align 4
  %378 = load i32*, i32** %7, align 8
  %379 = getelementptr inbounds i32, i32* %378, i64 10
  %380 = load i32, i32* %379, align 4
  %381 = load i32, i32* %10, align 4
  %382 = xor i32 %381, %380
  store i32 %382, i32* %10, align 4
  %383 = load i32*, i32** %7, align 8
  %384 = getelementptr inbounds i32, i32* %383, i64 11
  %385 = load i32, i32* %384, align 4
  %386 = load i32, i32* %11, align 4
  %387 = xor i32 %386, %385
  store i32 %387, i32* %11, align 4
  %388 = load i32, i32* %8, align 4
  %389 = load i32, i32* %9, align 4
  %390 = load i32, i32* %10, align 4
  %391 = load i32, i32* %11, align 4
  %392 = load i64, i64* @SIGMA, align 8
  %393 = add nsw i64 %392, 8
  %394 = call i32 @Camellia_Feistel(i32 %388, i32 %389, i32 %390, i32 %391, i64 %393)
  %395 = load i32, i32* %10, align 4
  %396 = load i32, i32* %11, align 4
  %397 = load i32, i32* %8, align 4
  %398 = load i32, i32* %9, align 4
  %399 = load i64, i64* @SIGMA, align 8
  %400 = add nsw i64 %399, 10
  %401 = call i32 @Camellia_Feistel(i32 %395, i32 %396, i32 %397, i32 %398, i64 %400)
  %402 = load i32, i32* %8, align 4
  %403 = load i32*, i32** %7, align 8
  %404 = getelementptr inbounds i32, i32* %403, i64 4
  store i32 %402, i32* %404, align 4
  %405 = load i32, i32* %9, align 4
  %406 = load i32*, i32** %7, align 8
  %407 = getelementptr inbounds i32, i32* %406, i64 5
  store i32 %405, i32* %407, align 4
  %408 = load i32, i32* %10, align 4
  %409 = load i32*, i32** %7, align 8
  %410 = getelementptr inbounds i32, i32* %409, i64 6
  store i32 %408, i32* %410, align 4
  %411 = load i32, i32* %11, align 4
  %412 = load i32*, i32** %7, align 8
  %413 = getelementptr inbounds i32, i32* %412, i64 7
  store i32 %411, i32* %413, align 4
  %414 = load i32, i32* %8, align 4
  %415 = load i32, i32* %9, align 4
  %416 = load i32, i32* %10, align 4
  %417 = load i32, i32* %11, align 4
  %418 = call i32 @RotLeft128(i32 %414, i32 %415, i32 %416, i32 %417, i32 30)
  %419 = load i32, i32* %8, align 4
  %420 = load i32*, i32** %7, align 8
  %421 = getelementptr inbounds i32, i32* %420, i64 20
  store i32 %419, i32* %421, align 4
  %422 = load i32, i32* %9, align 4
  %423 = load i32*, i32** %7, align 8
  %424 = getelementptr inbounds i32, i32* %423, i64 21
  store i32 %422, i32* %424, align 4
  %425 = load i32, i32* %10, align 4
  %426 = load i32*, i32** %7, align 8
  %427 = getelementptr inbounds i32, i32* %426, i64 22
  store i32 %425, i32* %427, align 4
  %428 = load i32, i32* %11, align 4
  %429 = load i32*, i32** %7, align 8
  %430 = getelementptr inbounds i32, i32* %429, i64 23
  store i32 %428, i32* %430, align 4
  %431 = load i32, i32* %8, align 4
  %432 = load i32, i32* %9, align 4
  %433 = load i32, i32* %10, align 4
  %434 = load i32, i32* %11, align 4
  %435 = call i32 @RotLeft128(i32 %431, i32 %432, i32 %433, i32 %434, i32 30)
  %436 = load i32, i32* %8, align 4
  %437 = load i32*, i32** %7, align 8
  %438 = getelementptr inbounds i32, i32* %437, i64 40
  store i32 %436, i32* %438, align 4
  %439 = load i32, i32* %9, align 4
  %440 = load i32*, i32** %7, align 8
  %441 = getelementptr inbounds i32, i32* %440, i64 41
  store i32 %439, i32* %441, align 4
  %442 = load i32, i32* %10, align 4
  %443 = load i32*, i32** %7, align 8
  %444 = getelementptr inbounds i32, i32* %443, i64 42
  store i32 %442, i32* %444, align 4
  %445 = load i32, i32* %11, align 4
  %446 = load i32*, i32** %7, align 8
  %447 = getelementptr inbounds i32, i32* %446, i64 43
  store i32 %445, i32* %447, align 4
  %448 = load i32, i32* %9, align 4
  %449 = load i32, i32* %10, align 4
  %450 = load i32, i32* %11, align 4
  %451 = load i32, i32* %8, align 4
  %452 = call i32 @RotLeft128(i32 %448, i32 %449, i32 %450, i32 %451, i32 19)
  %453 = load i32, i32* %9, align 4
  %454 = load i32*, i32** %7, align 8
  %455 = getelementptr inbounds i32, i32* %454, i64 64
  store i32 %453, i32* %455, align 4
  %456 = load i32, i32* %10, align 4
  %457 = load i32*, i32** %7, align 8
  %458 = getelementptr inbounds i32, i32* %457, i64 65
  store i32 %456, i32* %458, align 4
  %459 = load i32, i32* %11, align 4
  %460 = load i32*, i32** %7, align 8
  %461 = getelementptr inbounds i32, i32* %460, i64 66
  store i32 %459, i32* %461, align 4
  %462 = load i32, i32* %8, align 4
  %463 = load i32*, i32** %7, align 8
  %464 = getelementptr inbounds i32, i32* %463, i64 67
  store i32 %462, i32* %464, align 4
  %465 = load i32*, i32** %7, align 8
  %466 = getelementptr inbounds i32, i32* %465, i64 8
  %467 = load i32, i32* %466, align 4
  store i32 %467, i32* %8, align 4
  %468 = load i32*, i32** %7, align 8
  %469 = getelementptr inbounds i32, i32* %468, i64 9
  %470 = load i32, i32* %469, align 4
  store i32 %470, i32* %9, align 4
  %471 = load i32*, i32** %7, align 8
  %472 = getelementptr inbounds i32, i32* %471, i64 10
  %473 = load i32, i32* %472, align 4
  store i32 %473, i32* %10, align 4
  %474 = load i32*, i32** %7, align 8
  %475 = getelementptr inbounds i32, i32* %474, i64 11
  %476 = load i32, i32* %475, align 4
  store i32 %476, i32* %11, align 4
  %477 = load i32, i32* %8, align 4
  %478 = load i32, i32* %9, align 4
  %479 = load i32, i32* %10, align 4
  %480 = load i32, i32* %11, align 4
  %481 = call i32 @RotLeft128(i32 %477, i32 %478, i32 %479, i32 %480, i32 15)
  %482 = load i32, i32* %8, align 4
  %483 = load i32*, i32** %7, align 8
  %484 = getelementptr inbounds i32, i32* %483, i64 8
  store i32 %482, i32* %484, align 4
  %485 = load i32, i32* %9, align 4
  %486 = load i32*, i32** %7, align 8
  %487 = getelementptr inbounds i32, i32* %486, i64 9
  store i32 %485, i32* %487, align 4
  %488 = load i32, i32* %10, align 4
  %489 = load i32*, i32** %7, align 8
  %490 = getelementptr inbounds i32, i32* %489, i64 10
  store i32 %488, i32* %490, align 4
  %491 = load i32, i32* %11, align 4
  %492 = load i32*, i32** %7, align 8
  %493 = getelementptr inbounds i32, i32* %492, i64 11
  store i32 %491, i32* %493, align 4
  %494 = load i32, i32* %8, align 4
  %495 = load i32, i32* %9, align 4
  %496 = load i32, i32* %10, align 4
  %497 = load i32, i32* %11, align 4
  %498 = call i32 @RotLeft128(i32 %494, i32 %495, i32 %496, i32 %497, i32 15)
  %499 = load i32, i32* %8, align 4
  %500 = load i32*, i32** %7, align 8
  %501 = getelementptr inbounds i32, i32* %500, i64 16
  store i32 %499, i32* %501, align 4
  %502 = load i32, i32* %9, align 4
  %503 = load i32*, i32** %7, align 8
  %504 = getelementptr inbounds i32, i32* %503, i64 17
  store i32 %502, i32* %504, align 4
  %505 = load i32, i32* %10, align 4
  %506 = load i32*, i32** %7, align 8
  %507 = getelementptr inbounds i32, i32* %506, i64 18
  store i32 %505, i32* %507, align 4
  %508 = load i32, i32* %11, align 4
  %509 = load i32*, i32** %7, align 8
  %510 = getelementptr inbounds i32, i32* %509, i64 19
  store i32 %508, i32* %510, align 4
  %511 = load i32, i32* %8, align 4
  %512 = load i32, i32* %9, align 4
  %513 = load i32, i32* %10, align 4
  %514 = load i32, i32* %11, align 4
  %515 = call i32 @RotLeft128(i32 %511, i32 %512, i32 %513, i32 %514, i32 30)
  %516 = load i32, i32* %8, align 4
  %517 = load i32*, i32** %7, align 8
  %518 = getelementptr inbounds i32, i32* %517, i64 36
  store i32 %516, i32* %518, align 4
  %519 = load i32, i32* %9, align 4
  %520 = load i32*, i32** %7, align 8
  %521 = getelementptr inbounds i32, i32* %520, i64 37
  store i32 %519, i32* %521, align 4
  %522 = load i32, i32* %10, align 4
  %523 = load i32*, i32** %7, align 8
  %524 = getelementptr inbounds i32, i32* %523, i64 38
  store i32 %522, i32* %524, align 4
  %525 = load i32, i32* %11, align 4
  %526 = load i32*, i32** %7, align 8
  %527 = getelementptr inbounds i32, i32* %526, i64 39
  store i32 %525, i32* %527, align 4
  %528 = load i32, i32* %9, align 4
  %529 = load i32, i32* %10, align 4
  %530 = load i32, i32* %11, align 4
  %531 = load i32, i32* %8, align 4
  %532 = call i32 @RotLeft128(i32 %528, i32 %529, i32 %530, i32 %531, i32 2)
  %533 = load i32, i32* %9, align 4
  %534 = load i32*, i32** %7, align 8
  %535 = getelementptr inbounds i32, i32* %534, i64 52
  store i32 %533, i32* %535, align 4
  %536 = load i32, i32* %10, align 4
  %537 = load i32*, i32** %7, align 8
  %538 = getelementptr inbounds i32, i32* %537, i64 53
  store i32 %536, i32* %538, align 4
  %539 = load i32, i32* %11, align 4
  %540 = load i32*, i32** %7, align 8
  %541 = getelementptr inbounds i32, i32* %540, i64 54
  store i32 %539, i32* %541, align 4
  %542 = load i32, i32* %8, align 4
  %543 = load i32*, i32** %7, align 8
  %544 = getelementptr inbounds i32, i32* %543, i64 55
  store i32 %542, i32* %544, align 4
  %545 = load i32*, i32** %7, align 8
  %546 = getelementptr inbounds i32, i32* %545, i64 12
  %547 = load i32, i32* %546, align 4
  store i32 %547, i32* %8, align 4
  %548 = load i32*, i32** %7, align 8
  %549 = getelementptr inbounds i32, i32* %548, i64 13
  %550 = load i32, i32* %549, align 4
  store i32 %550, i32* %9, align 4
  %551 = load i32*, i32** %7, align 8
  %552 = getelementptr inbounds i32, i32* %551, i64 14
  %553 = load i32, i32* %552, align 4
  store i32 %553, i32* %10, align 4
  %554 = load i32*, i32** %7, align 8
  %555 = getelementptr inbounds i32, i32* %554, i64 15
  %556 = load i32, i32* %555, align 4
  store i32 %556, i32* %11, align 4
  %557 = load i32, i32* %8, align 4
  %558 = load i32, i32* %9, align 4
  %559 = load i32, i32* %10, align 4
  %560 = load i32, i32* %11, align 4
  %561 = call i32 @RotLeft128(i32 %557, i32 %558, i32 %559, i32 %560, i32 15)
  %562 = load i32, i32* %8, align 4
  %563 = load i32*, i32** %7, align 8
  %564 = getelementptr inbounds i32, i32* %563, i64 12
  store i32 %562, i32* %564, align 4
  %565 = load i32, i32* %9, align 4
  %566 = load i32*, i32** %7, align 8
  %567 = getelementptr inbounds i32, i32* %566, i64 13
  store i32 %565, i32* %567, align 4
  %568 = load i32, i32* %10, align 4
  %569 = load i32*, i32** %7, align 8
  %570 = getelementptr inbounds i32, i32* %569, i64 14
  store i32 %568, i32* %570, align 4
  %571 = load i32, i32* %11, align 4
  %572 = load i32*, i32** %7, align 8
  %573 = getelementptr inbounds i32, i32* %572, i64 15
  store i32 %571, i32* %573, align 4
  %574 = load i32, i32* %8, align 4
  %575 = load i32, i32* %9, align 4
  %576 = load i32, i32* %10, align 4
  %577 = load i32, i32* %11, align 4
  %578 = call i32 @RotLeft128(i32 %574, i32 %575, i32 %576, i32 %577, i32 30)
  %579 = load i32, i32* %8, align 4
  %580 = load i32*, i32** %7, align 8
  %581 = getelementptr inbounds i32, i32* %580, i64 28
  store i32 %579, i32* %581, align 4
  %582 = load i32, i32* %9, align 4
  %583 = load i32*, i32** %7, align 8
  %584 = getelementptr inbounds i32, i32* %583, i64 29
  store i32 %582, i32* %584, align 4
  %585 = load i32, i32* %10, align 4
  %586 = load i32*, i32** %7, align 8
  %587 = getelementptr inbounds i32, i32* %586, i64 30
  store i32 %585, i32* %587, align 4
  %588 = load i32, i32* %11, align 4
  %589 = load i32*, i32** %7, align 8
  %590 = getelementptr inbounds i32, i32* %589, i64 31
  store i32 %588, i32* %590, align 4
  %591 = load i32, i32* %9, align 4
  %592 = load i32*, i32** %7, align 8
  %593 = getelementptr inbounds i32, i32* %592, i64 48
  store i32 %591, i32* %593, align 4
  %594 = load i32, i32* %10, align 4
  %595 = load i32*, i32** %7, align 8
  %596 = getelementptr inbounds i32, i32* %595, i64 49
  store i32 %594, i32* %596, align 4
  %597 = load i32, i32* %11, align 4
  %598 = load i32*, i32** %7, align 8
  %599 = getelementptr inbounds i32, i32* %598, i64 50
  store i32 %597, i32* %599, align 4
  %600 = load i32, i32* %8, align 4
  %601 = load i32*, i32** %7, align 8
  %602 = getelementptr inbounds i32, i32* %601, i64 51
  store i32 %600, i32* %602, align 4
  %603 = load i32, i32* %9, align 4
  %604 = load i32, i32* %10, align 4
  %605 = load i32, i32* %11, align 4
  %606 = load i32, i32* %8, align 4
  %607 = call i32 @RotLeft128(i32 %603, i32 %604, i32 %605, i32 %606, i32 17)
  %608 = load i32, i32* %9, align 4
  %609 = load i32*, i32** %7, align 8
  %610 = getelementptr inbounds i32, i32* %609, i64 56
  store i32 %608, i32* %610, align 4
  %611 = load i32, i32* %10, align 4
  %612 = load i32*, i32** %7, align 8
  %613 = getelementptr inbounds i32, i32* %612, i64 57
  store i32 %611, i32* %613, align 4
  %614 = load i32, i32* %11, align 4
  %615 = load i32*, i32** %7, align 8
  %616 = getelementptr inbounds i32, i32* %615, i64 58
  store i32 %614, i32* %616, align 4
  %617 = load i32, i32* %8, align 4
  %618 = load i32*, i32** %7, align 8
  %619 = getelementptr inbounds i32, i32* %618, i64 59
  store i32 %617, i32* %619, align 4
  %620 = load i32*, i32** %7, align 8
  %621 = getelementptr inbounds i32, i32* %620, i64 0
  %622 = load i32, i32* %621, align 4
  store i32 %622, i32* %8, align 4
  %623 = load i32*, i32** %7, align 8
  %624 = getelementptr inbounds i32, i32* %623, i64 1
  %625 = load i32, i32* %624, align 4
  store i32 %625, i32* %9, align 4
  %626 = load i32*, i32** %7, align 8
  %627 = getelementptr inbounds i32, i32* %626, i64 2
  %628 = load i32, i32* %627, align 4
  store i32 %628, i32* %10, align 4
  %629 = load i32*, i32** %7, align 8
  %630 = getelementptr inbounds i32, i32* %629, i64 3
  %631 = load i32, i32* %630, align 4
  store i32 %631, i32* %11, align 4
  %632 = load i32, i32* %9, align 4
  %633 = load i32, i32* %10, align 4
  %634 = load i32, i32* %11, align 4
  %635 = load i32, i32* %8, align 4
  %636 = call i32 @RotLeft128(i32 %632, i32 %633, i32 %634, i32 %635, i32 13)
  %637 = load i32, i32* %9, align 4
  %638 = load i32*, i32** %7, align 8
  %639 = getelementptr inbounds i32, i32* %638, i64 24
  store i32 %637, i32* %639, align 4
  %640 = load i32, i32* %10, align 4
  %641 = load i32*, i32** %7, align 8
  %642 = getelementptr inbounds i32, i32* %641, i64 25
  store i32 %640, i32* %642, align 4
  %643 = load i32, i32* %11, align 4
  %644 = load i32*, i32** %7, align 8
  %645 = getelementptr inbounds i32, i32* %644, i64 26
  store i32 %643, i32* %645, align 4
  %646 = load i32, i32* %8, align 4
  %647 = load i32*, i32** %7, align 8
  %648 = getelementptr inbounds i32, i32* %647, i64 27
  store i32 %646, i32* %648, align 4
  %649 = load i32, i32* %9, align 4
  %650 = load i32, i32* %10, align 4
  %651 = load i32, i32* %11, align 4
  %652 = load i32, i32* %8, align 4
  %653 = call i32 @RotLeft128(i32 %649, i32 %650, i32 %651, i32 %652, i32 15)
  %654 = load i32, i32* %9, align 4
  %655 = load i32*, i32** %7, align 8
  %656 = getelementptr inbounds i32, i32* %655, i64 32
  store i32 %654, i32* %656, align 4
  %657 = load i32, i32* %10, align 4
  %658 = load i32*, i32** %7, align 8
  %659 = getelementptr inbounds i32, i32* %658, i64 33
  store i32 %657, i32* %659, align 4
  %660 = load i32, i32* %11, align 4
  %661 = load i32*, i32** %7, align 8
  %662 = getelementptr inbounds i32, i32* %661, i64 34
  store i32 %660, i32* %662, align 4
  %663 = load i32, i32* %8, align 4
  %664 = load i32*, i32** %7, align 8
  %665 = getelementptr inbounds i32, i32* %664, i64 35
  store i32 %663, i32* %665, align 4
  %666 = load i32, i32* %9, align 4
  %667 = load i32, i32* %10, align 4
  %668 = load i32, i32* %11, align 4
  %669 = load i32, i32* %8, align 4
  %670 = call i32 @RotLeft128(i32 %666, i32 %667, i32 %668, i32 %669, i32 17)
  %671 = load i32, i32* %9, align 4
  %672 = load i32*, i32** %7, align 8
  %673 = getelementptr inbounds i32, i32* %672, i64 44
  store i32 %671, i32* %673, align 4
  %674 = load i32, i32* %10, align 4
  %675 = load i32*, i32** %7, align 8
  %676 = getelementptr inbounds i32, i32* %675, i64 45
  store i32 %674, i32* %676, align 4
  %677 = load i32, i32* %11, align 4
  %678 = load i32*, i32** %7, align 8
  %679 = getelementptr inbounds i32, i32* %678, i64 46
  store i32 %677, i32* %679, align 4
  %680 = load i32, i32* %8, align 4
  %681 = load i32*, i32** %7, align 8
  %682 = getelementptr inbounds i32, i32* %681, i64 47
  store i32 %680, i32* %682, align 4
  %683 = load i32, i32* %10, align 4
  %684 = load i32, i32* %11, align 4
  %685 = load i32, i32* %8, align 4
  %686 = load i32, i32* %9, align 4
  %687 = call i32 @RotLeft128(i32 %683, i32 %684, i32 %685, i32 %686, i32 2)
  %688 = load i32, i32* %10, align 4
  %689 = load i32*, i32** %7, align 8
  %690 = getelementptr inbounds i32, i32* %689, i64 60
  store i32 %688, i32* %690, align 4
  %691 = load i32, i32* %11, align 4
  %692 = load i32*, i32** %7, align 8
  %693 = getelementptr inbounds i32, i32* %692, i64 61
  store i32 %691, i32* %693, align 4
  %694 = load i32, i32* %8, align 4
  %695 = load i32*, i32** %7, align 8
  %696 = getelementptr inbounds i32, i32* %695, i64 62
  store i32 %694, i32* %696, align 4
  %697 = load i32, i32* %9, align 4
  %698 = load i32*, i32** %7, align 8
  %699 = getelementptr inbounds i32, i32* %698, i64 63
  store i32 %697, i32* %699, align 4
  store i32 4, i32* %4, align 4
  br label %700

700:                                              ; preds = %355, %138
  %701 = load i32, i32* %4, align 4
  ret i32 %701
}

declare dso_local i32 @GETU32(i32*) #1

declare dso_local i32 @Camellia_Feistel(i32, i32, i32, i32, i64) #1

declare dso_local i32 @RotLeft128(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
