; ModuleID = '/home/carl/AnghaBench/openssl/providers/implementations/ciphers/extr_cipher_chacha20_poly1305_hw.c_chacha20_poly1305_aead_cipher.c'
source_filename = "/home/carl/AnghaBench/openssl/providers/implementations/ciphers/extr_cipher_chacha20_poly1305_hw.c_chacha20_poly1305_aead_cipher.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.anon = type { i64 }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_16__ = type { i64, i32, i8*, i32, i8*, i64, %struct.TYPE_12__, %struct.TYPE_14__, i32 }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_14__ = type { i32*, %struct.TYPE_17__, i64, i32, %struct.TYPE_11__ }
%struct.TYPE_17__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 (%struct.TYPE_17__*, i8*, i8*, i64)* }
%struct.TYPE_11__ = type { i32 }

@__const.chacha20_poly1305_aead_cipher.is_endian = private unnamed_addr constant %union.anon { i64 1 }, align 8
@NO_TLS_PAYLOAD_LENGTH = common dso_local global i64 0, align 8
@zero = common dso_local global i8* null, align 8
@CHACHA_BLK_SIZE = common dso_local global i32 0, align 4
@EVP_AEAD_TLS1_AAD_LEN = common dso_local global i64 0, align 8
@POLY1305_BLOCK_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*, i8*, i64*, i8*, i64)* @chacha20_poly1305_aead_cipher to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chacha20_poly1305_aead_cipher(%struct.TYPE_15__* %0, i8* %1, i64* %2, i8* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_16__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca %union.anon, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64* %2, i64** %9, align 8
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %23 = bitcast %struct.TYPE_15__* %22 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %23, %struct.TYPE_16__** %12, align 8
  %24 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %25 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %24, i32 0, i32 8
  store i32* %25, i32** %13, align 8
  %26 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %27 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %15, align 8
  store i64 0, i64* %16, align 8
  store i32 0, i32* %17, align 4
  %29 = bitcast %union.anon* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %29, i8* align 8 bitcast (%union.anon* @__const.chacha20_poly1305_aead_cipher.is_endian to i8*), i64 8, i1 false)
  %30 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %31 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %110, label %34

34:                                               ; preds = %5
  %35 = load i64, i64* %15, align 8
  %36 = load i64, i64* @NO_TLS_PAYLOAD_LENGTH, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %48

38:                                               ; preds = %34
  %39 = load i8*, i8** %8, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %41, label %48

41:                                               ; preds = %38
  %42 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %43 = load i8*, i8** %8, align 8
  %44 = load i64*, i64** %9, align 8
  %45 = load i8*, i8** %10, align 8
  %46 = load i64, i64* %11, align 8
  %47 = call i32 @chacha20_poly1305_tls_cipher(%struct.TYPE_15__* %42, i8* %43, i64* %44, i8* %45, i64 %46)
  store i32 %47, i32* %6, align 4
  br label %497

48:                                               ; preds = %38, %34
  %49 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %50 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %49, i32 0, i32 7
  %51 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 0
  store i32 0, i32* %53, align 4
  %54 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %55 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %54, i32 0, i32 7
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 8
  %58 = load i8*, i8** @zero, align 8
  %59 = load i32, i32* @CHACHA_BLK_SIZE, align 4
  %60 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %61 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %60, i32 0, i32 7
  %62 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %61, i32 0, i32 4
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %66 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %65, i32 0, i32 7
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = call i32 @ChaCha20_ctr32(i32 %57, i8* %58, i32 %59, i32 %64, i32* %68)
  %70 = load i32*, i32** %13, align 8
  %71 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %72 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %71, i32 0, i32 7
  %73 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @Poly1305_Init(i32* %70, i32 %74)
  %76 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %77 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %76, i32 0, i32 7
  %78 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 0
  store i32 1, i32* %80, align 4
  %81 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %82 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %81, i32 0, i32 7
  %83 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %82, i32 0, i32 2
  store i64 0, i64* %83, align 8
  %84 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %85 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %84, i32 0, i32 6
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %85, i32 0, i32 1
  store i32 0, i32* %86, align 4
  %87 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %88 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %87, i32 0, i32 6
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i32 0, i32 0
  store i32 0, i32* %89, align 8
  %90 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %91 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %90, i32 0, i32 1
  store i32 1, i32* %91, align 8
  %92 = load i64, i64* %15, align 8
  %93 = load i64, i64* @NO_TLS_PAYLOAD_LENGTH, align 8
  %94 = icmp ne i64 %92, %93
  br i1 %94, label %95, label %109

