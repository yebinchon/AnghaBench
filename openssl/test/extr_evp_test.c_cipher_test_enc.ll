; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_evp_test.c_cipher_test_enc.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_evp_test.c_cipher_test_enc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i8*, i64, i8*, i64, i64, i32, i8*, i32, i64, i8**, i32*, i64, i32*, i32*, i32*, i32, i64 }

@.str = private unnamed_addr constant [13 x i8] c"TEST_FAILURE\00", align 1
@EVP_CIPHER_CTX_FLAG_WRAP_ALLOW = common dso_local global i32 0, align 4
@EVP_MAX_BLOCK_LENGTH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"CIPHERINIT_ERROR\00", align 1
@EVP_CTRL_AEAD_SET_IVLEN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"INVALID_IV_LENGTH\00", align 1
@EVP_CIPH_OCB_MODE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [21 x i8] c"TAG_LENGTH_SET_ERROR\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"TAG_SET_ERROR\00", align 1
@EVP_CIPH_GCM_MODE = common dso_local global i64 0, align 8
@EVP_CTRL_AEAD_SET_TAG = common dso_local global i32 0, align 4
@EVP_CTRL_SET_RC5_ROUNDS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [15 x i8] c"INVALID_ROUNDS\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"INVALID_KEY_LENGTH\00", align 1
@EVP_CTRL_SET_RC2_KEY_BITS = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [17 x i8] c"INVALID KEY BITS\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"KEY_SET_ERROR\00", align 1
@EVP_CIPH_CUSTOM_IV = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [11 x i8] c"INVALID_IV\00", align 1
@EVP_CIPH_CCM_MODE = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [31 x i8] c"CCM_PLAINTEXT_LENGTH_SET_ERROR\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"AAD_SET_ERROR\00", align 1
@.str.12 = private unnamed_addr constant [19 x i8] c"CIPHERUPDATE_ERROR\00", align 1
@.str.13 = private unnamed_addr constant [18 x i8] c"CIPHERFINAL_ERROR\00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"VALUE_MISMATCH\00", align 1
@.str.15 = private unnamed_addr constant [26 x i8] c"TAG_LENGTH_INTERNAL_ERROR\00", align 1
@EVP_CTRL_AEAD_GET_TAG = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [19 x i8] c"TAG_RETRIEVE_ERROR\00", align 1
@.str.17 = private unnamed_addr constant [19 x i8] c"TAG_VALUE_MISMATCH\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32, i64, i64, i32)* @cipher_test_enc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cipher_test_enc(%struct.TYPE_5__* %0, i32 %1, i64 %2, i64 %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_6__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca [16 x i8], align 16
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 %4, i32* %10, align 4
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  store %struct.TYPE_6__* %30, %struct.TYPE_6__** %11, align 8
  store i8* null, i8** %14, align 8
  store i64 0, i64* %17, align 8
  store i32 0, i32* %18, align 4
  store i32* null, i32** %23, align 8
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8** %32, align 8
  %33 = call i32* (...) @EVP_CIPHER_CTX_new()
  store i32* %33, i32** %23, align 8
  %34 = call i32 @TEST_ptr(i32* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %5
  br label %674

37:                                               ; preds = %5
  %38 = load i32*, i32** %23, align 8
  %39 = load i32, i32* @EVP_CIPHER_CTX_FLAG_WRAP_ALLOW, align 4
  %40 = call i32 @EVP_CIPHER_CTX_set_flags(i32* %38, i32 %39)
  %41 = load i32, i32* %7, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %56

43:                                               ; preds = %37
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  store i8* %46, i8** %12, align 8
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  store i64 %49, i64* %15, align 8
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 2
  %52 = load i8*, i8** %51, align 8
  store i8* %52, i8** %13, align 8
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 3
  %55 = load i64, i64* %54, align 8
  store i64 %55, i64* %16, align 8
  br label %69

56:                                               ; preds = %37
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 2
  %59 = load i8*, i8** %58, align 8
  store i8* %59, i8** %12, align 8
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 3
  %62 = load i64, i64* %61, align 8
  store i64 %62, i64* %15, align 8
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = load i8*, i8** %64, align 8
  store i8* %65, i8** %13, align 8
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  store i64 %68, i64* %16, align 8
  br label %69

69:                                               ; preds = %56, %43
  %70 = load i64, i64* %9, align 8
  %71 = icmp eq i64 %70, -1
  br i1 %71, label %72, label %91

72:                                               ; preds = %69
  %73 = load i64, i64* %8, align 8
  %74 = load i64, i64* %15, align 8
  %75 = add i64 %73, %74
  %76 = load i32, i32* @EVP_MAX_BLOCK_LENGTH, align 4
  %77 = mul nsw i32 2, %76
  %78 = sext i32 %77 to i64
  %79 = add i64 %75, %78
  %80 = call i8* @OPENSSL_malloc(i64 %79)
  store i8* %80, i8** %14, align 8
  %81 = load i8*, i8** %14, align 8
  %82 = icmp ne i8* %81, null
  br i1 %82, label %84, label %83

83:                                               ; preds = %72
  br label %674

84:                                               ; preds = %72
  %85 = load i8*, i8** %14, align 8
  %86 = load i64, i64* %8, align 8
  %87 = getelementptr inbounds i8, i8* %85, i64 %86
  %88 = load i8*, i8** %12, align 8
  %89 = load i64, i64* %15, align 8
  %90 = call i8* @memcpy(i8* %87, i8* %88, i64 %89)
  store i8* %90, i8** %12, align 8
  br label %129

91:                                               ; preds = %69
  %92 = load i64, i64* %8, align 8
  %93 = load i64, i64* %15, align 8
  %94 = add i64 %92, %93
  %95 = and i64 %94, 15
  %96 = sub i64 16, %95
  %97 = load i64, i64* %9, align 8
  %98 = add i64 %97, %96
  store i64 %98, i64* %9, align 8
  %99 = load i64, i64* %8, align 8
  %100 = load i64, i64* %15, align 8
  %101 = add i64 %99, %100
  %102 = load i32, i32* @EVP_MAX_BLOCK_LENGTH, align 4
  %103 = mul nsw i32 2, %102
  %104 = sext i32 %103 to i64
  %105 = add i64 %101, %104
  %106 = load i64, i64* %9, align 8
  %107 = add i64 %105, %106
  %108 = load i64, i64* %15, align 8
  %109 = add i64 %107, %108
  %110 = call i8* @OPENSSL_malloc(i64 %109)
  store i8* %110, i8** %14, align 8
  %111 = load i8*, i8** %14, align 8
  %112 = icmp ne i8* %111, null
  br i1 %112, label %114, label %113

113:                                              ; preds = %91
  br label %674

114:                                              ; preds = %91
  %115 = load i8*, i8** %14, align 8
  %116 = load i64, i64* %8, align 8
  %117 = getelementptr inbounds i8, i8* %115, i64 %116
  %118 = load i64, i64* %15, align 8
  %119 = getelementptr inbounds i8, i8* %117, i64 %118
  %120 = load i32, i32* @EVP_MAX_BLOCK_LENGTH, align 4
  %121 = mul nsw i32 2, %120
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i8, i8* %119, i64 %122
  %124 = load i64, i64* %9, align 8
  %125 = getelementptr inbounds i8, i8* %123, i64 %124
  %126 = load i8*, i8** %12, align 8
  %127 = load i64, i64* %15, align 8
  %128 = call i8* @memcpy(i8* %125, i8* %126, i64 %127)
  store i8* %128, i8** %12, align 8
  br label %129

129:                                              ; preds = %114, %84
  %130 = load i32*, i32** %23, align 8
  %131 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 13
  %133 = load i32*, i32** %132, align 8
  %134 = load i32, i32* %7, align 4
  %135 = call i32 @EVP_CipherInit_ex(i32* %130, i32* %133, i32* null, i32* null, i32* null, i32 %134)
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %140, label %137

137:                                              ; preds = %129
  %138 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %139 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %138, i32 0, i32 0
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8** %139, align 8
  br label %674

140:                                              ; preds = %129
  %141 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i32 0, i32 12
  %143 = load i32*, i32** %142, align 8
  %144 = icmp ne i32* %143, null
  br i1 %144, label %145, label %175

145:                                              ; preds = %140
  %146 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 4
  %148 = load i64, i64* %147, align 8
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %162

150:                                              ; preds = %145
  %151 = load i32*, i32** %23, align 8
  %152 = load i32, i32* @EVP_CTRL_AEAD_SET_IVLEN, align 4
  %153 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %154 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %153, i32 0, i32 5
  %155 = load i32, i32* %154, align 8
  %156 = call i32 @EVP_CIPHER_CTX_ctrl(i32* %151, i32 %152, i32 %155, i8* null)
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %161, label %158

158:                                              ; preds = %150
  %159 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %160 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %159, i32 0, i32 0
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i8** %160, align 8
  br label %674

161:                                              ; preds = %150
  br label %174

162:                                              ; preds = %145
  %163 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %164 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %163, i32 0, i32 5
  %165 = load i32, i32* %164, align 8
  %166 = sext i32 %165 to i64
  %167 = load i32*, i32** %23, align 8
  %168 = call i64 @EVP_CIPHER_CTX_iv_length(i32* %167)
  %169 = icmp ne i64 %166, %168
  br i1 %169, label %170, label %173

170:                                              ; preds = %162
  %171 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %172 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %171, i32 0, i32 0
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i8** %172, align 8
  br label %674

173:                                              ; preds = %162
  br label %174

174:                                              ; preds = %173, %161
  br label %175

175:                                              ; preds = %174, %140
  %176 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %177 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %176, i32 0, i32 4
  %178 = load i64, i64* %177, align 8
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %224

180:                                              ; preds = %175
  %181 = load i32, i32* %7, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %194, label %183

183:                                              ; preds = %180
  %184 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %185 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %184, i32 0, i32 4
  %186 = load i64, i64* %185, align 8
  %187 = load i64, i64* @EVP_CIPH_OCB_MODE, align 8
  %188 = icmp eq i64 %186, %187
  br i1 %188, label %194, label %189

189:                                              ; preds = %183
  %190 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %191 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %190, i32 0, i32 11
  %192 = load i64, i64* %191, align 8
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %197

194:                                              ; preds = %189, %183, %180
  %195 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %196 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %195, i32 0, i32 0
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i8** %196, align 8
  store i8* null, i8** %24, align 8
  br label %203

197:                                              ; preds = %189
  %198 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %199 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %198, i32 0, i32 0
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i8** %199, align 8
  %200 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %201 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %200, i32 0, i32 6
  %202 = load i8*, i8** %201, align 8
  store i8* %202, i8** %24, align 8
  br label %203

203:                                              ; preds = %197, %194
  %204 = load i8*, i8** %24, align 8
  %205 = icmp ne i8* %204, null
  br i1 %205, label %212, label %206

206:                                              ; preds = %203
  %207 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %208 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %207, i32 0, i32 4
  %209 = load i64, i64* %208, align 8
  %210 = load i64, i64* @EVP_CIPH_GCM_MODE, align 8
  %211 = icmp ne i64 %209, %210
  br i1 %211, label %212, label %223

212:                                              ; preds = %206, %203
  %213 = load i32*, i32** %23, align 8
  %214 = load i32, i32* @EVP_CTRL_AEAD_SET_TAG, align 4
  %215 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %216 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %215, i32 0, i32 7
  %217 = load i32, i32* %216, align 8
  %218 = load i8*, i8** %24, align 8
  %219 = call i32 @EVP_CIPHER_CTX_ctrl(i32* %213, i32 %214, i32 %217, i8* %218)
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %222, label %221

221:                                              ; preds = %212
  br label %674

222:                                              ; preds = %212
  br label %223

223:                                              ; preds = %222, %206
  br label %224

224:                                              ; preds = %223, %175
  %225 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %226 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %225, i32 0, i32 16
  %227 = load i64, i64* %226, align 8
  %228 = icmp sgt i64 %227, 0
  br i1 %228, label %229, label %243

229:                                              ; preds = %224
  %230 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %231 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %230, i32 0, i32 16
  %232 = load i64, i64* %231, align 8
  %233 = trunc i64 %232 to i32
  store i32 %233, i32* %25, align 4
  %234 = load i32*, i32** %23, align 8
  %235 = load i32, i32* @EVP_CTRL_SET_RC5_ROUNDS, align 4
  %236 = load i32, i32* %25, align 4
  %237 = call i32 @EVP_CIPHER_CTX_ctrl(i32* %234, i32 %235, i32 %236, i8* null)
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %242, label %239

239:                                              ; preds = %229
  %240 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %241 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %240, i32 0, i32 0
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i8** %241, align 8
  br label %674

242:                                              ; preds = %229
  br label %243

243:                                              ; preds = %242, %224
  %244 = load i32*, i32** %23, align 8
  %245 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %246 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %245, i32 0, i32 15
  %247 = load i32, i32* %246, align 8
  %248 = call i32 @EVP_CIPHER_CTX_set_key_length(i32* %244, i32 %247)
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %253, label %250

250:                                              ; preds = %243
  %251 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %252 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %251, i32 0, i32 0
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), i8** %252, align 8
  br label %674

