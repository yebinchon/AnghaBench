; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/network/net/extr_cmdUser.c_ParseLogonHours.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/network/net/extr_cmdUser.c_ParseLogonHours.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@ERROR_SUCCESS = common dso_local global i32 0, align 4
@HEAP_ZERO_MEMORY = common dso_local global i32 0, align 4
@UNITS_PER_WEEK = common dso_local global i32 0, align 4
@ERROR_OUTOFMEMORY = common dso_local global i32 0, align 4
@UNICODE_NULL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i32] [i32 97, i32 108, i32 108, i32 0], align 4
@FORMAT_MESSAGE_ALLOCATE_BUFFER = common dso_local global i32 0, align 4
@FORMAT_MESSAGE_FROM_HMODULE = common dso_local global i32 0, align 4
@FORMAT_MESSAGE_IGNORE_INSERTS = common dso_local global i32 0, align 4
@hModuleNetMsg = common dso_local global i32 0, align 4
@LANG_USER_DEFAULT = common dso_local global i32 0, align 4
@HOURS_PER_DAY = common dso_local global i32 0, align 4
@DAYS_PER_WEEK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32**, i32*)* @ParseLogonHours to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ParseLogonHours(i32* %0, i32** %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_3__, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca [32 x i32], align 16
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  %24 = alloca [6 x i32], align 16
  %25 = alloca [7 x i32*], align 16
  %26 = alloca [7 x i32*], align 16
  %27 = alloca [4 x i32*], align 16
  store i32* %0, i32** %5, align 8
  store i32** %1, i32*** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* null, i32** %9, align 8
  %28 = load i32, i32* @ERROR_SUCCESS, align 4
  store i32 %28, i32* %10, align 4
  %29 = bitcast [7 x i32*]* %25 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %29, i8 0, i64 56, i1 false)
  %30 = bitcast [7 x i32*]* %26 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %30, i8 0, i64 56, i1 false)
  %31 = bitcast [4 x i32*]* %27 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %31, i8 0, i64 32, i1 false)
  %32 = call i32 @GetTimeZoneInformation(%struct.TYPE_3__* %8)
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = sdiv i32 %34, 60
  %36 = sext i32 %35 to i64
  store i64 %36, i64* %22, align 8
  %37 = call i32 (...) @GetProcessHeap()
  %38 = load i32, i32* @HEAP_ZERO_MEMORY, align 4
  %39 = load i32, i32* @UNITS_PER_WEEK, align 4
  %40 = sdiv i32 %39, 8
  %41 = call i32* @HeapAlloc(i32 %37, i32 %38, i32 %40)
  store i32* %41, i32** %9, align 8
  %42 = load i32*, i32** %9, align 8
  %43 = icmp eq i32* %42, null
  br i1 %43, label %44, label %46

44:                                               ; preds = %3
  %45 = load i32, i32* @ERROR_OUTOFMEMORY, align 4
  store i32 %45, i32* %4, align 4
  br label %371

46:                                               ; preds = %3
  %47 = load i32*, i32** %5, align 8
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @UNICODE_NULL, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  br label %319

52:                                               ; preds = %46
  %53 = load i32*, i32** %5, align 8
  %54 = call i64 @wcsicmp(i32* %53, i8* bitcast ([4 x i32]* @.str to i8*))
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %52
  %57 = load i32*, i32** %9, align 8
  %58 = load i32, i32* @UNITS_PER_WEEK, align 4
  %59 = sdiv i32 %58, 8
  %60 = call i32 @FillMemory(i32* %57, i32 %59, i32 255)
  br label %319

61:                                               ; preds = %52
  store i32 0, i32* %18, align 4
  br label %62

62:                                               ; preds = %94, %61
  %63 = load i32, i32* %18, align 4
  %64 = icmp slt i32 %63, 7
  br i1 %64, label %65, label %97

