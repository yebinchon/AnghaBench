; ModuleID = '/home/carl/AnghaBench/openssl/ssl/statem/extr_statem_clnt.c_ossl_statem_client_post_work.c'
source_filename = "/home/carl/AnghaBench/openssl/ssl/statem/extr_statem_clnt.c_ossl_statem_client_post_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_28__ = type { i32, i32, %struct.TYPE_27__*, i32, i32, %struct.TYPE_25__, %struct.TYPE_22__*, i32, i32, i32, i32*, i64, %struct.TYPE_29__ }
%struct.TYPE_27__ = type { %struct.TYPE_26__* }
%struct.TYPE_26__ = type { {}*, i32 (%struct.TYPE_28__*)* }
%struct.TYPE_25__ = type { %struct.TYPE_24__ }
%struct.TYPE_24__ = type { %struct.TYPE_23__*, i32 }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_22__ = type { i32, i32 }
%struct.TYPE_29__ = type { i32 }

@SSL_EARLY_DATA_CONNECTING = common dso_local global i32 0, align 4
@SSL_OP_ENABLE_MIDDLEBOX_COMPAT = common dso_local global i32 0, align 4
@SSL3_CC_EARLY = common dso_local global i32 0, align 4
@SSL3_CHANGE_CIPHER_CLIENT_WRITE = common dso_local global i32 0, align 4
@WORK_ERROR = common dso_local global i32 0, align 4
@WORK_MORE_A = common dso_local global i32 0, align 4
@SSL_HRR_PENDING = common dso_local global i32 0, align 4
@BIO_CTRL_DGRAM_SCTP_NEXT_AUTH_KEY = common dso_local global i32 0, align 4
@SSL3_CC_WRITE = common dso_local global i32 0, align 4
@WORK_MORE_B = common dso_local global i32 0, align 4
@SSL_PHA_REQUESTED = common dso_local global i32 0, align 4
@SSL3_CC_APPLICATION = common dso_local global i32 0, align 4
@WORK_FINISHED_CONTINUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ossl_statem_client_post_work(%struct.TYPE_28__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_28__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_29__*, align 8
  store %struct.TYPE_28__* %0, %struct.TYPE_28__** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %7, i32 0, i32 12
  store %struct.TYPE_29__* %8, %struct.TYPE_29__** %6, align 8
  %9 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %9, i32 0, i32 11
  store i64 0, i64* %10, align 8
  %11 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %14 [
    i32 132, label %15
    i32 131, label %59
    i32 129, label %66
    i32 133, label %73
    i32 130, label %185
    i32 128, label %245
  ]

14:                                               ; preds = %2
  br label %258

15:                                               ; preds = %2
  %16 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %16, i32 0, i32 8
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @SSL_EARLY_DATA_CONNECTING, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %44

21:                                               ; preds = %15
  %22 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %22, i32 0, i32 7
  %24 = load i32, i32* %23, align 8
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %26, label %44

26:                                               ; preds = %21
  %27 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @SSL_OP_ENABLE_MIDDLEBOX_COMPAT, align 4
  %31 = and i32 %29, %30
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %43

33:                                               ; preds = %26
  %34 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %35 = load i32, i32* @SSL3_CC_EARLY, align 4
  %36 = load i32, i32* @SSL3_CHANGE_CIPHER_CLIENT_WRITE, align 4
  %37 = or i32 %35, %36
  %38 = call i32 @tls13_change_cipher_state(%struct.TYPE_28__* %34, i32 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %33
  %41 = load i32, i32* @WORK_ERROR, align 4
  store i32 %41, i32* %3, align 4
  br label %260

42:                                               ; preds = %33
  br label %43

43:                                               ; preds = %42, %26
  br label %51

44:                                               ; preds = %21, %15
  %45 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %46 = call i32 @statem_flush(%struct.TYPE_28__* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %44
  %49 = load i32, i32* @WORK_MORE_A, align 4
  store i32 %49, i32* %3, align 4
  br label %260

50:                                               ; preds = %44
  br label %51

51:                                               ; preds = %50, %43
  %52 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %53 = call i32 @SSL_IS_DTLS(%struct.TYPE_28__* %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %51
  %56 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %56, i32 0, i32 1
  store i32 1, i32* %57, align 4
  br label %58

58:                                               ; preds = %55, %51
  br label %258

59:                                               ; preds = %2
  %60 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %60, i32 0, i32 10
  %62 = load i32*, i32** %61, align 8
  %63 = call i32 @EVP_CIPHER_CTX_free(i32* %62)
  %64 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %64, i32 0, i32 10
  store i32* null, i32** %65, align 8
  br label %258

66:                                               ; preds = %2
  %67 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %68 = call i32 @tls_client_key_exchange_post_work(%struct.TYPE_28__* %67)
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %66
  %71 = load i32, i32* @WORK_ERROR, align 4
  store i32 %71, i32* %3, align 4
  br label %260

72:                                               ; preds = %66
  br label %258

73:                                               ; preds = %2
  %74 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %75 = call i32 @SSL_IS_TLS13(%struct.TYPE_28__* %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %83, label %77

77:                                               ; preds = %73
  %78 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %78, i32 0, i32 9
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @SSL_HRR_PENDING, align 4
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %77, %73
  br label %258

84:                                               ; preds = %77
  %85 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %85, i32 0, i32 8
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @SSL_EARLY_DATA_CONNECTING, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %90, label %105

90:                                               ; preds = %84
  %91 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %91, i32 0, i32 7
  %93 = load i32, i32* %92, align 8
  %94 = icmp sgt i32 %93, 0
  br i1 %94, label %95, label %105

95:                                               ; preds = %90
  %96 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %97 = load i32, i32* @SSL3_CC_EARLY, align 4
  %98 = load i32, i32* @SSL3_CHANGE_CIPHER_CLIENT_WRITE, align 4
  %99 = or i32 %97, %98
  %100 = call i32 @tls13_change_cipher_state(%struct.TYPE_28__* %96, i32 %99)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %104, label %102

102:                                              ; preds = %95
  %103 = load i32, i32* @WORK_ERROR, align 4
  store i32 %103, i32* %3, align 4
  br label %260

104:                                              ; preds = %95
  br label %258

105:                                              ; preds = %90, %84
  %106 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %106, i32 0, i32 5
  %108 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %111, i32 0, i32 6
  %113 = load %struct.TYPE_22__*, %struct.TYPE_22__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %113, i32 0, i32 1
  store i32 %110, i32* %114, align 4
  %115 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %115, i32 0, i32 5
  %117 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %117, i32 0, i32 0
  %119 = load %struct.TYPE_23__*, %struct.TYPE_23__** %118, align 8
  %120 = icmp eq %struct.TYPE_23__* %119, null
  br i1 %120, label %121, label %126

121:                                              ; preds = %105
  %122 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %123 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %122, i32 0, i32 6
  %124 = load %struct.TYPE_22__*, %struct.TYPE_22__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %124, i32 0, i32 0
  store i32 0, i32* %125, align 4
  br label %138

126:                                              ; preds = %105
  %127 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %128 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %127, i32 0, i32 5
  %129 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %129, i32 0, i32 0
  %131 = load %struct.TYPE_23__*, %struct.TYPE_23__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %135 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %134, i32 0, i32 6
  %136 = load %struct.TYPE_22__*, %struct.TYPE_22__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %136, i32 0, i32 0
  store i32 %133, i32* %137, align 4
  br label %138

138:                                              ; preds = %126, %121
  %139 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %140 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %139, i32 0, i32 2
  %141 = load %struct.TYPE_27__*, %struct.TYPE_27__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %141, i32 0, i32 0
  %143 = load %struct.TYPE_26__*, %struct.TYPE_26__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %143, i32 0, i32 1
  %145 = load i32 (%struct.TYPE_28__*)*, i32 (%struct.TYPE_28__*)** %144, align 8
  %146 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %147 = call i32 %145(%struct.TYPE_28__* %146)
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %151, label %149

149:                                              ; preds = %138
  %150 = load i32, i32* @WORK_ERROR, align 4
  store i32 %150, i32* %3, align 4
  br label %260

151:                                              ; preds = %138
  %152 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %153 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %152, i32 0, i32 2
  %154 = load %struct.TYPE_27__*, %struct.TYPE_27__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %154, i32 0, i32 0
  %156 = load %struct.TYPE_26__*, %struct.TYPE_26__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %156, i32 0, i32 0
  %158 = bitcast {}** %157 to i32 (%struct.TYPE_28__*, i32)**
  %159 = load i32 (%struct.TYPE_28__*, i32)*, i32 (%struct.TYPE_28__*, i32)** %158, align 8
  %160 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %161 = load i32, i32* @SSL3_CHANGE_CIPHER_CLIENT_WRITE, align 4
  %162 = call i32 %159(%struct.TYPE_28__* %160, i32 %161)
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %166, label %164

164:                                              ; preds = %151
  %165 = load i32, i32* @WORK_ERROR, align 4
  store i32 %165, i32* %3, align 4
  br label %260

166:                                              ; preds = %151
  %167 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %168 = call i32 @SSL_IS_DTLS(%struct.TYPE_28__* %167)
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %184

170:                                              ; preds = %166
  %171 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %172 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %171, i32 0, i32 4
  %173 = load i32, i32* %172, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %180

175:                                              ; preds = %170
  %176 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %177 = call i32 @SSL_get_wbio(%struct.TYPE_28__* %176)
  %178 = load i32, i32* @BIO_CTRL_DGRAM_SCTP_NEXT_AUTH_KEY, align 4
  %179 = call i32 @BIO_ctrl(i32 %177, i32 %178, i32 0, i32* null)
  br label %180

180:                                              ; preds = %175, %170
  %181 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %182 = load i32, i32* @SSL3_CC_WRITE, align 4
  %183 = call i32 @dtls1_reset_seq_numbers(%struct.TYPE_28__* %181, i32 %182)
  br label %184

184:                                              ; preds = %180, %166
  br label %258

185:                                              ; preds = %2
  %186 = load i32, i32* %5, align 4
  %187 = load i32, i32* @WORK_MORE_A, align 4
  %188 = icmp eq i32 %186, %187
  br i1 %188, label %189, label %203

189:                                              ; preds = %185
  %190 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %191 = call i32 @SSL_IS_DTLS(%struct.TYPE_28__* %190)
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %203

193:                                              ; preds = %189
  %194 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %195 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %194, i32 0, i32 4
  %196 = load i32, i32* %195, align 4
  %197 = icmp eq i32 %196, 0
  br i1 %197, label %198, label %203

198:                                              ; preds = %193
  %199 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %200 = call i32 @SSL_get_wbio(%struct.TYPE_28__* %199)
  %201 = load i32, i32* @BIO_CTRL_DGRAM_SCTP_NEXT_AUTH_KEY, align 4
  %202 = call i32 @BIO_ctrl(i32 %200, i32 %201, i32 0, i32* null)
  br label %203

203:                                              ; preds = %198, %193, %189, %185
  %204 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %205 = call i32 @statem_flush(%struct.TYPE_28__* %204)
  %206 = icmp ne i32 %205, 1
  br i1 %206, label %207, label %209

207:                                              ; preds = %203
  %208 = load i32, i32* @WORK_MORE_B, align 4
  store i32 %208, i32* %3, align 4
  br label %260

209:                                              ; preds = %203
  %210 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %211 = call i32 @SSL_IS_TLS13(%struct.TYPE_28__* %210)
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %244

213:                                              ; preds = %209
  %214 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %215 = call i32 @tls13_save_handshake_digest_for_pha(%struct.TYPE_28__* %214)
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %219, label %217

217:                                              ; preds = %213
  %218 = load i32, i32* @WORK_ERROR, align 4
  store i32 %218, i32* %3, align 4
  br label %260

219:                                              ; preds = %213
  %220 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %221 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %220, i32 0, i32 3
  %222 = load i32, i32* %221, align 8
  %223 = load i32, i32* @SSL_PHA_REQUESTED, align 4
  %224 = icmp ne i32 %222, %223
  br i1 %224, label %225, label %243

225:                                              ; preds = %219
  %226 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %227 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %226, i32 0, i32 2
  %228 = load %struct.TYPE_27__*, %struct.TYPE_27__** %227, align 8
  %229 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %228, i32 0, i32 0
  %230 = load %struct.TYPE_26__*, %struct.TYPE_26__** %229, align 8
  %231 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %230, i32 0, i32 0
  %232 = bitcast {}** %231 to i32 (%struct.TYPE_28__*, i32)**
  %233 = load i32 (%struct.TYPE_28__*, i32)*, i32 (%struct.TYPE_28__*, i32)** %232, align 8
  %234 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %235 = load i32, i32* @SSL3_CC_APPLICATION, align 4
  %236 = load i32, i32* @SSL3_CHANGE_CIPHER_CLIENT_WRITE, align 4
  %237 = or i32 %235, %236
  %238 = call i32 %233(%struct.TYPE_28__* %234, i32 %237)
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %242, label %240

240:                                              ; preds = %225
  %241 = load i32, i32* @WORK_ERROR, align 4
  store i32 %241, i32* %3, align 4
  br label %260

242:                                              ; preds = %225
  br label %243

243:                                              ; preds = %242, %219
  br label %244

244:                                              ; preds = %243, %209
  br label %258

245:                                              ; preds = %2
  %246 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %247 = call i32 @statem_flush(%struct.TYPE_28__* %246)
  %248 = icmp ne i32 %247, 1
  br i1 %248, label %249, label %251

249:                                              ; preds = %245
  %250 = load i32, i32* @WORK_MORE_A, align 4
  store i32 %250, i32* %3, align 4
  br label %260

251:                                              ; preds = %245
  %252 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %253 = call i32 @tls13_update_key(%struct.TYPE_28__* %252, i32 1)
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %257, label %255

255:                                              ; preds = %251
  %256 = load i32, i32* @WORK_ERROR, align 4
  store i32 %256, i32* %3, align 4
  br label %260

257:                                              ; preds = %251
  br label %258

258:                                              ; preds = %257, %244, %184, %104, %83, %72, %59, %58, %14
  %259 = load i32, i32* @WORK_FINISHED_CONTINUE, align 4
  store i32 %259, i32* %3, align 4
  br label %260

260:                                              ; preds = %258, %255, %249, %240, %217, %207, %164, %149, %102, %70, %48, %40
  %261 = load i32, i32* %3, align 4
  ret i32 %261
}

declare dso_local i32 @tls13_change_cipher_state(%struct.TYPE_28__*, i32) #1

declare dso_local i32 @statem_flush(%struct.TYPE_28__*) #1

declare dso_local i32 @SSL_IS_DTLS(%struct.TYPE_28__*) #1

declare dso_local i32 @EVP_CIPHER_CTX_free(i32*) #1

declare dso_local i32 @tls_client_key_exchange_post_work(%struct.TYPE_28__*) #1

declare dso_local i32 @SSL_IS_TLS13(%struct.TYPE_28__*) #1

declare dso_local i32 @BIO_ctrl(i32, i32, i32, i32*) #1

declare dso_local i32 @SSL_get_wbio(%struct.TYPE_28__*) #1

declare dso_local i32 @dtls1_reset_seq_numbers(%struct.TYPE_28__*, i32) #1

declare dso_local i32 @tls13_save_handshake_digest_for_pha(%struct.TYPE_28__*) #1

declare dso_local i32 @tls13_update_key(%struct.TYPE_28__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