253:                                              ; preds = %243
  %254 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %255 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %254, i32 0, i32 8
  %256 = load i64, i64* %255, align 8
  %257 = icmp sgt i64 %256, 0
  br i1 %257, label %258, label %272

258:                                              ; preds = %253
  %259 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %260 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %259, i32 0, i32 8
  %261 = load i64, i64* %260, align 8
  %262 = trunc i64 %261 to i32
  store i32 %262, i32* %26, align 4
  %263 = load i32*, i32** %23, align 8
  %264 = load i32, i32* @EVP_CTRL_SET_RC2_KEY_BITS, align 4
  %265 = load i32, i32* %26, align 4
  %266 = call i32 @EVP_CIPHER_CTX_ctrl(i32* %263, i32 %264, i32 %265, i8* null)
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %271, label %268

268:                                              ; preds = %258
  %269 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %270 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %269, i32 0, i32 0
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0), i8** %270, align 8
  br label %674

271:                                              ; preds = %258
  br label %272

272:                                              ; preds = %271, %253
  %273 = load i32*, i32** %23, align 8
  %274 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %275 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %274, i32 0, i32 14
  %276 = load i32*, i32** %275, align 8
  %277 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %278 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %277, i32 0, i32 12
  %279 = load i32*, i32** %278, align 8
  %280 = call i32 @EVP_CipherInit_ex(i32* %273, i32* null, i32* null, i32* %276, i32* %279, i32 -1)
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %285, label %282

