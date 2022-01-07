; ModuleID = '/home/carl/AnghaBench/php-src/ext/phar/extr_util.c_phar_verify_signature.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/phar/extr_util.c_phar_verify_signature.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@module_registry = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"openssl\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"openssl not loaded\00", align 1
@FAILURE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"%s.pubkey\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@PHP_STREAM_COPY_ALL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [37 x i8] c"openssl public key could not be read\00", align 1
@.str.5 = private unnamed_addr constant [40 x i8] c"openssl signature could not be verified\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"broken signature\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"broken or unsupported signature\00", align 1
@SUCCESS = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @phar_verify_signature(i32* %0, i64 %1, i32 %2, i8* %3, i64 %4, i8* %5, i8** %6, i64* %7, i8** %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8**, align 8
  %18 = alloca i64*, align 8
  %19 = alloca i8**, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca [1024 x i8], align 16
  %24 = alloca i64, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i8*, align 8
  %27 = alloca i32*, align 8
  %28 = alloca [64 x i8], align 16
  %29 = alloca i32, align 4
  %30 = alloca [32 x i8], align 16
  %31 = alloca i32, align 4
  %32 = alloca [20 x i8], align 16
  %33 = alloca i32, align 4
  %34 = alloca [16 x i8], align 16
  %35 = alloca i32, align 4
  store i32* %0, i32** %11, align 8
  store i64 %1, i64* %12, align 8
  store i32 %2, i32* %13, align 4
  store i8* %3, i8** %14, align 8
  store i64 %4, i64* %15, align 8
  store i8* %5, i8** %16, align 8
  store i8** %6, i8*** %17, align 8
  store i64* %7, i64** %18, align 8
  store i8** %8, i8*** %19, align 8
  %36 = load i32*, i32** %11, align 8
  %37 = call i32 @php_stream_rewind(i32* %36)
  %38 = load i32, i32* %13, align 4
  switch i32 %38, label %371 [
    i32 131, label %39
    i32 128, label %135
    i32 129, label %194
    i32 130, label %253
    i32 132, label %312
  ]

39:                                               ; preds = %9
  store i32* null, i32** %25, align 8
  %40 = call i32 @zend_hash_str_exists(i32* @module_registry, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 7)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %50, label %42

42:                                               ; preds = %39
  %43 = load i8**, i8*** %19, align 8
  %44 = icmp ne i8** %43, null
  br i1 %44, label %45, label %48

45:                                               ; preds = %42
  %46 = load i8**, i8*** %19, align 8
  %47 = call i32 (i8**, i32, i8*, ...) @spprintf(i8** %46, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  br label %48

48:                                               ; preds = %45, %42
  %49 = load i32, i32* @FAILURE, align 4
  store i32 %49, i32* %10, align 4
  br label %381

50:                                               ; preds = %39
  %51 = load i8*, i8** %16, align 8
  %52 = call i32 (i8**, i32, i8*, ...) @spprintf(i8** %26, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* %51)
  %53 = load i8*, i8** %26, align 8
  %54 = call i32* @php_stream_open_wrapper(i8* %53, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 0, i32* null)
  store i32* %54, i32** %27, align 8
  %55 = load i8*, i8** %26, align 8
  %56 = call i32 @efree(i8* %55)
  %57 = load i32*, i32** %27, align 8
  %58 = icmp ne i32* %57, null
  br i1 %58, label %59, label %68

59:                                               ; preds = %50
  %60 = load i32*, i32** %27, align 8
  %61 = load i32, i32* @PHP_STREAM_COPY_ALL, align 4
  %62 = call i32* @php_stream_copy_to_mem(i32* %60, i32 %61, i32 0)
  store i32* %62, i32** %25, align 8
  %63 = icmp ne i32* %62, null
  br i1 %63, label %64, label %68

64:                                               ; preds = %59
  %65 = load i32*, i32** %25, align 8
  %66 = call i32 @ZSTR_LEN(i32* %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %82, label %68

68:                                               ; preds = %64, %59, %50
  %69 = load i32*, i32** %27, align 8
  %70 = icmp ne i32* %69, null
  br i1 %70, label %71, label %74

71:                                               ; preds = %68
  %72 = load i32*, i32** %27, align 8
  %73 = call i32 @php_stream_close(i32* %72)
  br label %74

74:                                               ; preds = %71, %68
  %75 = load i8**, i8*** %19, align 8
  %76 = icmp ne i8** %75, null
  br i1 %76, label %77, label %80

77:                                               ; preds = %74
  %78 = load i8**, i8*** %19, align 8
  %79 = call i32 (i8**, i32, i8*, ...) @spprintf(i8** %78, i32 0, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0))
  br label %80

80:                                               ; preds = %77, %74
  %81 = load i32, i32* @FAILURE, align 4
  store i32 %81, i32* %10, align 4
  br label %381

82:                                               ; preds = %64
  %83 = load i32*, i32** %27, align 8
  %84 = call i32 @php_stream_close(i32* %83)
  %85 = load i64, i64* %15, align 8
  store i64 %85, i64* %24, align 8
  %86 = load i32, i32* @FAILURE, align 4
  %87 = load i32*, i32** %11, align 8
  %88 = load i64, i64* %12, align 8
  %89 = load i32*, i32** %25, align 8
  %90 = icmp ne i32* %89, null
  br i1 %90, label %91, label %94

91:                                               ; preds = %82
  %92 = load i32*, i32** %25, align 8
  %93 = call i32* @ZSTR_VAL(i32* %92)
  br label %95

94:                                               ; preds = %82
  br label %95

95:                                               ; preds = %94, %91
  %96 = phi i32* [ %93, %91 ], [ null, %94 ]
  %97 = load i32*, i32** %25, align 8
  %98 = icmp ne i32* %97, null
  br i1 %98, label %99, label %102

99:                                               ; preds = %95
  %100 = load i32*, i32** %25, align 8
  %101 = call i32 @ZSTR_LEN(i32* %100)
  br label %103

102:                                              ; preds = %95
  br label %103

103:                                              ; preds = %102, %99
  %104 = phi i32 [ %101, %99 ], [ 0, %102 ]
  %105 = call i32 @phar_call_openssl_signverify(i32 0, i32* %87, i64 %88, i32* %96, i32 %104, i8** %14, i64* %24)
  %106 = icmp eq i32 %86, %105
  br i1 %106, label %107, label %121

107:                                              ; preds = %103
  %108 = load i32*, i32** %25, align 8
  %109 = icmp ne i32* %108, null
  br i1 %109, label %110, label %113

110:                                              ; preds = %107
  %111 = load i32*, i32** %25, align 8
  %112 = call i32 @zend_string_release_ex(i32* %111, i32 0)
  br label %113

113:                                              ; preds = %110, %107
  %114 = load i8**, i8*** %19, align 8
  %115 = icmp ne i8** %114, null
  br i1 %115, label %116, label %119

116:                                              ; preds = %113
  %117 = load i8**, i8*** %19, align 8
  %118 = call i32 (i8**, i32, i8*, ...) @spprintf(i8** %117, i32 0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0))
  br label %119

119:                                              ; preds = %116, %113
  %120 = load i32, i32* @FAILURE, align 4
  store i32 %120, i32* %10, align 4
  br label %381

121:                                              ; preds = %103
  %122 = load i32*, i32** %25, align 8
  %123 = icmp ne i32* %122, null
  br i1 %123, label %124, label %127

124:                                              ; preds = %121
  %125 = load i32*, i32** %25, align 8
  %126 = call i32 @zend_string_release_ex(i32* %125, i32 0)
  br label %127

127:                                              ; preds = %124, %121
  %128 = load i64, i64* %24, align 8
  store i64 %128, i64* %15, align 8
  %129 = load i8*, i8** %14, align 8
  %130 = load i64, i64* %15, align 8
  %131 = trunc i64 %130 to i32
  %132 = load i8**, i8*** %17, align 8
  %133 = call i64 @phar_hex_str(i8* %129, i32 %131, i8** %132)
  %134 = load i64*, i64** %18, align 8
  store i64 %133, i64* %134, align 8
  br label %379

135:                                              ; preds = %9
  %136 = load i64, i64* %15, align 8
  %137 = icmp ult i64 %136, 64
  br i1 %137, label %138, label %146

138:                                              ; preds = %135
  %139 = load i8**, i8*** %19, align 8
  %140 = icmp ne i8** %139, null
  br i1 %140, label %141, label %144

141:                                              ; preds = %138
  %142 = load i8**, i8*** %19, align 8
  %143 = call i32 (i8**, i32, i8*, ...) @spprintf(i8** %142, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0))
  br label %144

