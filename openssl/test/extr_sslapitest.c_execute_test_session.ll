; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_sslapitest.c_execute_test_session.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_sslapitest.c_execute_test_session.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@remove_called = common dso_local global i64 0, align 8
@new_called = common dso_local global i64 0, align 8
@TLS1_3_VERSION = common dso_local global i32 0, align 4
@TLS1_VERSION = common dso_local global i32 0, align 4
@cert = common dso_local global i32 0, align 4
@privkey = common dso_local global i32 0, align 4
@new_session_cb = common dso_local global i32* null, align 8
@remove_session_cb = common dso_local global i32* null, align 8
@SSL_SESS_CACHE_CLIENT = common dso_local global i32 0, align 4
@SSL_SESS_CACHE_NO_INTERNAL_STORE = common dso_local global i32 0, align 4
@SSL_ERROR_NONE = common dso_local global i32 0, align 4
@TLS1_1_VERSION = common dso_local global i32 0, align 4
@get_session_cb = common dso_local global i32 0, align 4
@get_sess_val = common dso_local global i32* null, align 8
@SSL_SESS_CACHE_SERVER = common dso_local global i32 0, align 4
@TLS1_2_VERSION = common dso_local global i32 0, align 4
@SSL_OP_NO_TICKET = common dso_local global i32 0, align 4
@get_called = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @execute_test_session to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @execute_test_session(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32* null, i32** %8, align 8
  store i32* null, i32** %9, align 8
  store i32* null, i32** %10, align 8
  store i32* null, i32** %11, align 8
  store i32* null, i32** %12, align 8
  store i32* null, i32** %13, align 8
  store i32* null, i32** %14, align 8
  store i32* null, i32** %15, align 8
  store i32* null, i32** %16, align 8
  store i32* null, i32** %17, align 8
  store i32 0, i32* %18, align 4
  store i32 1, i32* %19, align 4
  store i64 0, i64* @remove_called, align 8
  store i64 0, i64* @new_called, align 8
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @TLS1_3_VERSION, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %3
  store i32 2, i32* %19, align 4
  br label %25

25:                                               ; preds = %24, %3
  %26 = call i32 (...) @TLS_server_method()
  %27 = call i32 (...) @TLS_client_method()
  %28 = load i32, i32* @TLS1_VERSION, align 4
  %29 = load i32, i32* @cert, align 4
  %30 = load i32, i32* @privkey, align 4
  %31 = call i32 @create_ssl_ctx_pair(i32 %26, i32 %27, i32 %28, i32 0, i32** %8, i32** %9, i32 %29, i32 %30)
  %32 = call i32 @TEST_true(i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %25
  store i32 0, i32* %4, align 4
  br label %538

35:                                               ; preds = %25
  %36 = load i32*, i32** %9, align 8
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @SSL_CTX_set_min_proto_version(i32* %36, i32 %37)
  %39 = load i32*, i32** %9, align 8
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @SSL_CTX_set_max_proto_version(i32* %39, i32 %40)
  %42 = load i32, i32* %7, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %35
  %45 = load i32*, i32** %9, align 8
  %46 = load i32*, i32** @new_session_cb, align 8
  %47 = call i32 @SSL_CTX_sess_set_new_cb(i32* %45, i32* %46)
  %48 = load i32*, i32** %9, align 8
  %49 = load i32*, i32** @remove_session_cb, align 8
  %50 = call i32 @SSL_CTX_sess_set_remove_cb(i32* %48, i32* %49)
  br label %51

51:                                               ; preds = %44, %35
  %52 = load i32, i32* %6, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %51
  %55 = load i32*, i32** %9, align 8
  %56 = load i32, i32* @SSL_SESS_CACHE_CLIENT, align 4
  %57 = call i32 @SSL_CTX_set_session_cache_mode(i32* %55, i32 %56)
  br label %64

58:                                               ; preds = %51
  %59 = load i32*, i32** %9, align 8
  %60 = load i32, i32* @SSL_SESS_CACHE_CLIENT, align 4
  %61 = load i32, i32* @SSL_SESS_CACHE_NO_INTERNAL_STORE, align 4
  %62 = or i32 %60, %61
  %63 = call i32 @SSL_CTX_set_session_cache_mode(i32* %59, i32 %62)
  br label %64

64:                                               ; preds = %58, %54
  %65 = load i32*, i32** %8, align 8
  %66 = load i32*, i32** %9, align 8
  %67 = call i32 @create_ssl_objects(i32* %65, i32* %66, i32** %10, i32** %11, i32* null, i32* null)
  %68 = call i32 @TEST_true(i32 %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %82

70:                                               ; preds = %64
  %71 = load i32*, i32** %10, align 8
  %72 = load i32*, i32** %11, align 8
  %73 = load i32, i32* @SSL_ERROR_NONE, align 4
  %74 = call i32 @create_ssl_connection(i32* %71, i32* %72, i32 %73)
  %75 = call i32 @TEST_true(i32 %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %70
  %78 = load i32*, i32** %11, align 8
  %79 = call i32* @SSL_get1_session(i32* %78)
  store i32* %79, i32** %16, align 8
  %80 = call i32 @TEST_ptr(i32* %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %83, label %82

82:                                               ; preds = %77, %70, %64
  br label %516

83:                                               ; preds = %77
  %84 = load i32, i32* %6, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %93

86:                                               ; preds = %83
  %87 = load i32*, i32** %9, align 8
  %88 = load i32*, i32** %16, align 8
  %89 = call i32 @SSL_CTX_add_session(i32* %87, i32* %88)
  %90 = call i32 @TEST_false(i32 %89)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %93, label %92

92:                                               ; preds = %86
  br label %516

93:                                               ; preds = %86, %83
  %94 = load i32, i32* %7, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %106

96:                                               ; preds = %93
  %97 = load i64, i64* @new_called, align 8
  %98 = load i32, i32* %19, align 4
  %99 = call i32 @TEST_int_eq(i64 %97, i32 %98)
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %96
  %102 = load i64, i64* @remove_called, align 8
  %103 = call i32 @TEST_int_eq(i64 %102, i32 0)
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %106, label %105

105:                                              ; preds = %101, %96
  br label %516

106:                                              ; preds = %101, %93
  store i64 0, i64* @remove_called, align 8
  store i64 0, i64* @new_called, align 8
  %107 = load i32*, i32** %8, align 8
  %108 = load i32*, i32** %9, align 8
  %109 = call i32 @create_ssl_objects(i32* %107, i32* %108, i32** %12, i32** %13, i32* null, i32* null)
  %110 = call i32 @TEST_true(i32 %109)
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %130

112:                                              ; preds = %106
  %113 = load i32*, i32** %13, align 8
  %114 = load i32*, i32** %16, align 8
  %115 = call i32 @SSL_set_session(i32* %113, i32* %114)
  %116 = call i32 @TEST_true(i32 %115)
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %130

118:                                              ; preds = %112
  %119 = load i32*, i32** %12, align 8
  %120 = load i32*, i32** %13, align 8
  %121 = load i32, i32* @SSL_ERROR_NONE, align 4
  %122 = call i32 @create_ssl_connection(i32* %119, i32* %120, i32 %121)
  %123 = call i32 @TEST_true(i32 %122)
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %130

125:                                              ; preds = %118
  %126 = load i32*, i32** %13, align 8
  %127 = call i32 @SSL_session_reused(i32* %126)
  %128 = call i32 @TEST_true(i32 %127)
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %131, label %130

130:                                              ; preds = %125, %118, %112, %106
  br label %516

131:                                              ; preds = %125
  %132 = load i32, i32* %5, align 4
  %133 = load i32, i32* @TLS1_3_VERSION, align 4
  %134 = icmp eq i32 %132, %133
  br i1 %134, label %135, label %148

135:                                              ; preds = %131
  %136 = load i32, i32* %7, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %147

138:                                              ; preds = %135
  %139 = load i64, i64* @new_called, align 8
  %140 = call i32 @TEST_int_eq(i64 %139, i32 1)
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %146

142:                                              ; preds = %138
  %143 = load i64, i64* @remove_called, align 8
  %144 = call i32 @TEST_int_eq(i64 %143, i32 1)
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %147, label %146

146:                                              ; preds = %142, %138
  br label %516

147:                                              ; preds = %142, %135
  br label %161

148:                                              ; preds = %131
  %149 = load i32, i32* %7, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %160

151:                                              ; preds = %148
  %152 = load i64, i64* @new_called, align 8
  %153 = call i32 @TEST_int_eq(i64 %152, i32 0)
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %159

155:                                              ; preds = %151
  %156 = load i64, i64* @remove_called, align 8
  %157 = call i32 @TEST_int_eq(i64 %156, i32 0)
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %160, label %159

159:                                              ; preds = %155, %151
  br label %516

160:                                              ; preds = %155, %148
  br label %161

161:                                              ; preds = %160, %147
  %162 = load i32*, i32** %16, align 8
  %163 = call i32 @SSL_SESSION_free(i32* %162)
  %164 = load i32*, i32** %13, align 8
  %165 = call i32* @SSL_get1_session(i32* %164)
  store i32* %165, i32** %16, align 8
  %166 = call i32 @TEST_ptr(i32* %165)
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %169, label %168

168:                                              ; preds = %161
  br label %516

169:                                              ; preds = %161
  %170 = load i32*, i32** %12, align 8
  %171 = load i32*, i32** %13, align 8
  %172 = call i32 @shutdown_ssl_connection(i32* %170, i32* %171)
  store i32* null, i32** %13, align 8
  store i32* null, i32** %12, align 8
  store i64 0, i64* @remove_called, align 8
  store i64 0, i64* @new_called, align 8
  %173 = load i32*, i32** %8, align 8
  %174 = load i32*, i32** %9, align 8
  %175 = call i32 @create_ssl_objects(i32* %173, i32* %174, i32** %12, i32** %13, i32* null, i32* null)
  %176 = call i32 @TEST_true(i32 %175)
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %185

178:                                              ; preds = %169
  %179 = load i32*, i32** %12, align 8
  %180 = load i32*, i32** %13, align 8
  %181 = load i32, i32* @SSL_ERROR_NONE, align 4
  %182 = call i32 @create_ssl_connection(i32* %179, i32* %180, i32 %181)
  %183 = call i32 @TEST_true(i32 %182)
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %186, label %185

185:                                              ; preds = %178, %169
  br label %516

186:                                              ; preds = %178
  %187 = load i32*, i32** %13, align 8
  %188 = call i32* @SSL_get1_session(i32* %187)
  store i32* %188, i32** %17, align 8
  %189 = call i32 @TEST_ptr(i32* %188)
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %192, label %191

191:                                              ; preds = %186
  br label %516

192:                                              ; preds = %186
  %193 = load i32, i32* %7, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %205

195:                                              ; preds = %192
  %196 = load i64, i64* @new_called, align 8
  %197 = load i32, i32* %19, align 4
  %198 = call i32 @TEST_int_eq(i64 %196, i32 %197)
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %204

200:                                              ; preds = %195
  %201 = load i64, i64* @remove_called, align 8
  %202 = call i32 @TEST_int_eq(i64 %201, i32 0)
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %205, label %204

204:                                              ; preds = %200, %195
  br label %516

205:                                              ; preds = %200, %192
  store i64 0, i64* @remove_called, align 8
  store i64 0, i64* @new_called, align 8
  %206 = load i32*, i32** %13, align 8
  %207 = load i32*, i32** %16, align 8
  %208 = call i32 @SSL_set_session(i32* %206, i32* %207)
  %209 = call i32 @TEST_true(i32 %208)
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %212, label %211

211:                                              ; preds = %205
  br label %516

212:                                              ; preds = %205
  %213 = load i32, i32* %7, align 4
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %224

215:                                              ; preds = %212
  %216 = load i64, i64* @new_called, align 8
  %217 = call i32 @TEST_int_eq(i64 %216, i32 0)
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %223

219:                                              ; preds = %215
  %220 = load i64, i64* @remove_called, align 8
  %221 = call i32 @TEST_int_eq(i64 %220, i32 1)
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %224, label %223

223:                                              ; preds = %219, %215
  br label %516

224:                                              ; preds = %219, %212
  %225 = load i32*, i32** %13, align 8
  %226 = call i32 @SSL_get_session(i32* %225)
  %227 = load i32*, i32** %16, align 8
  %228 = call i32 @TEST_ptr_eq(i32 %226, i32* %227)
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %231, label %230

230:                                              ; preds = %224
  br label %516

231:                                              ; preds = %224
  %232 = load i32, i32* %6, align 4
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %234, label %248

234:                                              ; preds = %231
  %235 = load i32*, i32** %9, align 8
  %236 = load i32*, i32** %17, align 8
  %237 = call i32 @SSL_CTX_add_session(i32* %235, i32* %236)
  %238 = call i32 @TEST_true(i32 %237)
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %240, label %246

240:                                              ; preds = %234
  %241 = load i32*, i32** %9, align 8
  %242 = load i32*, i32** %17, align 8
  %243 = call i32 @SSL_CTX_remove_session(i32* %241, i32* %242)
  %244 = call i32 @TEST_true(i32 %243)
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %247, label %246

246:                                              ; preds = %240, %234
  br label %516

247:                                              ; preds = %240
  br label %248

248:                                              ; preds = %247, %231
  store i64 0, i64* @remove_called, align 8
  store i64 0, i64* @new_called, align 8
  %249 = load i32*, i32** %9, align 8
  %250 = load i32*, i32** %17, align 8
  %251 = call i32 @SSL_CTX_remove_session(i32* %249, i32* %250)
  %252 = call i32 @TEST_false(i32 %251)
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %255, label %254

254:                                              ; preds = %248
  br label %516

255:                                              ; preds = %248
  %256 = load i32, i32* %7, align 4
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %258, label %267

258:                                              ; preds = %255
  %259 = load i64, i64* @new_called, align 8
  %260 = call i32 @TEST_int_eq(i64 %259, i32 0)
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %262, label %266

262:                                              ; preds = %258
  %263 = load i64, i64* @remove_called, align 8
  %264 = call i32 @TEST_int_eq(i64 %263, i32 1)
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %267, label %266

266:                                              ; preds = %262, %258
  br label %516

267:                                              ; preds = %262, %255
  store i64 0, i64* @remove_called, align 8
  store i64 0, i64* @new_called, align 8
  %268 = load i32*, i32** %8, align 8
  %269 = load i32, i32* @TLS1_1_VERSION, align 4
  %270 = call i32 @SSL_CTX_set_max_proto_version(i32* %268, i32 %269)
  %271 = load i32*, i32** %8, align 8
  %272 = load i32*, i32** %9, align 8
  %273 = call i32 @create_ssl_objects(i32* %271, i32* %272, i32** %14, i32** %15, i32* null, i32* null)
  %274 = call i32 @TEST_true(i32 %273)
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %276, label %289

276:                                              ; preds = %267
  %277 = load i32*, i32** %15, align 8
  %278 = load i32*, i32** %16, align 8
  %279 = call i32 @SSL_set_session(i32* %277, i32* %278)
  %280 = call i32 @TEST_true(i32 %279)
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %282, label %289

282:                                              ; preds = %276
  %283 = load i32*, i32** %14, align 8
  %284 = load i32*, i32** %15, align 8
  %285 = load i32, i32* @SSL_ERROR_NONE, align 4
  %286 = call i32 @create_ssl_connection(i32* %283, i32* %284, i32 %285)
  %287 = call i32 @TEST_false(i32 %286)
  %288 = icmp ne i32 %287, 0
  br i1 %288, label %290, label %289

289:                                              ; preds = %282, %276, %267
  br label %516

290:                                              ; preds = %282
  %291 = load i32, i32* %7, align 4
  %292 = icmp ne i32 %291, 0
  br i1 %292, label %293, label %302

293:                                              ; preds = %290
  %294 = load i64, i64* @new_called, align 8
  %295 = call i32 @TEST_int_eq(i64 %294, i32 0)
  %296 = icmp ne i32 %295, 0
  br i1 %296, label %297, label %301

297:                                              ; preds = %293
  %298 = load i64, i64* @remove_called, align 8
  %299 = call i32 @TEST_int_eq(i64 %298, i32 1)
  %300 = icmp ne i32 %299, 0
  br i1 %300, label %302, label %301

301:                                              ; preds = %297, %293
  br label %516

302:                                              ; preds = %297, %290
  %303 = load i32, i32* %6, align 4
  %304 = icmp ne i32 %303, 0
  br i1 %304, label %305, label %312

305:                                              ; preds = %302
  %306 = load i32*, i32** %9, align 8
  %307 = load i32*, i32** %17, align 8
  %308 = call i32 @SSL_CTX_add_session(i32* %306, i32* %307)
  %309 = call i32 @TEST_true(i32 %308)
  %310 = icmp ne i32 %309, 0
  br i1 %310, label %312, label %311

311:                                              ; preds = %305
  br label %516

312:                                              ; preds = %305, %302
  %313 = load i32, i32* %7, align 4
  %314 = icmp ne i32 %313, 0
  br i1 %314, label %315, label %329

315:                                              ; preds = %312
  %316 = load i32*, i32** %9, align 8
  %317 = call i32 @SSL_CTX_sess_set_new_cb(i32* %316, i32* null)
  %318 = load i32*, i32** %9, align 8
  %319 = call i32 @SSL_CTX_sess_set_remove_cb(i32* %318, i32* null)
  %320 = load i32*, i32** %8, align 8
  %321 = load i32*, i32** @new_session_cb, align 8
  %322 = call i32 @SSL_CTX_sess_set_new_cb(i32* %320, i32* %321)
  %323 = load i32*, i32** %8, align 8
  %324 = load i32*, i32** @remove_session_cb, align 8
  %325 = call i32 @SSL_CTX_sess_set_remove_cb(i32* %323, i32* %324)
  %326 = load i32*, i32** %8, align 8
  %327 = load i32, i32* @get_session_cb, align 4
  %328 = call i32 @SSL_CTX_sess_set_get_cb(i32* %326, i32 %327)
  store i32* null, i32** @get_sess_val, align 8
  br label %329

329:                                              ; preds = %315, %312
  %330 = load i32*, i32** %9, align 8
  %331 = call i32 @SSL_CTX_set_session_cache_mode(i32* %330, i32 0)
  %332 = load i32, i32* %6, align 4
  %333 = icmp ne i32 %332, 0
  br i1 %333, label %340, label %334

334:                                              ; preds = %329
  %335 = load i32*, i32** %8, align 8
  %336 = load i32, i32* @SSL_SESS_CACHE_SERVER, align 4
  %337 = load i32, i32* @SSL_SESS_CACHE_NO_INTERNAL_STORE, align 4
  %338 = or i32 %336, %337
  %339 = call i32 @SSL_CTX_set_session_cache_mode(i32* %335, i32 %338)
  br label %340

340:                                              ; preds = %334, %329
  %341 = load i32*, i32** %10, align 8
  %342 = call i32 @SSL_free(i32* %341)
  %343 = load i32*, i32** %11, align 8
  %344 = call i32 @SSL_free(i32* %343)
  store i32* null, i32** %11, align 8
  store i32* null, i32** %10, align 8
  %345 = load i32*, i32** %12, align 8
  %346 = call i32 @SSL_free(i32* %345)
  %347 = load i32*, i32** %13, align 8
  %348 = call i32 @SSL_free(i32* %347)
  store i32* null, i32** %13, align 8
  store i32* null, i32** %12, align 8
  %349 = load i32*, i32** %16, align 8
  %350 = call i32 @SSL_SESSION_free(i32* %349)
  store i32* null, i32** %16, align 8
  %351 = load i32*, i32** %17, align 8
  %352 = call i32 @SSL_SESSION_free(i32* %351)
  store i32* null, i32** %17, align 8
  %353 = load i32*, i32** %8, align 8
  %354 = load i32, i32* %5, align 4
  %355 = call i32 @SSL_CTX_set_max_proto_version(i32* %353, i32 %354)
  %356 = load i32, i32* %5, align 4
  %357 = load i32, i32* @TLS1_2_VERSION, align 4
  %358 = icmp eq i32 %356, %357
  br i1 %358, label %359, label %363

359:                                              ; preds = %340
  %360 = load i32*, i32** %8, align 8
  %361 = load i32, i32* @SSL_OP_NO_TICKET, align 4
  %362 = call i32 @SSL_CTX_set_options(i32* %360, i32 %361)
  br label %363

363:                                              ; preds = %359, %340
  store i64 0, i64* @get_called, align 8
  store i64 0, i64* @remove_called, align 8
  store i64 0, i64* @new_called, align 8
  %364 = load i32*, i32** %8, align 8
  %365 = load i32*, i32** %9, align 8
  %366 = call i32 @create_ssl_objects(i32* %364, i32* %365, i32** %10, i32** %11, i32* null, i32* null)
  %367 = call i32 @TEST_true(i32 %366)
  %368 = icmp ne i32 %367, 0
  br i1 %368, label %369, label %386

369:                                              ; preds = %363
  %370 = load i32*, i32** %10, align 8
  %371 = load i32*, i32** %11, align 8
  %372 = load i32, i32* @SSL_ERROR_NONE, align 4
  %373 = call i32 @create_ssl_connection(i32* %370, i32* %371, i32 %372)
  %374 = call i32 @TEST_true(i32 %373)
  %375 = icmp ne i32 %374, 0
  br i1 %375, label %376, label %386

376:                                              ; preds = %369
  %377 = load i32*, i32** %11, align 8
  %378 = call i32* @SSL_get1_session(i32* %377)
  store i32* %378, i32** %16, align 8
  %379 = call i32 @TEST_ptr(i32* %378)
  %380 = icmp ne i32 %379, 0
  br i1 %380, label %381, label %386

381:                                              ; preds = %376
  %382 = load i32*, i32** %10, align 8
  %383 = call i32* @SSL_get1_session(i32* %382)
  store i32* %383, i32** %17, align 8
  %384 = call i32 @TEST_ptr(i32* %383)
  %385 = icmp ne i32 %384, 0
  br i1 %385, label %387, label %386

386:                                              ; preds = %381, %376, %369, %363
  br label %516

387:                                              ; preds = %381
  %388 = load i32, i32* %6, align 4
  %389 = icmp ne i32 %388, 0
  br i1 %389, label %390, label %414

390:                                              ; preds = %387
  %391 = load i32, i32* %5, align 4
  %392 = load i32, i32* @TLS1_3_VERSION, align 4
  %393 = icmp eq i32 %391, %392
  br i1 %393, label %394, label %405

394:                                              ; preds = %390
  %395 = load i32, i32* %7, align 4
  %396 = icmp ne i32 %395, 0
  br i1 %396, label %405, label %397

397:                                              ; preds = %394
  %398 = load i32*, i32** %8, align 8
  %399 = load i32*, i32** %17, align 8
  %400 = call i32 @SSL_CTX_remove_session(i32* %398, i32* %399)
  %401 = call i32 @TEST_false(i32 %400)
  %402 = icmp ne i32 %401, 0
  br i1 %402, label %404, label %403

403:                                              ; preds = %397
  br label %516

404:                                              ; preds = %397
  br label %413

405:                                              ; preds = %394, %390
  %406 = load i32*, i32** %8, align 8
  %407 = load i32*, i32** %17, align 8
  %408 = call i32 @SSL_CTX_add_session(i32* %406, i32* %407)
  %409 = call i32 @TEST_false(i32 %408)
  %410 = icmp ne i32 %409, 0
  br i1 %410, label %412, label %411

411:                                              ; preds = %405
  br label %516

412:                                              ; preds = %405
  br label %413

413:                                              ; preds = %412, %404
  br label %414

414:                                              ; preds = %413, %387
  %415 = load i32, i32* %7, align 4
  %416 = icmp ne i32 %415, 0
  br i1 %416, label %417, label %456

417:                                              ; preds = %414
  %418 = load i32*, i32** %17, align 8
  store i32* %418, i32** %20, align 8
  %419 = load i64, i64* @new_called, align 8
  %420 = load i32, i32* %19, align 4
  %421 = call i32 @TEST_int_eq(i64 %419, i32 %420)
  %422 = icmp ne i32 %421, 0
  br i1 %422, label %423, label %431

423:                                              ; preds = %417
  %424 = load i64, i64* @remove_called, align 8
  %425 = call i32 @TEST_int_eq(i64 %424, i32 0)
  %426 = icmp ne i32 %425, 0
  br i1 %426, label %427, label %431

427:                                              ; preds = %423
  %428 = load i64, i64* @get_called, align 8
  %429 = call i32 @TEST_int_eq(i64 %428, i32 0)
  %430 = icmp ne i32 %429, 0
  br i1 %430, label %432, label %431

431:                                              ; preds = %427, %423, %417
  br label %516

432:                                              ; preds = %427
  %433 = load i32, i32* %6, align 4
  %434 = icmp ne i32 %433, 0
  br i1 %434, label %435, label %454

435:                                              ; preds = %432
  %436 = load i32, i32* %5, align 4
  %437 = load i32, i32* @TLS1_3_VERSION, align 4
  %438 = icmp ne i32 %436, %437
  br i1 %438, label %439, label %454

439:                                              ; preds = %435
  %440 = load i32*, i32** %17, align 8
  %441 = call i32* @SSL_SESSION_dup(i32* %440)
  store i32* %441, i32** %20, align 8
  %442 = call i32 @TEST_ptr(i32* %441)
  %443 = icmp ne i32 %442, 0
  br i1 %443, label %444, label %450

444:                                              ; preds = %439
  %445 = load i32*, i32** %8, align 8
  %446 = load i32*, i32** %17, align 8
  %447 = call i32 @SSL_CTX_remove_session(i32* %445, i32* %446)
  %448 = call i32 @TEST_true(i32 %447)
  %449 = icmp ne i32 %448, 0
  br i1 %449, label %451, label %450

450:                                              ; preds = %444, %439
  br label %516

451:                                              ; preds = %444
  %452 = load i32*, i32** %17, align 8
  %453 = call i32 @SSL_SESSION_free(i32* %452)
  br label %454

454:                                              ; preds = %451, %435, %432
  %455 = load i32*, i32** %20, align 8
  store i32* %455, i32** %17, align 8
  br label %456

456:                                              ; preds = %454, %414
  store i64 0, i64* @get_called, align 8
  store i64 0, i64* @remove_called, align 8
  store i64 0, i64* @new_called, align 8
  %457 = load i32*, i32** %17, align 8
  store i32* %457, i32** @get_sess_val, align 8
  %458 = load i32*, i32** %8, align 8
  %459 = load i32*, i32** %9, align 8
  %460 = call i32 @create_ssl_objects(i32* %458, i32* %459, i32** %12, i32** %13, i32* null, i32* null)
  %461 = call i32 @TEST_true(i32 %460)
  %462 = icmp ne i32 %461, 0
  br i1 %462, label %463, label %481

463:                                              ; preds = %456
  %464 = load i32*, i32** %13, align 8
  %465 = load i32*, i32** %16, align 8
  %466 = call i32 @SSL_set_session(i32* %464, i32* %465)
  %467 = call i32 @TEST_true(i32 %466)
  %468 = icmp ne i32 %467, 0
  br i1 %468, label %469, label %481

469:                                              ; preds = %463
  %470 = load i32*, i32** %12, align 8
  %471 = load i32*, i32** %13, align 8
  %472 = load i32, i32* @SSL_ERROR_NONE, align 4
  %473 = call i32 @create_ssl_connection(i32* %470, i32* %471, i32 %472)
  %474 = call i32 @TEST_true(i32 %473)
  %475 = icmp ne i32 %474, 0
  br i1 %475, label %476, label %481

476:                                              ; preds = %469
  %477 = load i32*, i32** %13, align 8
  %478 = call i32 @SSL_session_reused(i32* %477)
  %479 = call i32 @TEST_true(i32 %478)
  %480 = icmp ne i32 %479, 0
  br i1 %480, label %482, label %481

481:                                              ; preds = %476, %469, %463, %456
  br label %516

482:                                              ; preds = %476
  %483 = load i32, i32* %7, align 4
  %484 = icmp ne i32 %483, 0
  br i1 %484, label %485, label %515

485:                                              ; preds = %482
  %486 = load i64, i64* @remove_called, align 8
  %487 = call i32 @TEST_int_eq(i64 %486, i32 0)
  %488 = icmp ne i32 %487, 0
  br i1 %488, label %490, label %489

489:                                              ; preds = %485
  br label %516

490:                                              ; preds = %485
  %491 = load i32, i32* %5, align 4
  %492 = load i32, i32* @TLS1_3_VERSION, align 4
  %493 = icmp eq i32 %491, %492
  br i1 %493, label %494, label %504

494:                                              ; preds = %490
  %495 = load i64, i64* @new_called, align 8
  %496 = call i32 @TEST_int_eq(i64 %495, i32 1)
  %497 = icmp ne i32 %496, 0
  br i1 %497, label %498, label %502

498:                                              ; preds = %494
  %499 = load i64, i64* @get_called, align 8
  %500 = call i32 @TEST_int_eq(i64 %499, i32 0)
  %501 = icmp ne i32 %500, 0
  br i1 %501, label %503, label %502

502:                                              ; preds = %498, %494
  br label %516

503:                                              ; preds = %498
  br label %514

504:                                              ; preds = %490
  %505 = load i64, i64* @new_called, align 8
  %506 = call i32 @TEST_int_eq(i64 %505, i32 0)
  %507 = icmp ne i32 %506, 0
  br i1 %507, label %508, label %512

508:                                              ; preds = %504
  %509 = load i64, i64* @get_called, align 8
  %510 = call i32 @TEST_int_eq(i64 %509, i32 1)
  %511 = icmp ne i32 %510, 0
  br i1 %511, label %513, label %512

512:                                              ; preds = %508, %504
  br label %516

513:                                              ; preds = %508
  br label %514

514:                                              ; preds = %513, %503
  br label %515

515:                                              ; preds = %514, %482
  store i32 1, i32* %18, align 4
  br label %516

516:                                              ; preds = %515, %512, %502, %489, %481, %450, %431, %411, %403, %386, %311, %301, %289, %266, %254, %246, %230, %223, %211, %204, %191, %185, %168, %159, %146, %130, %105, %92, %82
  %517 = load i32*, i32** %10, align 8
  %518 = call i32 @SSL_free(i32* %517)
  %519 = load i32*, i32** %11, align 8
  %520 = call i32 @SSL_free(i32* %519)
  %521 = load i32*, i32** %12, align 8
  %522 = call i32 @SSL_free(i32* %521)
  %523 = load i32*, i32** %13, align 8
  %524 = call i32 @SSL_free(i32* %523)
  %525 = load i32*, i32** %14, align 8
  %526 = call i32 @SSL_free(i32* %525)
  %527 = load i32*, i32** %15, align 8
  %528 = call i32 @SSL_free(i32* %527)
  %529 = load i32*, i32** %16, align 8
  %530 = call i32 @SSL_SESSION_free(i32* %529)
  %531 = load i32*, i32** %17, align 8
  %532 = call i32 @SSL_SESSION_free(i32* %531)
  %533 = load i32*, i32** %8, align 8
  %534 = call i32 @SSL_CTX_free(i32* %533)
  %535 = load i32*, i32** %9, align 8
  %536 = call i32 @SSL_CTX_free(i32* %535)
  %537 = load i32, i32* %18, align 4
  store i32 %537, i32* %4, align 4
  br label %538

538:                                              ; preds = %516, %34
  %539 = load i32, i32* %4, align 4
  ret i32 %539
}

declare dso_local i32 @TEST_true(i32) #1

declare dso_local i32 @create_ssl_ctx_pair(i32, i32, i32, i32, i32**, i32**, i32, i32) #1

declare dso_local i32 @TLS_server_method(...) #1

declare dso_local i32 @TLS_client_method(...) #1

declare dso_local i32 @SSL_CTX_set_min_proto_version(i32*, i32) #1

declare dso_local i32 @SSL_CTX_set_max_proto_version(i32*, i32) #1

declare dso_local i32 @SSL_CTX_sess_set_new_cb(i32*, i32*) #1

declare dso_local i32 @SSL_CTX_sess_set_remove_cb(i32*, i32*) #1

declare dso_local i32 @SSL_CTX_set_session_cache_mode(i32*, i32) #1

declare dso_local i32 @create_ssl_objects(i32*, i32*, i32**, i32**, i32*, i32*) #1

declare dso_local i32 @create_ssl_connection(i32*, i32*, i32) #1

declare dso_local i32 @TEST_ptr(i32*) #1

declare dso_local i32* @SSL_get1_session(i32*) #1

declare dso_local i32 @TEST_false(i32) #1

declare dso_local i32 @SSL_CTX_add_session(i32*, i32*) #1

declare dso_local i32 @TEST_int_eq(i64, i32) #1

declare dso_local i32 @SSL_set_session(i32*, i32*) #1

declare dso_local i32 @SSL_session_reused(i32*) #1

declare dso_local i32 @SSL_SESSION_free(i32*) #1

declare dso_local i32 @shutdown_ssl_connection(i32*, i32*) #1

declare dso_local i32 @TEST_ptr_eq(i32, i32*) #1

declare dso_local i32 @SSL_get_session(i32*) #1

declare dso_local i32 @SSL_CTX_remove_session(i32*, i32*) #1

declare dso_local i32 @SSL_CTX_sess_set_get_cb(i32*, i32) #1

declare dso_local i32 @SSL_free(i32*) #1

declare dso_local i32 @SSL_CTX_set_options(i32*, i32) #1

declare dso_local i32* @SSL_SESSION_dup(i32*) #1

declare dso_local i32 @SSL_CTX_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