65:                                               ; preds = %62
  %66 = load i32, i32* @FORMAT_MESSAGE_ALLOCATE_BUFFER, align 4
  %67 = load i32, i32* @FORMAT_MESSAGE_FROM_HMODULE, align 4
  %68 = or i32 %66, %67
  %69 = load i32, i32* @FORMAT_MESSAGE_IGNORE_INSERTS, align 4
  %70 = or i32 %68, %69
  %71 = load i32, i32* @hModuleNetMsg, align 4
  %72 = load i32, i32* %18, align 4
  %73 = add nsw i32 4314, %72
  %74 = load i32, i32* @LANG_USER_DEFAULT, align 4
  %75 = load i32, i32* %18, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds [7 x i32*], [7 x i32*]* %25, i64 0, i64 %76
  %78 = bitcast i32** %77 to i32*
  %79 = call i32 @FormatMessageW(i32 %70, i32 %71, i32 %73, i32 %74, i32* %78, i32 0, i32* null)
  %80 = load i32, i32* @FORMAT_MESSAGE_ALLOCATE_BUFFER, align 4
  %81 = load i32, i32* @FORMAT_MESSAGE_FROM_HMODULE, align 4
  %82 = or i32 %80, %81
  %83 = load i32, i32* @FORMAT_MESSAGE_IGNORE_INSERTS, align 4
  %84 = or i32 %82, %83
  %85 = load i32, i32* @hModuleNetMsg, align 4
  %86 = load i32, i32* %18, align 4
  %87 = add nsw i32 4307, %86
  %88 = load i32, i32* @LANG_USER_DEFAULT, align 4
  %89 = load i32, i32* %18, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds [7 x i32*], [7 x i32*]* %26, i64 0, i64 %90
  %92 = bitcast i32** %91 to i32*
  %93 = call i32 @FormatMessageW(i32 %84, i32 %85, i32 %87, i32 %88, i32* %92, i32 0, i32* null)
  br label %94

94:                                               ; preds = %65
  %95 = load i32, i32* %18, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %18, align 4
  br label %62

97:                                               ; preds = %62
  store i32 0, i32* %18, align 4
  br label %98

98:                                               ; preds = %116, %97
  %99 = load i32, i32* %18, align 4
  %100 = icmp slt i32 %99, 4
  br i1 %100, label %101, label %119

101:                                              ; preds = %98
  %102 = load i32, i32* @FORMAT_MESSAGE_ALLOCATE_BUFFER, align 4
  %103 = load i32, i32* @FORMAT_MESSAGE_FROM_HMODULE, align 4
  %104 = or i32 %102, %103
  %105 = load i32, i32* @FORMAT_MESSAGE_IGNORE_INSERTS, align 4
  %106 = or i32 %104, %105
  %107 = load i32, i32* @hModuleNetMsg, align 4
  %108 = load i32, i32* %18, align 4
  %109 = add nsw i32 4322, %108
  %110 = load i32, i32* @LANG_USER_DEFAULT, align 4
  %111 = load i32, i32* %18, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds [4 x i32*], [4 x i32*]* %27, i64 0, i64 %112
  %114 = bitcast i32** %113 to i32*
  %115 = call i32 @FormatMessageW(i32 %106, i32 %107, i32 %109, i32 %110, i32* %114, i32 0, i32* null)
  br label %116

116:                                              ; preds = %101
  %117 = load i32, i32* %18, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %18, align 4
  br label %98

119:                                              ; preds = %98
  %120 = call i32 @ZeroMemory(i32* %23, i32 4)
  %121 = getelementptr inbounds [6 x i32], [6 x i32]* %24, i64 0, i64 0
  %122 = call i32 @ZeroMemory(i32* %121, i32 24)
  %123 = getelementptr inbounds [32 x i32], [32 x i32]* %11, i64 0, i64 0
  %124 = call i32 @ZeroMemory(i32* %123, i32 128)
  %125 = load i32*, i32** %5, align 8
  store i32* %125, i32** %12, align 8
  %126 = getelementptr inbounds [32 x i32], [32 x i32]* %11, i64 0, i64 0
  store i32* %126, i32** %13, align 8
  %127 = load i32, i32* @UNICODE_NULL, align 4
  store i32 %127, i32* %14, align 4
  %128 = load i32, i32* @UNICODE_NULL, align 4
  store i32 %128, i32* %15, align 4
  br label %129

