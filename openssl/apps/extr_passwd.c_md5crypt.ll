; ModuleID = '/home/carl/AnghaBench/openssl/apps/extr_passwd.c_md5crypt.c'
source_filename = "/home/carl/AnghaBench/openssl/apps/extr_passwd.c_md5crypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@md5crypt.out_buf = internal global [41 x i8] zeroinitializer, align 16
@MD5_DIGEST_LENGTH = common dso_local global i32 0, align 4
@ascii_dollar = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [2 x i8] zeroinitializer, align 1
@cov_2char = common dso_local global i8** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i8*, i8*)* @md5crypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @md5crypt(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca [5 x i8], align 1
  %11 = alloca [9 x i8], align 1
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i8*, align 8
  %23 = alloca i64, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %27 = load i32, i32* @MD5_DIGEST_LENGTH, align 4
  %28 = zext i32 %27 to i64
  %29 = call i8* @llvm.stacksave()
  store i8* %29, i8** %8, align 8
  %30 = alloca i8, i64 %28, align 16
  store i64 %28, i64* %9, align 8
  store i8* null, i8** %12, align 8
  store i32* null, i32** %16, align 8
  store i32* null, i32** %17, align 8
  %31 = load i8*, i8** %5, align 8
  %32 = call i32 @strlen(i8* %31)
  %33 = sext i32 %32 to i64
  store i64 %33, i64* %18, align 8
  store i8 0, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @md5crypt.out_buf, i64 0, i64 0), align 16
  %34 = load i8*, i8** %6, align 8
  %35 = call i32 @strlen(i8* %34)
  %36 = sext i32 %35 to i64
  store i64 %36, i64* %20, align 8
  %37 = getelementptr inbounds [5 x i8], [5 x i8]* %10, i64 0, i64 0
  %38 = load i8*, i8** %6, align 8
  %39 = call i32 @OPENSSL_strlcpy(i8* %37, i8* %38, i32 5)
  %40 = getelementptr inbounds [9 x i8], [9 x i8]* %11, i64 0, i64 0
  %41 = load i8*, i8** %7, align 8
  %42 = call i32 @OPENSSL_strlcpy(i8* %40, i8* %41, i32 9)
  %43 = getelementptr inbounds [9 x i8], [9 x i8]* %11, i64 0, i64 0
  %44 = call i32 @strlen(i8* %43)
  %45 = sext i32 %44 to i64
  store i64 %45, i64* %19, align 8
  %46 = load i64, i64* %20, align 8
  %47 = icmp ugt i64 %46, 0
  br i1 %47, label %48, label %59

48:                                               ; preds = %3
  %49 = load i8*, i8** @ascii_dollar, align 8
  %50 = call i32 (i8*, ...) @OPENSSL_strlcat(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @md5crypt.out_buf, i64 0, i64 0), i8* %49, i64 41)
  %51 = load i64, i64* %20, align 8
  %52 = icmp ugt i64 %51, 4
  br i1 %52, label %53, label %54

53:                                               ; preds = %48
  br label %455

54:                                               ; preds = %48
  %55 = getelementptr inbounds [5 x i8], [5 x i8]* %10, i64 0, i64 0
  %56 = call i32 (i8*, ...) @OPENSSL_strlcat(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @md5crypt.out_buf, i64 0, i64 0), i8* %55, i64 41)
  %57 = load i8*, i8** @ascii_dollar, align 8
  %58 = call i32 (i8*, ...) @OPENSSL_strlcat(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @md5crypt.out_buf, i64 0, i64 0), i8* %57, i64 41)
  br label %59

59:                                               ; preds = %54, %3
  %60 = getelementptr inbounds [9 x i8], [9 x i8]* %11, i64 0, i64 0
  %61 = call i32 (i8*, ...) @OPENSSL_strlcat(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @md5crypt.out_buf, i64 0, i64 0), i8* %60, i64 41)
  %62 = call i32 @strlen(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @md5crypt.out_buf, i64 0, i64 0))
  %63 = icmp sgt i32 %62, 14
  br i1 %63, label %64, label %65

