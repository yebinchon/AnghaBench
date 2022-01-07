; ModuleID = '/home/carl/AnghaBench/openssl/crypto/sha/extr_sha512.c_SHA512_Final.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/sha/extr_sha512.c_SHA512_Final.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32, i32, i32, i32*, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32*, i64 }

@SHA_LBLOCK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SHA512_Final(i8* %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %5, align 8
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 5
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to i8*
  store i8* %17, i8** %6, align 8
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %7, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = load i64, i64* %7, align 8
  %23 = getelementptr inbounds i8, i8* %21, i64 %22
  store i8 -128, i8* %23, align 1
  %24 = load i64, i64* %7, align 8
  %25 = add i64 %24, 1
  store i64 %25, i64* %7, align 8
  %26 = load i64, i64* %7, align 8
  %27 = icmp ugt i64 %26, 0
  br i1 %27, label %28, label %39

28:                                               ; preds = %2
  %29 = load i8*, i8** %6, align 8
  %30 = load i64, i64* %7, align 8
  %31 = getelementptr inbounds i8, i8* %29, i64 %30
  %32 = load i64, i64* %7, align 8
  %33 = sub i64 16, %32
  %34 = trunc i64 %33 to i32
  %35 = call i32 @memset(i8* %31, i32 0, i32 %34)
  store i64 0, i64* %7, align 8
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %37 = load i8*, i8** %6, align 8
  %38 = call i32 @sha512_block_data_order(%struct.TYPE_6__* %36, i8* %37, i32 1)
  br label %39

39:                                               ; preds = %28, %2
  %40 = load i8*, i8** %6, align 8
  %41 = load i64, i64* %7, align 8
  %42 = getelementptr inbounds i8, i8* %40, i64 %41
  %43 = load i64, i64* %7, align 8
  %44 = sub i64 0, %43
  %45 = trunc i64 %44 to i32
  %46 = call i32 @memset(i8* %42, i32 0, i32 %45)
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = trunc i32 %49 to i8
  %51 = load i8*, i8** %6, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 15
  store i8 %50, i8* %52, align 1
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = ashr i32 %55, 8
  %57 = trunc i32 %56 to i8
  %58 = load i8*, i8** %6, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 14
  store i8 %57, i8* %59, align 1
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = ashr i32 %62, 16
  %64 = trunc i32 %63 to i8
  %65 = load i8*, i8** %6, align 8
  %66 = getelementptr inbounds i8, i8* %65, i64 13
  store i8 %64, i8* %66, align 1
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = ashr i32 %69, 24
  %71 = trunc i32 %70 to i8
  %72 = load i8*, i8** %6, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 12
  store i8 %71, i8* %73, align 1
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = ashr i32 %76, 32
  %78 = trunc i32 %77 to i8
  %79 = load i8*, i8** %6, align 8
  %80 = getelementptr inbounds i8, i8* %79, i64 11
  store i8 %78, i8* %80, align 1
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = ashr i32 %83, 40
  %85 = trunc i32 %84 to i8
  %86 = load i8*, i8** %6, align 8
  %87 = getelementptr inbounds i8, i8* %86, i64 10
  store i8 %85, i8* %87, align 1
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = ashr i32 %90, 48
  %92 = trunc i32 %91 to i8
  %93 = load i8*, i8** %6, align 8
  %94 = getelementptr inbounds i8, i8* %93, i64 9
  store i8 %92, i8* %94, align 1
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  %98 = ashr i32 %97, 56
  %99 = trunc i32 %98 to i8
  %100 = load i8*, i8** %6, align 8
  %101 = getelementptr inbounds i8, i8* %100, i64 8
  store i8 %99, i8* %101, align 1
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = trunc i32 %104 to i8
  %106 = load i8*, i8** %6, align 8
  %107 = getelementptr inbounds i8, i8* %106, i64 7
  store i8 %105, i8* %107, align 1
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 8
  %111 = ashr i32 %110, 8
  %112 = trunc i32 %111 to i8
  %113 = load i8*, i8** %6, align 8
  %114 = getelementptr inbounds i8, i8* %113, i64 6
  store i8 %112, i8* %114, align 1
  %115 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 8
  %118 = ashr i32 %117, 16
  %119 = trunc i32 %118 to i8
  %120 = load i8*, i8** %6, align 8
  %121 = getelementptr inbounds i8, i8* %120, i64 5
  store i8 %119, i8* %121, align 1
  %122 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 8
  %125 = ashr i32 %124, 24
  %126 = trunc i32 %125 to i8
  %127 = load i8*, i8** %6, align 8
  %128 = getelementptr inbounds i8, i8* %127, i64 4
  store i8 %126, i8* %128, align 1
  %129 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 8
  %132 = ashr i32 %131, 32
  %133 = trunc i32 %132 to i8
  %134 = load i8*, i8** %6, align 8
  %135 = getelementptr inbounds i8, i8* %134, i64 3
  store i8 %133, i8* %135, align 1
  %136 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 8
  %139 = ashr i32 %138, 40
  %140 = trunc i32 %139 to i8
  %141 = load i8*, i8** %6, align 8
  %142 = getelementptr inbounds i8, i8* %141, i64 2
  store i8 %140, i8* %142, align 1
  %143 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 8
  %146 = ashr i32 %145, 48
  %147 = trunc i32 %146 to i8
  %148 = load i8*, i8** %6, align 8
  %149 = getelementptr inbounds i8, i8* %148, i64 1
  store i8 %147, i8* %149, align 1
  %150 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 8
  %153 = ashr i32 %152, 56
  %154 = trunc i32 %153 to i8
  %155 = load i8*, i8** %6, align 8
  %156 = getelementptr inbounds i8, i8* %155, i64 0
  store i8 %154, i8* %156, align 1
  %157 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %158 = load i8*, i8** %6, align 8
  %159 = call i32 @sha512_block_data_order(%struct.TYPE_6__* %157, i8* %158, i32 1)
  %160 = load i8*, i8** %4, align 8
  %161 = icmp eq i8* %160, null
  br i1 %161, label %162, label %163

162:                                              ; preds = %39
  store i32 0, i32* %3, align 4
  br label %410

163:                                              ; preds = %39
  %164 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %165 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %164, i32 0, i32 3
  %166 = load i32, i32* %165, align 8
  switch i32 %166, label %408 [
    i32 131, label %167
    i32 130, label %246
    i32 129, label %300
    i32 128, label %354
  ]

167:                                              ; preds = %163
  store i64 0, i64* %7, align 8
  br label %168

168:                                              ; preds = %217, %167
  %169 = load i64, i64* %7, align 8
  %170 = icmp ult i64 %169, 16
  br i1 %170, label %171, label %220

171:                                              ; preds = %168
  %172 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %173 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %172, i32 0, i32 4
  %174 = load i32*, i32** %173, align 8
  %175 = load i64, i64* %7, align 8
  %176 = getelementptr inbounds i32, i32* %174, i64 %175
  %177 = load i32, i32* %176, align 4
  store i32 %177, i32* %8, align 4
  %178 = load i32, i32* %8, align 4
  %179 = ashr i32 %178, 56
  %180 = trunc i32 %179 to i8
  %181 = load i8*, i8** %4, align 8
  %182 = getelementptr inbounds i8, i8* %181, i32 1
  store i8* %182, i8** %4, align 8
  store i8 %180, i8* %181, align 1
  %183 = load i32, i32* %8, align 4
  %184 = ashr i32 %183, 48
  %185 = trunc i32 %184 to i8
  %186 = load i8*, i8** %4, align 8
  %187 = getelementptr inbounds i8, i8* %186, i32 1
  store i8* %187, i8** %4, align 8
  store i8 %185, i8* %186, align 1
  %188 = load i32, i32* %8, align 4
  %189 = ashr i32 %188, 40
  %190 = trunc i32 %189 to i8
  %191 = load i8*, i8** %4, align 8
  %192 = getelementptr inbounds i8, i8* %191, i32 1
  store i8* %192, i8** %4, align 8
  store i8 %190, i8* %191, align 1
  %193 = load i32, i32* %8, align 4
  %194 = ashr i32 %193, 32
  %195 = trunc i32 %194 to i8
  %196 = load i8*, i8** %4, align 8
  %197 = getelementptr inbounds i8, i8* %196, i32 1
  store i8* %197, i8** %4, align 8
  store i8 %195, i8* %196, align 1
  %198 = load i32, i32* %8, align 4
  %199 = ashr i32 %198, 24
  %200 = trunc i32 %199 to i8
  %201 = load i8*, i8** %4, align 8
  %202 = getelementptr inbounds i8, i8* %201, i32 1
  store i8* %202, i8** %4, align 8
  store i8 %200, i8* %201, align 1
  %203 = load i32, i32* %8, align 4
  %204 = ashr i32 %203, 16
  %205 = trunc i32 %204 to i8
  %206 = load i8*, i8** %4, align 8
  %207 = getelementptr inbounds i8, i8* %206, i32 1
  store i8* %207, i8** %4, align 8
  store i8 %205, i8* %206, align 1
  %208 = load i32, i32* %8, align 4
  %209 = ashr i32 %208, 8
  %210 = trunc i32 %209 to i8
  %211 = load i8*, i8** %4, align 8
  %212 = getelementptr inbounds i8, i8* %211, i32 1
  store i8* %212, i8** %4, align 8
  store i8 %210, i8* %211, align 1
  %213 = load i32, i32* %8, align 4
  %214 = trunc i32 %213 to i8
  %215 = load i8*, i8** %4, align 8
  %216 = getelementptr inbounds i8, i8* %215, i32 1
  store i8* %216, i8** %4, align 8
  store i8 %214, i8* %215, align 1
  br label %217

217:                                              ; preds = %171
  %218 = load i64, i64* %7, align 8
  %219 = add i64 %218, 1
  store i64 %219, i64* %7, align 8
  br label %168

220:                                              ; preds = %168
  %221 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %222 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %221, i32 0, i32 4
  %223 = load i32*, i32** %222, align 8
  %224 = getelementptr inbounds i32, i32* %223, i64 16
  %225 = load i32, i32* %224, align 4
  store i32 %225, i32* %9, align 4
  %226 = load i32, i32* %9, align 4
  %227 = ashr i32 %226, 56
  %228 = trunc i32 %227 to i8
  %229 = load i8*, i8** %4, align 8
  %230 = getelementptr inbounds i8, i8* %229, i32 1
  store i8* %230, i8** %4, align 8
  store i8 %228, i8* %229, align 1
  %231 = load i32, i32* %9, align 4
  %232 = ashr i32 %231, 48
  %233 = trunc i32 %232 to i8
  %234 = load i8*, i8** %4, align 8
  %235 = getelementptr inbounds i8, i8* %234, i32 1
  store i8* %235, i8** %4, align 8
  store i8 %233, i8* %234, align 1
  %236 = load i32, i32* %9, align 4
  %237 = ashr i32 %236, 40
  %238 = trunc i32 %237 to i8
  %239 = load i8*, i8** %4, align 8
  %240 = getelementptr inbounds i8, i8* %239, i32 1
  store i8* %240, i8** %4, align 8
  store i8 %238, i8* %239, align 1
  %241 = load i32, i32* %9, align 4
  %242 = ashr i32 %241, 32
  %243 = trunc i32 %242 to i8
  %244 = load i8*, i8** %4, align 8
  %245 = getelementptr inbounds i8, i8* %244, i32 1
  store i8* %245, i8** %4, align 8
  store i8 %243, i8* %244, align 1
  br label %409

246:                                              ; preds = %163
  store i64 0, i64* %7, align 8
  br label %247

247:                                              ; preds = %296, %246
  %248 = load i64, i64* %7, align 8
  %249 = icmp ult i64 %248, 16
  br i1 %249, label %250, label %299

250:                                              ; preds = %247
  %251 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %252 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %251, i32 0, i32 4
  %253 = load i32*, i32** %252, align 8
  %254 = load i64, i64* %7, align 8
  %255 = getelementptr inbounds i32, i32* %253, i64 %254
  %256 = load i32, i32* %255, align 4
  store i32 %256, i32* %10, align 4
  %257 = load i32, i32* %10, align 4
  %258 = ashr i32 %257, 56
  %259 = trunc i32 %258 to i8
  %260 = load i8*, i8** %4, align 8
  %261 = getelementptr inbounds i8, i8* %260, i32 1
  store i8* %261, i8** %4, align 8
  store i8 %259, i8* %260, align 1
  %262 = load i32, i32* %10, align 4
  %263 = ashr i32 %262, 48
  %264 = trunc i32 %263 to i8
  %265 = load i8*, i8** %4, align 8
  %266 = getelementptr inbounds i8, i8* %265, i32 1
  store i8* %266, i8** %4, align 8
  store i8 %264, i8* %265, align 1
  %267 = load i32, i32* %10, align 4
  %268 = ashr i32 %267, 40
  %269 = trunc i32 %268 to i8
  %270 = load i8*, i8** %4, align 8
  %271 = getelementptr inbounds i8, i8* %270, i32 1
  store i8* %271, i8** %4, align 8
  store i8 %269, i8* %270, align 1
  %272 = load i32, i32* %10, align 4
  %273 = ashr i32 %272, 32
  %274 = trunc i32 %273 to i8
  %275 = load i8*, i8** %4, align 8
  %276 = getelementptr inbounds i8, i8* %275, i32 1
  store i8* %276, i8** %4, align 8
  store i8 %274, i8* %275, align 1
  %277 = load i32, i32* %10, align 4
  %278 = ashr i32 %277, 24
  %279 = trunc i32 %278 to i8
  %280 = load i8*, i8** %4, align 8
  %281 = getelementptr inbounds i8, i8* %280, i32 1
  store i8* %281, i8** %4, align 8
  store i8 %279, i8* %280, align 1
  %282 = load i32, i32* %10, align 4
  %283 = ashr i32 %282, 16
  %284 = trunc i32 %283 to i8
  %285 = load i8*, i8** %4, align 8
  %286 = getelementptr inbounds i8, i8* %285, i32 1
  store i8* %286, i8** %4, align 8
  store i8 %284, i8* %285, align 1
  %287 = load i32, i32* %10, align 4
  %288 = ashr i32 %287, 8
  %289 = trunc i32 %288 to i8
  %290 = load i8*, i8** %4, align 8
  %291 = getelementptr inbounds i8, i8* %290, i32 1
  store i8* %291, i8** %4, align 8
  store i8 %289, i8* %290, align 1
  %292 = load i32, i32* %10, align 4
  %293 = trunc i32 %292 to i8
  %294 = load i8*, i8** %4, align 8
  %295 = getelementptr inbounds i8, i8* %294, i32 1
  store i8* %295, i8** %4, align 8
  store i8 %293, i8* %294, align 1
  br label %296

296:                                              ; preds = %250
  %297 = load i64, i64* %7, align 8
  %298 = add i64 %297, 1
  store i64 %298, i64* %7, align 8
  br label %247

299:                                              ; preds = %247
  br label %409

300:                                              ; preds = %163
  store i64 0, i64* %7, align 8
  br label %301

301:                                              ; preds = %350, %300
  %302 = load i64, i64* %7, align 8
  %303 = icmp ult i64 %302, 16
  br i1 %303, label %304, label %353

304:                                              ; preds = %301
  %305 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %306 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %305, i32 0, i32 4
  %307 = load i32*, i32** %306, align 8
  %308 = load i64, i64* %7, align 8
  %309 = getelementptr inbounds i32, i32* %307, i64 %308
  %310 = load i32, i32* %309, align 4
  store i32 %310, i32* %11, align 4
  %311 = load i32, i32* %11, align 4
  %312 = ashr i32 %311, 56
  %313 = trunc i32 %312 to i8
  %314 = load i8*, i8** %4, align 8
  %315 = getelementptr inbounds i8, i8* %314, i32 1
  store i8* %315, i8** %4, align 8
  store i8 %313, i8* %314, align 1
  %316 = load i32, i32* %11, align 4
  %317 = ashr i32 %316, 48
  %318 = trunc i32 %317 to i8
  %319 = load i8*, i8** %4, align 8
  %320 = getelementptr inbounds i8, i8* %319, i32 1
  store i8* %320, i8** %4, align 8
  store i8 %318, i8* %319, align 1
  %321 = load i32, i32* %11, align 4
  %322 = ashr i32 %321, 40
  %323 = trunc i32 %322 to i8
  %324 = load i8*, i8** %4, align 8
  %325 = getelementptr inbounds i8, i8* %324, i32 1
  store i8* %325, i8** %4, align 8
  store i8 %323, i8* %324, align 1
  %326 = load i32, i32* %11, align 4
  %327 = ashr i32 %326, 32
  %328 = trunc i32 %327 to i8
  %329 = load i8*, i8** %4, align 8
  %330 = getelementptr inbounds i8, i8* %329, i32 1
  store i8* %330, i8** %4, align 8
  store i8 %328, i8* %329, align 1
  %331 = load i32, i32* %11, align 4
  %332 = ashr i32 %331, 24
  %333 = trunc i32 %332 to i8
  %334 = load i8*, i8** %4, align 8
  %335 = getelementptr inbounds i8, i8* %334, i32 1
  store i8* %335, i8** %4, align 8
  store i8 %333, i8* %334, align 1
  %336 = load i32, i32* %11, align 4
  %337 = ashr i32 %336, 16
  %338 = trunc i32 %337 to i8
  %339 = load i8*, i8** %4, align 8
  %340 = getelementptr inbounds i8, i8* %339, i32 1
  store i8* %340, i8** %4, align 8
  store i8 %338, i8* %339, align 1
  %341 = load i32, i32* %11, align 4
  %342 = ashr i32 %341, 8
  %343 = trunc i32 %342 to i8
  %344 = load i8*, i8** %4, align 8
  %345 = getelementptr inbounds i8, i8* %344, i32 1
  store i8* %345, i8** %4, align 8
  store i8 %343, i8* %344, align 1
  %346 = load i32, i32* %11, align 4
  %347 = trunc i32 %346 to i8
  %348 = load i8*, i8** %4, align 8
  %349 = getelementptr inbounds i8, i8* %348, i32 1
  store i8* %349, i8** %4, align 8
  store i8 %347, i8* %348, align 1
  br label %350

350:                                              ; preds = %304
  %351 = load i64, i64* %7, align 8
  %352 = add i64 %351, 1
  store i64 %352, i64* %7, align 8
  br label %301

353:                                              ; preds = %301
  br label %409

354:                                              ; preds = %163
  store i64 0, i64* %7, align 8
  br label %355

355:                                              ; preds = %404, %354
  %356 = load i64, i64* %7, align 8
  %357 = icmp ult i64 %356, 16
  br i1 %357, label %358, label %407

358:                                              ; preds = %355
  %359 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %360 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %359, i32 0, i32 4
  %361 = load i32*, i32** %360, align 8
  %362 = load i64, i64* %7, align 8
  %363 = getelementptr inbounds i32, i32* %361, i64 %362
  %364 = load i32, i32* %363, align 4
  store i32 %364, i32* %12, align 4
  %365 = load i32, i32* %12, align 4
  %366 = ashr i32 %365, 56
  %367 = trunc i32 %366 to i8
  %368 = load i8*, i8** %4, align 8
  %369 = getelementptr inbounds i8, i8* %368, i32 1
  store i8* %369, i8** %4, align 8
  store i8 %367, i8* %368, align 1
  %370 = load i32, i32* %12, align 4
  %371 = ashr i32 %370, 48
  %372 = trunc i32 %371 to i8
  %373 = load i8*, i8** %4, align 8
  %374 = getelementptr inbounds i8, i8* %373, i32 1
  store i8* %374, i8** %4, align 8
  store i8 %372, i8* %373, align 1
  %375 = load i32, i32* %12, align 4
  %376 = ashr i32 %375, 40
  %377 = trunc i32 %376 to i8
  %378 = load i8*, i8** %4, align 8
  %379 = getelementptr inbounds i8, i8* %378, i32 1
  store i8* %379, i8** %4, align 8
  store i8 %377, i8* %378, align 1
  %380 = load i32, i32* %12, align 4
  %381 = ashr i32 %380, 32
  %382 = trunc i32 %381 to i8
  %383 = load i8*, i8** %4, align 8
  %384 = getelementptr inbounds i8, i8* %383, i32 1
  store i8* %384, i8** %4, align 8
  store i8 %382, i8* %383, align 1
  %385 = load i32, i32* %12, align 4
  %386 = ashr i32 %385, 24
  %387 = trunc i32 %386 to i8
  %388 = load i8*, i8** %4, align 8
  %389 = getelementptr inbounds i8, i8* %388, i32 1
  store i8* %389, i8** %4, align 8
  store i8 %387, i8* %388, align 1
  %390 = load i32, i32* %12, align 4
  %391 = ashr i32 %390, 16
  %392 = trunc i32 %391 to i8
  %393 = load i8*, i8** %4, align 8
  %394 = getelementptr inbounds i8, i8* %393, i32 1
  store i8* %394, i8** %4, align 8
  store i8 %392, i8* %393, align 1
  %395 = load i32, i32* %12, align 4
  %396 = ashr i32 %395, 8
  %397 = trunc i32 %396 to i8
  %398 = load i8*, i8** %4, align 8
  %399 = getelementptr inbounds i8, i8* %398, i32 1
  store i8* %399, i8** %4, align 8
  store i8 %397, i8* %398, align 1
  %400 = load i32, i32* %12, align 4
  %401 = trunc i32 %400 to i8
  %402 = load i8*, i8** %4, align 8
  %403 = getelementptr inbounds i8, i8* %402, i32 1
  store i8* %403, i8** %4, align 8
  store i8 %401, i8* %402, align 1
  br label %404

404:                                              ; preds = %358
  %405 = load i64, i64* %7, align 8
  %406 = add i64 %405, 1
  store i64 %406, i64* %7, align 8
  br label %355

407:                                              ; preds = %355
  br label %409

408:                                              ; preds = %163
  store i32 0, i32* %3, align 4
  br label %410

409:                                              ; preds = %407, %353, %299, %220
  store i32 1, i32* %3, align 4
  br label %410

410:                                              ; preds = %409, %408, %162
  %411 = load i32, i32* %3, align 4
  ret i32 %411
}

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @sha512_block_data_order(%struct.TYPE_6__*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