129:                                              ; preds = %315, %119
  %130 = load i32*, i32** %12, align 8
  %131 = load i32, i32* %130, align 4
  %132 = icmp ne i32 %131, 45
  br i1 %132, label %133, label %152

133:                                              ; preds = %129
  %134 = load i32*, i32** %12, align 8
  %135 = load i32, i32* %134, align 4
  %136 = icmp ne i32 %135, 44
  br i1 %136, label %137, label %152

137:                                              ; preds = %133
  %138 = load i32*, i32** %12, align 8
  %139 = load i32, i32* %138, align 4
  %140 = icmp ne i32 %139, 59
  br i1 %140, label %141, label %152

141:                                              ; preds = %137
  %142 = load i32*, i32** %12, align 8
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* @UNICODE_NULL, align 4
  %145 = icmp ne i32 %143, %144
  br i1 %145, label %146, label %152

146:                                              ; preds = %141
  %147 = load i32*, i32** %12, align 8
  %148 = load i32, i32* %147, align 4
  %149 = load i32*, i32** %13, align 8
  store i32 %148, i32* %149, align 4
  %150 = load i32*, i32** %13, align 8
  %151 = getelementptr inbounds i32, i32* %150, i32 1
  store i32* %151, i32** %13, align 8
  br label %315

152:                                              ; preds = %141, %137, %133, %129
  %153 = load i32, i32* %15, align 4
  store i32 %153, i32* %14, align 4
  %154 = load i32*, i32** %12, align 8
  %155 = load i32, i32* %154, align 4
  store i32 %155, i32* %15, align 4
  %156 = load i32, i32* %14, align 4
  %157 = icmp ne i32 %156, 45
  br i1 %157, label %158, label %186

158:                                              ; preds = %152
  %159 = getelementptr inbounds [32 x i32], [32 x i32]* %11, i64 0, i64 0
  %160 = load i32, i32* %159, align 16
  %161 = call i64 @iswdigit(i32 %160)
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %175

163:                                              ; preds = %158
  %164 = getelementptr inbounds [32 x i32], [32 x i32]* %11, i64 0, i64 0
  %165 = getelementptr inbounds [4 x i32*], [4 x i32*]* %27, i64 0, i64 0
  %166 = call i32 @ParseHour(i32* %164, i32** %165, i64* %20)
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %169, label %168

168:                                              ; preds = %163
  store i32 3769, i32* %10, align 4
  br label %318

169:                                              ; preds = %163
  %170 = getelementptr inbounds [6 x i32], [6 x i32]* %24, i64 0, i64 0
  %171 = load i64, i64* %20, align 8
  %172 = load i64, i64* %22, align 8
  %173 = call i32 @LocalToGmtHour(i64 %171, i64 %172)
  %174 = call i32 @SetBitValue(i32* %170, i32 %173)
  br label %185

175:                                              ; preds = %158
  %176 = getelementptr inbounds [32 x i32], [32 x i32]* %11, i64 0, i64 0
  %177 = getelementptr inbounds [7 x i32*], [7 x i32*]* %25, i64 0, i64 0
  %178 = getelementptr inbounds [7 x i32*], [7 x i32*]* %26, i64 0, i64 0
  %179 = call i32 @ParseDay(i32* %176, i32** %177, i32** %178, i32* %16)
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %182, label %181

181:                                              ; preds = %175
  store i32 3768, i32* %10, align 4
  br label %318

182:                                              ; preds = %175
  %183 = load i32, i32* %16, align 4
  %184 = call i32 @SetBitValue(i32* %23, i32 %183)
  br label %185

185:                                              ; preds = %182, %169
  br label %255

186:                                              ; preds = %152
  %187 = getelementptr inbounds [32 x i32], [32 x i32]* %11, i64 0, i64 0
  %188 = load i32, i32* %187, align 16
  %189 = call i64 @iswdigit(i32 %188)
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %224

191:                                              ; preds = %186
  %192 = getelementptr inbounds [32 x i32], [32 x i32]* %11, i64 0, i64 0
  %193 = getelementptr inbounds [4 x i32*], [4 x i32*]* %27, i64 0, i64 0
  %194 = call i32 @ParseHour(i32* %192, i32** %193, i64* %21)
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %197, label %196

