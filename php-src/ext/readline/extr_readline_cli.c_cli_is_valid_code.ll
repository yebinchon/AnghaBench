; ModuleID = '/home/carl/AnghaBench/php-src/ext/readline/extr_readline_cli.c_cli_is_valid_code.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/readline/extr_readline_cli.c_cli_is_valid_code.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@body = common dso_local global i32 0, align 4
@short_tags = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"<?\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"<?php\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"php\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"/* \00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"<<<\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"   \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, i32**)* @cli_is_valid_code to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cli_is_valid_code(i8* %0, i64 %1, i32** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8, align 1
  %17 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32** %2, i32*** %7, align 8
  store i32 1, i32* %8, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %18 = load i32, i32* @body, align 4
  store i32 %18, i32* %13, align 4
  store i8* null, i8** %14, align 8
  store i64 0, i64* %12, align 8
  br label %19

19:                                               ; preds = %334, %3
  %20 = load i64, i64* %12, align 8
  %21 = load i64, i64* %6, align 8
  %22 = icmp ult i64 %20, %21
  br i1 %22, label %23, label %337

23:                                               ; preds = %19
  %24 = load i32, i32* %13, align 4
  switch i32 %24, label %25 [
    i32 129, label %131
    i32 128, label %150
    i32 134, label %151
    i32 133, label %170
    i32 135, label %171
    i32 136, label %181
    i32 131, label %200
    i32 132, label %225
    i32 130, label %309
  ]

25:                                               ; preds = %23
  %26 = load i8*, i8** %5, align 8
  %27 = load i64, i64* %12, align 8
  %28 = getelementptr inbounds i8, i8* %26, i64 %27
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  switch i32 %30, label %129 [
    i32 123, label %31
    i32 125, label %34
    i32 40, label %45
    i32 41, label %48
    i32 59, label %55
    i32 32, label %64
    i32 13, label %64
    i32 10, label %64
    i32 9, label %64
    i32 39, label %65
    i32 34, label %66
    i32 35, label %67
    i32 47, label %68
    i32 63, label %92
    i32 60, label %104
  ]

31:                                               ; preds = %25
  %32 = load i32, i32* %10, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %10, align 4
  store i32 0, i32* %8, align 4
  br label %130

34:                                               ; preds = %25
  %35 = load i32, i32* %10, align 4
  %36 = icmp sgt i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %34
  %38 = load i32, i32* %10, align 4
  %39 = add nsw i32 %38, -1
  store i32 %39, i32* %10, align 4
  br label %40

40:                                               ; preds = %37, %34
  %41 = load i32, i32* %10, align 4
  %42 = icmp ne i32 %41, 0
  %43 = zext i1 %42 to i64
  %44 = select i1 %42, i32 0, i32 1
  store i32 %44, i32* %8, align 4
  br label %130

45:                                               ; preds = %25
  %46 = load i32, i32* %11, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %11, align 4
  store i32 0, i32* %8, align 4
  br label %130

48:                                               ; preds = %25
  %49 = load i32, i32* %11, align 4
  %50 = icmp sgt i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %48
  %52 = load i32, i32* %11, align 4
  %53 = add nsw i32 %52, -1
  store i32 %53, i32* %11, align 4
  br label %54

54:                                               ; preds = %51, %48
  store i32 0, i32* %8, align 4
  br label %130

55:                                               ; preds = %25
  %56 = load i32, i32* %11, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %55
  %59 = load i32, i32* %10, align 4
  %60 = icmp eq i32 %59, 0
  br label %61

61:                                               ; preds = %58, %55
  %62 = phi i1 [ false, %55 ], [ %60, %58 ]
  %63 = zext i1 %62 to i32
  store i32 %63, i32* %8, align 4
  br label %130

64:                                               ; preds = %25, %25, %25, %25
  br label %130

65:                                               ; preds = %25
  store i32 129, i32* %13, align 4
  br label %130

66:                                               ; preds = %25
  store i32 134, i32* %13, align 4
  br label %130

67:                                               ; preds = %25
  store i32 135, i32* %13, align 4
  br label %130

68:                                               ; preds = %25
  %69 = load i8*, i8** %5, align 8
  %70 = load i64, i64* %12, align 8
  %71 = add i64 %70, 1
  %72 = getelementptr inbounds i8, i8* %69, i64 %71
  %73 = load i8, i8* %72, align 1
  %74 = sext i8 %73 to i32
  %75 = icmp eq i32 %74, 47
  br i1 %75, label %76, label %79

76:                                               ; preds = %68
  %77 = load i64, i64* %12, align 8
  %78 = add i64 %77, 1
  store i64 %78, i64* %12, align 8
  store i32 135, i32* %13, align 4
  br label %130

79:                                               ; preds = %68
  %80 = load i8*, i8** %5, align 8
  %81 = load i64, i64* %12, align 8
  %82 = add i64 %81, 1
  %83 = getelementptr inbounds i8, i8* %80, i64 %82
  %84 = load i8, i8* %83, align 1
  %85 = sext i8 %84 to i32
  %86 = icmp eq i32 %85, 42
  br i1 %86, label %87, label %91

87:                                               ; preds = %79
  %88 = load i32, i32* %8, align 4
  store i32 %88, i32* %9, align 4
  store i32 0, i32* %8, align 4
  store i32 136, i32* %13, align 4
  %89 = load i64, i64* %12, align 8
  %90 = add i64 %89, 1
  store i64 %90, i64* %12, align 8
  br label %130

91:                                               ; preds = %79
  store i32 0, i32* %8, align 4
  br label %130

92:                                               ; preds = %25
  %93 = load i8*, i8** %5, align 8
  %94 = load i64, i64* %12, align 8
  %95 = add i64 %94, 1
  %96 = getelementptr inbounds i8, i8* %93, i64 %95
  %97 = load i8, i8* %96, align 1
  %98 = sext i8 %97 to i32
  %99 = icmp eq i32 %98, 62
  br i1 %99, label %100, label %103

100:                                              ; preds = %92
  %101 = load i64, i64* %12, align 8
  %102 = add i64 %101, 1
  store i64 %102, i64* %12, align 8
  store i32 130, i32* %13, align 4
  br label %130

103:                                              ; preds = %92
  store i32 0, i32* %8, align 4
  br label %130

104:                                              ; preds = %25
  store i32 0, i32* %8, align 4
  %105 = load i64, i64* %12, align 8
  %106 = add i64 %105, 2
  %107 = load i64, i64* %6, align 8
  %108 = icmp ult i64 %106, %107
  br i1 %108, label %109, label %128

109:                                              ; preds = %104
  %110 = load i8*, i8** %5, align 8
  %111 = load i64, i64* %12, align 8
  %112 = add i64 %111, 1
  %113 = getelementptr inbounds i8, i8* %110, i64 %112
  %114 = load i8, i8* %113, align 1
  %115 = sext i8 %114 to i32
  %116 = icmp eq i32 %115, 60
  br i1 %116, label %117, label %128

117:                                              ; preds = %109
  %118 = load i8*, i8** %5, align 8
  %119 = load i64, i64* %12, align 8
  %120 = add i64 %119, 2
  %121 = getelementptr inbounds i8, i8* %118, i64 %120
  %122 = load i8, i8* %121, align 1
  %123 = sext i8 %122 to i32
  %124 = icmp eq i32 %123, 60
  br i1 %124, label %125, label %128

125:                                              ; preds = %117
  %126 = load i64, i64* %12, align 8
  %127 = add i64 %126, 2
  store i64 %127, i64* %12, align 8
  store i32 131, i32* %13, align 4
  store i8* null, i8** %14, align 8
  store i64 0, i64* %15, align 8
  br label %128

128:                                              ; preds = %125, %117, %109, %104
  br label %130

129:                                              ; preds = %25
  store i32 0, i32* %8, align 4
  br label %130

130:                                              ; preds = %129, %128, %103, %100, %91, %87, %76, %67, %66, %65, %64, %61, %54, %45, %40, %31
  br label %333

131:                                              ; preds = %23
  %132 = load i8*, i8** %5, align 8
  %133 = load i64, i64* %12, align 8
  %134 = getelementptr inbounds i8, i8* %132, i64 %133
  %135 = load i8, i8* %134, align 1
  %136 = sext i8 %135 to i32
  %137 = icmp eq i32 %136, 92
  br i1 %137, label %138, label %139

138:                                              ; preds = %131
  store i32 128, i32* %13, align 4
  br label %149

139:                                              ; preds = %131
  %140 = load i8*, i8** %5, align 8
  %141 = load i64, i64* %12, align 8
  %142 = getelementptr inbounds i8, i8* %140, i64 %141
  %143 = load i8, i8* %142, align 1
  %144 = sext i8 %143 to i32
  %145 = icmp eq i32 %144, 39
  br i1 %145, label %146, label %148

146:                                              ; preds = %139
  %147 = load i32, i32* @body, align 4
  store i32 %147, i32* %13, align 4
  br label %148

148:                                              ; preds = %146, %139
  br label %149

149:                                              ; preds = %148, %138
  br label %333

150:                                              ; preds = %23
  store i32 129, i32* %13, align 4
  br label %333

151:                                              ; preds = %23
  %152 = load i8*, i8** %5, align 8
  %153 = load i64, i64* %12, align 8
  %154 = getelementptr inbounds i8, i8* %152, i64 %153
  %155 = load i8, i8* %154, align 1
  %156 = sext i8 %155 to i32
  %157 = icmp eq i32 %156, 92
  br i1 %157, label %158, label %159

158:                                              ; preds = %151
  store i32 133, i32* %13, align 4
  br label %169

159:                                              ; preds = %151
  %160 = load i8*, i8** %5, align 8
  %161 = load i64, i64* %12, align 8
  %162 = getelementptr inbounds i8, i8* %160, i64 %161
  %163 = load i8, i8* %162, align 1
  %164 = sext i8 %163 to i32
  %165 = icmp eq i32 %164, 34
  br i1 %165, label %166, label %168

166:                                              ; preds = %159
  %167 = load i32, i32* @body, align 4
  store i32 %167, i32* %13, align 4
  br label %168

168:                                              ; preds = %166, %159
  br label %169

169:                                              ; preds = %168, %158
  br label %333

170:                                              ; preds = %23
  store i32 134, i32* %13, align 4
  br label %333

171:                                              ; preds = %23
  %172 = load i8*, i8** %5, align 8
  %173 = load i64, i64* %12, align 8
  %174 = getelementptr inbounds i8, i8* %172, i64 %173
  %175 = load i8, i8* %174, align 1
  %176 = sext i8 %175 to i32
  %177 = icmp eq i32 %176, 10
  br i1 %177, label %178, label %180

178:                                              ; preds = %171
  %179 = load i32, i32* @body, align 4
  store i32 %179, i32* %13, align 4
  br label %180

180:                                              ; preds = %178, %171
  br label %333

181:                                              ; preds = %23
  %182 = load i8*, i8** %5, align 8
  %183 = load i64, i64* %12, align 8
  %184 = sub i64 %183, 1
  %185 = getelementptr inbounds i8, i8* %182, i64 %184
  %186 = load i8, i8* %185, align 1
  %187 = sext i8 %186 to i32
  %188 = icmp eq i32 %187, 42
  br i1 %188, label %189, label %199

189:                                              ; preds = %181
  %190 = load i8*, i8** %5, align 8
  %191 = load i64, i64* %12, align 8
  %192 = getelementptr inbounds i8, i8* %190, i64 %191
  %193 = load i8, i8* %192, align 1
  %194 = sext i8 %193 to i32
  %195 = icmp eq i32 %194, 47
  br i1 %195, label %196, label %199

196:                                              ; preds = %189
  %197 = load i32, i32* @body, align 4
  store i32 %197, i32* %13, align 4
  %198 = load i32, i32* %9, align 4
  store i32 %198, i32* %8, align 4
  br label %199

199:                                              ; preds = %196, %189, %181
  br label %333

200:                                              ; preds = %23
  %201 = load i8*, i8** %5, align 8
  %202 = load i64, i64* %12, align 8
  %203 = getelementptr inbounds i8, i8* %201, i64 %202
  %204 = load i8, i8* %203, align 1
  %205 = sext i8 %204 to i32
  switch i32 %205, label %214 [
    i32 32, label %206
    i32 9, label %206
    i32 39, label %206
    i32 13, label %207
    i32 10, label %207
  ]

206:                                              ; preds = %200, %200, %200
  br label %224

207:                                              ; preds = %200, %200
  %208 = load i8*, i8** %14, align 8
  %209 = icmp ne i8* %208, null
  br i1 %209, label %210, label %211

210:                                              ; preds = %207
  store i32 132, i32* %13, align 4
  br label %213

211:                                              ; preds = %207
  %212 = load i32, i32* @body, align 4
  store i32 %212, i32* %13, align 4
  br label %213

213:                                              ; preds = %211, %210
  br label %224

214:                                              ; preds = %200
  %215 = load i8*, i8** %14, align 8
  %216 = icmp ne i8* %215, null
  br i1 %216, label %221, label %217

217:                                              ; preds = %214
  %218 = load i8*, i8** %5, align 8
  %219 = load i64, i64* %12, align 8
  %220 = getelementptr inbounds i8, i8* %218, i64 %219
  store i8* %220, i8** %14, align 8
  br label %221

221:                                              ; preds = %217, %214
  %222 = load i64, i64* %15, align 8
  %223 = add i64 %222, 1
  store i64 %223, i64* %15, align 8
  br label %224

224:                                              ; preds = %221, %213, %206
  br label %333

225:                                              ; preds = %23
  %226 = load i8*, i8** %14, align 8
  %227 = call i32 @ZEND_ASSERT(i8* %226)
  %228 = load i8*, i8** %5, align 8
  %229 = load i64, i64* %12, align 8
  %230 = getelementptr inbounds i8, i8* %228, i64 %229
  %231 = load i64, i64* %15, align 8
  %232 = sub i64 0, %231
  %233 = getelementptr inbounds i8, i8* %230, i64 %232
  %234 = getelementptr inbounds i8, i8* %233, i64 1
  %235 = load i8*, i8** %14, align 8
  %236 = load i64, i64* %15, align 8
  %237 = trunc i64 %236 to i32
  %238 = call i32 @strncmp(i8* %234, i8* %235, i32 %237)
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %308, label %240

240:                                              ; preds = %225
  %241 = load i8*, i8** %5, align 8
  %242 = load i64, i64* %12, align 8
  %243 = add i64 %242, 1
  %244 = getelementptr inbounds i8, i8* %241, i64 %243
  %245 = load i8, i8* %244, align 1
  store i8 %245, i8* %16, align 1
  %246 = load i8*, i8** %5, align 8
  %247 = load i64, i64* %12, align 8
  %248 = getelementptr inbounds i8, i8* %246, i64 %247
  %249 = load i64, i64* %15, align 8
  %250 = sub i64 0, %249
  %251 = getelementptr inbounds i8, i8* %248, i64 %250
  store i8* %251, i8** %17, align 8
  %252 = load i8, i8* %16, align 1
  %253 = zext i8 %252 to i32
  %254 = icmp sge i32 %253, 65
  br i1 %254, label %255, label %259

255:                                              ; preds = %240
  %256 = load i8, i8* %16, align 1
  %257 = zext i8 %256 to i32
  %258 = icmp sle i32 %257, 90
  br i1 %258, label %283, label %259

259:                                              ; preds = %255, %240
  %260 = load i8, i8* %16, align 1
  %261 = zext i8 %260 to i32
  %262 = icmp sge i32 %261, 97
  br i1 %262, label %263, label %267

263:                                              ; preds = %259
  %264 = load i8, i8* %16, align 1
  %265 = zext i8 %264 to i32
  %266 = icmp sle i32 %265, 122
  br i1 %266, label %283, label %267

267:                                              ; preds = %263, %259
  %268 = load i8, i8* %16, align 1
  %269 = zext i8 %268 to i32
  %270 = icmp sge i32 %269, 48
  br i1 %270, label %271, label %275

271:                                              ; preds = %267
  %272 = load i8, i8* %16, align 1
  %273 = zext i8 %272 to i32
  %274 = icmp sle i32 %273, 57
  br i1 %274, label %283, label %275

275:                                              ; preds = %271, %267
  %276 = load i8, i8* %16, align 1
  %277 = zext i8 %276 to i32
  %278 = icmp eq i32 %277, 95
  br i1 %278, label %283, label %279

279:                                              ; preds = %275
  %280 = load i8, i8* %16, align 1
  %281 = zext i8 %280 to i32
  %282 = icmp sge i32 %281, 128
  br i1 %282, label %283, label %284

283:                                              ; preds = %279, %275, %271, %263, %255
  br label %333

284:                                              ; preds = %279
  br label %285

285:                                              ; preds = %297, %284
  %286 = load i8*, i8** %17, align 8
  %287 = load i8, i8* %286, align 1
  %288 = sext i8 %287 to i32
  %289 = icmp eq i32 %288, 32
  br i1 %289, label %295, label %290

290:                                              ; preds = %285
  %291 = load i8*, i8** %17, align 8
  %292 = load i8, i8* %291, align 1
  %293 = sext i8 %292 to i32
  %294 = icmp eq i32 %293, 9
  br label %295

295:                                              ; preds = %290, %285
  %296 = phi i1 [ true, %285 ], [ %294, %290 ]
  br i1 %296, label %297, label %300

297:                                              ; preds = %295
  %298 = load i8*, i8** %17, align 8
  %299 = getelementptr inbounds i8, i8* %298, i32 -1
  store i8* %299, i8** %17, align 8
  br label %285

300:                                              ; preds = %295
  %301 = load i8*, i8** %17, align 8
  %302 = load i8, i8* %301, align 1
  %303 = sext i8 %302 to i32
  %304 = icmp ne i32 %303, 10
  br i1 %304, label %305, label %306

305:                                              ; preds = %300
  br label %333

306:                                              ; preds = %300
  %307 = load i32, i32* @body, align 4
  store i32 %307, i32* %13, align 4
  br label %308

308:                                              ; preds = %306, %225
  br label %333

309:                                              ; preds = %23
  %310 = load i32, i32* @short_tags, align 4
  %311 = call i32 @CG(i32 %310)
  %312 = icmp ne i32 %311, 0
  br i1 %312, label %313, label %320

313:                                              ; preds = %309
  %314 = load i8*, i8** %5, align 8
  %315 = load i64, i64* %12, align 8
  %316 = getelementptr inbounds i8, i8* %314, i64 %315
  %317 = getelementptr inbounds i8, i8* %316, i64 -1
  %318 = call i32 @strncmp(i8* %317, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 2)
  %319 = icmp ne i32 %318, 0
  br i1 %319, label %320, label %330

320:                                              ; preds = %313, %309
  %321 = load i64, i64* %12, align 8
  %322 = icmp ugt i64 %321, 3
  br i1 %322, label %323, label %332

323:                                              ; preds = %320
  %324 = load i8*, i8** %5, align 8
  %325 = load i64, i64* %12, align 8
  %326 = getelementptr inbounds i8, i8* %324, i64 %325
  %327 = getelementptr inbounds i8, i8* %326, i64 -4
  %328 = call i32 @strncmp(i8* %327, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 5)
  %329 = icmp ne i32 %328, 0
  br i1 %329, label %332, label %330

330:                                              ; preds = %323, %313
  %331 = load i32, i32* @body, align 4
  store i32 %331, i32* %13, align 4
  br label %332

332:                                              ; preds = %330, %323, %320
  br label %333

333:                                              ; preds = %332, %308, %305, %283, %224, %199, %180, %170, %169, %150, %149, %130
  br label %334

334:                                              ; preds = %333
  %335 = load i64, i64* %12, align 8
  %336 = add i64 %335, 1
  store i64 %336, i64* %12, align 8
  br label %19

337:                                              ; preds = %19
  %338 = load i32, i32* %13, align 4
  switch i32 %338, label %339 [
    i32 129, label %356
    i32 128, label %356
    i32 134, label %359
    i32 133, label %359
    i32 136, label %362
    i32 132, label %365
    i32 130, label %368
  ]

339:                                              ; preds = %337
  %340 = load i32, i32* %11, align 4
  %341 = icmp ne i32 %340, 0
  br i1 %341, label %342, label %345

342:                                              ; preds = %339
  %343 = call i32* @cli_get_prompt(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8 signext 40)
  %344 = load i32**, i32*** %7, align 8
  store i32* %343, i32** %344, align 8
  br label %355

345:                                              ; preds = %339
  %346 = load i32, i32* %10, align 4
  %347 = icmp ne i32 %346, 0
  br i1 %347, label %348, label %351

348:                                              ; preds = %345
  %349 = call i32* @cli_get_prompt(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8 signext 123)
  %350 = load i32**, i32*** %7, align 8
  store i32* %349, i32** %350, align 8
  br label %354

351:                                              ; preds = %345
  %352 = call i32* @cli_get_prompt(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8 signext 62)
  %353 = load i32**, i32*** %7, align 8
  store i32* %352, i32** %353, align 8
  br label %354

354:                                              ; preds = %351, %348
  br label %355

355:                                              ; preds = %354, %342
  br label %371

356:                                              ; preds = %337, %337
  %357 = call i32* @cli_get_prompt(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8 signext 39)
  %358 = load i32**, i32*** %7, align 8
  store i32* %357, i32** %358, align 8
  br label %371

359:                                              ; preds = %337, %337
  %360 = call i32* @cli_get_prompt(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8 signext 34)
  %361 = load i32**, i32*** %7, align 8
  store i32* %360, i32** %361, align 8
  br label %371

362:                                              ; preds = %337
  %363 = call i32* @cli_get_prompt(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8 signext 62)
  %364 = load i32**, i32*** %7, align 8
  store i32* %363, i32** %364, align 8
  br label %371

365:                                              ; preds = %337
  %366 = call i32* @cli_get_prompt(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8 signext 62)
  %367 = load i32**, i32*** %7, align 8
  store i32* %366, i32** %367, align 8
  br label %371

368:                                              ; preds = %337
  %369 = call i32* @cli_get_prompt(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8 signext 62)
  %370 = load i32**, i32*** %7, align 8
  store i32* %369, i32** %370, align 8
  br label %371

371:                                              ; preds = %368, %365, %362, %359, %356, %355
  %372 = load i32, i32* %8, align 4
  %373 = icmp ne i32 %372, 0
  br i1 %373, label %374, label %377

374:                                              ; preds = %371
  %375 = load i32, i32* %10, align 4
  %376 = icmp ne i32 %375, 0
  br i1 %376, label %377, label %378

377:                                              ; preds = %374, %371
  store i32 0, i32* %4, align 4
  br label %379

378:                                              ; preds = %374
  store i32 1, i32* %4, align 4
  br label %379

379:                                              ; preds = %378, %377
  %380 = load i32, i32* %4, align 4
  ret i32 %380
}

declare dso_local i32 @ZEND_ASSERT(i8*) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @CG(i32) #1

declare dso_local i32* @cli_get_prompt(i8*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