144:                                              ; preds = %141, %138
  %145 = load i32, i32* @FAILURE, align 4
  store i32 %145, i32* %10, align 4
  br label %381

146:                                              ; preds = %135
  %147 = call i32 @PHP_SHA512Init(i32* %29)
  %148 = load i64, i64* %12, align 8
  store i64 %148, i64* %22, align 8
  %149 = load i64, i64* %22, align 8
  %150 = icmp ugt i64 %149, 1024
  br i1 %150, label %151, label %152

151:                                              ; preds = %146
  store i64 1024, i64* %20, align 8
  br label %154

152:                                              ; preds = %146
  %153 = load i64, i64* %22, align 8
  store i64 %153, i64* %20, align 8
  br label %154

154:                                              ; preds = %152, %151
  br label %155

155:                                              ; preds = %173, %154
  %156 = load i32*, i32** %11, align 8
  %157 = getelementptr inbounds [1024 x i8], [1024 x i8]* %23, i64 0, i64 0
  %158 = load i64, i64* %20, align 8
  %159 = call i64 @php_stream_read(i32* %156, i8* %157, i64 %158)
  store i64 %159, i64* %21, align 8
  %160 = icmp ugt i64 %159, 0
  br i1 %160, label %161, label %174

161:                                              ; preds = %155
  %162 = getelementptr inbounds [1024 x i8], [1024 x i8]* %23, i64 0, i64 0
  %163 = load i64, i64* %21, align 8
  %164 = call i32 @PHP_SHA512Update(i32* %29, i8* %162, i64 %163)
  %165 = load i64, i64* %21, align 8
  %166 = load i64, i64* %22, align 8
  %167 = sub i64 %166, %165
  store i64 %167, i64* %22, align 8
  %168 = load i64, i64* %22, align 8
  %169 = load i64, i64* %20, align 8
  %170 = icmp ult i64 %168, %169
  br i1 %170, label %171, label %173

