; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_sslapitest.c_test_custom_exts.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_sslapitest.c_test_custom_exts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_custom_exts.server = internal global i32 1, align 4
@test_custom_exts.client = internal global i32 0, align 4
@srvparseoldcb = common dso_local global i32 0, align 4
@srvaddoldcb = common dso_local global i32 0, align 4
@clntparseoldcb = common dso_local global i32 0, align 4
@clntaddoldcb = common dso_local global i32 0, align 4
@srvparsenewcb = common dso_local global i32 0, align 4
@srvaddnewcb = common dso_local global i32 0, align 4
@clntparsenewcb = common dso_local global i32 0, align 4
@clntaddnewcb = common dso_local global i32 0, align 4
@snicb = common dso_local global i32 0, align 4
@TLS1_VERSION = common dso_local global i32 0, align 4
@cert = common dso_local global i32 0, align 4
@privkey = common dso_local global i32 0, align 4
@SSL_OP_NO_TLSv1_3 = common dso_local global i32 0, align 4
@SSL_EXT_CLIENT_HELLO = common dso_local global i32 0, align 4
@SSL_EXT_TLS1_2_SERVER_HELLO = common dso_local global i32 0, align 4
@SSL_EXT_TLS1_3_SERVER_HELLO = common dso_local global i32 0, align 4
@SSL_EXT_TLS1_3_ENCRYPTED_EXTENSIONS = common dso_local global i32 0, align 4
@SSL_EXT_TLS1_3_CERTIFICATE = common dso_local global i32 0, align 4
@SSL_EXT_TLS1_3_NEW_SESSION_TICKET = common dso_local global i32 0, align 4
@TEST_EXT_TYPE1 = common dso_local global i32 0, align 4
@old_add_cb = common dso_local global i32 0, align 4
@old_free_cb = common dso_local global i32 0, align 4
@old_parse_cb = common dso_local global i32 0, align 4
@new_add_cb = common dso_local global i32 0, align 4
@new_free_cb = common dso_local global i32 0, align 4
@new_parse_cb = common dso_local global i32 0, align 4
@sni_cb = common dso_local global i32 0, align 4
@SSL_ERROR_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @test_custom_exts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_custom_exts(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32* null, i32** %3, align 8
  store i32* null, i32** %4, align 8
  store i32* null, i32** %5, align 8
  store i32* null, i32** %6, align 8
  store i32* null, i32** %7, align 8
  store i32 0, i32* %8, align 4
  store i32* null, i32** %9, align 8
  store i32 0, i32* @srvparseoldcb, align 4
  store i32 0, i32* @srvaddoldcb, align 4
  store i32 0, i32* @clntparseoldcb, align 4
  store i32 0, i32* @clntaddoldcb, align 4
  store i32 0, i32* @srvparsenewcb, align 4
  store i32 0, i32* @srvaddnewcb, align 4
  store i32 0, i32* @clntparsenewcb, align 4
  store i32 0, i32* @clntaddnewcb, align 4
  store i32 0, i32* @snicb, align 4
  %11 = call i32 (...) @TLS_server_method()
  %12 = call i32* (...) @TLS_client_method()
  %13 = load i32, i32* @TLS1_VERSION, align 4
  %14 = load i32, i32* @cert, align 4
  %15 = load i32, i32* @privkey, align 4
  %16 = call i32 @create_ssl_ctx_pair(i32 %11, i32* %12, i32 %13, i32 0, i32** %4, i32** %3, i32 %14, i32 %15)
  %17 = call i32 @TEST_true(i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %1
  br label %364

20:                                               ; preds = %1
  %21 = load i32, i32* %2, align 4
  %22 = icmp eq i32 %21, 2
  br i1 %22, label %23, label %32

23:                                               ; preds = %20
  %24 = call i32 (...) @TLS_server_method()
  %25 = load i32, i32* @TLS1_VERSION, align 4
  %26 = load i32, i32* @cert, align 4
  %27 = load i32, i32* @privkey, align 4
  %28 = call i32 @create_ssl_ctx_pair(i32 %24, i32* null, i32 %25, i32 0, i32** %5, i32** null, i32 %26, i32 %27)
  %29 = call i32 @TEST_true(i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %23
  br label %364

32:                                               ; preds = %23, %20
  %33 = load i32, i32* %2, align 4
  %34 = icmp slt i32 %33, 3
  br i1 %34, label %35, label %49

35:                                               ; preds = %32
  %36 = load i32*, i32** %3, align 8
  %37 = load i32, i32* @SSL_OP_NO_TLSv1_3, align 4
  %38 = call i32 @SSL_CTX_set_options(i32* %36, i32 %37)
  %39 = load i32*, i32** %4, align 8
  %40 = load i32, i32* @SSL_OP_NO_TLSv1_3, align 4
  %41 = call i32 @SSL_CTX_set_options(i32* %39, i32 %40)
  %42 = load i32*, i32** %5, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %44, label %48

44:                                               ; preds = %35
  %45 = load i32*, i32** %5, align 8
  %46 = load i32, i32* @SSL_OP_NO_TLSv1_3, align 4
  %47 = call i32 @SSL_CTX_set_options(i32* %45, i32 %46)
  br label %48

48:                                               ; preds = %44, %35
  br label %49

49:                                               ; preds = %48, %32
  %50 = load i32, i32* %2, align 4
  %51 = icmp eq i32 %50, 4
  br i1 %51, label %52, label %64

52:                                               ; preds = %49
  %53 = load i32, i32* @SSL_EXT_CLIENT_HELLO, align 4
  %54 = load i32, i32* @SSL_EXT_TLS1_2_SERVER_HELLO, align 4
  %55 = or i32 %53, %54
  %56 = load i32, i32* @SSL_EXT_TLS1_3_SERVER_HELLO, align 4
  %57 = or i32 %55, %56
  %58 = load i32, i32* @SSL_EXT_TLS1_3_ENCRYPTED_EXTENSIONS, align 4
  %59 = or i32 %57, %58
  %60 = load i32, i32* @SSL_EXT_TLS1_3_CERTIFICATE, align 4
  %61 = or i32 %59, %60
  %62 = load i32, i32* @SSL_EXT_TLS1_3_NEW_SESSION_TICKET, align 4
  %63 = or i32 %61, %62
  store i32 %63, i32* %10, align 4
  br label %70

64:                                               ; preds = %49
  %65 = load i32, i32* @SSL_EXT_CLIENT_HELLO, align 4
  %66 = load i32, i32* @SSL_EXT_TLS1_2_SERVER_HELLO, align 4
  %67 = or i32 %65, %66
  %68 = load i32, i32* @SSL_EXT_TLS1_3_ENCRYPTED_EXTENSIONS, align 4
  %69 = or i32 %67, %68
  store i32 %69, i32* %10, align 4
  br label %70

70:                                               ; preds = %64, %52
  %71 = load i32, i32* %2, align 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %84

73:                                               ; preds = %70
  %74 = load i32*, i32** %3, align 8
  %75 = load i32, i32* @TEST_EXT_TYPE1, align 4
  %76 = load i32, i32* @old_add_cb, align 4
  %77 = load i32, i32* @old_free_cb, align 4
  %78 = load i32, i32* @old_parse_cb, align 4
  %79 = call i32 @SSL_CTX_add_client_custom_ext(i32* %74, i32 %75, i32 %76, i32 %77, i32* @test_custom_exts.client, i32 %78, i32* @test_custom_exts.client)
  %80 = call i32 @TEST_true(i32 %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %83, label %82

82:                                               ; preds = %73
  br label %364

83:                                               ; preds = %73
  br label %96

84:                                               ; preds = %70
  %85 = load i32*, i32** %3, align 8
  %86 = load i32, i32* @TEST_EXT_TYPE1, align 4
  %87 = load i32, i32* %10, align 4
  %88 = load i32, i32* @new_add_cb, align 4
  %89 = load i32, i32* @new_free_cb, align 4
  %90 = load i32, i32* @new_parse_cb, align 4
  %91 = call i32 @SSL_CTX_add_custom_ext(i32* %85, i32 %86, i32 %87, i32 %88, i32 %89, i32* @test_custom_exts.client, i32 %90, i32* @test_custom_exts.client)
  %92 = call i32 @TEST_true(i32 %91)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %95, label %94

94:                                               ; preds = %84
  br label %364

95:                                               ; preds = %84
  br label %96

96:                                               ; preds = %95, %83
  %97 = load i32*, i32** %3, align 8
  %98 = load i32, i32* @TEST_EXT_TYPE1, align 4
  %99 = load i32, i32* @old_add_cb, align 4
  %100 = load i32, i32* @old_free_cb, align 4
  %101 = load i32, i32* @old_parse_cb, align 4
  %102 = call i32 @SSL_CTX_add_client_custom_ext(i32* %97, i32 %98, i32 %99, i32 %100, i32* @test_custom_exts.client, i32 %101, i32* @test_custom_exts.client)
  %103 = call i32 @TEST_false(i32 %102)
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %115

105:                                              ; preds = %96
  %106 = load i32*, i32** %3, align 8
  %107 = load i32, i32* @TEST_EXT_TYPE1, align 4
  %108 = load i32, i32* %10, align 4
  %109 = load i32, i32* @new_add_cb, align 4
  %110 = load i32, i32* @new_free_cb, align 4
  %111 = load i32, i32* @new_parse_cb, align 4
  %112 = call i32 @SSL_CTX_add_custom_ext(i32* %106, i32 %107, i32 %108, i32 %109, i32 %110, i32* @test_custom_exts.client, i32 %111, i32* @test_custom_exts.client)
  %113 = call i32 @TEST_false(i32 %112)
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %116, label %115

115:                                              ; preds = %105, %96
  br label %364

116:                                              ; preds = %105
  %117 = load i32, i32* %2, align 4
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %130

119:                                              ; preds = %116
  %120 = load i32*, i32** %4, align 8
  %121 = load i32, i32* @TEST_EXT_TYPE1, align 4
  %122 = load i32, i32* @old_add_cb, align 4
  %123 = load i32, i32* @old_free_cb, align 4
  %124 = load i32, i32* @old_parse_cb, align 4
  %125 = call i32 @SSL_CTX_add_server_custom_ext(i32* %120, i32 %121, i32 %122, i32 %123, i32* @test_custom_exts.server, i32 %124, i32* @test_custom_exts.server)
  %126 = call i32 @TEST_true(i32 %125)
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %129, label %128

128:                                              ; preds = %119
  br label %364

129:                                              ; preds = %119
  br label %156

130:                                              ; preds = %116
  %131 = load i32*, i32** %4, align 8
  %132 = load i32, i32* @TEST_EXT_TYPE1, align 4
  %133 = load i32, i32* %10, align 4
  %134 = load i32, i32* @new_add_cb, align 4
  %135 = load i32, i32* @new_free_cb, align 4
  %136 = load i32, i32* @new_parse_cb, align 4
  %137 = call i32 @SSL_CTX_add_custom_ext(i32* %131, i32 %132, i32 %133, i32 %134, i32 %135, i32* @test_custom_exts.server, i32 %136, i32* @test_custom_exts.server)
  %138 = call i32 @TEST_true(i32 %137)
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %141, label %140

140:                                              ; preds = %130
  br label %364

141:                                              ; preds = %130
  %142 = load i32*, i32** %5, align 8
  %143 = icmp ne i32* %142, null
  br i1 %143, label %144, label %155

144:                                              ; preds = %141
  %145 = load i32*, i32** %5, align 8
  %146 = load i32, i32* @TEST_EXT_TYPE1, align 4
  %147 = load i32, i32* %10, align 4
  %148 = load i32, i32* @new_add_cb, align 4
  %149 = load i32, i32* @new_free_cb, align 4
  %150 = load i32, i32* @new_parse_cb, align 4
  %151 = call i32 @SSL_CTX_add_custom_ext(i32* %145, i32 %146, i32 %147, i32 %148, i32 %149, i32* @test_custom_exts.server, i32 %150, i32* @test_custom_exts.server)
  %152 = call i32 @TEST_true(i32 %151)
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %155, label %154

154:                                              ; preds = %144
  br label %364

155:                                              ; preds = %144, %141
  br label %156

156:                                              ; preds = %155, %129
  %157 = load i32*, i32** %4, align 8
  %158 = load i32, i32* @TEST_EXT_TYPE1, align 4
  %159 = load i32, i32* @old_add_cb, align 4
  %160 = load i32, i32* @old_free_cb, align 4
  %161 = load i32, i32* @old_parse_cb, align 4
  %162 = call i32 @SSL_CTX_add_server_custom_ext(i32* %157, i32 %158, i32 %159, i32 %160, i32* @test_custom_exts.server, i32 %161, i32* @test_custom_exts.server)
  %163 = call i32 @TEST_false(i32 %162)
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %175

165:                                              ; preds = %156
  %166 = load i32*, i32** %4, align 8
  %167 = load i32, i32* @TEST_EXT_TYPE1, align 4
  %168 = load i32, i32* %10, align 4
  %169 = load i32, i32* @new_add_cb, align 4
  %170 = load i32, i32* @new_free_cb, align 4
  %171 = load i32, i32* @new_parse_cb, align 4
  %172 = call i32 @SSL_CTX_add_custom_ext(i32* %166, i32 %167, i32 %168, i32 %169, i32 %170, i32* @test_custom_exts.server, i32 %171, i32* @test_custom_exts.server)
  %173 = call i32 @TEST_false(i32 %172)
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %176, label %175

175:                                              ; preds = %165, %156
  br label %364

176:                                              ; preds = %165
  %177 = load i32, i32* %2, align 4
  %178 = icmp eq i32 %177, 2
  br i1 %178, label %179, label %193

179:                                              ; preds = %176
  %180 = load i32*, i32** %4, align 8
  %181 = load i32, i32* @sni_cb, align 4
  %182 = call i32 @SSL_CTX_set_tlsext_servername_callback(i32* %180, i32 %181)
  %183 = call i32 @TEST_true(i32 %182)
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %191

185:                                              ; preds = %179
  %186 = load i32*, i32** %4, align 8
  %187 = load i32*, i32** %5, align 8
  %188 = call i32 @SSL_CTX_set_tlsext_servername_arg(i32* %186, i32* %187)
  %189 = call i32 @TEST_true(i32 %188)
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %192, label %191

191:                                              ; preds = %185, %179
  br label %364

192:                                              ; preds = %185
  br label %193

193:                                              ; preds = %192, %176
  %194 = load i32*, i32** %4, align 8
  %195 = load i32*, i32** %3, align 8
  %196 = call i32 @create_ssl_objects(i32* %194, i32* %195, i32** %7, i32** %6, i32* null, i32* null)
  %197 = call i32 @TEST_true(i32 %196)
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %206

199:                                              ; preds = %193
  %200 = load i32*, i32** %7, align 8
  %201 = load i32*, i32** %6, align 8
  %202 = load i32, i32* @SSL_ERROR_NONE, align 4
  %203 = call i32 @create_ssl_connection(i32* %200, i32* %201, i32 %202)
  %204 = call i32 @TEST_true(i32 %203)
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %207, label %206

206:                                              ; preds = %199, %193
  br label %364

207:                                              ; preds = %199
  %208 = load i32, i32* %2, align 4
  %209 = icmp eq i32 %208, 0
  br i1 %209, label %210, label %224

210:                                              ; preds = %207
  %211 = load i32, i32* @clntaddoldcb, align 4
  %212 = icmp ne i32 %211, 1
  br i1 %212, label %222, label %213

213:                                              ; preds = %210
  %214 = load i32, i32* @clntparseoldcb, align 4
  %215 = icmp ne i32 %214, 1
  br i1 %215, label %222, label %216

216:                                              ; preds = %213
  %217 = load i32, i32* @srvaddoldcb, align 4
  %218 = icmp ne i32 %217, 1
  br i1 %218, label %222, label %219

219:                                              ; preds = %216
  %220 = load i32, i32* @srvparseoldcb, align 4
  %221 = icmp ne i32 %220, 1
  br i1 %221, label %222, label %223

222:                                              ; preds = %219, %216, %213, %210
  br label %364

223:                                              ; preds = %219
  br label %274

224:                                              ; preds = %207
  %225 = load i32, i32* %2, align 4
  %226 = icmp eq i32 %225, 1
  br i1 %226, label %233, label %227

227:                                              ; preds = %224
  %228 = load i32, i32* %2, align 4
  %229 = icmp eq i32 %228, 2
  br i1 %229, label %233, label %230

230:                                              ; preds = %227
  %231 = load i32, i32* %2, align 4
  %232 = icmp eq i32 %231, 3
  br i1 %232, label %233, label %259

233:                                              ; preds = %230, %227, %224
  %234 = load i32, i32* @clntaddnewcb, align 4
  %235 = icmp ne i32 %234, 1
  br i1 %235, label %257, label %236

236:                                              ; preds = %233
  %237 = load i32, i32* @clntparsenewcb, align 4
  %238 = icmp ne i32 %237, 1
  br i1 %238, label %257, label %239

239:                                              ; preds = %236
  %240 = load i32, i32* @srvaddnewcb, align 4
  %241 = icmp ne i32 %240, 1
  br i1 %241, label %257, label %242

242:                                              ; preds = %239
  %243 = load i32, i32* @srvparsenewcb, align 4
  %244 = icmp ne i32 %243, 1
  br i1 %244, label %257, label %245

245:                                              ; preds = %242
  %246 = load i32, i32* %2, align 4
  %247 = icmp ne i32 %246, 2
  br i1 %247, label %248, label %251

248:                                              ; preds = %245
  %249 = load i32, i32* @snicb, align 4
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %257, label %251

251:                                              ; preds = %248, %245
  %252 = load i32, i32* %2, align 4
  %253 = icmp eq i32 %252, 2
  br i1 %253, label %254, label %258

254:                                              ; preds = %251
  %255 = load i32, i32* @snicb, align 4
  %256 = icmp ne i32 %255, 1
  br i1 %256, label %257, label %258

257:                                              ; preds = %254, %248, %242, %239, %236, %233
  br label %364

258:                                              ; preds = %254, %251
  br label %273

259:                                              ; preds = %230
  %260 = load i32, i32* @clntaddnewcb, align 4
  %261 = icmp ne i32 %260, 1
  br i1 %261, label %271, label %262

262:                                              ; preds = %259
  %263 = load i32, i32* @clntparsenewcb, align 4
  %264 = icmp ne i32 %263, 5
  br i1 %264, label %271, label %265

265:                                              ; preds = %262
  %266 = load i32, i32* @srvaddnewcb, align 4
  %267 = icmp ne i32 %266, 5
  br i1 %267, label %271, label %268

268:                                              ; preds = %265
  %269 = load i32, i32* @srvparsenewcb, align 4
  %270 = icmp ne i32 %269, 1
  br i1 %270, label %271, label %272

271:                                              ; preds = %268, %265, %262, %259
  br label %364

272:                                              ; preds = %268
  br label %273

273:                                              ; preds = %272, %258
  br label %274

274:                                              ; preds = %273, %223
  %275 = load i32*, i32** %6, align 8
  %276 = call i32* @SSL_get1_session(i32* %275)
  store i32* %276, i32** %9, align 8
  %277 = load i32*, i32** %6, align 8
  %278 = call i32 @SSL_shutdown(i32* %277)
  %279 = load i32*, i32** %7, align 8
  %280 = call i32 @SSL_shutdown(i32* %279)
  %281 = load i32*, i32** %7, align 8
  %282 = call i32 @SSL_free(i32* %281)
  %283 = load i32*, i32** %6, align 8
  %284 = call i32 @SSL_free(i32* %283)
  store i32* null, i32** %6, align 8
  store i32* null, i32** %7, align 8
  %285 = load i32, i32* %2, align 4
  %286 = icmp eq i32 %285, 3
  br i1 %286, label %287, label %288

287:                                              ; preds = %274
  store i32 1, i32* %8, align 4
  br label %364

288:                                              ; preds = %274
  %289 = load i32*, i32** %4, align 8
  %290 = load i32*, i32** %3, align 8
  %291 = call i32 @create_ssl_objects(i32* %289, i32* %290, i32** %7, i32** %6, i32* null, i32* null)
  %292 = call i32 @TEST_true(i32 %291)
  %293 = icmp ne i32 %292, 0
  br i1 %293, label %294, label %307

294:                                              ; preds = %288
  %295 = load i32*, i32** %6, align 8
  %296 = load i32*, i32** %9, align 8
  %297 = call i32 @SSL_set_session(i32* %295, i32* %296)
  %298 = call i32 @TEST_true(i32 %297)
  %299 = icmp ne i32 %298, 0
  br i1 %299, label %300, label %307

300:                                              ; preds = %294
  %301 = load i32*, i32** %7, align 8
  %302 = load i32*, i32** %6, align 8
  %303 = load i32, i32* @SSL_ERROR_NONE, align 4
  %304 = call i32 @create_ssl_connection(i32* %301, i32* %302, i32 %303)
  %305 = call i32 @TEST_true(i32 %304)
  %306 = icmp ne i32 %305, 0
  br i1 %306, label %308, label %307

307:                                              ; preds = %300, %294, %288
  br label %364

308:                                              ; preds = %300
  %309 = load i32, i32* %2, align 4
  %310 = icmp eq i32 %309, 0
  br i1 %310, label %311, label %325

311:                                              ; preds = %308
  %312 = load i32, i32* @clntaddoldcb, align 4
  %313 = icmp ne i32 %312, 2
  br i1 %313, label %323, label %314

314:                                              ; preds = %311
  %315 = load i32, i32* @clntparseoldcb, align 4
  %316 = icmp ne i32 %315, 1
  br i1 %316, label %323, label %317

317:                                              ; preds = %314
  %318 = load i32, i32* @srvaddoldcb, align 4
  %319 = icmp ne i32 %318, 1
  br i1 %319, label %323, label %320

320:                                              ; preds = %317
  %321 = load i32, i32* @srvparseoldcb, align 4
  %322 = icmp ne i32 %321, 1
  br i1 %322, label %323, label %324

323:                                              ; preds = %320, %317, %314, %311
  br label %364

324:                                              ; preds = %320
  br label %363

325:                                              ; preds = %308
  %326 = load i32, i32* %2, align 4
  %327 = icmp eq i32 %326, 1
  br i1 %327, label %334, label %328

328:                                              ; preds = %325
  %329 = load i32, i32* %2, align 4
  %330 = icmp eq i32 %329, 2
  br i1 %330, label %334, label %331

331:                                              ; preds = %328
  %332 = load i32, i32* %2, align 4
  %333 = icmp eq i32 %332, 3
  br i1 %333, label %334, label %348

334:                                              ; preds = %331, %328, %325
  %335 = load i32, i32* @clntaddnewcb, align 4
  %336 = icmp ne i32 %335, 2
  br i1 %336, label %346, label %337

337:                                              ; preds = %334
  %338 = load i32, i32* @clntparsenewcb, align 4
  %339 = icmp ne i32 %338, 2
  br i1 %339, label %346, label %340

340:                                              ; preds = %337
  %341 = load i32, i32* @srvaddnewcb, align 4
  %342 = icmp ne i32 %341, 2
  br i1 %342, label %346, label %343

343:                                              ; preds = %340
  %344 = load i32, i32* @srvparsenewcb, align 4
  %345 = icmp ne i32 %344, 2
  br i1 %345, label %346, label %347

346:                                              ; preds = %343, %340, %337, %334
  br label %364

347:                                              ; preds = %343
  br label %362

348:                                              ; preds = %331
  %349 = load i32, i32* @clntaddnewcb, align 4
  %350 = icmp ne i32 %349, 2
  br i1 %350, label %360, label %351

351:                                              ; preds = %348
  %352 = load i32, i32* @clntparsenewcb, align 4
  %353 = icmp ne i32 %352, 8
  br i1 %353, label %360, label %354

354:                                              ; preds = %351
  %355 = load i32, i32* @srvaddnewcb, align 4
  %356 = icmp ne i32 %355, 8
  br i1 %356, label %360, label %357

357:                                              ; preds = %354
  %358 = load i32, i32* @srvparsenewcb, align 4
  %359 = icmp ne i32 %358, 2
  br i1 %359, label %360, label %361

360:                                              ; preds = %357, %354, %351, %348
  br label %364

361:                                              ; preds = %357
  br label %362

362:                                              ; preds = %361, %347
  br label %363

363:                                              ; preds = %362, %324
  store i32 1, i32* %8, align 4
  br label %364

364:                                              ; preds = %363, %360, %346, %323, %307, %287, %271, %257, %222, %206, %191, %175, %154, %140, %128, %115, %94, %82, %31, %19
  %365 = load i32*, i32** %9, align 8
  %366 = call i32 @SSL_SESSION_free(i32* %365)
  %367 = load i32*, i32** %7, align 8
  %368 = call i32 @SSL_free(i32* %367)
  %369 = load i32*, i32** %6, align 8
  %370 = call i32 @SSL_free(i32* %369)
  %371 = load i32*, i32** %5, align 8
  %372 = call i32 @SSL_CTX_free(i32* %371)
  %373 = load i32*, i32** %4, align 8
  %374 = call i32 @SSL_CTX_free(i32* %373)
  %375 = load i32*, i32** %3, align 8
  %376 = call i32 @SSL_CTX_free(i32* %375)
  %377 = load i32, i32* %8, align 4
  ret i32 %377
}

declare dso_local i32 @TEST_true(i32) #1

declare dso_local i32 @create_ssl_ctx_pair(i32, i32*, i32, i32, i32**, i32**, i32, i32) #1

declare dso_local i32 @TLS_server_method(...) #1

declare dso_local i32* @TLS_client_method(...) #1

declare dso_local i32 @SSL_CTX_set_options(i32*, i32) #1

declare dso_local i32 @SSL_CTX_add_client_custom_ext(i32*, i32, i32, i32, i32*, i32, i32*) #1

declare dso_local i32 @SSL_CTX_add_custom_ext(i32*, i32, i32, i32, i32, i32*, i32, i32*) #1

declare dso_local i32 @TEST_false(i32) #1

declare dso_local i32 @SSL_CTX_add_server_custom_ext(i32*, i32, i32, i32, i32*, i32, i32*) #1

declare dso_local i32 @SSL_CTX_set_tlsext_servername_callback(i32*, i32) #1

declare dso_local i32 @SSL_CTX_set_tlsext_servername_arg(i32*, i32*) #1

declare dso_local i32 @create_ssl_objects(i32*, i32*, i32**, i32**, i32*, i32*) #1

declare dso_local i32 @create_ssl_connection(i32*, i32*, i32) #1

declare dso_local i32* @SSL_get1_session(i32*) #1

declare dso_local i32 @SSL_shutdown(i32*) #1

declare dso_local i32 @SSL_free(i32*) #1

declare dso_local i32 @SSL_set_session(i32*, i32*) #1

declare dso_local i32 @SSL_SESSION_free(i32*) #1

declare dso_local i32 @SSL_CTX_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
