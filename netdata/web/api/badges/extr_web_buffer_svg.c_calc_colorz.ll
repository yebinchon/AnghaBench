; ModuleID = '/home/carl/AnghaBench/netdata/web/api/badges/extr_web_buffer_svg.c_calc_colorz.c'
source_filename = "/home/carl/AnghaBench/netdata/web/api/badges/extr_web_buffer_svg.c_calc_colorz.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NAN = common dso_local global i32 0, align 4
@COLOR_COMPARE_GREATER = common dso_local global i64 0, align 8
@COLOR_COMPARE_NOTEQUAL = common dso_local global i64 0, align 8
@COLOR_COMPARE_EQUAL = common dso_local global i64 0, align 8
@COLOR_COMPARE_GREATEREQUAL = common dso_local global i64 0, align 8
@COLOR_COMPARE_LESSEQUAL = common dso_local global i64 0, align 8
@COLOR_COMPARE_LESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"null\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i64, i32)* @calc_colorz to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @calc_colorz(i8* %0, i8* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca [257 x i8], align 16
  %10 = alloca [257 x i8], align 16
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = call i64 @isnan(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %4
  %24 = load i32, i32* %8, align 4
  %25 = call i64 @isinf(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %23, %4
  %28 = load i32, i32* @NAN, align 4
  store i32 %28, i32* %8, align 4
  br label %29

29:                                               ; preds = %27, %23
  %30 = bitcast [257 x i8]* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %30, i8 0, i64 257, i1 false)
  %31 = bitcast [257 x i8]* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %31, i8 0, i64 257, i1 false)
  %32 = load i64, i64* @COLOR_COMPARE_GREATER, align 8
  store i64 %32, i64* %11, align 8
  %33 = load i8*, i8** %5, align 8
  store i8* %33, i8** %12, align 8
  br label %34

34:                                               ; preds = %311, %29
  %35 = load i8*, i8** %12, align 8
  %36 = load i8, i8* %35, align 1
  %37 = icmp ne i8 %36, 0
  br i1 %37, label %38, label %312

38:                                               ; preds = %34
  %39 = getelementptr inbounds [257 x i8], [257 x i8]* %9, i64 0, i64 0
  store i8* %39, i8** %13, align 8
  store i8* null, i8** %14, align 8
  store i64 0, i64* %15, align 8
  store i64 0, i64* %16, align 8
  %40 = load i8*, i8** %12, align 8
  store i8* %40, i8** %17, align 8
  br label %41

41:                                               ; preds = %149, %38
  %42 = load i8*, i8** %17, align 8
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %41
  %47 = load i8*, i8** %17, align 8
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp ne i32 %49, 124
  br label %51

51:                                               ; preds = %46, %41
  %52 = phi i1 [ false, %41 ], [ %50, %46 ]
  br i1 %52, label %53, label %152

53:                                               ; preds = %51
  %54 = load i8*, i8** %17, align 8
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  switch i32 %56, label %123 [
    i32 33, label %57
    i32 61, label %69
    i32 58, label %69
    i32 125, label %72
    i32 41, label %72
    i32 62, label %72
    i32 123, label %86
    i32 40, label %86
    i32 60, label %86
  ]

57:                                               ; preds = %53
  %58 = load i8*, i8** %17, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 1
  %60 = load i8, i8* %59, align 1
  %61 = sext i8 %60 to i32
  %62 = icmp eq i32 %61, 61
  br i1 %62, label %63, label %66

63:                                               ; preds = %57
  %64 = load i8*, i8** %17, align 8
  %65 = getelementptr inbounds i8, i8* %64, i32 1
  store i8* %65, i8** %17, align 8
  br label %66

66:                                               ; preds = %63, %57
  %67 = load i64, i64* @COLOR_COMPARE_NOTEQUAL, align 8
  store i64 %67, i64* %11, align 8
  %68 = getelementptr inbounds [257 x i8], [257 x i8]* %10, i64 0, i64 0
  store i8* %68, i8** %14, align 8
  br label %149