64:                                               ; preds = %59
  br label %455

65:                                               ; preds = %59
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @md5crypt.out_buf, i64 0, i64 0), i8** %13, align 8
  %66 = load i64, i64* %20, align 8
  %67 = icmp ugt i64 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %65
  %69 = load i64, i64* %20, align 8
  %70 = add i64 2, %69
  %71 = load i8*, i8** %13, align 8
  %72 = getelementptr inbounds i8, i8* %71, i64 %70
  store i8* %72, i8** %13, align 8
  br label %73

73:                                               ; preds = %68, %65
  %74 = load i64, i64* %19, align 8
  %75 = icmp ugt i64 %74, 8
  br i1 %75, label %76, label %77

76:                                               ; preds = %73
  br label %455

77:                                               ; preds = %73
  %78 = call i32* (...) @EVP_MD_CTX_new()
  store i32* %78, i32** %16, align 8
  %79 = load i32*, i32** %16, align 8
  %80 = icmp eq i32* %79, null
  br i1 %80, label %92, label %81

81:                                               ; preds = %77
  %82 = load i32*, i32** %16, align 8
  %83 = call i32 (...) @EVP_md5()
  %84 = call i32 @EVP_DigestInit_ex(i32* %82, i32 %83, i32* null)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %92

86:                                               ; preds = %81
  %87 = load i32*, i32** %16, align 8
  %88 = load i8*, i8** %5, align 8
  %89 = load i64, i64* %18, align 8
  %90 = call i32 (i32*, ...) @EVP_DigestUpdate(i32* %87, i8* %88, i64 %89)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %93, label %92

92:                                               ; preds = %86, %81, %77
  br label %455

93:                                               ; preds = %86
  %94 = load i64, i64* %20, align 8
  %95 = icmp ugt i64 %94, 0
  br i1 %95, label %96, label %114

96:                                               ; preds = %93
  %97 = load i32*, i32** %16, align 8
  %98 = load i8*, i8** @ascii_dollar, align 8
  %99 = call i32 (i32*, ...) @EVP_DigestUpdate(i32* %97, i8* %98, i32 1)
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %112

101:                                              ; preds = %96
  %102 = load i32*, i32** %16, align 8
  %103 = getelementptr inbounds [5 x i8], [5 x i8]* %10, i64 0, i64 0
  %104 = load i64, i64* %20, align 8
  %105 = call i32 (i32*, ...) @EVP_DigestUpdate(i32* %102, i8* %103, i64 %104)
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %112

107:                                              ; preds = %101
  %108 = load i32*, i32** %16, align 8
  %109 = load i8*, i8** @ascii_dollar, align 8
  %110 = call i32 (i32*, ...) @EVP_DigestUpdate(i32* %108, i8* %109, i32 1)
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %113, label %112

112:                                              ; preds = %107, %101, %96
  br label %455

113:                                              ; preds = %107
  br label %114

114:                                              ; preds = %113, %93
  %115 = load i32*, i32** %16, align 8
  %116 = getelementptr inbounds [9 x i8], [9 x i8]* %11, i64 0, i64 0
  %117 = load i64, i64* %19, align 8
  %118 = call i32 (i32*, ...) @EVP_DigestUpdate(i32* %115, i8* %116, i64 %117)
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %121, label %120

120:                                              ; preds = %114
  br label %455

121:                                              ; preds = %114
  %122 = call i32* (...) @EVP_MD_CTX_new()
  store i32* %122, i32** %17, align 8
  %123 = load i32*, i32** %17, align 8
  %124 = icmp eq i32* %123, null
  br i1 %124, label %152, label %125

125:                                              ; preds = %121
  %126 = load i32*, i32** %17, align 8
  %127 = call i32 (...) @EVP_md5()
  %128 = call i32 @EVP_DigestInit_ex(i32* %126, i32 %127, i32* null)
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %152

