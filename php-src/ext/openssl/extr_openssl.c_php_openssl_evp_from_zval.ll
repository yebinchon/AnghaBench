; ModuleID = '/home/carl/AnghaBench/php-src/ext/openssl/extr_openssl.c_php_openssl_evp_from_zval.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/openssl/extr_openssl.c_php_openssl_evp_from_zval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64 }
%struct.php_openssl_pem_password = type { i8*, i64 }

@IS_ARRAY = common dso_local global i64 0, align 8
@E_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"key array must be of the form array(0 => key, 1 => phrase)\00", align 1
@IS_STRING = common dso_local global i64 0, align 8
@IS_RESOURCE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [18 x i8] c"OpenSSL X.509/key\00", align 1
@le_x509 = common dso_local global i64 0, align 8
@le_key = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [35 x i8] c"supplied key param is a public key\00", align 1
@.str.3 = private unnamed_addr constant [55 x i8] c"Don't know how to get public key from this private key\00", align 1
@IS_OBJECT = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [8 x i8] c"file://\00", align 1
@PKCS7_BINARY = common dso_local global i32 0, align 4
@php_openssl_pem_password_cb = common dso_local global i32* null, align 8
@TMP_CLEAN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32, i8*, i64, i32, %struct.TYPE_7__**)* @php_openssl_evp_from_zval to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @php_openssl_evp_from_zval(i32* %0, i32 %1, i8* %2, i64 %3, i32 %4, %struct.TYPE_7__** %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_7__**, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_7__*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca %struct.TYPE_7__*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca %struct.php_openssl_pem_password, align 8
  store i32* %0, i32** %8, align 8
  store i32 %1, i32* %9, align 4
  store i8* %2, i8** %10, align 8
  store i64 %3, i64* %11, align 8
  store i32 %4, i32* %12, align 4
  store %struct.TYPE_7__** %5, %struct.TYPE_7__*** %13, align 8
  store i32* null, i32** %14, align 8
  store i32* null, i32** %15, align 8
  store i32 0, i32* %16, align 4
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %17, align 8
  store i8* null, i8** %18, align 8
  %27 = call i32 @ZVAL_NULL(i32* %19)
  %28 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %13, align 8
  %29 = icmp ne %struct.TYPE_7__** %28, null
  br i1 %29, label %30, label %32

30:                                               ; preds = %6
  %31 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %13, align 8
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %31, align 8
  br label %32

32:                                               ; preds = %30, %6
  %33 = load i32*, i32** %8, align 8
  %34 = call i64 @Z_TYPE_P(i32* %33)
  %35 = load i64, i64* @IS_ARRAY, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %83

37:                                               ; preds = %32
  %38 = load i32*, i32** %8, align 8
  %39 = call i32 @Z_ARRVAL_P(i32* %38)
  %40 = call i32* @zend_hash_index_find(i32 %39, i32 1)
  store i32* %40, i32** %20, align 8
  %41 = icmp eq i32* %40, null
  br i1 %41, label %42, label %45

42:                                               ; preds = %37
  %43 = load i32, i32* @E_WARNING, align 4
  %44 = call i32 @php_error_docref(i32* null, i32 %43, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0))
  store i32* null, i32** %7, align 8
  br label %375

45:                                               ; preds = %37
  %46 = load i32*, i32** %20, align 8
  %47 = call i64 @Z_TYPE_P(i32* %46)
  %48 = load i64, i64* @IS_STRING, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %56

50:                                               ; preds = %45
  %51 = load i32*, i32** %20, align 8
  %52 = call i8* @Z_STRVAL_P(i32* %51)
  store i8* %52, i8** %10, align 8
  %53 = load i32*, i32** %20, align 8
  %54 = call i32 @Z_STRLEN_P(i32* %53)
  %55 = sext i32 %54 to i64
  store i64 %55, i64* %11, align 8
  br label %67

56:                                               ; preds = %45
  %57 = load i32*, i32** %20, align 8
  %58 = call i32 @ZVAL_COPY(i32* %19, i32* %57)
  %59 = call i32 @try_convert_to_string(i32* %19)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %56
  store i32* null, i32** %7, align 8
  br label %375

62:                                               ; preds = %56
  %63 = load i32, i32* %19, align 4
  %64 = call i8* @Z_STRVAL(i32 %63)
  store i8* %64, i8** %10, align 8
  %65 = load i32, i32* %19, align 4
  %66 = call i64 @Z_STRLEN(i32 %65)
  store i64 %66, i64* %11, align 8
  br label %67