69:                                               ; preds = %53, %53
  %70 = load i64, i64* @COLOR_COMPARE_EQUAL, align 8
  store i64 %70, i64* %11, align 8
  %71 = getelementptr inbounds [257 x i8], [257 x i8]* %10, i64 0, i64 0
  store i8* %71, i8** %14, align 8
  br label %149

72:                                               ; preds = %53, %53, %53
  %73 = load i8*, i8** %17, align 8
  %74 = getelementptr inbounds i8, i8* %73, i64 1
  %75 = load i8, i8* %74, align 1
  %76 = sext i8 %75 to i32
  %77 = icmp eq i32 %76, 61
  br i1 %77, label %78, label %82

78:                                               ; preds = %72
  %79 = load i64, i64* @COLOR_COMPARE_GREATEREQUAL, align 8
  store i64 %79, i64* %11, align 8
  %80 = load i8*, i8** %17, align 8
  %81 = getelementptr inbounds i8, i8* %80, i32 1
  store i8* %81, i8** %17, align 8
  br label %84

82:                                               ; preds = %72
  %83 = load i64, i64* @COLOR_COMPARE_GREATER, align 8
  store i64 %83, i64* %11, align 8
  br label %84

84:                                               ; preds = %82, %78
  %85 = getelementptr inbounds [257 x i8], [257 x i8]* %10, i64 0, i64 0
  store i8* %85, i8** %14, align 8
  br label %149

86:                                               ; preds = %53, %53, %53
  %87 = load i8*, i8** %17, align 8
  %88 = getelementptr inbounds i8, i8* %87, i64 1
  %89 = load i8, i8* %88, align 1
  %90 = sext i8 %89 to i32
  %91 = icmp eq i32 %90, 61
  br i1 %91, label %92, label %96

92:                                               ; preds = %86
  %93 = load i64, i64* @COLOR_COMPARE_LESSEQUAL, align 8
  store i64 %93, i64* %11, align 8
  %94 = load i8*, i8** %17, align 8
  %95 = getelementptr inbounds i8, i8* %94, i32 1
  store i8* %95, i8** %17, align 8
  br label %121

96:                                               ; preds = %86
  %97 = load i8*, i8** %17, align 8
  %98 = getelementptr inbounds i8, i8* %97, i64 1
  %99 = load i8, i8* %98, align 1
  %100 = sext i8 %99 to i32
  %101 = icmp eq i32 %100, 62
  br i1 %101, label %114, label %102

102:                                              ; preds = %96
  %103 = load i8*, i8** %17, align 8
  %104 = getelementptr inbounds i8, i8* %103, i64 1
  %105 = load i8, i8* %104, align 1
  %106 = sext i8 %105 to i32
  %107 = icmp eq i32 %106, 41
  br i1 %107, label %114, label %108

108:                                              ; preds = %102
  %109 = load i8*, i8** %17, align 8
  %110 = getelementptr inbounds i8, i8* %109, i64 1
  %111 = load i8, i8* %110, align 1
  %112 = sext i8 %111 to i32
  %113 = icmp eq i32 %112, 125
  br i1 %113, label %114, label %118

114:                                              ; preds = %108, %102, %96
  %115 = load i64, i64* @COLOR_COMPARE_NOTEQUAL, align 8
  store i64 %115, i64* %11, align 8
  %116 = load i8*, i8** %17, align 8
  %117 = getelementptr inbounds i8, i8* %116, i32 1
  store i8* %117, i8** %17, align 8
  br label %120

118:                                              ; preds = %108
  %119 = load i64, i64* @COLOR_COMPARE_LESS, align 8
  store i64 %119, i64* %11, align 8
  br label %120

120:                                              ; preds = %118, %114
  br label %121

121:                                              ; preds = %120, %92
  %122 = getelementptr inbounds [257 x i8], [257 x i8]* %10, i64 0, i64 0
  store i8* %122, i8** %14, align 8
  br label %149

123:                                              ; preds = %53
  %124 = load i8*, i8** %14, align 8
  %125 = icmp ne i8* %124, null
  br i1 %125, label %126, label %137