130:                                              ; preds = %125
  %131 = load i32*, i32** %17, align 8
  %132 = load i8*, i8** %5, align 8
  %133 = load i64, i64* %18, align 8
  %134 = call i32 (i32*, ...) @EVP_DigestUpdate(i32* %131, i8* %132, i64 %133)
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %152

136:                                              ; preds = %130
  %137 = load i32*, i32** %17, align 8
  %138 = getelementptr inbounds [9 x i8], [9 x i8]* %11, i64 0, i64 0
  %139 = load i64, i64* %19, align 8
  %140 = call i32 (i32*, ...) @EVP_DigestUpdate(i32* %137, i8* %138, i64 %139)
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %152

142:                                              ; preds = %136
  %143 = load i32*, i32** %17, align 8
  %144 = load i8*, i8** %5, align 8
  %145 = load i64, i64* %18, align 8
  %146 = call i32 (i32*, ...) @EVP_DigestUpdate(i32* %143, i8* %144, i64 %145)
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %152

148:                                              ; preds = %142
  %149 = load i32*, i32** %17, align 8
  %150 = call i32 @EVP_DigestFinal_ex(i32* %149, i8* %30, i32* null)
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %153, label %152

152:                                              ; preds = %148, %142, %136, %130, %125, %121
  br label %455

153:                                              ; preds = %148
  %154 = load i64, i64* %18, align 8
  %155 = trunc i64 %154 to i32
  store i32 %155, i32* %15, align 4
  br label %156

156:                                              ; preds = %166, %153
  %157 = load i32, i32* %15, align 4
  %158 = zext i32 %157 to i64
  %159 = icmp ugt i64 %158, %28
  br i1 %159, label %160, label %171

160:                                              ; preds = %156
  %161 = load i32*, i32** %16, align 8
  %162 = call i32 (i32*, ...) @EVP_DigestUpdate(i32* %161, i8* %30, i64 %28)
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %165, label %164

164:                                              ; preds = %160
  br label %455

165:                                              ; preds = %160
  br label %166

166:                                              ; preds = %165
  %167 = load i32, i32* %15, align 4
  %168 = zext i32 %167 to i64
  %169 = sub i64 %168, %28
  %170 = trunc i64 %169 to i32
  store i32 %170, i32* %15, align 4
  br label %156

171:                                              ; preds = %156
  %172 = load i32*, i32** %16, align 8
  %173 = load i32, i32* %15, align 4
  %174 = call i32 (i32*, ...) @EVP_DigestUpdate(i32* %172, i8* %30, i32 %173)
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %177, label %176

176:                                              ; preds = %171
  br label %455

177:                                              ; preds = %171
  %178 = load i64, i64* %18, align 8
  %179 = trunc i64 %178 to i32
  store i32 %179, i32* %14, align 4
  br label %180

180:                                              ; preds = %196, %177
  %181 = load i32, i32* %14, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %199

183:                                              ; preds = %180
  %184 = load i32*, i32** %16, align 8
  %185 = load i32, i32* %14, align 4
  %186 = and i32 %185, 1
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %189

188:                                              ; preds = %183
  br label %191

189:                                              ; preds = %183
  %190 = load i8*, i8** %5, align 8
  br label %191

191:                                              ; preds = %189, %188
  %192 = phi i8* [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), %188 ], [ %190, %189 ]
  %193 = call i32 (i32*, ...) @EVP_DigestUpdate(i32* %184, i8* %192, i32 1)
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %196, label %195

195:                                              ; preds = %191
  br label %455

196:                                              ; preds = %191
  %197 = load i32, i32* %14, align 4
  %198 = ashr i32 %197, 1
  store i32 %198, i32* %14, align 4
  br label %180

199:                                              ; preds = %180
  %200 = load i32*, i32** %16, align 8
  %201 = call i32 @EVP_DigestFinal_ex(i32* %200, i8* %30, i32* null)
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %204, label %203

203:                                              ; preds = %199
  store i8* null, i8** %4, align 8
  store i32 1, i32* %21, align 4
  br label %462

