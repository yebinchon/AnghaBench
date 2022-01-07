; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/quartz/extr_filesource.c_GetClassMediaFile.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/quartz/extr_filesource.c_GetClassMediaFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@S_OK = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@GetClassMediaFile.wszMediaType = internal constant [11 x i8] c"Media Type\00", align 1
@.str = private unnamed_addr constant [18 x i8] c"(%p, %s, %p, %p)\0A\00", align 1
@GUID_NULL = common dso_local global i32 0, align 4
@HKEY_CLASSES_ROOT = common dso_local global i32* null, align 8
@KEY_READ = common dso_local global i32 0, align 4
@CHARS_IN_GUID = common dso_local global i32 0, align 4
@GetClassMediaFile.wszExtensions = internal constant [11 x i8] c"Extensions\00", align 1
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@TRUE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c"\09%s\0A\00", align 1
@source_filter_name = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [23 x i8] c"Media class not found\0A\00", align 1
@E_FAIL = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [21 x i8] c"Found file's class:\0A\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"\09major = %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"\09subtype = %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"\09source filter = %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @GetClassMediaFile(i32* %0, i8* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i64, align 8
  %25 = alloca i32, align 4
  %26 = alloca i64, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca [14 x i8], align 1
  %32 = alloca i64, align 8
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  store i32* null, i32** %11, align 8
  %35 = load i64, i64* @S_OK, align 8
  store i64 %35, i64* %13, align 8
  %36 = load i64, i64* @FALSE, align 8
  store i64 %36, i64* %14, align 8
  %37 = load i32*, i32** %6, align 8
  %38 = load i8*, i8** %7, align 8
  %39 = call i32 @debugstr_w(i8* %38)
  %40 = load i32*, i32** %8, align 8
  %41 = load i32*, i32** %9, align 8
  %42 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32* %37, i32 %39, i32* %40, i32* %41)
  %43 = load i32*, i32** %8, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %45, label %48

45:                                               ; preds = %5
  %46 = load i32, i32* @GUID_NULL, align 4
  %47 = load i32*, i32** %8, align 8
  store i32 %46, i32* %47, align 4
  br label %48

48:                                               ; preds = %45, %5
  %49 = load i32*, i32** %9, align 8
  %50 = icmp ne i32* %49, null
  br i1 %50, label %51, label %54

51:                                               ; preds = %48
  %52 = load i32, i32* @GUID_NULL, align 4
  %53 = load i32*, i32** %9, align 8
  store i32 %52, i32* %53, align 4
  br label %54

54:                                               ; preds = %51, %48
  %55 = load i32*, i32** %10, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %57, label %60

57:                                               ; preds = %54
  %58 = load i32, i32* @GUID_NULL, align 4
  %59 = load i32*, i32** %10, align 8
  store i32 %58, i32* %59, align 4
  br label %60

