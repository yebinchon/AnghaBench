; ModuleID = '/home/carl/AnghaBench/openssl/test/testutil/extr_format_output.c_test_fail_string_common.c'
source_filename = "/home/carl/AnghaBench/openssl/test/testutil/extr_format_output.c_test_fail_string_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_STRING_WIDTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"%4u:  '%s'\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"%4u:- '%s'\0A\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"%4u:+ '%s'\0A\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"%4s    %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i32, i8*, i8*, i8*, i8*, i8*, i64, i8*, i64)* @test_fail_string_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_fail_string_common(i8* %0, i8* %1, i32 %2, i8* %3, i8* %4, i8* %5, i8* %6, i8* %7, i64 %8, i8* %9, i64 %10) #0 {
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  %30 = alloca i64, align 8
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i64, align 8
  store i8* %0, i8** %12, align 8
  store i8* %1, i8** %13, align 8
  store i32 %2, i32* %14, align 4
  store i8* %3, i8** %15, align 8
  store i8* %4, i8** %16, align 8
  store i8* %5, i8** %17, align 8
  store i8* %6, i8** %18, align 8
  store i8* %7, i8** %19, align 8
  store i64 %8, i64* %20, align 8
  store i8* %9, i8** %21, align 8
  store i64 %10, i64* %22, align 8
  %34 = load i32, i32* @MAX_STRING_WIDTH, align 4
  %35 = call i32 (...) @subtest_level()
  %36 = sub nsw i32 %34, %35
  %37 = sub nsw i32 %36, 12
  %38 = sdiv i32 %37, 16
  %39 = mul nsw i32 %38, 16
  %40 = sext i32 %39 to i64
  store i64 %40, i64* %23, align 8
  %41 = load i32, i32* @MAX_STRING_WIDTH, align 4
  %42 = add nsw i32 %41, 1
  %43 = zext i32 %42 to i64
  %44 = call i8* @llvm.stacksave()
  store i8* %44, i8** %24, align 8
  %45 = alloca i8, i64 %43, align 16
  store i64 %43, i64* %25, align 8
  %46 = load i32, i32* @MAX_STRING_WIDTH, align 4
  %47 = add nsw i32 %46, 1
  %48 = zext i32 %47 to i64
  %49 = alloca i8, i64 %48, align 16
  store i64 %48, i64* %26, align 8
  %50 = load i32, i32* @MAX_STRING_WIDTH, align 4
  %51 = add nsw i32 %50, 1
  %52 = zext i32 %51 to i64
  %53 = alloca i8, i64 %52, align 16
  store i64 %52, i64* %27, align 8
  store i32 0, i32* %31, align 4
  %54 = load i8*, i8** %12, align 8
  %55 = load i8*, i8** %13, align 8
  %56 = load i32, i32* %14, align 4
  %57 = load i8*, i8** %15, align 8
  %58 = load i8*, i8** %16, align 8
  %59 = load i8*, i8** %17, align 8
  %60 = load i8*, i8** %18, align 8
  %61 = call i32 @test_fail_message_prefix(i8* %54, i8* %55, i32 %56, i8* %57, i8* %58, i8* %59, i8* %60)
  %62 = load i8*, i8** %19, align 8
  %63 = icmp eq i8* %62, null
  br i1 %63, label %64, label %65

64:                                               ; preds = %11
  store i64 0, i64* %20, align 8
  br label %65

65:                                               ; preds = %64, %11
  %66 = load i8*, i8** %21, align 8
  %67 = icmp eq i8* %66, null
  br i1 %67, label %68, label %69

68:                                               ; preds = %65
  store i64 0, i64* %22, align 8
  br label %69

69:                                               ; preds = %68, %65
  %70 = load i64, i64* %20, align 8
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %72, label %95

72:                                               ; preds = %69
  %73 = load i64, i64* %22, align 8
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %75, label %95