282:                                              ; preds = %272
  %283 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %284 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %283, i32 0, i32 0
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0), i8** %284, align 8
  br label %674

285:                                              ; preds = %272
  %286 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %287 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %286, i32 0, i32 12
  %288 = load i32*, i32** %287, align 8
  %289 = icmp ne i32* %288, null
  br i1 %289, label %290, label %317

290:                                              ; preds = %285
  %291 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %292 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %291, i32 0, i32 13
  %293 = load i32*, i32** %292, align 8
  %294 = call i32 @EVP_CIPHER_flags(i32* %293)
  %295 = load i32, i32* @EVP_CIPH_CUSTOM_IV, align 4
  %296 = and i32 %294, %295
  %297 = icmp eq i32 %296, 0
  br i1 %297, label %298, label %317

298:                                              ; preds = %290
  %299 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %300 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %299, i32 0, i32 12
  %301 = load i32*, i32** %300, align 8
  %302 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %303 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %302, i32 0, i32 5
  %304 = load i32, i32* %303, align 8
  %305 = sext i32 %304 to i64
  %306 = load i32*, i32** %23, align 8
  %307 = call i32 @EVP_CIPHER_CTX_iv(i32* %306)
  %308 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %309 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %308, i32 0, i32 5
  %310 = load i32, i32* %309, align 8
  %311 = sext i32 %310 to i64
  %312 = call i32 @TEST_mem_eq(i32* %301, i64 %305, i32 %307, i64 %311)
  %313 = icmp ne i32 %312, 0
  br i1 %313, label %317, label %314