171:                                              ; preds = %161
  %172 = load i64, i64* %22, align 8
  store i64 %172, i64* %20, align 8
  br label %173

173:                                              ; preds = %171, %161
  br label %155

174:                                              ; preds = %155
  %175 = getelementptr inbounds [64 x i8], [64 x i8]* %28, i64 0, i64 0
  %176 = call i32 @PHP_SHA512Final(i8* %175, i32* %29)
  %177 = getelementptr inbounds [64 x i8], [64 x i8]* %28, i64 0, i64 0
  %178 = load i8*, i8** %14, align 8
  %179 = call i32 @memcmp(i8* %177, i8* %178, i32 64)
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %189

181:                                              ; preds = %174
  %182 = load i8**, i8*** %19, align 8
  %183 = icmp ne i8** %182, null
  br i1 %183, label %184, label %187

184:                                              ; preds = %181
  %185 = load i8**, i8*** %19, align 8
  %186 = call i32 (i8**, i32, i8*, ...) @spprintf(i8** %185, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0))
  br label %187

187:                                              ; preds = %184, %181
  %188 = load i32, i32* @FAILURE, align 4
  store i32 %188, i32* %10, align 4
  br label %381

189:                                              ; preds = %174
  %190 = getelementptr inbounds [64 x i8], [64 x i8]* %28, i64 0, i64 0
  %191 = load i8**, i8*** %17, align 8
  %192 = call i64 @phar_hex_str(i8* %190, i32 64, i8** %191)
  %193 = load i64*, i64** %18, align 8
  store i64 %192, i64* %193, align 8
  br label %379

