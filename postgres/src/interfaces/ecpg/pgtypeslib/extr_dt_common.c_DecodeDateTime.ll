; ModuleID = '/home/carl/AnghaBench/postgres/src/interfaces/ecpg/pgtypeslib/extr_dt_common.c_DecodeDateTime.c'
source_filename = "/home/carl/AnghaBench/postgres/src/interfaces/ecpg/pgtypeslib/extr_dt_common.c_DecodeDateTime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i32, i64, i64, i32, i32, i32, i32, i32 }

@HR24 = common dso_local global i32 0, align 4
@DTK_DATE_M = common dso_local global i32 0, align 4
@DTK_TIME_M = common dso_local global i32 0, align 4
@YEAR = common dso_local global i32 0, align 4
@HOUR = common dso_local global i32 0, align 4
@MINUTE = common dso_local global i32 0, align 4
@DAY = common dso_local global i32 0, align 4
@SECOND = common dso_local global i32 0, align 4
@USECS_PER_DAY = common dso_local global double 0.000000e+00, align 8
@BC = common dso_local global i32 0, align 4
@AM = common dso_local global i32 0, align 4
@PM = common dso_local global i32 0, align 4
@day_tab = common dso_local global i32** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @DecodeDateTime(i8** %0, i32* %1, i32 %2, i32* %3, %struct.tm* %4, double* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i8**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca %struct.tm*, align 8
  %14 = alloca double*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32*, align 8
  %28 = alloca i8*, align 8
  %29 = alloca i32, align 4
  %30 = alloca i8*, align 8
  %31 = alloca i32, align 4
  %32 = alloca i8*, align 8
  %33 = alloca i32, align 4
  %34 = alloca double, align 8
  %35 = alloca double, align 8
  %36 = alloca i8*, align 8
  %37 = alloca i32, align 4
  store i8** %0, i8*** %9, align 8
  store i32* %1, i32** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32* %3, i32** %12, align 8
  store %struct.tm* %4, %struct.tm** %13, align 8
  store double* %5, double** %14, align 8
  store i32 %6, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %19, align 4
  %38 = load i32, i32* @HR24, align 4
  store i32 %38, i32* %22, align 4
  store i32 0, i32* %23, align 4
  store i32 0, i32* %24, align 4
  store i32 0, i32* %25, align 4
  store i32 0, i32* %26, align 4
  store i32* %26, i32** %27, align 8
  %39 = load i32*, i32** %12, align 8
  store i32 153, i32* %39, align 4
  %40 = load %struct.tm*, %struct.tm** %13, align 8
  %41 = getelementptr inbounds %struct.tm, %struct.tm* %40, i32 0, i32 0
  store i32 0, i32* %41, align 8
  %42 = load %struct.tm*, %struct.tm** %13, align 8
  %43 = getelementptr inbounds %struct.tm, %struct.tm* %42, i32 0, i32 1
  store i64 0, i64* %43, align 8
  %44 = load %struct.tm*, %struct.tm** %13, align 8
  %45 = getelementptr inbounds %struct.tm, %struct.tm* %44, i32 0, i32 2
  store i64 0, i64* %45, align 8
  %46 = load double*, double** %14, align 8
  store double 0.000000e+00, double* %46, align 8
  %47 = load %struct.tm*, %struct.tm** %13, align 8
  %48 = getelementptr inbounds %struct.tm, %struct.tm* %47, i32 0, i32 3
  store i32 -1, i32* %48, align 8
  %49 = load i32*, i32** %27, align 8
  %50 = icmp ne i32* %49, null
  br i1 %50, label %51, label %53

51:                                               ; preds = %7
  %52 = load i32*, i32** %27, align 8
  store i32 0, i32* %52, align 4
  br label %53

53:                                               ; preds = %51, %7
  store i32 0, i32* %20, align 4
  br label %54

54:                                               ; preds = %847, %53
  %55 = load i32, i32* %20, align 4
  %56 = load i32, i32* %11, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %850

58:                                               ; preds = %54
  %59 = load i32*, i32** %10, align 8
  %60 = load i32, i32* %20, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32, i32* %62, align 4
  switch i32 %63, label %836 [
    i32 153, label %64
    i32 142, label %217
    i32 139, label %250
    i32 146, label %299
    i32 143, label %585
    i32 144, label %585
  ]

64:                                               ; preds = %58
  %65 = load i32, i32* %19, align 4
  %66 = icmp eq i32 %65, 150
  br i1 %66, label %67, label %103

67:                                               ; preds = %64
  %68 = load i32*, i32** %27, align 8
  %69 = icmp eq i32* %68, null
  br i1 %69, label %70, label %71

70:                                               ; preds = %67
  store i32 -1, i32* %8, align 4
  br label %996

71:                                               ; preds = %67
  %72 = load i8**, i8*** %9, align 8
  %73 = load i32, i32* %20, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i8*, i8** %72, i64 %74
  %76 = load i8*, i8** %75, align 8
  %77 = call i32 @strtoint(i8* %76, i8** %28, i32 10)
  store i32 %77, i32* %29, align 4
  %78 = load i8*, i8** %28, align 8
  %79 = load i8, i8* %78, align 1
  %80 = sext i8 %79 to i32
  %81 = icmp ne i32 %80, 45
  br i1 %81, label %82, label %83

82:                                               ; preds = %71
  store i32 -1, i32* %8, align 4
  br label %996

83:                                               ; preds = %71
  %84 = load i32, i32* %29, align 4
  %85 = load %struct.tm*, %struct.tm** %13, align 8
  %86 = getelementptr inbounds %struct.tm, %struct.tm* %85, i32 0, i32 4
  %87 = load %struct.tm*, %struct.tm** %13, align 8
  %88 = getelementptr inbounds %struct.tm, %struct.tm* %87, i32 0, i32 5
  %89 = load %struct.tm*, %struct.tm** %13, align 8
  %90 = getelementptr inbounds %struct.tm, %struct.tm* %89, i32 0, i32 6
  %91 = call i32 @j2date(i32 %84, i32* %86, i32* %88, i32* %90)
  %92 = load i8*, i8** %28, align 8
  %93 = load i32*, i32** %27, align 8
  %94 = call i32 @DecodeTimezone(i8* %92, i32* %93)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %83
  store i32 -1, i32* %8, align 4
  br label %996

97:                                               ; preds = %83
  %98 = load i32, i32* @DTK_DATE_M, align 4
  %99 = load i32, i32* @DTK_TIME_M, align 4
  %100 = or i32 %98, %99
  %101 = call i32 @DTK_M(i32 129)
  %102 = or i32 %100, %101
  store i32 %102, i32* %17, align 4
  store i32 0, i32* %19, align 4
  br label %837

103:                                              ; preds = %64
  %104 = load i32, i32* %16, align 4
  %105 = load i32, i32* @DTK_DATE_M, align 4
  %106 = and i32 %104, %105
  %107 = load i32, i32* @DTK_DATE_M, align 4
  %108 = icmp eq i32 %106, %107
  br i1 %108, label %112, label %109

109:                                              ; preds = %103
  %110 = load i32, i32* %19, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %202

112:                                              ; preds = %109, %103
  %113 = load i32*, i32** %27, align 8
  %114 = icmp eq i32* %113, null
  br i1 %114, label %115, label %116

115:                                              ; preds = %112
  store i32 -1, i32* %8, align 4
  br label %996

116:                                              ; preds = %112
  %117 = load i8**, i8*** %9, align 8
  %118 = load i32, i32* %20, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i8*, i8** %117, i64 %119
  %121 = load i8*, i8** %120, align 8
  %122 = load i8, i8* %121, align 1
  %123 = call i32 @isdigit(i8 zeroext %122)
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %128, label %125

125:                                              ; preds = %116
  %126 = load i32, i32* %19, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %185

128:                                              ; preds = %125, %116
  %129 = load i32, i32* %19, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %136

131:                                              ; preds = %128
  %132 = load i32, i32* %19, align 4
  %133 = icmp ne i32 %132, 142
  br i1 %133, label %134, label %135

134:                                              ; preds = %131
  store i32 -1, i32* %8, align 4
  br label %996

135:                                              ; preds = %131
  store i32 0, i32* %19, align 4
  br label %136

136:                                              ; preds = %135, %128
  %137 = load i32, i32* %16, align 4
  %138 = load i32, i32* @DTK_TIME_M, align 4
  %139 = and i32 %137, %138
  %140 = load i32, i32* @DTK_TIME_M, align 4
  %141 = icmp eq i32 %139, %140
  br i1 %141, label %142, label %143

142:                                              ; preds = %136
  store i32 -1, i32* %8, align 4
  br label %996

143:                                              ; preds = %136
  %144 = load i8**, i8*** %9, align 8
  %145 = load i32, i32* %20, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i8*, i8** %144, i64 %146
  %148 = load i8*, i8** %147, align 8
  %149 = call i8* @strchr(i8* %148, i8 signext 45)
  store i8* %149, i8** %30, align 8
  %150 = icmp eq i8* %149, null
  br i1 %150, label %151, label %152

151:                                              ; preds = %143
  store i32 -1, i32* %8, align 4
  br label %996

152:                                              ; preds = %143
  %153 = load i8*, i8** %30, align 8
  %154 = load i32*, i32** %27, align 8
  %155 = call i32 @DecodeTimezone(i8* %153, i32* %154)
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %158

157:                                              ; preds = %152
  store i32 -1, i32* %8, align 4
  br label %996

158:                                              ; preds = %152
  %159 = load i8*, i8** %30, align 8
  store i8 0, i8* %159, align 1
  %160 = load i8**, i8*** %9, align 8
  %161 = load i32, i32* %20, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i8*, i8** %160, i64 %162
  %164 = load i8*, i8** %163, align 8
  %165 = call i32 @strlen(i8* %164)
  %166 = load i8**, i8*** %9, align 8
  %167 = load i32, i32* %20, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i8*, i8** %166, i64 %168
  %170 = load i8*, i8** %169, align 8
  %171 = load i32, i32* %16, align 4
  %172 = load %struct.tm*, %struct.tm** %13, align 8
  %173 = load double*, double** %14, align 8
  %174 = call i32 @DecodeNumberField(i32 %165, i8* %170, i32 %171, i32* %17, %struct.tm* %172, double* %173, i32* %24)
  %175 = load i32*, i32** %10, align 8
  %176 = load i32, i32* %20, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i32, i32* %175, i64 %177
  store i32 %174, i32* %178, align 4
  %179 = icmp slt i32 %174, 0
  br i1 %179, label %180, label %181

180:                                              ; preds = %158
  store i32 -1, i32* %8, align 4
  br label %996

181:                                              ; preds = %158
  %182 = call i32 @DTK_M(i32 129)
  %183 = load i32, i32* %17, align 4
  %184 = or i32 %183, %182
  store i32 %184, i32* %17, align 4
  br label %201

185:                                              ; preds = %125
  %186 = load i8**, i8*** %9, align 8
  %187 = load i32, i32* %20, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i8*, i8** %186, i64 %188
  %190 = load i8*, i8** %189, align 8
  %191 = load i32*, i32** %27, align 8
  %192 = call i32 @DecodePosixTimezone(i8* %190, i32* %191)
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %195

194:                                              ; preds = %185
  store i32 -1, i32* %8, align 4
  br label %996

195:                                              ; preds = %185
  %196 = load i32*, i32** %10, align 8
  %197 = load i32, i32* %20, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds i32, i32* %196, i64 %198
  store i32 139, i32* %199, align 4
  %200 = call i32 @DTK_M(i32 129)
  store i32 %200, i32* %17, align 4
  br label %201

201:                                              ; preds = %195, %181
  br label %215

202:                                              ; preds = %109
  %203 = load i8**, i8*** %9, align 8
  %204 = load i32, i32* %20, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds i8*, i8** %203, i64 %205
  %207 = load i8*, i8** %206, align 8
  %208 = load i32, i32* %16, align 4
  %209 = load %struct.tm*, %struct.tm** %13, align 8
  %210 = load i32, i32* %15, align 4
  %211 = call i32 @DecodeDate(i8* %207, i32 %208, i32* %17, %struct.tm* %209, i32 %210)
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %214

213:                                              ; preds = %202
  store i32 -1, i32* %8, align 4
  br label %996

214:                                              ; preds = %202
  br label %215

215:                                              ; preds = %214, %201
  br label %216

216:                                              ; preds = %215
  br label %837

217:                                              ; preds = %58
  %218 = load i8**, i8*** %9, align 8
  %219 = load i32, i32* %20, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds i8*, i8** %218, i64 %220
  %222 = load i8*, i8** %221, align 8
  %223 = load %struct.tm*, %struct.tm** %13, align 8
  %224 = load double*, double** %14, align 8
  %225 = call i32 @DecodeTime(i8* %222, i32* %17, %struct.tm* %223, double* %224)
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %228

227:                                              ; preds = %217
  store i32 -1, i32* %8, align 4
  br label %996

228:                                              ; preds = %217
  %229 = load %struct.tm*, %struct.tm** %13, align 8
  %230 = getelementptr inbounds %struct.tm, %struct.tm* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 8
  %232 = icmp sgt i32 %231, 24
  br i1 %232, label %248, label %233

233:                                              ; preds = %228
  %234 = load %struct.tm*, %struct.tm** %13, align 8
  %235 = getelementptr inbounds %struct.tm, %struct.tm* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 8
  %237 = icmp eq i32 %236, 24
  br i1 %237, label %238, label %249

238:                                              ; preds = %233
  %239 = load %struct.tm*, %struct.tm** %13, align 8
  %240 = getelementptr inbounds %struct.tm, %struct.tm* %239, i32 0, i32 1
  %241 = load i64, i64* %240, align 8
  %242 = icmp sgt i64 %241, 0
  br i1 %242, label %248, label %243

243:                                              ; preds = %238
  %244 = load %struct.tm*, %struct.tm** %13, align 8
  %245 = getelementptr inbounds %struct.tm, %struct.tm* %244, i32 0, i32 2
  %246 = load i64, i64* %245, align 8
  %247 = icmp sgt i64 %246, 0
  br i1 %247, label %248, label %249

248:                                              ; preds = %243, %238, %228
  store i32 -1, i32* %8, align 4
  br label %996

249:                                              ; preds = %243, %233
  br label %837

250:                                              ; preds = %58
  %251 = load i32*, i32** %27, align 8
  %252 = icmp eq i32* %251, null
  br i1 %252, label %253, label %254

253:                                              ; preds = %250
  store i32 -1, i32* %8, align 4
  br label %996

254:                                              ; preds = %250
  %255 = load i8**, i8*** %9, align 8
  %256 = load i32, i32* %20, align 4
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds i8*, i8** %255, i64 %257
  %259 = load i8*, i8** %258, align 8
  %260 = call i32 @DecodeTimezone(i8* %259, i32* %31)
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %262, label %263

262:                                              ; preds = %254
  store i32 -1, i32* %8, align 4
  br label %996

263:                                              ; preds = %254
  %264 = load i32, i32* %20, align 4
  %265 = icmp sgt i32 %264, 0
  br i1 %265, label %266, label %294

266:                                              ; preds = %263
  %267 = load i32, i32* %16, align 4
  %268 = call i32 @DTK_M(i32 129)
  %269 = and i32 %267, %268
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %271, label %294

271:                                              ; preds = %266
  %272 = load i32*, i32** %10, align 8
  %273 = load i32, i32* %20, align 4
  %274 = sub nsw i32 %273, 1
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds i32, i32* %272, i64 %275
  %277 = load i32, i32* %276, align 4
  %278 = icmp eq i32 %277, 139
  br i1 %278, label %279, label %294

279:                                              ; preds = %271
  %280 = load i8**, i8*** %9, align 8
  %281 = load i32, i32* %20, align 4
  %282 = sub nsw i32 %281, 1
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds i8*, i8** %280, i64 %283
  %285 = load i8*, i8** %284, align 8
  %286 = load i8, i8* %285, align 1
  %287 = call i32 @isalpha(i8 zeroext %286)
  %288 = icmp ne i32 %287, 0
  br i1 %288, label %289, label %294

289:                                              ; preds = %279
  %290 = load i32, i32* %31, align 4
  %291 = load i32*, i32** %27, align 8
  %292 = load i32, i32* %291, align 4
  %293 = sub nsw i32 %292, %290
  store i32 %293, i32* %291, align 4
  store i32 0, i32* %17, align 4
  br label %298

294:                                              ; preds = %279, %271, %266, %263
  %295 = load i32, i32* %31, align 4
  %296 = load i32*, i32** %27, align 8
  store i32 %295, i32* %296, align 4
  %297 = call i32 @DTK_M(i32 129)
  store i32 %297, i32* %17, align 4
  br label %298

298:                                              ; preds = %294, %289
  br label %837

299:                                              ; preds = %58
  %300 = load i32, i32* %19, align 4
  %301 = icmp ne i32 %300, 0
  br i1 %301, label %302, label %485

302:                                              ; preds = %299
  %303 = load i8**, i8*** %9, align 8
  %304 = load i32, i32* %20, align 4
  %305 = sext i32 %304 to i64
  %306 = getelementptr inbounds i8*, i8** %303, i64 %305
  %307 = load i8*, i8** %306, align 8
  %308 = call i32 @strtoint(i8* %307, i8** %32, i32 10)
  store i32 %308, i32* %33, align 4
  %309 = load i8*, i8** %32, align 8
  %310 = load i8, i8* %309, align 1
  %311 = sext i8 %310 to i32
  %312 = icmp eq i32 %311, 46
  br i1 %312, label %313, label %318

313:                                              ; preds = %302
  %314 = load i32, i32* %19, align 4
  switch i32 %314, label %316 [
    i32 150, label %315
    i32 142, label %315
    i32 145, label %315
  ]

315:                                              ; preds = %313, %313, %313
  br label %317

316:                                              ; preds = %313
  store i32 1, i32* %8, align 4
  br label %996

317:                                              ; preds = %315
  br label %325

318:                                              ; preds = %302
  %319 = load i8*, i8** %32, align 8
  %320 = load i8, i8* %319, align 1
  %321 = sext i8 %320 to i32
  %322 = icmp ne i32 %321, 0
  br i1 %322, label %323, label %324

323:                                              ; preds = %318
  store i32 -1, i32* %8, align 4
  br label %996

324:                                              ; preds = %318
  br label %325

325:                                              ; preds = %324, %317
  %326 = load i32, i32* %19, align 4
  switch i32 %326, label %482 [
    i32 138, label %327
    i32 148, label %333
    i32 152, label %357
    i32 151, label %363
    i32 149, label %369
    i32 145, label %376
    i32 139, label %400
    i32 150, label %412
    i32 142, label %452
  ]

327:                                              ; preds = %325
  %328 = load i32, i32* %33, align 4
  %329 = load %struct.tm*, %struct.tm** %13, align 8
  %330 = getelementptr inbounds %struct.tm, %struct.tm* %329, i32 0, i32 4
  store i32 %328, i32* %330, align 4
  %331 = load i32, i32* @YEAR, align 4
  %332 = call i32 @DTK_M(i32 %331)
  store i32 %332, i32* %17, align 4
  br label %483

333:                                              ; preds = %325
  %334 = load i32, i32* %16, align 4
  %335 = call i32 @DTK_M(i32 131)
  %336 = and i32 %334, %335
  %337 = icmp ne i32 %336, 0
  br i1 %337, label %338, label %351

338:                                              ; preds = %333
  %339 = load i32, i32* %16, align 4
  %340 = load i32, i32* @HOUR, align 4
  %341 = call i32 @DTK_M(i32 %340)
  %342 = and i32 %339, %341
  %343 = icmp ne i32 %342, 0
  br i1 %343, label %344, label %351

344:                                              ; preds = %338
  %345 = load i32, i32* %33, align 4
  %346 = sext i32 %345 to i64
  %347 = load %struct.tm*, %struct.tm** %13, align 8
  %348 = getelementptr inbounds %struct.tm, %struct.tm* %347, i32 0, i32 1
  store i64 %346, i64* %348, align 8
  %349 = load i32, i32* @MINUTE, align 4
  %350 = call i32 @DTK_M(i32 %349)
  store i32 %350, i32* %17, align 4
  br label %356

351:                                              ; preds = %338, %333
  %352 = load i32, i32* %33, align 4
  %353 = load %struct.tm*, %struct.tm** %13, align 8
  %354 = getelementptr inbounds %struct.tm, %struct.tm* %353, i32 0, i32 5
  store i32 %352, i32* %354, align 8
  %355 = call i32 @DTK_M(i32 131)
  store i32 %355, i32* %17, align 4
  br label %356

356:                                              ; preds = %351, %344
  br label %483

357:                                              ; preds = %325
  %358 = load i32, i32* %33, align 4
  %359 = load %struct.tm*, %struct.tm** %13, align 8
  %360 = getelementptr inbounds %struct.tm, %struct.tm* %359, i32 0, i32 6
  store i32 %358, i32* %360, align 4
  %361 = load i32, i32* @DAY, align 4
  %362 = call i32 @DTK_M(i32 %361)
  store i32 %362, i32* %17, align 4
  br label %483

363:                                              ; preds = %325
  %364 = load i32, i32* %33, align 4
  %365 = load %struct.tm*, %struct.tm** %13, align 8
  %366 = getelementptr inbounds %struct.tm, %struct.tm* %365, i32 0, i32 0
  store i32 %364, i32* %366, align 8
  %367 = load i32, i32* @HOUR, align 4
  %368 = call i32 @DTK_M(i32 %367)
  store i32 %368, i32* %17, align 4
  br label %483

369:                                              ; preds = %325
  %370 = load i32, i32* %33, align 4
  %371 = sext i32 %370 to i64
  %372 = load %struct.tm*, %struct.tm** %13, align 8
  %373 = getelementptr inbounds %struct.tm, %struct.tm* %372, i32 0, i32 1
  store i64 %371, i64* %373, align 8
  %374 = load i32, i32* @MINUTE, align 4
  %375 = call i32 @DTK_M(i32 %374)
  store i32 %375, i32* %17, align 4
  br label %483

376:                                              ; preds = %325
  %377 = load i32, i32* %33, align 4
  %378 = sext i32 %377 to i64
  %379 = load %struct.tm*, %struct.tm** %13, align 8
  %380 = getelementptr inbounds %struct.tm, %struct.tm* %379, i32 0, i32 2
  store i64 %378, i64* %380, align 8
  %381 = load i32, i32* @SECOND, align 4
  %382 = call i32 @DTK_M(i32 %381)
  store i32 %382, i32* %17, align 4
  %383 = load i8*, i8** %32, align 8
  %384 = load i8, i8* %383, align 1
  %385 = sext i8 %384 to i32
  %386 = icmp eq i32 %385, 46
  br i1 %386, label %387, label %399

387:                                              ; preds = %376
  %388 = load i8*, i8** %32, align 8
  %389 = call double @strtod(i8* %388, i8** %32)
  store double %389, double* %34, align 8
  %390 = load i8*, i8** %32, align 8
  %391 = load i8, i8* %390, align 1
  %392 = sext i8 %391 to i32
  %393 = icmp ne i32 %392, 0
  br i1 %393, label %394, label %395

394:                                              ; preds = %387
  store i32 -1, i32* %8, align 4
  br label %996

395:                                              ; preds = %387
  %396 = load double, double* %34, align 8
  %397 = fmul double %396, 1.000000e+06
  %398 = load double*, double** %14, align 8
  store double %397, double* %398, align 8
  br label %399

399:                                              ; preds = %395, %376
  br label %483

400:                                              ; preds = %325
  %401 = call i32 @DTK_M(i32 129)
  store i32 %401, i32* %17, align 4
  %402 = load i8**, i8*** %9, align 8
  %403 = load i32, i32* %20, align 4
  %404 = sext i32 %403 to i64
  %405 = getelementptr inbounds i8*, i8** %402, i64 %404
  %406 = load i8*, i8** %405, align 8
  %407 = load i32*, i32** %27, align 8
  %408 = call i32 @DecodeTimezone(i8* %406, i32* %407)
  %409 = icmp ne i32 %408, 0
  br i1 %409, label %410, label %411

410:                                              ; preds = %400
  store i32 -1, i32* %8, align 4
  br label %996

411:                                              ; preds = %400
  br label %483

412:                                              ; preds = %325
  %413 = load i32, i32* @DTK_DATE_M, align 4
  store i32 %413, i32* %17, align 4
  %414 = load i32, i32* %33, align 4
  %415 = load %struct.tm*, %struct.tm** %13, align 8
  %416 = getelementptr inbounds %struct.tm, %struct.tm* %415, i32 0, i32 4
  %417 = load %struct.tm*, %struct.tm** %13, align 8
  %418 = getelementptr inbounds %struct.tm, %struct.tm* %417, i32 0, i32 5
  %419 = load %struct.tm*, %struct.tm** %13, align 8
  %420 = getelementptr inbounds %struct.tm, %struct.tm* %419, i32 0, i32 6
  %421 = call i32 @j2date(i32 %414, i32* %416, i32* %418, i32* %420)
  %422 = load i8*, i8** %32, align 8
  %423 = load i8, i8* %422, align 1
  %424 = sext i8 %423 to i32
  %425 = icmp eq i32 %424, 46
  br i1 %425, label %426, label %451

426:                                              ; preds = %412
  %427 = load i8*, i8** %32, align 8
  %428 = call double @strtod(i8* %427, i8** %32)
  store double %428, double* %35, align 8
  %429 = load i8*, i8** %32, align 8
  %430 = load i8, i8* %429, align 1
  %431 = sext i8 %430 to i32
  %432 = icmp ne i32 %431, 0
  br i1 %432, label %433, label %434

433:                                              ; preds = %426
  store i32 -1, i32* %8, align 4
  br label %996

434:                                              ; preds = %426
  %435 = load i32, i32* @DTK_TIME_M, align 4
  %436 = load i32, i32* %17, align 4
  %437 = or i32 %436, %435
  store i32 %437, i32* %17, align 4
  %438 = load double, double* %35, align 8
  %439 = load double, double* @USECS_PER_DAY, align 8
  %440 = fmul double %438, %439
  %441 = load %struct.tm*, %struct.tm** %13, align 8
  %442 = getelementptr inbounds %struct.tm, %struct.tm* %441, i32 0, i32 0
  %443 = load %struct.tm*, %struct.tm** %13, align 8
  %444 = getelementptr inbounds %struct.tm, %struct.tm* %443, i32 0, i32 1
  %445 = bitcast i64* %444 to i32*
  %446 = load %struct.tm*, %struct.tm** %13, align 8
  %447 = getelementptr inbounds %struct.tm, %struct.tm* %446, i32 0, i32 2
  %448 = bitcast i64* %447 to i32*
  %449 = load double*, double** %14, align 8
  %450 = call i32 @dt2time(double %440, i32* %442, i32* %445, i32* %448, double* %449)
  br label %451

451:                                              ; preds = %434, %412
  br label %483

452:                                              ; preds = %325
  %453 = load i8**, i8*** %9, align 8
  %454 = load i32, i32* %20, align 4
  %455 = sext i32 %454 to i64
  %456 = getelementptr inbounds i8*, i8** %453, i64 %455
  %457 = load i8*, i8** %456, align 8
  %458 = call i32 @strlen(i8* %457)
  %459 = load i8**, i8*** %9, align 8
  %460 = load i32, i32* %20, align 4
  %461 = sext i32 %460 to i64
  %462 = getelementptr inbounds i8*, i8** %459, i64 %461
  %463 = load i8*, i8** %462, align 8
  %464 = load i32, i32* %16, align 4
  %465 = load i32, i32* @DTK_DATE_M, align 4
  %466 = or i32 %464, %465
  %467 = load %struct.tm*, %struct.tm** %13, align 8
  %468 = load double*, double** %14, align 8
  %469 = call i32 @DecodeNumberField(i32 %458, i8* %463, i32 %466, i32* %17, %struct.tm* %467, double* %468, i32* %24)
  %470 = load i32*, i32** %10, align 8
  %471 = load i32, i32* %20, align 4
  %472 = sext i32 %471 to i64
  %473 = getelementptr inbounds i32, i32* %470, i64 %472
  store i32 %469, i32* %473, align 4
  %474 = icmp slt i32 %469, 0
  br i1 %474, label %475, label %476

475:                                              ; preds = %452
  store i32 -1, i32* %8, align 4
  br label %996

476:                                              ; preds = %452
  %477 = load i32, i32* %17, align 4
  %478 = load i32, i32* @DTK_TIME_M, align 4
  %479 = icmp ne i32 %477, %478
  br i1 %479, label %480, label %481

480:                                              ; preds = %476
  store i32 -1, i32* %8, align 4
  br label %996

481:                                              ; preds = %476
  br label %483

482:                                              ; preds = %325
  store i32 -1, i32* %8, align 4
  br label %996

483:                                              ; preds = %481, %451, %411, %399, %369, %363, %357, %356, %327
  store i32 0, i32* %19, align 4
  %484 = load i32*, i32** %12, align 8
  store i32 153, i32* %484, align 4
  br label %584

485:                                              ; preds = %299
  %486 = load i8**, i8*** %9, align 8
  %487 = load i32, i32* %20, align 4
  %488 = sext i32 %487 to i64
  %489 = getelementptr inbounds i8*, i8** %486, i64 %488
  %490 = load i8*, i8** %489, align 8
  %491 = call i32 @strlen(i8* %490)
  store i32 %491, i32* %37, align 4
  %492 = load i8**, i8*** %9, align 8
  %493 = load i32, i32* %20, align 4
  %494 = sext i32 %493 to i64
  %495 = getelementptr inbounds i8*, i8** %492, i64 %494
  %496 = load i8*, i8** %495, align 8
  %497 = call i8* @strchr(i8* %496, i8 signext 46)
  store i8* %497, i8** %36, align 8
  %498 = load i8*, i8** %36, align 8
  %499 = icmp ne i8* %498, null
  br i1 %499, label %500, label %518

500:                                              ; preds = %485
  %501 = load i32, i32* %16, align 4
  %502 = load i32, i32* @DTK_DATE_M, align 4
  %503 = and i32 %501, %502
  %504 = icmp ne i32 %503, 0
  br i1 %504, label %518, label %505

505:                                              ; preds = %500
  %506 = load i8**, i8*** %9, align 8
  %507 = load i32, i32* %20, align 4
  %508 = sext i32 %507 to i64
  %509 = getelementptr inbounds i8*, i8** %506, i64 %508
  %510 = load i8*, i8** %509, align 8
  %511 = load i32, i32* %16, align 4
  %512 = load %struct.tm*, %struct.tm** %13, align 8
  %513 = load i32, i32* %15, align 4
  %514 = call i32 @DecodeDate(i8* %510, i32 %511, i32* %17, %struct.tm* %512, i32 %513)
  %515 = icmp ne i32 %514, 0
  br i1 %515, label %516, label %517

516:                                              ; preds = %505
  store i32 -1, i32* %8, align 4
  br label %996

517:                                              ; preds = %505
  br label %583

518:                                              ; preds = %500, %485
  %519 = load i8*, i8** %36, align 8
  %520 = icmp ne i8* %519, null
  br i1 %520, label %521, label %545

521:                                              ; preds = %518
  %522 = load i32, i32* %37, align 4
  %523 = load i8*, i8** %36, align 8
  %524 = call i32 @strlen(i8* %523)
  %525 = sub nsw i32 %522, %524
  %526 = icmp sgt i32 %525, 2
  br i1 %526, label %527, label %545

527:                                              ; preds = %521
  %528 = load i32, i32* %37, align 4
  %529 = load i8**, i8*** %9, align 8
  %530 = load i32, i32* %20, align 4
  %531 = sext i32 %530 to i64
  %532 = getelementptr inbounds i8*, i8** %529, i64 %531
  %533 = load i8*, i8** %532, align 8
  %534 = load i32, i32* %16, align 4
  %535 = load %struct.tm*, %struct.tm** %13, align 8
  %536 = load double*, double** %14, align 8
  %537 = call i32 @DecodeNumberField(i32 %528, i8* %533, i32 %534, i32* %17, %struct.tm* %535, double* %536, i32* %24)
  %538 = load i32*, i32** %10, align 8
  %539 = load i32, i32* %20, align 4
  %540 = sext i32 %539 to i64
  %541 = getelementptr inbounds i32, i32* %538, i64 %540
  store i32 %537, i32* %541, align 4
  %542 = icmp slt i32 %537, 0
  br i1 %542, label %543, label %544

543:                                              ; preds = %527
  store i32 -1, i32* %8, align 4
  br label %996

544:                                              ; preds = %527
  br label %582

545:                                              ; preds = %521, %518
  %546 = load i32, i32* %37, align 4
  %547 = icmp sgt i32 %546, 4
  br i1 %547, label %548, label %566

548:                                              ; preds = %545
  %549 = load i32, i32* %37, align 4
  %550 = load i8**, i8*** %9, align 8
  %551 = load i32, i32* %20, align 4
  %552 = sext i32 %551 to i64
  %553 = getelementptr inbounds i8*, i8** %550, i64 %552
  %554 = load i8*, i8** %553, align 8
  %555 = load i32, i32* %16, align 4
  %556 = load %struct.tm*, %struct.tm** %13, align 8
  %557 = load double*, double** %14, align 8
  %558 = call i32 @DecodeNumberField(i32 %549, i8* %554, i32 %555, i32* %17, %struct.tm* %556, double* %557, i32* %24)
  %559 = load i32*, i32** %10, align 8
  %560 = load i32, i32* %20, align 4
  %561 = sext i32 %560 to i64
  %562 = getelementptr inbounds i32, i32* %559, i64 %561
  store i32 %558, i32* %562, align 4
  %563 = icmp slt i32 %558, 0
  br i1 %563, label %564, label %565

564:                                              ; preds = %548
  store i32 -1, i32* %8, align 4
  br label %996

565:                                              ; preds = %548
  br label %581

566:                                              ; preds = %545
  %567 = load i32, i32* %37, align 4
  %568 = load i8**, i8*** %9, align 8
  %569 = load i32, i32* %20, align 4
  %570 = sext i32 %569 to i64
  %571 = getelementptr inbounds i8*, i8** %568, i64 %570
  %572 = load i8*, i8** %571, align 8
  %573 = load i32, i32* %16, align 4
  %574 = load %struct.tm*, %struct.tm** %13, align 8
  %575 = load double*, double** %14, align 8
  %576 = load i32, i32* %15, align 4
  %577 = call i32 @DecodeNumber(i32 %567, i8* %572, i32 %573, i32* %17, %struct.tm* %574, double* %575, i32* %24, i32 %576)
  %578 = icmp ne i32 %577, 0
  br i1 %578, label %579, label %580

579:                                              ; preds = %566
  store i32 -1, i32* %8, align 4
  br label %996

580:                                              ; preds = %566
  br label %581

581:                                              ; preds = %580, %565
  br label %582

582:                                              ; preds = %581, %544
  br label %583

583:                                              ; preds = %582, %517
  br label %584

584:                                              ; preds = %583, %483
  br label %837

585:                                              ; preds = %58, %58
  %586 = load i32, i32* %20, align 4
  %587 = load i8**, i8*** %9, align 8
  %588 = load i32, i32* %20, align 4
  %589 = sext i32 %588 to i64
  %590 = getelementptr inbounds i8*, i8** %587, i64 %589
  %591 = load i8*, i8** %590, align 8
  %592 = call i32 @DecodeSpecial(i32 %586, i8* %591, i32* %21)
  store i32 %592, i32* %18, align 4
  %593 = load i32, i32* %18, align 4
  %594 = icmp eq i32 %593, 133
  br i1 %594, label %595, label %596

595:                                              ; preds = %585
  br label %847

596:                                              ; preds = %585
  %597 = load i32, i32* %18, align 4
  %598 = call i32 @DTK_M(i32 %597)
  store i32 %598, i32* %17, align 4
  %599 = load i32, i32* %18, align 4
  switch i32 %599, label %834 [
    i32 130, label %600
    i32 131, label %700
    i32 134, label %736
    i32 135, label %750
    i32 129, label %767
    i32 133, label %781
    i32 155, label %782
    i32 156, label %784
    i32 154, label %789
    i32 128, label %793
    i32 132, label %795
  ]

600:                                              ; preds = %596
  %601 = load i32, i32* %21, align 4
  switch i32 %601, label %696 [
    i32 147, label %602
    i32 137, label %611
    i32 141, label %640
    i32 140, label %651
    i32 136, label %680
  ]

602:                                              ; preds = %600
  %603 = load i32, i32* @DTK_DATE_M, align 4
  %604 = load i32, i32* @DTK_TIME_M, align 4
  %605 = or i32 %603, %604
  %606 = call i32 @DTK_M(i32 129)
  %607 = or i32 %605, %606
  store i32 %607, i32* %17, align 4
  %608 = load i32*, i32** %12, align 8
  store i32 153, i32* %608, align 4
  %609 = load %struct.tm*, %struct.tm** %13, align 8
  %610 = call i32 @GetCurrentDateTime(%struct.tm* %609)
  br label %699

611:                                              ; preds = %600
  %612 = load i32, i32* @DTK_DATE_M, align 4
  store i32 %612, i32* %17, align 4
  %613 = load i32*, i32** %12, align 8
  store i32 153, i32* %613, align 4
  %614 = load %struct.tm*, %struct.tm** %13, align 8
  %615 = call i32 @GetCurrentDateTime(%struct.tm* %614)
  %616 = load %struct.tm*, %struct.tm** %13, align 8
  %617 = getelementptr inbounds %struct.tm, %struct.tm* %616, i32 0, i32 4
  %618 = load i32, i32* %617, align 4
  %619 = load %struct.tm*, %struct.tm** %13, align 8
  %620 = getelementptr inbounds %struct.tm, %struct.tm* %619, i32 0, i32 5
  %621 = load i32, i32* %620, align 8
  %622 = load %struct.tm*, %struct.tm** %13, align 8
  %623 = getelementptr inbounds %struct.tm, %struct.tm* %622, i32 0, i32 6
  %624 = load i32, i32* %623, align 4
  %625 = call i32 @date2j(i32 %618, i32 %621, i32 %624)
  %626 = sub nsw i32 %625, 1
  %627 = load %struct.tm*, %struct.tm** %13, align 8
  %628 = getelementptr inbounds %struct.tm, %struct.tm* %627, i32 0, i32 4
  %629 = load %struct.tm*, %struct.tm** %13, align 8
  %630 = getelementptr inbounds %struct.tm, %struct.tm* %629, i32 0, i32 5
  %631 = load %struct.tm*, %struct.tm** %13, align 8
  %632 = getelementptr inbounds %struct.tm, %struct.tm* %631, i32 0, i32 6
  %633 = call i32 @j2date(i32 %626, i32* %628, i32* %630, i32* %632)
  %634 = load %struct.tm*, %struct.tm** %13, align 8
  %635 = getelementptr inbounds %struct.tm, %struct.tm* %634, i32 0, i32 0
  store i32 0, i32* %635, align 8
  %636 = load %struct.tm*, %struct.tm** %13, align 8
  %637 = getelementptr inbounds %struct.tm, %struct.tm* %636, i32 0, i32 1
  store i64 0, i64* %637, align 8
  %638 = load %struct.tm*, %struct.tm** %13, align 8
  %639 = getelementptr inbounds %struct.tm, %struct.tm* %638, i32 0, i32 2
  store i64 0, i64* %639, align 8
  br label %699

640:                                              ; preds = %600
  %641 = load i32, i32* @DTK_DATE_M, align 4
  store i32 %641, i32* %17, align 4
  %642 = load i32*, i32** %12, align 8
  store i32 153, i32* %642, align 4
  %643 = load %struct.tm*, %struct.tm** %13, align 8
  %644 = call i32 @GetCurrentDateTime(%struct.tm* %643)
  %645 = load %struct.tm*, %struct.tm** %13, align 8
  %646 = getelementptr inbounds %struct.tm, %struct.tm* %645, i32 0, i32 0
  store i32 0, i32* %646, align 8
  %647 = load %struct.tm*, %struct.tm** %13, align 8
  %648 = getelementptr inbounds %struct.tm, %struct.tm* %647, i32 0, i32 1
  store i64 0, i64* %648, align 8
  %649 = load %struct.tm*, %struct.tm** %13, align 8
  %650 = getelementptr inbounds %struct.tm, %struct.tm* %649, i32 0, i32 2
  store i64 0, i64* %650, align 8
  br label %699

651:                                              ; preds = %600
  %652 = load i32, i32* @DTK_DATE_M, align 4
  store i32 %652, i32* %17, align 4
  %653 = load i32*, i32** %12, align 8
  store i32 153, i32* %653, align 4
  %654 = load %struct.tm*, %struct.tm** %13, align 8
  %655 = call i32 @GetCurrentDateTime(%struct.tm* %654)
  %656 = load %struct.tm*, %struct.tm** %13, align 8
  %657 = getelementptr inbounds %struct.tm, %struct.tm* %656, i32 0, i32 4
  %658 = load i32, i32* %657, align 4
  %659 = load %struct.tm*, %struct.tm** %13, align 8
  %660 = getelementptr inbounds %struct.tm, %struct.tm* %659, i32 0, i32 5
  %661 = load i32, i32* %660, align 8
  %662 = load %struct.tm*, %struct.tm** %13, align 8
  %663 = getelementptr inbounds %struct.tm, %struct.tm* %662, i32 0, i32 6
  %664 = load i32, i32* %663, align 4
  %665 = call i32 @date2j(i32 %658, i32 %661, i32 %664)
  %666 = add nsw i32 %665, 1
  %667 = load %struct.tm*, %struct.tm** %13, align 8
  %668 = getelementptr inbounds %struct.tm, %struct.tm* %667, i32 0, i32 4
  %669 = load %struct.tm*, %struct.tm** %13, align 8
  %670 = getelementptr inbounds %struct.tm, %struct.tm* %669, i32 0, i32 5
  %671 = load %struct.tm*, %struct.tm** %13, align 8
  %672 = getelementptr inbounds %struct.tm, %struct.tm* %671, i32 0, i32 6
  %673 = call i32 @j2date(i32 %666, i32* %668, i32* %670, i32* %672)
  %674 = load %struct.tm*, %struct.tm** %13, align 8
  %675 = getelementptr inbounds %struct.tm, %struct.tm* %674, i32 0, i32 0
  store i32 0, i32* %675, align 8
  %676 = load %struct.tm*, %struct.tm** %13, align 8
  %677 = getelementptr inbounds %struct.tm, %struct.tm* %676, i32 0, i32 1
  store i64 0, i64* %677, align 8
  %678 = load %struct.tm*, %struct.tm** %13, align 8
  %679 = getelementptr inbounds %struct.tm, %struct.tm* %678, i32 0, i32 2
  store i64 0, i64* %679, align 8
  br label %699

680:                                              ; preds = %600
  %681 = load i32, i32* @DTK_TIME_M, align 4
  %682 = call i32 @DTK_M(i32 129)
  %683 = or i32 %681, %682
  store i32 %683, i32* %17, align 4
  %684 = load i32*, i32** %12, align 8
  store i32 153, i32* %684, align 4
  %685 = load %struct.tm*, %struct.tm** %13, align 8
  %686 = getelementptr inbounds %struct.tm, %struct.tm* %685, i32 0, i32 0
  store i32 0, i32* %686, align 8
  %687 = load %struct.tm*, %struct.tm** %13, align 8
  %688 = getelementptr inbounds %struct.tm, %struct.tm* %687, i32 0, i32 1
  store i64 0, i64* %688, align 8
  %689 = load %struct.tm*, %struct.tm** %13, align 8
  %690 = getelementptr inbounds %struct.tm, %struct.tm* %689, i32 0, i32 2
  store i64 0, i64* %690, align 8
  %691 = load i32*, i32** %27, align 8
  %692 = icmp ne i32* %691, null
  br i1 %692, label %693, label %695

693:                                              ; preds = %680
  %694 = load i32*, i32** %27, align 8
  store i32 0, i32* %694, align 4
  br label %695

695:                                              ; preds = %693, %680
  br label %699

696:                                              ; preds = %600
  %697 = load i32, i32* %21, align 4
  %698 = load i32*, i32** %12, align 8
  store i32 %697, i32* %698, align 4
  br label %699

699:                                              ; preds = %696, %695, %651, %640, %611, %602
  br label %835

700:                                              ; preds = %596
  %701 = load i32, i32* %16, align 4
  %702 = call i32 @DTK_M(i32 131)
  %703 = and i32 %701, %702
  %704 = icmp ne i32 %703, 0
  br i1 %704, label %705, label %732

705:                                              ; preds = %700
  %706 = load i32, i32* %23, align 4
  %707 = icmp ne i32 %706, 0
  br i1 %707, label %732, label %708

708:                                              ; preds = %705
  %709 = load i32, i32* %16, align 4
  %710 = load i32, i32* @DAY, align 4
  %711 = call i32 @DTK_M(i32 %710)
  %712 = and i32 %709, %711
  %713 = icmp ne i32 %712, 0
  br i1 %713, label %732, label %714

714:                                              ; preds = %708
  %715 = load %struct.tm*, %struct.tm** %13, align 8
  %716 = getelementptr inbounds %struct.tm, %struct.tm* %715, i32 0, i32 5
  %717 = load i32, i32* %716, align 8
  %718 = icmp sge i32 %717, 1
  br i1 %718, label %719, label %732

719:                                              ; preds = %714
  %720 = load %struct.tm*, %struct.tm** %13, align 8
  %721 = getelementptr inbounds %struct.tm, %struct.tm* %720, i32 0, i32 5
  %722 = load i32, i32* %721, align 8
  %723 = icmp sle i32 %722, 31
  br i1 %723, label %724, label %732

724:                                              ; preds = %719
  %725 = load %struct.tm*, %struct.tm** %13, align 8
  %726 = getelementptr inbounds %struct.tm, %struct.tm* %725, i32 0, i32 5
  %727 = load i32, i32* %726, align 8
  %728 = load %struct.tm*, %struct.tm** %13, align 8
  %729 = getelementptr inbounds %struct.tm, %struct.tm* %728, i32 0, i32 6
  store i32 %727, i32* %729, align 4
  %730 = load i32, i32* @DAY, align 4
  %731 = call i32 @DTK_M(i32 %730)
  store i32 %731, i32* %17, align 4
  br label %732

732:                                              ; preds = %724, %719, %714, %708, %705, %700
  store i32 1, i32* %23, align 4
  %733 = load i32, i32* %21, align 4
  %734 = load %struct.tm*, %struct.tm** %13, align 8
  %735 = getelementptr inbounds %struct.tm, %struct.tm* %734, i32 0, i32 5
  store i32 %733, i32* %735, align 8
  br label %835

736:                                              ; preds = %596
  %737 = call i32 @DTK_M(i32 135)
  %738 = load i32, i32* %17, align 4
  %739 = or i32 %738, %737
  store i32 %739, i32* %17, align 4
  %740 = load %struct.tm*, %struct.tm** %13, align 8
  %741 = getelementptr inbounds %struct.tm, %struct.tm* %740, i32 0, i32 3
  store i32 1, i32* %741, align 8
  %742 = load i32*, i32** %27, align 8
  %743 = icmp eq i32* %742, null
  br i1 %743, label %744, label %745

744:                                              ; preds = %736
  store i32 -1, i32* %8, align 4
  br label %996

745:                                              ; preds = %736
  %746 = load i32, i32* %21, align 4
  %747 = load i32*, i32** %27, align 8
  %748 = load i32, i32* %747, align 4
  %749 = sub nsw i32 %748, %746
  store i32 %749, i32* %747, align 4
  br label %835

750:                                              ; preds = %596
  %751 = call i32 @DTK_M(i32 129)
  %752 = load i32, i32* %17, align 4
  %753 = or i32 %752, %751
  store i32 %753, i32* %17, align 4
  %754 = load %struct.tm*, %struct.tm** %13, align 8
  %755 = getelementptr inbounds %struct.tm, %struct.tm* %754, i32 0, i32 3
  store i32 1, i32* %755, align 8
  %756 = load i32*, i32** %27, align 8
  %757 = icmp eq i32* %756, null
  br i1 %757, label %758, label %759

758:                                              ; preds = %750
  store i32 -1, i32* %8, align 4
  br label %996

759:                                              ; preds = %750
  %760 = load i32, i32* %21, align 4
  %761 = sub nsw i32 0, %760
  %762 = load i32*, i32** %27, align 8
  store i32 %761, i32* %762, align 4
  %763 = load i32*, i32** %10, align 8
  %764 = load i32, i32* %20, align 4
  %765 = sext i32 %764 to i64
  %766 = getelementptr inbounds i32, i32* %763, i64 %765
  store i32 139, i32* %766, align 4
  br label %835

767:                                              ; preds = %596
  %768 = load %struct.tm*, %struct.tm** %13, align 8
  %769 = getelementptr inbounds %struct.tm, %struct.tm* %768, i32 0, i32 3
  store i32 0, i32* %769, align 8
  %770 = load i32*, i32** %27, align 8
  %771 = icmp eq i32* %770, null
  br i1 %771, label %772, label %773

772:                                              ; preds = %767
  store i32 -1, i32* %8, align 4
  br label %996

773:                                              ; preds = %767
  %774 = load i32, i32* %21, align 4
  %775 = sub nsw i32 0, %774
  %776 = load i32*, i32** %27, align 8
  store i32 %775, i32* %776, align 4
  %777 = load i32*, i32** %10, align 8
  %778 = load i32, i32* %20, align 4
  %779 = sext i32 %778 to i64
  %780 = getelementptr inbounds i32, i32* %777, i64 %779
  store i32 139, i32* %780, align 4
  br label %835

781:                                              ; preds = %596
  br label %835

782:                                              ; preds = %596
  %783 = load i32, i32* %21, align 4
  store i32 %783, i32* %22, align 4
  br label %835

784:                                              ; preds = %596
  %785 = load i32, i32* %21, align 4
  %786 = load i32, i32* @BC, align 4
  %787 = icmp eq i32 %785, %786
  %788 = zext i1 %787 to i32
  store i32 %788, i32* %25, align 4
  br label %835

789:                                              ; preds = %596
  %790 = load i32, i32* %21, align 4
  %791 = load %struct.tm*, %struct.tm** %13, align 8
  %792 = getelementptr inbounds %struct.tm, %struct.tm* %791, i32 0, i32 7
  store i32 %790, i32* %792, align 8
  br label %835

793:                                              ; preds = %596
  store i32 0, i32* %17, align 4
  %794 = load i32, i32* %21, align 4
  store i32 %794, i32* %19, align 4
  br label %835

795:                                              ; preds = %596
  store i32 0, i32* %17, align 4
  %796 = load i32, i32* %16, align 4
  %797 = load i32, i32* @DTK_DATE_M, align 4
  %798 = and i32 %796, %797
  %799 = load i32, i32* @DTK_DATE_M, align 4
  %800 = icmp ne i32 %798, %799
  br i1 %800, label %801, label %802

801:                                              ; preds = %795
  store i32 -1, i32* %8, align 4
  br label %996

802:                                              ; preds = %795
  %803 = load i32, i32* %20, align 4
  %804 = load i32, i32* %11, align 4
  %805 = sub nsw i32 %804, 1
  %806 = icmp sge i32 %803, %805
  br i1 %806, label %831, label %807

807:                                              ; preds = %802
  %808 = load i32*, i32** %10, align 8
  %809 = load i32, i32* %20, align 4
  %810 = add nsw i32 %809, 1
  %811 = sext i32 %810 to i64
  %812 = getelementptr inbounds i32, i32* %808, i64 %811
  %813 = load i32, i32* %812, align 4
  %814 = icmp ne i32 %813, 146
  br i1 %814, label %815, label %832

815:                                              ; preds = %807
  %816 = load i32*, i32** %10, align 8
  %817 = load i32, i32* %20, align 4
  %818 = add nsw i32 %817, 1
  %819 = sext i32 %818 to i64
  %820 = getelementptr inbounds i32, i32* %816, i64 %819
  %821 = load i32, i32* %820, align 4
  %822 = icmp ne i32 %821, 142
  br i1 %822, label %823, label %832

823:                                              ; preds = %815
  %824 = load i32*, i32** %10, align 8
  %825 = load i32, i32* %20, align 4
  %826 = add nsw i32 %825, 1
  %827 = sext i32 %826 to i64
  %828 = getelementptr inbounds i32, i32* %824, i64 %827
  %829 = load i32, i32* %828, align 4
  %830 = icmp ne i32 %829, 153
  br i1 %830, label %831, label %832

831:                                              ; preds = %823, %802
  store i32 -1, i32* %8, align 4
  br label %996

832:                                              ; preds = %823, %815, %807
  %833 = load i32, i32* %21, align 4
  store i32 %833, i32* %19, align 4
  br label %835

834:                                              ; preds = %596
  store i32 -1, i32* %8, align 4
  br label %996

835:                                              ; preds = %832, %793, %789, %784, %782, %781, %773, %759, %745, %732, %699
  br label %837

836:                                              ; preds = %58
  store i32 -1, i32* %8, align 4
  br label %996

837:                                              ; preds = %835, %584, %298, %249, %216, %97
  %838 = load i32, i32* %17, align 4
  %839 = load i32, i32* %16, align 4
  %840 = and i32 %838, %839
  %841 = icmp ne i32 %840, 0
  br i1 %841, label %842, label %843

842:                                              ; preds = %837
  store i32 -1, i32* %8, align 4
  br label %996

843:                                              ; preds = %837
  %844 = load i32, i32* %17, align 4
  %845 = load i32, i32* %16, align 4
  %846 = or i32 %845, %844
  store i32 %846, i32* %16, align 4
  br label %847

847:                                              ; preds = %843, %595
  %848 = load i32, i32* %20, align 4
  %849 = add nsw i32 %848, 1
  store i32 %849, i32* %20, align 4
  br label %54

850:                                              ; preds = %54
  %851 = load i32, i32* %25, align 4
  %852 = icmp ne i32 %851, 0
  br i1 %852, label %853, label %868

853:                                              ; preds = %850
  %854 = load %struct.tm*, %struct.tm** %13, align 8
  %855 = getelementptr inbounds %struct.tm, %struct.tm* %854, i32 0, i32 4
  %856 = load i32, i32* %855, align 4
  %857 = icmp sgt i32 %856, 0
  br i1 %857, label %858, label %866

858:                                              ; preds = %853
  %859 = load %struct.tm*, %struct.tm** %13, align 8
  %860 = getelementptr inbounds %struct.tm, %struct.tm* %859, i32 0, i32 4
  %861 = load i32, i32* %860, align 4
  %862 = sub nsw i32 %861, 1
  %863 = sub nsw i32 0, %862
  %864 = load %struct.tm*, %struct.tm** %13, align 8
  %865 = getelementptr inbounds %struct.tm, %struct.tm* %864, i32 0, i32 4
  store i32 %863, i32* %865, align 4
  br label %867

866:                                              ; preds = %853
  store i32 -1, i32* %8, align 4
  br label %996

867:                                              ; preds = %858
  br label %894

868:                                              ; preds = %850
  %869 = load i32, i32* %24, align 4
  %870 = icmp ne i32 %869, 0
  br i1 %870, label %871, label %893

871:                                              ; preds = %868
  %872 = load %struct.tm*, %struct.tm** %13, align 8
  %873 = getelementptr inbounds %struct.tm, %struct.tm* %872, i32 0, i32 4
  %874 = load i32, i32* %873, align 4
  %875 = icmp slt i32 %874, 70
  br i1 %875, label %876, label %881

876:                                              ; preds = %871
  %877 = load %struct.tm*, %struct.tm** %13, align 8
  %878 = getelementptr inbounds %struct.tm, %struct.tm* %877, i32 0, i32 4
  %879 = load i32, i32* %878, align 4
  %880 = add nsw i32 %879, 2000
  store i32 %880, i32* %878, align 4
  br label %892

881:                                              ; preds = %871
  %882 = load %struct.tm*, %struct.tm** %13, align 8
  %883 = getelementptr inbounds %struct.tm, %struct.tm* %882, i32 0, i32 4
  %884 = load i32, i32* %883, align 4
  %885 = icmp slt i32 %884, 100
  br i1 %885, label %886, label %891

886:                                              ; preds = %881
  %887 = load %struct.tm*, %struct.tm** %13, align 8
  %888 = getelementptr inbounds %struct.tm, %struct.tm* %887, i32 0, i32 4
  %889 = load i32, i32* %888, align 4
  %890 = add nsw i32 %889, 1900
  store i32 %890, i32* %888, align 4
  br label %891

891:                                              ; preds = %886, %881
  br label %892

892:                                              ; preds = %891, %876
  br label %893

893:                                              ; preds = %892, %868
  br label %894

894:                                              ; preds = %893, %867
  %895 = load i32, i32* %22, align 4
  %896 = load i32, i32* @HR24, align 4
  %897 = icmp ne i32 %895, %896
  br i1 %897, label %898, label %904

898:                                              ; preds = %894
  %899 = load %struct.tm*, %struct.tm** %13, align 8
  %900 = getelementptr inbounds %struct.tm, %struct.tm* %899, i32 0, i32 0
  %901 = load i32, i32* %900, align 8
  %902 = icmp sgt i32 %901, 12
  br i1 %902, label %903, label %904

903:                                              ; preds = %898
  store i32 -1, i32* %8, align 4
  br label %996

904:                                              ; preds = %898, %894
  %905 = load i32, i32* %22, align 4
  %906 = load i32, i32* @AM, align 4
  %907 = icmp eq i32 %905, %906
  br i1 %907, label %908, label %916

908:                                              ; preds = %904
  %909 = load %struct.tm*, %struct.tm** %13, align 8
  %910 = getelementptr inbounds %struct.tm, %struct.tm* %909, i32 0, i32 0
  %911 = load i32, i32* %910, align 8
  %912 = icmp eq i32 %911, 12
  br i1 %912, label %913, label %916

913:                                              ; preds = %908
  %914 = load %struct.tm*, %struct.tm** %13, align 8
  %915 = getelementptr inbounds %struct.tm, %struct.tm* %914, i32 0, i32 0
  store i32 0, i32* %915, align 8
  br label %931

916:                                              ; preds = %908, %904
  %917 = load i32, i32* %22, align 4
  %918 = load i32, i32* @PM, align 4
  %919 = icmp eq i32 %917, %918
  br i1 %919, label %920, label %930

920:                                              ; preds = %916
  %921 = load %struct.tm*, %struct.tm** %13, align 8
  %922 = getelementptr inbounds %struct.tm, %struct.tm* %921, i32 0, i32 0
  %923 = load i32, i32* %922, align 8
  %924 = icmp ne i32 %923, 12
  br i1 %924, label %925, label %930

925:                                              ; preds = %920
  %926 = load %struct.tm*, %struct.tm** %13, align 8
  %927 = getelementptr inbounds %struct.tm, %struct.tm* %926, i32 0, i32 0
  %928 = load i32, i32* %927, align 8
  %929 = add nsw i32 %928, 12
  store i32 %929, i32* %927, align 8
  br label %930

930:                                              ; preds = %925, %920, %916
  br label %931

931:                                              ; preds = %930, %913
  %932 = load i32*, i32** %12, align 8
  %933 = load i32, i32* %932, align 4
  %934 = icmp eq i32 %933, 153
  br i1 %934, label %935, label %995

935:                                              ; preds = %931
  %936 = load i32, i32* %16, align 4
  %937 = load i32, i32* @DTK_DATE_M, align 4
  %938 = and i32 %936, %937
  %939 = load i32, i32* @DTK_DATE_M, align 4
  %940 = icmp ne i32 %938, %939
  br i1 %940, label %941, label %949

941:                                              ; preds = %935
  %942 = load i32, i32* %16, align 4
  %943 = load i32, i32* @DTK_TIME_M, align 4
  %944 = and i32 %942, %943
  %945 = load i32, i32* @DTK_TIME_M, align 4
  %946 = icmp eq i32 %944, %945
  %947 = zext i1 %946 to i64
  %948 = select i1 %946, i32 1, i32 -1
  store i32 %948, i32* %8, align 4
  br label %996

949:                                              ; preds = %935
  %950 = load %struct.tm*, %struct.tm** %13, align 8
  %951 = getelementptr inbounds %struct.tm, %struct.tm* %950, i32 0, i32 6
  %952 = load i32, i32* %951, align 4
  %953 = icmp slt i32 %952, 1
  br i1 %953, label %973, label %954

954:                                              ; preds = %949
  %955 = load %struct.tm*, %struct.tm** %13, align 8
  %956 = getelementptr inbounds %struct.tm, %struct.tm* %955, i32 0, i32 6
  %957 = load i32, i32* %956, align 4
  %958 = load i32**, i32*** @day_tab, align 8
  %959 = load %struct.tm*, %struct.tm** %13, align 8
  %960 = getelementptr inbounds %struct.tm, %struct.tm* %959, i32 0, i32 4
  %961 = load i32, i32* %960, align 4
  %962 = call i64 @isleap(i32 %961)
  %963 = getelementptr inbounds i32*, i32** %958, i64 %962
  %964 = load i32*, i32** %963, align 8
  %965 = load %struct.tm*, %struct.tm** %13, align 8
  %966 = getelementptr inbounds %struct.tm, %struct.tm* %965, i32 0, i32 5
  %967 = load i32, i32* %966, align 8
  %968 = sub nsw i32 %967, 1
  %969 = sext i32 %968 to i64
  %970 = getelementptr inbounds i32, i32* %964, i64 %969
  %971 = load i32, i32* %970, align 4
  %972 = icmp sgt i32 %957, %971
  br i1 %972, label %973, label %974

973:                                              ; preds = %954, %949
  store i32 -1, i32* %8, align 4
  br label %996

974:                                              ; preds = %954
  %975 = load i32, i32* %16, align 4
  %976 = load i32, i32* @DTK_DATE_M, align 4
  %977 = and i32 %975, %976
  %978 = load i32, i32* @DTK_DATE_M, align 4
  %979 = icmp eq i32 %977, %978
  br i1 %979, label %980, label %994

980:                                              ; preds = %974
  %981 = load i32*, i32** %27, align 8
  %982 = icmp ne i32* %981, null
  br i1 %982, label %983, label %994

983:                                              ; preds = %980
  %984 = load i32, i32* %16, align 4
  %985 = call i32 @DTK_M(i32 129)
  %986 = and i32 %984, %985
  %987 = icmp ne i32 %986, 0
  br i1 %987, label %994, label %988

988:                                              ; preds = %983
  %989 = load i32, i32* %16, align 4
  %990 = call i32 @DTK_M(i32 134)
  %991 = and i32 %989, %990
  %992 = icmp ne i32 %991, 0
  br i1 %992, label %993, label %994

993:                                              ; preds = %988
  store i32 -1, i32* %8, align 4
  br label %996

994:                                              ; preds = %988, %983, %980, %974
  br label %995

995:                                              ; preds = %994, %931
  store i32 0, i32* %8, align 4
  br label %996

996:                                              ; preds = %995, %993, %973, %941, %903, %866, %842, %836, %834, %831, %801, %772, %758, %744, %579, %564, %543, %516, %482, %480, %475, %433, %410, %394, %323, %316, %262, %253, %248, %227, %213, %194, %180, %157, %151, %142, %134, %115, %96, %82, %70
  %997 = load i32, i32* %8, align 4
  ret i32 %997
}