314:                                              ; preds = %298
  %315 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %316 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %315, i32 0, i32 0
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0), i8** %316, align 8
  br label %674

317:                                              ; preds = %298, %290, %285
  %318 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %319 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %318, i32 0, i32 4
  %320 = load i64, i64* %319, align 8
  %321 = load i64, i64* @EVP_CIPH_CCM_MODE, align 8
  %322 = icmp eq i64 %320, %321
  br i1 %322, label %323, label %333

323:                                              ; preds = %317
  %324 = load i32*, i32** %23, align 8
  %325 = load i64, i64* %16, align 8
  %326 = trunc i64 %325 to i32
  %327 = call i32 @EVP_CipherUpdate(i32* %324, i8* null, i32* %19, i8* null, i32 %326)
  %328 = icmp ne i32 %327, 0
  br i1 %328, label %332, label %329

329:                                              ; preds = %323
  %330 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %331 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %330, i32 0, i32 0
  store i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.10, i64 0, i64 0), i8** %331, align 8
  br label %674

332:                                              ; preds = %323
  br label %333

333:                                              ; preds = %332, %317
  %334 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %335 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %334, i32 0, i32 9
  %336 = load i8**, i8*** %335, align 8
  %337 = getelementptr inbounds i8*, i8** %336, i64 0
  %338 = load i8*, i8** %337, align 8
  %339 = icmp ne i8* %338, null
  br i1 %339, label %340, label %485

340:                                              ; preds = %333
  %341 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %342 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %341, i32 0, i32 0
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0), i8** %342, align 8
  %343 = load i32, i32* %10, align 4
  %344 = icmp ne i32 %343, 0
  br i1 %344, label %379, label %345

345:                                              ; preds = %340
  store i32 0, i32* %22, align 4
  br label %346

346:                                              ; preds = %375, %345
  %347 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %348 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %347, i32 0, i32 9
  %349 = load i8**, i8*** %348, align 8
  %350 = load i32, i32* %22, align 4
  %351 = sext i32 %350 to i64
  %352 = getelementptr inbounds i8*, i8** %349, i64 %351
  %353 = load i8*, i8** %352, align 8
  %354 = icmp ne i8* %353, null
  br i1 %354, label %355, label %378

355:                                              ; preds = %346
  %356 = load i32*, i32** %23, align 8
  %357 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %358 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %357, i32 0, i32 9
  %359 = load i8**, i8*** %358, align 8
  %360 = load i32, i32* %22, align 4
  %361 = sext i32 %360 to i64
  %362 = getelementptr inbounds i8*, i8** %359, i64 %361
  %363 = load i8*, i8** %362, align 8
  %364 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %365 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %364, i32 0, i32 10
  %366 = load i32*, i32** %365, align 8
  %367 = load i32, i32* %22, align 4
  %368 = sext i32 %367 to i64
  %369 = getelementptr inbounds i32, i32* %366, i64 %368
  %370 = load i32, i32* %369, align 4
  %371 = call i32 @EVP_CipherUpdate(i32* %356, i8* null, i32* %20, i8* %363, i32 %370)
  %372 = icmp ne i32 %371, 0
  br i1 %372, label %374, label %373