196:                                              ; preds = %191
  store i32 3769, i32* %10, align 4
  br label %318

197:                                              ; preds = %191
  %198 = load i64, i64* %21, align 8
  %199 = load i64, i64* %20, align 8
  %200 = icmp sle i64 %198, %199
  br i1 %200, label %201, label %206

201:                                              ; preds = %197
  %202 = load i32, i32* @HOURS_PER_DAY, align 4
  %203 = sext i32 %202 to i64
  %204 = load i64, i64* %21, align 8
  %205 = add nsw i64 %204, %203
  store i64 %205, i64* %21, align 8
  br label %206

206:                                              ; preds = %201, %197
  %207 = load i64, i64* %20, align 8
  %208 = load i64, i64* %22, align 8
  %209 = call i32 @LocalToGmtHour(i64 %207, i64 %208)
  store i32 %209, i32* %18, align 4
  br label %210

210:                                              ; preds = %220, %206
  %211 = load i32, i32* %18, align 4
  %212 = load i64, i64* %21, align 8
  %213 = load i64, i64* %22, align 8
  %214 = call i32 @LocalToGmtHour(i64 %212, i64 %213)
  %215 = icmp slt i32 %211, %214
  br i1 %215, label %216, label %223

216:                                              ; preds = %210
  %217 = getelementptr inbounds [6 x i32], [6 x i32]* %24, i64 0, i64 0
  %218 = load i32, i32* %18, align 4
  %219 = call i32 @SetBitValue(i32* %217, i32 %218)
  br label %220

220:                                              ; preds = %216
  %221 = load i32, i32* %18, align 4
  %222 = add nsw i32 %221, 1
  store i32 %222, i32* %18, align 4
  br label %210

223:                                              ; preds = %210
  br label %254

224:                                              ; preds = %186
  %225 = getelementptr inbounds [32 x i32], [32 x i32]* %11, i64 0, i64 0
  %226 = getelementptr inbounds [7 x i32*], [7 x i32*]* %25, i64 0, i64 0
  %227 = getelementptr inbounds [7 x i32*], [7 x i32*]* %26, i64 0, i64 0
  %228 = call i32 @ParseDay(i32* %225, i32** %226, i32** %227, i32* %17)
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %231, label %230

230:                                              ; preds = %224
  store i32 3768, i32* %10, align 4
  br label %318

231:                                              ; preds = %224
  %232 = load i32, i32* %17, align 4
  %233 = load i32, i32* %16, align 4
  %234 = icmp sle i32 %232, %233
  br i1 %234, label %235, label %239

235:                                              ; preds = %231
  %236 = load i32, i32* @DAYS_PER_WEEK, align 4
  %237 = load i32, i32* %17, align 4
  %238 = add nsw i32 %237, %236
  store i32 %238, i32* %17, align 4
  br label %239

239:                                              ; preds = %235, %231
  %240 = load i32, i32* %16, align 4
  store i32 %240, i32* %18, align 4
  br label %241

241:                                              ; preds = %250, %239
  %242 = load i32, i32* %18, align 4
  %243 = load i32, i32* %17, align 4
  %244 = icmp sle i32 %242, %243
  br i1 %244, label %245, label %253

245:                                              ; preds = %241
  %246 = load i32, i32* %18, align 4
  %247 = load i32, i32* @DAYS_PER_WEEK, align 4
  %248 = srem i32 %246, %247
  %249 = call i32 @SetBitValue(i32* %23, i32 %248)
  br label %250

250:                                              ; preds = %245
  %251 = load i32, i32* %18, align 4
  %252 = add nsw i32 %251, 1
  store i32 %252, i32* %18, align 4
  br label %241

253:                                              ; preds = %241
  br label %254

254:                                              ; preds = %253, %223
  br label %255

255:                                              ; preds = %254, %185
  %256 = load i32*, i32** %12, align 8
  %257 = load i32, i32* %256, align 4
  %258 = icmp eq i32 %257, 59
  br i1 %258, label %264, label %259

259:                                              ; preds = %255
  %260 = load i32*, i32** %12, align 8
  %261 = load i32, i32* %260, align 4
  %262 = load i32, i32* @UNICODE_NULL, align 4
  %263 = icmp eq i32 %261, %262
  br i1 %263, label %264, label %305