194:                                              ; preds = %9
  %195 = load i64, i64* %15, align 8
  %196 = icmp ult i64 %195, 32
  br i1 %196, label %197, label %205

197:                                              ; preds = %194
  %198 = load i8**, i8*** %19, align 8
  %199 = icmp ne i8** %198, null
  br i1 %199, label %200, label %203

200:                                              ; preds = %197
  %201 = load i8**, i8*** %19, align 8
  %202 = call i32 (i8**, i32, i8*, ...) @spprintf(i8** %201, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0))
  br label %203

203:                                              ; preds = %200, %197
  %204 = load i32, i32* @FAILURE, align 4
  store i32 %204, i32* %10, align 4
  br label %381

205:                                              ; preds = %194
  %206 = call i32 @PHP_SHA256Init(i32* %31)
  %207 = load i64, i64* %12, align 8
  store i64 %207, i64* %22, align 8
  %208 = load i64, i64* %22, align 8
  %209 = icmp ugt i64 %208, 1024
  br i1 %209, label %210, label %211

210:                                              ; preds = %205
  store i64 1024, i64* %20, align 8
  br label %213

211:                                              ; preds = %205
  %212 = load i64, i64* %22, align 8
  store i64 %212, i64* %20, align 8
  br label %213

213:                                              ; preds = %211, %210
  br label %214

214:                                              ; preds = %232, %213
  %215 = load i32*, i32** %11, align 8
  %216 = getelementptr inbounds [1024 x i8], [1024 x i8]* %23, i64 0, i64 0
  %217 = load i64, i64* %20, align 8
  %218 = call i64 @php_stream_read(i32* %215, i8* %216, i64 %217)
  store i64 %218, i64* %21, align 8
  %219 = icmp ugt i64 %218, 0
  br i1 %219, label %220, label %233

220:                                              ; preds = %214
  %221 = getelementptr inbounds [1024 x i8], [1024 x i8]* %23, i64 0, i64 0
  %222 = load i64, i64* %21, align 8
  %223 = call i32 @PHP_SHA256Update(i32* %31, i8* %221, i64 %222)
  %224 = load i64, i64* %21, align 8
  %225 = load i64, i64* %22, align 8
  %226 = sub i64 %225, %224
  store i64 %226, i64* %22, align 8
  %227 = load i64, i64* %22, align 8
  %228 = load i64, i64* %20, align 8
  %229 = icmp ult i64 %227, %228
  br i1 %229, label %230, label %232

230:                                              ; preds = %220
  %231 = load i64, i64* %22, align 8
  store i64 %231, i64* %20, align 8
  br label %232

232:                                              ; preds = %230, %220
  br label %214

233:                                              ; preds = %214
  %234 = getelementptr inbounds [32 x i8], [32 x i8]* %30, i64 0, i64 0
  %235 = call i32 @PHP_SHA256Final(i8* %234, i32* %31)
  %236 = getelementptr inbounds [32 x i8], [32 x i8]* %30, i64 0, i64 0
  %237 = load i8*, i8** %14, align 8
  %238 = call i32 @memcmp(i8* %236, i8* %237, i32 32)
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %240, label %248

240:                                              ; preds = %233
  %241 = load i8**, i8*** %19, align 8
  %242 = icmp ne i8** %241, null
  br i1 %242, label %243, label %246

243:                                              ; preds = %240
  %244 = load i8**, i8*** %19, align 8
  %245 = call i32 (i8**, i32, i8*, ...) @spprintf(i8** %244, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0))
  br label %246

