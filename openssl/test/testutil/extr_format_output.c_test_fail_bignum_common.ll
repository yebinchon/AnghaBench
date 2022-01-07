; ModuleID = '/home/carl/AnghaBench/openssl/test/testutil/extr_format_output.c_test_fail_bignum_common.c'
source_filename = "/home/carl/AnghaBench/openssl/test/testutil/extr_format_output.c_test_fail_bignum_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@bn_bytes = common dso_local global i64 0, align 8
@MAX_STRING_WIDTH = common dso_local global i32 0, align 4
@MEM_BUFFER_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"WARNING: these BIGNUMs have been truncated\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c" %s:% 5d\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"-%s\0A\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"-%s:% 5d\0A\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"+%s\0A\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"+%s:% 5d\0A\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c" %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i32, i8*, i8*, i8*, i8*, i32*, i32*)* @test_fail_bignum_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_fail_bignum_common(i8* %0, i8* %1, i32 %2, i8* %3, i8* %4, i8* %5, i8* %6, i32* %7, i32* %8) #0 {
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  %30 = alloca i64, align 8
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i8*, align 8
  %35 = alloca i8*, align 8
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i64, align 8
  %39 = alloca i8*, align 8
  store i8* %0, i8** %10, align 8
  store i8* %1, i8** %11, align 8
  store i32 %2, i32* %12, align 4
  store i8* %3, i8** %13, align 8
  store i8* %4, i8** %14, align 8
  store i8* %5, i8** %15, align 8
  store i8* %6, i8** %16, align 8
  store i32* %7, i32** %17, align 8
  store i32* %8, i32** %18, align 8
  %40 = load i64, i64* @bn_bytes, align 8
  store i64 %40, i64* %19, align 8
  %41 = load i32, i32* @MAX_STRING_WIDTH, align 4
  %42 = add nsw i32 %41, 1
  %43 = zext i32 %42 to i64
  %44 = call i8* @llvm.stacksave()
  store i8* %44, i8** %20, align 8
  %45 = alloca i8, i64 %43, align 16
  store i64 %43, i64* %21, align 8
  %46 = load i32, i32* @MAX_STRING_WIDTH, align 4
  %47 = add nsw i32 %46, 1
  %48 = zext i32 %47 to i64
  %49 = alloca i8, i64 %48, align 16
  store i64 %48, i64* %22, align 8
  %50 = load i32, i32* @MAX_STRING_WIDTH, align 4
  %51 = add nsw i32 %50, 1
  %52 = zext i32 %51 to i64
  %53 = alloca i8, i64 %52, align 16
  store i64 %52, i64* %24, align 8
  store i8* null, i8** %34, align 8
  store i8* null, i8** %35, align 8
  store i32 1, i32* %36, align 4
  store i32 1, i32* %37, align 4
  %54 = load i32, i32* @MEM_BUFFER_SIZE, align 4
  %55 = mul nsw i32 %54, 2
  %56 = zext i32 %55 to i64
  %57 = alloca i8, i64 %56, align 16
  store i64 %56, i64* %38, align 8
  store i8* %57, i8** %39, align 8
  %58 = load i8*, i8** %10, align 8
  %59 = load i8*, i8** %11, align 8
  %60 = load i32, i32* %12, align 4
  %61 = load i8*, i8** %13, align 8
  %62 = load i8*, i8** %14, align 8
  %63 = load i8*, i8** %15, align 8
  %64 = load i8*, i8** %16, align 8
  %65 = call i32 @test_fail_message_prefix(i8* %58, i8* %59, i32 %60, i8* %61, i8* %62, i8* %63, i8* %64)
  %66 = load i32*, i32** %17, align 8
  %67 = icmp eq i32* %66, null
  br i1 %67, label %68, label %69

68:                                               ; preds = %9
  br label %79

69:                                               ; preds = %9
  %70 = load i32*, i32** %17, align 8
  %71 = call i64 @BN_num_bytes(i32* %70)
  %72 = load i32*, i32** %17, align 8
  %73 = call i64 @BN_is_negative(i32* %72)
  %74 = icmp ne i64 %73, 0
  %75 = zext i1 %74 to i64
  %76 = select i1 %74, i32 1, i32 0
  %77 = sext i32 %76 to i64
  %78 = add i64 %71, %77
  br label %79

79:                                               ; preds = %69, %68
  %80 = phi i64 [ 0, %68 ], [ %78, %69 ]
  store i64 %80, i64* %25, align 8
  %81 = load i32*, i32** %18, align 8
  %82 = icmp eq i32* %81, null
  br i1 %82, label %83, label %84