95:                                               ; preds = %48
  %96 = load i32*, i32** %13, align 8
  %97 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %98 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %97, i32 0, i32 2
  %99 = load i8*, i8** %98, align 8
  %100 = load i64, i64* @EVP_AEAD_TLS1_AAD_LEN, align 8
  %101 = call i32 @Poly1305_Update(i32* %96, i8* %99, i64 %100)
  %102 = load i64, i64* @EVP_AEAD_TLS1_AAD_LEN, align 8
  %103 = trunc i64 %102 to i32
  %104 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %105 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %104, i32 0, i32 6
  %106 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %105, i32 0, i32 0
  store i32 %103, i32* %106, align 8
  %107 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %108 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %107, i32 0, i32 3
  store i32 1, i32* %108, align 8
  br label %109

109:                                              ; preds = %95, %48
  br label %110

110:                                              ; preds = %109, %5
  %111 = load i8*, i8** %10, align 8
  %112 = icmp ne i8* %111, null
  br i1 %112, label %113, label %245

113:                                              ; preds = %110
  %114 = load i8*, i8** %8, align 8
  %115 = icmp eq i8* %114, null
  br i1 %115, label %116, label %131

116:                                              ; preds = %113
  %117 = load i32*, i32** %13, align 8
  %118 = load i8*, i8** %10, align 8
  %119 = load i64, i64* %11, align 8
  %120 = call i32 @Poly1305_Update(i32* %117, i8* %118, i64 %119)
  %121 = load i64, i64* %11, align 8
  %122 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %123 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %122, i32 0, i32 6
  %124 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = sext i32 %125 to i64
  %127 = add i64 %126, %121
  %128 = trunc i64 %127 to i32
  store i32 %128, i32* %124, align 8
  %129 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %130 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %129, i32 0, i32 3
  store i32 1, i32* %130, align 8
  br label %491

131:                                              ; preds = %113
  %132 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %133 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %132, i32 0, i32 3
  %134 = load i32, i32* %133, align 8
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %155

136:                                              ; preds = %131
  %137 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %138 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %137, i32 0, i32 6
  %139 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = sext i32 %140 to i64
  %142 = load i64, i64* @POLY1305_BLOCK_SIZE, align 8
  %143 = urem i64 %141, %142
  store i64 %143, i64* %14, align 8
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %152

145:                                              ; preds = %136
  %146 = load i32*, i32** %13, align 8
  %147 = load i8*, i8** @zero, align 8
  %148 = load i64, i64* @POLY1305_BLOCK_SIZE, align 8
  %149 = load i64, i64* %14, align 8
  %150 = sub i64 %148, %149
  %151 = call i32 @Poly1305_Update(i32* %146, i8* %147, i64 %150)
  br label %152

152:                                              ; preds = %145, %136
  %153 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %154 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %153, i32 0, i32 3
  store i32 0, i32* %154, align 8
  br label %155

155:                                              ; preds = %152, %131
  %156 = load i64, i64* @NO_TLS_PAYLOAD_LENGTH, align 8
  %157 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %158 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %157, i32 0, i32 0
  store i64 %156, i64* %158, align 8
  %159 = load i64, i64* %15, align 8
  %160 = load i64, i64* @NO_TLS_PAYLOAD_LENGTH, align 8
  %161 = icmp eq i64 %159, %160
  br i1 %161, label %162, label %164