373:                                              ; preds = %355
  br label %674

374:                                              ; preds = %355
  br label %375

375:                                              ; preds = %374
  %376 = load i32, i32* %22, align 4
  %377 = add nsw i32 %376, 1
  store i32 %377, i32* %22, align 4
  br label %346

378:                                              ; preds = %346
  br label %484

379:                                              ; preds = %340
  store i32 0, i32* %22, align 4
  br label %380

380:                                              ; preds = %480, %379
  %381 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %382 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %381, i32 0, i32 9
  %383 = load i8**, i8*** %382, align 8
  %384 = load i32, i32* %22, align 4
  %385 = sext i32 %384 to i64
  %386 = getelementptr inbounds i8*, i8** %383, i64 %385
  %387 = load i8*, i8** %386, align 8
  %388 = icmp ne i8* %387, null
  br i1 %388, label %389, label %483

389:                                              ; preds = %380
  %390 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %391 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %390, i32 0, i32 10
  %392 = load i32*, i32** %391, align 8
  %393 = load i32, i32* %22, align 4
  %394 = sext i32 %393 to i64
  %395 = getelementptr inbounds i32, i32* %392, i64 %394
  %396 = load i32, i32* %395, align 4
  %397 = icmp sgt i32 %396, 0
  br i1 %397, label %398, label %413

398:                                              ; preds = %389
  %399 = load i32*, i32** %23, align 8
  %400 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %401 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %400, i32 0, i32 9
  %402 = load i8**, i8*** %401, align 8
  %403 = load i32, i32* %22, align 4
  %404 = sext i32 %403 to i64
  %405 = getelementptr inbounds i8*, i8** %402, i64 %404
  %406 = load i8*, i8** %405, align 8
  %407 = call i32 @EVP_CipherUpdate(i32* %399, i8* null, i32* %20, i8* %406, i32 1)
  %408 = icmp ne i32 %407, 0
  br i1 %408, label %410, label %409

409:                                              ; preds = %398
  br label %674

410:                                              ; preds = %398
  %411 = load i64, i64* %17, align 8
  %412 = add i64 %411, 1
  store i64 %412, i64* %17, align 8
  br label %413

413:                                              ; preds = %410, %389
  %414 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %415 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %414, i32 0, i32 10
  %416 = load i32*, i32** %415, align 8
  %417 = load i32, i32* %22, align 4
  %418 = sext i32 %417 to i64
  %419 = getelementptr inbounds i32, i32* %416, i64 %418
  %420 = load i32, i32* %419, align 4
  %421 = icmp sgt i32 %420, 2
  br i1 %421, label %422, label %456

422:                                              ; preds = %413
  %423 = load i32*, i32** %23, align 8
  %424 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %425 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %424, i32 0, i32 9
  %426 = load i8**, i8*** %425, align 8
  %427 = load i32, i32* %22, align 4
  %428 = sext i32 %427 to i64
  %429 = getelementptr inbounds i8*, i8** %426, i64 %428
  %430 = load i8*, i8** %429, align 8
  %431 = load i64, i64* %17, align 8
  %432 = getelementptr inbounds i8, i8* %430, i64 %431
  %433 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %434 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %433, i32 0, i32 10
  %435 = load i32*, i32** %434, align 8
  %436 = load i32, i32* %22, align 4
  %437 = sext i32 %436 to i64
  %438 = getelementptr inbounds i32, i32* %435, i64 %437
  %439 = load i32, i32* %438, align 4
  %440 = sub nsw i32 %439, 2
  %441 = call i32 @EVP_CipherUpdate(i32* %423, i8* null, i32* %20, i8* %432, i32 %440)
  %442 = icmp ne i32 %441, 0
  br i1 %442, label %444, label %443

443:                                              ; preds = %422
  br label %674

444:                                              ; preds = %422
  %445 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %446 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %445, i32 0, i32 10
  %447 = load i32*, i32** %446, align 8
  %448 = load i32, i32* %22, align 4
  %449 = sext i32 %448 to i64
  %450 = getelementptr inbounds i32, i32* %447, i64 %449
  %451 = load i32, i32* %450, align 4
  %452 = sub nsw i32 %451, 2
  %453 = sext i32 %452 to i64
  %454 = load i64, i64* %17, align 8
  %455 = add i64 %454, %453
  store i64 %455, i64* %17, align 8
  br label %456

456:                                              ; preds = %444, %413
  %457 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %458 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %457, i32 0, i32 10
  %459 = load i32*, i32** %458, align 8
  %460 = load i32, i32* %22, align 4
  %461 = sext i32 %460 to i64
  %462 = getelementptr inbounds i32, i32* %459, i64 %461
  %463 = load i32, i32* %462, align 4
  %464 = icmp sgt i32 %463, 1
  br i1 %464, label %465, label %479

