; ModuleID = '/home/carl/AnghaBench/openssl/ssl/statem/extr_statem_clnt.c_tls_construct_client_hello.c'
source_filename = "/home/carl/AnghaBench/openssl/ssl/statem/extr_statem_clnt.c_tls_construct_client_hello.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_27__ = type { i64, i64, i32, i64, i8*, %struct.TYPE_24__*, %struct.TYPE_23__, %struct.TYPE_21__*, %struct.TYPE_25__*, i64, i32 }
%struct.TYPE_24__ = type { i64 }
%struct.TYPE_23__ = type { i8*, %struct.TYPE_22__ }
%struct.TYPE_22__ = type { i64 }
%struct.TYPE_21__ = type { i32, i32 }
%struct.TYPE_25__ = type { i64, i8*, i32 }
%struct.TYPE_26__ = type { i32 }

@SSL_AD_INTERNAL_ERROR = common dso_local global i32 0, align 4
@SSL_F_TLS_CONSTRUCT_CLIENT_HELLO = common dso_local global i32 0, align 4
@SSL_HRR_NONE = common dso_local global i64 0, align 8
@DOWNGRADE_NONE = common dso_local global i32 0, align 4
@ERR_R_INTERNAL_ERROR = common dso_local global i32 0, align 4
@SSL3_RANDOM_SIZE = common dso_local global i64 0, align 8
@TLS1_3_VERSION = common dso_local global i64 0, align 8
@SSL_OP_ENABLE_MIDDLEBOX_COMPAT = common dso_local global i32 0, align 4
@SSL_EXT_CLIENT_HELLO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tls_construct_client_hello(%struct.TYPE_27__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_27__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_26__*, align 8
  %11 = alloca %struct.TYPE_25__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.TYPE_27__* %0, %struct.TYPE_27__** %4, align 8
  store i32* %1, i32** %5, align 8
  %15 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %15, i32 0, i32 8
  %17 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  store %struct.TYPE_25__* %17, %struct.TYPE_25__** %11, align 8
  %18 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %19 = call i32 @ssl_set_client_hello_version(%struct.TYPE_27__* %18)
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %9, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %2
  %23 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %24 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %25 = load i32, i32* @SSL_F_TLS_CONSTRUCT_CLIENT_HELLO, align 4
  %26 = load i32, i32* %9, align 4
  %27 = call i32 @SSLfatal(%struct.TYPE_27__* %23, i32 %24, i32 %25, i32 %26)
  store i32 0, i32* %3, align 4
  br label %392

28:                                               ; preds = %2
  %29 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %30 = icmp eq %struct.TYPE_25__* %29, null
  br i1 %30, label %42, label %31

31:                                               ; preds = %28
  %32 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %33 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %34 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @ssl_version_supported(%struct.TYPE_27__* %32, i64 %35, i32* null)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %31
  %39 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %40 = call i32 @SSL_SESSION_is_resumable(%struct.TYPE_25__* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %54, label %42

42:                                               ; preds = %38, %31, %28
  %43 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @SSL_HRR_NONE, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %53

48:                                               ; preds = %42
  %49 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %50 = call i32 @ssl_get_new_session(%struct.TYPE_27__* %49, i32 0)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %48
  store i32 0, i32* %3, align 4
  br label %392

53:                                               ; preds = %48, %42
  br label %54

54:                                               ; preds = %53, %38
  %55 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %55, i32 0, i32 6
  %57 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %56, i32 0, i32 0
  %58 = load i8*, i8** %57, align 8
  store i8* %58, i8** %6, align 8
  %59 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %60 = call i64 @SSL_IS_DTLS(%struct.TYPE_27__* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %78

62:                                               ; preds = %54
  store i32 1, i32* %8, align 4
  store i64 0, i64* %13, align 8
  br label %63

63:                                               ; preds = %74, %62
  %64 = load i64, i64* %13, align 8
  %65 = icmp ult i64 %64, 8
  br i1 %65, label %66, label %77

66:                                               ; preds = %63
  %67 = load i8*, i8** %6, align 8
  %68 = load i64, i64* %13, align 8
  %69 = getelementptr inbounds i8, i8* %67, i64 %68
  %70 = load i8, i8* %69, align 1
  %71 = icmp ne i8 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %66
  store i32 0, i32* %8, align 4
  br label %77

73:                                               ; preds = %66
  br label %74

74:                                               ; preds = %73
  %75 = load i64, i64* %13, align 8
  %76 = add i64 %75, 1
  store i64 %76, i64* %13, align 8
  br label %63

77:                                               ; preds = %72, %63
  br label %85

78:                                               ; preds = %54
  %79 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @SSL_HRR_NONE, align 8
  %83 = icmp eq i64 %81, %82
  %84 = zext i1 %83 to i32
  store i32 %84, i32* %8, align 4
  br label %85

85:                                               ; preds = %78, %77
  %86 = load i32, i32* %8, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %100

88:                                               ; preds = %85
  %89 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %90 = load i8*, i8** %6, align 8
  %91 = load i32, i32* @DOWNGRADE_NONE, align 4
  %92 = call i64 @ssl_fill_hello_random(%struct.TYPE_27__* %89, i32 0, i8* %90, i32 8, i32 %91)
  %93 = icmp sle i64 %92, 0
  br i1 %93, label %94, label %100

94:                                               ; preds = %88
  %95 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %96 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %97 = load i32, i32* @SSL_F_TLS_CONSTRUCT_CLIENT_HELLO, align 4
  %98 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %99 = call i32 @SSLfatal(%struct.TYPE_27__* %95, i32 %96, i32 %97, i32 %98)
  store i32 0, i32* %3, align 4
  br label %392

100:                                              ; preds = %88, %85
  %101 = load i32*, i32** %5, align 8
  %102 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %102, i32 0, i32 10
  %104 = load i32, i32* %103, align 8
  %105 = call i32 @WPACKET_put_bytes_u16(i32* %101, i32 %104)
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %116

107:                                              ; preds = %100
  %108 = load i32*, i32** %5, align 8
  %109 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %109, i32 0, i32 6
  %111 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %110, i32 0, i32 0
  %112 = load i8*, i8** %111, align 8
  %113 = load i64, i64* @SSL3_RANDOM_SIZE, align 8
  %114 = call i32 @WPACKET_memcpy(i32* %108, i8* %112, i64 %113)
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %122, label %116

116:                                              ; preds = %107, %100
  %117 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %118 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %119 = load i32, i32* @SSL_F_TLS_CONSTRUCT_CLIENT_HELLO, align 4
  %120 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %121 = call i32 @SSLfatal(%struct.TYPE_27__* %117, i32 %118, i32 %119, i32 %120)
  store i32 0, i32* %3, align 4
  br label %392

122:                                              ; preds = %107
  %123 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %124 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %123, i32 0, i32 8
  %125 = load %struct.TYPE_25__*, %struct.TYPE_25__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %125, i32 0, i32 1
  %127 = load i8*, i8** %126, align 8
  store i8* %127, i8** %12, align 8
  %128 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %129 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %128, i32 0, i32 9
  %130 = load i64, i64* %129, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %140, label %132

132:                                              ; preds = %122
  %133 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %134 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %133, i32 0, i32 8
  %135 = load %struct.TYPE_25__*, %struct.TYPE_25__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = load i64, i64* @TLS1_3_VERSION, align 8
  %139 = icmp eq i64 %137, %138
  br i1 %139, label %140, label %181

140:                                              ; preds = %132, %122
  %141 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %142 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %141, i32 0, i32 1
  %143 = load i64, i64* %142, align 8
  %144 = load i64, i64* @TLS1_3_VERSION, align 8
  %145 = icmp eq i64 %143, %144
  br i1 %145, label %146, label %179

146:                                              ; preds = %140
  %147 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %148 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 8
  %150 = load i32, i32* @SSL_OP_ENABLE_MIDDLEBOX_COMPAT, align 4
  %151 = and i32 %149, %150
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %179

153:                                              ; preds = %146
  store i64 8, i64* %7, align 8
  %154 = load i64, i64* %7, align 8
  %155 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %156 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %155, i32 0, i32 3
  store i64 %154, i64* %156, align 8
  %157 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %158 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %157, i32 0, i32 4
  %159 = load i8*, i8** %158, align 8
  store i8* %159, i8** %12, align 8
  %160 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %161 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = load i64, i64* @SSL_HRR_NONE, align 8
  %164 = icmp eq i64 %162, %163
  br i1 %164, label %165, label %178

165:                                              ; preds = %153
  %166 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %167 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %166, i32 0, i32 4
  %168 = load i8*, i8** %167, align 8
  %169 = load i64, i64* %7, align 8
  %170 = call i64 @RAND_bytes(i8* %168, i64 %169)
  %171 = icmp sle i64 %170, 0
  br i1 %171, label %172, label %178

172:                                              ; preds = %165
  %173 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %174 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %175 = load i32, i32* @SSL_F_TLS_CONSTRUCT_CLIENT_HELLO, align 4
  %176 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %177 = call i32 @SSLfatal(%struct.TYPE_27__* %173, i32 %174, i32 %175, i32 %176)
  store i32 0, i32* %3, align 4
  br label %392

178:                                              ; preds = %165, %153
  br label %180

179:                                              ; preds = %146, %140
  store i64 0, i64* %7, align 8
  br label %180

180:                                              ; preds = %179, %178
  br label %217

181:                                              ; preds = %132
  %182 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %183 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %182, i32 0, i32 8
  %184 = load %struct.TYPE_25__*, %struct.TYPE_25__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %184, i32 0, i32 2
  %186 = load i32, i32* %185, align 8
  %187 = sext i32 %186 to i64
  %188 = icmp ule i64 %187, 8
  %189 = zext i1 %188 to i32
  %190 = call i32 @assert(i32 %189)
  %191 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %192 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %191, i32 0, i32 8
  %193 = load %struct.TYPE_25__*, %struct.TYPE_25__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %193, i32 0, i32 2
  %195 = load i32, i32* %194, align 8
  %196 = sext i32 %195 to i64
  store i64 %196, i64* %7, align 8
  %197 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %198 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %197, i32 0, i32 1
  %199 = load i64, i64* %198, align 8
  %200 = load i64, i64* @TLS1_3_VERSION, align 8
  %201 = icmp eq i64 %199, %200
  br i1 %201, label %202, label %216

202:                                              ; preds = %181
  %203 = load i64, i64* %7, align 8
  %204 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %205 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %204, i32 0, i32 3
  store i64 %203, i64* %205, align 8
  %206 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %207 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %206, i32 0, i32 4
  %208 = load i8*, i8** %207, align 8
  %209 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %210 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %209, i32 0, i32 8
  %211 = load %struct.TYPE_25__*, %struct.TYPE_25__** %210, align 8
  %212 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %211, i32 0, i32 1
  %213 = load i8*, i8** %212, align 8
  %214 = load i64, i64* %7, align 8
  %215 = call i32 @memcpy(i8* %208, i8* %213, i64 %214)
  br label %216

216:                                              ; preds = %202, %181
  br label %217

217:                                              ; preds = %216, %180
  %218 = load i32*, i32** %5, align 8
  %219 = call i32 @WPACKET_start_sub_packet_u8(i32* %218)
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %234

221:                                              ; preds = %217
  %222 = load i64, i64* %7, align 8
  %223 = icmp ne i64 %222, 0
  br i1 %223, label %224, label %230

224:                                              ; preds = %221
  %225 = load i32*, i32** %5, align 8
  %226 = load i8*, i8** %12, align 8
  %227 = load i64, i64* %7, align 8
  %228 = call i32 @WPACKET_memcpy(i32* %225, i8* %226, i64 %227)
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %234

230:                                              ; preds = %224, %221
  %231 = load i32*, i32** %5, align 8
  %232 = call i32 @WPACKET_close(i32* %231)
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %240, label %234

234:                                              ; preds = %230, %224, %217
  %235 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %236 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %237 = load i32, i32* @SSL_F_TLS_CONSTRUCT_CLIENT_HELLO, align 4
  %238 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %239 = call i32 @SSLfatal(%struct.TYPE_27__* %235, i32 %236, i32 %237, i32 %238)
  store i32 0, i32* %3, align 4
  br label %392

240:                                              ; preds = %230
  %241 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %242 = call i64 @SSL_IS_DTLS(%struct.TYPE_27__* %241)
  %243 = icmp ne i64 %242, 0
  br i1 %243, label %244, label %273

244:                                              ; preds = %240
  %245 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %246 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %245, i32 0, i32 7
  %247 = load %struct.TYPE_21__*, %struct.TYPE_21__** %246, align 8
  %248 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 4
  %250 = sext i32 %249 to i64
  %251 = icmp ugt i64 %250, 4
  br i1 %251, label %266, label %252

252:                                              ; preds = %244
  %253 = load i32*, i32** %5, align 8
  %254 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %255 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %254, i32 0, i32 7
  %256 = load %struct.TYPE_21__*, %struct.TYPE_21__** %255, align 8
  %257 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %256, i32 0, i32 1
  %258 = load i32, i32* %257, align 4
  %259 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %260 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %259, i32 0, i32 7
  %261 = load %struct.TYPE_21__*, %struct.TYPE_21__** %260, align 8
  %262 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 4
  %264 = call i32 @WPACKET_sub_memcpy_u8(i32* %253, i32 %258, i32 %263)
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %272, label %266

266:                                              ; preds = %252, %244
  %267 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %268 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %269 = load i32, i32* @SSL_F_TLS_CONSTRUCT_CLIENT_HELLO, align 4
  %270 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %271 = call i32 @SSLfatal(%struct.TYPE_27__* %267, i32 %268, i32 %269, i32 %270)
  store i32 0, i32* %3, align 4
  br label %392

272:                                              ; preds = %252
  br label %273

273:                                              ; preds = %272, %240
  %274 = load i32*, i32** %5, align 8
  %275 = call i32 @WPACKET_start_sub_packet_u16(i32* %274)
  %276 = icmp ne i32 %275, 0
  br i1 %276, label %283, label %277

277:                                              ; preds = %273
  %278 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %279 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %280 = load i32, i32* @SSL_F_TLS_CONSTRUCT_CLIENT_HELLO, align 4
  %281 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %282 = call i32 @SSLfatal(%struct.TYPE_27__* %278, i32 %279, i32 %280, i32 %281)
  store i32 0, i32* %3, align 4
  br label %392

283:                                              ; preds = %273
  %284 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %285 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %286 = call i32 @SSL_get_ciphers(%struct.TYPE_27__* %285)
  %287 = load i32*, i32** %5, align 8
  %288 = call i32 @ssl_cipher_list_to_bytes(%struct.TYPE_27__* %284, i32 %286, i32* %287)
  %289 = icmp ne i32 %288, 0
  br i1 %289, label %291, label %290

290:                                              ; preds = %283
  store i32 0, i32* %3, align 4
  br label %392

291:                                              ; preds = %283
  %292 = load i32*, i32** %5, align 8
  %293 = call i32 @WPACKET_close(i32* %292)
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %301, label %295

295:                                              ; preds = %291
  %296 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %297 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %298 = load i32, i32* @SSL_F_TLS_CONSTRUCT_CLIENT_HELLO, align 4
  %299 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %300 = call i32 @SSLfatal(%struct.TYPE_27__* %296, i32 %297, i32 %298, i32 %299)
  store i32 0, i32* %3, align 4
  br label %392

301:                                              ; preds = %291
  %302 = load i32*, i32** %5, align 8
  %303 = call i32 @WPACKET_start_sub_packet_u8(i32* %302)
  %304 = icmp ne i32 %303, 0
  br i1 %304, label %311, label %305

305:                                              ; preds = %301
  %306 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %307 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %308 = load i32, i32* @SSL_F_TLS_CONSTRUCT_CLIENT_HELLO, align 4
  %309 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %310 = call i32 @SSLfatal(%struct.TYPE_27__* %306, i32 %307, i32 %308, i32 %309)
  store i32 0, i32* %3, align 4
  br label %392

311:                                              ; preds = %301
  %312 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %313 = call i64 @ssl_allow_compression(%struct.TYPE_27__* %312)
  %314 = icmp ne i64 %313, 0
  br i1 %314, label %315, label %370

315:                                              ; preds = %311
  %316 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %317 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %316, i32 0, i32 5
  %318 = load %struct.TYPE_24__*, %struct.TYPE_24__** %317, align 8
  %319 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %318, i32 0, i32 0
  %320 = load i64, i64* %319, align 8
  %321 = icmp ne i64 %320, 0
  br i1 %321, label %322, label %370

322:                                              ; preds = %315
  %323 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %324 = call i64 @SSL_IS_DTLS(%struct.TYPE_27__* %323)
  %325 = icmp ne i64 %324, 0
  br i1 %325, label %334, label %326

326:                                              ; preds = %322
  %327 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %328 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %327, i32 0, i32 6
  %329 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %328, i32 0, i32 1
  %330 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %329, i32 0, i32 0
  %331 = load i64, i64* %330, align 8
  %332 = load i64, i64* @TLS1_3_VERSION, align 8
  %333 = icmp slt i64 %331, %332
  br i1 %333, label %334, label %370

334:                                              ; preds = %326, %322
  %335 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %336 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %335, i32 0, i32 5
  %337 = load %struct.TYPE_24__*, %struct.TYPE_24__** %336, align 8
  %338 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %337, i32 0, i32 0
  %339 = load i64, i64* %338, align 8
  %340 = call i32 @sk_SSL_COMP_num(i64 %339)
  store i32 %340, i32* %14, align 4
  store i32 0, i32* %8, align 4
  br label %341

341:                                              ; preds = %366, %334
  %342 = load i32, i32* %8, align 4
  %343 = load i32, i32* %14, align 4
  %344 = icmp slt i32 %342, %343
  br i1 %344, label %345, label %369

345:                                              ; preds = %341
  %346 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %347 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %346, i32 0, i32 5
  %348 = load %struct.TYPE_24__*, %struct.TYPE_24__** %347, align 8
  %349 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %348, i32 0, i32 0
  %350 = load i64, i64* %349, align 8
  %351 = load i32, i32* %8, align 4
  %352 = call %struct.TYPE_26__* @sk_SSL_COMP_value(i64 %350, i32 %351)
  store %struct.TYPE_26__* %352, %struct.TYPE_26__** %10, align 8
  %353 = load i32*, i32** %5, align 8
  %354 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %355 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %354, i32 0, i32 0
  %356 = load i32, i32* %355, align 4
  %357 = call i32 @WPACKET_put_bytes_u8(i32* %353, i32 %356)
  %358 = icmp ne i32 %357, 0
  br i1 %358, label %365, label %359

359:                                              ; preds = %345
  %360 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %361 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %362 = load i32, i32* @SSL_F_TLS_CONSTRUCT_CLIENT_HELLO, align 4
  %363 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %364 = call i32 @SSLfatal(%struct.TYPE_27__* %360, i32 %361, i32 %362, i32 %363)
  store i32 0, i32* %3, align 4
  br label %392

365:                                              ; preds = %345
  br label %366

366:                                              ; preds = %365
  %367 = load i32, i32* %8, align 4
  %368 = add nsw i32 %367, 1
  store i32 %368, i32* %8, align 4
  br label %341

369:                                              ; preds = %341
  br label %370

370:                                              ; preds = %369, %326, %315, %311
  %371 = load i32*, i32** %5, align 8
  %372 = call i32 @WPACKET_put_bytes_u8(i32* %371, i32 0)
  %373 = icmp ne i32 %372, 0
  br i1 %373, label %374, label %378

374:                                              ; preds = %370
  %375 = load i32*, i32** %5, align 8
  %376 = call i32 @WPACKET_close(i32* %375)
  %377 = icmp ne i32 %376, 0
  br i1 %377, label %384, label %378

378:                                              ; preds = %374, %370
  %379 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %380 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %381 = load i32, i32* @SSL_F_TLS_CONSTRUCT_CLIENT_HELLO, align 4
  %382 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %383 = call i32 @SSLfatal(%struct.TYPE_27__* %379, i32 %380, i32 %381, i32 %382)
  store i32 0, i32* %3, align 4
  br label %392

384:                                              ; preds = %374
  %385 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %386 = load i32*, i32** %5, align 8
  %387 = load i32, i32* @SSL_EXT_CLIENT_HELLO, align 4
  %388 = call i32 @tls_construct_extensions(%struct.TYPE_27__* %385, i32* %386, i32 %387, i32* null, i32 0)
  %389 = icmp ne i32 %388, 0
  br i1 %389, label %391, label %390

390:                                              ; preds = %384
  store i32 0, i32* %3, align 4
  br label %392

391:                                              ; preds = %384
  store i32 1, i32* %3, align 4
  br label %392

392:                                              ; preds = %391, %390, %378, %359, %305, %295, %290, %277, %266, %234, %172, %116, %94, %52, %22
  %393 = load i32, i32* %3, align 4
  ret i32 %393
}

declare dso_local i32 @ssl_set_client_hello_version(%struct.TYPE_27__*) #1

declare dso_local i32 @SSLfatal(%struct.TYPE_27__*, i32, i32, i32) #1

declare dso_local i32 @ssl_version_supported(%struct.TYPE_27__*, i64, i32*) #1

declare dso_local i32 @SSL_SESSION_is_resumable(%struct.TYPE_25__*) #1

declare dso_local i32 @ssl_get_new_session(%struct.TYPE_27__*, i32) #1

declare dso_local i64 @SSL_IS_DTLS(%struct.TYPE_27__*) #1

declare dso_local i64 @ssl_fill_hello_random(%struct.TYPE_27__*, i32, i8*, i32, i32) #1

declare dso_local i32 @WPACKET_put_bytes_u16(i32*, i32) #1

declare dso_local i32 @WPACKET_memcpy(i32*, i8*, i64) #1

declare dso_local i64 @RAND_bytes(i8*, i64) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @WPACKET_start_sub_packet_u8(i32*) #1

declare dso_local i32 @WPACKET_close(i32*) #1

declare dso_local i32 @WPACKET_sub_memcpy_u8(i32*, i32, i32) #1

declare dso_local i32 @WPACKET_start_sub_packet_u16(i32*) #1

declare dso_local i32 @ssl_cipher_list_to_bytes(%struct.TYPE_27__*, i32, i32*) #1

declare dso_local i32 @SSL_get_ciphers(%struct.TYPE_27__*) #1

declare dso_local i64 @ssl_allow_compression(%struct.TYPE_27__*) #1

declare dso_local i32 @sk_SSL_COMP_num(i64) #1

declare dso_local %struct.TYPE_26__* @sk_SSL_COMP_value(i64, i32) #1

declare dso_local i32 @WPACKET_put_bytes_u8(i32*, i32) #1

declare dso_local i32 @tls_construct_extensions(%struct.TYPE_27__*, i32*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