83:                                               ; preds = %79
  br label %94

84:                                               ; preds = %79
  %85 = load i32*, i32** %18, align 8
  %86 = call i64 @BN_num_bytes(i32* %85)
  %87 = load i32*, i32** %18, align 8
  %88 = call i64 @BN_is_negative(i32* %87)
  %89 = icmp ne i64 %88, 0
  %90 = zext i1 %89 to i64
  %91 = select i1 %89, i32 1, i32 0
  %92 = sext i32 %91 to i64
  %93 = add i64 %86, %92
  br label %94

94:                                               ; preds = %84, %83
  %95 = phi i64 [ 0, %83 ], [ %93, %84 ]
  store i64 %95, i64* %26, align 8
  %96 = load i64, i64* %25, align 8
  %97 = icmp eq i64 %96, 0
  br i1 %97, label %98, label %123

98:                                               ; preds = %94
  %99 = load i64, i64* %26, align 8
  %100 = icmp eq i64 %99, 0
  br i1 %100, label %101, label %123

101:                                              ; preds = %98
  %102 = load i32*, i32** %17, align 8
  %103 = icmp eq i32* %102, null
  %104 = zext i1 %103 to i32
  %105 = load i32*, i32** %18, align 8
  %106 = icmp eq i32* %105, null
  %107 = zext i1 %106 to i32
  %108 = icmp eq i32 %104, %107
  br i1 %108, label %109, label %113

109:                                              ; preds = %101
  %110 = call i32 (...) @test_bignum_header_line()
  %111 = load i32*, i32** %17, align 8
  %112 = call i32 @test_bignum_zero_print(i32* %111, i8 signext 32)
  br label %122

113:                                              ; preds = %101
  %114 = load i8*, i8** %14, align 8
  %115 = load i8*, i8** %15, align 8
  %116 = call i32 @test_diff_header(i8* %114, i8* %115)
  %117 = call i32 (...) @test_bignum_header_line()
  %118 = load i32*, i32** %17, align 8
  %119 = call i32 @test_bignum_zero_print(i32* %118, i8 signext 45)
  %120 = load i32*, i32** %18, align 8
  %121 = call i32 @test_bignum_zero_print(i32* %120, i8 signext 43)
  br label %122

122:                                              ; preds = %113, %109
  br label %352

123:                                              ; preds = %98, %94
  %124 = load i64, i64* %25, align 8
  %125 = load i64, i64* %26, align 8
  %126 = icmp ne i64 %124, %125
  br i1 %126, label %138, label %127

127:                                              ; preds = %123
  %128 = load i32*, i32** %17, align 8
  %129 = icmp eq i32* %128, null
  br i1 %129, label %138, label %130

130:                                              ; preds = %127
  %131 = load i32*, i32** %18, align 8
  %132 = icmp eq i32* %131, null
  br i1 %132, label %138, label %133

