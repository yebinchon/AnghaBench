; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_sslapitest.c_test_tls13_psk.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_sslapitest.c_test_tls13_psk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.test_tls13_psk.key = private unnamed_addr constant [48 x i8] c"\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\1A\1B\1C\1D\1E\1F !\22#$%&'()*+,-./", align 16
@TLS1_VERSION = common dso_local global i32 0, align 4
@cert = common dso_local global i32* null, align 8
@privkey = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [23 x i8] c"TLS_AES_128_GCM_SHA256\00", align 1
@use_session_cb = common dso_local global i32 0, align 4
@find_session_cb = common dso_local global i32 0, align 4
@psk_client_cb = common dso_local global i32 0, align 4
@psk_server_cb = common dso_local global i32 0, align 4
@pskid = common dso_local global i8* null, align 8
@srvid = common dso_local global i8* null, align 8
@use_session_cb_cnt = common dso_local global i32 0, align 4
@find_session_cb_cnt = common dso_local global i32 0, align 4
@psk_client_cb_cnt = common dso_local global i32 0, align 4
@psk_server_cb_cnt = common dso_local global i32 0, align 4
@SSL_ERROR_NONE = common dso_local global i32 0, align 4
@TLS13_AES_128_GCM_SHA256_BYTES = common dso_local global i32 0, align 4
@clientpsk = common dso_local global i32* null, align 8
@TLS1_3_VERSION = common dso_local global i32 0, align 4
@serverpsk = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"P-256\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"Dummy Identity\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @test_tls13_psk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_tls13_psk(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca [48 x i8], align 16
  %9 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32* null, i32** %3, align 8
  store i32* null, i32** %4, align 8
  store i32* null, i32** %5, align 8
  store i32* null, i32** %6, align 8
  store i32* null, i32** %7, align 8
  %10 = bitcast [48 x i8]* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %10, i8* align 16 getelementptr inbounds ([48 x i8], [48 x i8]* @__const.test_tls13_psk.key, i32 0, i32 0), i64 48, i1 false)
  store i32 0, i32* %9, align 4
  %11 = call i32 (...) @TLS_server_method()
  %12 = call i32 (...) @TLS_client_method()
  %13 = load i32, i32* @TLS1_VERSION, align 4
  %14 = load i32, i32* %2, align 4
  %15 = icmp eq i32 %14, 3
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  br label %19

17:                                               ; preds = %1
  %18 = load i32*, i32** @cert, align 8
  br label %19

19:                                               ; preds = %17, %16
  %20 = phi i32* [ null, %16 ], [ %18, %17 ]
  %21 = load i32, i32* %2, align 4
  %22 = icmp eq i32 %21, 3
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  br label %26

24:                                               ; preds = %19
  %25 = load i32*, i32** @privkey, align 8
  br label %26