67:                                               ; preds = %62, %50
  %68 = load i32*, i32** %8, align 8
  %69 = call i32 @Z_ARRVAL_P(i32* %68)
  %70 = call i32* @zend_hash_index_find(i32 %69, i32 0)
  store i32* %70, i32** %8, align 8
  %71 = icmp eq i32* %70, null
  br i1 %71, label %72, label %82

72:                                               ; preds = %67
  %73 = load i32, i32* @E_WARNING, align 4
  %74 = call i32 @php_error_docref(i32* null, i32 %73, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0))
  %75 = load i32, i32* %19, align 4
  %76 = call i64 @Z_TYPE(i32 %75)
  %77 = load i64, i64* @IS_STRING, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %81

79:                                               ; preds = %72
  %80 = call i32 @zval_ptr_dtor_str(i32* %19)
  br label %81

81:                                               ; preds = %79, %72
  store i32* null, i32** %7, align 8
  br label %375

82:                                               ; preds = %67
  br label %83

83:                                               ; preds = %82, %32
  %84 = load i32*, i32** %8, align 8
  %85 = call i64 @Z_TYPE_P(i32* %84)
  %86 = load i64, i64* @IS_RESOURCE, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %182

88:                                               ; preds = %83
  %89 = load i32*, i32** %8, align 8
  %90 = call %struct.TYPE_7__* @Z_RES_P(i32* %89)
  store %struct.TYPE_7__* %90, %struct.TYPE_7__** %22, align 8
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %22, align 8
  %92 = load i64, i64* @le_x509, align 8
  %93 = load i64, i64* @le_key, align 8
  %94 = call i8* @zend_fetch_resource2(%struct.TYPE_7__* %91, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i64 %92, i64 %93)
  store i8* %94, i8** %21, align 8
  %95 = load i8*, i8** %21, align 8
  %96 = icmp ne i8* %95, null
  br i1 %96, label %105, label %97

97:                                               ; preds = %88
  %98 = load i32, i32* %19, align 4
  %99 = call i64 @Z_TYPE(i32 %98)
  %100 = load i64, i64* @IS_STRING, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %102, label %104

102:                                              ; preds = %97
  %103 = call i32 @zval_ptr_dtor_str(i32* %19)
  br label %104

104:                                              ; preds = %102, %97
  store i32* null, i32** %7, align 8
  br label %375

105:                                              ; preds = %88
  %106 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %13, align 8
  %107 = icmp ne %struct.TYPE_7__** %106, null
  br i1 %107, label %108, label %113

108:                                              ; preds = %105
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %22, align 8
  %110 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %13, align 8
  store %struct.TYPE_7__* %109, %struct.TYPE_7__** %110, align 8
  %111 = load i32*, i32** %8, align 8
  %112 = call i32 @Z_ADDREF_P(i32* %111)
  br label %113

113:                                              ; preds = %108, %105
  %114 = load %struct.TYPE_7__*, %struct.TYPE_7__** %22, align 8
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* @le_x509, align 8
  %118 = icmp eq i64 %116, %117
  br i1 %118, label %119, label %122

119:                                              ; preds = %113
  %120 = load i8*, i8** %21, align 8
  %121 = bitcast i8* %120 to i32*
  store i32* %121, i32** %15, align 8
  store i32 0, i32* %16, align 4
  br label %181

122:                                              ; preds = %113
  %123 = load %struct.TYPE_7__*, %struct.TYPE_7__** %22, align 8
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = load i64, i64* @le_key, align 8
  %127 = icmp eq i64 %125, %126
  br i1 %127, label %128, label %173

128:                                              ; preds = %122
  %129 = load i8*, i8** %21, align 8
  %130 = bitcast i8* %129 to i32*
  %131 = call i32 @php_openssl_is_private_key(i32* %130)
  store i32 %131, i32* %23, align 4
  %132 = load i32, i32* %9, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %147, label %134

134:                                              ; preds = %128
  %135 = load i32, i32* %23, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %147, label %137

