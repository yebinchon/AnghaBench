; ModuleID = '/home/carl/AnghaBench/openssl/crypto/evp/extr_e_chacha20_poly1305.c_chacha20_poly1305_cipher.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/evp/extr_e_chacha20_poly1305.c_chacha20_poly1305_cipher.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.anon = type { i64 }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_16__ = type { i64, i32, i8*, i32, i8*, i64, %struct.TYPE_14__, %struct.TYPE_13__ }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_13__ = type { i32*, i64, i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }

@NO_TLS_PAYLOAD_LENGTH = common dso_local global i64 0, align 8
@zero = common dso_local global i8* null, align 8
@CHACHA_BLK_SIZE = common dso_local global i32 0, align 4
@EVP_AEAD_TLS1_AAD_LEN = common dso_local global i64 0, align 8
@POLY1305_BLOCK_SIZE = common dso_local global i64 0, align 8
@__const.chacha20_poly1305_cipher.is_endian = private unnamed_addr constant %union.anon { i64 1 }, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*, i8*, i8*, i64)* @chacha20_poly1305_cipher to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chacha20_poly1305_cipher(%struct.TYPE_15__* %0, i8* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_16__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %union.anon, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %17 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %18 = call %struct.TYPE_16__* @aead_data(%struct.TYPE_15__* %17)
  store %struct.TYPE_16__* %18, %struct.TYPE_16__** %10, align 8
  %19 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %20 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %12, align 8
  %22 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %23 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %103, label %26

26:                                               ; preds = %4
  %27 = load i64, i64* %12, align 8
  %28 = load i64, i64* @NO_TLS_PAYLOAD_LENGTH, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %39

30:                                               ; preds = %26
  %31 = load i8*, i8** %7, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %39

33:                                               ; preds = %30
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %35 = load i8*, i8** %7, align 8
  %36 = load i8*, i8** %8, align 8
  %37 = load i64, i64* %9, align 8
  %38 = call i32 @chacha20_poly1305_tls_cipher(%struct.TYPE_15__* %34, i8* %35, i8* %36, i64 %37)
  store i32 %38, i32* %5, align 4
  br label %480

39:                                               ; preds = %30, %26
  %40 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %41 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %40, i32 0, i32 7
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 0
  store i32 0, i32* %44, align 4
  %45 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %46 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %45, i32 0, i32 7
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = load i8*, i8** @zero, align 8
  %50 = load i32, i32* @CHACHA_BLK_SIZE, align 4
  %51 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %52 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %51, i32 0, i32 7
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 3
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %57 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %56, i32 0, i32 7
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = call i32 @ChaCha20_ctr32(i32 %48, i8* %49, i32 %50, i32 %55, i32* %59)
  %61 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %62 = call i32 @POLY1305_ctx(%struct.TYPE_16__* %61)
  %63 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %64 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %63, i32 0, i32 7
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @Poly1305_Init(i32 %62, i32 %66)
  %68 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %69 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %68, i32 0, i32 7
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 0
  store i32 1, i32* %72, align 4
  %73 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %74 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %73, i32 0, i32 7
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i32 0, i32 1
  store i64 0, i64* %75, align 8
  %76 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %77 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %76, i32 0, i32 6
  %78 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %77, i32 0, i32 1
  store i32 0, i32* %78, align 4
  %79 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %80 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %79, i32 0, i32 6
  %81 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %80, i32 0, i32 0
  store i32 0, i32* %81, align 8
  %82 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %83 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %82, i32 0, i32 1
  store i32 1, i32* %83, align 8
  %84 = load i64, i64* %12, align 8
  %85 = load i64, i64* @NO_TLS_PAYLOAD_LENGTH, align 8
  %86 = icmp ne i64 %84, %85
  br i1 %86, label %87, label %102

87:                                               ; preds = %39
  %88 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %89 = call i32 @POLY1305_ctx(%struct.TYPE_16__* %88)
  %90 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %91 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %90, i32 0, i32 2
  %92 = load i8*, i8** %91, align 8
  %93 = load i64, i64* @EVP_AEAD_TLS1_AAD_LEN, align 8
  %94 = call i32 @Poly1305_Update(i32 %89, i8* %92, i64 %93)
  %95 = load i64, i64* @EVP_AEAD_TLS1_AAD_LEN, align 8
  %96 = trunc i64 %95 to i32
  %97 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %98 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %97, i32 0, i32 6
  %99 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %98, i32 0, i32 0
  store i32 %96, i32* %99, align 8
  %100 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %101 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %100, i32 0, i32 3
  store i32 1, i32* %101, align 8
  br label %102

102:                                              ; preds = %87, %39
  br label %103

103:                                              ; preds = %102, %4
  %104 = load i8*, i8** %8, align 8
  %105 = icmp ne i8* %104, null
  br i1 %105, label %106, label %226

106:                                              ; preds = %103
  %107 = load i8*, i8** %7, align 8
  %108 = icmp eq i8* %107, null
  br i1 %108, label %109, label %127

109:                                              ; preds = %106
  %110 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %111 = call i32 @POLY1305_ctx(%struct.TYPE_16__* %110)
  %112 = load i8*, i8** %8, align 8
  %113 = load i64, i64* %9, align 8
  %114 = call i32 @Poly1305_Update(i32 %111, i8* %112, i64 %113)
  %115 = load i64, i64* %9, align 8
  %116 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %117 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %116, i32 0, i32 6
  %118 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = sext i32 %119 to i64
  %121 = add i64 %120, %115
  %122 = trunc i64 %121 to i32
  store i32 %122, i32* %118, align 8
  %123 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %124 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %123, i32 0, i32 3
  store i32 1, i32* %124, align 8
  %125 = load i64, i64* %9, align 8
  %126 = trunc i64 %125 to i32
  store i32 %126, i32* %5, align 4
  br label %480

127:                                              ; preds = %106
  %128 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %129 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %128, i32 0, i32 3
  %130 = load i32, i32* %129, align 8
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %152

132:                                              ; preds = %127
  %133 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %134 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %133, i32 0, i32 6
  %135 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = sext i32 %136 to i64
  %138 = load i64, i64* @POLY1305_BLOCK_SIZE, align 8
  %139 = urem i64 %137, %138
  store i64 %139, i64* %11, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %149

141:                                              ; preds = %132
  %142 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %143 = call i32 @POLY1305_ctx(%struct.TYPE_16__* %142)
  %144 = load i8*, i8** @zero, align 8
  %145 = load i64, i64* @POLY1305_BLOCK_SIZE, align 8
  %146 = load i64, i64* %11, align 8
  %147 = sub i64 %145, %146
  %148 = call i32 @Poly1305_Update(i32 %143, i8* %144, i64 %147)
  br label %149

149:                                              ; preds = %141, %132
  %150 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %151 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %150, i32 0, i32 3
  store i32 0, i32* %151, align 8
  br label %152

152:                                              ; preds = %149, %127
  %153 = load i64, i64* @NO_TLS_PAYLOAD_LENGTH, align 8
  %154 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %155 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %154, i32 0, i32 0
  store i64 %153, i64* %155, align 8
  %156 = load i64, i64* %12, align 8
  %157 = load i64, i64* @NO_TLS_PAYLOAD_LENGTH, align 8
  %158 = icmp eq i64 %156, %157
  br i1 %158, label %159, label %161

159:                                              ; preds = %152
  %160 = load i64, i64* %9, align 8
  store i64 %160, i64* %12, align 8
  br label %169

161:                                              ; preds = %152
  %162 = load i64, i64* %9, align 8
  %163 = load i64, i64* %12, align 8
  %164 = load i64, i64* @POLY1305_BLOCK_SIZE, align 8
  %165 = add i64 %163, %164
  %166 = icmp ne i64 %162, %165
  br i1 %166, label %167, label %168

167:                                              ; preds = %161
  store i32 -1, i32* %5, align 4
  br label %480

168:                                              ; preds = %161
  br label %169

169:                                              ; preds = %168, %159
  %170 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %171 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %170, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %199

174:                                              ; preds = %169
  %175 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %176 = load i8*, i8** %7, align 8
  %177 = load i8*, i8** %8, align 8
  %178 = load i64, i64* %12, align 8
  %179 = call i32 @chacha_cipher(%struct.TYPE_15__* %175, i8* %176, i8* %177, i64 %178)
  %180 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %181 = call i32 @POLY1305_ctx(%struct.TYPE_16__* %180)
  %182 = load i8*, i8** %7, align 8
  %183 = load i64, i64* %12, align 8
  %184 = call i32 @Poly1305_Update(i32 %181, i8* %182, i64 %183)
  %185 = load i64, i64* %12, align 8
  %186 = load i8*, i8** %8, align 8
  %187 = getelementptr inbounds i8, i8* %186, i64 %185
  store i8* %187, i8** %8, align 8
  %188 = load i64, i64* %12, align 8
  %189 = load i8*, i8** %7, align 8
  %190 = getelementptr inbounds i8, i8* %189, i64 %188
  store i8* %190, i8** %7, align 8
  %191 = load i64, i64* %12, align 8
  %192 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %193 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %192, i32 0, i32 6
  %194 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 4
  %196 = sext i32 %195 to i64
  %197 = add i64 %196, %191
  %198 = trunc i64 %197 to i32
  store i32 %198, i32* %194, align 4
  br label %224

199:                                              ; preds = %169
  %200 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %201 = call i32 @POLY1305_ctx(%struct.TYPE_16__* %200)
  %202 = load i8*, i8** %8, align 8
  %203 = load i64, i64* %12, align 8
  %204 = call i32 @Poly1305_Update(i32 %201, i8* %202, i64 %203)
  %205 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %206 = load i8*, i8** %7, align 8
  %207 = load i8*, i8** %8, align 8
  %208 = load i64, i64* %12, align 8
  %209 = call i32 @chacha_cipher(%struct.TYPE_15__* %205, i8* %206, i8* %207, i64 %208)
  %210 = load i64, i64* %12, align 8
  %211 = load i8*, i8** %8, align 8
  %212 = getelementptr inbounds i8, i8* %211, i64 %210
  store i8* %212, i8** %8, align 8
  %213 = load i64, i64* %12, align 8
  %214 = load i8*, i8** %7, align 8
  %215 = getelementptr inbounds i8, i8* %214, i64 %213
  store i8* %215, i8** %7, align 8
  %216 = load i64, i64* %12, align 8
  %217 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %218 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %217, i32 0, i32 6
  %219 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %218, i32 0, i32 1
  %220 = load i32, i32* %219, align 4
  %221 = sext i32 %220 to i64
  %222 = add i64 %221, %216
  %223 = trunc i64 %222 to i32
  store i32 %223, i32* %219, align 4
  br label %224

224:                                              ; preds = %199, %174
  br label %225

225:                                              ; preds = %224
  br label %226

226:                                              ; preds = %225, %103
  %227 = load i8*, i8** %8, align 8
  %228 = icmp eq i8* %227, null
  br i1 %228, label %233, label %229

229:                                              ; preds = %226
  %230 = load i64, i64* %12, align 8
  %231 = load i64, i64* %9, align 8
  %232 = icmp ne i64 %230, %231
  br i1 %232, label %233, label %477

233:                                              ; preds = %229, %226
  %234 = bitcast %union.anon* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %234, i8* align 8 bitcast (%union.anon* @__const.chacha20_poly1305_cipher.is_endian to i8*), i64 8, i1 false)
  %235 = load i64, i64* @POLY1305_BLOCK_SIZE, align 8
  %236 = call i8* @llvm.stacksave()
  store i8* %236, i8** %14, align 8
  %237 = alloca i8, i64 %235, align 16
  store i64 %235, i64* %15, align 8
  %238 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %239 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %238, i32 0, i32 3
  %240 = load i32, i32* %239, align 8
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %242, label %262