133:                                              ; preds = %130
  %134 = load i32*, i32** %17, align 8
  %135 = load i32*, i32** %18, align 8
  %136 = call i64 @BN_cmp(i32* %134, i32* %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %142

138:                                              ; preds = %133, %130, %127, %123
  %139 = load i8*, i8** %14, align 8
  %140 = load i8*, i8** %15, align 8
  %141 = call i32 @test_diff_header(i8* %139, i8* %140)
  br label %142

142:                                              ; preds = %138, %133
  %143 = call i32 (...) @test_bignum_header_line()
  %144 = load i64, i64* %25, align 8
  %145 = load i64, i64* %26, align 8
  %146 = icmp ugt i64 %144, %145
  br i1 %146, label %147, label %149

147:                                              ; preds = %142
  %148 = load i64, i64* %25, align 8
  br label %151

149:                                              ; preds = %142
  %150 = load i64, i64* %26, align 8
  br label %151

151:                                              ; preds = %149, %147
  %152 = phi i64 [ %148, %147 ], [ %150, %149 ]
  %153 = load i64, i64* %19, align 8
  %154 = add i64 %152, %153
  %155 = sub i64 %154, 1
  %156 = load i64, i64* %19, align 8
  %157 = udiv i64 %155, %156
  %158 = load i64, i64* %19, align 8
  %159 = mul i64 %157, %158
  store i64 %159, i64* %30, align 8
  %160 = load i64, i64* %30, align 8
  %161 = load i32, i32* @MEM_BUFFER_SIZE, align 4
  %162 = sext i32 %161 to i64
  %163 = icmp ugt i64 %160, %162
  br i1 %163, label %164, label %173

164:                                              ; preds = %151
  %165 = load i64, i64* %30, align 8
  %166 = mul i64 %165, 2
  %167 = call i8* @OPENSSL_malloc(i64 %166)
  store i8* %167, i8** %39, align 8
  %168 = icmp eq i8* %167, null
  br i1 %168, label %169, label %173

169:                                              ; preds = %164
  store i8* %57, i8** %39, align 8
  %170 = load i32, i32* @MEM_BUFFER_SIZE, align 4
  %171 = sext i32 %170 to i64
  store i64 %171, i64* %30, align 8
  %172 = call i32 (i8*, ...) @test_printf_stderr(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  br label %173

173:                                              ; preds = %169, %164, %151
  %174 = load i32*, i32** %17, align 8
  %175 = icmp ne i32* %174, null
  br i1 %175, label %176, label %182

176:                                              ; preds = %173
  %177 = load i8*, i8** %39, align 8
  store i8* %177, i8** %34, align 8
  %178 = load i32*, i32** %17, align 8
  %179 = load i8*, i8** %34, align 8
  %180 = load i64, i64* %30, align 8
  %181 = call i32 @BN_bn2binpad(i32* %178, i8* %179, i64 %180)
  br label %182

182:                                              ; preds = %176, %173
  %183 = load i32*, i32** %18, align 8
  %184 = icmp ne i32* %183, null
  br i1 %184, label %185, label %193

185:                                              ; preds = %182
  %186 = load i8*, i8** %39, align 8
  %187 = load i64, i64* %30, align 8
  %188 = getelementptr inbounds i8, i8* %186, i64 %187
  store i8* %188, i8** %35, align 8
  %189 = load i32*, i32** %18, align 8
  %190 = load i8*, i8** %35, align 8
  %191 = load i64, i64* %30, align 8
  %192 = call i32 @BN_bn2binpad(i32* %189, i8* %190, i64 %191)
  br label %193

193:                                              ; preds = %185, %182
  br label %194

194:                                              ; preds = %347, %193
  %195 = load i64, i64* %30, align 8
  %196 = icmp ugt i64 %195, 0
  br i1 %196, label %197, label %351

197:                                              ; preds = %194
  %198 = load i64, i64* %30, align 8
  %199 = load i64, i64* %19, align 8
  %200 = sub i64 %198, %199
  %201 = mul i64 8, %200
  %202 = trunc i64 %201 to i32
  store i32 %202, i32* %31, align 4
  %203 = load i8*, i8** %34, align 8
  %204 = load i64, i64* %19, align 8
  %205 = load i32*, i32** %17, align 8
  %206 = call i64 @convert_bn_memory(i8* %203, i64 %204, i8* %45, i32* %36, i32* %205)
  store i64 %206, i64* %27, align 8
  %207 = load i8*, i8** %35, align 8
  %208 = load i64, i64* %19, align 8
  %209 = load i32*, i32** %18, align 8
  %210 = call i64 @convert_bn_memory(i8* %207, i64 %208, i8* %49, i32* %37, i32* %209)
  store i64 %210, i64* %28, align 8
  store i32 0, i32* %33, align 4
  store i32 0, i32* %32, align 4
  store i64 0, i64* %29, align 8
  store i8* %53, i8** %23, align 8
  store i64 0, i64* %29, align 8
  br label %211

211:                                              ; preds = %258, %197
  %212 = load i64, i64* %29, align 8
  %213 = getelementptr inbounds i8, i8* %45, i64 %212
  %214 = load i8, i8* %213, align 1
  %215 = sext i8 %214 to i32
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %261

217:                                              ; preds = %211
  %218 = load i64, i64* %29, align 8
  %219 = getelementptr inbounds i8, i8* %45, i64 %218
  %220 = load i8, i8* %219, align 1
  %221 = sext i8 %220 to i32
  %222 = load i64, i64* %29, align 8
  %223 = getelementptr inbounds i8, i8* %49, i64 %222
  %224 = load i8, i8* %223, align 1
  %225 = sext i8 %224 to i32
  %226 = icmp eq i32 %221, %225
  br i1 %226, label %239, label %227

227:                                              ; preds = %217
  %228 = load i64, i64* %29, align 8
  %229 = getelementptr inbounds i8, i8* %45, i64 %228
  %230 = load i8, i8* %229, align 1
  %231 = sext i8 %230 to i32
  %232 = icmp eq i32 %231, 32
  br i1 %232, label %239, label %233

233:                                              ; preds = %227
  %234 = load i64, i64* %29, align 8
  %235 = getelementptr inbounds i8, i8* %49, i64 %234
  %236 = load i8, i8* %235, align 1
  %237 = sext i8 %236 to i32
  %238 = icmp eq i32 %237, 32
  br i1 %238, label %239, label %254

239:                                              ; preds = %233, %227, %217
  %240 = load i8*, i8** %23, align 8
  %241 = getelementptr inbounds i8, i8* %240, i32 1
  store i8* %241, i8** %23, align 8
  store i8 32, i8* %240, align 1
  %242 = load i64, i64* %29, align 8
  %243 = getelementptr inbounds i8, i8* %45, i64 %242
  %244 = load i8, i8* %243, align 1
  %245 = sext i8 %244 to i32
  %246 = load i64, i64* %29, align 8
  %247 = getelementptr inbounds i8, i8* %49, i64 %246
  %248 = load i8, i8* %247, align 1
  %249 = sext i8 %248 to i32
  %250 = icmp ne i32 %245, %249
  %251 = zext i1 %250 to i32
  %252 = load i32, i32* %32, align 4
  %253 = or i32 %252, %251
  store i32 %253, i32* %32, align 4
  br label %257

254:                                              ; preds = %233
  %255 = load i8*, i8** %23, align 8
  %256 = getelementptr inbounds i8, i8* %255, i32 1
  store i8* %256, i8** %23, align 8
  store i8 94, i8* %255, align 1
  store i32 1, i32* %32, align 4
  store i32 1, i32* %33, align 4
  br label %257

257:                                              ; preds = %254, %239
  br label %258

258:                                              ; preds = %257
  %259 = load i64, i64* %29, align 8
  %260 = add i64 %259, 1
  store i64 %260, i64* %29, align 8
  br label %211

261:                                              ; preds = %211
  %262 = load i8*, i8** %23, align 8
  %263 = getelementptr inbounds i8, i8* %262, i32 1
  store i8* %263, i8** %23, align 8
  store i8 0, i8* %262, align 1
  %264 = load i32, i32* %32, align 4
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %276, label %266

266:                                              ; preds = %261
  %267 = load i64, i64* %28, align 8
  %268 = load i64, i64* %27, align 8
  %269 = icmp ugt i64 %267, %268
  br i1 %269, label %270, label %271

270:                                              ; preds = %266
  br label %272

271:                                              ; preds = %266
  br label %272

272:                                              ; preds = %271, %270
  %273 = phi i8* [ %49, %270 ], [ %45, %271 ]
  %274 = load i32, i32* %31, align 4
  %275 = call i32 (i8*, ...) @test_printf_stderr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* %273, i32 %274)
  br label %333

276:                                              ; preds = %261
  %277 = load i32, i32* %31, align 4
  %278 = icmp eq i32 %277, 0
  br i1 %278, label %279, label %284

279:                                              ; preds = %276
  %280 = load i32*, i32** %17, align 8
  %281 = icmp eq i32* %280, null
  br i1 %281, label %282, label %284

282:                                              ; preds = %279
  %283 = call i32 (i8*, ...) @test_printf_stderr(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* %45)
  br label %294

284:                                              ; preds = %279, %276
  %285 = load i32, i32* %31, align 4
  %286 = icmp eq i32 %285, 0
  br i1 %286, label %290, label %287

287:                                              ; preds = %284
  %288 = load i64, i64* %27, align 8
  %289 = icmp ugt i64 %288, 0
  br i1 %289, label %290, label %293

290:                                              ; preds = %287, %284
  %291 = load i32, i32* %31, align 4
  %292 = call i32 (i8*, ...) @test_printf_stderr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* %45, i32 %291)
  br label %293