204:                                              ; preds = %199
  store i32 0, i32* %15, align 4
  br label %205

205:                                              ; preds = %286, %204
  %206 = load i32, i32* %15, align 4
  %207 = icmp ult i32 %206, 1000
  br i1 %207, label %208, label %289

208:                                              ; preds = %205
  %209 = load i32*, i32** %17, align 8
  %210 = call i32 (...) @EVP_md5()
  %211 = call i32 @EVP_DigestInit_ex(i32* %209, i32 %210, i32* null)
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %214, label %213

213:                                              ; preds = %208
  br label %455

214:                                              ; preds = %208
  %215 = load i32*, i32** %17, align 8
  %216 = load i32, i32* %15, align 4
  %217 = and i32 %216, 1
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %221

219:                                              ; preds = %214
  %220 = load i8*, i8** %5, align 8
  br label %222

221:                                              ; preds = %214
  br label %222

222:                                              ; preds = %221, %219
  %223 = phi i8* [ %220, %219 ], [ %30, %221 ]
  %224 = load i32, i32* %15, align 4
  %225 = and i32 %224, 1
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %229

227:                                              ; preds = %222
  %228 = load i64, i64* %18, align 8
  br label %230

229:                                              ; preds = %222
  br label %230

230:                                              ; preds = %229, %227
  %231 = phi i64 [ %228, %227 ], [ %28, %229 ]
  %232 = call i32 (i32*, ...) @EVP_DigestUpdate(i32* %215, i8* %223, i64 %231)
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %235, label %234

234:                                              ; preds = %230
  br label %455

235:                                              ; preds = %230
  %236 = load i32, i32* %15, align 4
  %237 = urem i32 %236, 3
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %239, label %247

239:                                              ; preds = %235
  %240 = load i32*, i32** %17, align 8
  %241 = getelementptr inbounds [9 x i8], [9 x i8]* %11, i64 0, i64 0
  %242 = load i64, i64* %19, align 8
  %243 = call i32 (i32*, ...) @EVP_DigestUpdate(i32* %240, i8* %241, i64 %242)
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %246, label %245

245:                                              ; preds = %239
  br label %455

246:                                              ; preds = %239
  br label %247

247:                                              ; preds = %246, %235
  %248 = load i32, i32* %15, align 4
  %249 = urem i32 %248, 7
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %251, label %259

251:                                              ; preds = %247
  %252 = load i32*, i32** %17, align 8
  %253 = load i8*, i8** %5, align 8
  %254 = load i64, i64* %18, align 8
  %255 = call i32 (i32*, ...) @EVP_DigestUpdate(i32* %252, i8* %253, i64 %254)
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %258, label %257

257:                                              ; preds = %251
  br label %455

258:                                              ; preds = %251
  br label %259

259:                                              ; preds = %258, %247
  %260 = load i32*, i32** %17, align 8
  %261 = load i32, i32* %15, align 4
  %262 = and i32 %261, 1
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %264, label %265

264:                                              ; preds = %259
  br label %267

265:                                              ; preds = %259
  %266 = load i8*, i8** %5, align 8
  br label %267

267:                                              ; preds = %265, %264
  %268 = phi i8* [ %30, %264 ], [ %266, %265 ]
  %269 = load i32, i32* %15, align 4
  %270 = and i32 %269, 1
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %272, label %273

272:                                              ; preds = %267
  br label %275

273:                                              ; preds = %267
  %274 = load i64, i64* %18, align 8
  br label %275

275:                                              ; preds = %273, %272
  %276 = phi i64 [ %28, %272 ], [ %274, %273 ]
  %277 = call i32 (i32*, ...) @EVP_DigestUpdate(i32* %260, i8* %268, i64 %276)
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %280, label %279

279:                                              ; preds = %275
  br label %455

280:                                              ; preds = %275
  %281 = load i32*, i32** %17, align 8
  %282 = call i32 @EVP_DigestFinal_ex(i32* %281, i8* %30, i32* null)
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %285, label %284

284:                                              ; preds = %280
  br label %455

