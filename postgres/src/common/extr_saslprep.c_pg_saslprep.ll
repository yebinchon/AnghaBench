; ModuleID = '/home/carl/AnghaBench/postgres/src/common/extr_saslprep.c_pg_saslprep.c'
source_filename = "/home/carl/AnghaBench/postgres/src/common/extr_saslprep.c_pg_saslprep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_PASSWORD_LENGTH = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_PROGRAM_LIMIT_EXCEEDED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"password too long\00", align 1
@SASLPREP_SUCCESS = common dso_local global i32 0, align 4
@SASLPREP_INVALID_UTF8 = common dso_local global i32 0, align 4
@non_ascii_space_ranges = common dso_local global i32 0, align 4
@commonly_mapped_to_nothing_ranges = common dso_local global i32 0, align 4
@prohibited_output_ranges = common dso_local global i32 0, align 4
@unassigned_codepoint_ranges = common dso_local global i32 0, align 4
@RandALCat_codepoint_ranges = common dso_local global i32 0, align 4
@LCat_codepoint_ranges = common dso_local global i32 0, align 4
@SASLPREP_PROHIBITED = common dso_local global i32 0, align 4
@SASLPREP_OOM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pg_saslprep(i8* %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca [4 x i8], align 1
  store i8* %0, i8** %4, align 8
  store i8** %1, i8*** %5, align 8
  store i32* null, i32** %6, align 8
  store i32* null, i32** %7, align 8
  %23 = load i8**, i8*** %5, align 8
  store i8* null, i8** %23, align 8
  %24 = load i8*, i8** %4, align 8
  %25 = call i64 @strlen(i8* %24)
  %26 = load i64, i64* @MAX_PASSWORD_LENGTH, align 8
  %27 = icmp sgt i64 %25, %26
  br i1 %27, label %28, label %34

28:                                               ; preds = %2
  %29 = load i32, i32* @ERROR, align 4
  %30 = load i32, i32* @ERRCODE_PROGRAM_LIMIT_EXCEEDED, align 4
  %31 = call i32 @errcode(i32 %30)
  %32 = call i32 @errmsg(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %33 = call i32 @ereport(i32 %29, i32 %32)
  br label %34

34:                                               ; preds = %28, %2
  %35 = load i8*, i8** %4, align 8
  %36 = call i64 @pg_is_ascii_string(i8* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %48

38:                                               ; preds = %34
  %39 = load i8*, i8** %4, align 8
  %40 = call i8* @STRDUP(i8* %39)
  %41 = load i8**, i8*** %5, align 8
  store i8* %40, i8** %41, align 8
  %42 = load i8**, i8*** %5, align 8
  %43 = load i8*, i8** %42, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %38
  br label %311

46:                                               ; preds = %38
  %47 = load i32, i32* @SASLPREP_SUCCESS, align 4
  store i32 %47, i32* %3, align 4
  br label %325

48:                                               ; preds = %34
  %49 = load i8*, i8** %4, align 8
  %50 = call i32 @pg_utf8_string_len(i8* %49)
  store i32 %50, i32* %8, align 4
  %51 = load i32, i32* %8, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %48
  %54 = load i32, i32* @SASLPREP_INVALID_UTF8, align 4
  store i32 %54, i32* %3, align 4
  br label %325

55:                                               ; preds = %48
  %56 = load i32, i32* %8, align 4
  %57 = add nsw i32 %56, 1
  %58 = sext i32 %57 to i64
  %59 = mul i64 %58, 4
  %60 = trunc i64 %59 to i32
  %61 = call i8* @ALLOC(i32 %60)
  %62 = bitcast i8* %61 to i32*
  store i32* %62, i32** %6, align 8
  %63 = load i32*, i32** %6, align 8
  %64 = icmp ne i32* %63, null
  br i1 %64, label %66, label %65

65:                                               ; preds = %55
  br label %311

66:                                               ; preds = %55
  %67 = load i8*, i8** %4, align 8
  store i8* %67, i8** %14, align 8
  store i32 0, i32* %12, align 4
  br label %68

68:                                               ; preds = %83, %66
  %69 = load i32, i32* %12, align 4
  %70 = load i32, i32* %8, align 4
  %71 = icmp slt i32 %69, %70
  br i1 %71, label %72, label %86

72:                                               ; preds = %68
  %73 = load i8*, i8** %14, align 8
  %74 = call i32 @utf8_to_unicode(i8* %73)
  %75 = load i32*, i32** %6, align 8
  %76 = load i32, i32* %12, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  store i32 %74, i32* %78, align 4
  %79 = load i8*, i8** %14, align 8
  %80 = call i64 @pg_utf_mblen(i8* %79)
  %81 = load i8*, i8** %14, align 8
  %82 = getelementptr inbounds i8, i8* %81, i64 %80
  store i8* %82, i8** %14, align 8
  br label %83

83:                                               ; preds = %72
  %84 = load i32, i32* %12, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %12, align 4
  br label %68

86:                                               ; preds = %68
  %87 = load i32*, i32** %6, align 8
  %88 = load i32, i32* %12, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  store i32 0, i32* %90, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %91

91:                                               ; preds = %126, %86
  %92 = load i32, i32* %12, align 4
  %93 = load i32, i32* %8, align 4
  %94 = icmp slt i32 %92, %93
  br i1 %94, label %95, label %129

95:                                               ; preds = %91
  %96 = load i32*, i32** %6, align 8
  %97 = load i32, i32* %12, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %96, i64 %98
  %100 = load i32, i32* %99, align 4
  store i32 %100, i32* %16, align 4
  %101 = load i32, i32* %16, align 4
  %102 = load i32, i32* @non_ascii_space_ranges, align 4
  %103 = call i64 @IS_CODE_IN_TABLE(i32 %101, i32 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %111

105:                                              ; preds = %95
  %106 = load i32*, i32** %6, align 8
  %107 = load i32, i32* %11, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %11, align 4
  %109 = sext i32 %107 to i64
  %110 = getelementptr inbounds i32, i32* %106, i64 %109
  store i32 32, i32* %110, align 4
  br label %125

111:                                              ; preds = %95
  %112 = load i32, i32* %16, align 4
  %113 = load i32, i32* @commonly_mapped_to_nothing_ranges, align 4
  %114 = call i64 @IS_CODE_IN_TABLE(i32 %112, i32 %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %111
  br label %124

117:                                              ; preds = %111
  %118 = load i32, i32* %16, align 4
  %119 = load i32*, i32** %6, align 8
  %120 = load i32, i32* %11, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %11, align 4
  %122 = sext i32 %120 to i64
  %123 = getelementptr inbounds i32, i32* %119, i64 %122
  store i32 %118, i32* %123, align 4
  br label %124

124:                                              ; preds = %117, %116
  br label %125

125:                                              ; preds = %124, %105
  br label %126

126:                                              ; preds = %125
  %127 = load i32, i32* %12, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %12, align 4
  br label %91

129:                                              ; preds = %91
  %130 = load i32*, i32** %6, align 8
  %131 = load i32, i32* %11, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %130, i64 %132
  store i32 0, i32* %133, align 4
  %134 = load i32, i32* %11, align 4
  store i32 %134, i32* %8, align 4
  %135 = load i32, i32* %8, align 4
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %129
  br label %297

138:                                              ; preds = %129
  %139 = load i32*, i32** %6, align 8
  %140 = call i32* @unicode_normalize_kc(i32* %139)
  store i32* %140, i32** %7, align 8
  %141 = load i32*, i32** %7, align 8
  %142 = icmp ne i32* %141, null
  br i1 %142, label %144, label %143

143:                                              ; preds = %138
  br label %311

144:                                              ; preds = %138
  store i32 0, i32* %12, align 4
  br label %145

145:                                              ; preds = %167, %144
  %146 = load i32, i32* %12, align 4
  %147 = load i32, i32* %8, align 4
  %148 = icmp slt i32 %146, %147
  br i1 %148, label %149, label %170

149:                                              ; preds = %145
  %150 = load i32*, i32** %6, align 8
  %151 = load i32, i32* %12, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i32, i32* %150, i64 %152
  %154 = load i32, i32* %153, align 4
  store i32 %154, i32* %17, align 4
  %155 = load i32, i32* %17, align 4
  %156 = load i32, i32* @prohibited_output_ranges, align 4
  %157 = call i64 @IS_CODE_IN_TABLE(i32 %155, i32 %156)
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %160

159:                                              ; preds = %149
  br label %297

160:                                              ; preds = %149
  %161 = load i32, i32* %17, align 4
  %162 = load i32, i32* @unassigned_codepoint_ranges, align 4
  %163 = call i64 @IS_CODE_IN_TABLE(i32 %161, i32 %162)
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %166

165:                                              ; preds = %160
  br label %297

166:                                              ; preds = %160
  br label %167

167:                                              ; preds = %166
  %168 = load i32, i32* %12, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %12, align 4
  br label %145

170:                                              ; preds = %145
  store i32 0, i32* %13, align 4
  store i32 0, i32* %12, align 4
  br label %171

171:                                              ; preds = %187, %170
  %172 = load i32, i32* %12, align 4
  %173 = load i32, i32* %8, align 4
  %174 = icmp slt i32 %172, %173
  br i1 %174, label %175, label %190

175:                                              ; preds = %171
  %176 = load i32*, i32** %6, align 8
  %177 = load i32, i32* %12, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i32, i32* %176, i64 %178
  %180 = load i32, i32* %179, align 4
  store i32 %180, i32* %18, align 4
  %181 = load i32, i32* %18, align 4
  %182 = load i32, i32* @RandALCat_codepoint_ranges, align 4
  %183 = call i64 @IS_CODE_IN_TABLE(i32 %181, i32 %182)
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %186

185:                                              ; preds = %175
  store i32 1, i32* %13, align 4
  br label %190

186:                                              ; preds = %175
  br label %187

187:                                              ; preds = %186
  %188 = load i32, i32* %12, align 4
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* %12, align 4
  br label %171

190:                                              ; preds = %185, %171
  %191 = load i32, i32* %13, align 4
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %234

193:                                              ; preds = %190
  %194 = load i32*, i32** %6, align 8
  %195 = getelementptr inbounds i32, i32* %194, i64 0
  %196 = load i32, i32* %195, align 4
  store i32 %196, i32* %19, align 4
  %197 = load i32*, i32** %6, align 8
  %198 = load i32, i32* %8, align 4
  %199 = sub nsw i32 %198, 1
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds i32, i32* %197, i64 %200
  %202 = load i32, i32* %201, align 4
  store i32 %202, i32* %20, align 4
  store i32 0, i32* %12, align 4
  br label %203

203:                                              ; preds = %219, %193
  %204 = load i32, i32* %12, align 4
  %205 = load i32, i32* %8, align 4
  %206 = icmp slt i32 %204, %205
  br i1 %206, label %207, label %222

207:                                              ; preds = %203
  %208 = load i32*, i32** %6, align 8
  %209 = load i32, i32* %12, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds i32, i32* %208, i64 %210
  %212 = load i32, i32* %211, align 4
  store i32 %212, i32* %21, align 4
  %213 = load i32, i32* %21, align 4
  %214 = load i32, i32* @LCat_codepoint_ranges, align 4
  %215 = call i64 @IS_CODE_IN_TABLE(i32 %213, i32 %214)
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %217, label %218

217:                                              ; preds = %207
  br label %297

218:                                              ; preds = %207
  br label %219

219:                                              ; preds = %218
  %220 = load i32, i32* %12, align 4
  %221 = add nsw i32 %220, 1
  store i32 %221, i32* %12, align 4
  br label %203

222:                                              ; preds = %203
  %223 = load i32, i32* %19, align 4
  %224 = load i32, i32* @RandALCat_codepoint_ranges, align 4
  %225 = call i64 @IS_CODE_IN_TABLE(i32 %223, i32 %224)
  %226 = icmp ne i64 %225, 0
  br i1 %226, label %227, label %232

227:                                              ; preds = %222
  %228 = load i32, i32* %20, align 4
  %229 = load i32, i32* @RandALCat_codepoint_ranges, align 4
  %230 = call i64 @IS_CODE_IN_TABLE(i32 %228, i32 %229)
  %231 = icmp ne i64 %230, 0
  br i1 %231, label %233, label %232

232:                                              ; preds = %227, %222
  br label %297

233:                                              ; preds = %227
  br label %234

234:                                              ; preds = %233, %190
  store i32 0, i32* %10, align 4
  %235 = load i32*, i32** %7, align 8
  store i32* %235, i32** %15, align 8
  br label %236

236:                                              ; preds = %251, %234
  %237 = load i32*, i32** %15, align 8
  %238 = load i32, i32* %237, align 4
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %240, label %254

240:                                              ; preds = %236
  %241 = load i32*, i32** %15, align 8
  %242 = load i32, i32* %241, align 4
  %243 = getelementptr inbounds [4 x i8], [4 x i8]* %22, i64 0, i64 0
  %244 = call i32 @unicode_to_utf8(i32 %242, i8* %243)
  %245 = getelementptr inbounds [4 x i8], [4 x i8]* %22, i64 0, i64 0
  %246 = call i64 @pg_utf_mblen(i8* %245)
  %247 = load i32, i32* %10, align 4
  %248 = sext i32 %247 to i64
  %249 = add nsw i64 %248, %246
  %250 = trunc i64 %249 to i32
  store i32 %250, i32* %10, align 4
  br label %251

251:                                              ; preds = %240
  %252 = load i32*, i32** %15, align 8
  %253 = getelementptr inbounds i32, i32* %252, i32 1
  store i32* %253, i32** %15, align 8
  br label %236

254:                                              ; preds = %236
  %255 = load i32, i32* %10, align 4
  %256 = add nsw i32 %255, 1
  %257 = call i8* @ALLOC(i32 %256)
  store i8* %257, i8** %9, align 8
  %258 = load i8*, i8** %9, align 8
  %259 = icmp ne i8* %258, null
  br i1 %259, label %261, label %260

260:                                              ; preds = %254
  br label %311

261:                                              ; preds = %254
  %262 = load i8*, i8** %9, align 8
  store i8* %262, i8** %14, align 8
  %263 = load i32*, i32** %7, align 8
  store i32* %263, i32** %15, align 8
  br label %264

264:                                              ; preds = %277, %261
  %265 = load i32*, i32** %15, align 8
  %266 = load i32, i32* %265, align 4
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %268, label %280

268:                                              ; preds = %264
  %269 = load i32*, i32** %15, align 8
  %270 = load i32, i32* %269, align 4
  %271 = load i8*, i8** %14, align 8
  %272 = call i32 @unicode_to_utf8(i32 %270, i8* %271)
  %273 = load i8*, i8** %14, align 8
  %274 = call i64 @pg_utf_mblen(i8* %273)
  %275 = load i8*, i8** %14, align 8
  %276 = getelementptr inbounds i8, i8* %275, i64 %274
  store i8* %276, i8** %14, align 8
  br label %277

277:                                              ; preds = %268
  %278 = load i32*, i32** %15, align 8
  %279 = getelementptr inbounds i32, i32* %278, i32 1
  store i32* %279, i32** %15, align 8
  br label %264

280:                                              ; preds = %264
  %281 = load i8*, i8** %14, align 8
  %282 = load i8*, i8** %9, align 8
  %283 = load i32, i32* %10, align 4
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds i8, i8* %282, i64 %284
  %286 = icmp eq i8* %281, %285
  %287 = zext i1 %286 to i32
  %288 = call i32 @Assert(i32 %287)
  %289 = load i8*, i8** %14, align 8
  store i8 0, i8* %289, align 1
  %290 = load i32*, i32** %6, align 8
  %291 = call i32 @FREE(i32* %290)
  %292 = load i32*, i32** %7, align 8
  %293 = call i32 @FREE(i32* %292)
  %294 = load i8*, i8** %9, align 8
  %295 = load i8**, i8*** %5, align 8
  store i8* %294, i8** %295, align 8
  %296 = load i32, i32* @SASLPREP_SUCCESS, align 4
  store i32 %296, i32* %3, align 4
  br label %325

297:                                              ; preds = %232, %217, %165, %159, %137
  %298 = load i32*, i32** %6, align 8
  %299 = icmp ne i32* %298, null
  br i1 %299, label %300, label %303

300:                                              ; preds = %297
  %301 = load i32*, i32** %6, align 8
  %302 = call i32 @FREE(i32* %301)
  br label %303

303:                                              ; preds = %300, %297
  %304 = load i32*, i32** %7, align 8
  %305 = icmp ne i32* %304, null
  br i1 %305, label %306, label %309

306:                                              ; preds = %303
  %307 = load i32*, i32** %7, align 8
  %308 = call i32 @FREE(i32* %307)
  br label %309

309:                                              ; preds = %306, %303
  %310 = load i32, i32* @SASLPREP_PROHIBITED, align 4
  store i32 %310, i32* %3, align 4
  br label %325

311:                                              ; preds = %260, %143, %65, %45
  %312 = load i32*, i32** %6, align 8
  %313 = icmp ne i32* %312, null
  br i1 %313, label %314, label %317

314:                                              ; preds = %311
  %315 = load i32*, i32** %6, align 8
  %316 = call i32 @FREE(i32* %315)
  br label %317

317:                                              ; preds = %314, %311
  %318 = load i32*, i32** %7, align 8
  %319 = icmp ne i32* %318, null
  br i1 %319, label %320, label %323

320:                                              ; preds = %317
  %321 = load i32*, i32** %7, align 8
  %322 = call i32 @FREE(i32* %321)
  br label %323

323:                                              ; preds = %320, %317
  %324 = load i32, i32* @SASLPREP_OOM, align 4
  store i32 %324, i32* %3, align 4
  br label %325

325:                                              ; preds = %323, %309, %280, %53, %46
  %326 = load i32, i32* %3, align 4
  ret i32 %326
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i64 @pg_is_ascii_string(i8*) #1

declare dso_local i8* @STRDUP(i8*) #1

declare dso_local i32 @pg_utf8_string_len(i8*) #1

declare dso_local i8* @ALLOC(i32) #1

declare dso_local i32 @utf8_to_unicode(i8*) #1

declare dso_local i64 @pg_utf_mblen(i8*) #1

declare dso_local i64 @IS_CODE_IN_TABLE(i32, i32) #1

declare dso_local i32* @unicode_normalize_kc(i32*) #1

declare dso_local i32 @unicode_to_utf8(i32, i8*) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @FREE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