137:                                              ; preds = %134
  %138 = load i32, i32* @E_WARNING, align 4
  %139 = call i32 @php_error_docref(i32* null, i32 %138, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %140 = load i32, i32* %19, align 4
  %141 = call i64 @Z_TYPE(i32 %140)
  %142 = load i64, i64* @IS_STRING, align 8
  %143 = icmp eq i64 %141, %142
  br i1 %143, label %144, label %146

144:                                              ; preds = %137
  %145 = call i32 @zval_ptr_dtor_str(i32* %19)
  br label %146

146:                                              ; preds = %144, %137
  store i32* null, i32** %7, align 8
  br label %375

147:                                              ; preds = %134, %128
  %148 = load i32, i32* %9, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %163

150:                                              ; preds = %147
  %151 = load i32, i32* %23, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %163

153:                                              ; preds = %150
  %154 = load i32, i32* @E_WARNING, align 4
  %155 = call i32 @php_error_docref(i32* null, i32 %154, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.3, i64 0, i64 0))
  %156 = load i32, i32* %19, align 4
  %157 = call i64 @Z_TYPE(i32 %156)
  %158 = load i64, i64* @IS_STRING, align 8
  %159 = icmp eq i64 %157, %158
  br i1 %159, label %160, label %162

160:                                              ; preds = %153
  %161 = call i32 @zval_ptr_dtor_str(i32* %19)
  br label %162

162:                                              ; preds = %160, %153
  store i32* null, i32** %7, align 8
  br label %375

163:                                              ; preds = %150, %147
  %164 = load i32, i32* %19, align 4
  %165 = call i64 @Z_TYPE(i32 %164)
  %166 = load i64, i64* @IS_STRING, align 8
  %167 = icmp eq i64 %165, %166
  br i1 %167, label %168, label %170

168:                                              ; preds = %163
  %169 = call i32 @zval_ptr_dtor_str(i32* %19)
  br label %170

170:                                              ; preds = %168, %163
  %171 = load i8*, i8** %21, align 8
  %172 = bitcast i8* %171 to i32*
  store i32* %172, i32** %7, align 8
  br label %375

173:                                              ; preds = %122
  %174 = load i32, i32* %19, align 4
  %175 = call i64 @Z_TYPE(i32 %174)
  %176 = load i64, i64* @IS_STRING, align 8
  %177 = icmp eq i64 %175, %176
  br i1 %177, label %178, label %180

178:                                              ; preds = %173
  %179 = call i32 @zval_ptr_dtor_str(i32* %19)
  br label %180

180:                                              ; preds = %178, %173
  store i32* null, i32** %7, align 8
  br label %375

181:                                              ; preds = %119
  br label %323

182:                                              ; preds = %83
  %183 = load i32*, i32** %8, align 8
  %184 = call i64 @Z_TYPE_P(i32* %183)
  %185 = load i64, i64* @IS_STRING, align 8
  %186 = icmp eq i64 %184, %185
  br i1 %186, label %200, label %187

187:                                              ; preds = %182
  %188 = load i32*, i32** %8, align 8
  %189 = call i64 @Z_TYPE_P(i32* %188)
  %190 = load i64, i64* @IS_OBJECT, align 8
  %191 = icmp eq i64 %189, %190
  br i1 %191, label %200, label %192

192:                                              ; preds = %187
  %193 = load i32, i32* %19, align 4
  %194 = call i64 @Z_TYPE(i32 %193)
  %195 = load i64, i64* @IS_STRING, align 8
  %196 = icmp eq i64 %194, %195
  br i1 %196, label %197, label %199

197:                                              ; preds = %192
  %198 = call i32 @zval_ptr_dtor_str(i32* %19)
  br label %199

199:                                              ; preds = %197, %192
  store i32* null, i32** %7, align 8
  br label %375

200:                                              ; preds = %187, %182
  %201 = load i32*, i32** %8, align 8
  %202 = call i32 @try_convert_to_string(i32* %201)
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %212, label %204

204:                                              ; preds = %200
  %205 = load i32, i32* %19, align 4
  %206 = call i64 @Z_TYPE(i32 %205)
  %207 = load i64, i64* @IS_STRING, align 8
  %208 = icmp eq i64 %206, %207
  br i1 %208, label %209, label %211

209:                                              ; preds = %204
  %210 = call i32 @zval_ptr_dtor_str(i32* %19)
  br label %211

211:                                              ; preds = %209, %204
  store i32* null, i32** %7, align 8
  br label %375

