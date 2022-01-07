; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_sslapitest.c_test_shutdown.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_sslapitest.c_test_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.test_shutdown.msg = private unnamed_addr constant [15 x i8] c"A test message\00", align 1
@TLS1_VERSION = common dso_local global i32 0, align 4
@TLS1_2_VERSION = common dso_local global i32 0, align 4
@TLS1_3_VERSION = common dso_local global i32 0, align 4
@cert = common dso_local global i32 0, align 4
@privkey = common dso_local global i32 0, align 4
@SSL_ERROR_NONE = common dso_local global i32 0, align 4
@SSL_ERROR_ZERO_RETURN = common dso_local global i32 0, align 4
@SSL_RECEIVED_SHUTDOWN = common dso_local global i32 0, align 4
@SSL_KEY_UPDATE_REQUESTED = common dso_local global i32 0, align 4
@SSL_VERIFY_PEER = common dso_local global i32 0, align 4
@SSL_ERROR_SSL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @test_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_shutdown(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [15 x i8], align 1
  %9 = alloca [80 x i8], align 16
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  store i32 %0, i32* %2, align 4
  store i32* null, i32** %3, align 8
  store i32* null, i32** %4, align 8
  store i32* null, i32** %5, align 8
  store i32* null, i32** %6, align 8
  store i32 0, i32* %7, align 4
  %13 = bitcast [15 x i8]* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %13, i8* align 1 getelementptr inbounds ([15 x i8], [15 x i8]* @__const.test_shutdown.msg, i32 0, i32 0), i64 15, i1 false)
  %14 = call i32 (...) @TLS_server_method()
  %15 = call i32 (...) @TLS_client_method()
  %16 = load i32, i32* @TLS1_VERSION, align 4
  %17 = load i32, i32* %2, align 4
  %18 = icmp sle i32 %17, 1
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  %20 = load i32, i32* @TLS1_2_VERSION, align 4
  br label %23

21:                                               ; preds = %1
  %22 = load i32, i32* @TLS1_3_VERSION, align 4
  br label %23