264:                                              ; preds = %259, %255
  store i32 0, i32* %18, align 4
  br label %265

265:                                              ; preds = %298, %264
  %266 = load i32, i32* %18, align 4
  %267 = load i32, i32* @DAYS_PER_WEEK, align 4
  %268 = icmp slt i32 %266, %267
  br i1 %268, label %269, label %301

269:                                              ; preds = %265
  %270 = load i32, i32* %18, align 4
  %271 = call i64 @GetBitValue(i32* %23, i32 %270)
  %272 = icmp ne i64 %271, 0
  br i1 %272, label %273, label %297

273:                                              ; preds = %269
  store i32 0, i32* %19, align 4
  br label %274

274:                                              ; preds = %293, %273
  %275 = load i32, i32* %19, align 4
  %276 = icmp slt i32 %275, 48
  br i1 %276, label %277, label %296

277:                                              ; preds = %274
  %278 = getelementptr inbounds [6 x i32], [6 x i32]* %24, i64 0, i64 0
  %279 = load i32, i32* %19, align 4
  %280 = call i64 @GetBitValue(i32* %278, i32 %279)
  %281 = icmp ne i64 %280, 0
  br i1 %281, label %282, label %292

282:                                              ; preds = %277
  %283 = load i32*, i32** %9, align 8
  %284 = load i32, i32* %18, align 4
  %285 = load i32, i32* @HOURS_PER_DAY, align 4
  %286 = mul nsw i32 %284, %285
  %287 = load i32, i32* %19, align 4
  %288 = add nsw i32 %286, %287
  %289 = load i32, i32* @UNITS_PER_WEEK, align 4
  %290 = srem i32 %288, %289
  %291 = call i32 @SetBitValue(i32* %283, i32 %290)
  br label %292

292:                                              ; preds = %282, %277
  br label %293

293:                                              ; preds = %292
  %294 = load i32, i32* %19, align 4
  %295 = add nsw i32 %294, 1
  store i32 %295, i32* %19, align 4
  br label %274

296:                                              ; preds = %274
  br label %297

297:                                              ; preds = %296, %269
  br label %298

298:                                              ; preds = %297
  %299 = load i32, i32* %18, align 4
  %300 = add nsw i32 %299, 1
  store i32 %300, i32* %18, align 4
  br label %265

301:                                              ; preds = %265
  %302 = call i32 @ZeroMemory(i32* %23, i32 4)
  %303 = getelementptr inbounds [6 x i32], [6 x i32]* %24, i64 0, i64 0
  %304 = call i32 @ZeroMemory(i32* %303, i32 24)
  br label %305

305:                                              ; preds = %301, %259
  %306 = load i32*, i32** %12, align 8
  %307 = load i32, i32* %306, align 4
  %308 = load i32, i32* @UNICODE_NULL, align 4
  %309 = icmp eq i32 %307, %308
  br i1 %309, label %310, label %311

310:                                              ; preds = %305
  br label %318

311:                                              ; preds = %305
  %312 = getelementptr inbounds [32 x i32], [32 x i32]* %11, i64 0, i64 0
  %313 = call i32 @ZeroMemory(i32* %312, i32 128)
  %314 = getelementptr inbounds [32 x i32], [32 x i32]* %11, i64 0, i64 0
  store i32* %314, i32** %13, align 8
  br label %315

315:                                              ; preds = %311, %146
  %316 = load i32*, i32** %12, align 8
  %317 = getelementptr inbounds i32, i32* %316, i32 1
  store i32* %317, i32** %12, align 8
  br label %129

318:                                              ; preds = %310, %230, %196, %181, %168
  br label %319

319:                                              ; preds = %318, %56, %51
  store i32 0, i32* %18, align 4
  br label %320

320:                                              ; preds = %334, %319
  %321 = load i32, i32* %18, align 4
  %322 = icmp slt i32 %321, 7
  br i1 %322, label %323, label %337