465:                                              ; preds = %456
  %466 = load i32*, i32** %23, align 8
  %467 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %468 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %467, i32 0, i32 9
  %469 = load i8**, i8*** %468, align 8
  %470 = load i32, i32* %22, align 4
  %471 = sext i32 %470 to i64
  %472 = getelementptr inbounds i8*, i8** %469, i64 %471
  %473 = load i8*, i8** %472, align 8
  %474 = load i64, i64* %17, align 8
  %475 = getelementptr inbounds i8, i8* %473, i64 %474
  %476 = call i32 @EVP_CipherUpdate(i32* %466, i8* null, i32* %20, i8* %475, i32 1)
  %477 = icmp ne i32 %476, 0
  br i1 %477, label %479, label %478

478:                                              ; preds = %465
  br label %674

479:                                              ; preds = %465, %456
  br label %480

480:                                              ; preds = %479
  %481 = load i32, i32* %22, align 4
  %482 = add nsw i32 %481, 1
  store i32 %482, i32* %22, align 4
  br label %380

483:                                              ; preds = %380
  br label %484

484:                                              ; preds = %483, %378
  br label %485

485:                                              ; preds = %484, %333
  %486 = load i32, i32* %7, align 4
  %487 = icmp ne i32 %486, 0
  br i1 %487, label %514, label %488

488:                                              ; preds = %485
  %489 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %490 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %489, i32 0, i32 4
  %491 = load i64, i64* %490, align 8
  %492 = load i64, i64* @EVP_CIPH_OCB_MODE, align 8
  %493 = icmp eq i64 %491, %492
  br i1 %493, label %499, label %494

494:                                              ; preds = %488
  %495 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %496 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %495, i32 0, i32 11
  %497 = load i64, i64* %496, align 8
  %498 = icmp ne i64 %497, 0
  br i1 %498, label %499, label %514

499:                                              ; preds = %494, %488
  %500 = load i32*, i32** %23, align 8
  %501 = load i32, i32* @EVP_CTRL_AEAD_SET_TAG, align 4
  %502 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %503 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %502, i32 0, i32 7
  %504 = load i32, i32* %503, align 8
  %505 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %506 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %505, i32 0, i32 6
  %507 = load i8*, i8** %506, align 8
  %508 = call i32 @EVP_CIPHER_CTX_ctrl(i32* %500, i32 %501, i32 %504, i8* %507)
  %509 = icmp ne i32 %508, 0
  br i1 %509, label %513, label %510

510:                                              ; preds = %499
  %511 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %512 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %511, i32 0, i32 0
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i8** %512, align 8
  br label %674

513:                                              ; preds = %499
  br label %514

514:                                              ; preds = %513, %494, %485
  %515 = load i32*, i32** %23, align 8
  %516 = call i32 @EVP_CIPHER_CTX_set_padding(i32* %515, i32 0)
  %517 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %518 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %517, i32 0, i32 0
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.12, i64 0, i64 0), i8** %518, align 8
  store i32 0, i32* %19, align 4
  %519 = load i32, i32* %10, align 4
  %520 = icmp ne i32 %519, 0
  br i1 %520, label %533, label %521

521:                                              ; preds = %514
  %522 = load i32*, i32** %23, align 8
  %523 = load i8*, i8** %14, align 8
  %524 = load i64, i64* %8, align 8
  %525 = getelementptr inbounds i8, i8* %523, i64 %524
  %526 = load i8*, i8** %12, align 8
  %527 = load i64, i64* %15, align 8
  %528 = trunc i64 %527 to i32
  %529 = call i32 @EVP_CipherUpdate(i32* %522, i8* %525, i32* %19, i8* %526, i32 %528)
  %530 = icmp ne i32 %529, 0
  br i1 %530, label %532, label %531

531:                                              ; preds = %521
  br label %674

532:                                              ; preds = %521
  br label %599

533:                                              ; preds = %514
  %534 = load i64, i64* %15, align 8
  %535 = icmp ugt i64 %534, 0
  br i1 %535, label %536, label %553

536:                                              ; preds = %533
  %537 = load i32*, i32** %23, align 8
  %538 = load i8*, i8** %14, align 8
  %539 = load i64, i64* %8, align 8
  %540 = getelementptr inbounds i8, i8* %538, i64 %539
  %541 = load i8*, i8** %12, align 8
  %542 = call i32 @EVP_CipherUpdate(i32* %537, i8* %540, i32* %20, i8* %541, i32 1)
  %543 = icmp ne i32 %542, 0
  br i1 %543, label %545, label %544

544:                                              ; preds = %536
  br label %674