75:                                               ; preds = %72
  %76 = load i8*, i8** %19, align 8
  %77 = icmp eq i8* %76, null
  %78 = zext i1 %77 to i32
  %79 = load i8*, i8** %21, align 8
  %80 = icmp eq i8* %79, null
  %81 = zext i1 %80 to i32
  %82 = icmp eq i32 %78, %81
  br i1 %82, label %83, label %86

83:                                               ; preds = %75
  %84 = load i8*, i8** %19, align 8
  %85 = call i32 @test_string_null_empty(i8* %84, i8 signext 32)
  br label %94

86:                                               ; preds = %75
  %87 = load i8*, i8** %16, align 8
  %88 = load i8*, i8** %17, align 8
  %89 = call i32 @test_diff_header(i8* %87, i8* %88)
  %90 = load i8*, i8** %19, align 8
  %91 = call i32 @test_string_null_empty(i8* %90, i8 signext 45)
  %92 = load i8*, i8** %21, align 8
  %93 = call i32 @test_string_null_empty(i8* %92, i8 signext 43)
  br label %94

94:                                               ; preds = %86, %83
  br label %331

95:                                               ; preds = %72, %69
  %96 = load i64, i64* %20, align 8
  %97 = load i64, i64* %22, align 8
  %98 = icmp ne i64 %96, %97
  br i1 %98, label %104, label %99