60:                                               ; preds = %57, %54
  %61 = load i32*, i32** @HKEY_CLASSES_ROOT, align 8
  %62 = load i32, i32* @KEY_READ, align 4
  %63 = call i64 @RegOpenKeyExW(i32* %61, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @GetClassMediaFile.wszMediaType, i64 0, i64 0), i32 0, i32 %62, i32** %11)
  store i64 %63, i64* %12, align 8
  %64 = load i64, i64* %12, align 8
  %65 = call i64 @HRESULT_FROM_WIN32(i64 %64)
  store i64 %65, i64* %13, align 8
  %66 = load i64, i64* %13, align 8
  %67 = call i64 @SUCCEEDED(i64 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %259

69:                                               ; preds = %60
  store i32 0, i32* %15, align 4
  br label %70

70:                                               ; preds = %255, %69
  %71 = load i64, i64* %14, align 8
  %72 = icmp ne i64 %71, 0
  %73 = xor i1 %72, true
  br i1 %73, label %74, label %258

74:                                               ; preds = %70
  %75 = load i32, i32* @CHARS_IN_GUID, align 4
  %76 = zext i32 %75 to i64
  %77 = call i8* @llvm.stacksave()
  store i8* %77, i8** %17, align 8
  %78 = alloca i8, i64 %76, align 16
  store i64 %76, i64* %18, align 8
  %79 = udiv i64 %76, 1
  %80 = trunc i64 %79 to i32
  store i32 %80, i32* %19, align 4
  %81 = load i32*, i32** %11, align 8
  %82 = load i32, i32* %15, align 4
  %83 = call i64 @RegEnumKeyExW(i32* %81, i32 %82, i8* %78, i32* %19, i32* null, i32* null, i32* null, i32* null)
  %84 = load i64, i64* @ERROR_SUCCESS, align 8
  %85 = icmp ne i64 %83, %84
  br i1 %85, label %86, label %87

86:                                               ; preds = %74
  store i32 2, i32* %20, align 4
  br label %251

87:                                               ; preds = %74
  %88 = load i32*, i32** %11, align 8
  %89 = load i32, i32* @KEY_READ, align 4
  %90 = call i64 @RegOpenKeyExW(i32* %88, i8* %78, i32 0, i32 %89, i32** %16)
  %91 = load i64, i64* @ERROR_SUCCESS, align 8
  %92 = icmp ne i64 %90, %91
  br i1 %92, label %93, label %94

93:                                               ; preds = %87
  store i32 2, i32* %20, align 4
  br label %251

94:                                               ; preds = %87
  %95 = call i32 @debugstr_w(i8* %78)
  %96 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %95)
  %97 = call i64 @strcmpW(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @GetClassMediaFile.wszExtensions, i64 0, i64 0), i8* %78)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %111, label %99

99:                                               ; preds = %94
  %100 = load i32*, i32** %16, align 8
  %101 = load i8*, i8** %7, align 8
  %102 = load i32*, i32** %8, align 8
  %103 = load i32*, i32** %9, align 8
  %104 = load i32*, i32** %10, align 8
  %105 = call i64 @process_extensions(i32* %100, i8* %101, i32* %102, i32* %103, i32* %104)
  %106 = load i64, i64* @S_OK, align 8
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %108, label %110

108:                                              ; preds = %99
  %109 = load i64, i64* @TRUE, align 8
  store i64 %109, i64* %14, align 8
  br label %110

110:                                              ; preds = %108, %99
  br label %248

111:                                              ; preds = %94
  %112 = load i32*, i32** %6, align 8
  %113 = icmp ne i32* %112, null
  br i1 %113, label %114, label %247

114:                                              ; preds = %111
  store i32 0, i32* %21, align 4
  br label %115

115:                                              ; preds = %243, %114
  %116 = load i64, i64* %14, align 8
  %117 = icmp ne i64 %116, 0
  %118 = xor i1 %117, true
  br i1 %118, label %119, label %246

119:                                              ; preds = %115
  %120 = load i32, i32* @CHARS_IN_GUID, align 4
  %121 = zext i32 %120 to i64
  %122 = call i8* @llvm.stacksave()
  store i8* %122, i8** %23, align 8
  %123 = alloca i8, i64 %121, align 16
  store i64 %121, i64* %24, align 8
  %124 = udiv i64 %121, 1
  %125 = trunc i64 %124 to i32
  store i32 %125, i32* %25, align 4
  %126 = load i32, i32* @CHARS_IN_GUID, align 4
  %127 = zext i32 %126 to i64
  %128 = alloca i8, i64 %127, align 16
  store i64 %127, i64* %26, align 8
  %129 = trunc i64 %127 to i32
  store i32 %129, i32* %27, align 4
  %130 = load i32*, i32** %16, align 8
  %131 = load i32, i32* %21, align 4
  %132 = call i64 @RegEnumKeyExW(i32* %130, i32 %131, i8* %123, i32* %25, i32* null, i32* null, i32* null, i32* null)
  %133 = load i64, i64* @ERROR_SUCCESS, align 8
  %134 = icmp ne i64 %132, %133
  br i1 %134, label %135, label %136

