; ModuleID = '/home/carl/AnghaBench/openssl/ssl/extr_ssl_ciph.c_ssl_cipher_get_evp.c'
source_filename = "/home/carl/AnghaBench/openssl/ssl/extr_ssl_ciph.c_ssl_cipher_get_evp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64, i64 }
%struct.TYPE_9__ = type { i32 }

@ssl_comp_methods = common dso_local global i32* null, align 8
@ssl_cipher_table_cipher = common dso_local global i32 0, align 4
@SSL_ENC_NULL_IDX = common dso_local global i32 0, align 4
@ssl_cipher_methods = common dso_local global i32** null, align 8
@ssl_cipher_table_mac = common dso_local global i32 0, align 4
@NID_undef = common dso_local global i32 0, align 4
@SSL_AEAD = common dso_local global i64 0, align 8
@ssl_digest_methods = common dso_local global i32** null, align 8
@ssl_mac_pkey_id = common dso_local global i32* null, align 8
@ssl_mac_secret_size = common dso_local global i64* null, align 8
@EVP_CIPH_FLAG_AEAD_CIPHER = common dso_local global i32 0, align 4
@TLS1_VERSION_MAJOR = common dso_local global i32 0, align 4
@TLS1_VERSION = common dso_local global i32 0, align 4
@SSL_RC4 = common dso_local global i64 0, align 8
@SSL_MD5 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [13 x i8] c"RC4-HMAC-MD5\00", align 1
@SSL_AES128 = common dso_local global i64 0, align 8
@SSL_SHA1 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"AES-128-CBC-HMAC-SHA1\00", align 1
@SSL_AES256 = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [22 x i8] c"AES-256-CBC-HMAC-SHA1\00", align 1
@SSL_SHA256 = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [24 x i8] c"AES-128-CBC-HMAC-SHA256\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"AES-256-CBC-HMAC-SHA256\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ssl_cipher_get_evp(%struct.TYPE_8__* %0, i32** %1, i32** %2, i32* %3, i64* %4, %struct.TYPE_9__** %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca i32**, align 8
  %11 = alloca i32**, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca %struct.TYPE_9__**, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_10__*, align 8
  %18 = alloca %struct.TYPE_9__, align 4
  %19 = alloca i32*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %9, align 8
  store i32** %1, i32*** %10, align 8
  store i32** %2, i32*** %11, align 8
  store i32* %3, i32** %12, align 8
  store i64* %4, i64** %13, align 8
  store %struct.TYPE_9__** %5, %struct.TYPE_9__*** %14, align 8
  store i32 %6, i32* %15, align 4
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 2
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  store %struct.TYPE_10__* %22, %struct.TYPE_10__** %17, align 8
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %24 = icmp eq %struct.TYPE_10__* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %7
  store i32 0, i32* %8, align 4
  br label %285

26:                                               ; preds = %7
  %27 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %14, align 8
  %28 = icmp ne %struct.TYPE_9__** %27, null
  br i1 %28, label %29, label %56

29:                                               ; preds = %26
  %30 = call i32 (...) @load_builtin_compressions()
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %29
  br label %33

33:                                               ; preds = %32, %29
  %34 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %14, align 8
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %34, align 8
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  store i32 %37, i32* %38, align 4
  %39 = load i32*, i32** @ssl_comp_methods, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %41, label %48

41:                                               ; preds = %33
  %42 = load i32*, i32** @ssl_comp_methods, align 8
  %43 = call i32 @sk_SSL_COMP_find(i32* %42, %struct.TYPE_9__* %18)
  store i32 %43, i32* %16, align 4
  %44 = load i32*, i32** @ssl_comp_methods, align 8
  %45 = load i32, i32* %16, align 4
  %46 = call %struct.TYPE_9__* @sk_SSL_COMP_value(i32* %44, i32 %45)
  %47 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %14, align 8
  store %struct.TYPE_9__* %46, %struct.TYPE_9__** %47, align 8
  br label %48

48:                                               ; preds = %41, %33
  %49 = load i32**, i32*** %10, align 8
  %50 = icmp eq i32** %49, null
  br i1 %50, label %51, label %55

51:                                               ; preds = %48
  %52 = load i32**, i32*** %11, align 8
  %53 = icmp eq i32** %52, null
  br i1 %53, label %54, label %55

54:                                               ; preds = %51
  store i32 1, i32* %8, align 4
  br label %285

55:                                               ; preds = %51, %48
  br label %56

56:                                               ; preds = %55, %26
  %57 = load i32**, i32*** %10, align 8
  %58 = icmp eq i32** %57, null
  br i1 %58, label %62, label %59

59:                                               ; preds = %56
  %60 = load i32**, i32*** %11, align 8
  %61 = icmp eq i32** %60, null
  br i1 %61, label %62, label %63

62:                                               ; preds = %59, %56
  store i32 0, i32* %8, align 4
  br label %285

63:                                               ; preds = %59
  %64 = load i32, i32* @ssl_cipher_table_cipher, align 4
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = call i32 @ssl_cipher_info_lookup(i32 %64, i64 %67)
  store i32 %68, i32* %16, align 4
  %69 = load i32, i32* %16, align 4
  %70 = icmp eq i32 %69, -1
  br i1 %70, label %71, label %73

71:                                               ; preds = %63
  %72 = load i32**, i32*** %10, align 8
  store i32* null, i32** %72, align 8
  br label %88

73:                                               ; preds = %63
  %74 = load i32, i32* %16, align 4
  %75 = load i32, i32* @SSL_ENC_NULL_IDX, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %77, label %80

77:                                               ; preds = %73
  %78 = call i32* (...) @EVP_enc_null()
  %79 = load i32**, i32*** %10, align 8
  store i32* %78, i32** %79, align 8
  br label %87

80:                                               ; preds = %73
  %81 = load i32**, i32*** @ssl_cipher_methods, align 8
  %82 = load i32, i32* %16, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32*, i32** %81, i64 %83
  %85 = load i32*, i32** %84, align 8
  %86 = load i32**, i32*** %10, align 8
  store i32* %85, i32** %86, align 8
  br label %87

87:                                               ; preds = %80, %77
  br label %88

88:                                               ; preds = %87, %71
  %89 = load i32, i32* @ssl_cipher_table_mac, align 4
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = call i32 @ssl_cipher_info_lookup(i32 %89, i64 %92)
  store i32 %93, i32* %16, align 4
  %94 = load i32, i32* %16, align 4
  %95 = icmp eq i32 %94, -1
  br i1 %95, label %96, label %116

96:                                               ; preds = %88
  %97 = load i32**, i32*** %11, align 8
  store i32* null, i32** %97, align 8
  %98 = load i32*, i32** %12, align 8
  %99 = icmp ne i32* %98, null
  br i1 %99, label %100, label %103

100:                                              ; preds = %96
  %101 = load i32, i32* @NID_undef, align 4
  %102 = load i32*, i32** %12, align 8
  store i32 %101, i32* %102, align 4
  br label %103

103:                                              ; preds = %100, %96
  %104 = load i64*, i64** %13, align 8
  %105 = icmp ne i64* %104, null
  br i1 %105, label %106, label %108

106:                                              ; preds = %103
  %107 = load i64*, i64** %13, align 8
  store i64 0, i64* %107, align 8
  br label %108

108:                                              ; preds = %106, %103
  %109 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @SSL_AEAD, align 8
  %113 = icmp eq i64 %111, %112
  br i1 %113, label %114, label %115

114:                                              ; preds = %108
  store i32* null, i32** %12, align 8
  br label %115

115:                                              ; preds = %114, %108
  br label %143

116:                                              ; preds = %88
  %117 = load i32**, i32*** @ssl_digest_methods, align 8
  %118 = load i32, i32* %16, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32*, i32** %117, i64 %119
  %121 = load i32*, i32** %120, align 8
  %122 = load i32**, i32*** %11, align 8
  store i32* %121, i32** %122, align 8
  %123 = load i32*, i32** %12, align 8
  %124 = icmp ne i32* %123, null
  br i1 %124, label %125, label %132

125:                                              ; preds = %116
  %126 = load i32*, i32** @ssl_mac_pkey_id, align 8
  %127 = load i32, i32* %16, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32, i32* %126, i64 %128
  %130 = load i32, i32* %129, align 4
  %131 = load i32*, i32** %12, align 8
  store i32 %130, i32* %131, align 4
  br label %132

132:                                              ; preds = %125, %116
  %133 = load i64*, i64** %13, align 8
  %134 = icmp ne i64* %133, null
  br i1 %134, label %135, label %142

135:                                              ; preds = %132
  %136 = load i64*, i64** @ssl_mac_secret_size, align 8
  %137 = load i32, i32* %16, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i64, i64* %136, i64 %138
  %140 = load i64, i64* %139, align 8
  %141 = load i64*, i64** %13, align 8
  store i64 %140, i64* %141, align 8
  br label %142

142:                                              ; preds = %135, %132
  br label %143

143:                                              ; preds = %142, %115
  %144 = load i32**, i32*** %10, align 8
  %145 = load i32*, i32** %144, align 8
  %146 = icmp ne i32* %145, null
  br i1 %146, label %147, label %284

147:                                              ; preds = %143
  %148 = load i32**, i32*** %11, align 8
  %149 = load i32*, i32** %148, align 8
  %150 = icmp ne i32* %149, null
  br i1 %150, label %158, label %151

151:                                              ; preds = %147
  %152 = load i32**, i32*** %10, align 8
  %153 = load i32*, i32** %152, align 8
  %154 = call i32 @EVP_CIPHER_flags(i32* %153)
  %155 = load i32, i32* @EVP_CIPH_FLAG_AEAD_CIPHER, align 4
  %156 = and i32 %154, %155
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %284

158:                                              ; preds = %151, %147
  %159 = load i32*, i32** %12, align 8
  %160 = icmp ne i32* %159, null
  br i1 %160, label %161, label %166

161:                                              ; preds = %158
  %162 = load i32*, i32** %12, align 8
  %163 = load i32, i32* %162, align 4
  %164 = load i32, i32* @NID_undef, align 4
  %165 = icmp ne i32 %163, %164
  br i1 %165, label %166, label %284

166:                                              ; preds = %161, %158
  %167 = load i32, i32* %15, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %170

169:                                              ; preds = %166
  store i32 1, i32* %8, align 4
  br label %285

170:                                              ; preds = %166
  %171 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %172 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = ashr i32 %173, 8
  %175 = load i32, i32* @TLS1_VERSION_MAJOR, align 4
  %176 = icmp ne i32 %174, %175
  br i1 %176, label %183, label %177

177:                                              ; preds = %170
  %178 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %179 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = load i32, i32* @TLS1_VERSION, align 4
  %182 = icmp slt i32 %180, %181
  br i1 %182, label %183, label %184

183:                                              ; preds = %177, %170
  store i32 1, i32* %8, align 4
  br label %285

184:                                              ; preds = %177
  %185 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %186 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %185, i32 0, i32 0
  %187 = load i64, i64* %186, align 8
  %188 = load i64, i64* @SSL_RC4, align 8
  %189 = icmp eq i64 %187, %188
  br i1 %189, label %190, label %203

190:                                              ; preds = %184
  %191 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %192 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %191, i32 0, i32 1
  %193 = load i64, i64* %192, align 8
  %194 = load i64, i64* @SSL_MD5, align 8
  %195 = icmp eq i64 %193, %194
  br i1 %195, label %196, label %203

196:                                              ; preds = %190
  %197 = call i32* @EVP_get_cipherbyname(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  store i32* %197, i32** %19, align 8
  %198 = icmp ne i32* %197, null
  br i1 %198, label %199, label %203

199:                                              ; preds = %196
  %200 = load i32*, i32** %19, align 8
  %201 = load i32**, i32*** %10, align 8
  store i32* %200, i32** %201, align 8
  %202 = load i32**, i32*** %11, align 8
  store i32* null, i32** %202, align 8
  br label %283

203:                                              ; preds = %196, %190, %184
  %204 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %205 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %204, i32 0, i32 0
  %206 = load i64, i64* %205, align 8
  %207 = load i64, i64* @SSL_AES128, align 8
  %208 = icmp eq i64 %206, %207
  br i1 %208, label %209, label %222

209:                                              ; preds = %203
  %210 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %211 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %210, i32 0, i32 1
  %212 = load i64, i64* %211, align 8
  %213 = load i64, i64* @SSL_SHA1, align 8
  %214 = icmp eq i64 %212, %213
  br i1 %214, label %215, label %222

215:                                              ; preds = %209
  %216 = call i32* @EVP_get_cipherbyname(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  store i32* %216, i32** %19, align 8
  %217 = icmp ne i32* %216, null
  br i1 %217, label %218, label %222

218:                                              ; preds = %215
  %219 = load i32*, i32** %19, align 8
  %220 = load i32**, i32*** %10, align 8
  store i32* %219, i32** %220, align 8
  %221 = load i32**, i32*** %11, align 8
  store i32* null, i32** %221, align 8
  br label %282

222:                                              ; preds = %215, %209, %203
  %223 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %224 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %223, i32 0, i32 0
  %225 = load i64, i64* %224, align 8
  %226 = load i64, i64* @SSL_AES256, align 8
  %227 = icmp eq i64 %225, %226
  br i1 %227, label %228, label %241

228:                                              ; preds = %222
  %229 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %230 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %229, i32 0, i32 1
  %231 = load i64, i64* %230, align 8
  %232 = load i64, i64* @SSL_SHA1, align 8
  %233 = icmp eq i64 %231, %232
  br i1 %233, label %234, label %241

234:                                              ; preds = %228
  %235 = call i32* @EVP_get_cipherbyname(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  store i32* %235, i32** %19, align 8
  %236 = icmp ne i32* %235, null
  br i1 %236, label %237, label %241

237:                                              ; preds = %234
  %238 = load i32*, i32** %19, align 8
  %239 = load i32**, i32*** %10, align 8
  store i32* %238, i32** %239, align 8
  %240 = load i32**, i32*** %11, align 8
  store i32* null, i32** %240, align 8
  br label %281

241:                                              ; preds = %234, %228, %222
  %242 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %243 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %242, i32 0, i32 0
  %244 = load i64, i64* %243, align 8
  %245 = load i64, i64* @SSL_AES128, align 8
  %246 = icmp eq i64 %244, %245
  br i1 %246, label %247, label %260

247:                                              ; preds = %241
  %248 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %249 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %248, i32 0, i32 1
  %250 = load i64, i64* %249, align 8
  %251 = load i64, i64* @SSL_SHA256, align 8
  %252 = icmp eq i64 %250, %251
  br i1 %252, label %253, label %260

253:                                              ; preds = %247
  %254 = call i32* @EVP_get_cipherbyname(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  store i32* %254, i32** %19, align 8
  %255 = icmp ne i32* %254, null
  br i1 %255, label %256, label %260

256:                                              ; preds = %253
  %257 = load i32*, i32** %19, align 8
  %258 = load i32**, i32*** %10, align 8
  store i32* %257, i32** %258, align 8
  %259 = load i32**, i32*** %11, align 8
  store i32* null, i32** %259, align 8
  br label %280

260:                                              ; preds = %253, %247, %241
  %261 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %262 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %261, i32 0, i32 0
  %263 = load i64, i64* %262, align 8
  %264 = load i64, i64* @SSL_AES256, align 8
  %265 = icmp eq i64 %263, %264
  br i1 %265, label %266, label %279

266:                                              ; preds = %260
  %267 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %268 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %267, i32 0, i32 1
  %269 = load i64, i64* %268, align 8
  %270 = load i64, i64* @SSL_SHA256, align 8
  %271 = icmp eq i64 %269, %270
  br i1 %271, label %272, label %279

272:                                              ; preds = %266
  %273 = call i32* @EVP_get_cipherbyname(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  store i32* %273, i32** %19, align 8
  %274 = icmp ne i32* %273, null
  br i1 %274, label %275, label %279

275:                                              ; preds = %272
  %276 = load i32*, i32** %19, align 8
  %277 = load i32**, i32*** %10, align 8
  store i32* %276, i32** %277, align 8
  %278 = load i32**, i32*** %11, align 8
  store i32* null, i32** %278, align 8
  br label %279

279:                                              ; preds = %275, %272, %266, %260
  br label %280

280:                                              ; preds = %279, %256
  br label %281

281:                                              ; preds = %280, %237
  br label %282

282:                                              ; preds = %281, %218
  br label %283

283:                                              ; preds = %282, %199
  store i32 1, i32* %8, align 4
  br label %285

284:                                              ; preds = %161, %151, %143
  store i32 0, i32* %8, align 4
  br label %285

285:                                              ; preds = %284, %283, %183, %169, %62, %54, %25
  %286 = load i32, i32* %8, align 4
  ret i32 %286
}

declare dso_local i32 @load_builtin_compressions(...) #1

declare dso_local i32 @sk_SSL_COMP_find(i32*, %struct.TYPE_9__*) #1

declare dso_local %struct.TYPE_9__* @sk_SSL_COMP_value(i32*, i32) #1

declare dso_local i32 @ssl_cipher_info_lookup(i32, i64) #1

declare dso_local i32* @EVP_enc_null(...) #1

declare dso_local i32 @EVP_CIPHER_flags(i32*) #1

declare dso_local i32* @EVP_get_cipherbyname(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