242:                                              ; preds = %233
  %243 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %244 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %243, i32 0, i32 6
  %245 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 8
  %247 = sext i32 %246 to i64
  %248 = load i64, i64* @POLY1305_BLOCK_SIZE, align 8
  %249 = urem i64 %247, %248
  store i64 %249, i64* %11, align 8
  %250 = icmp ne i64 %249, 0
  br i1 %250, label %251, label %259

251:                                              ; preds = %242
  %252 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %253 = call i32 @POLY1305_ctx(%struct.TYPE_16__* %252)
  %254 = load i8*, i8** @zero, align 8
  %255 = load i64, i64* @POLY1305_BLOCK_SIZE, align 8
  %256 = load i64, i64* %11, align 8
  %257 = sub i64 %255, %256
  %258 = call i32 @Poly1305_Update(i32 %253, i8* %254, i64 %257)
  br label %259

259:                                              ; preds = %251, %242
  %260 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %261 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %260, i32 0, i32 3
  store i32 0, i32* %261, align 8
  br label %262

262:                                              ; preds = %259, %233
  %263 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %264 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %263, i32 0, i32 6
  %265 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %264, i32 0, i32 1
  %266 = load i32, i32* %265, align 4
  %267 = sext i32 %266 to i64
  %268 = load i64, i64* @POLY1305_BLOCK_SIZE, align 8
  %269 = urem i64 %267, %268
  store i64 %269, i64* %11, align 8
  %270 = icmp ne i64 %269, 0
  br i1 %270, label %271, label %279