246:                                              ; preds = %243, %240
  %247 = load i32, i32* @FAILURE, align 4
  store i32 %247, i32* %10, align 4
  br label %381

248:                                              ; preds = %233
  %249 = getelementptr inbounds [32 x i8], [32 x i8]* %30, i64 0, i64 0
  %250 = load i8**, i8*** %17, align 8
  %251 = call i64 @phar_hex_str(i8* %249, i32 32, i8** %250)
  %252 = load i64*, i64** %18, align 8
  store i64 %251, i64* %252, align 8
  br label %379

253:                                              ; preds = %9
  %254 = load i64, i64* %15, align 8
  %255 = icmp ult i64 %254, 20
  br i1 %255, label %256, label %264

256:                                              ; preds = %253
  %257 = load i8**, i8*** %19, align 8
  %258 = icmp ne i8** %257, null
  br i1 %258, label %259, label %262

259:                                              ; preds = %256
  %260 = load i8**, i8*** %19, align 8
  %261 = call i32 (i8**, i32, i8*, ...) @spprintf(i8** %260, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0))
  br label %262

262:                                              ; preds = %259, %256
  %263 = load i32, i32* @FAILURE, align 4
  store i32 %263, i32* %10, align 4
  br label %381

264:                                              ; preds = %253
  %265 = call i32 @PHP_SHA1Init(i32* %33)
  %266 = load i64, i64* %12, align 8
  store i64 %266, i64* %22, align 8
  %267 = load i64, i64* %22, align 8
  %268 = icmp ugt i64 %267, 1024
  br i1 %268, label %269, label %270

269:                                              ; preds = %264
  store i64 1024, i64* %20, align 8
  br label %272

270:                                              ; preds = %264
  %271 = load i64, i64* %22, align 8
  store i64 %271, i64* %20, align 8
  br label %272

272:                                              ; preds = %270, %269
  br label %273

273:                                              ; preds = %291, %272
  %274 = load i32*, i32** %11, align 8
  %275 = getelementptr inbounds [1024 x i8], [1024 x i8]* %23, i64 0, i64 0
  %276 = load i64, i64* %20, align 8
  %277 = call i64 @php_stream_read(i32* %274, i8* %275, i64 %276)
  store i64 %277, i64* %21, align 8
  %278 = icmp ugt i64 %277, 0
  br i1 %278, label %279, label %292

279:                                              ; preds = %273
  %280 = getelementptr inbounds [1024 x i8], [1024 x i8]* %23, i64 0, i64 0
  %281 = load i64, i64* %21, align 8
  %282 = call i32 @PHP_SHA1Update(i32* %33, i8* %280, i64 %281)
  %283 = load i64, i64* %21, align 8
  %284 = load i64, i64* %22, align 8
  %285 = sub i64 %284, %283
  store i64 %285, i64* %22, align 8
  %286 = load i64, i64* %22, align 8
  %287 = load i64, i64* %20, align 8
  %288 = icmp ult i64 %286, %287
  br i1 %288, label %289, label %291

289:                                              ; preds = %279
  %290 = load i64, i64* %22, align 8
  store i64 %290, i64* %20, align 8
  br label %291

291:                                              ; preds = %289, %279
  br label %273

292:                                              ; preds = %273
  %293 = getelementptr inbounds [20 x i8], [20 x i8]* %32, i64 0, i64 0
  %294 = call i32 @PHP_SHA1Final(i8* %293, i32* %33)
  %295 = getelementptr inbounds [20 x i8], [20 x i8]* %32, i64 0, i64 0
  %296 = load i8*, i8** %14, align 8
  %297 = call i32 @memcmp(i8* %295, i8* %296, i32 20)
  %298 = icmp ne i32 %297, 0
  br i1 %298, label %299, label %307

299:                                              ; preds = %292
  %300 = load i8**, i8*** %19, align 8
  %301 = icmp ne i8** %300, null
  br i1 %301, label %302, label %305