162:                                              ; preds = %155
  %163 = load i64, i64* %11, align 8
  store i64 %163, i64* %15, align 8
  br label %172

164:                                              ; preds = %155
  %165 = load i64, i64* %11, align 8
  %166 = load i64, i64* %15, align 8
  %167 = load i64, i64* @POLY1305_BLOCK_SIZE, align 8
  %168 = add i64 %166, %167
  %169 = icmp ne i64 %165, %168
  br i1 %169, label %170, label %171

170:                                              ; preds = %164
  br label %493

171:                                              ; preds = %164
  br label %172

172:                                              ; preds = %171, %162
  %173 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %174 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %173, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %210

177:                                              ; preds = %172
  %178 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %179 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %178, i32 0, i32 7
  %180 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %179, i32 0, i32 1
  %181 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %180, i32 0, i32 0
  %182 = load %struct.TYPE_13__*, %struct.TYPE_13__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %182, i32 0, i32 0
  %184 = load i32 (%struct.TYPE_17__*, i8*, i8*, i64)*, i32 (%struct.TYPE_17__*, i8*, i8*, i64)** %183, align 8
  %185 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %186 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %185, i32 0, i32 7
  %187 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %186, i32 0, i32 1
  %188 = load i8*, i8** %8, align 8
  %189 = load i8*, i8** %10, align 8
  %190 = load i64, i64* %15, align 8
  %191 = call i32 %184(%struct.TYPE_17__* %187, i8* %188, i8* %189, i64 %190)
  %192 = load i32*, i32** %13, align 8
  %193 = load i8*, i8** %8, align 8
  %194 = load i64, i64* %15, align 8
  %195 = call i32 @Poly1305_Update(i32* %192, i8* %193, i64 %194)
  %196 = load i64, i64* %15, align 8
  %197 = load i8*, i8** %10, align 8
  %198 = getelementptr inbounds i8, i8* %197, i64 %196
  store i8* %198, i8** %10, align 8
  %199 = load i64, i64* %15, align 8
  %200 = load i8*, i8** %8, align 8
  %201 = getelementptr inbounds i8, i8* %200, i64 %199
  store i8* %201, i8** %8, align 8
  %202 = load i64, i64* %15, align 8
  %203 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %204 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %203, i32 0, i32 6
  %205 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %204, i32 0, i32 1
  %206 = load i32, i32* %205, align 4
  %207 = sext i32 %206 to i64
  %208 = add i64 %207, %202
  %209 = trunc i64 %208 to i32
  store i32 %209, i32* %205, align 4
  br label %243

210:                                              ; preds = %172
  %211 = load i32*, i32** %13, align 8
  %212 = load i8*, i8** %10, align 8
  %213 = load i64, i64* %15, align 8
  %214 = call i32 @Poly1305_Update(i32* %211, i8* %212, i64 %213)
  %215 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %216 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %215, i32 0, i32 7
  %217 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %216, i32 0, i32 1
  %218 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %217, i32 0, i32 0
  %219 = load %struct.TYPE_13__*, %struct.TYPE_13__** %218, align 8
  %220 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %219, i32 0, i32 0
  %221 = load i32 (%struct.TYPE_17__*, i8*, i8*, i64)*, i32 (%struct.TYPE_17__*, i8*, i8*, i64)** %220, align 8
  %222 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %223 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %222, i32 0, i32 7
  %224 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %223, i32 0, i32 1
  %225 = load i8*, i8** %8, align 8
  %226 = load i8*, i8** %10, align 8
  %227 = load i64, i64* %15, align 8
  %228 = call i32 %221(%struct.TYPE_17__* %224, i8* %225, i8* %226, i64 %227)
  %229 = load i64, i64* %15, align 8
  %230 = load i8*, i8** %10, align 8
  %231 = getelementptr inbounds i8, i8* %230, i64 %229
  store i8* %231, i8** %10, align 8
  %232 = load i64, i64* %15, align 8
  %233 = load i8*, i8** %8, align 8
  %234 = getelementptr inbounds i8, i8* %233, i64 %232
  store i8* %234, i8** %8, align 8
  %235 = load i64, i64* %15, align 8
  %236 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %237 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %236, i32 0, i32 6
  %238 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %237, i32 0, i32 1
  %239 = load i32, i32* %238, align 4
  %240 = sext i32 %239 to i64
  %241 = add i64 %240, %235
  %242 = trunc i64 %241 to i32
  store i32 %242, i32* %238, align 4
  br label %243