293:                                              ; preds = %290, %287
  br label %294

294:                                              ; preds = %293, %282
  %295 = load i32, i32* %31, align 4
  %296 = icmp eq i32 %295, 0
  br i1 %296, label %297, label %302

297:                                              ; preds = %294
  %298 = load i32*, i32** %18, align 8
  %299 = icmp eq i32* %298, null
  br i1 %299, label %300, label %302

300:                                              ; preds = %297
  %301 = call i32 (i8*, ...) @test_printf_stderr(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* %49)
  br label %312

302:                                              ; preds = %297, %294
  %303 = load i32, i32* %31, align 4
  %304 = icmp eq i32 %303, 0
  br i1 %304, label %308, label %305

305:                                              ; preds = %302
  %306 = load i64, i64* %28, align 8
  %307 = icmp ugt i64 %306, 0
  br i1 %307, label %308, label %311

308:                                              ; preds = %305, %302
  %309 = load i32, i32* %31, align 4
  %310 = call i32 (i8*, ...) @test_printf_stderr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i8* %49, i32 %309)
  br label %311

311:                                              ; preds = %308, %305
  br label %312

312:                                              ; preds = %311, %300
  %313 = load i32, i32* %33, align 4
  %314 = icmp ne i32 %313, 0
  br i1 %314, label %315, label %332