323:                                              ; preds = %320
  %324 = load i32, i32* %18, align 4
  %325 = sext i32 %324 to i64
  %326 = getelementptr inbounds [7 x i32*], [7 x i32*]* %25, i64 0, i64 %325
  %327 = load i32*, i32** %326, align 8
  %328 = call i32 @LocalFree(i32* %327)
  %329 = load i32, i32* %18, align 4
  %330 = sext i32 %329 to i64
  %331 = getelementptr inbounds [7 x i32*], [7 x i32*]* %26, i64 0, i64 %330
  %332 = load i32*, i32** %331, align 8
  %333 = call i32 @LocalFree(i32* %332)
  br label %334

334:                                              ; preds = %323
  %335 = load i32, i32* %18, align 4
  %336 = add nsw i32 %335, 1
  store i32 %336, i32* %18, align 4
  br label %320

337:                                              ; preds = %320
  store i32 0, i32* %18, align 4
  br label %338

338:                                              ; preds = %347, %337
  %339 = load i32, i32* %18, align 4
  %340 = icmp slt i32 %339, 4
  br i1 %340, label %341, label %350

341:                                              ; preds = %338
  %342 = load i32, i32* %18, align 4
  %343 = sext i32 %342 to i64
  %344 = getelementptr inbounds [4 x i32*], [4 x i32*]* %27, i64 0, i64 %343
  %345 = load i32*, i32** %344, align 8
  %346 = call i32 @LocalFree(i32* %345)
  br label %347

347:                                              ; preds = %341
  %348 = load i32, i32* %18, align 4
  %349 = add nsw i32 %348, 1
  store i32 %349, i32* %18, align 4
  br label %338

350:                                              ; preds = %338
  %351 = load i32, i32* %10, align 4
  %352 = load i32, i32* @ERROR_SUCCESS, align 4
  %353 = icmp eq i32 %351, %352
  br i1 %353, label %354, label %359

354:                                              ; preds = %350
  %355 = load i32*, i32** %9, align 8
  %356 = load i32**, i32*** %6, align 8
  store i32* %355, i32** %356, align 8
  %357 = load i32, i32* @UNITS_PER_WEEK, align 4
  %358 = load i32*, i32** %7, align 8
  store i32 %357, i32* %358, align 4
  br label %369

359:                                              ; preds = %350
  %360 = load i32*, i32** %9, align 8
  %361 = icmp ne i32* %360, null
  br i1 %361, label %362, label %366

362:                                              ; preds = %359
  %363 = call i32 (...) @GetProcessHeap()
  %364 = load i32*, i32** %9, align 8
  %365 = call i32 @HeapFree(i32 %363, i32 0, i32* %364)
  br label %366

366:                                              ; preds = %362, %359
  %367 = load i32**, i32*** %6, align 8
  store i32* null, i32** %367, align 8
  %368 = load i32*, i32** %7, align 8
  store i32 0, i32* %368, align 4
  br label %369

369:                                              ; preds = %366, %354
  %370 = load i32, i32* %10, align 4
  store i32 %370, i32* %4, align 4
  br label %371

371:                                              ; preds = %369, %44
  %372 = load i32, i32* %4, align 4
  ret i32 %372
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @GetTimeZoneInformation(%struct.TYPE_3__*) #2

declare dso_local i32* @HeapAlloc(i32, i32, i32) #2

declare dso_local i32 @GetProcessHeap(...) #2

declare dso_local i64 @wcsicmp(i32*, i8*) #2

declare dso_local i32 @FillMemory(i32*, i32, i32) #2

declare dso_local i32 @FormatMessageW(i32, i32, i32, i32, i32*, i32, i32*) #2

declare dso_local i32 @ZeroMemory(i32*, i32) #2

declare dso_local i64 @iswdigit(i32) #2

declare dso_local i32 @ParseHour(i32*, i32**, i64*) #2

declare dso_local i32 @SetBitValue(i32*, i32) #2

declare dso_local i32 @LocalToGmtHour(i64, i64) #2

declare dso_local i32 @ParseDay(i32*, i32**, i32**, i32*) #2

declare dso_local i64 @GetBitValue(i32*, i32) #2

declare dso_local i32 @LocalFree(i32*) #2

declare dso_local i32 @HeapFree(i32, i32, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