26:                                               ; preds = %24, %23
  %27 = phi i32* [ null, %23 ], [ %25, %24 ]
  %28 = call i32 @create_ssl_ctx_pair(i32 %11, i32 %12, i32 %13, i32 0, i32** %3, i32** %4, i32* %20, i32* %27)
  %29 = call i32 @TEST_true(i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %26
  br label %462

32:                                               ; preds = %26
  %33 = load i32, i32* %2, align 4
  %34 = icmp ne i32 %33, 3
  br i1 %34, label %35, label %42

35:                                               ; preds = %32
  %36 = load i32*, i32** %4, align 8
  %37 = call i32 @SSL_CTX_set_ciphersuites(i32* %36, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %38 = call i32 @TEST_true(i32 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %35
  br label %462

41:                                               ; preds = %35
  br label %42

42:                                               ; preds = %41, %32
  %43 = load i32, i32* %2, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %42
  %46 = load i32, i32* %2, align 4
  %47 = icmp eq i32 %46, 1
  br i1 %47, label %48, label %55

48:                                               ; preds = %45, %42
  %49 = load i32*, i32** %4, align 8
  %50 = load i32, i32* @use_session_cb, align 4
  %51 = call i32 @SSL_CTX_set_psk_use_session_callback(i32* %49, i32 %50)
  %52 = load i32*, i32** %3, align 8
  %53 = load i32, i32* @find_session_cb, align 4
  %54 = call i32 @SSL_CTX_set_psk_find_session_callback(i32* %52, i32 %53)
  br label %55

55:                                               ; preds = %48, %45
  %56 = load i32, i32* %2, align 4
  %57 = icmp sge i32 %56, 1
  br i1 %57, label %58, label %65

58:                                               ; preds = %55
  %59 = load i32*, i32** %4, align 8
  %60 = load i32, i32* @psk_client_cb, align 4
  %61 = call i32 @SSL_CTX_set_psk_client_callback(i32* %59, i32 %60)
  %62 = load i32*, i32** %3, align 8
  %63 = load i32, i32* @psk_server_cb, align 4
  %64 = call i32 @SSL_CTX_set_psk_server_callback(i32* %62, i32 %63)
  br label %65

65:                                               ; preds = %58, %55
  %66 = load i8*, i8** @pskid, align 8
  store i8* %66, i8** @srvid, align 8
  store i32 0, i32* @use_session_cb_cnt, align 4
  store i32 0, i32* @find_session_cb_cnt, align 4
  store i32 0, i32* @psk_client_cb_cnt, align 4
  store i32 0, i32* @psk_server_cb_cnt, align 4
  %67 = load i32, i32* %2, align 4
  %68 = icmp ne i32 %67, 3
  br i1 %68, label %69, label %156

69:                                               ; preds = %65
  %70 = load i32*, i32** %3, align 8
  %71 = load i32*, i32** %4, align 8
  %72 = call i32 @create_ssl_objects(i32* %70, i32* %71, i32** %5, i32** %6, i32* null, i32* null)
  %73 = call i32 @TEST_true(i32 %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %92

75:                                               ; preds = %69
  %76 = load i32*, i32** %5, align 8
  %77 = load i32*, i32** %6, align 8
  %78 = load i32, i32* @SSL_ERROR_NONE, align 4
  %79 = call i32 @create_ssl_connection(i32* %76, i32* %77, i32 %78)
  %80 = call i32 @TEST_true(i32 %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %92

82:                                               ; preds = %75
  %83 = load i32*, i32** %6, align 8
  %84 = call i32 @SSL_session_reused(i32* %83)
  %85 = call i32 @TEST_false(i32 %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %82
  %88 = load i32*, i32** %5, align 8
  %89 = call i32 @SSL_session_reused(i32* %88)
  %90 = call i32 @TEST_false(i32 %89)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %93, label %92

92:                                               ; preds = %87, %82, %75, %69
  br label %462

93:                                               ; preds = %87
  %94 = load i32, i32* %2, align 4
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %99, label %96

96:                                               ; preds = %93
  %97 = load i32, i32* %2, align 4
  %98 = icmp eq i32 %97, 1
  br i1 %98, label %99, label %126

99:                                               ; preds = %96, %93
  %100 = load i32, i32* @use_session_cb_cnt, align 4
  %101 = icmp eq i32 %100, 1
  %102 = zext i1 %101 to i32
  %103 = call i32 @TEST_true(i32 %102)
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %124

105:                                              ; preds = %99
  %106 = load i32, i32* @find_session_cb_cnt, align 4
  %107 = icmp eq i32 %106, 0
  %108 = zext i1 %107 to i32
  %109 = call i32 @TEST_true(i32 %108)
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %124

111:                                              ; preds = %105
  %112 = load i32, i32* @psk_client_cb_cnt, align 4
  %113 = load i32, i32* %2, align 4
  %114 = icmp eq i32 %112, %113
  %115 = zext i1 %114 to i32
  %116 = call i32 @TEST_true(i32 %115)
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %124

118:                                              ; preds = %111
  %119 = load i32, i32* @psk_server_cb_cnt, align 4
  %120 = icmp eq i32 %119, 0
  %121 = zext i1 %120 to i32
  %122 = call i32 @TEST_true(i32 %121)
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %125, label %124

124:                                              ; preds = %118, %111, %105, %99
  br label %462

125:                                              ; preds = %118
  br label %152

126:                                              ; preds = %96
  %127 = load i32, i32* @use_session_cb_cnt, align 4
  %128 = icmp eq i32 %127, 0
  %129 = zext i1 %128 to i32
  %130 = call i32 @TEST_true(i32 %129)
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %150

132:                                              ; preds = %126
  %133 = load i32, i32* @find_session_cb_cnt, align 4
  %134 = icmp eq i32 %133, 0
  %135 = zext i1 %134 to i32
  %136 = call i32 @TEST_true(i32 %135)
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %150

138:                                              ; preds = %132
  %139 = load i32, i32* @psk_client_cb_cnt, align 4
  %140 = icmp eq i32 %139, 1
  %141 = zext i1 %140 to i32
  %142 = call i32 @TEST_true(i32 %141)
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %150

144:                                              ; preds = %138
  %145 = load i32, i32* @psk_server_cb_cnt, align 4
  %146 = icmp eq i32 %145, 0
  %147 = zext i1 %146 to i32
  %148 = call i32 @TEST_true(i32 %147)
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %151, label %150

150:                                              ; preds = %144, %138, %132, %126
  br label %462

151:                                              ; preds = %144
  br label %152

152:                                              ; preds = %151, %125
  %153 = load i32*, i32** %5, align 8
  %154 = load i32*, i32** %6, align 8
  %155 = call i32 @shutdown_ssl_connection(i32* %153, i32* %154)
  store i32* null, i32** %6, align 8
  store i32* null, i32** %5, align 8
  store i32 0, i32* @psk_client_cb_cnt, align 4
  store i32 0, i32* @use_session_cb_cnt, align 4
  br label %156

156:                                              ; preds = %152, %65
  %157 = load i32*, i32** %3, align 8
  %158 = load i32*, i32** %4, align 8
  %159 = call i32 @create_ssl_objects(i32* %157, i32* %158, i32** %5, i32** %6, i32* null, i32* null)
  %160 = call i32 @TEST_true(i32 %159)
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %163, label %162

162:                                              ; preds = %156
  br label %462

163:                                              ; preds = %156
  %164 = load i32*, i32** %6, align 8
  %165 = load i32, i32* @TLS13_AES_128_GCM_SHA256_BYTES, align 4
  %166 = call i32* @SSL_CIPHER_find(i32* %164, i32 %165)
  store i32* %166, i32** %7, align 8
  %167 = call i32* (...) @SSL_SESSION_new()
  store i32* %167, i32** @clientpsk, align 8
  %168 = load i32*, i32** @clientpsk, align 8
  %169 = call i32 @TEST_ptr(i32* %168)
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %198

171:                                              ; preds = %163
  %172 = load i32*, i32** %7, align 8
  %173 = call i32 @TEST_ptr(i32* %172)
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %198

175:                                              ; preds = %171
  %176 = load i32*, i32** @clientpsk, align 8
  %177 = getelementptr inbounds [48 x i8], [48 x i8]* %8, i64 0, i64 0
  %178 = call i32 @SSL_SESSION_set1_master_key(i32* %176, i8* %177, i32 48)
  %179 = call i32 @TEST_true(i32 %178)
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %198

181:                                              ; preds = %175
  %182 = load i32*, i32** @clientpsk, align 8
  %183 = load i32*, i32** %7, align 8
  %184 = call i32 @SSL_SESSION_set_cipher(i32* %182, i32* %183)
  %185 = call i32 @TEST_true(i32 %184)
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %198

187:                                              ; preds = %181
  %188 = load i32*, i32** @clientpsk, align 8
  %189 = load i32, i32* @TLS1_3_VERSION, align 4
  %190 = call i32 @SSL_SESSION_set_protocol_version(i32* %188, i32 %189)
  %191 = call i32 @TEST_true(i32 %190)
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %198

193:                                              ; preds = %187
  %194 = load i32*, i32** @clientpsk, align 8
  %195 = call i32 @SSL_SESSION_up_ref(i32* %194)
  %196 = call i32 @TEST_true(i32 %195)
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %199, label %198

198:                                              ; preds = %193, %187, %181, %175, %171, %163
  br label %462

199:                                              ; preds = %193
  %200 = load i32*, i32** @clientpsk, align 8
  store i32* %200, i32** @serverpsk, align 8
  %201 = load i32*, i32** %5, align 8
  %202 = load i32*, i32** %6, align 8
  %203 = load i32, i32* @SSL_ERROR_NONE, align 4
  %204 = call i32 @create_ssl_connection(i32* %201, i32* %202, i32 %203)
  %205 = call i32 @TEST_true(i32 %204)
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %217

207:                                              ; preds = %199
  %208 = load i32*, i32** %6, align 8
  %209 = call i32 @SSL_session_reused(i32* %208)
  %210 = call i32 @TEST_true(i32 %209)
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %217

212:                                              ; preds = %207
  %213 = load i32*, i32** %5, align 8
  %214 = call i32 @SSL_session_reused(i32* %213)
  %215 = call i32 @TEST_true(i32 %214)
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %218, label %217

217:                                              ; preds = %212, %207, %199
  br label %462

218:                                              ; preds = %212
  %219 = load i32, i32* %2, align 4
  %220 = icmp eq i32 %219, 0
  br i1 %220, label %224, label %221

221:                                              ; preds = %218
  %222 = load i32, i32* %2, align 4
  %223 = icmp eq i32 %222, 1
  br i1 %223, label %224, label %250

224:                                              ; preds = %221, %218
  %225 = load i32, i32* @use_session_cb_cnt, align 4
  %226 = icmp eq i32 %225, 1
  %227 = zext i1 %226 to i32
  %228 = call i32 @TEST_true(i32 %227)
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %248

230:                                              ; preds = %224
  %231 = load i32, i32* @find_session_cb_cnt, align 4
  %232 = icmp eq i32 %231, 1
  %233 = zext i1 %232 to i32
  %234 = call i32 @TEST_true(i32 %233)
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %236, label %248

236:                                              ; preds = %230
  %237 = load i32, i32* @psk_client_cb_cnt, align 4
  %238 = icmp eq i32 %237, 0
  %239 = zext i1 %238 to i32
  %240 = call i32 @TEST_true(i32 %239)
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %242, label %248

242:                                              ; preds = %236
  %243 = load i32, i32* @psk_server_cb_cnt, align 4
  %244 = icmp eq i32 %243, 0
  %245 = zext i1 %244 to i32
  %246 = call i32 @TEST_true(i32 %245)
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %249, label %248

248:                                              ; preds = %242, %236, %230, %224
  br label %462

249:                                              ; preds = %242
  br label %276

250:                                              ; preds = %221
  %251 = load i32, i32* @use_session_cb_cnt, align 4
  %252 = icmp eq i32 %251, 0
  %253 = zext i1 %252 to i32
  %254 = call i32 @TEST_true(i32 %253)
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %256, label %274

256:                                              ; preds = %250
  %257 = load i32, i32* @find_session_cb_cnt, align 4
  %258 = icmp eq i32 %257, 0
  %259 = zext i1 %258 to i32
  %260 = call i32 @TEST_true(i32 %259)
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %262, label %274

262:                                              ; preds = %256
  %263 = load i32, i32* @psk_client_cb_cnt, align 4
  %264 = icmp eq i32 %263, 1
  %265 = zext i1 %264 to i32
  %266 = call i32 @TEST_true(i32 %265)
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %268, label %274

268:                                              ; preds = %262
  %269 = load i32, i32* @psk_server_cb_cnt, align 4
  %270 = icmp eq i32 %269, 1
  %271 = zext i1 %270 to i32
  %272 = call i32 @TEST_true(i32 %271)
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %275, label %274

274:                                              ; preds = %268, %262, %256, %250
  br label %462

275:                                              ; preds = %268
  br label %276

276:                                              ; preds = %275, %249
  %277 = load i32*, i32** %5, align 8
  %278 = load i32*, i32** %6, align 8
  %279 = call i32 @shutdown_ssl_connection(i32* %277, i32* %278)
  store i32* null, i32** %6, align 8
  store i32* null, i32** %5, align 8
  store i32 0, i32* @find_session_cb_cnt, align 4
  store i32 0, i32* @use_session_cb_cnt, align 4
  store i32 0, i32* @psk_server_cb_cnt, align 4
  store i32 0, i32* @psk_client_cb_cnt, align 4
  %280 = load i32*, i32** %3, align 8
  %281 = load i32*, i32** %4, align 8
  %282 = call i32 @create_ssl_objects(i32* %280, i32* %281, i32** %5, i32** %6, i32* null, i32* null)
  %283 = call i32 @TEST_true(i32 %282)
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %286, label %285

285:                                              ; preds = %276
  br label %462

286:                                              ; preds = %276
  %287 = load i32*, i32** %5, align 8
  %288 = call i32 @SSL_set1_groups_list(i32* %287, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %289 = call i32 @TEST_true(i32 %288)
  %290 = icmp ne i32 %289, 0
  br i1 %290, label %292, label %291

291:                                              ; preds = %286
  br label %462

292:                                              ; preds = %286
  %293 = load i32*, i32** %5, align 8
  %294 = load i32*, i32** %6, align 8
  %295 = load i32, i32* @SSL_ERROR_NONE, align 4
  %296 = call i32 @create_ssl_connection(i32* %293, i32* %294, i32 %295)
  %297 = call i32 @TEST_true(i32 %296)
  %298 = icmp ne i32 %297, 0
  br i1 %298, label %299, label %309

299:                                              ; preds = %292
  %300 = load i32*, i32** %6, align 8
  %301 = call i32 @SSL_session_reused(i32* %300)
  %302 = call i32 @TEST_true(i32 %301)
  %303 = icmp ne i32 %302, 0
  br i1 %303, label %304, label %309

304:                                              ; preds = %299
  %305 = load i32*, i32** %5, align 8
  %306 = call i32 @SSL_session_reused(i32* %305)
  %307 = call i32 @TEST_true(i32 %306)
  %308 = icmp ne i32 %307, 0
  br i1 %308, label %310, label %309

309:                                              ; preds = %304, %299, %292
  br label %462

310:                                              ; preds = %304
  %311 = load i32, i32* %2, align 4
  %312 = icmp eq i32 %311, 0
  br i1 %312, label %316, label %313

313:                                              ; preds = %310
  %314 = load i32, i32* %2, align 4
  %315 = icmp eq i32 %314, 1
  br i1 %315, label %316, label %342

316:                                              ; preds = %313, %310
  %317 = load i32, i32* @use_session_cb_cnt, align 4
  %318 = icmp eq i32 %317, 2
  %319 = zext i1 %318 to i32
  %320 = call i32 @TEST_true(i32 %319)
  %321 = icmp ne i32 %320, 0
  br i1 %321, label %322, label %340

322:                                              ; preds = %316
  %323 = load i32, i32* @find_session_cb_cnt, align 4
  %324 = icmp eq i32 %323, 2
  %325 = zext i1 %324 to i32
  %326 = call i32 @TEST_true(i32 %325)
  %327 = icmp ne i32 %326, 0
  br i1 %327, label %328, label %340

328:                                              ; preds = %322
  %329 = load i32, i32* @psk_client_cb_cnt, align 4
  %330 = icmp eq i32 %329, 0
  %331 = zext i1 %330 to i32
  %332 = call i32 @TEST_true(i32 %331)
  %333 = icmp ne i32 %332, 0
  br i1 %333, label %334, label %340

334:                                              ; preds = %328
  %335 = load i32, i32* @psk_server_cb_cnt, align 4
  %336 = icmp eq i32 %335, 0
  %337 = zext i1 %336 to i32
  %338 = call i32 @TEST_true(i32 %337)
  %339 = icmp ne i32 %338, 0
  br i1 %339, label %341, label %340

340:                                              ; preds = %334, %328, %322, %316
  br label %462

341:                                              ; preds = %334
  br label %368

342:                                              ; preds = %313
  %343 = load i32, i32* @use_session_cb_cnt, align 4
  %344 = icmp eq i32 %343, 0
  %345 = zext i1 %344 to i32
  %346 = call i32 @TEST_true(i32 %345)
  %347 = icmp ne i32 %346, 0
  br i1 %347, label %348, label %366

348:                                              ; preds = %342
  %349 = load i32, i32* @find_session_cb_cnt, align 4
  %350 = icmp eq i32 %349, 0
  %351 = zext i1 %350 to i32
  %352 = call i32 @TEST_true(i32 %351)
  %353 = icmp ne i32 %352, 0
  br i1 %353, label %354, label %366

354:                                              ; preds = %348
  %355 = load i32, i32* @psk_client_cb_cnt, align 4
  %356 = icmp eq i32 %355, 2
  %357 = zext i1 %356 to i32
  %358 = call i32 @TEST_true(i32 %357)
  %359 = icmp ne i32 %358, 0
  br i1 %359, label %360, label %366

360:                                              ; preds = %354
  %361 = load i32, i32* @psk_server_cb_cnt, align 4
  %362 = icmp eq i32 %361, 2
  %363 = zext i1 %362 to i32
  %364 = call i32 @TEST_true(i32 %363)
  %365 = icmp ne i32 %364, 0
  br i1 %365, label %367, label %366

366:                                              ; preds = %360, %354, %348, %342
  br label %462

367:                                              ; preds = %360
  br label %368

368:                                              ; preds = %367, %341
  %369 = load i32*, i32** %5, align 8
  %370 = load i32*, i32** %6, align 8
  %371 = call i32 @shutdown_ssl_connection(i32* %369, i32* %370)
  store i32* null, i32** %6, align 8
  store i32* null, i32** %5, align 8
  store i32 0, i32* @find_session_cb_cnt, align 4
  store i32 0, i32* @use_session_cb_cnt, align 4
  store i32 0, i32* @psk_server_cb_cnt, align 4
  store i32 0, i32* @psk_client_cb_cnt, align 4
  %372 = load i32, i32* %2, align 4
  %373 = icmp ne i32 %372, 3
  br i1 %373, label %374, label %461

374:                                              ; preds = %368
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8** @srvid, align 8
  %375 = load i32*, i32** %3, align 8
  %376 = load i32*, i32** %4, align 8
  %377 = call i32 @create_ssl_objects(i32* %375, i32* %376, i32** %5, i32** %6, i32* null, i32* null)
  %378 = call i32 @TEST_true(i32 %377)
  %379 = icmp ne i32 %378, 0
  br i1 %379, label %380, label %397

380:                                              ; preds = %374
  %381 = load i32*, i32** %5, align 8
  %382 = load i32*, i32** %6, align 8
  %383 = load i32, i32* @SSL_ERROR_NONE, align 4
  %384 = call i32 @create_ssl_connection(i32* %381, i32* %382, i32 %383)
  %385 = call i32 @TEST_true(i32 %384)
  %386 = icmp ne i32 %385, 0
  br i1 %386, label %387, label %397

387:                                              ; preds = %380
  %388 = load i32*, i32** %6, align 8
  %389 = call i32 @SSL_session_reused(i32* %388)
  %390 = call i32 @TEST_false(i32 %389)
  %391 = icmp ne i32 %390, 0
  br i1 %391, label %392, label %397

392:                                              ; preds = %387
  %393 = load i32*, i32** %5, align 8
  %394 = call i32 @SSL_session_reused(i32* %393)
  %395 = call i32 @TEST_false(i32 %394)
  %396 = icmp ne i32 %395, 0
  br i1 %396, label %398, label %397

397:                                              ; preds = %392, %387, %380, %374
  br label %462

398:                                              ; preds = %392
  %399 = load i32, i32* %2, align 4
  %400 = icmp eq i32 %399, 0
  br i1 %400, label %404, label %401

401:                                              ; preds = %398
  %402 = load i32, i32* %2, align 4
  %403 = icmp eq i32 %402, 1
  br i1 %403, label %404, label %431

404:                                              ; preds = %401, %398
  %405 = load i32, i32* @use_session_cb_cnt, align 4
  %406 = icmp eq i32 %405, 1
  %407 = zext i1 %406 to i32
  %408 = call i32 @TEST_true(i32 %407)
  %409 = icmp ne i32 %408, 0
  br i1 %409, label %410, label %429

410:                                              ; preds = %404
  %411 = load i32, i32* @find_session_cb_cnt, align 4
  %412 = icmp eq i32 %411, 1
  %413 = zext i1 %412 to i32
  %414 = call i32 @TEST_true(i32 %413)
  %415 = icmp ne i32 %414, 0
  br i1 %415, label %416, label %429

416:                                              ; preds = %410
  %417 = load i32, i32* @psk_client_cb_cnt, align 4
  %418 = icmp eq i32 %417, 0
  %419 = zext i1 %418 to i32
  %420 = call i32 @TEST_true(i32 %419)
  %421 = icmp ne i32 %420, 0
  br i1 %421, label %422, label %429

422:                                              ; preds = %416
  %423 = load i32, i32* @psk_server_cb_cnt, align 4
  %424 = load i32, i32* %2, align 4
  %425 = icmp eq i32 %423, %424
  %426 = zext i1 %425 to i32
  %427 = call i32 @TEST_true(i32 %426)
  %428 = icmp ne i32 %427, 0
  br i1 %428, label %430, label %429

429:                                              ; preds = %422, %416, %410, %404
  br label %462

430:                                              ; preds = %422
  br label %457

431:                                              ; preds = %401
  %432 = load i32, i32* @use_session_cb_cnt, align 4
  %433 = icmp eq i32 %432, 0
  %434 = zext i1 %433 to i32
  %435 = call i32 @TEST_true(i32 %434)
  %436 = icmp ne i32 %435, 0
  br i1 %436, label %437, label %455

437:                                              ; preds = %431
  %438 = load i32, i32* @find_session_cb_cnt, align 4
  %439 = icmp eq i32 %438, 0
  %440 = zext i1 %439 to i32
  %441 = call i32 @TEST_true(i32 %440)
  %442 = icmp ne i32 %441, 0
  br i1 %442, label %443, label %455

443:                                              ; preds = %437
  %444 = load i32, i32* @psk_client_cb_cnt, align 4
  %445 = icmp eq i32 %444, 1
  %446 = zext i1 %445 to i32
  %447 = call i32 @TEST_true(i32 %446)
  %448 = icmp ne i32 %447, 0
  br i1 %448, label %449, label %455

449:                                              ; preds = %443
  %450 = load i32, i32* @psk_server_cb_cnt, align 4
  %451 = icmp eq i32 %450, 1
  %452 = zext i1 %451 to i32
  %453 = call i32 @TEST_true(i32 %452)
  %454 = icmp ne i32 %453, 0
  br i1 %454, label %456, label %455

455:                                              ; preds = %449, %443, %437, %431
  br label %462

456:                                              ; preds = %449
  br label %457

457:                                              ; preds = %456, %430
  %458 = load i32*, i32** %5, align 8
  %459 = load i32*, i32** %6, align 8
  %460 = call i32 @shutdown_ssl_connection(i32* %458, i32* %459)
  store i32* null, i32** %6, align 8
  store i32* null, i32** %5, align 8
  br label %461

461:                                              ; preds = %457, %368
  store i32 1, i32* %9, align 4
  br label %462

462:                                              ; preds = %461, %455, %429, %397, %366, %340, %309, %291, %285, %274, %248, %217, %198, %162, %150, %124, %92, %40, %31
  %463 = load i32*, i32** @clientpsk, align 8
  %464 = call i32 @SSL_SESSION_free(i32* %463)
  %465 = load i32*, i32** @serverpsk, align 8
  %466 = call i32 @SSL_SESSION_free(i32* %465)
  store i32* null, i32** @serverpsk, align 8
  store i32* null, i32** @clientpsk, align 8
  %467 = load i32*, i32** %5, align 8
  %468 = call i32 @SSL_free(i32* %467)
  %469 = load i32*, i32** %6, align 8
  %470 = call i32 @SSL_free(i32* %469)
  %471 = load i32*, i32** %3, align 8
  %472 = call i32 @SSL_CTX_free(i32* %471)
  %473 = load i32*, i32** %4, align 8
  %474 = call i32 @SSL_CTX_free(i32* %473)
  %475 = load i32, i32* %9, align 4
  ret i32 %475
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @TEST_true(i32) #2

declare dso_local i32 @create_ssl_ctx_pair(i32, i32, i32, i32, i32**, i32**, i32*, i32*) #2

declare dso_local i32 @TLS_server_method(...) #2

declare dso_local i32 @TLS_client_method(...) #2

declare dso_local i32 @SSL_CTX_set_ciphersuites(i32*, i8*) #2

declare dso_local i32 @SSL_CTX_set_psk_use_session_callback(i32*, i32) #2

declare dso_local i32 @SSL_CTX_set_psk_find_session_callback(i32*, i32) #2

declare dso_local i32 @SSL_CTX_set_psk_client_callback(i32*, i32) #2

declare dso_local i32 @SSL_CTX_set_psk_server_callback(i32*, i32) #2

declare dso_local i32 @create_ssl_objects(i32*, i32*, i32**, i32**, i32*, i32*) #2

declare dso_local i32 @create_ssl_connection(i32*, i32*, i32) #2

declare dso_local i32 @TEST_false(i32) #2

declare dso_local i32 @SSL_session_reused(i32*) #2

declare dso_local i32 @shutdown_ssl_connection(i32*, i32*) #2

declare dso_local i32* @SSL_CIPHER_find(i32*, i32) #2

declare dso_local i32* @SSL_SESSION_new(...) #2

declare dso_local i32 @TEST_ptr(i32*) #2

declare dso_local i32 @SSL_SESSION_set1_master_key(i32*, i8*, i32) #2

declare dso_local i32 @SSL_SESSION_set_cipher(i32*, i32*) #2

declare dso_local i32 @SSL_SESSION_set_protocol_version(i32*, i32) #2

declare dso_local i32 @SSL_SESSION_up_ref(i32*) #2

declare dso_local i32 @SSL_set1_groups_list(i32*, i8*) #2

declare dso_local i32 @SSL_SESSION_free(i32*) #2

declare dso_local i32 @SSL_free(i32*) #2

declare dso_local i32 @SSL_CTX_free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