126:                                              ; preds = %123
  %127 = load i64, i64* %16, align 8
  %128 = icmp ult i64 %127, 256
  br i1 %128, label %129, label %136

129:                                              ; preds = %126
  %130 = load i64, i64* %16, align 8
  %131 = add i64 %130, 1
  store i64 %131, i64* %16, align 8
  %132 = load i8*, i8** %17, align 8
  %133 = load i8, i8* %132, align 1
  %134 = load i8*, i8** %14, align 8
  %135 = getelementptr inbounds i8, i8* %134, i32 1
  store i8* %135, i8** %14, align 8
  store i8 %133, i8* %134, align 1
  br label %136

136:                                              ; preds = %129, %126
  br label %148

137:                                              ; preds = %123
  %138 = load i64, i64* %15, align 8
  %139 = icmp ult i64 %138, 256
  br i1 %139, label %140, label %147

140:                                              ; preds = %137
  %141 = load i64, i64* %15, align 8
  %142 = add i64 %141, 1
  store i64 %142, i64* %15, align 8
  %143 = load i8*, i8** %17, align 8
  %144 = load i8, i8* %143, align 1
  %145 = load i8*, i8** %13, align 8
  %146 = getelementptr inbounds i8, i8* %145, i32 1
  store i8* %146, i8** %13, align 8
  store i8 %144, i8* %145, align 1
  br label %147

147:                                              ; preds = %140, %137
  br label %148

148:                                              ; preds = %147, %136
  br label %149

149:                                              ; preds = %148, %121, %84, %69, %66
  %150 = load i8*, i8** %17, align 8
  %151 = getelementptr inbounds i8, i8* %150, i32 1
  store i8* %151, i8** %17, align 8
  br label %41

152:                                              ; preds = %51
  %153 = load i8*, i8** %17, align 8
  %154 = load i8, i8* %153, align 1
  %155 = sext i8 %154 to i32
  %156 = icmp eq i32 %155, 124
  br i1 %156, label %157, label %160

157:                                              ; preds = %152
  %158 = load i8*, i8** %17, align 8
  %159 = getelementptr inbounds i8, i8* %158, i32 1
  store i8* %159, i8** %17, align 8
  br label %160

160:                                              ; preds = %157, %152
  %161 = load i8*, i8** %17, align 8
  store i8* %161, i8** %12, align 8
  %162 = load i8*, i8** %13, align 8
  store i8 0, i8* %162, align 1
  %163 = load i8*, i8** %14, align 8
  %164 = icmp ne i8* %163, null
  br i1 %164, label %165, label %310

165:                                              ; preds = %160
  %166 = load i8*, i8** %14, align 8
  store i8 0, i8* %166, align 1
  %167 = getelementptr inbounds [257 x i8], [257 x i8]* %10, i64 0, i64 0
  %168 = load i8, i8* %167, align 16
  %169 = icmp ne i8 %168, 0
  br i1 %169, label %170, label %174