545:                                              ; preds = %536
  %546 = load i32, i32* %20, align 4
  %547 = load i32, i32* %19, align 4
  %548 = add nsw i32 %547, %546
  store i32 %548, i32* %19, align 4
  %549 = load i8*, i8** %12, align 8
  %550 = getelementptr inbounds i8, i8* %549, i32 1
  store i8* %550, i8** %12, align 8
  %551 = load i64, i64* %15, align 8
  %552 = add i64 %551, -1
  store i64 %552, i64* %15, align 8
  br label %553

553:                                              ; preds = %545, %533
  %554 = load i64, i64* %15, align 8
  %555 = icmp ugt i64 %554, 1
  br i1 %555, label %556, label %579

556:                                              ; preds = %553
  %557 = load i32*, i32** %23, align 8
  %558 = load i8*, i8** %14, align 8
  %559 = load i64, i64* %8, align 8
  %560 = getelementptr inbounds i8, i8* %558, i64 %559
  %561 = load i32, i32* %19, align 4
  %562 = sext i32 %561 to i64
  %563 = getelementptr inbounds i8, i8* %560, i64 %562
  %564 = load i8*, i8** %12, align 8
  %565 = load i64, i64* %15, align 8
  %566 = sub i64 %565, 1
  %567 = trunc i64 %566 to i32
  %568 = call i32 @EVP_CipherUpdate(i32* %557, i8* %563, i32* %20, i8* %564, i32 %567)
  %569 = icmp ne i32 %568, 0
  br i1 %569, label %571, label %570

570:                                              ; preds = %556
  br label %674

571:                                              ; preds = %556
  %572 = load i32, i32* %20, align 4
  %573 = load i32, i32* %19, align 4
  %574 = add nsw i32 %573, %572
  store i32 %574, i32* %19, align 4
  %575 = load i64, i64* %15, align 8
  %576 = sub i64 %575, 1
  %577 = load i8*, i8** %12, align 8
  %578 = getelementptr inbounds i8, i8* %577, i64 %576
  store i8* %578, i8** %12, align 8
  store i64 1, i64* %15, align 8
  br label %579

579:                                              ; preds = %571, %553
  %580 = load i64, i64* %15, align 8
  %581 = icmp ugt i64 %580, 0
  br i1 %581, label %582, label %598

582:                                              ; preds = %579
  %583 = load i32*, i32** %23, align 8
  %584 = load i8*, i8** %14, align 8
  %585 = load i64, i64* %8, align 8
  %586 = getelementptr inbounds i8, i8* %584, i64 %585
  %587 = load i32, i32* %19, align 4
  %588 = sext i32 %587 to i64
  %589 = getelementptr inbounds i8, i8* %586, i64 %588
  %590 = load i8*, i8** %12, align 8
  %591 = call i32 @EVP_CipherUpdate(i32* %583, i8* %589, i32* %20, i8* %590, i32 1)
  %592 = icmp ne i32 %591, 0
  br i1 %592, label %594, label %593

593:                                              ; preds = %582
  br label %674

594:                                              ; preds = %582
  %595 = load i32, i32* %20, align 4
  %596 = load i32, i32* %19, align 4
  %597 = add nsw i32 %596, %595
  store i32 %597, i32* %19, align 4
  br label %598

598:                                              ; preds = %594, %579
  br label %599

599:                                              ; preds = %598, %532
  %600 = load i32*, i32** %23, align 8
  %601 = load i8*, i8** %14, align 8
  %602 = load i64, i64* %8, align 8
  %603 = getelementptr inbounds i8, i8* %601, i64 %602
  %604 = load i32, i32* %19, align 4
  %605 = sext i32 %604 to i64
  %606 = getelementptr inbounds i8, i8* %603, i64 %605
  %607 = call i32 @EVP_CipherFinal_ex(i32* %600, i8* %606, i32* %21)
  %608 = icmp ne i32 %607, 0
  br i1 %608, label %612, label %609

609:                                              ; preds = %599
  %610 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %611 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %610, i32 0, i32 0
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.13, i64 0, i64 0), i8** %611, align 8
  br label %674

612:                                              ; preds = %599
  %613 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %614 = load i8*, i8** %13, align 8
  %615 = load i64, i64* %16, align 8
  %616 = load i8*, i8** %14, align 8
  %617 = load i64, i64* %8, align 8
  %618 = getelementptr inbounds i8, i8* %616, i64 %617
  %619 = load i32, i32* %19, align 4
  %620 = load i32, i32* %21, align 4
  %621 = add nsw i32 %619, %620
  %622 = call i32 @memory_err_compare(%struct.TYPE_5__* %613, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i64 0, i64 0), i8* %614, i64 %615, i8* %618, i32 %621)
  %623 = icmp ne i32 %622, 0
  br i1 %623, label %625, label %624

624:                                              ; preds = %612
  br label %674