243:                                              ; preds = %210, %177
  br label %244

244:                                              ; preds = %243
  br label %245

245:                                              ; preds = %244, %110
  %246 = load i8*, i8** %10, align 8
  %247 = icmp eq i8* %246, null
  br i1 %247, label %252, label %248

248:                                              ; preds = %245
  %249 = load i64, i64* %11, align 8
  %250 = load i64, i64* %15, align 8
  %251 = icmp ne i64 %249, %250
  br i1 %251, label %252, label %490

252:                                              ; preds = %248, %245
  %253 = load i64, i64* @POLY1305_BLOCK_SIZE, align 8
  %254 = call i8* @llvm.stacksave()
  store i8* %254, i8** %19, align 8
  %255 = alloca i8, i64 %253, align 16
  store i64 %253, i64* %20, align 8
  %256 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %257 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %256, i32 0, i32 3
  %258 = load i32, i32* %257, align 8
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %260, label %279

260:                                              ; preds = %252
  %261 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %262 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %261, i32 0, i32 6
  %263 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %262, i32 0, i32 0
  %264 = load i32, i32* %263, align 8
  %265 = sext i32 %264 to i64
  %266 = load i64, i64* @POLY1305_BLOCK_SIZE, align 8
  %267 = urem i64 %265, %266
  store i64 %267, i64* %14, align 8
  %268 = icmp ne i64 %267, 0
  br i1 %268, label %269, label %276

269:                                              ; preds = %260
  %270 = load i32*, i32** %13, align 8
  %271 = load i8*, i8** @zero, align 8
  %272 = load i64, i64* @POLY1305_BLOCK_SIZE, align 8
  %273 = load i64, i64* %14, align 8
  %274 = sub i64 %272, %273
  %275 = call i32 @Poly1305_Update(i32* %270, i8* %271, i64 %274)
  br label %276

276:                                              ; preds = %269, %260
  %277 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %278 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %277, i32 0, i32 3
  store i32 0, i32* %278, align 8
  br label %279

279:                                              ; preds = %276, %252
  %280 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %281 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %280, i32 0, i32 6
  %282 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %281, i32 0, i32 1
  %283 = load i32, i32* %282, align 4
  %284 = sext i32 %283 to i64
  %285 = load i64, i64* @POLY1305_BLOCK_SIZE, align 8
  %286 = urem i64 %284, %285
  store i64 %286, i64* %14, align 8
  %287 = icmp ne i64 %286, 0
  br i1 %287, label %288, label %295

288:                                              ; preds = %279
  %289 = load i32*, i32** %13, align 8
  %290 = load i8*, i8** @zero, align 8
  %291 = load i64, i64* @POLY1305_BLOCK_SIZE, align 8
  %292 = load i64, i64* %14, align 8
  %293 = sub i64 %291, %292
  %294 = call i32 @Poly1305_Update(i32* %289, i8* %290, i64 %293)
  br label %295

295:                                              ; preds = %288, %279
  %296 = bitcast %union.anon* %18 to i8*
  %297 = load i8, i8* %296, align 8
  %298 = icmp ne i8 %297, 0
  br i1 %298, label %299, label %306

