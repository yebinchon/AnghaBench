; ModuleID = '/home/carl/AnghaBench/openssl/ssl/extr_s3_enc.c_ssl3_change_cipher_state.c'
source_filename = "/home/carl/AnghaBench/openssl/ssl/extr_s3_enc.c_ssl3_change_cipher_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_11__, %struct.TYPE_10__, i32, i32*, i32, i32*, i32*, i32, i32* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i8*, i8*, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i8*, i64, %struct.TYPE_8__*, i32*, i32* }
%struct.TYPE_8__ = type { i32* }

@SSL_AD_INTERNAL_ERROR = common dso_local global i32 0, align 4
@SSL_F_SSL3_CHANGE_CIPHER_STATE = common dso_local global i32 0, align 4
@ERR_R_INTERNAL_ERROR = common dso_local global i32 0, align 4
@SSL3_CC_READ = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@SSL_R_COMPRESSION_LIBRARY_ERROR = common dso_local global i32 0, align 4
@ENC_WRITE_STATE_INVALID = common dso_local global i32 0, align 4
@SSL3_CHANGE_CIPHER_CLIENT_WRITE = common dso_local global i32 0, align 4
@SSL3_CHANGE_CIPHER_SERVER_READ = common dso_local global i32 0, align 4
@SSL3_CC_WRITE = common dso_local global i32 0, align 4
@ENC_WRITE_STATE_VALID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ssl3_change_cipher_state(%struct.TYPE_12__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %21, align 4
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 4
  %26 = load i32*, i32** %25, align 8
  store i32* %26, i32** %12, align 8
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 3
  %31 = load i32*, i32** %30, align 8
  store i32* %31, i32** %14, align 8
  %32 = load i32*, i32** %14, align 8
  %33 = icmp ne i32* %32, null
  %34 = zext i1 %33 to i32
  %35 = call i32 @ossl_assert(i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %43, label %37

37:                                               ; preds = %2
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %39 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %40 = load i32, i32* @SSL_F_SSL3_CHANGE_CIPHER_STATE, align 4
  %41 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %42 = call i32 @SSLfatal(%struct.TYPE_12__* %38, i32 %39, i32 %40, i32 %41)
  br label %338

43:                                               ; preds = %2
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 2
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %47, align 8
  %49 = icmp eq %struct.TYPE_8__* %48, null
  br i1 %49, label %50, label %51

50:                                               ; preds = %43
  store i32* null, i32** %13, align 8
  br label %59

51:                                               ; preds = %43
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 2
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  store i32* %58, i32** %13, align 8
  br label %59

59:                                               ; preds = %51, %50
  %60 = load i32, i32* %5, align 4
  %61 = load i32, i32* @SSL3_CC_READ, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %138

64:                                               ; preds = %59
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 8
  %67 = load i32*, i32** %66, align 8
  %68 = icmp ne i32* %67, null
  br i1 %68, label %69, label %70

69:                                               ; preds = %64
  store i32 1, i32* %21, align 4
  br label %88

70:                                               ; preds = %64
  %71 = call i8* (...) @EVP_CIPHER_CTX_new()
  %72 = bitcast i8* %71 to i32*
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 8
  store i32* %72, i32** %74, align 8
  %75 = icmp eq i32* %72, null
  br i1 %75, label %76, label %82

76:                                               ; preds = %70
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %78 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %79 = load i32, i32* @SSL_F_SSL3_CHANGE_CIPHER_STATE, align 4
  %80 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %81 = call i32 @SSLfatal(%struct.TYPE_12__* %77, i32 %78, i32 %79, i32 %80)
  br label %338

82:                                               ; preds = %70
  %83 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 8
  %85 = load i32*, i32** %84, align 8
  %86 = call i32 @EVP_CIPHER_CTX_reset(i32* %85)
  br label %87

87:                                               ; preds = %82
  br label %88

88:                                               ; preds = %87, %69
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 8
  %91 = load i32*, i32** %90, align 8
  store i32* %91, i32** %11, align 8
  %92 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 7
  %94 = load i32*, i32** %14, align 8
  %95 = call i32* @ssl_replace_hash(i32* %93, i32* %94)
  %96 = icmp eq i32* %95, null
  br i1 %96, label %97, label %103

97:                                               ; preds = %88
  %98 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %99 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %100 = load i32, i32* @SSL_F_SSL3_CHANGE_CIPHER_STATE, align 4
  %101 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %102 = call i32 @SSLfatal(%struct.TYPE_12__* %98, i32 %99, i32 %100, i32 %101)
  br label %338

103:                                              ; preds = %88
  %104 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %104, i32 0, i32 6
  %106 = load i32*, i32** %105, align 8
  %107 = call i32 @COMP_CTX_free(i32* %106)
  %108 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %108, i32 0, i32 6
  store i32* null, i32** %109, align 8
  %110 = load i32*, i32** %13, align 8
  %111 = icmp ne i32* %110, null
  br i1 %111, label %112, label %129

112:                                              ; preds = %103
  %113 = load i32*, i32** %13, align 8
  %114 = call i8* @COMP_CTX_new(i32* %113)
  %115 = bitcast i8* %114 to i32*
  %116 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %116, i32 0, i32 6
  store i32* %115, i32** %117, align 8
  %118 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %118, i32 0, i32 6
  %120 = load i32*, i32** %119, align 8
  %121 = icmp eq i32* %120, null
  br i1 %121, label %122, label %128

122:                                              ; preds = %112
  %123 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %124 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %125 = load i32, i32* @SSL_F_SSL3_CHANGE_CIPHER_STATE, align 4
  %126 = load i32, i32* @SSL_R_COMPRESSION_LIBRARY_ERROR, align 4
  %127 = call i32 @SSLfatal(%struct.TYPE_12__* %123, i32 %124, i32 %125, i32 %126)
  br label %338

128:                                              ; preds = %112
  br label %129

129:                                              ; preds = %128, %103
  %130 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %131 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %130, i32 0, i32 2
  %132 = call i32 @RECORD_LAYER_reset_read_sequence(i32* %131)
  %133 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %134 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %133, i32 0, i32 1
  %135 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %134, i32 0, i32 0
  %136 = load i8*, i8** %135, align 8
  %137 = getelementptr inbounds i8, i8* %136, i64 0
  store i8* %137, i8** %7, align 8
  br label %216

138:                                              ; preds = %59
  %139 = load i32, i32* @ENC_WRITE_STATE_INVALID, align 4
  %140 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %141 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %141, i32 0, i32 0
  store i32 %139, i32* %142, align 8
  %143 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %144 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %143, i32 0, i32 5
  %145 = load i32*, i32** %144, align 8
  %146 = icmp ne i32* %145, null
  br i1 %146, label %147, label %148

147:                                              ; preds = %138
  store i32 1, i32* %21, align 4
  br label %166

148:                                              ; preds = %138
  %149 = call i8* (...) @EVP_CIPHER_CTX_new()
  %150 = bitcast i8* %149 to i32*
  %151 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %152 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %151, i32 0, i32 5
  store i32* %150, i32** %152, align 8
  %153 = icmp eq i32* %150, null
  br i1 %153, label %154, label %160

154:                                              ; preds = %148
  %155 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %156 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %157 = load i32, i32* @SSL_F_SSL3_CHANGE_CIPHER_STATE, align 4
  %158 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %159 = call i32 @SSLfatal(%struct.TYPE_12__* %155, i32 %156, i32 %157, i32 %158)
  br label %338

160:                                              ; preds = %148
  %161 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %162 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %161, i32 0, i32 5
  %163 = load i32*, i32** %162, align 8
  %164 = call i32 @EVP_CIPHER_CTX_reset(i32* %163)
  br label %165

165:                                              ; preds = %160
  br label %166

166:                                              ; preds = %165, %147
  %167 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %168 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %167, i32 0, i32 5
  %169 = load i32*, i32** %168, align 8
  store i32* %169, i32** %11, align 8
  %170 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %171 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %170, i32 0, i32 4
  %172 = load i32*, i32** %14, align 8
  %173 = call i32* @ssl_replace_hash(i32* %171, i32* %172)
  %174 = icmp eq i32* %173, null
  br i1 %174, label %175, label %181

175:                                              ; preds = %166
  %176 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %177 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %178 = load i32, i32* @SSL_F_SSL3_CHANGE_CIPHER_STATE, align 4
  %179 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %180 = call i32 @SSLfatal(%struct.TYPE_12__* %176, i32 %177, i32 %178, i32 %179)
  br label %338

181:                                              ; preds = %166
  %182 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %183 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %182, i32 0, i32 3
  %184 = load i32*, i32** %183, align 8
  %185 = call i32 @COMP_CTX_free(i32* %184)
  %186 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %187 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %186, i32 0, i32 3
  store i32* null, i32** %187, align 8
  %188 = load i32*, i32** %13, align 8
  %189 = icmp ne i32* %188, null
  br i1 %189, label %190, label %207

190:                                              ; preds = %181
  %191 = load i32*, i32** %13, align 8
  %192 = call i8* @COMP_CTX_new(i32* %191)
  %193 = bitcast i8* %192 to i32*
  %194 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %195 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %194, i32 0, i32 3
  store i32* %193, i32** %195, align 8
  %196 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %197 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %196, i32 0, i32 3
  %198 = load i32*, i32** %197, align 8
  %199 = icmp eq i32* %198, null
  br i1 %199, label %200, label %206

200:                                              ; preds = %190
  %201 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %202 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %203 = load i32, i32* @SSL_F_SSL3_CHANGE_CIPHER_STATE, align 4
  %204 = load i32, i32* @SSL_R_COMPRESSION_LIBRARY_ERROR, align 4
  %205 = call i32 @SSLfatal(%struct.TYPE_12__* %201, i32 %202, i32 %203, i32 %204)
  br label %338

206:                                              ; preds = %190
  br label %207

207:                                              ; preds = %206, %181
  %208 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %209 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %208, i32 0, i32 2
  %210 = call i32 @RECORD_LAYER_reset_write_sequence(i32* %209)
  %211 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %212 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %211, i32 0, i32 1
  %213 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %212, i32 0, i32 1
  %214 = load i8*, i8** %213, align 8
  %215 = getelementptr inbounds i8, i8* %214, i64 0
  store i8* %215, i8** %7, align 8
  br label %216

216:                                              ; preds = %207, %129
  %217 = load i32, i32* %21, align 4
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %222

219:                                              ; preds = %216
  %220 = load i32*, i32** %11, align 8
  %221 = call i32 @EVP_CIPHER_CTX_reset(i32* %220)
  br label %222

222:                                              ; preds = %219, %216
  %223 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %224 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %223, i32 0, i32 1
  %225 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %224, i32 0, i32 2
  %226 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %225, i32 0, i32 0
  %227 = load i8*, i8** %226, align 8
  store i8* %227, i8** %6, align 8
  %228 = load i32*, i32** %14, align 8
  %229 = call i32 @EVP_MD_size(i32* %228)
  store i32 %229, i32* %15, align 4
  %230 = load i32, i32* %15, align 4
  %231 = icmp slt i32 %230, 0
  br i1 %231, label %232, label %238

232:                                              ; preds = %222
  %233 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %234 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %235 = load i32, i32* @SSL_F_SSL3_CHANGE_CIPHER_STATE, align 4
  %236 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %237 = call i32 @SSLfatal(%struct.TYPE_12__* %233, i32 %234, i32 %235, i32 %236)
  br label %338

238:                                              ; preds = %222
  %239 = load i32, i32* %15, align 4
  %240 = sext i32 %239 to i64
  store i64 %240, i64* %17, align 8
  %241 = load i32*, i32** %12, align 8
  %242 = call i64 @EVP_CIPHER_key_length(i32* %241)
  store i64 %242, i64* %20, align 8
  %243 = load i64, i64* %20, align 8
  store i64 %243, i64* %18, align 8
  %244 = load i32*, i32** %12, align 8
  %245 = call i64 @EVP_CIPHER_iv_length(i32* %244)
  store i64 %245, i64* %19, align 8
  %246 = load i32, i32* %5, align 4
  %247 = load i32, i32* @SSL3_CHANGE_CIPHER_CLIENT_WRITE, align 4
  %248 = icmp eq i32 %246, %247
  br i1 %248, label %253, label %249

249:                                              ; preds = %238
  %250 = load i32, i32* %5, align 4
  %251 = load i32, i32* @SSL3_CHANGE_CIPHER_SERVER_READ, align 4
  %252 = icmp eq i32 %250, %251
  br i1 %252, label %253, label %275

253:                                              ; preds = %249, %238
  %254 = load i8*, i8** %6, align 8
  %255 = getelementptr inbounds i8, i8* %254, i64 0
  store i8* %255, i8** %8, align 8
  %256 = load i64, i64* %17, align 8
  %257 = load i64, i64* %17, align 8
  %258 = add i64 %256, %257
  store i64 %258, i64* %16, align 8
  %259 = load i8*, i8** %6, align 8
  %260 = load i64, i64* %16, align 8
  %261 = getelementptr inbounds i8, i8* %259, i64 %260
  store i8* %261, i8** %9, align 8
  %262 = load i64, i64* %18, align 8
  %263 = load i64, i64* %18, align 8
  %264 = add i64 %262, %263
  %265 = load i64, i64* %16, align 8
  %266 = add i64 %265, %264
  store i64 %266, i64* %16, align 8
  %267 = load i8*, i8** %6, align 8
  %268 = load i64, i64* %16, align 8
  %269 = getelementptr inbounds i8, i8* %267, i64 %268
  store i8* %269, i8** %10, align 8
  %270 = load i64, i64* %19, align 8
  %271 = load i64, i64* %19, align 8
  %272 = add i64 %270, %271
  %273 = load i64, i64* %16, align 8
  %274 = add i64 %273, %272
  store i64 %274, i64* %16, align 8
  br label %299

275:                                              ; preds = %249
  %276 = load i64, i64* %17, align 8
  store i64 %276, i64* %16, align 8
  %277 = load i8*, i8** %6, align 8
  %278 = load i64, i64* %16, align 8
  %279 = getelementptr inbounds i8, i8* %277, i64 %278
  store i8* %279, i8** %8, align 8
  %280 = load i64, i64* %17, align 8
  %281 = load i64, i64* %18, align 8
  %282 = add i64 %280, %281
  %283 = load i64, i64* %16, align 8
  %284 = add i64 %283, %282
  store i64 %284, i64* %16, align 8
  %285 = load i8*, i8** %6, align 8
  %286 = load i64, i64* %16, align 8
  %287 = getelementptr inbounds i8, i8* %285, i64 %286
  store i8* %287, i8** %9, align 8
  %288 = load i64, i64* %18, align 8
  %289 = load i64, i64* %19, align 8
  %290 = add i64 %288, %289
  %291 = load i64, i64* %16, align 8
  %292 = add i64 %291, %290
  store i64 %292, i64* %16, align 8
  %293 = load i8*, i8** %6, align 8
  %294 = load i64, i64* %16, align 8
  %295 = getelementptr inbounds i8, i8* %293, i64 %294
  store i8* %295, i8** %10, align 8
  %296 = load i64, i64* %19, align 8
  %297 = load i64, i64* %16, align 8
  %298 = add i64 %297, %296
  store i64 %298, i64* %16, align 8
  br label %299

299:                                              ; preds = %275, %253
  %300 = load i64, i64* %16, align 8
  %301 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %302 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %301, i32 0, i32 1
  %303 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %302, i32 0, i32 2
  %304 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %303, i32 0, i32 1
  %305 = load i64, i64* %304, align 8
  %306 = icmp ugt i64 %300, %305
  br i1 %306, label %307, label %313

307:                                              ; preds = %299
  %308 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %309 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %310 = load i32, i32* @SSL_F_SSL3_CHANGE_CIPHER_STATE, align 4
  %311 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %312 = call i32 @SSLfatal(%struct.TYPE_12__* %308, i32 %309, i32 %310, i32 %311)
  br label %338

313:                                              ; preds = %299
  %314 = load i8*, i8** %7, align 8
  %315 = load i8*, i8** %8, align 8
  %316 = load i64, i64* %17, align 8
  %317 = call i32 @memcpy(i8* %314, i8* %315, i64 %316)
  %318 = load i32*, i32** %11, align 8
  %319 = load i32*, i32** %12, align 8
  %320 = load i8*, i8** %9, align 8
  %321 = load i8*, i8** %10, align 8
  %322 = load i32, i32* %5, align 4
  %323 = load i32, i32* @SSL3_CC_WRITE, align 4
  %324 = and i32 %322, %323
  %325 = call i32 @EVP_CipherInit_ex(i32* %318, i32* %319, i32* null, i8* %320, i8* %321, i32 %324)
  %326 = icmp ne i32 %325, 0
  br i1 %326, label %333, label %327

327:                                              ; preds = %313
  %328 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %329 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %330 = load i32, i32* @SSL_F_SSL3_CHANGE_CIPHER_STATE, align 4
  %331 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %332 = call i32 @SSLfatal(%struct.TYPE_12__* %328, i32 %329, i32 %330, i32 %331)
  br label %338

333:                                              ; preds = %313
  %334 = load i32, i32* @ENC_WRITE_STATE_VALID, align 4
  %335 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %336 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %335, i32 0, i32 0
  %337 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %336, i32 0, i32 0
  store i32 %334, i32* %337, align 8
  store i32 1, i32* %3, align 4
  br label %339

338:                                              ; preds = %327, %307, %232, %200, %175, %154, %122, %97, %76, %37
  store i32 0, i32* %3, align 4
  br label %339

339:                                              ; preds = %338, %333
  %340 = load i32, i32* %3, align 4
  ret i32 %340
}

declare dso_local i32 @ossl_assert(i32) #1

declare dso_local i32 @SSLfatal(%struct.TYPE_12__*, i32, i32, i32) #1

declare dso_local i8* @EVP_CIPHER_CTX_new(...) #1

declare dso_local i32 @EVP_CIPHER_CTX_reset(i32*) #1

declare dso_local i32* @ssl_replace_hash(i32*, i32*) #1

declare dso_local i32 @COMP_CTX_free(i32*) #1

declare dso_local i8* @COMP_CTX_new(i32*) #1

declare dso_local i32 @RECORD_LAYER_reset_read_sequence(i32*) #1

declare dso_local i32 @RECORD_LAYER_reset_write_sequence(i32*) #1

declare dso_local i32 @EVP_MD_size(i32*) #1

declare dso_local i64 @EVP_CIPHER_key_length(i32*) #1

declare dso_local i64 @EVP_CIPHER_iv_length(i32*) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @EVP_CipherInit_ex(i32*, i32*, i32*, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