212:                                              ; preds = %200
  %213 = load i32*, i32** %8, align 8
  %214 = call i32 @Z_STRLEN_P(i32* %213)
  %215 = icmp sgt i32 %214, 7
  br i1 %215, label %216, label %237

216:                                              ; preds = %212
  %217 = load i32*, i32** %8, align 8
  %218 = call i8* @Z_STRVAL_P(i32* %217)
  %219 = call i64 @memcmp(i8* %218, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 7)
  %220 = icmp eq i64 %219, 0
  br i1 %220, label %221, label %237

221:                                              ; preds = %216
  %222 = load i32*, i32** %8, align 8
  %223 = call i8* @Z_STRVAL_P(i32* %222)
  %224 = getelementptr inbounds i8, i8* %223, i64 7
  store i8* %224, i8** %18, align 8
  %225 = load i8*, i8** %18, align 8
  %226 = call i64 @php_openssl_open_base_dir_chk(i8* %225)
  %227 = icmp ne i64 %226, 0
  br i1 %227, label %228, label %236

228:                                              ; preds = %221
  %229 = load i32, i32* %19, align 4
  %230 = call i64 @Z_TYPE(i32 %229)
  %231 = load i64, i64* @IS_STRING, align 8
  %232 = icmp eq i64 %230, %231
  br i1 %232, label %233, label %235

233:                                              ; preds = %228
  %234 = call i32 @zval_ptr_dtor_str(i32* %19)
  br label %235

235:                                              ; preds = %233, %228
  store i32* null, i32** %7, align 8
  br label %375

236:                                              ; preds = %221
  br label %237

237:                                              ; preds = %236, %216, %212
  %238 = load i32, i32* %9, align 4
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %240, label %280

240:                                              ; preds = %237
  %241 = load i32*, i32** %8, align 8
  %242 = call i32* @php_openssl_x509_from_zval(i32* %241, i32 0, %struct.TYPE_7__** %17)
  store i32* %242, i32** %15, align 8
  %243 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %244 = icmp eq %struct.TYPE_7__* %243, null
  %245 = zext i1 %244 to i32
  store i32 %245, i32* %16, align 4
  %246 = load i32*, i32** %15, align 8
  %247 = icmp ne i32* %246, null
  br i1 %247, label %279, label %248

248:                                              ; preds = %240
  %249 = load i8*, i8** %18, align 8
  %250 = icmp ne i8* %249, null
  br i1 %250, label %251, label %256

251:                                              ; preds = %248
  %252 = load i8*, i8** %18, align 8
  %253 = load i32, i32* @PKCS7_BINARY, align 4
  %254 = call i32 @PHP_OPENSSL_BIO_MODE_R(i32 %253)
  %255 = call i32* @BIO_new_file(i8* %252, i32 %254)
  store i32* %255, i32** %24, align 8
  br label %262

256:                                              ; preds = %248
  %257 = load i32*, i32** %8, align 8
  %258 = call i8* @Z_STRVAL_P(i32* %257)
  %259 = load i32*, i32** %8, align 8
  %260 = call i32 @Z_STRLEN_P(i32* %259)
  %261 = call i32* @BIO_new_mem_buf(i8* %258, i32 %260)
  store i32* %261, i32** %24, align 8
  br label %262

262:                                              ; preds = %256, %251
  %263 = load i32*, i32** %24, align 8
  %264 = icmp eq i32* %263, null
  br i1 %264, label %265, label %274

265:                                              ; preds = %262
  %266 = call i32 (...) @php_openssl_store_errors()
  %267 = load i32, i32* %19, align 4
  %268 = call i64 @Z_TYPE(i32 %267)
  %269 = load i64, i64* @IS_STRING, align 8
  %270 = icmp eq i64 %268, %269
  br i1 %270, label %271, label %273

271:                                              ; preds = %265
  %272 = call i32 @zval_ptr_dtor_str(i32* %19)
  br label %273

273:                                              ; preds = %271, %265
  store i32* null, i32** %7, align 8
  br label %375

274:                                              ; preds = %262
  %275 = load i32*, i32** %24, align 8
  %276 = call i32* @PEM_read_bio_PUBKEY(i32* %275, i32* null, i32* null, i32* null)
  store i32* %276, i32** %14, align 8
  %277 = load i32*, i32** %24, align 8
  %278 = call i32 @BIO_free(i32* %277)
  br label %279

279:                                              ; preds = %274, %240
  br label %322