299:                                              ; preds = %295
  %300 = load i32*, i32** %13, align 8
  %301 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %302 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %301, i32 0, i32 6
  %303 = bitcast %struct.TYPE_12__* %302 to i8*
  %304 = load i64, i64* @POLY1305_BLOCK_SIZE, align 8
  %305 = call i32 @Poly1305_Update(i32* %300, i8* %303, i64 %304)
  br label %420

306:                                              ; preds = %295
  %307 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %308 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %307, i32 0, i32 6
  %309 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %308, i32 0, i32 0
  %310 = load i32, i32* %309, align 8
  %311 = trunc i32 %310 to i8
  %312 = getelementptr inbounds i8, i8* %255, i64 0
  store i8 %311, i8* %312, align 16
  %313 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %314 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %313, i32 0, i32 6
  %315 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %314, i32 0, i32 0
  %316 = load i32, i32* %315, align 8
  %317 = ashr i32 %316, 8
  %318 = trunc i32 %317 to i8
  %319 = getelementptr inbounds i8, i8* %255, i64 1
  store i8 %318, i8* %319, align 1
  %320 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %321 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %320, i32 0, i32 6
  %322 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %321, i32 0, i32 0
  %323 = load i32, i32* %322, align 8
  %324 = ashr i32 %323, 16
  %325 = trunc i32 %324 to i8
  %326 = getelementptr inbounds i8, i8* %255, i64 2
  store i8 %325, i8* %326, align 2
  %327 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %328 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %327, i32 0, i32 6
  %329 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %328, i32 0, i32 0
  %330 = load i32, i32* %329, align 8
  %331 = ashr i32 %330, 24
  %332 = trunc i32 %331 to i8
  %333 = getelementptr inbounds i8, i8* %255, i64 3
  store i8 %332, i8* %333, align 1
  %334 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %335 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %334, i32 0, i32 6
  %336 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %335, i32 0, i32 0
  %337 = load i32, i32* %336, align 8
  %338 = ashr i32 %337, 32
  %339 = trunc i32 %338 to i8
  %340 = getelementptr inbounds i8, i8* %255, i64 4
  store i8 %339, i8* %340, align 4
  %341 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %342 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %341, i32 0, i32 6
  %343 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %342, i32 0, i32 0
  %344 = load i32, i32* %343, align 8
  %345 = ashr i32 %344, 40
  %346 = trunc i32 %345 to i8
  %347 = getelementptr inbounds i8, i8* %255, i64 5
  store i8 %346, i8* %347, align 1
  %348 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %349 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %348, i32 0, i32 6
  %350 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %349, i32 0, i32 0
  %351 = load i32, i32* %350, align 8
  %352 = ashr i32 %351, 48
  %353 = trunc i32 %352 to i8
  %354 = getelementptr inbounds i8, i8* %255, i64 6
  store i8 %353, i8* %354, align 2
  %355 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %356 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %355, i32 0, i32 6
  %357 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %356, i32 0, i32 0
  %358 = load i32, i32* %357, align 8
  %359 = ashr i32 %358, 56
  %360 = trunc i32 %359 to i8
  %361 = getelementptr inbounds i8, i8* %255, i64 7
  store i8 %360, i8* %361, align 1
  %362 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %363 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %362, i32 0, i32 6
  %364 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %363, i32 0, i32 1
  %365 = load i32, i32* %364, align 4
  %366 = trunc i32 %365 to i8
  %367 = getelementptr inbounds i8, i8* %255, i64 8
  store i8 %366, i8* %367, align 8
  %368 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %369 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %368, i32 0, i32 6
  %370 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %369, i32 0, i32 1
  %371 = load i32, i32* %370, align 4
  %372 = ashr i32 %371, 8
  %373 = trunc i32 %372 to i8
  %374 = getelementptr inbounds i8, i8* %255, i64 9
  store i8 %373, i8* %374, align 1
  %375 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %376 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %375, i32 0, i32 6
  %377 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %376, i32 0, i32 1
  %378 = load i32, i32* %377, align 4
  %379 = ashr i32 %378, 16
  %380 = trunc i32 %379 to i8
  %381 = getelementptr inbounds i8, i8* %255, i64 10
  store i8 %380, i8* %381, align 2
  %382 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %383 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %382, i32 0, i32 6
  %384 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %383, i32 0, i32 1
  %385 = load i32, i32* %384, align 4
  %386 = ashr i32 %385, 24
  %387 = trunc i32 %386 to i8
  %388 = getelementptr inbounds i8, i8* %255, i64 11
  store i8 %387, i8* %388, align 1
  %389 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %390 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %389, i32 0, i32 6
  %391 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %390, i32 0, i32 1
  %392 = load i32, i32* %391, align 4
  %393 = ashr i32 %392, 32
  %394 = trunc i32 %393 to i8
  %395 = getelementptr inbounds i8, i8* %255, i64 12
  store i8 %394, i8* %395, align 4
  %396 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %397 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %396, i32 0, i32 6
  %398 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %397, i32 0, i32 1
  %399 = load i32, i32* %398, align 4
  %400 = ashr i32 %399, 40
  %401 = trunc i32 %400 to i8
  %402 = getelementptr inbounds i8, i8* %255, i64 13
  store i8 %401, i8* %402, align 1
  %403 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %404 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %403, i32 0, i32 6
  %405 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %404, i32 0, i32 1
  %406 = load i32, i32* %405, align 4
  %407 = ashr i32 %406, 48
  %408 = trunc i32 %407 to i8
  %409 = getelementptr inbounds i8, i8* %255, i64 14
  store i8 %408, i8* %409, align 2
  %410 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %411 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %410, i32 0, i32 6
  %412 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %411, i32 0, i32 1
  %413 = load i32, i32* %412, align 4
  %414 = ashr i32 %413, 56
  %415 = trunc i32 %414 to i8
  %416 = getelementptr inbounds i8, i8* %255, i64 15
  store i8 %415, i8* %416, align 1
  %417 = load i32*, i32** %13, align 8
  %418 = load i64, i64* @POLY1305_BLOCK_SIZE, align 8
  %419 = call i32 @Poly1305_Update(i32* %417, i8* %255, i64 %418)
  br label %420

