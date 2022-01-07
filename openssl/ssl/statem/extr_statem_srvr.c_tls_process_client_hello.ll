; ModuleID = '/home/carl/AnghaBench/openssl/ssl/statem/extr_statem_srvr.c_tls_process_client_hello.c'
source_filename = "/home/carl/AnghaBench/openssl/ssl/statem/extr_statem_srvr.c_tls_process_client_hello.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i32, i32, i64, %struct.TYPE_17__*, i32, %struct.TYPE_15__ }
%struct.TYPE_17__ = type { i32, i32, i64, i64, %struct.TYPE_17__*, i32, i32, i64, i32, i64, i64, i64, i64 }
%struct.TYPE_15__ = type { i32 }

@tls_process_client_hello.null_compression = internal constant i8 0, align 1
@SSL_AD_INTERNAL_ERROR = common dso_local global i32 0, align 4
@SSL_F_TLS_PROCESS_CLIENT_HELLO = common dso_local global i32 0, align 4
@ERR_R_INTERNAL_ERROR = common dso_local global i32 0, align 4
@SSL_OP_NO_RENEGOTIATION = common dso_local global i32 0, align 4
@SSL_OP_ALLOW_UNSAFE_LEGACY_RENEGOTIATION = common dso_local global i32 0, align 4
@SSL3_AL_WARNING = common dso_local global i32 0, align 4
@SSL_AD_NO_RENEGOTIATION = common dso_local global i32 0, align 4
@MSG_PROCESS_FINISHED_READING = common dso_local global i32 0, align 4
@SSL_HRR_NONE = common dso_local global i64 0, align 8
@SSL_AD_UNEXPECTED_MESSAGE = common dso_local global i32 0, align 4
@SSL_R_UNEXPECTED_MESSAGE = common dso_local global i32 0, align 4
@SSL2_MT_CLIENT_HELLO = common dso_local global i32 0, align 4
@SSL_AD_DECODE_ERROR = common dso_local global i32 0, align 4
@SSL_R_LENGTH_TOO_SHORT = common dso_local global i32 0, align 4
@SSL_R_RECORD_LENGTH_MISMATCH = common dso_local global i32 0, align 4
@SSL_MAX_SSL_SESSION_ID_LENGTH = common dso_local global i32 0, align 4
@SSL_AD_ILLEGAL_PARAMETER = common dso_local global i32 0, align 4
@SSL_R_LENGTH_MISMATCH = common dso_local global i32 0, align 4
@SSL3_RANDOM_SIZE = common dso_local global i32 0, align 4
@DTLS1_COOKIE_LENGTH = common dso_local global i32 0, align 4
@SSL_OP_COOKIE_EXCHANGE = common dso_local global i32 0, align 4
@MAX_COMPRESSIONS_SIZE = common dso_local global i32 0, align 4
@SSL_EXT_CLIENT_HELLO = common dso_local global i32 0, align 4
@MSG_PROCESS_CONTINUE_PROCESSING = common dso_local global i32 0, align 4
@MSG_PROCESS_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tls_process_client_hello(%struct.TYPE_16__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_17__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %10, align 8
  %16 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %69

20:                                               ; preds = %2
  %21 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %22 = call i32 @SSL_IS_FIRST_HANDSHAKE(%struct.TYPE_16__* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %69, label %24

24:                                               ; preds = %20
  %25 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %26 = call i32 @SSL_IS_TLS13(%struct.TYPE_16__* %25)
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i32
  %30 = call i32 @ossl_assert(i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %38, label %32

32:                                               ; preds = %24
  %33 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %34 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %35 = load i32, i32* @SSL_F_TLS_PROCESS_CLIENT_HELLO, align 4
  %36 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %37 = call i32 @SSLfatal(%struct.TYPE_16__* %33, i32 %34, i32 %35, i32 %36)
  br label %394

38:                                               ; preds = %24
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @SSL_OP_NO_RENEGOTIATION, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %58, label %45

45:                                               ; preds = %38
  %46 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %46, i32 0, i32 6
  %48 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %64, label %51

51:                                               ; preds = %45
  %52 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @SSL_OP_ALLOW_UNSAFE_LEGACY_RENEGOTIATION, align 4
  %56 = and i32 %54, %55
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %51, %38
  %59 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %60 = load i32, i32* @SSL3_AL_WARNING, align 4
  %61 = load i32, i32* @SSL_AD_NO_RENEGOTIATION, align 4
  %62 = call i32 @ssl3_send_alert(%struct.TYPE_16__* %59, i32 %60, i32 %61)
  %63 = load i32, i32* @MSG_PROCESS_FINISHED_READING, align 4
  store i32 %63, i32* %3, align 4
  br label %406

64:                                               ; preds = %51, %45
  %65 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %65, i32 0, i32 0
  store i32 1, i32* %66, align 8
  %67 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %67, i32 0, i32 2
  store i32 1, i32* %68, align 8
  br label %69

69:                                               ; preds = %64, %20, %2
  %70 = call %struct.TYPE_17__* @OPENSSL_zalloc(i32 88)
  store %struct.TYPE_17__* %70, %struct.TYPE_17__** %10, align 8
  %71 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %72 = icmp eq %struct.TYPE_17__* %71, null
  br i1 %72, label %73, label %79

73:                                               ; preds = %69
  %74 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %75 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %76 = load i32, i32* @SSL_F_TLS_PROCESS_CLIENT_HELLO, align 4
  %77 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %78 = call i32 @SSLfatal(%struct.TYPE_16__* %74, i32 %75, i32 %76, i32 %77)
  br label %394

79:                                               ; preds = %69
  %80 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %80, i32 0, i32 5
  %82 = call i64 @RECORD_LAYER_is_sslv2_record(i32* %81)
  %83 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %84 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %83, i32 0, i32 12
  store i64 %82, i64* %84, align 8
  %85 = call i32 @PACKET_null_init(i32* %9)
  %86 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %87 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %86, i32 0, i32 12
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %121

90:                                               ; preds = %79
  %91 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %92 = call i32 @SSL_IS_FIRST_HANDSHAKE(%struct.TYPE_16__* %91)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %100

94:                                               ; preds = %90
  %95 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %95, i32 0, i32 3
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @SSL_HRR_NONE, align 8
  %99 = icmp ne i64 %97, %98
  br i1 %99, label %100, label %106

100:                                              ; preds = %94, %90
  %101 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %102 = load i32, i32* @SSL_AD_UNEXPECTED_MESSAGE, align 4
  %103 = load i32, i32* @SSL_F_TLS_PROCESS_CLIENT_HELLO, align 4
  %104 = load i32, i32* @SSL_R_UNEXPECTED_MESSAGE, align 4
  %105 = call i32 @SSLfatal(%struct.TYPE_16__* %101, i32 %102, i32 %103, i32 %104)
  br label %394

106:                                              ; preds = %94
  %107 = load i32*, i32** %5, align 8
  %108 = call i32 @PACKET_get_1(i32* %107, i32* %11)
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %114

110:                                              ; preds = %106
  %111 = load i32, i32* %11, align 4
  %112 = load i32, i32* @SSL2_MT_CLIENT_HELLO, align 4
  %113 = icmp ne i32 %111, %112
  br i1 %113, label %114, label %120

114:                                              ; preds = %110, %106
  %115 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %116 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %117 = load i32, i32* @SSL_F_TLS_PROCESS_CLIENT_HELLO, align 4
  %118 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %119 = call i32 @SSLfatal(%struct.TYPE_16__* %115, i32 %116, i32 %117, i32 %118)
  br label %394

120:                                              ; preds = %110
  br label %121

121:                                              ; preds = %120, %79
  %122 = load i32*, i32** %5, align 8
  %123 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %124 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %123, i32 0, i32 0
  %125 = call i32 @PACKET_get_net_2(i32* %122, i32* %124)
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %133, label %127

127:                                              ; preds = %121
  %128 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %129 = load i32, i32* @SSL_AD_DECODE_ERROR, align 4
  %130 = load i32, i32* @SSL_F_TLS_PROCESS_CLIENT_HELLO, align 4
  %131 = load i32, i32* @SSL_R_LENGTH_TOO_SHORT, align 4
  %132 = call i32 @SSLfatal(%struct.TYPE_16__* %128, i32 %129, i32 %130, i32 %131)
  br label %394

133:                                              ; preds = %121
  %134 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %135 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %134, i32 0, i32 12
  %136 = load i64, i64* %135, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %239

138:                                              ; preds = %133
  %139 = load i32*, i32** %5, align 8
  %140 = call i32 @PACKET_get_net_2(i32* %139, i32* %12)
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %150

142:                                              ; preds = %138
  %143 = load i32*, i32** %5, align 8
  %144 = call i32 @PACKET_get_net_2(i32* %143, i32* %13)
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %150

146:                                              ; preds = %142
  %147 = load i32*, i32** %5, align 8
  %148 = call i32 @PACKET_get_net_2(i32* %147, i32* %14)
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %156, label %150

150:                                              ; preds = %146, %142, %138
  %151 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %152 = load i32, i32* @SSL_AD_DECODE_ERROR, align 4
  %153 = load i32, i32* @SSL_F_TLS_PROCESS_CLIENT_HELLO, align 4
  %154 = load i32, i32* @SSL_R_RECORD_LENGTH_MISMATCH, align 4
  %155 = call i32 @SSLfatal(%struct.TYPE_16__* %151, i32 %152, i32 %153, i32 %154)
  br label %394

156:                                              ; preds = %146
  %157 = load i32, i32* %13, align 4
  %158 = load i32, i32* @SSL_MAX_SSL_SESSION_ID_LENGTH, align 4
  %159 = icmp ugt i32 %157, %158
  br i1 %159, label %160, label %166

160:                                              ; preds = %156
  %161 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %162 = load i32, i32* @SSL_AD_ILLEGAL_PARAMETER, align 4
  %163 = load i32, i32* @SSL_F_TLS_PROCESS_CLIENT_HELLO, align 4
  %164 = load i32, i32* @SSL_R_LENGTH_MISMATCH, align 4
  %165 = call i32 @SSLfatal(%struct.TYPE_16__* %161, i32 %162, i32 %163, i32 %164)
  br label %394

166:                                              ; preds = %156
  %167 = load i32*, i32** %5, align 8
  %168 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %169 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %168, i32 0, i32 8
  %170 = load i32, i32* %12, align 4
  %171 = call i32 @PACKET_get_sub_packet(i32* %167, i32* %169, i32 %170)
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %190

173:                                              ; preds = %166
  %174 = load i32*, i32** %5, align 8
  %175 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %176 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %175, i32 0, i32 10
  %177 = load i64, i64* %176, align 8
  %178 = load i32, i32* %13, align 4
  %179 = call i32 @PACKET_copy_bytes(i32* %174, i64 %177, i32 %178)
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %190

181:                                              ; preds = %173
  %182 = load i32*, i32** %5, align 8
  %183 = load i32, i32* %14, align 4
  %184 = call i32 @PACKET_get_sub_packet(i32* %182, i32* %15, i32 %183)
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %190

186:                                              ; preds = %181
  %187 = load i32*, i32** %5, align 8
  %188 = call i64 @PACKET_remaining(i32* %187)
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %196

190:                                              ; preds = %186, %181, %173, %166
  %191 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %192 = load i32, i32* @SSL_AD_DECODE_ERROR, align 4
  %193 = load i32, i32* @SSL_F_TLS_PROCESS_CLIENT_HELLO, align 4
  %194 = load i32, i32* @SSL_R_RECORD_LENGTH_MISMATCH, align 4
  %195 = call i32 @SSLfatal(%struct.TYPE_16__* %191, i32 %192, i32 %193, i32 %194)
  br label %394

196:                                              ; preds = %186
  %197 = load i32, i32* %13, align 4
  %198 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %199 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %198, i32 0, i32 1
  store i32 %197, i32* %199, align 4
  %200 = load i32, i32* %14, align 4
  %201 = load i32, i32* @SSL3_RANDOM_SIZE, align 4
  %202 = icmp ugt i32 %200, %201
  br i1 %202, label %203, label %205

203:                                              ; preds = %196
  %204 = load i32, i32* @SSL3_RANDOM_SIZE, align 4
  br label %207

205:                                              ; preds = %196
  %206 = load i32, i32* %14, align 4
  br label %207

207:                                              ; preds = %205, %203
  %208 = phi i32 [ %204, %203 ], [ %206, %205 ]
  store i32 %208, i32* %14, align 4
  %209 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %210 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %209, i32 0, i32 11
  %211 = load i64, i64* %210, align 8
  %212 = load i32, i32* @SSL3_RANDOM_SIZE, align 4
  %213 = call i32 @memset(i64 %211, i32 0, i32 %212)
  %214 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %215 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %214, i32 0, i32 11
  %216 = load i64, i64* %215, align 8
  %217 = load i32, i32* @SSL3_RANDOM_SIZE, align 4
  %218 = zext i32 %217 to i64
  %219 = add nsw i64 %216, %218
  %220 = load i32, i32* %14, align 4
  %221 = zext i32 %220 to i64
  %222 = sub nsw i64 %219, %221
  %223 = load i32, i32* %14, align 4
  %224 = call i32 @PACKET_copy_bytes(i32* %15, i64 %222, i32 %223)
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %229

226:                                              ; preds = %207
  %227 = call i32 @PACKET_buf_init(i32* %7, i8* @tls_process_client_hello.null_compression, i32 1)
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %235, label %229

229:                                              ; preds = %226, %207
  %230 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %231 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %232 = load i32, i32* @SSL_F_TLS_PROCESS_CLIENT_HELLO, align 4
  %233 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %234 = call i32 @SSLfatal(%struct.TYPE_16__* %230, i32 %231, i32 %232, i32 %233)
  br label %394

235:                                              ; preds = %226
  %236 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %237 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %236, i32 0, i32 6
  %238 = call i32 @PACKET_null_init(i32* %237)
  br label %361

239:                                              ; preds = %133
  %240 = load i32*, i32** %5, align 8
  %241 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %242 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %241, i32 0, i32 11
  %243 = load i64, i64* %242, align 8
  %244 = load i32, i32* @SSL3_RANDOM_SIZE, align 4
  %245 = call i32 @PACKET_copy_bytes(i32* %240, i64 %243, i32 %244)
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %247, label %261

247:                                              ; preds = %239
  %248 = load i32*, i32** %5, align 8
  %249 = call i32 @PACKET_get_length_prefixed_1(i32* %248, i32* %6)
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %251, label %261

251:                                              ; preds = %247
  %252 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %253 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %252, i32 0, i32 10
  %254 = load i64, i64* %253, align 8
  %255 = load i32, i32* @SSL_MAX_SSL_SESSION_ID_LENGTH, align 4
  %256 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %257 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %256, i32 0, i32 1
  %258 = bitcast i32* %257 to i64*
  %259 = call i32 @PACKET_copy_all(i32* %6, i64 %254, i32 %255, i64* %258)
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %267, label %261

261:                                              ; preds = %251, %247, %239
  %262 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %263 = load i32, i32* @SSL_AD_DECODE_ERROR, align 4
  %264 = load i32, i32* @SSL_F_TLS_PROCESS_CLIENT_HELLO, align 4
  %265 = load i32, i32* @SSL_R_LENGTH_MISMATCH, align 4
  %266 = call i32 @SSLfatal(%struct.TYPE_16__* %262, i32 %263, i32 %264, i32 %265)
  br label %394

267:                                              ; preds = %251
  %268 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %269 = call i64 @SSL_IS_DTLS(%struct.TYPE_16__* %268)
  %270 = icmp ne i64 %269, 0
  br i1 %270, label %271, label %313

271:                                              ; preds = %267
  %272 = load i32*, i32** %5, align 8
  %273 = call i32 @PACKET_get_length_prefixed_1(i32* %272, i32* %9)
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %281, label %275

275:                                              ; preds = %271
  %276 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %277 = load i32, i32* @SSL_AD_DECODE_ERROR, align 4
  %278 = load i32, i32* @SSL_F_TLS_PROCESS_CLIENT_HELLO, align 4
  %279 = load i32, i32* @SSL_R_LENGTH_MISMATCH, align 4
  %280 = call i32 @SSLfatal(%struct.TYPE_16__* %276, i32 %277, i32 %278, i32 %279)
  br label %394

281:                                              ; preds = %271
  %282 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %283 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %282, i32 0, i32 9
  %284 = load i64, i64* %283, align 8
  %285 = load i32, i32* @DTLS1_COOKIE_LENGTH, align 4
  %286 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %287 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %286, i32 0, i32 2
  %288 = call i32 @PACKET_copy_all(i32* %9, i64 %284, i32 %285, i64* %287)
  %289 = icmp ne i32 %288, 0
  br i1 %289, label %296, label %290

290:                                              ; preds = %281
  %291 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %292 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %293 = load i32, i32* @SSL_F_TLS_PROCESS_CLIENT_HELLO, align 4
  %294 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %295 = call i32 @SSLfatal(%struct.TYPE_16__* %291, i32 %292, i32 %293, i32 %294)
  br label %394

296:                                              ; preds = %281
  %297 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %298 = call i32 @SSL_get_options(%struct.TYPE_16__* %297)
  %299 = load i32, i32* @SSL_OP_COOKIE_EXCHANGE, align 4
  %300 = and i32 %298, %299
  %301 = icmp ne i32 %300, 0
  br i1 %301, label %302, label %312

302:                                              ; preds = %296
  %303 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %304 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %303, i32 0, i32 2
  %305 = load i64, i64* %304, align 8
  %306 = icmp eq i64 %305, 0
  br i1 %306, label %307, label %311

307:                                              ; preds = %302
  %308 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %309 = call i32 @OPENSSL_free(%struct.TYPE_17__* %308)
  %310 = load i32, i32* @MSG_PROCESS_FINISHED_READING, align 4
  store i32 %310, i32* %3, align 4
  br label %406

311:                                              ; preds = %302
  br label %312

312:                                              ; preds = %311, %296
  br label %313

313:                                              ; preds = %312, %267
  %314 = load i32*, i32** %5, align 8
  %315 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %316 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %315, i32 0, i32 8
  %317 = call i32 @PACKET_get_length_prefixed_2(i32* %314, i32* %316)
  %318 = icmp ne i32 %317, 0
  br i1 %318, label %325, label %319

319:                                              ; preds = %313
  %320 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %321 = load i32, i32* @SSL_AD_DECODE_ERROR, align 4
  %322 = load i32, i32* @SSL_F_TLS_PROCESS_CLIENT_HELLO, align 4
  %323 = load i32, i32* @SSL_R_LENGTH_MISMATCH, align 4
  %324 = call i32 @SSLfatal(%struct.TYPE_16__* %320, i32 %321, i32 %322, i32 %323)
  br label %394

325:                                              ; preds = %313
  %326 = load i32*, i32** %5, align 8
  %327 = call i32 @PACKET_get_length_prefixed_1(i32* %326, i32* %7)
  %328 = icmp ne i32 %327, 0
  br i1 %328, label %335, label %329

329:                                              ; preds = %325
  %330 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %331 = load i32, i32* @SSL_AD_DECODE_ERROR, align 4
  %332 = load i32, i32* @SSL_F_TLS_PROCESS_CLIENT_HELLO, align 4
  %333 = load i32, i32* @SSL_R_LENGTH_MISMATCH, align 4
  %334 = call i32 @SSLfatal(%struct.TYPE_16__* %330, i32 %331, i32 %332, i32 %333)
  br label %394

335:                                              ; preds = %325
  %336 = load i32*, i32** %5, align 8
  %337 = call i64 @PACKET_remaining(i32* %336)
  %338 = icmp eq i64 %337, 0
  br i1 %338, label %339, label %343

339:                                              ; preds = %335
  %340 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %341 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %340, i32 0, i32 6
  %342 = call i32 @PACKET_null_init(i32* %341)
  br label %360

343:                                              ; preds = %335
  %344 = load i32*, i32** %5, align 8
  %345 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %346 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %345, i32 0, i32 6
  %347 = call i32 @PACKET_get_length_prefixed_2(i32* %344, i32* %346)
  %348 = icmp ne i32 %347, 0
  br i1 %348, label %349, label %353

349:                                              ; preds = %343
  %350 = load i32*, i32** %5, align 8
  %351 = call i64 @PACKET_remaining(i32* %350)
  %352 = icmp ne i64 %351, 0
  br i1 %352, label %353, label %359

353:                                              ; preds = %349, %343
  %354 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %355 = load i32, i32* @SSL_AD_DECODE_ERROR, align 4
  %356 = load i32, i32* @SSL_F_TLS_PROCESS_CLIENT_HELLO, align 4
  %357 = load i32, i32* @SSL_R_LENGTH_MISMATCH, align 4
  %358 = call i32 @SSLfatal(%struct.TYPE_16__* %354, i32 %355, i32 %356, i32 %357)
  br label %394

359:                                              ; preds = %349
  br label %360

360:                                              ; preds = %359, %339
  br label %361

361:                                              ; preds = %360, %235
  %362 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %363 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %362, i32 0, i32 7
  %364 = load i64, i64* %363, align 8
  %365 = load i32, i32* @MAX_COMPRESSIONS_SIZE, align 4
  %366 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %367 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %366, i32 0, i32 3
  %368 = call i32 @PACKET_copy_all(i32* %7, i64 %364, i32 %365, i64* %367)
  %369 = icmp ne i32 %368, 0
  br i1 %369, label %376, label %370

370:                                              ; preds = %361
  %371 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %372 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %373 = load i32, i32* @SSL_F_TLS_PROCESS_CLIENT_HELLO, align 4
  %374 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %375 = call i32 @SSLfatal(%struct.TYPE_16__* %371, i32 %372, i32 %373, i32 %374)
  br label %394

376:                                              ; preds = %361
  %377 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %378 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %377, i32 0, i32 6
  %379 = load i32, i32* %378, align 4
  store i32 %379, i32* %8, align 4
  %380 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %381 = load i32, i32* @SSL_EXT_CLIENT_HELLO, align 4
  %382 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %383 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %382, i32 0, i32 4
  %384 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %385 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %384, i32 0, i32 5
  %386 = call i32 @tls_collect_extensions(%struct.TYPE_16__* %380, i32* %8, i32 %381, %struct.TYPE_17__** %383, i32* %385, i32 1)
  %387 = icmp ne i32 %386, 0
  br i1 %387, label %389, label %388

388:                                              ; preds = %376
  br label %394

389:                                              ; preds = %376
  %390 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %391 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %392 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %391, i32 0, i32 4
  store %struct.TYPE_17__* %390, %struct.TYPE_17__** %392, align 8
  %393 = load i32, i32* @MSG_PROCESS_CONTINUE_PROCESSING, align 4
  store i32 %393, i32* %3, align 4
  br label %406

394:                                              ; preds = %388, %370, %353, %329, %319, %290, %275, %261, %229, %190, %160, %150, %127, %114, %100, %73, %32
  %395 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %396 = icmp ne %struct.TYPE_17__* %395, null
  br i1 %396, label %397, label %402

397:                                              ; preds = %394
  %398 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %399 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %398, i32 0, i32 4
  %400 = load %struct.TYPE_17__*, %struct.TYPE_17__** %399, align 8
  %401 = call i32 @OPENSSL_free(%struct.TYPE_17__* %400)
  br label %402

402:                                              ; preds = %397, %394
  %403 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %404 = call i32 @OPENSSL_free(%struct.TYPE_17__* %403)
  %405 = load i32, i32* @MSG_PROCESS_ERROR, align 4
  store i32 %405, i32* %3, align 4
  br label %406

406:                                              ; preds = %402, %389, %307, %58
  %407 = load i32, i32* %3, align 4
  ret i32 %407
}

declare dso_local i32 @SSL_IS_FIRST_HANDSHAKE(%struct.TYPE_16__*) #1

declare dso_local i32 @ossl_assert(i32) #1

declare dso_local i32 @SSL_IS_TLS13(%struct.TYPE_16__*) #1

declare dso_local i32 @SSLfatal(%struct.TYPE_16__*, i32, i32, i32) #1

declare dso_local i32 @ssl3_send_alert(%struct.TYPE_16__*, i32, i32) #1

declare dso_local %struct.TYPE_17__* @OPENSSL_zalloc(i32) #1

declare dso_local i64 @RECORD_LAYER_is_sslv2_record(i32*) #1

declare dso_local i32 @PACKET_null_init(i32*) #1

declare dso_local i32 @PACKET_get_1(i32*, i32*) #1

declare dso_local i32 @PACKET_get_net_2(i32*, i32*) #1

declare dso_local i32 @PACKET_get_sub_packet(i32*, i32*, i32) #1

declare dso_local i32 @PACKET_copy_bytes(i32*, i64, i32) #1

declare dso_local i64 @PACKET_remaining(i32*) #1

declare dso_local i32 @memset(i64, i32, i32) #1

declare dso_local i32 @PACKET_buf_init(i32*, i8*, i32) #1

declare dso_local i32 @PACKET_get_length_prefixed_1(i32*, i32*) #1

declare dso_local i32 @PACKET_copy_all(i32*, i64, i32, i64*) #1

declare dso_local i64 @SSL_IS_DTLS(%struct.TYPE_16__*) #1

declare dso_local i32 @SSL_get_options(%struct.TYPE_16__*) #1

declare dso_local i32 @OPENSSL_free(%struct.TYPE_17__*) #1

declare dso_local i32 @PACKET_get_length_prefixed_2(i32*, i32*) #1

declare dso_local i32 @tls_collect_extensions(%struct.TYPE_16__*, i32*, i32, %struct.TYPE_17__**, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