280:                                              ; preds = %237
  %281 = load i8*, i8** %18, align 8
  %282 = icmp ne i8* %281, null
  br i1 %282, label %283, label %288

283:                                              ; preds = %280
  %284 = load i8*, i8** %18, align 8
  %285 = load i32, i32* @PKCS7_BINARY, align 4
  %286 = call i32 @PHP_OPENSSL_BIO_MODE_R(i32 %285)
  %287 = call i32* @BIO_new_file(i8* %284, i32 %286)
  store i32* %287, i32** %25, align 8
  br label %294

288:                                              ; preds = %280
  %289 = load i32*, i32** %8, align 8
  %290 = call i8* @Z_STRVAL_P(i32* %289)
  %291 = load i32*, i32** %8, align 8
  %292 = call i32 @Z_STRLEN_P(i32* %291)
  %293 = call i32* @BIO_new_mem_buf(i8* %290, i32 %292)
  store i32* %293, i32** %25, align 8
  br label %294

294:                                              ; preds = %288, %283
  %295 = load i32*, i32** %25, align 8
  %296 = icmp eq i32* %295, null
  br i1 %296, label %297, label %305

297:                                              ; preds = %294
  %298 = load i32, i32* %19, align 4
  %299 = call i64 @Z_TYPE(i32 %298)
  %300 = load i64, i64* @IS_STRING, align 8
  %301 = icmp eq i64 %299, %300
  br i1 %301, label %302, label %304

302:                                              ; preds = %297
  %303 = call i32 @zval_ptr_dtor_str(i32* %19)
  br label %304

304:                                              ; preds = %302, %297
  store i32* null, i32** %7, align 8
  br label %375

305:                                              ; preds = %294
  %306 = load i8*, i8** %10, align 8
  %307 = icmp eq i8* %306, null
  br i1 %307, label %308, label %311

308:                                              ; preds = %305
  %309 = load i32*, i32** %25, align 8
  %310 = call i32* @PEM_read_bio_PrivateKey(i32* %309, i32* null, i32* null, %struct.php_openssl_pem_password* null)
  store i32* %310, i32** %14, align 8
  br label %319

311:                                              ; preds = %305
  %312 = load i8*, i8** %10, align 8
  %313 = getelementptr inbounds %struct.php_openssl_pem_password, %struct.php_openssl_pem_password* %26, i32 0, i32 0
  store i8* %312, i8** %313, align 8
  %314 = load i64, i64* %11, align 8
  %315 = getelementptr inbounds %struct.php_openssl_pem_password, %struct.php_openssl_pem_password* %26, i32 0, i32 1
  store i64 %314, i64* %315, align 8
  %316 = load i32*, i32** %25, align 8
  %317 = load i32*, i32** @php_openssl_pem_password_cb, align 8
  %318 = call i32* @PEM_read_bio_PrivateKey(i32* %316, i32* null, i32* %317, %struct.php_openssl_pem_password* %26)
  store i32* %318, i32** %14, align 8
  br label %319

319:                                              ; preds = %311, %308
  %320 = load i32*, i32** %25, align 8
  %321 = call i32 @BIO_free(i32* %320)
  br label %322

322:                                              ; preds = %319, %279
  br label %323

323:                                              ; preds = %322, %181
  %324 = load i32*, i32** %14, align 8
  %325 = icmp eq i32* %324, null
  br i1 %325, label %326, label %343

326:                                              ; preds = %323
  %327 = call i32 (...) @php_openssl_store_errors()
  %328 = load i32, i32* %9, align 4
  %329 = icmp ne i32 %328, 0
  br i1 %329, label %330, label %342

330:                                              ; preds = %326
  %331 = load i32*, i32** %15, align 8
  %332 = icmp ne i32* %331, null
  br i1 %332, label %333, label %342

333:                                              ; preds = %330
  %334 = load i32*, i32** %15, align 8
  %335 = call i64 @X509_get_pubkey(i32* %334)
  %336 = inttoptr i64 %335 to i32*
  store i32* %336, i32** %14, align 8
  %337 = load i32*, i32** %14, align 8
  %338 = icmp eq i32* %337, null
  br i1 %338, label %339, label %341

339:                                              ; preds = %333
  %340 = call i32 (...) @php_openssl_store_errors()
  br label %341

341:                                              ; preds = %339, %333
  br label %342

342:                                              ; preds = %341, %330, %326
  br label %343