271:                                              ; preds = %262
  %272 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %273 = call i32 @POLY1305_ctx(%struct.TYPE_16__* %272)
  %274 = load i8*, i8** @zero, align 8
  %275 = load i64, i64* @POLY1305_BLOCK_SIZE, align 8
  %276 = load i64, i64* %11, align 8
  %277 = sub i64 %275, %276
  %278 = call i32 @Poly1305_Update(i32 %273, i8* %274, i64 %277)
  br label %279

279:                                              ; preds = %271, %262
  %280 = bitcast %union.anon* %13 to i8*
  %281 = load i8, i8* %280, align 8
  %282 = icmp ne i8 %281, 0
  br i1 %282, label %283, label %291

283:                                              ; preds = %279
  %284 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %285 = call i32 @POLY1305_ctx(%struct.TYPE_16__* %284)
  %286 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %287 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %286, i32 0, i32 6
  %288 = bitcast %struct.TYPE_14__* %287 to i8*
  %289 = load i64, i64* @POLY1305_BLOCK_SIZE, align 8
  %290 = call i32 @Poly1305_Update(i32 %285, i8* %288, i64 %289)
  br label %406

291:                                              ; preds = %279
  %292 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %293 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %292, i32 0, i32 6
  %294 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %293, i32 0, i32 0
  %295 = load i32, i32* %294, align 8
  %296 = trunc i32 %295 to i8
  %297 = getelementptr inbounds i8, i8* %237, i64 0
  store i8 %296, i8* %297, align 16
  %298 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %299 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %298, i32 0, i32 6
  %300 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %299, i32 0, i32 0
  %301 = load i32, i32* %300, align 8
  %302 = ashr i32 %301, 8
  %303 = trunc i32 %302 to i8
  %304 = getelementptr inbounds i8, i8* %237, i64 1
  store i8 %303, i8* %304, align 1
  %305 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %306 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %305, i32 0, i32 6
  %307 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %306, i32 0, i32 0
  %308 = load i32, i32* %307, align 8
  %309 = ashr i32 %308, 16
  %310 = trunc i32 %309 to i8
  %311 = getelementptr inbounds i8, i8* %237, i64 2
  store i8 %310, i8* %311, align 2
  %312 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %313 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %312, i32 0, i32 6
  %314 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %313, i32 0, i32 0
  %315 = load i32, i32* %314, align 8
  %316 = ashr i32 %315, 24
  %317 = trunc i32 %316 to i8
  %318 = getelementptr inbounds i8, i8* %237, i64 3
  store i8 %317, i8* %318, align 1
  %319 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %320 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %319, i32 0, i32 6
  %321 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %320, i32 0, i32 0
  %322 = load i32, i32* %321, align 8
  %323 = ashr i32 %322, 32
  %324 = trunc i32 %323 to i8
  %325 = getelementptr inbounds i8, i8* %237, i64 4
  store i8 %324, i8* %325, align 4
  %326 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %327 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %326, i32 0, i32 6
  %328 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %327, i32 0, i32 0
  %329 = load i32, i32* %328, align 8
  %330 = ashr i32 %329, 40
  %331 = trunc i32 %330 to i8
  %332 = getelementptr inbounds i8, i8* %237, i64 5
  store i8 %331, i8* %332, align 1
  %333 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %334 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %333, i32 0, i32 6
  %335 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %334, i32 0, i32 0
  %336 = load i32, i32* %335, align 8
  %337 = ashr i32 %336, 48
  %338 = trunc i32 %337 to i8
  %339 = getelementptr inbounds i8, i8* %237, i64 6
  store i8 %338, i8* %339, align 2
  %340 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %341 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %340, i32 0, i32 6
  %342 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %341, i32 0, i32 0
  %343 = load i32, i32* %342, align 8
  %344 = ashr i32 %343, 56
  %345 = trunc i32 %344 to i8
  %346 = getelementptr inbounds i8, i8* %237, i64 7
  store i8 %345, i8* %346, align 1
  %347 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %348 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %347, i32 0, i32 6
  %349 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %348, i32 0, i32 1
  %350 = load i32, i32* %349, align 4
  %351 = trunc i32 %350 to i8
  %352 = getelementptr inbounds i8, i8* %237, i64 8
  store i8 %351, i8* %352, align 8
  %353 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %354 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %353, i32 0, i32 6
  %355 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %354, i32 0, i32 1
  %356 = load i32, i32* %355, align 4
  %357 = ashr i32 %356, 8
  %358 = trunc i32 %357 to i8
  %359 = getelementptr inbounds i8, i8* %237, i64 9
  store i8 %358, i8* %359, align 1
  %360 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %361 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %360, i32 0, i32 6
  %362 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %361, i32 0, i32 1
  %363 = load i32, i32* %362, align 4
  %364 = ashr i32 %363, 16
  %365 = trunc i32 %364 to i8
  %366 = getelementptr inbounds i8, i8* %237, i64 10
  store i8 %365, i8* %366, align 2
  %367 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %368 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %367, i32 0, i32 6
  %369 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %368, i32 0, i32 1
  %370 = load i32, i32* %369, align 4
  %371 = ashr i32 %370, 24
  %372 = trunc i32 %371 to i8
  %373 = getelementptr inbounds i8, i8* %237, i64 11
  store i8 %372, i8* %373, align 1
  %374 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %375 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %374, i32 0, i32 6
  %376 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %375, i32 0, i32 1
  %377 = load i32, i32* %376, align 4
  %378 = ashr i32 %377, 32
  %379 = trunc i32 %378 to i8
  %380 = getelementptr inbounds i8, i8* %237, i64 12
  store i8 %379, i8* %380, align 4
  %381 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %382 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %381, i32 0, i32 6
  %383 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %382, i32 0, i32 1
  %384 = load i32, i32* %383, align 4
  %385 = ashr i32 %384, 40
  %386 = trunc i32 %385 to i8
  %387 = getelementptr inbounds i8, i8* %237, i64 13
  store i8 %386, i8* %387, align 1
  %388 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %389 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %388, i32 0, i32 6
  %390 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %389, i32 0, i32 1
  %391 = load i32, i32* %390, align 4
  %392 = ashr i32 %391, 48
  %393 = trunc i32 %392 to i8
  %394 = getelementptr inbounds i8, i8* %237, i64 14
  store i8 %393, i8* %394, align 2
  %395 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %396 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %395, i32 0, i32 6
  %397 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %396, i32 0, i32 1
  %398 = load i32, i32* %397, align 4
  %399 = ashr i32 %398, 56
  %400 = trunc i32 %399 to i8
  %401 = getelementptr inbounds i8, i8* %237, i64 15
  store i8 %400, i8* %401, align 1
  %402 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %403 = call i32 @POLY1305_ctx(%struct.TYPE_16__* %402)
  %404 = load i64, i64* @POLY1305_BLOCK_SIZE, align 8
  %405 = call i32 @Poly1305_Update(i32 %403, i8* %237, i64 %404)
  br label %406