625:                                              ; preds = %612
  %626 = load i32, i32* %7, align 4
  %627 = icmp ne i32 %626, 0
  br i1 %627, label %628, label %671

628:                                              ; preds = %625
  %629 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %630 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %629, i32 0, i32 4
  %631 = load i64, i64* %630, align 8
  %632 = icmp ne i64 %631, 0
  br i1 %632, label %633, label %671

633:                                              ; preds = %628
  %634 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %635 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %634, i32 0, i32 7
  %636 = load i32, i32* %635, align 8
  %637 = call i32 @TEST_size_t_le(i32 %636, i32 16)
  %638 = icmp ne i32 %637, 0
  br i1 %638, label %642, label %639

639:                                              ; preds = %633
  %640 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %641 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %640, i32 0, i32 0
  store i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.15, i64 0, i64 0), i8** %641, align 8
  br label %674

642:                                              ; preds = %633
  %643 = load i32*, i32** %23, align 8
  %644 = load i32, i32* @EVP_CTRL_AEAD_GET_TAG, align 4
  %645 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %646 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %645, i32 0, i32 7
  %647 = load i32, i32* %646, align 8
  %648 = getelementptr inbounds [16 x i8], [16 x i8]* %27, i64 0, i64 0
  %649 = call i32 @EVP_CIPHER_CTX_ctrl(i32* %643, i32 %644, i32 %647, i8* %648)
  %650 = icmp ne i32 %649, 0
  br i1 %650, label %654, label %651

651:                                              ; preds = %642
  %652 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %653 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %652, i32 0, i32 0
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.16, i64 0, i64 0), i8** %653, align 8
  br label %674

654:                                              ; preds = %642
  %655 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %656 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %657 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %656, i32 0, i32 6
  %658 = load i8*, i8** %657, align 8
  %659 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %660 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %659, i32 0, i32 7
  %661 = load i32, i32* %660, align 8
  %662 = sext i32 %661 to i64
  %663 = getelementptr inbounds [16 x i8], [16 x i8]* %27, i64 0, i64 0
  %664 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %665 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %664, i32 0, i32 7
  %666 = load i32, i32* %665, align 8
  %667 = call i32 @memory_err_compare(%struct.TYPE_5__* %655, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.17, i64 0, i64 0), i8* %658, i64 %662, i8* %663, i32 %666)
  %668 = icmp ne i32 %667, 0
  br i1 %668, label %670, label %669

669:                                              ; preds = %654
  br label %674

670:                                              ; preds = %654
  br label %671

671:                                              ; preds = %670, %628, %625
  %672 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %673 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %672, i32 0, i32 0
  store i8* null, i8** %673, align 8
  store i32 1, i32* %18, align 4
  br label %674

674:                                              ; preds = %671, %669, %651, %639, %624, %609, %593, %570, %544, %531, %510, %478, %443, %409, %373, %329, %314, %282, %268, %250, %239, %221, %170, %158, %137, %113, %83, %36
  %675 = load i8*, i8** %14, align 8
  %676 = call i32 @OPENSSL_free(i8* %675)
  %677 = load i32*, i32** %23, align 8
  %678 = call i32 @EVP_CIPHER_CTX_free(i32* %677)
  %679 = load i32, i32* %18, align 4
  ret i32 %679
}

declare dso_local i32 @TEST_ptr(i32*) #1

declare dso_local i32* @EVP_CIPHER_CTX_new(...) #1

declare dso_local i32 @EVP_CIPHER_CTX_set_flags(i32*, i32) #1

declare dso_local i8* @OPENSSL_malloc(i64) #1

declare dso_local i8* @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @EVP_CipherInit_ex(i32*, i32*, i32*, i32*, i32*, i32) #1

declare dso_local i32 @EVP_CIPHER_CTX_ctrl(i32*, i32, i32, i8*) #1

declare dso_local i64 @EVP_CIPHER_CTX_iv_length(i32*) #1

declare dso_local i32 @EVP_CIPHER_CTX_set_key_length(i32*, i32) #1

declare dso_local i32 @EVP_CIPHER_flags(i32*) #1

declare dso_local i32 @TEST_mem_eq(i32*, i64, i32, i64) #1

declare dso_local i32 @EVP_CIPHER_CTX_iv(i32*) #1

declare dso_local i32 @EVP_CipherUpdate(i32*, i8*, i32*, i8*, i32) #1

declare dso_local i32 @EVP_CIPHER_CTX_set_padding(i32*, i32) #1

declare dso_local i32 @EVP_CipherFinal_ex(i32*, i8*, i32*) #1

declare dso_local i32 @memory_err_compare(%struct.TYPE_5__*, i8*, i8*, i64, i8*, i32) #1

declare dso_local i32 @TEST_size_t_le(i32, i32) #1

declare dso_local i32 @OPENSSL_free(i8*) #1

declare dso_local i32 @EVP_CIPHER_CTX_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