23:                                               ; preds = %21, %19
  %24 = phi i32 [ %20, %19 ], [ %22, %21 ]
  %25 = load i32, i32* @cert, align 4
  %26 = load i32, i32* @privkey, align 4
  %27 = call i32 @create_ssl_ctx_pair(i32 %14, i32 %15, i32 %16, i32 %24, i32** %4, i32** %3, i32 %25, i32 %26)
  %28 = call i32 @TEST_true(i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %23
  br label %285

31:                                               ; preds = %23
  %32 = load i32, i32* %2, align 4
  %33 = icmp eq i32 %32, 5
  br i1 %33, label %34, label %37

34:                                               ; preds = %31
  %35 = load i32*, i32** %3, align 8
  %36 = call i32 @SSL_CTX_set_post_handshake_auth(i32* %35, i32 1)
  br label %37

37:                                               ; preds = %34, %31
  %38 = load i32*, i32** %4, align 8
  %39 = load i32*, i32** %3, align 8
  %40 = call i32 @create_ssl_objects(i32* %38, i32* %39, i32** %6, i32** %5, i32* null, i32* null)
  %41 = call i32 @TEST_true(i32 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %37
  br label %285

44:                                               ; preds = %37
  %45 = load i32, i32* %2, align 4
  %46 = icmp eq i32 %45, 3
  br i1 %46, label %47, label %66

47:                                               ; preds = %44
  %48 = load i32*, i32** %6, align 8
  %49 = load i32*, i32** %5, align 8
  %50 = load i32, i32* @SSL_ERROR_NONE, align 4
  %51 = call i32 @create_bare_ssl_connection(i32* %48, i32* %49, i32 %50, i32 1)
  %52 = call i32 @TEST_true(i32 %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %64

54:                                               ; preds = %47
  %55 = load i32*, i32** %5, align 8
  %56 = call i32* @SSL_get_session(i32* %55)
  store i32* %56, i32** %12, align 8
  %57 = call i32 @TEST_ptr_ne(i32* %56, i32* null)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %54
  %60 = load i32*, i32** %12, align 8
  %61 = call i32 @SSL_SESSION_is_resumable(i32* %60)
  %62 = call i32 @TEST_false(i32 %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %59, %54, %47
  br label %285

65:                                               ; preds = %59
  br label %85

66:                                               ; preds = %44
  %67 = load i32*, i32** %6, align 8
  %68 = load i32*, i32** %5, align 8
  %69 = load i32, i32* @SSL_ERROR_NONE, align 4
  %70 = call i32 @create_ssl_connection(i32* %67, i32* %68, i32 %69)
  %71 = call i32 @TEST_true(i32 %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %83

73:                                               ; preds = %66
  %74 = load i32*, i32** %5, align 8
  %75 = call i32* @SSL_get_session(i32* %74)
  store i32* %75, i32** %12, align 8
  %76 = call i32 @TEST_ptr_ne(i32* %75, i32* null)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %73
  %79 = load i32*, i32** %12, align 8
  %80 = call i32 @SSL_SESSION_is_resumable(i32* %79)
  %81 = call i32 @TEST_true(i32 %80)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %84, label %83

83:                                               ; preds = %78, %73, %66
  br label %285

84:                                               ; preds = %78
  br label %85

85:                                               ; preds = %84, %65
  %86 = load i32*, i32** %5, align 8
  %87 = call i32 @SSL_shutdown(i32* %86)
  %88 = call i32 @TEST_int_eq(i32 %87, i32 0)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %91, label %90

90:                                               ; preds = %85
  br label %285

91:                                               ; preds = %85
  %92 = load i32, i32* %2, align 4
  %93 = icmp sge i32 %92, 4
  br i1 %93, label %94, label %204

94:                                               ; preds = %91
  %95 = load i32*, i32** %6, align 8
  %96 = getelementptr inbounds [80 x i8], [80 x i8]* %9, i64 0, i64 0
  %97 = call i32 @SSL_read_ex(i32* %95, i8* %96, i32 80, i64* %11)
  %98 = call i32 @TEST_false(i32 %97)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %118

100:                                              ; preds = %94
  %101 = load i32*, i32** %6, align 8
  %102 = call i32 @SSL_get_error(i32* %101, i32 0)
  %103 = load i32, i32* @SSL_ERROR_ZERO_RETURN, align 4
  %104 = call i32 @TEST_int_eq(i32 %102, i32 %103)
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %118

106:                                              ; preds = %100
  %107 = load i32*, i32** %6, align 8
  %108 = call i32 @SSL_get_shutdown(i32* %107)
  %109 = load i32, i32* @SSL_RECEIVED_SHUTDOWN, align 4
  %110 = call i32 @TEST_int_eq(i32 %108, i32 %109)
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %118

112:                                              ; preds = %106
  %113 = load i32*, i32** %6, align 8
  %114 = getelementptr inbounds [15 x i8], [15 x i8]* %8, i64 0, i64 0
  %115 = call i32 @SSL_write(i32* %113, i8* %114, i32 15)
  %116 = call i32 @TEST_true(i32 %115)
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %119, label %118

118:                                              ; preds = %112, %106, %100, %94
  br label %285

119:                                              ; preds = %112
  %120 = load i32, i32* %2, align 4
  %121 = icmp eq i32 %120, 4
  br i1 %121, label %122, label %129

122:                                              ; preds = %119
  %123 = load i32*, i32** %6, align 8
  %124 = load i32, i32* @SSL_KEY_UPDATE_REQUESTED, align 4
  %125 = call i32 @SSL_key_update(i32* %123, i32 %124)
  %126 = call i32 @TEST_true(i32 %125)
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %129, label %128

128:                                              ; preds = %122
  br label %285

129:                                              ; preds = %122, %119
  %130 = load i32, i32* %2, align 4
  %131 = icmp eq i32 %130, 5
  br i1 %131, label %132, label %142

132:                                              ; preds = %129
  %133 = load i32*, i32** %6, align 8
  %134 = load i32, i32* @SSL_VERIFY_PEER, align 4
  %135 = call i32 @SSL_set_verify(i32* %133, i32 %134, i32* null)
  %136 = load i32*, i32** %6, align 8
  %137 = call i32 @SSL_verify_client_post_handshake(i32* %136)
  %138 = call i32 @TEST_true(i32 %137)
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %141, label %140

140:                                              ; preds = %132
  br label %285

141:                                              ; preds = %132
  br label %142

142:                                              ; preds = %141, %129
  %143 = load i32, i32* %2, align 4
  %144 = icmp eq i32 %143, 4
  br i1 %144, label %148, label %145

145:                                              ; preds = %142
  %146 = load i32, i32* %2, align 4
  %147 = icmp eq i32 %146, 5
  br i1 %147, label %148, label %155

148:                                              ; preds = %145, %142
  %149 = load i32*, i32** %6, align 8
  %150 = getelementptr inbounds [15 x i8], [15 x i8]* %8, i64 0, i64 0
  %151 = call i32 @SSL_write(i32* %149, i8* %150, i32 15)
  %152 = call i32 @TEST_true(i32 %151)
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %155, label %154

154:                                              ; preds = %148
  br label %285

155:                                              ; preds = %148, %145
  %156 = load i32*, i32** %6, align 8
  %157 = call i32 @SSL_shutdown(i32* %156)
  %158 = call i32 @TEST_int_eq(i32 %157, i32 1)
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %161, label %160

160:                                              ; preds = %155
  br label %285

161:                                              ; preds = %155
  %162 = load i32, i32* %2, align 4
  %163 = icmp eq i32 %162, 4
  br i1 %163, label %167, label %164

164:                                              ; preds = %161
  %165 = load i32, i32* %2, align 4
  %166 = icmp eq i32 %165, 5
  br i1 %166, label %167, label %203

167:                                              ; preds = %164, %161
  %168 = load i32*, i32** %5, align 8
  %169 = getelementptr inbounds [80 x i8], [80 x i8]* %9, i64 0, i64 0
  %170 = call i32 @SSL_read_ex(i32* %168, i8* %169, i32 80, i64* %11)
  %171 = call i32 @TEST_true(i32 %170)
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %201

173:                                              ; preds = %167
  %174 = load i64, i64* %11, align 8
  %175 = call i32 @TEST_size_t_eq(i64 %174, i32 15)
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %201

177:                                              ; preds = %173
  %178 = getelementptr inbounds [15 x i8], [15 x i8]* %8, i64 0, i64 0
  %179 = getelementptr inbounds [80 x i8], [80 x i8]* %9, i64 0, i64 0
  %180 = load i64, i64* %11, align 8
  %181 = call i32 @memcmp(i8* %178, i8* %179, i64 %180)
  %182 = call i32 @TEST_int_eq(i32 %181, i32 0)
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %201

184:                                              ; preds = %177
  %185 = load i32*, i32** %5, align 8
  %186 = getelementptr inbounds [80 x i8], [80 x i8]* %9, i64 0, i64 0
  %187 = call i32 @SSL_read_ex(i32* %185, i8* %186, i32 80, i64* %11)
  %188 = call i32 @TEST_true(i32 %187)
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %201

190:                                              ; preds = %184
  %191 = load i64, i64* %11, align 8
  %192 = call i32 @TEST_size_t_eq(i64 %191, i32 15)
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %201

194:                                              ; preds = %190
  %195 = getelementptr inbounds [15 x i8], [15 x i8]* %8, i64 0, i64 0
  %196 = getelementptr inbounds [80 x i8], [80 x i8]* %9, i64 0, i64 0
  %197 = load i64, i64* %11, align 8
  %198 = call i32 @memcmp(i8* %195, i8* %196, i64 %197)
  %199 = call i32 @TEST_int_eq(i32 %198, i32 0)
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %202, label %201

201:                                              ; preds = %194, %190, %184, %177, %173, %167
  br label %285

202:                                              ; preds = %194
  br label %203

203:                                              ; preds = %202, %164
  br label %204

204:                                              ; preds = %203, %91
  %205 = load i32*, i32** %5, align 8
  %206 = getelementptr inbounds [15 x i8], [15 x i8]* %8, i64 0, i64 0
  %207 = call i32 @SSL_write_ex(i32* %205, i8* %206, i32 15, i64* %10)
  %208 = call i32 @TEST_false(i32 %207)
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %211, label %210

210:                                              ; preds = %204
  br label %285

211:                                              ; preds = %204
  %212 = load i32, i32* %2, align 4
  %213 = icmp slt i32 %212, 4
  br i1 %213, label %214, label %247

214:                                              ; preds = %211
  %215 = load i32*, i32** %6, align 8
  %216 = call i32 @SSL_shutdown(i32* %215)
  %217 = call i32 @TEST_int_eq(i32 %216, i32 0)
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %245

219:                                              ; preds = %214
  %220 = load i32*, i32** %6, align 8
  %221 = getelementptr inbounds [15 x i8], [15 x i8]* %8, i64 0, i64 0
  %222 = call i32 @SSL_write_ex(i32* %220, i8* %221, i32 15, i64* %10)
  %223 = call i32 @TEST_false(i32 %222)
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %245

225:                                              ; preds = %219
  %226 = load i32*, i32** %5, align 8
  %227 = call i32 @SSL_shutdown(i32* %226)
  %228 = call i32 @TEST_int_eq(i32 %227, i32 1)
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %245

230:                                              ; preds = %225
  %231 = load i32*, i32** %5, align 8
  %232 = call i32* @SSL_get_session(i32* %231)
  store i32* %232, i32** %12, align 8
  %233 = call i32 @TEST_ptr_ne(i32* %232, i32* null)
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %245

235:                                              ; preds = %230
  %236 = load i32*, i32** %12, align 8
  %237 = call i32 @SSL_SESSION_is_resumable(i32* %236)
  %238 = call i32 @TEST_true(i32 %237)
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %240, label %245

240:                                              ; preds = %235
  %241 = load i32*, i32** %6, align 8
  %242 = call i32 @SSL_shutdown(i32* %241)
  %243 = call i32 @TEST_int_eq(i32 %242, i32 1)
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %246, label %245

245:                                              ; preds = %240, %235, %230, %225, %219, %214
  br label %285

246:                                              ; preds = %240
  br label %284

247:                                              ; preds = %211
  %248 = load i32, i32* %2, align 4
  %249 = icmp eq i32 %248, 4
  br i1 %249, label %253, label %250

250:                                              ; preds = %247
  %251 = load i32, i32* %2, align 4
  %252 = icmp eq i32 %251, 5
  br i1 %252, label %253, label %270

253:                                              ; preds = %250, %247
  %254 = load i32*, i32** %5, align 8
  %255 = call i32 @SSL_shutdown(i32* %254)
  %256 = call i32 @TEST_int_eq(i32 %255, i32 1)
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %258, label %268

258:                                              ; preds = %253
  %259 = load i32*, i32** %5, align 8
  %260 = call i32* @SSL_get_session(i32* %259)
  store i32* %260, i32** %12, align 8
  %261 = call i32 @TEST_ptr_ne(i32* %260, i32* null)
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %263, label %268

263:                                              ; preds = %258
  %264 = load i32*, i32** %12, align 8
  %265 = call i32 @SSL_SESSION_is_resumable(i32* %264)
  %266 = call i32 @TEST_true(i32 %265)
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %269, label %268

268:                                              ; preds = %263, %258, %253
  br label %285

269:                                              ; preds = %263
  br label %283

270:                                              ; preds = %250
  %271 = load i32*, i32** %5, align 8
  %272 = call i32 @SSL_shutdown(i32* %271)
  %273 = call i32 @TEST_int_eq(i32 %272, i32 -1)
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %275, label %281

275:                                              ; preds = %270
  %276 = load i32*, i32** %5, align 8
  %277 = call i32 @SSL_get_error(i32* %276, i32 -1)
  %278 = load i32, i32* @SSL_ERROR_SSL, align 4
  %279 = call i32 @TEST_int_eq(i32 %277, i32 %278)
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %282, label %281

281:                                              ; preds = %275, %270
  br label %285

282:                                              ; preds = %275
  br label %283

283:                                              ; preds = %282, %269
  br label %284

284:                                              ; preds = %283, %246
  store i32 1, i32* %7, align 4
  br label %285

285:                                              ; preds = %284, %281, %268, %245, %210, %201, %160, %154, %140, %128, %118, %90, %83, %64, %43, %30
  %286 = load i32*, i32** %6, align 8
  %287 = call i32 @SSL_free(i32* %286)
  %288 = load i32*, i32** %5, align 8
  %289 = call i32 @SSL_free(i32* %288)
  %290 = load i32*, i32** %4, align 8
  %291 = call i32 @SSL_CTX_free(i32* %290)
  %292 = load i32*, i32** %3, align 8
  %293 = call i32 @SSL_CTX_free(i32* %292)
  %294 = load i32, i32* %7, align 4
  ret i32 %294
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @TEST_true(i32) #2

declare dso_local i32 @create_ssl_ctx_pair(i32, i32, i32, i32, i32**, i32**, i32, i32) #2

declare dso_local i32 @TLS_server_method(...) #2

declare dso_local i32 @TLS_client_method(...) #2

declare dso_local i32 @SSL_CTX_set_post_handshake_auth(i32*, i32) #2

declare dso_local i32 @create_ssl_objects(i32*, i32*, i32**, i32**, i32*, i32*) #2

declare dso_local i32 @create_bare_ssl_connection(i32*, i32*, i32, i32) #2

declare dso_local i32 @TEST_ptr_ne(i32*, i32*) #2

declare dso_local i32* @SSL_get_session(i32*) #2

declare dso_local i32 @TEST_false(i32) #2

declare dso_local i32 @SSL_SESSION_is_resumable(i32*) #2

declare dso_local i32 @create_ssl_connection(i32*, i32*, i32) #2

declare dso_local i32 @TEST_int_eq(i32, i32) #2

declare dso_local i32 @SSL_shutdown(i32*) #2

declare dso_local i32 @SSL_read_ex(i32*, i8*, i32, i64*) #2

declare dso_local i32 @SSL_get_error(i32*, i32) #2

declare dso_local i32 @SSL_get_shutdown(i32*) #2

declare dso_local i32 @SSL_write(i32*, i8*, i32) #2

declare dso_local i32 @SSL_key_update(i32*, i32) #2

declare dso_local i32 @SSL_set_verify(i32*, i32, i32*) #2

declare dso_local i32 @SSL_verify_client_post_handshake(i32*) #2

declare dso_local i32 @TEST_size_t_eq(i64, i32) #2

declare dso_local i32 @memcmp(i8*, i8*, i64) #2

declare dso_local i32 @SSL_write_ex(i32*, i8*, i32, i64*) #2

declare dso_local i32 @SSL_free(i32*) #2

declare dso_local i32 @SSL_CTX_free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