135:                                              ; preds = %119
  store i32 5, i32* %20, align 4
  br label %239

136:                                              ; preds = %119
  %137 = load i32*, i32** %16, align 8
  %138 = load i32, i32* @KEY_READ, align 4
  %139 = call i64 @RegOpenKeyExW(i32* %137, i8* %123, i32 0, i32 %138, i32** %22)
  %140 = load i64, i64* @ERROR_SUCCESS, align 8
  %141 = icmp ne i64 %139, %140
  br i1 %141, label %142, label %143

142:                                              ; preds = %136
  store i32 5, i32* %20, align 4
  br label %239

143:                                              ; preds = %136
  %144 = call i32 @debugstr_w(i8* %123)
  %145 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %144)
  %146 = load i32*, i32** %22, align 8
  %147 = call i64 @RegQueryInfoKeyW(i32* %146, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* %28, i32* null, i32* null)
  %148 = load i64, i64* @ERROR_SUCCESS, align 8
  %149 = icmp ne i64 %147, %148
  br i1 %149, label %150, label %151

150:                                              ; preds = %143
  store i32 5, i32* %20, align 4
  br label %239

151:                                              ; preds = %143
  store i32 0, i32* %29, align 4
  br label %152

152:                                              ; preds = %233, %151
  %153 = load i64, i64* %14, align 8
  %154 = icmp ne i64 %153, 0
  %155 = xor i1 %154, true
  br i1 %155, label %156, label %236

156:                                              ; preds = %152
  %157 = call i32 (...) @GetProcessHeap()
  %158 = load i32, i32* %28, align 4
  %159 = call i64 @HeapAlloc(i32 %157, i32 0, i32 %158)
  store i64 %159, i64* %32, align 8
  store i32 14, i32* %33, align 4
  %160 = load i32, i32* %28, align 4
  store i32 %160, i32* %34, align 4
  %161 = load i32*, i32** %22, align 8
  %162 = load i32, i32* %29, align 4
  %163 = getelementptr inbounds [14 x i8], [14 x i8]* %31, i64 0, i64 0
  %164 = load i64, i64* %32, align 8
  %165 = trunc i64 %164 to i32
  %166 = call i64 @RegEnumValueW(i32* %161, i32 %162, i8* %163, i32* %33, i32* null, i32* %30, i32 %165, i32* %34)
  %167 = load i64, i64* @ERROR_SUCCESS, align 8
  %168 = icmp ne i64 %166, %167
  br i1 %168, label %169, label %173

169:                                              ; preds = %156
  %170 = call i32 (...) @GetProcessHeap()
  %171 = load i64, i64* %32, align 8
  %172 = call i32 @HeapFree(i32 %170, i32 0, i64 %171)
  br label %236

173:                                              ; preds = %156
  %174 = getelementptr inbounds [14 x i8], [14 x i8]* %31, i64 0, i64 0
  %175 = load i8*, i8** @source_filter_name, align 8
  %176 = call i64 @strcmpW(i8* %174, i8* %175)
  %177 = icmp eq i64 %176, 0
  br i1 %177, label %178, label %182

178:                                              ; preds = %173
  %179 = call i32 (...) @GetProcessHeap()
  %180 = load i64, i64* %32, align 8
  %181 = call i32 @HeapFree(i32 %179, i32 0, i64 %180)
  br label %233

182:                                              ; preds = %173
  %183 = load i64, i64* %32, align 8
  %184 = load i32*, i32** %6, align 8
  %185 = call i64 @process_pattern_string(i64 %183, i32* %184)
  %186 = load i64, i64* @S_OK, align 8
  %187 = icmp eq i64 %185, %186
  br i1 %187, label %188, label %228