declare dso_local i32 @strtoint(i8*, i8**, i32) #1

declare dso_local i32 @j2date(i32, i32*, i32*, i32*) #1

declare dso_local i32 @DecodeTimezone(i8*, i32*) #1

declare dso_local i32 @DTK_M(i32) #1

declare dso_local i32 @isdigit(i8 zeroext) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @DecodeNumberField(i32, i8*, i32, i32*, %struct.tm*, double*, i32*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @DecodePosixTimezone(i8*, i32*) #1

declare dso_local i32 @DecodeDate(i8*, i32, i32*, %struct.tm*, i32) #1

declare dso_local i32 @DecodeTime(i8*, i32*, %struct.tm*, double*) #1

declare dso_local i32 @isalpha(i8 zeroext) #1

declare dso_local double @strtod(i8*, i8**) #1

declare dso_local i32 @dt2time(double, i32*, i32*, i32*, double*) #1

declare dso_local i32 @DecodeNumber(i32, i8*, i32, i32*, %struct.tm*, double*, i32*, i32) #1

declare dso_local i32 @DecodeSpecial(i32, i8*, i32*) #1

declare dso_local i32 @GetCurrentDateTime(%struct.tm*) #1

declare dso_local i32 @date2j(i32, i32, i32) #1

declare dso_local i64 @isleap(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