406:                                              ; preds = %291, %283
  %407 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %408 = call i32 @POLY1305_ctx(%struct.TYPE_16__* %407)
  %409 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %410 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %409, i32 0, i32 0
  %411 = load i64, i64* %410, align 8
  %412 = icmp ne i64 %411, 0
  br i1 %412, label %413, label %417

413:                                              ; preds = %406
  %414 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %415 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %414, i32 0, i32 4
  %416 = load i8*, i8** %415, align 8
  br label %418

417:                                              ; preds = %406
  br label %418

418:                                              ; preds = %417, %413
  %419 = phi i8* [ %416, %413 ], [ %237, %417 ]
  %420 = call i32 @Poly1305_Final(i32 %408, i8* %419)
  %421 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %422 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %421, i32 0, i32 1
  store i32 0, i32* %422, align 8
  %423 = load i8*, i8** %8, align 8
  %424 = icmp ne i8* %423, null
  br i1 %424, label %425, label %455

425:                                              ; preds = %418
  %426 = load i64, i64* %9, align 8
  %427 = load i64, i64* %12, align 8
  %428 = icmp ne i64 %426, %427
  br i1 %428, label %429, label %455

429:                                              ; preds = %425
  %430 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %431 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %430, i32 0, i32 0
  %432 = load i64, i64* %431, align 8
  %433 = icmp ne i64 %432, 0
  br i1 %433, label %434, label %441