285:                                              ; preds = %280
  br label %286

286:                                              ; preds = %285
  %287 = load i32, i32* %15, align 4
  %288 = add i32 %287, 1
  store i32 %288, i32* %15, align 4
  br label %205

289:                                              ; preds = %205
  %290 = load i32*, i32** %17, align 8
  %291 = call i32 @EVP_MD_CTX_free(i32* %290)
  %292 = load i32*, i32** %16, align 8
  %293 = call i32 @EVP_MD_CTX_free(i32* %292)
  store i32* null, i32** %17, align 8
  store i32* null, i32** %16, align 8
  %294 = call i8* @llvm.stacksave()
  store i8* %294, i8** %22, align 8
  %295 = alloca i8, i64 %28, align 16
  store i64 %28, i64* %23, align 8
  store i32 0, i32* %24, align 4
  store i32 0, i32* %25, align 4
  br label %296

296:                                              ; preds = %307, %289
  %297 = load i32, i32* %24, align 4
  %298 = icmp slt i32 %297, 14
  br i1 %298, label %299, label %313

299:                                              ; preds = %296
  %300 = load i32, i32* %25, align 4
  %301 = sext i32 %300 to i64
  %302 = getelementptr inbounds i8, i8* %30, i64 %301
  %303 = load i8, i8* %302, align 1
  %304 = load i32, i32* %24, align 4
  %305 = sext i32 %304 to i64
  %306 = getelementptr inbounds i8, i8* %295, i64 %305
  store i8 %303, i8* %306, align 1
  br label %307

307:                                              ; preds = %299
  %308 = load i32, i32* %24, align 4
  %309 = add nsw i32 %308, 1
  store i32 %309, i32* %24, align 4
  %310 = load i32, i32* %25, align 4
  %311 = add nsw i32 %310, 6
  %312 = srem i32 %311, 17
  store i32 %312, i32* %25, align 4
  br label %296

313:                                              ; preds = %296
  %314 = getelementptr inbounds i8, i8* %30, i64 5
  %315 = load i8, i8* %314, align 1
  %316 = getelementptr inbounds i8, i8* %295, i64 14
  store i8 %315, i8* %316, align 2
  %317 = getelementptr inbounds i8, i8* %30, i64 11
  %318 = load i8, i8* %317, align 1
  %319 = getelementptr inbounds i8, i8* %295, i64 15
  store i8 %318, i8* %319, align 1
  %320 = icmp eq i64 16, %28
  %321 = zext i1 %320 to i32
  %322 = call i32 @assert(i32 %321)
  %323 = load i8*, i8** %13, align 8
  %324 = load i64, i64* %19, align 8
  %325 = getelementptr inbounds i8, i8* %323, i64 %324
  store i8* %325, i8** %26, align 8
  %326 = load i8*, i8** %26, align 8
  %327 = call i32 @strlen(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @md5crypt.out_buf, i64 0, i64 0))
  %328 = sext i32 %327 to i64
  %329 = getelementptr inbounds i8, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @md5crypt.out_buf, i64 0, i64 0), i64 %328
  %330 = icmp eq i8* %326, %329
  %331 = zext i1 %330 to i32
  %332 = call i32 @assert(i32 %331)
  %333 = load i8*, i8** @ascii_dollar, align 8
  %334 = getelementptr inbounds i8, i8* %333, i64 0
  %335 = load i8, i8* %334, align 1
  %336 = load i8*, i8** %26, align 8
  %337 = getelementptr inbounds i8, i8* %336, i32 1
  store i8* %337, i8** %26, align 8
  store i8 %335, i8* %336, align 1
  store i32 0, i32* %15, align 4
  br label %338

338:                                              ; preds = %414, %313
  %339 = load i32, i32* %15, align 4
  %340 = icmp ult i32 %339, 15
  br i1 %340, label %341, label %417

