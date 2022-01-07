; ModuleID = '/home/carl/AnghaBench/openssl/ssl/statem/extr_statem_clnt.c_ossl_statem_client_read_transition.c'
source_filename = "/home/carl/AnghaBench/openssl/ssl/statem/extr_statem_clnt.c_ossl_statem_client_read_transition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i32, i32, i64, %struct.TYPE_22__, %struct.TYPE_21__, %struct.TYPE_18__*, i32, %struct.TYPE_24__ }
%struct.TYPE_22__ = type { i32, i32, i32* }
%struct.TYPE_21__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i32, i32 }
%struct.TYPE_18__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32* }
%struct.TYPE_24__ = type { i32 }

@SSL3_MT_SERVER_HELLO = common dso_local global i32 0, align 4
@DTLS1_MT_HELLO_VERIFY_REQUEST = common dso_local global i32 0, align 4
@DTLS_ST_CR_HELLO_VERIFY_REQUEST = common dso_local global i8* null, align 8
@SSL3_MT_NEWSESSION_TICKET = common dso_local global i32 0, align 4
@SSL3_MT_CHANGE_CIPHER_SPEC = common dso_local global i32 0, align 4
@TLS1_VERSION = common dso_local global i32 0, align 4
@SSL_aNULL = common dso_local global i32 0, align 4
@SSL_aSRP = common dso_local global i32 0, align 4
@SSL_aPSK = common dso_local global i32 0, align 4
@SSL3_MT_CERTIFICATE = common dso_local global i32 0, align 4
@SSL_PSK = common dso_local global i32 0, align 4
@SSL3_MT_SERVER_KEY_EXCHANGE = common dso_local global i32 0, align 4
@SSL3_MT_CERTIFICATE_REQUEST = common dso_local global i32 0, align 4
@SSL3_MT_SERVER_DONE = common dso_local global i32 0, align 4
@TLS_ST_CR_SRVR_DONE = common dso_local global i8* null, align 8
@SSL3_MT_CERTIFICATE_STATUS = common dso_local global i32 0, align 4
@SSL3_MT_FINISHED = common dso_local global i32 0, align 4
@TLS_ST_CR_FINISHED = common dso_local global i32 0, align 4
@SSL3_MT_HELLO_REQUEST = common dso_local global i32 0, align 4
@TLS_ST_CR_HELLO_REQ = common dso_local global i32 0, align 4
@SSL_READING = common dso_local global i32 0, align 4
@SSL3_AD_UNEXPECTED_MESSAGE = common dso_local global i32 0, align 4
@SSL_F_OSSL_STATEM_CLIENT_READ_TRANSITION = common dso_local global i32 0, align 4
@SSL_R_UNEXPECTED_MESSAGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ossl_statem_client_read_transition(%struct.TYPE_23__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_23__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_24__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %9, i32 0, i32 7
  store %struct.TYPE_24__* %10, %struct.TYPE_24__** %6, align 8
  %11 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %12 = call i64 @SSL_IS_TLS13(%struct.TYPE_23__* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %2
  %15 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @ossl_statem_client13_read_transition(%struct.TYPE_23__* %15, i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %14
  br label %320

20:                                               ; preds = %14
  store i32 1, i32* %3, align 4
  br label %346

21:                                               ; preds = %2
  %22 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  switch i32 %24, label %25 [
    i32 131, label %26
    i32 129, label %48
    i32 132, label %56
    i32 138, label %204
    i32 136, label %218
    i32 134, label %247
    i32 137, label %260
    i32 130, label %270
    i32 133, label %293
    i32 135, label %301
    i32 128, label %310
  ]

25:                                               ; preds = %21
  br label %319

26:                                               ; preds = %21
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @SSL3_MT_SERVER_HELLO, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %26
  %31 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %31, i32 0, i32 0
  store i32 132, i32* %32, align 4
  store i32 1, i32* %3, align 4
  br label %346

33:                                               ; preds = %26
  %34 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %35 = call i64 @SSL_IS_DTLS(%struct.TYPE_23__* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %47

37:                                               ; preds = %33
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @DTLS1_MT_HELLO_VERIFY_REQUEST, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %46

41:                                               ; preds = %37
  %42 = load i8*, i8** @DTLS_ST_CR_HELLO_VERIFY_REQUEST, align 8
  %43 = ptrtoint i8* %42 to i32
  %44 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 4
  store i32 1, i32* %3, align 4
  br label %346

46:                                               ; preds = %37
  br label %47

47:                                               ; preds = %46, %33
  br label %319

48:                                               ; preds = %21
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* @SSL3_MT_SERVER_HELLO, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %48
  %53 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %53, i32 0, i32 0
  store i32 132, i32* %54, align 4
  store i32 1, i32* %3, align 4
  br label %346

55:                                               ; preds = %48
  br label %319

56:                                               ; preds = %21
  %57 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %84

61:                                               ; preds = %56
  %62 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %62, i32 0, i32 3
  %64 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %75

67:                                               ; preds = %61
  %68 = load i32, i32* %5, align 4
  %69 = load i32, i32* @SSL3_MT_NEWSESSION_TICKET, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %74

71:                                               ; preds = %67
  %72 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %72, i32 0, i32 0
  store i32 133, i32* %73, align 4
  store i32 1, i32* %3, align 4
  br label %346

74:                                               ; preds = %67
  br label %83

75:                                               ; preds = %61
  %76 = load i32, i32* %5, align 4
  %77 = load i32, i32* @SSL3_MT_CHANGE_CIPHER_SPEC, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %79, label %82

79:                                               ; preds = %75
  %80 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %80, i32 0, i32 0
  store i32 135, i32* %81, align 4
  store i32 1, i32* %3, align 4
  br label %346

82:                                               ; preds = %75
  br label %83

83:                                               ; preds = %82, %74
  br label %203

84:                                               ; preds = %56
  %85 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %86 = call i64 @SSL_IS_DTLS(%struct.TYPE_23__* %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %97

88:                                               ; preds = %84
  %89 = load i32, i32* %5, align 4
  %90 = load i32, i32* @DTLS1_MT_HELLO_VERIFY_REQUEST, align 4
  %91 = icmp eq i32 %89, %90
  br i1 %91, label %92, label %97

92:                                               ; preds = %88
  %93 = load i8*, i8** @DTLS_ST_CR_HELLO_VERIFY_REQUEST, align 8
  %94 = ptrtoint i8* %93 to i32
  %95 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %95, i32 0, i32 0
  store i32 %94, i32* %96, align 4
  store i32 1, i32* %3, align 4
  br label %346

97:                                               ; preds = %88, %84
  %98 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %98, i32 0, i32 6
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* @TLS1_VERSION, align 4
  %102 = icmp sge i32 %100, %101
  br i1 %102, label %103, label %126

103:                                              ; preds = %97
  %104 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %104, i32 0, i32 3
  %106 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %105, i32 0, i32 2
  %107 = load i32*, i32** %106, align 8
  %108 = icmp ne i32* %107, null
  br i1 %108, label %109, label %126

109:                                              ; preds = %103
  %110 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %110, i32 0, i32 5
  %112 = load %struct.TYPE_18__*, %struct.TYPE_18__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %113, i32 0, i32 0
  %115 = load i32*, i32** %114, align 8
  %116 = icmp ne i32* %115, null
  br i1 %116, label %117, label %126

117:                                              ; preds = %109
  %118 = load i32, i32* %5, align 4
  %119 = load i32, i32* @SSL3_MT_CHANGE_CIPHER_SPEC, align 4
  %120 = icmp eq i32 %118, %119
  br i1 %120, label %121, label %126

121:                                              ; preds = %117
  %122 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %123 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %122, i32 0, i32 0
  store i32 1, i32* %123, align 8
  %124 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %125 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %124, i32 0, i32 0
  store i32 135, i32* %125, align 4
  store i32 1, i32* %3, align 4
  br label %346

126:                                              ; preds = %117, %109, %103, %97
  %127 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %128 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %127, i32 0, i32 4
  %129 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %129, i32 0, i32 0
  %131 = load %struct.TYPE_19__*, %struct.TYPE_19__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* @SSL_aNULL, align 4
  %135 = load i32, i32* @SSL_aSRP, align 4
  %136 = or i32 %134, %135
  %137 = load i32, i32* @SSL_aPSK, align 4
  %138 = or i32 %136, %137
  %139 = and i32 %133, %138
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %149, label %141

141:                                              ; preds = %126
  %142 = load i32, i32* %5, align 4
  %143 = load i32, i32* @SSL3_MT_CERTIFICATE, align 4
  %144 = icmp eq i32 %142, %143
  br i1 %144, label %145, label %148

145:                                              ; preds = %141
  %146 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %147 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %146, i32 0, i32 0
  store i32 138, i32* %147, align 4
  store i32 1, i32* %3, align 4
  br label %346

148:                                              ; preds = %141
  br label %200

149:                                              ; preds = %126
  %150 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %151 = call i32 @key_exchange_expected(%struct.TYPE_23__* %150)
  store i32 %151, i32* %7, align 4
  %152 = load i32, i32* %7, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %169, label %154

154:                                              ; preds = %149
  %155 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %156 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %155, i32 0, i32 4
  %157 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %157, i32 0, i32 0
  %159 = load %struct.TYPE_19__*, %struct.TYPE_19__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = load i32, i32* @SSL_PSK, align 4
  %163 = and i32 %161, %162
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %177

165:                                              ; preds = %154
  %166 = load i32, i32* %5, align 4
  %167 = load i32, i32* @SSL3_MT_SERVER_KEY_EXCHANGE, align 4
  %168 = icmp eq i32 %166, %167
  br i1 %168, label %169, label %177

169:                                              ; preds = %165, %149
  %170 = load i32, i32* %5, align 4
  %171 = load i32, i32* @SSL3_MT_SERVER_KEY_EXCHANGE, align 4
  %172 = icmp eq i32 %170, %171
  br i1 %172, label %173, label %176

173:                                              ; preds = %169
  %174 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %175 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %174, i32 0, i32 0
  store i32 134, i32* %175, align 4
  store i32 1, i32* %3, align 4
  br label %346

176:                                              ; preds = %169
  br label %199

177:                                              ; preds = %165, %154
  %178 = load i32, i32* %5, align 4
  %179 = load i32, i32* @SSL3_MT_CERTIFICATE_REQUEST, align 4
  %180 = icmp eq i32 %178, %179
  br i1 %180, label %181, label %188

181:                                              ; preds = %177
  %182 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %183 = call i32 @cert_req_allowed(%struct.TYPE_23__* %182)
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %188

185:                                              ; preds = %181
  %186 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %187 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %186, i32 0, i32 0
  store i32 137, i32* %187, align 4
  store i32 1, i32* %3, align 4
  br label %346

188:                                              ; preds = %181, %177
  %189 = load i32, i32* %5, align 4
  %190 = load i32, i32* @SSL3_MT_SERVER_DONE, align 4
  %191 = icmp eq i32 %189, %190
  br i1 %191, label %192, label %197

192:                                              ; preds = %188
  %193 = load i8*, i8** @TLS_ST_CR_SRVR_DONE, align 8
  %194 = ptrtoint i8* %193 to i32
  %195 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %196 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %195, i32 0, i32 0
  store i32 %194, i32* %196, align 4
  store i32 1, i32* %3, align 4
  br label %346

197:                                              ; preds = %188
  br label %198

198:                                              ; preds = %197
  br label %199

199:                                              ; preds = %198, %176
  br label %200

200:                                              ; preds = %199, %148
  br label %201

201:                                              ; preds = %200
  br label %202

202:                                              ; preds = %201
  br label %203

203:                                              ; preds = %202, %83
  br label %319

204:                                              ; preds = %21
  %205 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %206 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %205, i32 0, i32 3
  %207 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 4
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %217

210:                                              ; preds = %204
  %211 = load i32, i32* %5, align 4
  %212 = load i32, i32* @SSL3_MT_CERTIFICATE_STATUS, align 4
  %213 = icmp eq i32 %211, %212
  br i1 %213, label %214, label %217

214:                                              ; preds = %210
  %215 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %216 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %215, i32 0, i32 0
  store i32 136, i32* %216, align 4
  store i32 1, i32* %3, align 4
  br label %346

217:                                              ; preds = %210, %204
  br label %218

218:                                              ; preds = %21, %217
  %219 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %220 = call i32 @key_exchange_expected(%struct.TYPE_23__* %219)
  store i32 %220, i32* %7, align 4
  %221 = load i32, i32* %7, align 4
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %238, label %223

223:                                              ; preds = %218
  %224 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %225 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %224, i32 0, i32 4
  %226 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %225, i32 0, i32 0
  %227 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %226, i32 0, i32 0
  %228 = load %struct.TYPE_19__*, %struct.TYPE_19__** %227, align 8
  %229 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %228, i32 0, i32 1
  %230 = load i32, i32* %229, align 4
  %231 = load i32, i32* @SSL_PSK, align 4
  %232 = and i32 %230, %231
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %234, label %246

234:                                              ; preds = %223
  %235 = load i32, i32* %5, align 4
  %236 = load i32, i32* @SSL3_MT_SERVER_KEY_EXCHANGE, align 4
  %237 = icmp eq i32 %235, %236
  br i1 %237, label %238, label %246

238:                                              ; preds = %234, %218
  %239 = load i32, i32* %5, align 4
  %240 = load i32, i32* @SSL3_MT_SERVER_KEY_EXCHANGE, align 4
  %241 = icmp eq i32 %239, %240
  br i1 %241, label %242, label %245

242:                                              ; preds = %238
  %243 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %244 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %243, i32 0, i32 0
  store i32 134, i32* %244, align 4
  store i32 1, i32* %3, align 4
  br label %346

245:                                              ; preds = %238
  br label %320

246:                                              ; preds = %234, %223
  br label %247

247:                                              ; preds = %21, %246
  %248 = load i32, i32* %5, align 4
  %249 = load i32, i32* @SSL3_MT_CERTIFICATE_REQUEST, align 4
  %250 = icmp eq i32 %248, %249
  br i1 %250, label %251, label %259

251:                                              ; preds = %247
  %252 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %253 = call i32 @cert_req_allowed(%struct.TYPE_23__* %252)
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %255, label %258

255:                                              ; preds = %251
  %256 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %257 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %256, i32 0, i32 0
  store i32 137, i32* %257, align 4
  store i32 1, i32* %3, align 4
  br label %346

258:                                              ; preds = %251
  br label %320

259:                                              ; preds = %247
  br label %260

260:                                              ; preds = %21, %259
  %261 = load i32, i32* %5, align 4
  %262 = load i32, i32* @SSL3_MT_SERVER_DONE, align 4
  %263 = icmp eq i32 %261, %262
  br i1 %263, label %264, label %269

264:                                              ; preds = %260
  %265 = load i8*, i8** @TLS_ST_CR_SRVR_DONE, align 8
  %266 = ptrtoint i8* %265 to i32
  %267 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %268 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %267, i32 0, i32 0
  store i32 %266, i32* %268, align 4
  store i32 1, i32* %3, align 4
  br label %346

269:                                              ; preds = %260
  br label %319

270:                                              ; preds = %21
  %271 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %272 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %271, i32 0, i32 3
  %273 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %272, i32 0, i32 0
  %274 = load i32, i32* %273, align 8
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %276, label %284

276:                                              ; preds = %270
  %277 = load i32, i32* %5, align 4
  %278 = load i32, i32* @SSL3_MT_NEWSESSION_TICKET, align 4
  %279 = icmp eq i32 %277, %278
  br i1 %279, label %280, label %283

280:                                              ; preds = %276
  %281 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %282 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %281, i32 0, i32 0
  store i32 133, i32* %282, align 4
  store i32 1, i32* %3, align 4
  br label %346

283:                                              ; preds = %276
  br label %292

284:                                              ; preds = %270
  %285 = load i32, i32* %5, align 4
  %286 = load i32, i32* @SSL3_MT_CHANGE_CIPHER_SPEC, align 4
  %287 = icmp eq i32 %285, %286
  br i1 %287, label %288, label %291

288:                                              ; preds = %284
  %289 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %290 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %289, i32 0, i32 0
  store i32 135, i32* %290, align 4
  store i32 1, i32* %3, align 4
  br label %346

291:                                              ; preds = %284
  br label %292

292:                                              ; preds = %291, %283
  br label %319

293:                                              ; preds = %21
  %294 = load i32, i32* %5, align 4
  %295 = load i32, i32* @SSL3_MT_CHANGE_CIPHER_SPEC, align 4
  %296 = icmp eq i32 %294, %295
  br i1 %296, label %297, label %300

297:                                              ; preds = %293
  %298 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %299 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %298, i32 0, i32 0
  store i32 135, i32* %299, align 4
  store i32 1, i32* %3, align 4
  br label %346

300:                                              ; preds = %293
  br label %319

301:                                              ; preds = %21
  %302 = load i32, i32* %5, align 4
  %303 = load i32, i32* @SSL3_MT_FINISHED, align 4
  %304 = icmp eq i32 %302, %303
  br i1 %304, label %305, label %309

305:                                              ; preds = %301
  %306 = load i32, i32* @TLS_ST_CR_FINISHED, align 4
  %307 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %308 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %307, i32 0, i32 0
  store i32 %306, i32* %308, align 4
  store i32 1, i32* %3, align 4
  br label %346

309:                                              ; preds = %301
  br label %319

310:                                              ; preds = %21
  %311 = load i32, i32* %5, align 4
  %312 = load i32, i32* @SSL3_MT_HELLO_REQUEST, align 4
  %313 = icmp eq i32 %311, %312
  br i1 %313, label %314, label %318

314:                                              ; preds = %310
  %315 = load i32, i32* @TLS_ST_CR_HELLO_REQ, align 4
  %316 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %317 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %316, i32 0, i32 0
  store i32 %315, i32* %317, align 4
  store i32 1, i32* %3, align 4
  br label %346

318:                                              ; preds = %310
  br label %319

319:                                              ; preds = %318, %309, %300, %292, %269, %203, %55, %47, %25
  br label %320

320:                                              ; preds = %319, %258, %245, %19
  %321 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %322 = call i64 @SSL_IS_DTLS(%struct.TYPE_23__* %321)
  %323 = icmp ne i64 %322, 0
  br i1 %323, label %324, label %340

324:                                              ; preds = %320
  %325 = load i32, i32* %5, align 4
  %326 = load i32, i32* @SSL3_MT_CHANGE_CIPHER_SPEC, align 4
  %327 = icmp eq i32 %325, %326
  br i1 %327, label %328, label %340

328:                                              ; preds = %324
  %329 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %330 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %329, i32 0, i32 2
  store i64 0, i64* %330, align 8
  %331 = load i32, i32* @SSL_READING, align 4
  %332 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %333 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %332, i32 0, i32 1
  store i32 %331, i32* %333, align 4
  %334 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %335 = call i32* @SSL_get_rbio(%struct.TYPE_23__* %334)
  store i32* %335, i32** %8, align 8
  %336 = load i32*, i32** %8, align 8
  %337 = call i32 @BIO_clear_retry_flags(i32* %336)
  %338 = load i32*, i32** %8, align 8
  %339 = call i32 @BIO_set_retry_read(i32* %338)
  store i32 0, i32* %3, align 4
  br label %346

340:                                              ; preds = %324, %320
  %341 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %342 = load i32, i32* @SSL3_AD_UNEXPECTED_MESSAGE, align 4
  %343 = load i32, i32* @SSL_F_OSSL_STATEM_CLIENT_READ_TRANSITION, align 4
  %344 = load i32, i32* @SSL_R_UNEXPECTED_MESSAGE, align 4
  %345 = call i32 @SSLfatal(%struct.TYPE_23__* %341, i32 %342, i32 %343, i32 %344)
  store i32 0, i32* %3, align 4
  br label %346

346:                                              ; preds = %340, %328, %314, %305, %297, %288, %280, %264, %255, %242, %214, %192, %185, %173, %145, %121, %92, %79, %71, %52, %41, %30, %20
  %347 = load i32, i32* %3, align 4
  ret i32 %347
}

declare dso_local i64 @SSL_IS_TLS13(%struct.TYPE_23__*) #1

declare dso_local i32 @ossl_statem_client13_read_transition(%struct.TYPE_23__*, i32) #1

declare dso_local i64 @SSL_IS_DTLS(%struct.TYPE_23__*) #1

declare dso_local i32 @key_exchange_expected(%struct.TYPE_23__*) #1

declare dso_local i32 @cert_req_allowed(%struct.TYPE_23__*) #1

declare dso_local i32* @SSL_get_rbio(%struct.TYPE_23__*) #1

declare dso_local i32 @BIO_clear_retry_flags(i32*) #1

declare dso_local i32 @BIO_set_retry_read(i32*) #1

declare dso_local i32 @SSLfatal(%struct.TYPE_23__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