99:                                               ; preds = %95
  %100 = load i8*, i8** %19, align 8
  %101 = load i8*, i8** %21, align 8
  %102 = call i64 @strcmp(i8* %100, i8* %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %108

104:                                              ; preds = %99, %95
  %105 = load i8*, i8** %16, align 8
  %106 = load i8*, i8** %17, align 8
  %107 = call i32 @test_diff_header(i8* %105, i8* %106)
  br label %108

108:                                              ; preds = %104, %99
  br label %109

109:                                              ; preds = %312, %108
  %110 = load i64, i64* %20, align 8
  %111 = icmp ugt i64 %110, 0
  br i1 %111, label %115, label %112

112:                                              ; preds = %109
  %113 = load i64, i64* %22, align 8
  %114 = icmp ugt i64 %113, 0
  br label %115

115:                                              ; preds = %112, %109
  %116 = phi i1 [ true, %109 ], [ %114, %112 ]
  br i1 %116, label %117, label %330

117:                                              ; preds = %115
  store i64 0, i64* %29, align 8
  store i64 0, i64* %28, align 8
  %118 = load i64, i64* %20, align 8
  %119 = icmp ugt i64 %118, 0
  br i1 %119, label %120, label %158

120:                                              ; preds = %117
  %121 = load i64, i64* %20, align 8
  %122 = load i64, i64* %23, align 8
  %123 = icmp ugt i64 %121, %122
  br i1 %123, label %124, label %126

124:                                              ; preds = %120
  %125 = load i64, i64* %23, align 8
  br label %128

126:                                              ; preds = %120
  %127 = load i64, i64* %20, align 8
  br label %128

128:                                              ; preds = %126, %124
  %129 = phi i64 [ %125, %124 ], [ %127, %126 ]
  store i64 %129, i64* %28, align 8
  %130 = getelementptr inbounds i8, i8* %45, i64 %129
  store i8 0, i8* %130, align 1
  store i64 0, i64* %30, align 8
  br label %131

131:                                              ; preds = %154, %128
  %132 = load i64, i64* %30, align 8
  %133 = load i64, i64* %28, align 8
  %134 = icmp ult i64 %132, %133
  br i1 %134, label %135, label %157

135:                                              ; preds = %131
  %136 = load i8*, i8** %19, align 8
  %137 = load i64, i64* %30, align 8
  %138 = getelementptr inbounds i8, i8* %136, i64 %137
  %139 = load i8, i8* %138, align 1
  %140 = call i64 @isprint(i8 zeroext %139)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %148

142:                                              ; preds = %135
  %143 = load i8*, i8** %19, align 8
  %144 = load i64, i64* %30, align 8
  %145 = getelementptr inbounds i8, i8* %143, i64 %144
  %146 = load i8, i8* %145, align 1
  %147 = sext i8 %146 to i32
  br label %149

148:                                              ; preds = %135
  br label %149

149:                                              ; preds = %148, %142
  %150 = phi i32 [ %147, %142 ], [ 46, %148 ]
  %151 = trunc i32 %150 to i8
  %152 = load i64, i64* %30, align 8
  %153 = getelementptr inbounds i8, i8* %45, i64 %152
  store i8 %151, i8* %153, align 1
  br label %154

154:                                              ; preds = %149
  %155 = load i64, i64* %30, align 8
  %156 = add i64 %155, 1
  store i64 %156, i64* %30, align 8
  br label %131

157:                                              ; preds = %131
  br label %158

158:                                              ; preds = %157, %117
  %159 = load i64, i64* %22, align 8
  %160 = icmp ugt i64 %159, 0
  br i1 %160, label %161, label %199

161:                                              ; preds = %158
  %162 = load i64, i64* %22, align 8
  %163 = load i64, i64* %23, align 8
  %164 = icmp ugt i64 %162, %163
  br i1 %164, label %165, label %167

165:                                              ; preds = %161
  %166 = load i64, i64* %23, align 8
  br label %169

167:                                              ; preds = %161
  %168 = load i64, i64* %22, align 8
  br label %169

169:                                              ; preds = %167, %165
  %170 = phi i64 [ %166, %165 ], [ %168, %167 ]
  store i64 %170, i64* %29, align 8
  %171 = getelementptr inbounds i8, i8* %49, i64 %170
  store i8 0, i8* %171, align 1
  store i64 0, i64* %30, align 8
  br label %172

172:                                              ; preds = %195, %169
  %173 = load i64, i64* %30, align 8
  %174 = load i64, i64* %29, align 8
  %175 = icmp ult i64 %173, %174
  br i1 %175, label %176, label %198

176:                                              ; preds = %172
  %177 = load i8*, i8** %21, align 8
  %178 = load i64, i64* %30, align 8
  %179 = getelementptr inbounds i8, i8* %177, i64 %178
  %180 = load i8, i8* %179, align 1
  %181 = call i64 @isprint(i8 zeroext %180)
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %189

183:                                              ; preds = %176
  %184 = load i8*, i8** %21, align 8
  %185 = load i64, i64* %30, align 8
  %186 = getelementptr inbounds i8, i8* %184, i64 %185
  %187 = load i8, i8* %186, align 1
  %188 = sext i8 %187 to i32
  br label %190

189:                                              ; preds = %176
  br label %190

190:                                              ; preds = %189, %183
  %191 = phi i32 [ %188, %183 ], [ 46, %189 ]
  %192 = trunc i32 %191 to i8
  %193 = load i64, i64* %30, align 8
  %194 = getelementptr inbounds i8, i8* %49, i64 %193
  store i8 %192, i8* %194, align 1
  br label %195

195:                                              ; preds = %190
  %196 = load i64, i64* %30, align 8
  %197 = add i64 %196, 1
  store i64 %197, i64* %30, align 8
  br label %172

198:                                              ; preds = %172
  br label %199

199:                                              ; preds = %198, %158
  store i32 0, i32* %32, align 4
  store i64 0, i64* %30, align 8
  %200 = load i64, i64* %28, align 8
  %201 = icmp ugt i64 %200, 0
  br i1 %201, label %202, label %244

202:                                              ; preds = %199
  %203 = load i64, i64* %29, align 8
  %204 = icmp ugt i64 %203, 0
  br i1 %204, label %205, label %244

205:                                              ; preds = %202
  %206 = load i64, i64* %28, align 8
  %207 = load i64, i64* %29, align 8
  %208 = icmp ult i64 %206, %207
  br i1 %208, label %209, label %211

209:                                              ; preds = %205
  %210 = load i64, i64* %28, align 8
  br label %213

211:                                              ; preds = %205
  %212 = load i64, i64* %29, align 8
  br label %213

213:                                              ; preds = %211, %209
  %214 = phi i64 [ %210, %209 ], [ %212, %211 ]
  store i64 %214, i64* %33, align 8
  br label %215

215:                                              ; preds = %238, %213
  %216 = load i64, i64* %30, align 8
  %217 = load i64, i64* %33, align 8
  %218 = icmp ult i64 %216, %217
  br i1 %218, label %219, label %241

219:                                              ; preds = %215
  %220 = load i8*, i8** %19, align 8
  %221 = load i64, i64* %30, align 8
  %222 = getelementptr inbounds i8, i8* %220, i64 %221
  %223 = load i8, i8* %222, align 1
  %224 = sext i8 %223 to i32
  %225 = load i8*, i8** %21, align 8
  %226 = load i64, i64* %30, align 8
  %227 = getelementptr inbounds i8, i8* %225, i64 %226
  %228 = load i8, i8* %227, align 1
  %229 = sext i8 %228 to i32
  %230 = icmp eq i32 %224, %229
  br i1 %230, label %231, label %234

231:                                              ; preds = %219
  %232 = load i64, i64* %30, align 8
  %233 = getelementptr inbounds i8, i8* %53, i64 %232
  store i8 32, i8* %233, align 1
  br label %237

234:                                              ; preds = %219
  %235 = load i64, i64* %30, align 8
  %236 = getelementptr inbounds i8, i8* %53, i64 %235
  store i8 94, i8* %236, align 1
  store i32 1, i32* %32, align 4
  br label %237

237:                                              ; preds = %234, %231
  br label %238

238:                                              ; preds = %237
  %239 = load i64, i64* %30, align 8
  %240 = add i64 %239, 1
  store i64 %240, i64* %30, align 8
  br label %215

241:                                              ; preds = %215
  %242 = load i64, i64* %30, align 8
  %243 = getelementptr inbounds i8, i8* %53, i64 %242
  store i8 0, i8* %243, align 1
  br label %244

244:                                              ; preds = %241, %202, %199
  %245 = load i64, i64* %28, align 8
  %246 = load i64, i64* %29, align 8
  %247 = icmp eq i64 %245, %246
  br i1 %247, label %248, label %261

248:                                              ; preds = %244
  %249 = load i32, i32* %32, align 4
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %261, label %251

251:                                              ; preds = %248
  %252 = load i32, i32* %31, align 4
  %253 = load i64, i64* %29, align 8
  %254 = load i64, i64* %28, align 8
  %255 = icmp ugt i64 %253, %254
  br i1 %255, label %256, label %257

256:                                              ; preds = %251
  br label %258

257:                                              ; preds = %251
  br label %258

258:                                              ; preds = %257, %256
  %259 = phi i8* [ %49, %256 ], [ %45, %257 ]
  %260 = call i32 (i8*, ...) @test_printf_stderr(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %252, i8* %259)
  br label %312

261:                                              ; preds = %248, %244
  %262 = load i32, i32* %31, align 4
  %263 = icmp eq i32 %262, 0
  br i1 %263, label %264, label %275

264:                                              ; preds = %261
  %265 = load i8*, i8** %19, align 8
  %266 = icmp eq i8* %265, null
  br i1 %266, label %272, label %267

267:                                              ; preds = %264
  %268 = load i8*, i8** %19, align 8
  %269 = load i8, i8* %268, align 1
  %270 = sext i8 %269 to i32
  %271 = icmp eq i32 %270, 0
  br i1 %271, label %272, label %275

272:                                              ; preds = %267, %264
  %273 = load i8*, i8** %19, align 8
  %274 = call i32 @test_string_null_empty(i8* %273, i8 signext 45)
  br label %282

275:                                              ; preds = %267, %261
  %276 = load i64, i64* %28, align 8
  %277 = icmp ugt i64 %276, 0
  br i1 %277, label %278, label %281

278:                                              ; preds = %275
  %279 = load i32, i32* %31, align 4
  %280 = call i32 (i8*, ...) @test_printf_stderr(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %279, i8* %45)
  br label %281

281:                                              ; preds = %278, %275
  br label %282

282:                                              ; preds = %281, %272
  %283 = load i32, i32* %31, align 4
  %284 = icmp eq i32 %283, 0
  br i1 %284, label %285, label %296

285:                                              ; preds = %282
  %286 = load i8*, i8** %21, align 8
  %287 = icmp eq i8* %286, null
  br i1 %287, label %293, label %288

288:                                              ; preds = %285
  %289 = load i8*, i8** %21, align 8
  %290 = load i8, i8* %289, align 1
  %291 = sext i8 %290 to i32
  %292 = icmp eq i32 %291, 0
  br i1 %292, label %293, label %296

293:                                              ; preds = %288, %285
  %294 = load i8*, i8** %21, align 8
  %295 = call i32 @test_string_null_empty(i8* %294, i8 signext 43)
  br label %303

296:                                              ; preds = %288, %282
  %297 = load i64, i64* %29, align 8
  %298 = icmp ugt i64 %297, 0
  br i1 %298, label %299, label %302

299:                                              ; preds = %296
  %300 = load i32, i32* %31, align 4
  %301 = call i32 (i8*, ...) @test_printf_stderr(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 %300, i8* %49)
  br label %302

302:                                              ; preds = %299, %296
  br label %303

303:                                              ; preds = %302, %293
  %304 = load i32, i32* %32, align 4
  %305 = icmp ne i32 %304, 0
  br i1 %305, label %306, label %311

306:                                              ; preds = %303
  %307 = load i64, i64* %30, align 8
  %308 = icmp ugt i64 %307, 0
  br i1 %308, label %309, label %311

309:                                              ; preds = %306
  %310 = call i32 (i8*, ...) @test_printf_stderr(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), i8* %53)
  br label %311

