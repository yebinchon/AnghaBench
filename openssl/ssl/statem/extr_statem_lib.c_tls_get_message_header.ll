; ModuleID = '/home/carl/AnghaBench/openssl/ssl/statem/extr_statem_lib.c_tls_get_message_header.c'
source_filename = "/home/carl/AnghaBench/openssl/ssl/statem/extr_statem_lib.c_tls_get_message_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64, %struct.TYPE_15__*, i64, %struct.TYPE_14__, i32, i32, i32, i32 (i32, i32, i32, i8*, i64, %struct.TYPE_16__*, i32)*, %struct.TYPE_12__, i32, i32, %struct.TYPE_11__* }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_14__ = type { i32, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, i64 }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_11__ = type { i32 (%struct.TYPE_16__*, i32, i32*, i8*, i64, i32, i64*)* }

@SSL3_HM_HEADER_LENGTH = common dso_local global i64 0, align 8
@SSL3_RT_HANDSHAKE = common dso_local global i32 0, align 4
@SSL_READING = common dso_local global i32 0, align 4
@SSL3_RT_CHANGE_CIPHER_SPEC = common dso_local global i32 0, align 4
@SSL3_MT_CCS = common dso_local global i8 0, align 1
@SSL_AD_UNEXPECTED_MESSAGE = common dso_local global i32 0, align 4
@SSL_F_TLS_GET_MESSAGE_HEADER = common dso_local global i32 0, align 4
@SSL_R_BAD_CHANGE_CIPHER_SPEC = common dso_local global i32 0, align 4
@TLS_ST_BEFORE = common dso_local global i64 0, align 8
@TLS1_FLAGS_STATELESS = common dso_local global i32 0, align 4
@SSL3_MT_CHANGE_CIPHER_SPEC = common dso_local global i32 0, align 4
@SSL_R_CCS_RECEIVED_EARLY = common dso_local global i32 0, align 4
@TLS_ST_OK = common dso_local global i64 0, align 8
@SSL3_MT_HELLO_REQUEST = common dso_local global i8 0, align 1
@INT_MAX = common dso_local global i64 0, align 8
@SSL_AD_ILLEGAL_PARAMETER = common dso_local global i32 0, align 4
@SSL_R_EXCESSIVE_MESSAGE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tls_get_message_header(%struct.TYPE_16__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %4, align 8
  store i32* %1, i32** %5, align 8
  %12 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to i8*
  store i8* %17, i8** %9, align 8
  br label %18

18:                                               ; preds = %196, %2
  br label %19

19:                                               ; preds = %126, %18
  %20 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @SSL3_HM_HEADER_LENGTH, align 8
  %24 = icmp ult i64 %22, %23
  br i1 %24, label %25, label %132

25:                                               ; preds = %19
  %26 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %26, i32 0, i32 11
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 0
  %30 = load i32 (%struct.TYPE_16__*, i32, i32*, i8*, i64, i32, i64*)*, i32 (%struct.TYPE_16__*, i32, i32*, i8*, i64, i32, i64*)** %29, align 8
  %31 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %32 = load i32, i32* @SSL3_RT_HANDSHAKE, align 4
  %33 = load i8*, i8** %9, align 8
  %34 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = getelementptr inbounds i8, i8* %33, i64 %36
  %38 = load i64, i64* @SSL3_HM_HEADER_LENGTH, align 8
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = sub i64 %38, %41
  %43 = call i32 %30(%struct.TYPE_16__* %31, i32 %32, i32* %8, i8* %37, i64 %42, i32 0, i64* %11)
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %7, align 4
  %45 = icmp sle i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %25
  %47 = load i32, i32* @SSL_READING, align 4
  %48 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %48, i32 0, i32 10
  store i32 %47, i32* %49, align 4
  store i32 0, i32* %3, align 4
  br label %270

50:                                               ; preds = %25
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* @SSL3_RT_CHANGE_CIPHER_SPEC, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %115

54:                                               ; preds = %50
  %55 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %70, label %59

59:                                               ; preds = %54
  %60 = load i64, i64* %11, align 8
  %61 = icmp ne i64 %60, 1
  br i1 %61, label %70, label %62

62:                                               ; preds = %59
  %63 = load i8*, i8** %9, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 0
  %65 = load i8, i8* %64, align 1
  %66 = zext i8 %65 to i32
  %67 = load i8, i8* @SSL3_MT_CCS, align 1
  %68 = zext i8 %67 to i32
  %69 = icmp ne i32 %66, %68
  br i1 %69, label %70, label %76

70:                                               ; preds = %62, %59, %54
  %71 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %72 = load i32, i32* @SSL_AD_UNEXPECTED_MESSAGE, align 4
  %73 = load i32, i32* @SSL_F_TLS_GET_MESSAGE_HEADER, align 4
  %74 = load i32, i32* @SSL_R_BAD_CHANGE_CIPHER_SPEC, align 4
  %75 = call i32 @SSLfatal(%struct.TYPE_16__* %71, i32 %72, i32 %73, i32 %74)
  store i32 0, i32* %3, align 4
  br label %270

76:                                               ; preds = %62
  %77 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %77, i32 0, i32 8
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @TLS_ST_BEFORE, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %92

83:                                               ; preds = %76
  %84 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %84, i32 0, i32 3
  %86 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @TLS1_FLAGS_STATELESS, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %83
  store i32 0, i32* %3, align 4
  br label %270

92:                                               ; preds = %83, %76
  %93 = load i32, i32* @SSL3_MT_CHANGE_CIPHER_SPEC, align 4
  %94 = load i32*, i32** %5, align 8
  store i32 %93, i32* %94, align 4
  %95 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %95, i32 0, i32 3
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %97, i32 0, i32 0
  store i32 %93, i32* %98, align 8
  %99 = load i64, i64* %11, align 8
  %100 = sub i64 %99, 1
  %101 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %101, i32 0, i32 0
  store i64 %100, i64* %102, align 8
  %103 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %103, i32 0, i32 1
  %105 = load %struct.TYPE_15__*, %struct.TYPE_15__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %108, i32 0, i32 2
  store i64 %107, i64* %109, align 8
  %110 = load i64, i64* %11, align 8
  %111 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %111, i32 0, i32 3
  %113 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %113, i32 0, i32 1
  store i64 %110, i64* %114, align 8
  store i32 1, i32* %3, align 4
  br label %270

115:                                              ; preds = %50
  %116 = load i32, i32* %8, align 4
  %117 = load i32, i32* @SSL3_RT_HANDSHAKE, align 4
  %118 = icmp ne i32 %116, %117
  br i1 %118, label %119, label %125

119:                                              ; preds = %115
  %120 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %121 = load i32, i32* @SSL_AD_UNEXPECTED_MESSAGE, align 4
  %122 = load i32, i32* @SSL_F_TLS_GET_MESSAGE_HEADER, align 4
  %123 = load i32, i32* @SSL_R_CCS_RECEIVED_EARLY, align 4
  %124 = call i32 @SSLfatal(%struct.TYPE_16__* %120, i32 %121, i32 %122, i32 %123)
  store i32 0, i32* %3, align 4
  br label %270

125:                                              ; preds = %115
  br label %126

126:                                              ; preds = %125
  %127 = load i64, i64* %11, align 8
  %128 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %129 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = add i64 %130, %127
  store i64 %131, i64* %129, align 8
  br label %19

132:                                              ; preds = %19
  store i32 0, i32* %6, align 4
  %133 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %134 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %133, i32 0, i32 9
  %135 = load i32, i32* %134, align 8
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %195, label %137

137:                                              ; preds = %132
  %138 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %139 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %138, i32 0, i32 8
  %140 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = load i64, i64* @TLS_ST_OK, align 8
  %143 = icmp ne i64 %141, %142
  br i1 %143, label %144, label %194

144:                                              ; preds = %137
  %145 = load i8*, i8** %9, align 8
  %146 = getelementptr inbounds i8, i8* %145, i64 0
  %147 = load i8, i8* %146, align 1
  %148 = zext i8 %147 to i32
  %149 = load i8, i8* @SSL3_MT_HELLO_REQUEST, align 1
  %150 = zext i8 %149 to i32
  %151 = icmp eq i32 %148, %150
  br i1 %151, label %152, label %194

152:                                              ; preds = %144
  %153 = load i8*, i8** %9, align 8
  %154 = getelementptr inbounds i8, i8* %153, i64 1
  %155 = load i8, i8* %154, align 1
  %156 = zext i8 %155 to i32
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %158, label %193

158:                                              ; preds = %152
  %159 = load i8*, i8** %9, align 8
  %160 = getelementptr inbounds i8, i8* %159, i64 2
  %161 = load i8, i8* %160, align 1
  %162 = zext i8 %161 to i32
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %164, label %193

164:                                              ; preds = %158
  %165 = load i8*, i8** %9, align 8
  %166 = getelementptr inbounds i8, i8* %165, i64 3
  %167 = load i8, i8* %166, align 1
  %168 = zext i8 %167 to i32
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %170, label %193

170:                                              ; preds = %164
  %171 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %172 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %171, i32 0, i32 0
  store i64 0, i64* %172, align 8
  store i32 1, i32* %6, align 4
  %173 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %174 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %173, i32 0, i32 7
  %175 = load i32 (i32, i32, i32, i8*, i64, %struct.TYPE_16__*, i32)*, i32 (i32, i32, i32, i8*, i64, %struct.TYPE_16__*, i32)** %174, align 8
  %176 = icmp ne i32 (i32, i32, i32, i8*, i64, %struct.TYPE_16__*, i32)* %175, null
  br i1 %176, label %177, label %192

177:                                              ; preds = %170
  %178 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %179 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %178, i32 0, i32 7
  %180 = load i32 (i32, i32, i32, i8*, i64, %struct.TYPE_16__*, i32)*, i32 (i32, i32, i32, i8*, i64, %struct.TYPE_16__*, i32)** %179, align 8
  %181 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %182 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %181, i32 0, i32 6
  %183 = load i32, i32* %182, align 8
  %184 = load i32, i32* @SSL3_RT_HANDSHAKE, align 4
  %185 = load i8*, i8** %9, align 8
  %186 = load i64, i64* @SSL3_HM_HEADER_LENGTH, align 8
  %187 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %188 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %189 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %188, i32 0, i32 5
  %190 = load i32, i32* %189, align 4
  %191 = call i32 %180(i32 0, i32 %183, i32 %184, i8* %185, i64 %186, %struct.TYPE_16__* %187, i32 %190)
  br label %192

192:                                              ; preds = %177, %170
  br label %193

193:                                              ; preds = %192, %164, %158, %152
  br label %194

194:                                              ; preds = %193, %144, %137
  br label %195

195:                                              ; preds = %194, %132
  br label %196

196:                                              ; preds = %195
  %197 = load i32, i32* %6, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %18, label %199

199:                                              ; preds = %196
  %200 = load i8*, i8** %9, align 8
  %201 = load i8, i8* %200, align 1
  %202 = zext i8 %201 to i32
  %203 = load i32*, i32** %5, align 8
  store i32 %202, i32* %203, align 4
  %204 = load i8*, i8** %9, align 8
  %205 = getelementptr inbounds i8, i8* %204, i32 1
  store i8* %205, i8** %9, align 8
  %206 = load i8, i8* %204, align 1
  %207 = zext i8 %206 to i32
  %208 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %209 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %208, i32 0, i32 3
  %210 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %209, i32 0, i32 1
  %211 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %210, i32 0, i32 0
  store i32 %207, i32* %211, align 8
  %212 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %213 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %212, i32 0, i32 4
  %214 = call i64 @RECORD_LAYER_is_sslv2_record(i32* %213)
  %215 = icmp ne i64 %214, 0
  br i1 %215, label %216, label %237

216:                                              ; preds = %199
  %217 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %218 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %217, i32 0, i32 4
  %219 = call i64 @RECORD_LAYER_get_rrec_length(i32* %218)
  %220 = load i64, i64* @SSL3_HM_HEADER_LENGTH, align 8
  %221 = add i64 %219, %220
  store i64 %221, i64* %10, align 8
  %222 = load i64, i64* %10, align 8
  %223 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %224 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %223, i32 0, i32 3
  %225 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %224, i32 0, i32 1
  %226 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %225, i32 0, i32 1
  store i64 %222, i64* %226, align 8
  %227 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %228 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %227, i32 0, i32 1
  %229 = load %struct.TYPE_15__*, %struct.TYPE_15__** %228, align 8
  %230 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %229, i32 0, i32 0
  %231 = load i64, i64* %230, align 8
  %232 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %233 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %232, i32 0, i32 2
  store i64 %231, i64* %233, align 8
  %234 = load i64, i64* @SSL3_HM_HEADER_LENGTH, align 8
  %235 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %236 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %235, i32 0, i32 0
  store i64 %234, i64* %236, align 8
  br label %269

237:                                              ; preds = %199
  %238 = load i8*, i8** %9, align 8
  %239 = load i64, i64* %10, align 8
  %240 = call i32 @n2l3(i8* %238, i64 %239)
  %241 = load i64, i64* %10, align 8
  %242 = load i64, i64* @INT_MAX, align 8
  %243 = load i64, i64* @SSL3_HM_HEADER_LENGTH, align 8
  %244 = sub i64 %242, %243
  %245 = icmp ugt i64 %241, %244
  br i1 %245, label %246, label %252

246:                                              ; preds = %237
  %247 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %248 = load i32, i32* @SSL_AD_ILLEGAL_PARAMETER, align 4
  %249 = load i32, i32* @SSL_F_TLS_GET_MESSAGE_HEADER, align 4
  %250 = load i32, i32* @SSL_R_EXCESSIVE_MESSAGE_SIZE, align 4
  %251 = call i32 @SSLfatal(%struct.TYPE_16__* %247, i32 %248, i32 %249, i32 %250)
  store i32 0, i32* %3, align 4
  br label %270

252:                                              ; preds = %237
  %253 = load i64, i64* %10, align 8
  %254 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %255 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %254, i32 0, i32 3
  %256 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %255, i32 0, i32 1
  %257 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %256, i32 0, i32 1
  store i64 %253, i64* %257, align 8
  %258 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %259 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %258, i32 0, i32 1
  %260 = load %struct.TYPE_15__*, %struct.TYPE_15__** %259, align 8
  %261 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %260, i32 0, i32 0
  %262 = load i64, i64* %261, align 8
  %263 = load i64, i64* @SSL3_HM_HEADER_LENGTH, align 8
  %264 = add i64 %262, %263
  %265 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %266 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %265, i32 0, i32 2
  store i64 %264, i64* %266, align 8
  %267 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %268 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %267, i32 0, i32 0
  store i64 0, i64* %268, align 8
  br label %269

269:                                              ; preds = %252, %216
  store i32 1, i32* %3, align 4
  br label %270

270:                                              ; preds = %269, %246, %119, %92, %91, %70, %46
  %271 = load i32, i32* %3, align 4
  ret i32 %271
}

declare dso_local i32 @SSLfatal(%struct.TYPE_16__*, i32, i32, i32) #1

declare dso_local i64 @RECORD_LAYER_is_sslv2_record(i32*) #1

declare dso_local i64 @RECORD_LAYER_get_rrec_length(i32*) #1

declare dso_local i32 @n2l3(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
