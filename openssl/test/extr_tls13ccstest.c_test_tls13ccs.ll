; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_tls13ccstest.c_test_tls13ccs.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_tls13ccstest.c_test_tls13ccs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.test_tls13ccs.msg = private unnamed_addr constant [11 x i8] c"Dummy data\00", align 1
@ccsbeforesh = common dso_local global i8* null, align 8
@ccsaftersh = common dso_local global i8* null, align 8
@sccsseen = common dso_local global i8* null, align 8
@shseen = common dso_local global i8* null, align 8
@chseen = common dso_local global i8* null, align 8
@badsessid = common dso_local global i8* null, align 8
@badvers = common dso_local global i8* null, align 8
@badccs = common dso_local global i8* null, align 8
@cappdataseen = common dso_local global i8* null, align 8
@sappdataseen = common dso_local global i8* null, align 8
@chsessidlen = common dso_local global i64 0, align 8
@TLS1_VERSION = common dso_local global i32 0, align 4
@cert = common dso_local global i32 0, align 4
@privkey = common dso_local global i32 0, align 4
@SSL3_RT_MAX_PLAIN_LENGTH = common dso_local global i32 0, align 4
@SSL_OP_ENABLE_MIDDLEBOX_COMPAT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Invalid test value\00", align 1
@SSL_ERROR_NONE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"P-256\00", align 1
@s_to_c_fbio = common dso_local global i32* null, align 8
@c_to_s_fbio = common dso_local global i32* null, align 8
@SSL_READ_EARLY_DATA_SUCCESS = common dso_local global i32 0, align 4
@SSL_READ_EARLY_DATA_FINISH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @test_tls13ccs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_tls13ccs(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [11 x i8], align 1
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
  %13 = bitcast [11 x i8]* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %13, i8* align 1 getelementptr inbounds ([11 x i8], [11 x i8]* @__const.test_tls13ccs.msg, i32 0, i32 0), i64 11, i1 false)
  store i32* null, i32** %12, align 8
  store i8* null, i8** @ccsbeforesh, align 8
  store i8* null, i8** @ccsaftersh, align 8
  store i8* null, i8** @sccsseen, align 8
  store i8* null, i8** @shseen, align 8
  store i8* null, i8** @chseen, align 8
  store i8* null, i8** @badsessid, align 8
  store i8* null, i8** @badvers, align 8
  store i8* null, i8** @badccs, align 8
  store i8* null, i8** @cappdataseen, align 8
  store i8* null, i8** @sappdataseen, align 8
  store i64 0, i64* @chsessidlen, align 8
  %14 = call i32 (...) @TLS_server_method()
  %15 = call i32 (...) @TLS_client_method()
  %16 = load i32, i32* @TLS1_VERSION, align 4
  %17 = load i32, i32* @cert, align 4
  %18 = load i32, i32* @privkey, align 4
  %19 = call i8* @create_ssl_ctx_pair(i32 %14, i32 %15, i32 %16, i32 0, i32** %3, i32** %4, i32 %17, i32 %18)
  %20 = call i32 @TEST_true(i8* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %1
  %23 = load i32*, i32** %3, align 8
  %24 = load i32, i32* @SSL3_RT_MAX_PLAIN_LENGTH, align 4
  %25 = call i8* @SSL_CTX_set_max_early_data(i32* %23, i32 %24)
  %26 = call i32 @TEST_true(i8* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %22, %1
  br label %413

29:                                               ; preds = %22
  %30 = load i32, i32* %2, align 4
  switch i32 %30, label %40 [
    i32 0, label %31
    i32 3, label %31
    i32 6, label %31
    i32 9, label %31
    i32 1, label %32
    i32 4, label %32
    i32 7, label %32
    i32 10, label %32
    i32 2, label %36
    i32 5, label %36
    i32 8, label %36
    i32 11, label %36
  ]

31:                                               ; preds = %29, %29, %29, %29
  br label %42

32:                                               ; preds = %29, %29, %29, %29
  %33 = load i32*, i32** %4, align 8
  %34 = load i32, i32* @SSL_OP_ENABLE_MIDDLEBOX_COMPAT, align 4
  %35 = call i32 @SSL_CTX_clear_options(i32* %33, i32 %34)
  br label %42

36:                                               ; preds = %29, %29, %29, %29
  %37 = load i32*, i32** %3, align 8
  %38 = load i32, i32* @SSL_OP_ENABLE_MIDDLEBOX_COMPAT, align 4
  %39 = call i32 @SSL_CTX_clear_options(i32* %37, i32 %38)
  br label %42

40:                                               ; preds = %29
  %41 = call i32 @TEST_error(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %413

42:                                               ; preds = %36, %32, %31
  %43 = load i32, i32* %2, align 4
  %44 = icmp sge i32 %43, 6
  br i1 %44, label %45, label %75

45:                                               ; preds = %42
  %46 = load i32*, i32** %3, align 8
  %47 = load i32*, i32** %4, align 8
  %48 = call i8* @create_ssl_objects(i32* %46, i32* %47, i32** %5, i32** %6, i32* null, i32* null)
  %49 = call i32 @TEST_true(i8* %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %45
  %52 = load i32*, i32** %5, align 8
  %53 = load i32*, i32** %6, align 8
  %54 = load i32, i32* @SSL_ERROR_NONE, align 4
  %55 = call i8* @create_ssl_connection(i32* %52, i32* %53, i32 %54)
  %56 = call i32 @TEST_true(i8* %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %51, %45
  br label %413

59:                                               ; preds = %51
  %60 = load i32*, i32** %6, align 8
  %61 = call i32* @SSL_get1_session(i32* %60)
  store i32* %61, i32** %12, align 8
  %62 = load i32*, i32** %12, align 8
  %63 = call i32 @TEST_ptr(i32* %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %59
  br label %413

66:                                               ; preds = %59
  %67 = load i32*, i32** %6, align 8
  %68 = call i32 @SSL_shutdown(i32* %67)
  %69 = load i32*, i32** %5, align 8
  %70 = call i32 @SSL_shutdown(i32* %69)
  %71 = load i32*, i32** %5, align 8
  %72 = call i32 @SSL_free(i32* %71)
  %73 = load i32*, i32** %6, align 8
  %74 = call i32 @SSL_free(i32* %73)
  store i32* null, i32** %6, align 8
  store i32* null, i32** %5, align 8
  br label %75

75:                                               ; preds = %66, %42
  %76 = load i32, i32* %2, align 4
  %77 = icmp sge i32 %76, 3
  br i1 %77, label %78, label %81

78:                                               ; preds = %75
  %79 = load i32, i32* %2, align 4
  %80 = icmp sle i32 %79, 5
  br i1 %80, label %84, label %81

81:                                               ; preds = %78, %75
  %82 = load i32, i32* %2, align 4
  %83 = icmp sge i32 %82, 9
  br i1 %83, label %84, label %91

84:                                               ; preds = %81, %78
  %85 = load i32*, i32** %3, align 8
  %86 = call i8* @SSL_CTX_set1_groups_list(i32* %85, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %87 = call i32 @TEST_true(i8* %86)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %90, label %89

89:                                               ; preds = %84
  br label %413

90:                                               ; preds = %84
  br label %91

91:                                               ; preds = %90, %81
  %92 = call i32 (...) @bio_f_watchccs_filter()
  %93 = call i32* @BIO_new(i32 %92)
  store i32* %93, i32** @s_to_c_fbio, align 8
  %94 = call i32 (...) @bio_f_watchccs_filter()
  %95 = call i32* @BIO_new(i32 %94)
  store i32* %95, i32** @c_to_s_fbio, align 8
  %96 = load i32*, i32** @s_to_c_fbio, align 8
  %97 = call i32 @TEST_ptr(i32* %96)
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %91
  %100 = load i32*, i32** @c_to_s_fbio, align 8
  %101 = call i32 @TEST_ptr(i32* %100)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %108, label %103

103:                                              ; preds = %99, %91
  %104 = load i32*, i32** @s_to_c_fbio, align 8
  %105 = call i32 @BIO_free(i32* %104)
  %106 = load i32*, i32** @c_to_s_fbio, align 8
  %107 = call i32 @BIO_free(i32* %106)
  br label %413

108:                                              ; preds = %99
  %109 = load i32*, i32** %3, align 8
  %110 = load i32*, i32** %4, align 8
  %111 = load i32*, i32** @s_to_c_fbio, align 8
  %112 = load i32*, i32** @c_to_s_fbio, align 8
  %113 = call i8* @create_ssl_objects(i32* %109, i32* %110, i32** %5, i32** %6, i32* %111, i32* %112)
  %114 = call i32 @TEST_true(i8* %113)
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %117, label %116

116:                                              ; preds = %108
  br label %413

117:                                              ; preds = %108
  %118 = load i32, i32* %2, align 4
  %119 = icmp sge i32 %118, 6
  br i1 %119, label %120, label %171

120:                                              ; preds = %117
  %121 = load i32*, i32** %6, align 8
  %122 = load i32*, i32** %12, align 8
  %123 = call i8* @SSL_set_session(i32* %121, i32* %122)
  %124 = call i32 @TEST_true(i8* %123)
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %144

126:                                              ; preds = %120
  %127 = load i32*, i32** %6, align 8
  %128 = getelementptr inbounds [11 x i8], [11 x i8]* %8, i64 0, i64 0
  %129 = getelementptr inbounds [11 x i8], [11 x i8]* %8, i64 0, i64 0
  %130 = call i32 @strlen(i8* %129)
  %131 = call i8* @SSL_write_early_data(i32* %127, i8* %128, i32 %130, i64* %10)
  %132 = call i32 @TEST_true(i8* %131)
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %144

134:                                              ; preds = %126
  %135 = load i32, i32* %2, align 4
  %136 = icmp sle i32 %135, 8
  br i1 %136, label %137, label %145

137:                                              ; preds = %134
  %138 = load i32*, i32** %5, align 8
  %139 = getelementptr inbounds [80 x i8], [80 x i8]* %9, i64 0, i64 0
  %140 = call i32 @SSL_read_early_data(i32* %138, i8* %139, i32 80, i64* %11)
  %141 = load i32, i32* @SSL_READ_EARLY_DATA_SUCCESS, align 4
  %142 = call i32 @TEST_int_eq(i32 %140, i32 %141)
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %145, label %144

144:                                              ; preds = %137, %126, %120
  br label %413

145:                                              ; preds = %137, %134
  %146 = load i32, i32* %2, align 4
  %147 = icmp sle i32 %146, 8
  br i1 %147, label %148, label %155

148:                                              ; preds = %145
  %149 = load i32*, i32** %6, align 8
  %150 = call i32 @SSL_connect(i32* %149)
  %151 = call i32 @TEST_int_gt(i32 %150, i32 0)
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %154, label %153

153:                                              ; preds = %148
  br label %413

154:                                              ; preds = %148
  br label %162

155:                                              ; preds = %145
  %156 = load i32*, i32** %6, align 8
  %157 = call i32 @SSL_connect(i32* %156)
  %158 = call i32 @TEST_int_le(i32 %157, i32 0)
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %161, label %160

160:                                              ; preds = %155
  br label %413

161:                                              ; preds = %155
  br label %162

162:                                              ; preds = %161, %154
  %163 = load i32*, i32** %5, align 8
  %164 = getelementptr inbounds [80 x i8], [80 x i8]* %9, i64 0, i64 0
  %165 = call i32 @SSL_read_early_data(i32* %163, i8* %164, i32 80, i64* %11)
  %166 = load i32, i32* @SSL_READ_EARLY_DATA_FINISH, align 4
  %167 = call i32 @TEST_int_eq(i32 %165, i32 %166)
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %170, label %169

169:                                              ; preds = %162
  br label %413

170:                                              ; preds = %162
  br label %171

171:                                              ; preds = %170, %117
  %172 = load i32*, i32** %5, align 8
  %173 = load i32*, i32** %6, align 8
  %174 = load i32, i32* @SSL_ERROR_NONE, align 4
  %175 = call i8* @create_ssl_connection(i32* %172, i32* %173, i32 %174)
  %176 = call i32 @TEST_true(i8* %175)
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %179, label %178

178:                                              ; preds = %171
  br label %413

179:                                              ; preds = %171
  %180 = load i8*, i8** @badccs, align 8
  %181 = call i32 @TEST_false(i8* %180)
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %191

183:                                              ; preds = %179
  %184 = load i8*, i8** @badvers, align 8
  %185 = call i32 @TEST_false(i8* %184)
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %191

187:                                              ; preds = %183
  %188 = load i8*, i8** @badsessid, align 8
  %189 = call i32 @TEST_false(i8* %188)
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %192, label %191

191:                                              ; preds = %187, %183, %179
  br label %413

192:                                              ; preds = %187
  %193 = load i32, i32* %2, align 4
  switch i32 %193, label %410 [
    i32 0, label %194
    i32 1, label %212
    i32 2, label %230
    i32 3, label %248
    i32 4, label %266
    i32 5, label %284
    i32 6, label %302
    i32 7, label %320
    i32 8, label %338
    i32 9, label %356
    i32 10, label %374
    i32 11, label %392
  ]

194:                                              ; preds = %192
  %195 = load i8*, i8** @sccsseen, align 8
  %196 = call i32 @TEST_true(i8* %195)
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %210

198:                                              ; preds = %194
  %199 = load i8*, i8** @ccsaftersh, align 8
  %200 = call i32 @TEST_true(i8* %199)
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %210

202:                                              ; preds = %198
  %203 = load i8*, i8** @ccsbeforesh, align 8
  %204 = call i32 @TEST_false(i8* %203)
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %210

206:                                              ; preds = %202
  %207 = load i64, i64* @chsessidlen, align 8
  %208 = call i32 @TEST_size_t_gt(i64 %207, i32 0)
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %211, label %210

210:                                              ; preds = %206, %202, %198, %194
  br label %413

211:                                              ; preds = %206
  br label %412

212:                                              ; preds = %192
  %213 = load i8*, i8** @sccsseen, align 8
  %214 = call i32 @TEST_true(i8* %213)
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %228

216:                                              ; preds = %212
  %217 = load i8*, i8** @ccsaftersh, align 8
  %218 = call i32 @TEST_false(i8* %217)
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %228

220:                                              ; preds = %216
  %221 = load i8*, i8** @ccsbeforesh, align 8
  %222 = call i32 @TEST_false(i8* %221)
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %228

224:                                              ; preds = %220
  %225 = load i64, i64* @chsessidlen, align 8
  %226 = call i32 @TEST_size_t_eq(i64 %225, i32 0)
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %229, label %228

228:                                              ; preds = %224, %220, %216, %212
  br label %413

229:                                              ; preds = %224
  br label %412

230:                                              ; preds = %192
  %231 = load i8*, i8** @sccsseen, align 8
  %232 = call i32 @TEST_false(i8* %231)
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %234, label %246

234:                                              ; preds = %230
  %235 = load i8*, i8** @ccsaftersh, align 8
  %236 = call i32 @TEST_true(i8* %235)
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %238, label %246

238:                                              ; preds = %234
  %239 = load i8*, i8** @ccsbeforesh, align 8
  %240 = call i32 @TEST_false(i8* %239)
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %242, label %246

242:                                              ; preds = %238
  %243 = load i64, i64* @chsessidlen, align 8
  %244 = call i32 @TEST_size_t_gt(i64 %243, i32 0)
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %247, label %246

246:                                              ; preds = %242, %238, %234, %230
  br label %413

247:                                              ; preds = %242
  br label %412

248:                                              ; preds = %192
  %249 = load i8*, i8** @sccsseen, align 8
  %250 = call i32 @TEST_true(i8* %249)
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %252, label %264

252:                                              ; preds = %248
  %253 = load i8*, i8** @ccsaftersh, align 8
  %254 = call i32 @TEST_true(i8* %253)
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %256, label %264

256:                                              ; preds = %252
  %257 = load i8*, i8** @ccsbeforesh, align 8
  %258 = call i32 @TEST_false(i8* %257)
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %260, label %264

260:                                              ; preds = %256
  %261 = load i64, i64* @chsessidlen, align 8
  %262 = call i32 @TEST_size_t_gt(i64 %261, i32 0)
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %265, label %264

264:                                              ; preds = %260, %256, %252, %248
  br label %413

265:                                              ; preds = %260
  br label %412

266:                                              ; preds = %192
  %267 = load i8*, i8** @sccsseen, align 8
  %268 = call i32 @TEST_true(i8* %267)
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %270, label %282

270:                                              ; preds = %266
  %271 = load i8*, i8** @ccsaftersh, align 8
  %272 = call i32 @TEST_false(i8* %271)
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %274, label %282

274:                                              ; preds = %270
  %275 = load i8*, i8** @ccsbeforesh, align 8
  %276 = call i32 @TEST_false(i8* %275)
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %278, label %282

278:                                              ; preds = %274
  %279 = load i64, i64* @chsessidlen, align 8
  %280 = call i32 @TEST_size_t_eq(i64 %279, i32 0)
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %283, label %282

282:                                              ; preds = %278, %274, %270, %266
  br label %413

283:                                              ; preds = %278
  br label %412

284:                                              ; preds = %192
  %285 = load i8*, i8** @sccsseen, align 8
  %286 = call i32 @TEST_false(i8* %285)
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %288, label %300

288:                                              ; preds = %284
  %289 = load i8*, i8** @ccsaftersh, align 8
  %290 = call i32 @TEST_true(i8* %289)
  %291 = icmp ne i32 %290, 0
  br i1 %291, label %292, label %300

292:                                              ; preds = %288
  %293 = load i8*, i8** @ccsbeforesh, align 8
  %294 = call i32 @TEST_false(i8* %293)
  %295 = icmp ne i32 %294, 0
  br i1 %295, label %296, label %300

296:                                              ; preds = %292
  %297 = load i64, i64* @chsessidlen, align 8
  %298 = call i32 @TEST_size_t_gt(i64 %297, i32 0)
  %299 = icmp ne i32 %298, 0
  br i1 %299, label %301, label %300

300:                                              ; preds = %296, %292, %288, %284
  br label %413

301:                                              ; preds = %296
  br label %412

302:                                              ; preds = %192
  %303 = load i8*, i8** @sccsseen, align 8
  %304 = call i32 @TEST_true(i8* %303)
  %305 = icmp ne i32 %304, 0
  br i1 %305, label %306, label %318

306:                                              ; preds = %302
  %307 = load i8*, i8** @ccsaftersh, align 8
  %308 = call i32 @TEST_false(i8* %307)
  %309 = icmp ne i32 %308, 0
  br i1 %309, label %310, label %318

310:                                              ; preds = %306
  %311 = load i8*, i8** @ccsbeforesh, align 8
  %312 = call i32 @TEST_true(i8* %311)
  %313 = icmp ne i32 %312, 0
  br i1 %313, label %314, label %318

314:                                              ; preds = %310
  %315 = load i64, i64* @chsessidlen, align 8
  %316 = call i32 @TEST_size_t_gt(i64 %315, i32 0)
  %317 = icmp ne i32 %316, 0
  br i1 %317, label %319, label %318

318:                                              ; preds = %314, %310, %306, %302
  br label %413

319:                                              ; preds = %314
  br label %412

320:                                              ; preds = %192
  %321 = load i8*, i8** @sccsseen, align 8
  %322 = call i32 @TEST_true(i8* %321)
  %323 = icmp ne i32 %322, 0
  br i1 %323, label %324, label %336

324:                                              ; preds = %320
  %325 = load i8*, i8** @ccsaftersh, align 8
  %326 = call i32 @TEST_false(i8* %325)
  %327 = icmp ne i32 %326, 0
  br i1 %327, label %328, label %336

328:                                              ; preds = %324
  %329 = load i8*, i8** @ccsbeforesh, align 8
  %330 = call i32 @TEST_false(i8* %329)
  %331 = icmp ne i32 %330, 0
  br i1 %331, label %332, label %336

332:                                              ; preds = %328
  %333 = load i64, i64* @chsessidlen, align 8
  %334 = call i32 @TEST_size_t_eq(i64 %333, i32 0)
  %335 = icmp ne i32 %334, 0
  br i1 %335, label %337, label %336

336:                                              ; preds = %332, %328, %324, %320
  br label %413

337:                                              ; preds = %332
  br label %412

338:                                              ; preds = %192
  %339 = load i8*, i8** @sccsseen, align 8
  %340 = call i32 @TEST_false(i8* %339)
  %341 = icmp ne i32 %340, 0
  br i1 %341, label %342, label %354

342:                                              ; preds = %338
  %343 = load i8*, i8** @ccsaftersh, align 8
  %344 = call i32 @TEST_false(i8* %343)
  %345 = icmp ne i32 %344, 0
  br i1 %345, label %346, label %354

346:                                              ; preds = %342
  %347 = load i8*, i8** @ccsbeforesh, align 8
  %348 = call i32 @TEST_true(i8* %347)
  %349 = icmp ne i32 %348, 0
  br i1 %349, label %350, label %354

350:                                              ; preds = %346
  %351 = load i64, i64* @chsessidlen, align 8
  %352 = call i32 @TEST_size_t_gt(i64 %351, i32 0)
  %353 = icmp ne i32 %352, 0
  br i1 %353, label %355, label %354

354:                                              ; preds = %350, %346, %342, %338
  br label %413

355:                                              ; preds = %350
  br label %412

356:                                              ; preds = %192
  %357 = load i8*, i8** @sccsseen, align 8
  %358 = call i32 @TEST_true(i8* %357)
  %359 = icmp ne i32 %358, 0
  br i1 %359, label %360, label %372

360:                                              ; preds = %356
  %361 = load i8*, i8** @ccsaftersh, align 8
  %362 = call i32 @TEST_false(i8* %361)
  %363 = icmp ne i32 %362, 0
  br i1 %363, label %364, label %372

364:                                              ; preds = %360
  %365 = load i8*, i8** @ccsbeforesh, align 8
  %366 = call i32 @TEST_true(i8* %365)
  %367 = icmp ne i32 %366, 0
  br i1 %367, label %368, label %372

368:                                              ; preds = %364
  %369 = load i64, i64* @chsessidlen, align 8
  %370 = call i32 @TEST_size_t_gt(i64 %369, i32 0)
  %371 = icmp ne i32 %370, 0
  br i1 %371, label %373, label %372

372:                                              ; preds = %368, %364, %360, %356
  br label %413

373:                                              ; preds = %368
  br label %412

374:                                              ; preds = %192
  %375 = load i8*, i8** @sccsseen, align 8
  %376 = call i32 @TEST_true(i8* %375)
  %377 = icmp ne i32 %376, 0
  br i1 %377, label %378, label %390

378:                                              ; preds = %374
  %379 = load i8*, i8** @ccsaftersh, align 8
  %380 = call i32 @TEST_false(i8* %379)
  %381 = icmp ne i32 %380, 0
  br i1 %381, label %382, label %390

382:                                              ; preds = %378
  %383 = load i8*, i8** @ccsbeforesh, align 8
  %384 = call i32 @TEST_false(i8* %383)
  %385 = icmp ne i32 %384, 0
  br i1 %385, label %386, label %390

386:                                              ; preds = %382
  %387 = load i64, i64* @chsessidlen, align 8
  %388 = call i32 @TEST_size_t_eq(i64 %387, i32 0)
  %389 = icmp ne i32 %388, 0
  br i1 %389, label %391, label %390

390:                                              ; preds = %386, %382, %378, %374
  br label %413

391:                                              ; preds = %386
  br label %412

392:                                              ; preds = %192
  %393 = load i8*, i8** @sccsseen, align 8
  %394 = call i32 @TEST_false(i8* %393)
  %395 = icmp ne i32 %394, 0
  br i1 %395, label %396, label %408

396:                                              ; preds = %392
  %397 = load i8*, i8** @ccsaftersh, align 8
  %398 = call i32 @TEST_false(i8* %397)
  %399 = icmp ne i32 %398, 0
  br i1 %399, label %400, label %408

400:                                              ; preds = %396
  %401 = load i8*, i8** @ccsbeforesh, align 8
  %402 = call i32 @TEST_true(i8* %401)
  %403 = icmp ne i32 %402, 0
  br i1 %403, label %404, label %408

404:                                              ; preds = %400
  %405 = load i64, i64* @chsessidlen, align 8
  %406 = call i32 @TEST_size_t_gt(i64 %405, i32 0)
  %407 = icmp ne i32 %406, 0
  br i1 %407, label %409, label %408

408:                                              ; preds = %404, %400, %396, %392
  br label %413

409:                                              ; preds = %404
  br label %412

410:                                              ; preds = %192
  %411 = call i32 @TEST_error(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %413

412:                                              ; preds = %409, %391, %373, %355, %337, %319, %301, %283, %265, %247, %229, %211
  store i32 1, i32* %7, align 4
  br label %413

413:                                              ; preds = %412, %410, %408, %390, %372, %354, %336, %318, %300, %282, %264, %246, %228, %210, %191, %178, %169, %160, %153, %144, %116, %103, %89, %65, %58, %40, %28
  %414 = load i32*, i32** %12, align 8
  %415 = call i32 @SSL_SESSION_free(i32* %414)
  %416 = load i32*, i32** %5, align 8
  %417 = call i32 @SSL_free(i32* %416)
  %418 = load i32*, i32** %6, align 8
  %419 = call i32 @SSL_free(i32* %418)
  %420 = load i32*, i32** %3, align 8
  %421 = call i32 @SSL_CTX_free(i32* %420)
  %422 = load i32*, i32** %4, align 8
  %423 = call i32 @SSL_CTX_free(i32* %422)
  %424 = load i32, i32* %7, align 4
  ret i32 %424
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @TEST_true(i8*) #2

declare dso_local i8* @create_ssl_ctx_pair(i32, i32, i32, i32, i32**, i32**, i32, i32) #2

declare dso_local i32 @TLS_server_method(...) #2

declare dso_local i32 @TLS_client_method(...) #2

declare dso_local i8* @SSL_CTX_set_max_early_data(i32*, i32) #2

declare dso_local i32 @SSL_CTX_clear_options(i32*, i32) #2

declare dso_local i32 @TEST_error(i8*) #2

declare dso_local i8* @create_ssl_objects(i32*, i32*, i32**, i32**, i32*, i32*) #2

declare dso_local i8* @create_ssl_connection(i32*, i32*, i32) #2

declare dso_local i32* @SSL_get1_session(i32*) #2

declare dso_local i32 @TEST_ptr(i32*) #2

declare dso_local i32 @SSL_shutdown(i32*) #2

declare dso_local i32 @SSL_free(i32*) #2

declare dso_local i8* @SSL_CTX_set1_groups_list(i32*, i8*) #2

declare dso_local i32* @BIO_new(i32) #2

declare dso_local i32 @bio_f_watchccs_filter(...) #2

declare dso_local i32 @BIO_free(i32*) #2

declare dso_local i8* @SSL_set_session(i32*, i32*) #2

declare dso_local i8* @SSL_write_early_data(i32*, i8*, i32, i64*) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @TEST_int_eq(i32, i32) #2

declare dso_local i32 @SSL_read_early_data(i32*, i8*, i32, i64*) #2

declare dso_local i32 @TEST_int_gt(i32, i32) #2

declare dso_local i32 @SSL_connect(i32*) #2

declare dso_local i32 @TEST_int_le(i32, i32) #2

declare dso_local i32 @TEST_false(i8*) #2

declare dso_local i32 @TEST_size_t_gt(i64, i32) #2

declare dso_local i32 @TEST_size_t_eq(i64, i32) #2

declare dso_local i32 @SSL_SESSION_free(i32*) #2

declare dso_local i32 @SSL_CTX_free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