188:                                              ; preds = %182
  %189 = call i32 (...) @GetProcessHeap()
  %190 = load i64, i64* %32, align 8
  %191 = call i32 @HeapFree(i32 %189, i32 0, i64 %190)
  %192 = load i32*, i32** %8, align 8
  %193 = icmp ne i32* %192, null
  br i1 %193, label %194, label %200

194:                                              ; preds = %188
  %195 = load i32*, i32** %8, align 8
  %196 = call i32 @CLSIDFromString(i8* %78, i32* %195)
  %197 = call i64 @FAILED(i32 %196)
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %200

199:                                              ; preds = %194
  br label %236

200:                                              ; preds = %194, %188
  %201 = load i32*, i32** %9, align 8
  %202 = icmp ne i32* %201, null
  br i1 %202, label %203, label %209

203:                                              ; preds = %200
  %204 = load i32*, i32** %9, align 8
  %205 = call i32 @CLSIDFromString(i8* %123, i32* %204)
  %206 = call i64 @FAILED(i32 %205)
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %208, label %209

208:                                              ; preds = %203
  br label %236

209:                                              ; preds = %203, %200
  %210 = load i32*, i32** %10, align 8
  %211 = icmp ne i32* %210, null
  br i1 %211, label %212, label %226

212:                                              ; preds = %209
  %213 = load i32*, i32** %22, align 8
  %214 = load i8*, i8** @source_filter_name, align 8
  %215 = ptrtoint i8* %128 to i32
  %216 = call i64 @RegQueryValueExW(i32* %213, i8* %214, i32* null, i32* null, i32 %215, i32* %27)
  %217 = icmp ne i64 %216, 0
  br i1 %217, label %218, label %219

218:                                              ; preds = %212
  br label %236

219:                                              ; preds = %212
  %220 = load i32*, i32** %10, align 8
  %221 = call i32 @CLSIDFromString(i8* %128, i32* %220)
  %222 = call i64 @FAILED(i32 %221)
  %223 = icmp ne i64 %222, 0
  br i1 %223, label %224, label %225

224:                                              ; preds = %219
  br label %236

225:                                              ; preds = %219
  br label %226

226:                                              ; preds = %225, %209
  %227 = load i64, i64* @TRUE, align 8
  store i64 %227, i64* %14, align 8
  br label %232

228:                                              ; preds = %182
  %229 = call i32 (...) @GetProcessHeap()
  %230 = load i64, i64* %32, align 8
  %231 = call i32 @HeapFree(i32 %229, i32 0, i64 %230)
  br label %232

232:                                              ; preds = %228, %226
  br label %233

233:                                              ; preds = %232, %178
  %234 = load i32, i32* %29, align 4
  %235 = add nsw i32 %234, 1
  store i32 %235, i32* %29, align 4
  br label %152

236:                                              ; preds = %224, %218, %208, %199, %169, %152
  %237 = load i32*, i32** %22, align 8
  %238 = call i32 @CloseHandle(i32* %237)
  store i32 0, i32* %20, align 4
  br label %239

239:                                              ; preds = %236, %150, %142, %135
  %240 = load i8*, i8** %23, align 8
  call void @llvm.stackrestore(i8* %240)
  %241 = load i32, i32* %20, align 4
  switch i32 %241, label %300 [
    i32 0, label %242
    i32 5, label %246
  ]

242:                                              ; preds = %239
  br label %243

243:                                              ; preds = %242
  %244 = load i32, i32* %21, align 4
  %245 = add nsw i32 %244, 1
  store i32 %245, i32* %21, align 4
  br label %115

246:                                              ; preds = %239, %115
  br label %247

247:                                              ; preds = %246, %111
  br label %248

248:                                              ; preds = %247, %110
  %249 = load i32*, i32** %16, align 8
  %250 = call i32 @CloseHandle(i32* %249)
  store i32 0, i32* %20, align 4
  br label %251

251:                                              ; preds = %248, %93, %86
  %252 = load i8*, i8** %17, align 8
  call void @llvm.stackrestore(i8* %252)
  %253 = load i32, i32* %20, align 4
  switch i32 %253, label %300 [
    i32 0, label %254
    i32 2, label %258
  ]