311:                                              ; preds = %309, %306, %303
  br label %312

312:                                              ; preds = %311, %258
  %313 = load i64, i64* %28, align 8
  %314 = load i8*, i8** %19, align 8
  %315 = getelementptr inbounds i8, i8* %314, i64 %313
  store i8* %315, i8** %19, align 8
  %316 = load i64, i64* %29, align 8
  %317 = load i8*, i8** %21, align 8
  %318 = getelementptr inbounds i8, i8* %317, i64 %316
  store i8* %318, i8** %21, align 8
  %319 = load i64, i64* %28, align 8
  %320 = load i64, i64* %20, align 8
  %321 = sub i64 %320, %319
  store i64 %321, i64* %20, align 8
  %322 = load i64, i64* %29, align 8
  %323 = load i64, i64* %22, align 8
  %324 = sub i64 %323, %322
  store i64 %324, i64* %22, align 8
  %325 = load i64, i64* %23, align 8
  %326 = load i32, i32* %31, align 4
  %327 = zext i32 %326 to i64
  %328 = add i64 %327, %325
  %329 = trunc i64 %328 to i32
  store i32 %329, i32* %31, align 4
  br label %109

330:                                              ; preds = %115
  br label %331

331:                                              ; preds = %330, %94
  %332 = call i32 (...) @test_flush_stderr()
  %333 = load i8*, i8** %24, align 8
  call void @llvm.stackrestore(i8* %333)
  ret void
}

declare dso_local i32 @subtest_level(...) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @test_fail_message_prefix(i8*, i8*, i32, i8*, i8*, i8*, i8*) #1

declare dso_local i32 @test_string_null_empty(i8*, i8 signext) #1

declare dso_local i32 @test_diff_header(i8*, i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @isprint(i8 zeroext) #1

declare dso_local i32 @test_printf_stderr(i8*, ...) #1

declare dso_local i32 @test_flush_stderr(...) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