341:                                              ; preds = %338
  %342 = load i8**, i8*** @cov_2char, align 8
  %343 = load i32, i32* %15, align 4
  %344 = add i32 %343, 2
  %345 = zext i32 %344 to i64
  %346 = getelementptr inbounds i8, i8* %295, i64 %345
  %347 = load i8, i8* %346, align 1
  %348 = zext i8 %347 to i32
  %349 = and i32 %348, 63
  %350 = sext i32 %349 to i64
  %351 = getelementptr inbounds i8*, i8** %342, i64 %350
  %352 = load i8*, i8** %351, align 8
  %353 = ptrtoint i8* %352 to i8
  %354 = load i8*, i8** %26, align 8
  %355 = getelementptr inbounds i8, i8* %354, i32 1
  store i8* %355, i8** %26, align 8
  store i8 %353, i8* %354, align 1
  %356 = load i8**, i8*** @cov_2char, align 8
  %357 = load i32, i32* %15, align 4
  %358 = add i32 %357, 1
  %359 = zext i32 %358 to i64
  %360 = getelementptr inbounds i8, i8* %295, i64 %359
  %361 = load i8, i8* %360, align 1
  %362 = zext i8 %361 to i32
  %363 = and i32 %362, 15
  %364 = shl i32 %363, 2
  %365 = load i32, i32* %15, align 4
  %366 = add i32 %365, 2
  %367 = zext i32 %366 to i64
  %368 = getelementptr inbounds i8, i8* %295, i64 %367
  %369 = load i8, i8* %368, align 1
  %370 = zext i8 %369 to i32
  %371 = ashr i32 %370, 6
  %372 = or i32 %364, %371
  %373 = sext i32 %372 to i64
  %374 = getelementptr inbounds i8*, i8** %356, i64 %373
  %375 = load i8*, i8** %374, align 8
  %376 = ptrtoint i8* %375 to i8
  %377 = load i8*, i8** %26, align 8
  %378 = getelementptr inbounds i8, i8* %377, i32 1
  store i8* %378, i8** %26, align 8
  store i8 %376, i8* %377, align 1
  %379 = load i8**, i8*** @cov_2char, align 8
  %380 = load i32, i32* %15, align 4
  %381 = zext i32 %380 to i64
  %382 = getelementptr inbounds i8, i8* %295, i64 %381
  %383 = load i8, i8* %382, align 1
  %384 = zext i8 %383 to i32
  %385 = and i32 %384, 3
  %386 = shl i32 %385, 4
  %387 = load i32, i32* %15, align 4
  %388 = add i32 %387, 1
  %389 = zext i32 %388 to i64
  %390 = getelementptr inbounds i8, i8* %295, i64 %389
  %391 = load i8, i8* %390, align 1
  %392 = zext i8 %391 to i32
  %393 = ashr i32 %392, 4
  %394 = or i32 %386, %393
  %395 = sext i32 %394 to i64
  %396 = getelementptr inbounds i8*, i8** %379, i64 %395
  %397 = load i8*, i8** %396, align 8
  %398 = ptrtoint i8* %397 to i8
  %399 = load i8*, i8** %26, align 8
  %400 = getelementptr inbounds i8, i8* %399, i32 1
  store i8* %400, i8** %26, align 8
  store i8 %398, i8* %399, align 1
  %401 = load i8**, i8*** @cov_2char, align 8
  %402 = load i32, i32* %15, align 4
  %403 = zext i32 %402 to i64
  %404 = getelementptr inbounds i8, i8* %295, i64 %403
  %405 = load i8, i8* %404, align 1
  %406 = zext i8 %405 to i32
  %407 = ashr i32 %406, 2
  %408 = sext i32 %407 to i64
  %409 = getelementptr inbounds i8*, i8** %401, i64 %408
  %410 = load i8*, i8** %409, align 8
  %411 = ptrtoint i8* %410 to i8
  %412 = load i8*, i8** %26, align 8
  %413 = getelementptr inbounds i8, i8* %412, i32 1
  store i8* %413, i8** %26, align 8
  store i8 %411, i8* %412, align 1
  br label %414

