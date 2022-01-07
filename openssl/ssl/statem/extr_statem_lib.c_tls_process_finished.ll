; ModuleID = '/home/carl/AnghaBench/openssl/ssl/statem/extr_statem_lib.c_tls_process_finished.c'
source_filename = "/home/carl/AnghaBench/openssl/ssl/statem/extr_statem_lib.c_tls_process_finished.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i64, %struct.TYPE_21__*, %struct.TYPE_19__*, i32, i32, i64, %struct.TYPE_18__, i32, %struct.TYPE_16__ }
%struct.TYPE_21__ = type { %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i32 (%struct.TYPE_22__*, i32)*, i32 (%struct.TYPE_22__*, i32, i32, i32, i32*)* }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_18__ = type { i64, i64, %struct.TYPE_17__, i32, i32, i64 }
%struct.TYPE_17__ = type { i64, i32 }
%struct.TYPE_16__ = type { i32, i32 }

@ENC_READ_STATE_VALID = common dso_local global i32 0, align 4
@SSL_PHA_REQUESTED = common dso_local global i64 0, align 8
@MSG_PROCESS_ERROR = common dso_local global i32 0, align 4
@SSL_AD_UNEXPECTED_MESSAGE = common dso_local global i32 0, align 4
@SSL_F_TLS_PROCESS_FINISHED = common dso_local global i32 0, align 4
@SSL_R_NOT_ON_RECORD_BOUNDARY = common dso_local global i32 0, align 4
@SSL_R_GOT_A_FIN_BEFORE_A_CCS = common dso_local global i32 0, align 4
@SSL_AD_DECODE_ERROR = common dso_local global i32 0, align 4
@SSL_R_BAD_DIGEST_LENGTH = common dso_local global i32 0, align 4
@SSL_AD_DECRYPT_ERROR = common dso_local global i32 0, align 4
@SSL_R_DIGEST_CHECK_FAILED = common dso_local global i32 0, align 4
@EVP_MAX_MD_SIZE = common dso_local global i64 0, align 8
@SSL_AD_INTERNAL_ERROR = common dso_local global i32 0, align 4
@ERR_R_INTERNAL_ERROR = common dso_local global i32 0, align 4
@SSL3_CC_APPLICATION = common dso_local global i32 0, align 4
@SSL3_CHANGE_CIPHER_SERVER_READ = common dso_local global i32 0, align 4
@SSL3_CHANGE_CIPHER_CLIENT_READ = common dso_local global i32 0, align 4
@MSG_PROCESS_FINISHED_READING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tls_process_finished(%struct.TYPE_22__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_22__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %7, i32 0, i32 5
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %36

11:                                               ; preds = %2
  %12 = load i32, i32* @ENC_READ_STATE_VALID, align 4
  %13 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %13, i32 0, i32 8
  %15 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 1
  store i32 %12, i32* %15, align 4
  %16 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @SSL_PHA_REQUESTED, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %11
  %22 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %22, i32 0, i32 8
  %24 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %23, i32 0, i32 0
  store i32 1, i32* %24, align 4
  br label %25

25:                                               ; preds = %21, %11
  %26 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %27 = call i64 @SSL_IS_TLS13(%struct.TYPE_22__* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %25
  %30 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %31 = call i32 @tls13_save_handshake_digest_for_pha(%struct.TYPE_22__* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %29
  %34 = load i32, i32* @MSG_PROCESS_ERROR, align 4
  store i32 %34, i32* %3, align 4
  br label %239

35:                                               ; preds = %29, %25
  br label %36

36:                                               ; preds = %35, %2
  %37 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %38 = call i64 @SSL_IS_TLS13(%struct.TYPE_22__* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %52

40:                                               ; preds = %36
  %41 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %41, i32 0, i32 7
  %43 = call i64 @RECORD_LAYER_processed_read_pending(i32* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %40
  %46 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %47 = load i32, i32* @SSL_AD_UNEXPECTED_MESSAGE, align 4
  %48 = load i32, i32* @SSL_F_TLS_PROCESS_FINISHED, align 4
  %49 = load i32, i32* @SSL_R_NOT_ON_RECORD_BOUNDARY, align 4
  %50 = call i32 @SSLfatal(%struct.TYPE_22__* %46, i32 %47, i32 %48, i32 %49)
  %51 = load i32, i32* @MSG_PROCESS_ERROR, align 4
  store i32 %51, i32* %3, align 4
  br label %239

52:                                               ; preds = %40, %36
  %53 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %54 = call i64 @SSL_IS_TLS13(%struct.TYPE_22__* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %69, label %56

56:                                               ; preds = %52
  %57 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %57, i32 0, i32 6
  %59 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %58, i32 0, i32 5
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %69, label %62

62:                                               ; preds = %56
  %63 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %64 = load i32, i32* @SSL_AD_UNEXPECTED_MESSAGE, align 4
  %65 = load i32, i32* @SSL_F_TLS_PROCESS_FINISHED, align 4
  %66 = load i32, i32* @SSL_R_GOT_A_FIN_BEFORE_A_CCS, align 4
  %67 = call i32 @SSLfatal(%struct.TYPE_22__* %63, i32 %64, i32 %65, i32 %66)
  %68 = load i32, i32* @MSG_PROCESS_ERROR, align 4
  store i32 %68, i32* %3, align 4
  br label %239

69:                                               ; preds = %56, %52
  %70 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %70, i32 0, i32 6
  %72 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %71, i32 0, i32 5
  store i64 0, i64* %72, align 8
  %73 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %73, i32 0, i32 6
  %75 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  store i64 %77, i64* %6, align 8
  %78 = load i64, i64* %6, align 8
  %79 = load i32*, i32** %5, align 8
  %80 = call i64 @PACKET_remaining(i32* %79)
  %81 = icmp ne i64 %78, %80
  br i1 %81, label %82, label %89

82:                                               ; preds = %69
  %83 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %84 = load i32, i32* @SSL_AD_DECODE_ERROR, align 4
  %85 = load i32, i32* @SSL_F_TLS_PROCESS_FINISHED, align 4
  %86 = load i32, i32* @SSL_R_BAD_DIGEST_LENGTH, align 4
  %87 = call i32 @SSLfatal(%struct.TYPE_22__* %83, i32 %84, i32 %85, i32 %86)
  %88 = load i32, i32* @MSG_PROCESS_ERROR, align 4
  store i32 %88, i32* %3, align 4
  br label %239

89:                                               ; preds = %69
  %90 = load i32*, i32** %5, align 8
  %91 = call i32 @PACKET_data(i32* %90)
  %92 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %92, i32 0, i32 6
  %94 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %93, i32 0, i32 2
  %95 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = load i64, i64* %6, align 8
  %98 = call i64 @CRYPTO_memcmp(i32 %91, i32 %96, i64 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %107

100:                                              ; preds = %89
  %101 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %102 = load i32, i32* @SSL_AD_DECRYPT_ERROR, align 4
  %103 = load i32, i32* @SSL_F_TLS_PROCESS_FINISHED, align 4
  %104 = load i32, i32* @SSL_R_DIGEST_CHECK_FAILED, align 4
  %105 = call i32 @SSLfatal(%struct.TYPE_22__* %101, i32 %102, i32 %103, i32 %104)
  %106 = load i32, i32* @MSG_PROCESS_ERROR, align 4
  store i32 %106, i32* %3, align 4
  br label %239

107:                                              ; preds = %89
  %108 = load i64, i64* %6, align 8
  %109 = load i64, i64* @EVP_MAX_MD_SIZE, align 8
  %110 = icmp ule i64 %108, %109
  %111 = zext i1 %110 to i32
  %112 = call i32 @ossl_assert(i32 %111)
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %121, label %114

114:                                              ; preds = %107
  %115 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %116 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %117 = load i32, i32* @SSL_F_TLS_PROCESS_FINISHED, align 4
  %118 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %119 = call i32 @SSLfatal(%struct.TYPE_22__* %115, i32 %116, i32 %117, i32 %118)
  %120 = load i32, i32* @MSG_PROCESS_ERROR, align 4
  store i32 %120, i32* %3, align 4
  br label %239

121:                                              ; preds = %107
  %122 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %123 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %122, i32 0, i32 5
  %124 = load i64, i64* %123, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %142

126:                                              ; preds = %121
  %127 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %128 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %127, i32 0, i32 6
  %129 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %128, i32 0, i32 4
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %132 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %131, i32 0, i32 6
  %133 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %132, i32 0, i32 2
  %134 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 8
  %136 = load i64, i64* %6, align 8
  %137 = call i32 @memcpy(i32 %130, i32 %135, i64 %136)
  %138 = load i64, i64* %6, align 8
  %139 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %140 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %139, i32 0, i32 6
  %141 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %140, i32 0, i32 0
  store i64 %138, i64* %141, align 8
  br label %158

142:                                              ; preds = %121
  %143 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %144 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %143, i32 0, i32 6
  %145 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %144, i32 0, i32 3
  %146 = load i32, i32* %145, align 8
  %147 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %148 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %147, i32 0, i32 6
  %149 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %148, i32 0, i32 2
  %150 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 8
  %152 = load i64, i64* %6, align 8
  %153 = call i32 @memcpy(i32 %146, i32 %151, i64 %152)
  %154 = load i64, i64* %6, align 8
  %155 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %156 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %155, i32 0, i32 6
  %157 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %156, i32 0, i32 1
  store i64 %154, i64* %157, align 8
  br label %158

158:                                              ; preds = %142, %126
  %159 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %160 = call i64 @SSL_IS_TLS13(%struct.TYPE_22__* %159)
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %237

162:                                              ; preds = %158
  %163 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %164 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %163, i32 0, i32 5
  %165 = load i64, i64* %164, align 8
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %190

167:                                              ; preds = %162
  %168 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %169 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = load i64, i64* @SSL_PHA_REQUESTED, align 8
  %172 = icmp ne i64 %170, %171
  br i1 %172, label %173, label %189

173:                                              ; preds = %167
  %174 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %175 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %174, i32 0, i32 1
  %176 = load %struct.TYPE_21__*, %struct.TYPE_21__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %176, i32 0, i32 0
  %178 = load %struct.TYPE_20__*, %struct.TYPE_20__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %178, i32 0, i32 0
  %180 = load i32 (%struct.TYPE_22__*, i32)*, i32 (%struct.TYPE_22__*, i32)** %179, align 8
  %181 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %182 = load i32, i32* @SSL3_CC_APPLICATION, align 4
  %183 = load i32, i32* @SSL3_CHANGE_CIPHER_SERVER_READ, align 4
  %184 = or i32 %182, %183
  %185 = call i32 %180(%struct.TYPE_22__* %181, i32 %184)
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %189, label %187

187:                                              ; preds = %173
  %188 = load i32, i32* @MSG_PROCESS_ERROR, align 4
  store i32 %188, i32* %3, align 4
  br label %239

189:                                              ; preds = %173, %167
  br label %236

190:                                              ; preds = %162
  %191 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %192 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %191, i32 0, i32 1
  %193 = load %struct.TYPE_21__*, %struct.TYPE_21__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %193, i32 0, i32 0
  %195 = load %struct.TYPE_20__*, %struct.TYPE_20__** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %195, i32 0, i32 1
  %197 = load i32 (%struct.TYPE_22__*, i32, i32, i32, i32*)*, i32 (%struct.TYPE_22__*, i32, i32, i32, i32*)** %196, align 8
  %198 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %199 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %200 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %199, i32 0, i32 4
  %201 = load i32, i32* %200, align 4
  %202 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %203 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %202, i32 0, i32 3
  %204 = load i32, i32* %203, align 8
  %205 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %206 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %205, i32 0, i32 2
  %207 = load %struct.TYPE_19__*, %struct.TYPE_19__** %206, align 8
  %208 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %207, i32 0, i32 0
  %209 = call i32 %197(%struct.TYPE_22__* %198, i32 %201, i32 %204, i32 0, i32* %208)
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %213, label %211

211:                                              ; preds = %190
  %212 = load i32, i32* @MSG_PROCESS_ERROR, align 4
  store i32 %212, i32* %3, align 4
  br label %239

213:                                              ; preds = %190
  %214 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %215 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %214, i32 0, i32 1
  %216 = load %struct.TYPE_21__*, %struct.TYPE_21__** %215, align 8
  %217 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %216, i32 0, i32 0
  %218 = load %struct.TYPE_20__*, %struct.TYPE_20__** %217, align 8
  %219 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %218, i32 0, i32 0
  %220 = load i32 (%struct.TYPE_22__*, i32)*, i32 (%struct.TYPE_22__*, i32)** %219, align 8
  %221 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %222 = load i32, i32* @SSL3_CC_APPLICATION, align 4
  %223 = load i32, i32* @SSL3_CHANGE_CIPHER_CLIENT_READ, align 4
  %224 = or i32 %222, %223
  %225 = call i32 %220(%struct.TYPE_22__* %221, i32 %224)
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %229, label %227

227:                                              ; preds = %213
  %228 = load i32, i32* @MSG_PROCESS_ERROR, align 4
  store i32 %228, i32* %3, align 4
  br label %239

229:                                              ; preds = %213
  %230 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %231 = call i32 @tls_process_initial_server_flight(%struct.TYPE_22__* %230)
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %235, label %233

233:                                              ; preds = %229
  %234 = load i32, i32* @MSG_PROCESS_ERROR, align 4
  store i32 %234, i32* %3, align 4
  br label %239

235:                                              ; preds = %229
  br label %236

236:                                              ; preds = %235, %189
  br label %237

237:                                              ; preds = %236, %158
  %238 = load i32, i32* @MSG_PROCESS_FINISHED_READING, align 4
  store i32 %238, i32* %3, align 4
  br label %239

239:                                              ; preds = %237, %233, %227, %211, %187, %114, %100, %82, %62, %45, %33
  %240 = load i32, i32* %3, align 4
  ret i32 %240
}

declare dso_local i64 @SSL_IS_TLS13(%struct.TYPE_22__*) #1

declare dso_local i32 @tls13_save_handshake_digest_for_pha(%struct.TYPE_22__*) #1

declare dso_local i64 @RECORD_LAYER_processed_read_pending(i32*) #1

declare dso_local i32 @SSLfatal(%struct.TYPE_22__*, i32, i32, i32) #1

declare dso_local i64 @PACKET_remaining(i32*) #1

declare dso_local i64 @CRYPTO_memcmp(i32, i32, i64) #1

declare dso_local i32 @PACKET_data(i32*) #1

declare dso_local i32 @ossl_assert(i32) #1

declare dso_local i32 @memcpy(i32, i32, i64) #1

declare dso_local i32 @tls_process_initial_server_flight(%struct.TYPE_22__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