302:                                              ; preds = %299
  %303 = load i8**, i8*** %19, align 8
  %304 = call i32 (i8**, i32, i8*, ...) @spprintf(i8** %303, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0))
  br label %305

305:                                              ; preds = %302, %299
  %306 = load i32, i32* @FAILURE, align 4
  store i32 %306, i32* %10, align 4
  br label %381

307:                                              ; preds = %292
  %308 = getelementptr inbounds [20 x i8], [20 x i8]* %32, i64 0, i64 0
  %309 = load i8**, i8*** %17, align 8
  %310 = call i64 @phar_hex_str(i8* %308, i32 20, i8** %309)
  %311 = load i64*, i64** %18, align 8
  store i64 %310, i64* %311, align 8
  br label %379

312:                                              ; preds = %9
  %313 = load i64, i64* %15, align 8
  %314 = icmp ult i64 %313, 16
  br i1 %314, label %315, label %323

315:                                              ; preds = %312
  %316 = load i8**, i8*** %19, align 8
  %317 = icmp ne i8** %316, null
  br i1 %317, label %318, label %321

318:                                              ; preds = %315
  %319 = load i8**, i8*** %19, align 8
  %320 = call i32 (i8**, i32, i8*, ...) @spprintf(i8** %319, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0))
  br label %321

321:                                              ; preds = %318, %315
  %322 = load i32, i32* @FAILURE, align 4
  store i32 %322, i32* %10, align 4
  br label %381

323:                                              ; preds = %312
  %324 = call i32 @PHP_MD5Init(i32* %35)
  %325 = load i64, i64* %12, align 8
  store i64 %325, i64* %22, align 8
  %326 = load i64, i64* %22, align 8
  %327 = icmp ugt i64 %326, 1024
  br i1 %327, label %328, label %329

328:                                              ; preds = %323
  store i64 1024, i64* %20, align 8
  br label %331

329:                                              ; preds = %323
  %330 = load i64, i64* %22, align 8
  store i64 %330, i64* %20, align 8
  br label %331

331:                                              ; preds = %329, %328
  br label %332

332:                                              ; preds = %350, %331
  %333 = load i32*, i32** %11, align 8
  %334 = getelementptr inbounds [1024 x i8], [1024 x i8]* %23, i64 0, i64 0
  %335 = load i64, i64* %20, align 8
  %336 = call i64 @php_stream_read(i32* %333, i8* %334, i64 %335)
  store i64 %336, i64* %21, align 8
  %337 = icmp ugt i64 %336, 0
  br i1 %337, label %338, label %351

338:                                              ; preds = %332
  %339 = getelementptr inbounds [1024 x i8], [1024 x i8]* %23, i64 0, i64 0
  %340 = load i64, i64* %21, align 8
  %341 = call i32 @PHP_MD5Update(i32* %35, i8* %339, i64 %340)
  %342 = load i64, i64* %21, align 8
  %343 = load i64, i64* %22, align 8
  %344 = sub i64 %343, %342
  store i64 %344, i64* %22, align 8
  %345 = load i64, i64* %22, align 8
  %346 = load i64, i64* %20, align 8
  %347 = icmp ult i64 %345, %346
  br i1 %347, label %348, label %350

348:                                              ; preds = %338
  %349 = load i64, i64* %22, align 8
  store i64 %349, i64* %20, align 8
  br label %350

350:                                              ; preds = %348, %338
  br label %332

351:                                              ; preds = %332
  %352 = getelementptr inbounds [16 x i8], [16 x i8]* %34, i64 0, i64 0
  %353 = call i32 @PHP_MD5Final(i8* %352, i32* %35)
  %354 = getelementptr inbounds [16 x i8], [16 x i8]* %34, i64 0, i64 0
  %355 = load i8*, i8** %14, align 8
  %356 = call i32 @memcmp(i8* %354, i8* %355, i32 16)
  %357 = icmp ne i32 %356, 0
  br i1 %357, label %358, label %366