420:                                              ; preds = %306, %299
  %421 = load i32*, i32** %13, align 8
  %422 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %423 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %422, i32 0, i32 0
  %424 = load i64, i64* %423, align 8
  %425 = icmp ne i64 %424, 0
  br i1 %425, label %426, label %430

426:                                              ; preds = %420
  %427 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %428 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %427, i32 0, i32 4
  %429 = load i8*, i8** %428, align 8
  br label %431

430:                                              ; preds = %420
  br label %431

431:                                              ; preds = %430, %426
  %432 = phi i8* [ %429, %426 ], [ %255, %430 ]
  %433 = call i32 @Poly1305_Final(i32* %421, i8* %432)
  %434 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %435 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %434, i32 0, i32 1
  store i32 0, i32* %435, align 8
  %436 = load i8*, i8** %10, align 8
  %437 = icmp ne i8* %436, null
  br i1 %437, label %438, label %468

438:                                              ; preds = %431
  %439 = load i64, i64* %11, align 8
  %440 = load i64, i64* %15, align 8
  %441 = icmp ne i64 %439, %440
  br i1 %441, label %442, label %468

442:                                              ; preds = %438
  %443 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %444 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %443, i32 0, i32 0
  %445 = load i64, i64* %444, align 8
  %446 = icmp ne i64 %445, 0
  br i1 %446, label %447, label %454