434:                                              ; preds = %429
  %435 = load i8*, i8** %7, align 8
  %436 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %437 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %436, i32 0, i32 4
  %438 = load i8*, i8** %437, align 8
  %439 = load i64, i64* @POLY1305_BLOCK_SIZE, align 8
  %440 = call i32 @memcpy(i8* %435, i8* %438, i64 %439)
  br label %454

441:                                              ; preds = %429
  %442 = load i8*, i8** %8, align 8
  %443 = load i64, i64* @POLY1305_BLOCK_SIZE, align 8
  %444 = call i64 @CRYPTO_memcmp(i8* %237, i8* %442, i64 %443)
  %445 = icmp ne i64 %444, 0
  br i1 %445, label %446, label %453

446:                                              ; preds = %441
  %447 = load i8*, i8** %7, align 8
  %448 = load i64, i64* %12, align 8
  %449 = sub i64 0, %448
  %450 = getelementptr inbounds i8, i8* %447, i64 %449
  %451 = load i64, i64* %12, align 8
  %452 = call i32 @memset(i8* %450, i32 0, i64 %451)
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %473

453:                                              ; preds = %441
  br label %454

454:                                              ; preds = %453, %434
  br label %472

455:                                              ; preds = %425, %418
  %456 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %457 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %456, i32 0, i32 0
  %458 = load i64, i64* %457, align 8
  %459 = icmp ne i64 %458, 0
  br i1 %459, label %471, label %460