315:                                              ; preds = %312
  %316 = load i32, i32* %31, align 4
  %317 = icmp eq i32 %316, 0
  br i1 %317, label %324, label %318

318:                                              ; preds = %315
  %319 = load i64, i64* %27, align 8
  %320 = icmp ugt i64 %319, 0
  br i1 %320, label %321, label %332

321:                                              ; preds = %318
  %322 = load i64, i64* %28, align 8
  %323 = icmp ugt i64 %322, 0
  br i1 %323, label %324, label %332

324:                                              ; preds = %321, %315
  %325 = load i32*, i32** %17, align 8
  %326 = icmp ne i32* %325, null
  br i1 %326, label %327, label %332

327:                                              ; preds = %324
  %328 = load i32*, i32** %18, align 8
  %329 = icmp ne i32* %328, null
  br i1 %329, label %330, label %332

330:                                              ; preds = %327
  %331 = call i32 (i8*, ...) @test_printf_stderr(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8* %53)
  br label %332

332:                                              ; preds = %330, %327, %324, %321, %318, %312
  br label %333

333:                                              ; preds = %332, %272
  %334 = load i8*, i8** %34, align 8
  %335 = icmp ne i8* %334, null
  br i1 %335, label %336, label %340

336:                                              ; preds = %333
  %337 = load i64, i64* %19, align 8
  %338 = load i8*, i8** %34, align 8
  %339 = getelementptr inbounds i8, i8* %338, i64 %337
  store i8* %339, i8** %34, align 8
  br label %340

340:                                              ; preds = %336, %333
  %341 = load i8*, i8** %35, align 8
  %342 = icmp ne i8* %341, null
  br i1 %342, label %343, label %347

343:                                              ; preds = %340
  %344 = load i64, i64* %19, align 8
  %345 = load i8*, i8** %35, align 8
  %346 = getelementptr inbounds i8, i8* %345, i64 %344
  store i8* %346, i8** %35, align 8
  br label %347

347:                                              ; preds = %343, %340
  %348 = load i64, i64* %19, align 8
  %349 = load i64, i64* %30, align 8
  %350 = sub i64 %349, %348
  store i64 %350, i64* %30, align 8
  br label %194

351:                                              ; preds = %194
  br label %352

352:                                              ; preds = %351, %122
  %353 = call i32 (...) @test_flush_stderr()
  %354 = load i8*, i8** %39, align 8
  %355 = icmp ne i8* %354, %57
  br i1 %355, label %356, label %359

356:                                              ; preds = %352
  %357 = load i8*, i8** %39, align 8
  %358 = call i32 @OPENSSL_free(i8* %357)
  br label %359

359:                                              ; preds = %356, %352
  %360 = load i8*, i8** %20, align 8
  call void @llvm.stackrestore(i8* %360)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @test_fail_message_prefix(i8*, i8*, i32, i8*, i8*, i8*, i8*) #2

declare dso_local i64 @BN_num_bytes(i32*) #2

declare dso_local i64 @BN_is_negative(i32*) #2

declare dso_local i32 @test_bignum_header_line(...) #2

declare dso_local i32 @test_bignum_zero_print(i32*, i8 signext) #2

declare dso_local i32 @test_diff_header(i8*, i8*) #2

declare dso_local i64 @BN_cmp(i32*, i32*) #2

declare dso_local i8* @OPENSSL_malloc(i64) #2

declare dso_local i32 @test_printf_stderr(i8*, ...) #2

declare dso_local i32 @BN_bn2binpad(i32*, i8*, i64) #2

declare dso_local i64 @convert_bn_memory(i8*, i64, i8*, i32*, i32*) #2

declare dso_local i32 @test_flush_stderr(...) #2

declare dso_local i32 @OPENSSL_free(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
