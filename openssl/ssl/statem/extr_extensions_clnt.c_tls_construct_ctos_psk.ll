; ModuleID = '/home/carl/AnghaBench/openssl/ssl/statem/extr_extensions_clnt.c_tls_construct_ctos_psk.c'
source_filename = "/home/carl/AnghaBench/openssl/ssl/statem/extr_extensions_clnt.c_tls_construct_ctos_psk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64, i64, %struct.TYPE_14__*, %struct.TYPE_14__*, %struct.TYPE_12__, i32 }
%struct.TYPE_14__ = type { i64, %struct.TYPE_11__, %struct.TYPE_10__*, i64 }
%struct.TYPE_11__ = type { i64, i32, i32, i64 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_12__ = type { i64 }

@TLS1_3_VERSION = common dso_local global i64 0, align 8
@EXT_RETURN_NOT_SENT = common dso_local global i32 0, align 4
@SSL_HRR_PENDING = common dso_local global i64 0, align 8
@SSL_AD_INTERNAL_ERROR = common dso_local global i32 0, align 4
@SSL_F_TLS_CONSTRUCT_CTOS_PSK = common dso_local global i32 0, align 4
@ERR_R_INTERNAL_ERROR = common dso_local global i32 0, align 4
@EXT_RETURN_FAIL = common dso_local global i32 0, align 4
@SSL_R_BAD_PSK = common dso_local global i32 0, align 4
@TLSEXT_TYPE_psk = common dso_local global i32 0, align 4
@EXT_RETURN_SENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tls_construct_ctos_psk(%struct.TYPE_13__* %0, i32* %1, i32 %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  store i32 0, i32* %14, align 4
  store i64 0, i64* %15, align 8
  store i64 0, i64* %16, align 8
  store i8* null, i8** %19, align 8
  store i8* null, i8** %20, align 8
  store i8* null, i8** %21, align 8
  store i32* null, i32** %22, align 8
  store i32* null, i32** %23, align 8
  store i32* null, i32** %24, align 8
  store i32 0, i32* %25, align 4
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 4
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 0
  store i64 0, i64* %28, align 8
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 3
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @TLS1_3_VERSION, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %49, label %36

36:                                               ; preds = %5
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %37, i32 0, i32 3
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %36
  %45 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %45, i32 0, i32 2
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %46, align 8
  %48 = icmp eq %struct.TYPE_14__* %47, null
  br i1 %48, label %49, label %51

49:                                               ; preds = %44, %5
  %50 = load i32, i32* @EXT_RETURN_NOT_SENT, align 4
  store i32 %50, i32* %6, align 4
  br label %393

51:                                               ; preds = %44, %36
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @SSL_HRR_PENDING, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %51
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %59 = call i32* @ssl_handshake_md(%struct.TYPE_13__* %58)
  store i32* %59, i32** %22, align 8
  br label %60

60:                                               ; preds = %57, %51
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 3
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %160

68:                                               ; preds = %60
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i32 0, i32 3
  %71 = load %struct.TYPE_14__*, %struct.TYPE_14__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %71, i32 0, i32 2
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %72, align 8
  %74 = icmp eq %struct.TYPE_10__* %73, null
  br i1 %74, label %75, label %82

75:                                               ; preds = %68
  %76 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %77 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %78 = load i32, i32* @SSL_F_TLS_CONSTRUCT_CTOS_PSK, align 4
  %79 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %80 = call i32 @SSLfatal(%struct.TYPE_13__* %76, i32 %77, i32 %78, i32 %79)
  %81 = load i32, i32* @EXT_RETURN_FAIL, align 4
  store i32 %81, i32* %6, align 4
  br label %393

82:                                               ; preds = %68
  %83 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %83, i32 0, i32 3
  %85 = load %struct.TYPE_14__*, %struct.TYPE_14__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %85, i32 0, i32 2
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32* @ssl_md(i32 %89)
  store i32* %90, i32** %23, align 8
  %91 = load i32*, i32** %23, align 8
  %92 = icmp eq i32* %91, null
  br i1 %92, label %93, label %94

93:                                               ; preds = %82
  br label %161

94:                                               ; preds = %82
  %95 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %96 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @SSL_HRR_PENDING, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %105

100:                                              ; preds = %94
  %101 = load i32*, i32** %23, align 8
  %102 = load i32*, i32** %22, align 8
  %103 = icmp ne i32* %101, %102
  br i1 %103, label %104, label %105

104:                                              ; preds = %100
  br label %161

105:                                              ; preds = %100, %94
  %106 = call i64 @time(i32* null)
  %107 = trunc i64 %106 to i32
  store i32 %107, i32* %12, align 4
  %108 = load i32, i32* %12, align 4
  %109 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %110 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %109, i32 0, i32 3
  %111 = load %struct.TYPE_14__*, %struct.TYPE_14__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %111, i32 0, i32 3
  %113 = load i64, i64* %112, align 8
  %114 = trunc i64 %113 to i32
  %115 = sub nsw i32 %108, %114
  store i32 %115, i32* %13, align 4
  %116 = load i32, i32* %13, align 4
  %117 = icmp sgt i32 %116, 0
  br i1 %117, label %118, label %121

118:                                              ; preds = %105
  %119 = load i32, i32* %13, align 4
  %120 = add nsw i32 %119, -1
  store i32 %120, i32* %13, align 4
  br label %121

121:                                              ; preds = %118, %105
  %122 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %123 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %122, i32 0, i32 3
  %124 = load %struct.TYPE_14__*, %struct.TYPE_14__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 8
  %128 = load i32, i32* %13, align 4
  %129 = icmp slt i32 %127, %128
  br i1 %129, label %130, label %131

130:                                              ; preds = %121
  br label %161

131:                                              ; preds = %121
  %132 = load i32, i32* %13, align 4
  %133 = mul nsw i32 %132, 1000
  store i32 %133, i32* %14, align 4
  %134 = load i32, i32* %13, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %142

136:                                              ; preds = %131
  %137 = load i32, i32* %14, align 4
  %138 = sdiv i32 %137, 1000
  %139 = load i32, i32* %13, align 4
  %140 = icmp ne i32 %138, %139
  br i1 %140, label %141, label %142

141:                                              ; preds = %136
  br label %161

142:                                              ; preds = %136, %131
  %143 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %144 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %143, i32 0, i32 3
  %145 = load %struct.TYPE_14__*, %struct.TYPE_14__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %145, i32 0, i32 1
  %147 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %146, i32 0, i32 3
  %148 = load i64, i64* %147, align 8
  %149 = load i32, i32* %14, align 4
  %150 = sext i32 %149 to i64
  %151 = add nsw i64 %150, %148
  %152 = trunc i64 %151 to i32
  store i32 %152, i32* %14, align 4
  %153 = load i32*, i32** %23, align 8
  %154 = call i64 @EVP_MD_size(i32* %153)
  store i64 %154, i64* %15, align 8
  %155 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %156 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %155, i32 0, i32 4
  %157 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = add nsw i64 %158, 1
  store i64 %159, i64* %157, align 8
  store i32 1, i32* %25, align 4
  br label %160

160:                                              ; preds = %142, %60
  br label %161

161:                                              ; preds = %160, %141, %130, %104, %93
  %162 = load i32, i32* %25, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %171, label %164

164:                                              ; preds = %161
  %165 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %166 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %165, i32 0, i32 2
  %167 = load %struct.TYPE_14__*, %struct.TYPE_14__** %166, align 8
  %168 = icmp eq %struct.TYPE_14__* %167, null
  br i1 %168, label %169, label %171

169:                                              ; preds = %164
  %170 = load i32, i32* @EXT_RETURN_NOT_SENT, align 4
  store i32 %170, i32* %6, align 4
  br label %393

171:                                              ; preds = %164, %161
  %172 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %173 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %172, i32 0, i32 2
  %174 = load %struct.TYPE_14__*, %struct.TYPE_14__** %173, align 8
  %175 = icmp ne %struct.TYPE_14__* %174, null
  br i1 %175, label %176, label %214

176:                                              ; preds = %171
  %177 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %178 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %177, i32 0, i32 2
  %179 = load %struct.TYPE_14__*, %struct.TYPE_14__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %179, i32 0, i32 2
  %181 = load %struct.TYPE_10__*, %struct.TYPE_10__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 4
  %184 = call i32* @ssl_md(i32 %183)
  store i32* %184, i32** %24, align 8
  %185 = load i32*, i32** %24, align 8
  %186 = icmp eq i32* %185, null
  br i1 %186, label %187, label %194

187:                                              ; preds = %176
  %188 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %189 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %190 = load i32, i32* @SSL_F_TLS_CONSTRUCT_CTOS_PSK, align 4
  %191 = load i32, i32* @SSL_R_BAD_PSK, align 4
  %192 = call i32 @SSLfatal(%struct.TYPE_13__* %188, i32 %189, i32 %190, i32 %191)
  %193 = load i32, i32* @EXT_RETURN_FAIL, align 4
  store i32 %193, i32* %6, align 4
  br label %393

194:                                              ; preds = %176
  %195 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %196 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %195, i32 0, i32 0
  %197 = load i64, i64* %196, align 8
  %198 = load i64, i64* @SSL_HRR_PENDING, align 8
  %199 = icmp eq i64 %197, %198
  br i1 %199, label %200, label %211

200:                                              ; preds = %194
  %201 = load i32*, i32** %24, align 8
  %202 = load i32*, i32** %22, align 8
  %203 = icmp ne i32* %201, %202
  br i1 %203, label %204, label %211

204:                                              ; preds = %200
  %205 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %206 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %207 = load i32, i32* @SSL_F_TLS_CONSTRUCT_CTOS_PSK, align 4
  %208 = load i32, i32* @SSL_R_BAD_PSK, align 4
  %209 = call i32 @SSLfatal(%struct.TYPE_13__* %205, i32 %206, i32 %207, i32 %208)
  %210 = load i32, i32* @EXT_RETURN_FAIL, align 4
  store i32 %210, i32* %6, align 4
  br label %393

211:                                              ; preds = %200, %194
  %212 = load i32*, i32** %24, align 8
  %213 = call i64 @EVP_MD_size(i32* %212)
  store i64 %213, i64* %16, align 8
  br label %214

214:                                              ; preds = %211, %171
  %215 = load i32*, i32** %8, align 8
  %216 = load i32, i32* @TLSEXT_TYPE_psk, align 4
  %217 = call i32 @WPACKET_put_bytes_u16(i32* %215, i32 %216)
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %227

219:                                              ; preds = %214
  %220 = load i32*, i32** %8, align 8
  %221 = call i32 @WPACKET_start_sub_packet_u16(i32* %220)
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %227

223:                                              ; preds = %219
  %224 = load i32*, i32** %8, align 8
  %225 = call i32 @WPACKET_start_sub_packet_u16(i32* %224)
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %234, label %227

227:                                              ; preds = %223, %219, %214
  %228 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %229 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %230 = load i32, i32* @SSL_F_TLS_CONSTRUCT_CTOS_PSK, align 4
  %231 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %232 = call i32 @SSLfatal(%struct.TYPE_13__* %228, i32 %229, i32 %230, i32 %231)
  %233 = load i32, i32* @EXT_RETURN_FAIL, align 4
  store i32 %233, i32* %6, align 4
  br label %393

234:                                              ; preds = %223
  %235 = load i32, i32* %25, align 4
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %237, label %266

237:                                              ; preds = %234
  %238 = load i32*, i32** %8, align 8
  %239 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %240 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %239, i32 0, i32 3
  %241 = load %struct.TYPE_14__*, %struct.TYPE_14__** %240, align 8
  %242 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %241, i32 0, i32 1
  %243 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %242, i32 0, i32 2
  %244 = load i32, i32* %243, align 4
  %245 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %246 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %245, i32 0, i32 3
  %247 = load %struct.TYPE_14__*, %struct.TYPE_14__** %246, align 8
  %248 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %247, i32 0, i32 1
  %249 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %248, i32 0, i32 0
  %250 = load i64, i64* %249, align 8
  %251 = call i32 @WPACKET_sub_memcpy_u16(i32* %238, i32 %244, i64 %250)
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %253, label %258

253:                                              ; preds = %237
  %254 = load i32*, i32** %8, align 8
  %255 = load i32, i32* %14, align 4
  %256 = call i32 @WPACKET_put_bytes_u32(i32* %254, i32 %255)
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %265, label %258

258:                                              ; preds = %253, %237
  %259 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %260 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %261 = load i32, i32* @SSL_F_TLS_CONSTRUCT_CTOS_PSK, align 4
  %262 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %263 = call i32 @SSLfatal(%struct.TYPE_13__* %259, i32 %260, i32 %261, i32 %262)
  %264 = load i32, i32* @EXT_RETURN_FAIL, align 4
  store i32 %264, i32* %6, align 4
  br label %393

265:                                              ; preds = %253
  br label %266

266:                                              ; preds = %265, %234
  %267 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %268 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %267, i32 0, i32 2
  %269 = load %struct.TYPE_14__*, %struct.TYPE_14__** %268, align 8
  %270 = icmp ne %struct.TYPE_14__* %269, null
  br i1 %270, label %271, label %298

271:                                              ; preds = %266
  %272 = load i32*, i32** %8, align 8
  %273 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %274 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %273, i32 0, i32 5
  %275 = load i32, i32* %274, align 8
  %276 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %277 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %276, i32 0, i32 1
  %278 = load i64, i64* %277, align 8
  %279 = call i32 @WPACKET_sub_memcpy_u16(i32* %272, i32 %275, i64 %278)
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %281, label %285

281:                                              ; preds = %271
  %282 = load i32*, i32** %8, align 8
  %283 = call i32 @WPACKET_put_bytes_u32(i32* %282, i32 0)
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %292, label %285

285:                                              ; preds = %281, %271
  %286 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %287 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %288 = load i32, i32* @SSL_F_TLS_CONSTRUCT_CTOS_PSK, align 4
  %289 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %290 = call i32 @SSLfatal(%struct.TYPE_13__* %286, i32 %287, i32 %288, i32 %289)
  %291 = load i32, i32* @EXT_RETURN_FAIL, align 4
  store i32 %291, i32* %6, align 4
  br label %393

292:                                              ; preds = %281
  %293 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %294 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %293, i32 0, i32 4
  %295 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %294, i32 0, i32 0
  %296 = load i64, i64* %295, align 8
  %297 = add nsw i64 %296, 1
  store i64 %297, i64* %295, align 8
  br label %298

298:                                              ; preds = %292, %266
  %299 = load i32*, i32** %8, align 8
  %300 = call i32 @WPACKET_close(i32* %299)
  %301 = icmp ne i32 %300, 0
  br i1 %301, label %302, label %344

302:                                              ; preds = %298
  %303 = load i32*, i32** %8, align 8
  %304 = call i32 @WPACKET_get_total_written(i32* %303, i64* %17)
  %305 = icmp ne i32 %304, 0
  br i1 %305, label %306, label %344

306:                                              ; preds = %302
  %307 = load i32*, i32** %8, align 8
  %308 = call i32 @WPACKET_start_sub_packet_u16(i32* %307)
  %309 = icmp ne i32 %308, 0
  br i1 %309, label %310, label %344

310:                                              ; preds = %306
  %311 = load i32, i32* %25, align 4
  %312 = icmp ne i32 %311, 0
  br i1 %312, label %313, label %318

313:                                              ; preds = %310
  %314 = load i32*, i32** %8, align 8
  %315 = load i64, i64* %15, align 8
  %316 = call i32 @WPACKET_sub_allocate_bytes_u8(i32* %314, i64 %315, i8** %19)
  %317 = icmp ne i32 %316, 0
  br i1 %317, label %318, label %344

318:                                              ; preds = %313, %310
  %319 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %320 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %319, i32 0, i32 2
  %321 = load %struct.TYPE_14__*, %struct.TYPE_14__** %320, align 8
  %322 = icmp ne %struct.TYPE_14__* %321, null
  br i1 %322, label %323, label %328

323:                                              ; preds = %318
  %324 = load i32*, i32** %8, align 8
  %325 = load i64, i64* %16, align 8
  %326 = call i32 @WPACKET_sub_allocate_bytes_u8(i32* %324, i64 %325, i8** %20)
  %327 = icmp ne i32 %326, 0
  br i1 %327, label %328, label %344

328:                                              ; preds = %323, %318
  %329 = load i32*, i32** %8, align 8
  %330 = call i32 @WPACKET_close(i32* %329)
  %331 = icmp ne i32 %330, 0
  br i1 %331, label %332, label %344

332:                                              ; preds = %328
  %333 = load i32*, i32** %8, align 8
  %334 = call i32 @WPACKET_close(i32* %333)
  %335 = icmp ne i32 %334, 0
  br i1 %335, label %336, label %344

336:                                              ; preds = %332
  %337 = load i32*, i32** %8, align 8
  %338 = call i32 @WPACKET_get_total_written(i32* %337, i64* %18)
  %339 = icmp ne i32 %338, 0
  br i1 %339, label %340, label %344

340:                                              ; preds = %336
  %341 = load i32*, i32** %8, align 8
  %342 = call i32 @WPACKET_fill_lengths(i32* %341)
  %343 = icmp ne i32 %342, 0
  br i1 %343, label %351, label %344

344:                                              ; preds = %340, %336, %332, %328, %323, %313, %306, %302, %298
  %345 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %346 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %347 = load i32, i32* @SSL_F_TLS_CONSTRUCT_CTOS_PSK, align 4
  %348 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %349 = call i32 @SSLfatal(%struct.TYPE_13__* %345, i32 %346, i32 %347, i32 %348)
  %350 = load i32, i32* @EXT_RETURN_FAIL, align 4
  store i32 %350, i32* %6, align 4
  br label %393

351:                                              ; preds = %340
  %352 = load i32*, i32** %8, align 8
  %353 = call i32 @WPACKET_get_curr(i32* %352)
  %354 = sext i32 %353 to i64
  %355 = load i64, i64* %18, align 8
  %356 = sub i64 %354, %355
  %357 = inttoptr i64 %356 to i8*
  store i8* %357, i8** %21, align 8
  %358 = load i32, i32* %25, align 4
  %359 = icmp ne i32 %358, 0
  br i1 %359, label %360, label %373

360:                                              ; preds = %351
  %361 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %362 = load i32*, i32** %23, align 8
  %363 = load i8*, i8** %21, align 8
  %364 = load i64, i64* %17, align 8
  %365 = load i8*, i8** %19, align 8
  %366 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %367 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %366, i32 0, i32 3
  %368 = load %struct.TYPE_14__*, %struct.TYPE_14__** %367, align 8
  %369 = call i32 @tls_psk_do_binder(%struct.TYPE_13__* %361, i32* %362, i8* %363, i64 %364, i32* null, i8* %365, %struct.TYPE_14__* %368, i32 1, i32 0)
  %370 = icmp ne i32 %369, 1
  br i1 %370, label %371, label %373

371:                                              ; preds = %360
  %372 = load i32, i32* @EXT_RETURN_FAIL, align 4
  store i32 %372, i32* %6, align 4
  br label %393

373:                                              ; preds = %360, %351
  %374 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %375 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %374, i32 0, i32 2
  %376 = load %struct.TYPE_14__*, %struct.TYPE_14__** %375, align 8
  %377 = icmp ne %struct.TYPE_14__* %376, null
  br i1 %377, label %378, label %391

378:                                              ; preds = %373
  %379 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %380 = load i32*, i32** %24, align 8
  %381 = load i8*, i8** %21, align 8
  %382 = load i64, i64* %17, align 8
  %383 = load i8*, i8** %20, align 8
  %384 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %385 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %384, i32 0, i32 2
  %386 = load %struct.TYPE_14__*, %struct.TYPE_14__** %385, align 8
  %387 = call i32 @tls_psk_do_binder(%struct.TYPE_13__* %379, i32* %380, i8* %381, i64 %382, i32* null, i8* %383, %struct.TYPE_14__* %386, i32 1, i32 1)
  %388 = icmp ne i32 %387, 1
  br i1 %388, label %389, label %391

389:                                              ; preds = %378
  %390 = load i32, i32* @EXT_RETURN_FAIL, align 4
  store i32 %390, i32* %6, align 4
  br label %393

391:                                              ; preds = %378, %373
  %392 = load i32, i32* @EXT_RETURN_SENT, align 4
  store i32 %392, i32* %6, align 4
  br label %393

393:                                              ; preds = %391, %389, %371, %344, %285, %258, %227, %204, %187, %169, %75, %49
  %394 = load i32, i32* %6, align 4
  ret i32 %394
}

declare dso_local i32* @ssl_handshake_md(%struct.TYPE_13__*) #1

declare dso_local i32 @SSLfatal(%struct.TYPE_13__*, i32, i32, i32) #1

declare dso_local i32* @ssl_md(i32) #1

declare dso_local i64 @time(i32*) #1

declare dso_local i64 @EVP_MD_size(i32*) #1

declare dso_local i32 @WPACKET_put_bytes_u16(i32*, i32) #1

declare dso_local i32 @WPACKET_start_sub_packet_u16(i32*) #1

declare dso_local i32 @WPACKET_sub_memcpy_u16(i32*, i32, i64) #1

declare dso_local i32 @WPACKET_put_bytes_u32(i32*, i32) #1

declare dso_local i32 @WPACKET_close(i32*) #1

declare dso_local i32 @WPACKET_get_total_written(i32*, i64*) #1

declare dso_local i32 @WPACKET_sub_allocate_bytes_u8(i32*, i64, i8**) #1

declare dso_local i32 @WPACKET_fill_lengths(i32*) #1

declare dso_local i32 @WPACKET_get_curr(i32*) #1

declare dso_local i32 @tls_psk_do_binder(%struct.TYPE_13__*, i32*, i8*, i64, i32*, i8*, %struct.TYPE_14__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
