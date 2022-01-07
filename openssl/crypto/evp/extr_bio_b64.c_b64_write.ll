; ModuleID = '/home/carl/AnghaBench/openssl/crypto/evp/extr_bio_b64.c_b64_write.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/evp/extr_bio_b64.c_b64_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32, i32, i32, i32*, i32, i32* }

@B64_ENCODE = common dso_local global i64 0, align 8
@B64_BLOCK_SIZE = common dso_local global i32 0, align 4
@BIO_FLAGS_BASE64_NO_NL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32)* @b64_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @b64_write(i32* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_2__*, align 8
  %12 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %13 = load i32*, i32** %5, align 8
  %14 = call i64 @BIO_get_data(i32* %13)
  %15 = inttoptr i64 %14 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %15, %struct.TYPE_2__** %11, align 8
  %16 = load i32*, i32** %5, align 8
  %17 = call i32* @BIO_next(i32* %16)
  store i32* %17, i32** %12, align 8
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %19 = icmp eq %struct.TYPE_2__* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %3
  %21 = load i32*, i32** %12, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %20, %3
  store i32 0, i32* %4, align 4
  br label %402

24:                                               ; preds = %20
  %25 = load i32*, i32** %5, align 8
  %26 = call i32 @BIO_clear_retry_flags(i32* %25)
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @B64_ENCODE, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %46

32:                                               ; preds = %24
  %33 = load i64, i64* @B64_ENCODE, align 8
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  store i64 %33, i64* %35, align 8
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  store i32 0, i32* %37, align 8
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 2
  store i32 0, i32* %39, align 4
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 3
  store i32 0, i32* %41, align 8
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 5
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @EVP_EncodeInit(i32 %44)
  br label %46

46:                                               ; preds = %32, %24
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = icmp slt i32 %49, 8
  %51 = zext i1 %50 to i32
  %52 = call i32 @OPENSSL_assert(i32 %51)
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = icmp sle i32 %55, 8
  %57 = zext i1 %56 to i32
  %58 = call i32 @OPENSSL_assert(i32 %57)
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = icmp sge i32 %61, %64
  %66 = zext i1 %65 to i32
  %67 = call i32 @OPENSSL_assert(i32 %66)
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = sub nsw i32 %70, %73
  store i32 %74, i32* %9, align 4
  br label %75

75:                                               ; preds = %96, %46
  %76 = load i32, i32* %9, align 4
  %77 = icmp sgt i32 %76, 0
  br i1 %77, label %78, label %125

78:                                               ; preds = %75
  %79 = load i32*, i32** %12, align 8
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 4
  %82 = load i32*, i32** %81, align 8
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %82, i64 %86
  %88 = load i32, i32* %9, align 4
  %89 = call i32 @BIO_write(i32* %79, i32* %87, i32 %88)
  store i32 %89, i32* %10, align 4
  %90 = load i32, i32* %10, align 4
  %91 = icmp sle i32 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %78
  %93 = load i32*, i32** %5, align 8
  %94 = call i32 @BIO_copy_next_retry(i32* %93)
  %95 = load i32, i32* %10, align 4
  store i32 %95, i32* %4, align 4
  br label %402

96:                                               ; preds = %78
  %97 = load i32, i32* %10, align 4
  %98 = load i32, i32* %9, align 4
  %99 = icmp sle i32 %97, %98
  %100 = zext i1 %99 to i32
  %101 = call i32 @OPENSSL_assert(i32 %100)
  %102 = load i32, i32* %10, align 4
  %103 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 4
  %106 = add nsw i32 %105, %102
  store i32 %106, i32* %104, align 4
  %107 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 4
  %110 = icmp sle i32 %109, 8
  %111 = zext i1 %110 to i32
  %112 = call i32 @OPENSSL_assert(i32 %111)
  %113 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 8
  %116 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 4
  %119 = icmp sge i32 %115, %118
  %120 = zext i1 %119 to i32
  %121 = call i32 @OPENSSL_assert(i32 %120)
  %122 = load i32, i32* %10, align 4
  %123 = load i32, i32* %9, align 4
  %124 = sub nsw i32 %123, %122
  store i32 %124, i32* %9, align 4
  br label %75

125:                                              ; preds = %75
  %126 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 2
  store i32 0, i32* %127, align 4
  %128 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 1
  store i32 0, i32* %129, align 8
  %130 = load i8*, i8** %6, align 8
  %131 = icmp eq i8* %130, null
  br i1 %131, label %135, label %132

132:                                              ; preds = %125
  %133 = load i32, i32* %7, align 4
  %134 = icmp sle i32 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %132, %125
  store i32 0, i32* %4, align 4
  br label %402

136:                                              ; preds = %132
  br label %137

137:                                              ; preds = %395, %136
  %138 = load i32, i32* %7, align 4
  %139 = icmp sgt i32 %138, 0
  br i1 %139, label %140, label %400

140:                                              ; preds = %137
  %141 = load i32, i32* %7, align 4
  %142 = load i32, i32* @B64_BLOCK_SIZE, align 4
  %143 = icmp sgt i32 %141, %142
  br i1 %143, label %144, label %146

144:                                              ; preds = %140
  %145 = load i32, i32* @B64_BLOCK_SIZE, align 4
  br label %148

146:                                              ; preds = %140
  %147 = load i32, i32* %7, align 4
  br label %148

148:                                              ; preds = %146, %144
  %149 = phi i32 [ %145, %144 ], [ %147, %146 ]
  store i32 %149, i32* %9, align 4
  %150 = load i32*, i32** %5, align 8
  %151 = call i32 @BIO_get_flags(i32* %150)
  %152 = load i32, i32* @BIO_FLAGS_BASE64_NO_NL, align 4
  %153 = and i32 %151, %152
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %284

155:                                              ; preds = %148
  %156 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %157 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %156, i32 0, i32 3
  %158 = load i32, i32* %157, align 8
  %159 = icmp sgt i32 %158, 0
  br i1 %159, label %160, label %234

160:                                              ; preds = %155
  %161 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %162 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %161, i32 0, i32 3
  %163 = load i32, i32* %162, align 8
  %164 = icmp sle i32 %163, 3
  %165 = zext i1 %164 to i32
  %166 = call i32 @OPENSSL_assert(i32 %165)
  %167 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %168 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %167, i32 0, i32 3
  %169 = load i32, i32* %168, align 8
  %170 = sub nsw i32 3, %169
  store i32 %170, i32* %9, align 4
  %171 = load i32, i32* %9, align 4
  %172 = load i32, i32* %7, align 4
  %173 = icmp sgt i32 %171, %172
  br i1 %173, label %174, label %176

174:                                              ; preds = %160
  %175 = load i32, i32* %7, align 4
  store i32 %175, i32* %9, align 4
  br label %176

176:                                              ; preds = %174, %160
  %177 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %178 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %177, i32 0, i32 6
  %179 = load i32*, i32** %178, align 8
  %180 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %181 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %180, i32 0, i32 3
  %182 = load i32, i32* %181, align 8
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i32, i32* %179, i64 %183
  %185 = load i8*, i8** %6, align 8
  %186 = load i32, i32* %9, align 4
  %187 = call i32 @memcpy(i32* %184, i8* %185, i32 %186)
  %188 = load i32, i32* %9, align 4
  %189 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %190 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %189, i32 0, i32 3
  %191 = load i32, i32* %190, align 8
  %192 = add nsw i32 %191, %188
  store i32 %192, i32* %190, align 8
  %193 = load i32, i32* %9, align 4
  %194 = load i32, i32* %8, align 4
  %195 = add nsw i32 %194, %193
  store i32 %195, i32* %8, align 4
  %196 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %197 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %196, i32 0, i32 3
  %198 = load i32, i32* %197, align 8
  %199 = icmp slt i32 %198, 3
  br i1 %199, label %200, label %201

200:                                              ; preds = %176
  br label %400

201:                                              ; preds = %176
  %202 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %203 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %202, i32 0, i32 4
  %204 = load i32*, i32** %203, align 8
  %205 = bitcast i32* %204 to i8*
  %206 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %207 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %206, i32 0, i32 6
  %208 = load i32*, i32** %207, align 8
  %209 = bitcast i32* %208 to i8*
  %210 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %211 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %210, i32 0, i32 3
  %212 = load i32, i32* %211, align 8
  %213 = call i8* @EVP_EncodeBlock(i8* %205, i8* %209, i32 %212)
  %214 = ptrtoint i8* %213 to i32
  %215 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %216 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %215, i32 0, i32 1
  store i32 %214, i32* %216, align 8
  %217 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %218 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %217, i32 0, i32 1
  %219 = load i32, i32* %218, align 8
  %220 = icmp sle i32 %219, 8
  %221 = zext i1 %220 to i32
  %222 = call i32 @OPENSSL_assert(i32 %221)
  %223 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %224 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %223, i32 0, i32 1
  %225 = load i32, i32* %224, align 8
  %226 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %227 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %226, i32 0, i32 2
  %228 = load i32, i32* %227, align 4
  %229 = icmp sge i32 %225, %228
  %230 = zext i1 %229 to i32
  %231 = call i32 @OPENSSL_assert(i32 %230)
  %232 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %233 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %232, i32 0, i32 3
  store i32 0, i32* %233, align 8
  br label %283

234:                                              ; preds = %155
  %235 = load i32, i32* %9, align 4
  %236 = icmp slt i32 %235, 3
  br i1 %236, label %237, label %250

237:                                              ; preds = %234
  %238 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %239 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %238, i32 0, i32 6
  %240 = load i32*, i32** %239, align 8
  %241 = load i8*, i8** %6, align 8
  %242 = load i32, i32* %9, align 4
  %243 = call i32 @memcpy(i32* %240, i8* %241, i32 %242)
  %244 = load i32, i32* %9, align 4
  %245 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %246 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %245, i32 0, i32 3
  store i32 %244, i32* %246, align 8
  %247 = load i32, i32* %9, align 4
  %248 = load i32, i32* %8, align 4
  %249 = add nsw i32 %248, %247
  store i32 %249, i32* %8, align 4
  br label %400

250:                                              ; preds = %234
  %251 = load i32, i32* %9, align 4
  %252 = srem i32 %251, 3
  %253 = load i32, i32* %9, align 4
  %254 = sub nsw i32 %253, %252
  store i32 %254, i32* %9, align 4
  %255 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %256 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %255, i32 0, i32 4
  %257 = load i32*, i32** %256, align 8
  %258 = bitcast i32* %257 to i8*
  %259 = load i8*, i8** %6, align 8
  %260 = load i32, i32* %9, align 4
  %261 = call i8* @EVP_EncodeBlock(i8* %258, i8* %259, i32 %260)
  %262 = ptrtoint i8* %261 to i32
  %263 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %264 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %263, i32 0, i32 1
  store i32 %262, i32* %264, align 8
  %265 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %266 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %265, i32 0, i32 1
  %267 = load i32, i32* %266, align 8
  %268 = icmp sle i32 %267, 8
  %269 = zext i1 %268 to i32
  %270 = call i32 @OPENSSL_assert(i32 %269)
  %271 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %272 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %271, i32 0, i32 1
  %273 = load i32, i32* %272, align 8
  %274 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %275 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %274, i32 0, i32 2
  %276 = load i32, i32* %275, align 4
  %277 = icmp sge i32 %273, %276
  %278 = zext i1 %277 to i32
  %279 = call i32 @OPENSSL_assert(i32 %278)
  %280 = load i32, i32* %9, align 4
  %281 = load i32, i32* %8, align 4
  %282 = add nsw i32 %281, %280
  store i32 %282, i32* %8, align 4
  br label %283

283:                                              ; preds = %250, %201
  br label %325

284:                                              ; preds = %148
  %285 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %286 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %285, i32 0, i32 5
  %287 = load i32, i32* %286, align 8
  %288 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %289 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %288, i32 0, i32 4
  %290 = load i32*, i32** %289, align 8
  %291 = bitcast i32* %290 to i8*
  %292 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %293 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %292, i32 0, i32 1
  %294 = load i8*, i8** %6, align 8
  %295 = load i32, i32* %9, align 4
  %296 = call i32 @EVP_EncodeUpdate(i32 %287, i8* %291, i32* %293, i8* %294, i32 %295)
  %297 = icmp ne i32 %296, 0
  br i1 %297, label %306, label %298

298:                                              ; preds = %284
  %299 = load i32, i32* %8, align 4
  %300 = icmp eq i32 %299, 0
  br i1 %300, label %301, label %302

301:                                              ; preds = %298
  br label %304

302:                                              ; preds = %298
  %303 = load i32, i32* %8, align 4
  br label %304

304:                                              ; preds = %302, %301
  %305 = phi i32 [ -1, %301 ], [ %303, %302 ]
  store i32 %305, i32* %4, align 4
  br label %402

306:                                              ; preds = %284
  %307 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %308 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %307, i32 0, i32 1
  %309 = load i32, i32* %308, align 8
  %310 = icmp sle i32 %309, 8
  %311 = zext i1 %310 to i32
  %312 = call i32 @OPENSSL_assert(i32 %311)
  %313 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %314 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %313, i32 0, i32 1
  %315 = load i32, i32* %314, align 8
  %316 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %317 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %316, i32 0, i32 2
  %318 = load i32, i32* %317, align 4
  %319 = icmp sge i32 %315, %318
  %320 = zext i1 %319 to i32
  %321 = call i32 @OPENSSL_assert(i32 %320)
  %322 = load i32, i32* %9, align 4
  %323 = load i32, i32* %8, align 4
  %324 = add nsw i32 %323, %322
  store i32 %324, i32* %8, align 4
  br label %325

325:                                              ; preds = %306, %283
  %326 = load i32, i32* %9, align 4
  %327 = load i32, i32* %7, align 4
  %328 = sub nsw i32 %327, %326
  store i32 %328, i32* %7, align 4
  %329 = load i32, i32* %9, align 4
  %330 = load i8*, i8** %6, align 8
  %331 = sext i32 %329 to i64
  %332 = getelementptr inbounds i8, i8* %330, i64 %331
  store i8* %332, i8** %6, align 8
  %333 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %334 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %333, i32 0, i32 2
  store i32 0, i32* %334, align 4
  %335 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %336 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %335, i32 0, i32 1
  %337 = load i32, i32* %336, align 8
  store i32 %337, i32* %9, align 4
  br label %338

338:                                              ; preds = %366, %325
  %339 = load i32, i32* %9, align 4
  %340 = icmp sgt i32 %339, 0
  br i1 %340, label %341, label %395

341:                                              ; preds = %338
  %342 = load i32*, i32** %12, align 8
  %343 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %344 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %343, i32 0, i32 4
  %345 = load i32*, i32** %344, align 8
  %346 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %347 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %346, i32 0, i32 2
  %348 = load i32, i32* %347, align 4
  %349 = sext i32 %348 to i64
  %350 = getelementptr inbounds i32, i32* %345, i64 %349
  %351 = load i32, i32* %9, align 4
  %352 = call i32 @BIO_write(i32* %342, i32* %350, i32 %351)
  store i32 %352, i32* %10, align 4
  %353 = load i32, i32* %10, align 4
  %354 = icmp sle i32 %353, 0
  br i1 %354, label %355, label %366

355:                                              ; preds = %341
  %356 = load i32*, i32** %5, align 8
  %357 = call i32 @BIO_copy_next_retry(i32* %356)
  %358 = load i32, i32* %8, align 4
  %359 = icmp eq i32 %358, 0
  br i1 %359, label %360, label %362

360:                                              ; preds = %355
  %361 = load i32, i32* %10, align 4
  br label %364

362:                                              ; preds = %355
  %363 = load i32, i32* %8, align 4
  br label %364

364:                                              ; preds = %362, %360
  %365 = phi i32 [ %361, %360 ], [ %363, %362 ]
  store i32 %365, i32* %4, align 4
  br label %402

366:                                              ; preds = %341
  %367 = load i32, i32* %10, align 4
  %368 = load i32, i32* %9, align 4
  %369 = icmp sle i32 %367, %368
  %370 = zext i1 %369 to i32
  %371 = call i32 @OPENSSL_assert(i32 %370)
  %372 = load i32, i32* %10, align 4
  %373 = load i32, i32* %9, align 4
  %374 = sub nsw i32 %373, %372
  store i32 %374, i32* %9, align 4
  %375 = load i32, i32* %10, align 4
  %376 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %377 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %376, i32 0, i32 2
  %378 = load i32, i32* %377, align 4
  %379 = add nsw i32 %378, %375
  store i32 %379, i32* %377, align 4
  %380 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %381 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %380, i32 0, i32 2
  %382 = load i32, i32* %381, align 4
  %383 = icmp sle i32 %382, 8
  %384 = zext i1 %383 to i32
  %385 = call i32 @OPENSSL_assert(i32 %384)
  %386 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %387 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %386, i32 0, i32 1
  %388 = load i32, i32* %387, align 8
  %389 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %390 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %389, i32 0, i32 2
  %391 = load i32, i32* %390, align 4
  %392 = icmp sge i32 %388, %391
  %393 = zext i1 %392 to i32
  %394 = call i32 @OPENSSL_assert(i32 %393)
  br label %338

395:                                              ; preds = %338
  %396 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %397 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %396, i32 0, i32 1
  store i32 0, i32* %397, align 8
  %398 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %399 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %398, i32 0, i32 2
  store i32 0, i32* %399, align 4
  br label %137

400:                                              ; preds = %237, %200, %137
  %401 = load i32, i32* %8, align 4
  store i32 %401, i32* %4, align 4
  br label %402

402:                                              ; preds = %400, %364, %304, %135, %92, %23
  %403 = load i32, i32* %4, align 4
  ret i32 %403
}

declare dso_local i64 @BIO_get_data(i32*) #1

declare dso_local i32* @BIO_next(i32*) #1

declare dso_local i32 @BIO_clear_retry_flags(i32*) #1

declare dso_local i32 @EVP_EncodeInit(i32) #1

declare dso_local i32 @OPENSSL_assert(i32) #1

declare dso_local i32 @BIO_write(i32*, i32*, i32) #1

declare dso_local i32 @BIO_copy_next_retry(i32*) #1

declare dso_local i32 @BIO_get_flags(i32*) #1

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

declare dso_local i8* @EVP_EncodeBlock(i8*, i8*, i32) #1

declare dso_local i32 @EVP_EncodeUpdate(i32, i8*, i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