460:                                              ; preds = %455
  %461 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %462 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %461, i32 0, i32 4
  %463 = load i8*, i8** %462, align 8
  %464 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %465 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %464, i32 0, i32 5
  %466 = load i64, i64* %465, align 8
  %467 = call i64 @CRYPTO_memcmp(i8* %237, i8* %463, i64 %466)
  %468 = icmp ne i64 %467, 0
  br i1 %468, label %469, label %470

469:                                              ; preds = %460
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %473

470:                                              ; preds = %460
  br label %471

471:                                              ; preds = %470, %455
  br label %472

472:                                              ; preds = %471, %454
  store i32 0, i32* %16, align 4
  br label %473

473:                                              ; preds = %472, %469, %446
  %474 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %474)
  %475 = load i32, i32* %16, align 4
  switch i32 %475, label %482 [
    i32 0, label %476
    i32 1, label %480
  ]

476:                                              ; preds = %473
  br label %477

477:                                              ; preds = %476, %229
  %478 = load i64, i64* %9, align 8
  %479 = trunc i64 %478 to i32
  store i32 %479, i32* %5, align 4
  br label %480

480:                                              ; preds = %477, %473, %167, %109, %33
  %481 = load i32, i32* %5, align 4
  ret i32 %481

482:                                              ; preds = %473
  unreachable
}

declare dso_local %struct.TYPE_16__* @aead_data(%struct.TYPE_15__*) #1

declare dso_local i32 @chacha20_poly1305_tls_cipher(%struct.TYPE_15__*, i8*, i8*, i64) #1

declare dso_local i32 @ChaCha20_ctr32(i32, i8*, i32, i32, i32*) #1

declare dso_local i32 @Poly1305_Init(i32, i32) #1

declare dso_local i32 @POLY1305_ctx(%struct.TYPE_16__*) #1

declare dso_local i32 @Poly1305_Update(i32, i8*, i64) #1

declare dso_local i32 @chacha_cipher(%struct.TYPE_15__*, i8*, i8*, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #3

declare dso_local i32 @Poly1305_Final(i32, i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i64 @CRYPTO_memcmp(i8*, i8*, i64) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #3

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