343:                                              ; preds = %342, %323
  %344 = load i32, i32* %16, align 4
  %345 = icmp ne i32 %344, 0
  br i1 %345, label %346, label %352

346:                                              ; preds = %343
  %347 = load i32*, i32** %15, align 8
  %348 = icmp ne i32* %347, null
  br i1 %348, label %349, label %352

349:                                              ; preds = %346
  %350 = load i32*, i32** %15, align 8
  %351 = call i32 @X509_free(i32* %350)
  br label %352

352:                                              ; preds = %349, %346, %343
  %353 = load i32*, i32** %14, align 8
  %354 = icmp ne i32* %353, null
  br i1 %354, label %355, label %366

355:                                              ; preds = %352
  %356 = load i32, i32* %12, align 4
  %357 = icmp ne i32 %356, 0
  br i1 %357, label %358, label %366

358:                                              ; preds = %355
  %359 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %13, align 8
  %360 = icmp ne %struct.TYPE_7__** %359, null
  br i1 %360, label %361, label %366

361:                                              ; preds = %358
  %362 = load i32*, i32** %14, align 8
  %363 = load i64, i64* @le_key, align 8
  %364 = call %struct.TYPE_7__* @zend_register_resource(i32* %362, i64 %363)
  %365 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %13, align 8
  store %struct.TYPE_7__* %364, %struct.TYPE_7__** %365, align 8
  br label %366

366:                                              ; preds = %361, %358, %355, %352
  %367 = load i32, i32* %19, align 4
  %368 = call i64 @Z_TYPE(i32 %367)
  %369 = load i64, i64* @IS_STRING, align 8
  %370 = icmp eq i64 %368, %369
  br i1 %370, label %371, label %373

371:                                              ; preds = %366
  %372 = call i32 @zval_ptr_dtor_str(i32* %19)
  br label %373

373:                                              ; preds = %371, %366
  %374 = load i32*, i32** %14, align 8
  store i32* %374, i32** %7, align 8
  br label %375

375:                                              ; preds = %373, %304, %273, %235, %211, %199, %180, %170, %162, %146, %104, %81, %61, %42
  %376 = load i32*, i32** %7, align 8
  ret i32* %376
}

declare dso_local i32 @ZVAL_NULL(i32*) #1

declare dso_local i64 @Z_TYPE_P(i32*) #1

declare dso_local i32* @zend_hash_index_find(i32, i32) #1

declare dso_local i32 @Z_ARRVAL_P(i32*) #1

declare dso_local i32 @php_error_docref(i32*, i32, i8*) #1

declare dso_local i8* @Z_STRVAL_P(i32*) #1

declare dso_local i32 @Z_STRLEN_P(i32*) #1

declare dso_local i32 @ZVAL_COPY(i32*, i32*) #1

declare dso_local i32 @try_convert_to_string(i32*) #1

declare dso_local i8* @Z_STRVAL(i32) #1

declare dso_local i64 @Z_STRLEN(i32) #1

declare dso_local i64 @Z_TYPE(i32) #1

declare dso_local i32 @zval_ptr_dtor_str(i32*) #1

declare dso_local %struct.TYPE_7__* @Z_RES_P(i32*) #1

declare dso_local i8* @zend_fetch_resource2(%struct.TYPE_7__*, i8*, i64, i64) #1

declare dso_local i32 @Z_ADDREF_P(i32*) #1

declare dso_local i32 @php_openssl_is_private_key(i32*) #1

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

declare dso_local i64 @php_openssl_open_base_dir_chk(i8*) #1

declare dso_local i32* @php_openssl_x509_from_zval(i32*, i32, %struct.TYPE_7__**) #1

declare dso_local i32* @BIO_new_file(i8*, i32) #1

declare dso_local i32 @PHP_OPENSSL_BIO_MODE_R(i32) #1

declare dso_local i32* @BIO_new_mem_buf(i8*, i32) #1

declare dso_local i32 @php_openssl_store_errors(...) #1

declare dso_local i32* @PEM_read_bio_PUBKEY(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @BIO_free(i32*) #1

declare dso_local i32* @PEM_read_bio_PrivateKey(i32*, i32*, i32*, %struct.php_openssl_pem_password*) #1

declare dso_local i64 @X509_get_pubkey(i32*) #1

declare dso_local i32 @X509_free(i32*) #1

declare dso_local %struct.TYPE_7__* @zend_register_resource(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