170:                                              ; preds = %165
  %171 = getelementptr inbounds [257 x i8], [257 x i8]* %10, i64 0, i64 0
  %172 = call i32 @strcmp(i8* %171, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %176, label %174

174:                                              ; preds = %170, %165
  %175 = load i32, i32* @NAN, align 4
  store i32 %175, i32* %18, align 4
  br label %189

176:                                              ; preds = %170
  %177 = getelementptr inbounds [257 x i8], [257 x i8]* %10, i64 0, i64 0
  %178 = call i32 @str2l(i8* %177)
  store i32 %178, i32* %18, align 4
  %179 = load i32, i32* %18, align 4
  %180 = call i64 @isnan(i32 %179)
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %186, label %182

182:                                              ; preds = %176
  %183 = load i32, i32* %18, align 4
  %184 = call i64 @isinf(i32 %183)
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %188

186:                                              ; preds = %182, %176
  %187 = load i32, i32* @NAN, align 4
  store i32 %187, i32* %18, align 4
  br label %188

188:                                              ; preds = %186, %182
  br label %189

189:                                              ; preds = %188, %174
  %190 = load i32, i32* %8, align 4
  %191 = call i64 @isnan(i32 %190)
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %197, label %193

193:                                              ; preds = %189
  %194 = load i32, i32* %18, align 4
  %195 = call i64 @isnan(i32 %194)
  %196 = icmp ne i64 %195, 0
  br label %197

197:                                              ; preds = %193, %189
  %198 = phi i1 [ true, %189 ], [ %196, %193 ]
  %199 = zext i1 %198 to i32
  %200 = call i64 @unlikely(i32 %199)
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %212

202:                                              ; preds = %197
  %203 = load i32, i32* %8, align 4
  %204 = call i64 @isnan(i32 %203)
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %206, label %211

206:                                              ; preds = %202
  %207 = load i32, i32* %18, align 4
  %208 = call i64 @isnan(i32 %207)
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %210, label %211

210:                                              ; preds = %206
  br label %312

211:                                              ; preds = %206, %202
  br label %309

212:                                              ; preds = %197
  %213 = load i64, i64* %11, align 8
  %214 = load i64, i64* @COLOR_COMPARE_LESS, align 8
  %215 = icmp eq i64 %213, %214
  br i1 %215, label %216, label %221

216:                                              ; preds = %212
  %217 = load i32, i32* %8, align 4
  %218 = load i32, i32* %18, align 4
  %219 = call i64 @isless(i32 %217, i32 %218)
  %220 = icmp ne i64 %219, 0
  br label %221

221:                                              ; preds = %216, %212
  %222 = phi i1 [ false, %212 ], [ %220, %216 ]
  %223 = zext i1 %222 to i32
  %224 = call i64 @unlikely(i32 %223)
  %225 = icmp ne i64 %224, 0
  br i1 %225, label %226, label %227

226:                                              ; preds = %221
  br label %312

227:                                              ; preds = %221
  %228 = load i64, i64* %11, align 8
  %229 = load i64, i64* @COLOR_COMPARE_LESSEQUAL, align 8
  %230 = icmp eq i64 %228, %229
  br i1 %230, label %231, label %236

231:                                              ; preds = %227
  %232 = load i32, i32* %8, align 4
  %233 = load i32, i32* %18, align 4
  %234 = call i64 @islessequal(i32 %232, i32 %233)
  %235 = icmp ne i64 %234, 0
  br label %236

236:                                              ; preds = %231, %227
  %237 = phi i1 [ false, %227 ], [ %235, %231 ]
  %238 = zext i1 %237 to i32
  %239 = call i64 @unlikely(i32 %238)
  %240 = icmp ne i64 %239, 0
  br i1 %240, label %241, label %242

241:                                              ; preds = %236
  br label %312

242:                                              ; preds = %236
  %243 = load i64, i64* %11, align 8
  %244 = load i64, i64* @COLOR_COMPARE_GREATER, align 8
  %245 = icmp eq i64 %243, %244
  br i1 %245, label %246, label %251

246:                                              ; preds = %242
  %247 = load i32, i32* %8, align 4
  %248 = load i32, i32* %18, align 4
  %249 = call i64 @isgreater(i32 %247, i32 %248)
  %250 = icmp ne i64 %249, 0
  br label %251

251:                                              ; preds = %246, %242
  %252 = phi i1 [ false, %242 ], [ %250, %246 ]
  %253 = zext i1 %252 to i32
  %254 = call i64 @unlikely(i32 %253)
  %255 = icmp ne i64 %254, 0
  br i1 %255, label %256, label %257

256:                                              ; preds = %251
  br label %312

257:                                              ; preds = %251
  %258 = load i64, i64* %11, align 8
  %259 = load i64, i64* @COLOR_COMPARE_GREATEREQUAL, align 8
  %260 = icmp eq i64 %258, %259
  br i1 %260, label %261, label %266

261:                                              ; preds = %257
  %262 = load i32, i32* %8, align 4
  %263 = load i32, i32* %18, align 4
  %264 = call i64 @isgreaterequal(i32 %262, i32 %263)
  %265 = icmp ne i64 %264, 0
  br label %266

266:                                              ; preds = %261, %257
  %267 = phi i1 [ false, %257 ], [ %265, %261 ]
  %268 = zext i1 %267 to i32
  %269 = call i64 @unlikely(i32 %268)
  %270 = icmp ne i64 %269, 0
  br i1 %270, label %271, label %272

271:                                              ; preds = %266
  br label %312

272:                                              ; preds = %266
  %273 = load i64, i64* %11, align 8
  %274 = load i64, i64* @COLOR_COMPARE_EQUAL, align 8
  %275 = icmp eq i64 %273, %274
  br i1 %275, label %276, label %282

276:                                              ; preds = %272
  %277 = load i32, i32* %8, align 4
  %278 = load i32, i32* %18, align 4
  %279 = call i64 @islessgreater(i32 %277, i32 %278)
  %280 = icmp ne i64 %279, 0
  %281 = xor i1 %280, true
  br label %282

282:                                              ; preds = %276, %272
  %283 = phi i1 [ false, %272 ], [ %281, %276 ]
  %284 = zext i1 %283 to i32
  %285 = call i64 @unlikely(i32 %284)
  %286 = icmp ne i64 %285, 0
  br i1 %286, label %287, label %288

287:                                              ; preds = %282
  br label %312

288:                                              ; preds = %282
  %289 = load i64, i64* %11, align 8
  %290 = load i64, i64* @COLOR_COMPARE_NOTEQUAL, align 8
  %291 = icmp eq i64 %289, %290
  br i1 %291, label %292, label %297

292:                                              ; preds = %288
  %293 = load i32, i32* %8, align 4
  %294 = load i32, i32* %18, align 4
  %295 = call i64 @islessgreater(i32 %293, i32 %294)
  %296 = icmp ne i64 %295, 0
  br label %297

297:                                              ; preds = %292, %288
  %298 = phi i1 [ false, %288 ], [ %296, %292 ]
  %299 = zext i1 %298 to i32
  %300 = call i64 @unlikely(i32 %299)
  %301 = icmp ne i64 %300, 0
  br i1 %301, label %302, label %303

302:                                              ; preds = %297
  br label %312

303:                                              ; preds = %297
  br label %304

304:                                              ; preds = %303
  br label %305

305:                                              ; preds = %304
  br label %306

306:                                              ; preds = %305
  br label %307

307:                                              ; preds = %306
  br label %308

308:                                              ; preds = %307
  br label %309

309:                                              ; preds = %308, %211
  br label %311

310:                                              ; preds = %160
  br label %312

311:                                              ; preds = %309
  br label %34

312:                                              ; preds = %310, %302, %287, %271, %256, %241, %226, %210, %34
  %313 = getelementptr inbounds [257 x i8], [257 x i8]* %9, i64 0, i64 0
  %314 = load i8, i8* %313, align 16
  %315 = icmp ne i8 %314, 0
  br i1 %315, label %316, label %318

316:                                              ; preds = %312
  %317 = getelementptr inbounds [257 x i8], [257 x i8]* %9, i64 0, i64 0
  store i8* %317, i8** %19, align 8
  br label %320

318:                                              ; preds = %312
  %319 = load i8*, i8** %5, align 8
  store i8* %319, i8** %19, align 8
  br label %320

320:                                              ; preds = %318, %316
  %321 = load i8*, i8** %6, align 8
  %322 = load i8*, i8** %19, align 8
  %323 = load i64, i64* %7, align 8
  %324 = call i32 @strncpyz(i8* %321, i8* %322, i64 %323)
  ret void
}

declare dso_local i64 @isnan(i32) #1

declare dso_local i64 @isinf(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @str2l(i8*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @isless(i32, i32) #1

declare dso_local i64 @islessequal(i32, i32) #1

declare dso_local i64 @isgreater(i32, i32) #1

declare dso_local i64 @isgreaterequal(i32, i32) #1

declare dso_local i64 @islessgreater(i32, i32) #1

declare dso_local i32 @strncpyz(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
