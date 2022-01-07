; ModuleID = '/home/carl/AnghaBench/openssl/ssl/record/extr_rec_layer_d1.c_do_dtls1_write.c'
source_filename = "/home/carl/AnghaBench/openssl/ssl/record/extr_rec_layer_d1.c_do_dtls1_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_39__ = type { i64, i32, %struct.TYPE_37__, i32, i32 (i32, i32, i32, i8*, i32, %struct.TYPE_39__*, i32)*, %struct.TYPE_35__*, i32*, i32*, i32, i32*, %struct.TYPE_33__ }
%struct.TYPE_37__ = type { i64, i8*, i32, i64, i32*, %struct.TYPE_36__*, i32* }
%struct.TYPE_36__ = type { i64 }
%struct.TYPE_35__ = type { i32 (%struct.TYPE_39__*)*, i64, %struct.TYPE_34__* }
%struct.TYPE_34__ = type { i32 (%struct.TYPE_39__*, %struct.TYPE_38__*, i32, i32)*, i32 (%struct.TYPE_39__*, %struct.TYPE_38__*, i8*, i32)* }
%struct.TYPE_38__ = type { i64 }
%struct.TYPE_33__ = type { i64 }

@SSL_AD_INTERNAL_ERROR = common dso_local global i32 0, align 4
@SSL_F_DO_DTLS1_WRITE = common dso_local global i32 0, align 4
@ERR_R_INTERNAL_ERROR = common dso_local global i32 0, align 4
@SSL_R_EXCEEDS_MAX_FRAGMENT_SIZE = common dso_local global i32 0, align 4
@DTLS_ANY_VERSION = common dso_local global i64 0, align 8
@DTLS1_BAD_VER = common dso_local global i64 0, align 8
@DTLS1_VERSION = common dso_local global i32 0, align 4
@EVP_CIPH_CBC_MODE = common dso_local global i32 0, align 4
@EVP_CIPH_GCM_MODE = common dso_local global i32 0, align 4
@EVP_GCM_TLS_EXPLICIT_IV_LEN = common dso_local global i32 0, align 4
@EVP_CIPH_CCM_MODE = common dso_local global i32 0, align 4
@EVP_CCM_TLS_EXPLICIT_IV_LEN = common dso_local global i32 0, align 4
@SSL_R_COMPRESSION_FAILURE = common dso_local global i32 0, align 4
@SSL3_RT_HEADER = common dso_local global i32 0, align 4
@DTLS1_RT_HEADER_LENGTH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_dtls1_write(%struct.TYPE_39__* %0, i32 %1, i8* %2, i64 %3, i32 %4, i64* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_39__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca %struct.TYPE_38__, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32, align 4
  store %struct.TYPE_39__* %0, %struct.TYPE_39__** %8, align 8
  store i32 %1, i32* %9, align 4
  store i8* %2, i8** %10, align 8
  store i64 %3, i64* %11, align 8
  store i32 %4, i32* %12, align 4
  store i64* %5, i64** %13, align 8
  store i32 0, i32* %18, align 4
  store i64 0, i64* %19, align 8
  %25 = load %struct.TYPE_39__*, %struct.TYPE_39__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %26, i32 0, i32 6
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 0
  store i32* %29, i32** %22, align 8
  %30 = load i32*, i32** %22, align 8
  %31 = call i64 @SSL3_BUFFER_get_left(i32* %30)
  %32 = icmp eq i64 %31, 0
  %33 = zext i1 %32 to i32
  %34 = call i32 @ossl_assert(i32 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %42, label %36

36:                                               ; preds = %6
  %37 = load %struct.TYPE_39__*, %struct.TYPE_39__** %8, align 8
  %38 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %39 = load i32, i32* @SSL_F_DO_DTLS1_WRITE, align 4
  %40 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %41 = call i32 @SSLfatal(%struct.TYPE_39__* %37, i32 %38, i32 %39, i32 %40)
  store i32 0, i32* %7, align 4
  br label %422

42:                                               ; preds = %6
  %43 = load %struct.TYPE_39__*, %struct.TYPE_39__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %43, i32 0, i32 10
  %45 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %61

48:                                               ; preds = %42
  %49 = load %struct.TYPE_39__*, %struct.TYPE_39__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %49, i32 0, i32 5
  %51 = load %struct.TYPE_35__*, %struct.TYPE_35__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %51, i32 0, i32 0
  %53 = load i32 (%struct.TYPE_39__*)*, i32 (%struct.TYPE_39__*)** %52, align 8
  %54 = load %struct.TYPE_39__*, %struct.TYPE_39__** %8, align 8
  %55 = call i32 %53(%struct.TYPE_39__* %54)
  store i32 %55, i32* %16, align 4
  %56 = load i32, i32* %16, align 4
  %57 = icmp sle i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %48
  %59 = load i32, i32* %16, align 4
  store i32 %59, i32* %7, align 4
  br label %422

60:                                               ; preds = %48
  br label %61

61:                                               ; preds = %60, %42
  %62 = load i64, i64* %11, align 8
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %61
  %65 = load i32, i32* %12, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %64
  store i32 0, i32* %7, align 4
  br label %422

68:                                               ; preds = %64, %61
  %69 = load i64, i64* %11, align 8
  %70 = load %struct.TYPE_39__*, %struct.TYPE_39__** %8, align 8
  %71 = call i64 @ssl_get_max_send_fragment(%struct.TYPE_39__* %70)
  %72 = icmp ugt i64 %69, %71
  br i1 %72, label %73, label %79

73:                                               ; preds = %68
  %74 = load %struct.TYPE_39__*, %struct.TYPE_39__** %8, align 8
  %75 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %76 = load i32, i32* @SSL_F_DO_DTLS1_WRITE, align 4
  %77 = load i32, i32* @SSL_R_EXCEEDS_MAX_FRAGMENT_SIZE, align 4
  %78 = call i32 @SSLfatal(%struct.TYPE_39__* %74, i32 %75, i32 %76, i32 %77)
  store i32 0, i32* %7, align 4
  br label %422

79:                                               ; preds = %68
  %80 = load %struct.TYPE_39__*, %struct.TYPE_39__** %8, align 8
  %81 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %80, i32 0, i32 9
  %82 = load i32*, i32** %81, align 8
  store i32* %82, i32** %23, align 8
  %83 = load i32*, i32** %23, align 8
  %84 = icmp eq i32* %83, null
  br i1 %84, label %96, label %85

85:                                               ; preds = %79
  %86 = load %struct.TYPE_39__*, %struct.TYPE_39__** %8, align 8
  %87 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %86, i32 0, i32 7
  %88 = load i32*, i32** %87, align 8
  %89 = icmp eq i32* %88, null
  br i1 %89, label %96, label %90

90:                                               ; preds = %85
  %91 = load %struct.TYPE_39__*, %struct.TYPE_39__** %8, align 8
  %92 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %91, i32 0, i32 8
  %93 = load i32, i32* %92, align 8
  %94 = call i32* @EVP_MD_CTX_md(i32 %93)
  %95 = icmp eq i32* %94, null
  br i1 %95, label %96, label %97

96:                                               ; preds = %90, %85, %79
  store i32 1, i32* %18, align 4
  br label %97

97:                                               ; preds = %96, %90
  %98 = load i32, i32* %18, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %97
  store i32 0, i32* %17, align 4
  br label %115

101:                                              ; preds = %97
  %102 = load %struct.TYPE_39__*, %struct.TYPE_39__** %8, align 8
  %103 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %102, i32 0, i32 8
  %104 = load i32, i32* %103, align 8
  %105 = call i32 @EVP_MD_CTX_size(i32 %104)
  store i32 %105, i32* %17, align 4
  %106 = load i32, i32* %17, align 4
  %107 = icmp slt i32 %106, 0
  br i1 %107, label %108, label %114

108:                                              ; preds = %101
  %109 = load %struct.TYPE_39__*, %struct.TYPE_39__** %8, align 8
  %110 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %111 = load i32, i32* @SSL_F_DO_DTLS1_WRITE, align 4
  %112 = load i32, i32* @SSL_R_EXCEEDS_MAX_FRAGMENT_SIZE, align 4
  %113 = call i32 @SSLfatal(%struct.TYPE_39__* %109, i32 %110, i32 %111, i32 %112)
  store i32 -1, i32* %7, align 4
  br label %422

114:                                              ; preds = %101
  br label %115

115:                                              ; preds = %114, %100
  %116 = load i32*, i32** %22, align 8
  %117 = call i8* @SSL3_BUFFER_get_buf(i32* %116)
  %118 = load i64, i64* %19, align 8
  %119 = getelementptr inbounds i8, i8* %117, i64 %118
  store i8* %119, i8** %14, align 8
  %120 = load i32, i32* %9, align 4
  %121 = and i32 %120, 255
  %122 = trunc i32 %121 to i8
  %123 = load i8*, i8** %14, align 8
  %124 = getelementptr inbounds i8, i8* %123, i32 1
  store i8* %124, i8** %14, align 8
  store i8 %122, i8* %123, align 1
  %125 = load i32, i32* %9, align 4
  %126 = call i32 @SSL3_RECORD_set_type(%struct.TYPE_38__* %21, i32 %125)
  %127 = load %struct.TYPE_39__*, %struct.TYPE_39__** %8, align 8
  %128 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %127, i32 0, i32 5
  %129 = load %struct.TYPE_35__*, %struct.TYPE_35__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %129, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* @DTLS_ANY_VERSION, align 8
  %133 = icmp eq i64 %131, %132
  br i1 %133, label %134, label %151

134:                                              ; preds = %115
  %135 = load %struct.TYPE_39__*, %struct.TYPE_39__** %8, align 8
  %136 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = load i64, i64* @DTLS1_BAD_VER, align 8
  %139 = icmp ne i64 %137, %138
  br i1 %139, label %140, label %151

140:                                              ; preds = %134
  %141 = load i32, i32* @DTLS1_VERSION, align 4
  %142 = ashr i32 %141, 8
  %143 = trunc i32 %142 to i8
  %144 = load i8*, i8** %14, align 8
  %145 = getelementptr inbounds i8, i8* %144, i32 1
  store i8* %145, i8** %14, align 8
  store i8 %143, i8* %144, align 1
  %146 = load i32, i32* @DTLS1_VERSION, align 4
  %147 = and i32 %146, 255
  %148 = trunc i32 %147 to i8
  %149 = load i8*, i8** %14, align 8
  %150 = getelementptr inbounds i8, i8* %149, i32 1
  store i8* %150, i8** %14, align 8
  store i8 %148, i8* %149, align 1
  br label %166

151:                                              ; preds = %134, %115
  %152 = load %struct.TYPE_39__*, %struct.TYPE_39__** %8, align 8
  %153 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 8
  %155 = ashr i32 %154, 8
  %156 = trunc i32 %155 to i8
  %157 = load i8*, i8** %14, align 8
  %158 = getelementptr inbounds i8, i8* %157, i32 1
  store i8* %158, i8** %14, align 8
  store i8 %156, i8* %157, align 1
  %159 = load %struct.TYPE_39__*, %struct.TYPE_39__** %8, align 8
  %160 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 8
  %162 = and i32 %161, 255
  %163 = trunc i32 %162 to i8
  %164 = load i8*, i8** %14, align 8
  %165 = getelementptr inbounds i8, i8* %164, i32 1
  store i8* %165, i8** %14, align 8
  store i8 %163, i8* %164, align 1
  br label %166

166:                                              ; preds = %151, %140
  %167 = load i8*, i8** %14, align 8
  store i8* %167, i8** %15, align 8
  %168 = load i8*, i8** %14, align 8
  %169 = getelementptr inbounds i8, i8* %168, i64 10
  store i8* %169, i8** %14, align 8
  %170 = load %struct.TYPE_39__*, %struct.TYPE_39__** %8, align 8
  %171 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %170, i32 0, i32 7
  %172 = load i32*, i32** %171, align 8
  %173 = icmp ne i32* %172, null
  br i1 %173, label %174, label %207

174:                                              ; preds = %166
  %175 = load %struct.TYPE_39__*, %struct.TYPE_39__** %8, align 8
  %176 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %175, i32 0, i32 7
  %177 = load i32*, i32** %176, align 8
  %178 = call i32 @EVP_CIPHER_CTX_mode(i32* %177)
  store i32 %178, i32* %24, align 4
  %179 = load i32, i32* %24, align 4
  %180 = load i32, i32* @EVP_CIPH_CBC_MODE, align 4
  %181 = icmp eq i32 %179, %180
  br i1 %181, label %182, label %191

182:                                              ; preds = %174
  %183 = load %struct.TYPE_39__*, %struct.TYPE_39__** %8, align 8
  %184 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %183, i32 0, i32 7
  %185 = load i32*, i32** %184, align 8
  %186 = call i32 @EVP_CIPHER_CTX_iv_length(i32* %185)
  store i32 %186, i32* %20, align 4
  %187 = load i32, i32* %20, align 4
  %188 = icmp sle i32 %187, 1
  br i1 %188, label %189, label %190

189:                                              ; preds = %182
  store i32 0, i32* %20, align 4
  br label %190

190:                                              ; preds = %189, %182
  br label %206

191:                                              ; preds = %174
  %192 = load i32, i32* %24, align 4
  %193 = load i32, i32* @EVP_CIPH_GCM_MODE, align 4
  %194 = icmp eq i32 %192, %193
  br i1 %194, label %195, label %197

195:                                              ; preds = %191
  %196 = load i32, i32* @EVP_GCM_TLS_EXPLICIT_IV_LEN, align 4
  store i32 %196, i32* %20, align 4
  br label %205

197:                                              ; preds = %191
  %198 = load i32, i32* %24, align 4
  %199 = load i32, i32* @EVP_CIPH_CCM_MODE, align 4
  %200 = icmp eq i32 %198, %199
  br i1 %200, label %201, label %203

201:                                              ; preds = %197
  %202 = load i32, i32* @EVP_CCM_TLS_EXPLICIT_IV_LEN, align 4
  store i32 %202, i32* %20, align 4
  br label %204

203:                                              ; preds = %197
  store i32 0, i32* %20, align 4
  br label %204

204:                                              ; preds = %203, %201
  br label %205

205:                                              ; preds = %204, %195
  br label %206

206:                                              ; preds = %205, %190
  br label %208

207:                                              ; preds = %166
  store i32 0, i32* %20, align 4
  br label %208

208:                                              ; preds = %207, %206
  %209 = load i8*, i8** %14, align 8
  %210 = load i32, i32* %20, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds i8, i8* %209, i64 %211
  %213 = call i32 @SSL3_RECORD_set_data(%struct.TYPE_38__* %21, i8* %212)
  %214 = load i64, i64* %11, align 8
  %215 = call i32 @SSL3_RECORD_set_length(%struct.TYPE_38__* %21, i64 %214)
  %216 = load i8*, i8** %10, align 8
  %217 = call i32 @SSL3_RECORD_set_input(%struct.TYPE_38__* %21, i8* %216)
  %218 = load %struct.TYPE_39__*, %struct.TYPE_39__** %8, align 8
  %219 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %218, i32 0, i32 6
  %220 = load i32*, i32** %219, align 8
  %221 = icmp ne i32* %220, null
  br i1 %221, label %222, label %233

222:                                              ; preds = %208
  %223 = load %struct.TYPE_39__*, %struct.TYPE_39__** %8, align 8
  %224 = call i32 @ssl3_do_compress(%struct.TYPE_39__* %223, %struct.TYPE_38__* %21)
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %232, label %226

226:                                              ; preds = %222
  %227 = load %struct.TYPE_39__*, %struct.TYPE_39__** %8, align 8
  %228 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %229 = load i32, i32* @SSL_F_DO_DTLS1_WRITE, align 4
  %230 = load i32, i32* @SSL_R_COMPRESSION_FAILURE, align 4
  %231 = call i32 @SSLfatal(%struct.TYPE_39__* %227, i32 %228, i32 %229, i32 %230)
  store i32 -1, i32* %7, align 4
  br label %422

232:                                              ; preds = %222
  br label %240

233:                                              ; preds = %208
  %234 = call i8* @SSL3_RECORD_get_data(%struct.TYPE_38__* %21)
  %235 = call i32* @SSL3_RECORD_get_input(%struct.TYPE_38__* %21)
  %236 = call i64 @SSL3_RECORD_get_length(%struct.TYPE_38__* %21)
  %237 = trunc i64 %236 to i32
  %238 = call i32 @memcpy(i8* %234, i32* %235, i32 %237)
  %239 = call i32 @SSL3_RECORD_reset_input(%struct.TYPE_38__* %21)
  br label %240

240:                                              ; preds = %233, %232
  %241 = load %struct.TYPE_39__*, %struct.TYPE_39__** %8, align 8
  %242 = call i64 @SSL_WRITE_ETM(%struct.TYPE_39__* %241)
  %243 = icmp ne i64 %242, 0
  br i1 %243, label %273, label %244

244:                                              ; preds = %240
  %245 = load i32, i32* %17, align 4
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %247, label %273

247:                                              ; preds = %244
  %248 = load %struct.TYPE_39__*, %struct.TYPE_39__** %8, align 8
  %249 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %248, i32 0, i32 5
  %250 = load %struct.TYPE_35__*, %struct.TYPE_35__** %249, align 8
  %251 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %250, i32 0, i32 2
  %252 = load %struct.TYPE_34__*, %struct.TYPE_34__** %251, align 8
  %253 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %252, i32 0, i32 1
  %254 = load i32 (%struct.TYPE_39__*, %struct.TYPE_38__*, i8*, i32)*, i32 (%struct.TYPE_39__*, %struct.TYPE_38__*, i8*, i32)** %253, align 8
  %255 = load %struct.TYPE_39__*, %struct.TYPE_39__** %8, align 8
  %256 = load i8*, i8** %14, align 8
  %257 = call i64 @SSL3_RECORD_get_length(%struct.TYPE_38__* %21)
  %258 = load i32, i32* %20, align 4
  %259 = sext i32 %258 to i64
  %260 = add i64 %257, %259
  %261 = getelementptr inbounds i8, i8* %256, i64 %260
  %262 = call i32 %254(%struct.TYPE_39__* %255, %struct.TYPE_38__* %21, i8* %261, i32 1)
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %270, label %264

264:                                              ; preds = %247
  %265 = load %struct.TYPE_39__*, %struct.TYPE_39__** %8, align 8
  %266 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %267 = load i32, i32* @SSL_F_DO_DTLS1_WRITE, align 4
  %268 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %269 = call i32 @SSLfatal(%struct.TYPE_39__* %265, i32 %266, i32 %267, i32 %268)
  store i32 -1, i32* %7, align 4
  br label %422

270:                                              ; preds = %247
  %271 = load i32, i32* %17, align 4
  %272 = call i32 @SSL3_RECORD_add_length(%struct.TYPE_38__* %21, i32 %271)
  br label %273

273:                                              ; preds = %270, %244, %240
  %274 = load i8*, i8** %14, align 8
  %275 = call i32 @SSL3_RECORD_set_data(%struct.TYPE_38__* %21, i8* %274)
  %276 = call i32 @SSL3_RECORD_reset_input(%struct.TYPE_38__* %21)
  %277 = load i32, i32* %20, align 4
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %279, label %282

279:                                              ; preds = %273
  %280 = load i32, i32* %20, align 4
  %281 = call i32 @SSL3_RECORD_add_length(%struct.TYPE_38__* %21, i32 %280)
  br label %282

282:                                              ; preds = %279, %273
  %283 = load %struct.TYPE_39__*, %struct.TYPE_39__** %8, align 8
  %284 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %283, i32 0, i32 5
  %285 = load %struct.TYPE_35__*, %struct.TYPE_35__** %284, align 8
  %286 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %285, i32 0, i32 2
  %287 = load %struct.TYPE_34__*, %struct.TYPE_34__** %286, align 8
  %288 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %287, i32 0, i32 0
  %289 = load i32 (%struct.TYPE_39__*, %struct.TYPE_38__*, i32, i32)*, i32 (%struct.TYPE_39__*, %struct.TYPE_38__*, i32, i32)** %288, align 8
  %290 = load %struct.TYPE_39__*, %struct.TYPE_39__** %8, align 8
  %291 = call i32 %289(%struct.TYPE_39__* %290, %struct.TYPE_38__* %21, i32 1, i32 1)
  %292 = icmp slt i32 %291, 1
  br i1 %292, label %293, label %304

293:                                              ; preds = %282
  %294 = load %struct.TYPE_39__*, %struct.TYPE_39__** %8, align 8
  %295 = call i32 @ossl_statem_in_error(%struct.TYPE_39__* %294)
  %296 = icmp ne i32 %295, 0
  br i1 %296, label %303, label %297

297:                                              ; preds = %293
  %298 = load %struct.TYPE_39__*, %struct.TYPE_39__** %8, align 8
  %299 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %300 = load i32, i32* @SSL_F_DO_DTLS1_WRITE, align 4
  %301 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %302 = call i32 @SSLfatal(%struct.TYPE_39__* %298, i32 %299, i32 %300, i32 %301)
  br label %303

303:                                              ; preds = %297, %293
  store i32 -1, i32* %7, align 4
  br label %422

304:                                              ; preds = %282
  %305 = load %struct.TYPE_39__*, %struct.TYPE_39__** %8, align 8
  %306 = call i64 @SSL_WRITE_ETM(%struct.TYPE_39__* %305)
  %307 = icmp ne i64 %306, 0
  br i1 %307, label %308, label %334

308:                                              ; preds = %304
  %309 = load i32, i32* %17, align 4
  %310 = icmp ne i32 %309, 0
  br i1 %310, label %311, label %334

311:                                              ; preds = %308
  %312 = load %struct.TYPE_39__*, %struct.TYPE_39__** %8, align 8
  %313 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %312, i32 0, i32 5
  %314 = load %struct.TYPE_35__*, %struct.TYPE_35__** %313, align 8
  %315 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %314, i32 0, i32 2
  %316 = load %struct.TYPE_34__*, %struct.TYPE_34__** %315, align 8
  %317 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %316, i32 0, i32 1
  %318 = load i32 (%struct.TYPE_39__*, %struct.TYPE_38__*, i8*, i32)*, i32 (%struct.TYPE_39__*, %struct.TYPE_38__*, i8*, i32)** %317, align 8
  %319 = load %struct.TYPE_39__*, %struct.TYPE_39__** %8, align 8
  %320 = load i8*, i8** %14, align 8
  %321 = call i64 @SSL3_RECORD_get_length(%struct.TYPE_38__* %21)
  %322 = getelementptr inbounds i8, i8* %320, i64 %321
  %323 = call i32 %318(%struct.TYPE_39__* %319, %struct.TYPE_38__* %21, i8* %322, i32 1)
  %324 = icmp ne i32 %323, 0
  br i1 %324, label %331, label %325

325:                                              ; preds = %311
  %326 = load %struct.TYPE_39__*, %struct.TYPE_39__** %8, align 8
  %327 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %328 = load i32, i32* @SSL_F_DO_DTLS1_WRITE, align 4
  %329 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %330 = call i32 @SSLfatal(%struct.TYPE_39__* %326, i32 %327, i32 %328, i32 %329)
  store i32 -1, i32* %7, align 4
  br label %422

331:                                              ; preds = %311
  %332 = load i32, i32* %17, align 4
  %333 = call i32 @SSL3_RECORD_add_length(%struct.TYPE_38__* %21, i32 %332)
  br label %334

334:                                              ; preds = %331, %308, %304
  %335 = load %struct.TYPE_39__*, %struct.TYPE_39__** %8, align 8
  %336 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %335, i32 0, i32 2
  %337 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %336, i32 0, i32 5
  %338 = load %struct.TYPE_36__*, %struct.TYPE_36__** %337, align 8
  %339 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %338, i32 0, i32 0
  %340 = load i64, i64* %339, align 8
  %341 = load i8*, i8** %15, align 8
  %342 = call i32 @s2n(i64 %340, i8* %341)
  %343 = load i8*, i8** %15, align 8
  %344 = load %struct.TYPE_39__*, %struct.TYPE_39__** %8, align 8
  %345 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %344, i32 0, i32 2
  %346 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %345, i32 0, i32 4
  %347 = load i32*, i32** %346, align 8
  %348 = getelementptr inbounds i32, i32* %347, i64 2
  %349 = call i32 @memcpy(i8* %343, i32* %348, i32 6)
  %350 = load i8*, i8** %15, align 8
  %351 = getelementptr inbounds i8, i8* %350, i64 6
  store i8* %351, i8** %15, align 8
  %352 = call i64 @SSL3_RECORD_get_length(%struct.TYPE_38__* %21)
  %353 = load i8*, i8** %15, align 8
  %354 = call i32 @s2n(i64 %352, i8* %353)
  %355 = load %struct.TYPE_39__*, %struct.TYPE_39__** %8, align 8
  %356 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %355, i32 0, i32 4
  %357 = load i32 (i32, i32, i32, i8*, i32, %struct.TYPE_39__*, i32)*, i32 (i32, i32, i32, i8*, i32, %struct.TYPE_39__*, i32)** %356, align 8
  %358 = icmp ne i32 (i32, i32, i32, i8*, i32, %struct.TYPE_39__*, i32)* %357, null
  br i1 %358, label %359, label %375

359:                                              ; preds = %334
  %360 = load %struct.TYPE_39__*, %struct.TYPE_39__** %8, align 8
  %361 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %360, i32 0, i32 4
  %362 = load i32 (i32, i32, i32, i8*, i32, %struct.TYPE_39__*, i32)*, i32 (i32, i32, i32, i8*, i32, %struct.TYPE_39__*, i32)** %361, align 8
  %363 = load i32, i32* @SSL3_RT_HEADER, align 4
  %364 = load i8*, i8** %15, align 8
  %365 = load i32, i32* @DTLS1_RT_HEADER_LENGTH, align 4
  %366 = sext i32 %365 to i64
  %367 = sub i64 0, %366
  %368 = getelementptr inbounds i8, i8* %364, i64 %367
  %369 = load i32, i32* @DTLS1_RT_HEADER_LENGTH, align 4
  %370 = load %struct.TYPE_39__*, %struct.TYPE_39__** %8, align 8
  %371 = load %struct.TYPE_39__*, %struct.TYPE_39__** %8, align 8
  %372 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %371, i32 0, i32 3
  %373 = load i32, i32* %372, align 8
  %374 = call i32 %362(i32 1, i32 0, i32 %363, i8* %368, i32 %369, %struct.TYPE_39__* %370, i32 %373)
  br label %375

375:                                              ; preds = %359, %334
  %376 = load i32, i32* %9, align 4
  %377 = call i32 @SSL3_RECORD_set_type(%struct.TYPE_38__* %21, i32 %376)
  %378 = load i32, i32* @DTLS1_RT_HEADER_LENGTH, align 4
  %379 = call i32 @SSL3_RECORD_add_length(%struct.TYPE_38__* %21, i32 %378)
  %380 = load %struct.TYPE_39__*, %struct.TYPE_39__** %8, align 8
  %381 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %380, i32 0, i32 2
  %382 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %381, i32 0, i32 4
  %383 = load i32*, i32** %382, align 8
  %384 = getelementptr inbounds i32, i32* %383, i64 0
  %385 = call i32 @ssl3_record_sequence_update(i32* %384)
  %386 = load i32, i32* %12, align 4
  %387 = icmp ne i32 %386, 0
  br i1 %387, label %388, label %392

388:                                              ; preds = %375
  %389 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %21, i32 0, i32 0
  %390 = load i64, i64* %389, align 8
  %391 = load i64*, i64** %13, align 8
  store i64 %390, i64* %391, align 8
  store i32 1, i32* %7, align 4
  br label %422

392:                                              ; preds = %375
  %393 = load i32*, i32** %22, align 8
  %394 = load i64, i64* %19, align 8
  %395 = call i64 @SSL3_RECORD_get_length(%struct.TYPE_38__* %21)
  %396 = add i64 %394, %395
  %397 = call i32 @SSL3_BUFFER_set_left(i32* %393, i64 %396)
  %398 = load i32*, i32** %22, align 8
  %399 = call i32 @SSL3_BUFFER_set_offset(i32* %398, i32 0)
  %400 = load i64, i64* %11, align 8
  %401 = load %struct.TYPE_39__*, %struct.TYPE_39__** %8, align 8
  %402 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %401, i32 0, i32 2
  %403 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %402, i32 0, i32 0
  store i64 %400, i64* %403, align 8
  %404 = load i8*, i8** %10, align 8
  %405 = load %struct.TYPE_39__*, %struct.TYPE_39__** %8, align 8
  %406 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %405, i32 0, i32 2
  %407 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %406, i32 0, i32 1
  store i8* %404, i8** %407, align 8
  %408 = load i32, i32* %9, align 4
  %409 = load %struct.TYPE_39__*, %struct.TYPE_39__** %8, align 8
  %410 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %409, i32 0, i32 2
  %411 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %410, i32 0, i32 2
  store i32 %408, i32* %411, align 8
  %412 = load i64, i64* %11, align 8
  %413 = load %struct.TYPE_39__*, %struct.TYPE_39__** %8, align 8
  %414 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %413, i32 0, i32 2
  %415 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %414, i32 0, i32 3
  store i64 %412, i64* %415, align 8
  %416 = load %struct.TYPE_39__*, %struct.TYPE_39__** %8, align 8
  %417 = load i32, i32* %9, align 4
  %418 = load i8*, i8** %10, align 8
  %419 = load i64, i64* %11, align 8
  %420 = load i64*, i64** %13, align 8
  %421 = call i32 @ssl3_write_pending(%struct.TYPE_39__* %416, i32 %417, i8* %418, i64 %419, i64* %420)
  store i32 %421, i32* %7, align 4
  br label %422

422:                                              ; preds = %392, %388, %325, %303, %264, %226, %108, %73, %67, %58, %36
  %423 = load i32, i32* %7, align 4
  ret i32 %423
}

declare dso_local i32 @ossl_assert(i32) #1

declare dso_local i64 @SSL3_BUFFER_get_left(i32*) #1

declare dso_local i32 @SSLfatal(%struct.TYPE_39__*, i32, i32, i32) #1

declare dso_local i64 @ssl_get_max_send_fragment(%struct.TYPE_39__*) #1

declare dso_local i32* @EVP_MD_CTX_md(i32) #1

declare dso_local i32 @EVP_MD_CTX_size(i32) #1

declare dso_local i8* @SSL3_BUFFER_get_buf(i32*) #1

declare dso_local i32 @SSL3_RECORD_set_type(%struct.TYPE_38__*, i32) #1

declare dso_local i32 @EVP_CIPHER_CTX_mode(i32*) #1

declare dso_local i32 @EVP_CIPHER_CTX_iv_length(i32*) #1

declare dso_local i32 @SSL3_RECORD_set_data(%struct.TYPE_38__*, i8*) #1

declare dso_local i32 @SSL3_RECORD_set_length(%struct.TYPE_38__*, i64) #1

declare dso_local i32 @SSL3_RECORD_set_input(%struct.TYPE_38__*, i8*) #1

declare dso_local i32 @ssl3_do_compress(%struct.TYPE_39__*, %struct.TYPE_38__*) #1

declare dso_local i32 @memcpy(i8*, i32*, i32) #1

declare dso_local i8* @SSL3_RECORD_get_data(%struct.TYPE_38__*) #1

declare dso_local i32* @SSL3_RECORD_get_input(%struct.TYPE_38__*) #1

declare dso_local i64 @SSL3_RECORD_get_length(%struct.TYPE_38__*) #1

declare dso_local i32 @SSL3_RECORD_reset_input(%struct.TYPE_38__*) #1

declare dso_local i64 @SSL_WRITE_ETM(%struct.TYPE_39__*) #1

declare dso_local i32 @SSL3_RECORD_add_length(%struct.TYPE_38__*, i32) #1

declare dso_local i32 @ossl_statem_in_error(%struct.TYPE_39__*) #1

declare dso_local i32 @s2n(i64, i8*) #1

declare dso_local i32 @ssl3_record_sequence_update(i32*) #1

declare dso_local i32 @SSL3_BUFFER_set_left(i32*, i64) #1

declare dso_local i32 @SSL3_BUFFER_set_offset(i32*, i32) #1

declare dso_local i32 @ssl3_write_pending(%struct.TYPE_39__*, i32, i8*, i64, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