414:                                              ; preds = %341
  %415 = load i32, i32* %15, align 4
  %416 = add i32 %415, 3
  store i32 %416, i32* %15, align 4
  br label %338

417:                                              ; preds = %338
  %418 = load i32, i32* %15, align 4
  %419 = icmp eq i32 %418, 15
  %420 = zext i1 %419 to i32
  %421 = call i32 @assert(i32 %420)
  %422 = load i8**, i8*** @cov_2char, align 8
  %423 = load i32, i32* %15, align 4
  %424 = zext i32 %423 to i64
  %425 = getelementptr inbounds i8, i8* %295, i64 %424
  %426 = load i8, i8* %425, align 1
  %427 = zext i8 %426 to i32
  %428 = and i32 %427, 63
  %429 = sext i32 %428 to i64
  %430 = getelementptr inbounds i8*, i8** %422, i64 %429
  %431 = load i8*, i8** %430, align 8
  %432 = ptrtoint i8* %431 to i8
  %433 = load i8*, i8** %26, align 8
  %434 = getelementptr inbounds i8, i8* %433, i32 1
  store i8* %434, i8** %26, align 8
  store i8 %432, i8* %433, align 1
  %435 = load i8**, i8*** @cov_2char, align 8
  %436 = load i32, i32* %15, align 4
  %437 = zext i32 %436 to i64
  %438 = getelementptr inbounds i8, i8* %295, i64 %437
  %439 = load i8, i8* %438, align 1
  %440 = zext i8 %439 to i32
  %441 = ashr i32 %440, 6
  %442 = sext i32 %441 to i64
  %443 = getelementptr inbounds i8*, i8** %435, i64 %442
  %444 = load i8*, i8** %443, align 8
  %445 = ptrtoint i8* %444 to i8
  %446 = load i8*, i8** %26, align 8
  %447 = getelementptr inbounds i8, i8* %446, i32 1
  store i8* %447, i8** %26, align 8
  store i8 %445, i8* %446, align 1
  %448 = load i8*, i8** %26, align 8
  store i8 0, i8* %448, align 1
  %449 = call i32 @strlen(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @md5crypt.out_buf, i64 0, i64 0))
  %450 = sext i32 %449 to i64
  %451 = icmp ult i64 %450, 41
  %452 = zext i1 %451 to i32
  %453 = call i32 @assert(i32 %452)
  %454 = load i8*, i8** %22, align 8
  call void @llvm.stackrestore(i8* %454)
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @md5crypt.out_buf, i64 0, i64 0), i8** %4, align 8
  store i32 1, i32* %21, align 4
  br label %462

455:                                              ; preds = %284, %279, %257, %245, %234, %213, %195, %176, %164, %152, %120, %112, %92, %76, %64, %53
  %456 = load i8*, i8** %12, align 8
  %457 = call i32 @OPENSSL_free(i8* %456)
  %458 = load i32*, i32** %17, align 8
  %459 = call i32 @EVP_MD_CTX_free(i32* %458)
  %460 = load i32*, i32** %16, align 8
  %461 = call i32 @EVP_MD_CTX_free(i32* %460)
  store i8* null, i8** %4, align 8
  store i32 1, i32* %21, align 4
  br label %462

462:                                              ; preds = %455, %417, %203
  %463 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %463)
  %464 = load i8*, i8** %4, align 8
  ret i8* %464
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @OPENSSL_strlcpy(i8*, i8*, i32) #2

declare dso_local i32 @OPENSSL_strlcat(i8*, ...) #2

declare dso_local i32* @EVP_MD_CTX_new(...) #2

declare dso_local i32 @EVP_DigestInit_ex(i32*, i32, i32*) #2

declare dso_local i32 @EVP_md5(...) #2

declare dso_local i32 @EVP_DigestUpdate(i32*, ...) #2

declare dso_local i32 @EVP_DigestFinal_ex(i32*, i8*, i32*) #2

declare dso_local i32 @EVP_MD_CTX_free(i32*) #2

declare dso_local i32 @assert(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

declare dso_local i32 @OPENSSL_free(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