358:                                              ; preds = %351
  %359 = load i8**, i8*** %19, align 8
  %360 = icmp ne i8** %359, null
  br i1 %360, label %361, label %364

361:                                              ; preds = %358
  %362 = load i8**, i8*** %19, align 8
  %363 = call i32 (i8**, i32, i8*, ...) @spprintf(i8** %362, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0))
  br label %364

364:                                              ; preds = %361, %358
  %365 = load i32, i32* @FAILURE, align 4
  store i32 %365, i32* %10, align 4
  br label %381

366:                                              ; preds = %351
  %367 = getelementptr inbounds [16 x i8], [16 x i8]* %34, i64 0, i64 0
  %368 = load i8**, i8*** %17, align 8
  %369 = call i64 @phar_hex_str(i8* %367, i32 16, i8** %368)
  %370 = load i64*, i64** %18, align 8
  store i64 %369, i64* %370, align 8
  br label %379

371:                                              ; preds = %9
  %372 = load i8**, i8*** %19, align 8
  %373 = icmp ne i8** %372, null
  br i1 %373, label %374, label %377

374:                                              ; preds = %371
  %375 = load i8**, i8*** %19, align 8
  %376 = call i32 (i8**, i32, i8*, ...) @spprintf(i8** %375, i32 0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0))
  br label %377

377:                                              ; preds = %374, %371
  %378 = load i32, i32* @FAILURE, align 4
  store i32 %378, i32* %10, align 4
  br label %381

379:                                              ; preds = %366, %307, %248, %189, %127
  %380 = load i32, i32* @SUCCESS, align 4
  store i32 %380, i32* %10, align 4
  br label %381

381:                                              ; preds = %379, %377, %364, %321, %305, %262, %246, %203, %187, %144, %119, %80, %48
  %382 = load i32, i32* %10, align 4
  ret i32 %382
}

declare dso_local i32 @php_stream_rewind(i32*) #1

declare dso_local i32 @zend_hash_str_exists(i32*, i8*, i32) #1

declare dso_local i32 @spprintf(i8**, i32, i8*, ...) #1

declare dso_local i32* @php_stream_open_wrapper(i8*, i8*, i32, i32*) #1

declare dso_local i32 @efree(i8*) #1

declare dso_local i32* @php_stream_copy_to_mem(i32*, i32, i32) #1

declare dso_local i32 @ZSTR_LEN(i32*) #1

declare dso_local i32 @php_stream_close(i32*) #1

declare dso_local i32 @phar_call_openssl_signverify(i32, i32*, i64, i32*, i32, i8**, i64*) #1

declare dso_local i32* @ZSTR_VAL(i32*) #1

declare dso_local i32 @zend_string_release_ex(i32*, i32) #1

declare dso_local i64 @phar_hex_str(i8*, i32, i8**) #1

declare dso_local i32 @PHP_SHA512Init(i32*) #1

declare dso_local i64 @php_stream_read(i32*, i8*, i64) #1

declare dso_local i32 @PHP_SHA512Update(i32*, i8*, i64) #1

declare dso_local i32 @PHP_SHA512Final(i8*, i32*) #1

declare dso_local i32 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @PHP_SHA256Init(i32*) #1

declare dso_local i32 @PHP_SHA256Update(i32*, i8*, i64) #1

declare dso_local i32 @PHP_SHA256Final(i8*, i32*) #1

declare dso_local i32 @PHP_SHA1Init(i32*) #1

declare dso_local i32 @PHP_SHA1Update(i32*, i8*, i64) #1

declare dso_local i32 @PHP_SHA1Final(i8*, i32*) #1

declare dso_local i32 @PHP_MD5Init(i32*) #1

declare dso_local i32 @PHP_MD5Update(i32*, i8*, i64) #1

declare dso_local i32 @PHP_MD5Final(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