254:                                              ; preds = %251
  br label %255

255:                                              ; preds = %254
  %256 = load i32, i32* %15, align 4
  %257 = add nsw i32 %256, 1
  store i32 %257, i32* %15, align 4
  br label %70

258:                                              ; preds = %251, %70
  br label %259

259:                                              ; preds = %258, %60
  %260 = load i32*, i32** %11, align 8
  %261 = call i32 @CloseHandle(i32* %260)
  %262 = load i64, i64* %13, align 8
  %263 = call i64 @SUCCEEDED(i64 %262)
  %264 = icmp ne i64 %263, 0
  br i1 %264, label %265, label %271

265:                                              ; preds = %259
  %266 = load i64, i64* %14, align 8
  %267 = icmp ne i64 %266, 0
  br i1 %267, label %271, label %268

268:                                              ; preds = %265
  %269 = call i32 @ERR(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %270 = load i64, i64* @E_FAIL, align 8
  store i64 %270, i64* %13, align 8
  br label %298

271:                                              ; preds = %265, %259
  %272 = load i64, i64* %14, align 8
  %273 = icmp ne i64 %272, 0
  br i1 %273, label %274, label %297

274:                                              ; preds = %271
  %275 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  %276 = load i32*, i32** %8, align 8
  %277 = icmp ne i32* %276, null
  br i1 %277, label %278, label %282

278:                                              ; preds = %274
  %279 = load i32*, i32** %8, align 8
  %280 = call i32 @qzdebugstr_guid(i32* %279)
  %281 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i32 %280)
  br label %282

282:                                              ; preds = %278, %274
  %283 = load i32*, i32** %9, align 8
  %284 = icmp ne i32* %283, null
  br i1 %284, label %285, label %289

285:                                              ; preds = %282
  %286 = load i32*, i32** %9, align 8
  %287 = call i32 @qzdebugstr_guid(i32* %286)
  %288 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i32 %287)
  br label %289

289:                                              ; preds = %285, %282
  %290 = load i32*, i32** %10, align 8
  %291 = icmp ne i32* %290, null
  br i1 %291, label %292, label %296

292:                                              ; preds = %289
  %293 = load i32*, i32** %10, align 8
  %294 = call i32 @qzdebugstr_guid(i32* %293)
  %295 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0), i32 %294)
  br label %296

296:                                              ; preds = %292, %289
  br label %297

297:                                              ; preds = %296, %271
  br label %298

298:                                              ; preds = %297, %268
  %299 = load i64, i64* %13, align 8
  ret i64 %299

300:                                              ; preds = %251, %239
  unreachable
}

declare dso_local i32 @TRACE(i8*, ...) #1

declare dso_local i32 @debugstr_w(i8*) #1

declare dso_local i64 @RegOpenKeyExW(i32*, i8*, i32, i32, i32**) #1

declare dso_local i64 @HRESULT_FROM_WIN32(i64) #1

declare dso_local i64 @SUCCEEDED(i64) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i64 @RegEnumKeyExW(i32*, i32, i8*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i64 @strcmpW(i8*, i8*) #1

declare dso_local i64 @process_extensions(i32*, i8*, i32*, i32*, i32*) #1

declare dso_local i64 @RegQueryInfoKeyW(i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i64 @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i64 @RegEnumValueW(i32*, i32, i8*, i32*, i32*, i32*, i32, i32*) #1

declare dso_local i32 @HeapFree(i32, i32, i64) #1

declare dso_local i64 @process_pattern_string(i64, i32*) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @CLSIDFromString(i8*, i32*) #1

declare dso_local i64 @RegQueryValueExW(i32*, i8*, i32*, i32*, i32, i32*) #1

declare dso_local i32 @CloseHandle(i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @ERR(i8*) #1

declare dso_local i32 @qzdebugstr_guid(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