447:                                              ; preds = %442
  %448 = load i8*, i8** %8, align 8
  %449 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %450 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %449, i32 0, i32 4
  %451 = load i8*, i8** %450, align 8
  %452 = load i64, i64* @POLY1305_BLOCK_SIZE, align 8
  %453 = call i32 @memcpy(i8* %448, i8* %451, i64 %452)
  br label %467

454:                                              ; preds = %442
  %455 = load i8*, i8** %10, align 8
  %456 = load i64, i64* @POLY1305_BLOCK_SIZE, align 8
  %457 = call i64 @CRYPTO_memcmp(i8* %255, i8* %455, i64 %456)
  %458 = icmp ne i64 %457, 0
  br i1 %458, label %459, label %466

459:                                              ; preds = %454
  %460 = load i8*, i8** %8, align 8
  %461 = load i64, i64* %15, align 8
  %462 = sub i64 0, %461
  %463 = getelementptr inbounds i8, i8* %460, i64 %462
  %464 = load i64, i64* %15, align 8
  %465 = call i32 @memset(i8* %463, i32 0, i64 %464)
  store i32 3, i32* %21, align 4
  br label %486

466:                                              ; preds = %454
  br label %467

467:                                              ; preds = %466, %447
  br label %485

468:                                              ; preds = %438, %431
  %469 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %470 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %469, i32 0, i32 0
  %471 = load i64, i64* %470, align 8
  %472 = icmp ne i64 %471, 0
  br i1 %472, label %484, label %473

473:                                              ; preds = %468
  %474 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %475 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %474, i32 0, i32 4
  %476 = load i8*, i8** %475, align 8
  %477 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %478 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %477, i32 0, i32 5
  %479 = load i64, i64* %478, align 8
  %480 = call i64 @CRYPTO_memcmp(i8* %255, i8* %476, i64 %479)
  %481 = icmp ne i64 %480, 0
  br i1 %481, label %482, label %483

482:                                              ; preds = %473
  store i32 3, i32* %21, align 4
  br label %486

483:                                              ; preds = %473
  br label %484

484:                                              ; preds = %483, %468
  br label %485

485:                                              ; preds = %484, %467
  store i32 0, i32* %21, align 4
  br label %486

486:                                              ; preds = %482, %459, %485
  %487 = load i8*, i8** %19, align 8
  call void @llvm.stackrestore(i8* %487)
  %488 = load i32, i32* %21, align 4
  switch i32 %488, label %499 [
    i32 0, label %489
    i32 3, label %493
  ]

489:                                              ; preds = %486
  br label %490

490:                                              ; preds = %489, %248
  br label %491

491:                                              ; preds = %490, %116
  %492 = load i64, i64* %11, align 8
  store i64 %492, i64* %16, align 8
  store i32 1, i32* %17, align 4
  br label %493

493:                                              ; preds = %491, %486, %170
  %494 = load i64, i64* %16, align 8
  %495 = load i64*, i64** %9, align 8
  store i64 %494, i64* %495, align 8
  %496 = load i32, i32* %17, align 4
  store i32 %496, i32* %6, align 4
  br label %497

497:                                              ; preds = %493, %41
  %498 = load i32, i32* %6, align 4
  ret i32 %498

499:                                              ; preds = %486
  unreachable
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @chacha20_poly1305_tls_cipher(%struct.TYPE_15__*, i8*, i64*, i8*, i64) #2

declare dso_local i32 @ChaCha20_ctr32(i32, i8*, i32, i32, i32*) #2

declare dso_local i32 @Poly1305_Init(i32*, i32) #2

declare dso_local i32 @Poly1305_Update(i32*, i8*, i64) #2

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #3

declare dso_local i32 @Poly1305_Final(i32*, i8*) #2

declare dso_local i32 @memcpy(i8*, i8*, i64) #2

declare dso_local i64 @CRYPTO_memcmp(i8*, i8*, i64) #2

declare dso_local i32 @memset(i8*, i32, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #3

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
