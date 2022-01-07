; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/regedit/extr_find.c_RegFindWalk.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/regedit/extr_find.c_RegFindWalk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_PATH = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@KEY_ALL_ACCESS = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@s_cbName = common dso_local global i32 0, align 4
@s_szName = common dso_local global i32 0, align 4
@ERROR_NO_MORE_ITEMS = common dso_local global i64 0, align 8
@compare = common dso_local global i32 0, align 4
@s_dwFlags = common dso_local global i32 0, align 4
@RSF_LOOKATKEYS = common dso_local global i32 0, align 4
@s_szFindWhat = common dso_local global i32 0, align 4
@s_backslash = common dso_local global i32***************** null, align 8
@HKEY_CLASSES_ROOT = common dso_local global i64 0, align 8
@HKEY_CURRENT_USER = common dso_local global i64 0, align 8
@s_empty = common dso_local global i32***************** null, align 8
@HKEY_LOCAL_MACHINE = common dso_local global i64 0, align 8
@HKEY_USERS = common dso_local global i64 0, align 8
@HKEY_CURRENT_CONFIG = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @RegFindWalk(i64* %0, i64* %1, i64* %2, i32****************** %3, i32****************** %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32******************, align 8
  %11 = alloca i32******************, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32*****************, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32******************, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32*****************, align 8
  store i64* %0, i64** %7, align 8
  store i64* %1, i64** %8, align 8
  store i64* %2, i64** %9, align 8
  store i32****************** %3, i32******************* %10, align 8
  store i32****************** %4, i32******************* %11, align 8
  %25 = load i32, i32* @MAX_PATH, align 4
  %26 = zext i32 %25 to i64
  %27 = call i8* @llvm.stacksave()
  store i8* %27, i8** %17, align 8
  %28 = alloca i64, i64 %26, align 16
  store i64 %26, i64* %18, align 8
  %29 = load i32, i32* @MAX_PATH, align 4
  %30 = zext i32 %29 to i64
  %31 = alloca i64, i64 %30, align 16
  store i64 %30, i64* %19, align 8
  store i32****************** null, i32******************* %22, align 8
  %32 = load i64*, i64** %7, align 8
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %15, align 8
  %34 = load i64, i64* %15, align 8
  %35 = load i64*, i64** %8, align 8
  %36 = load i64*, i64** %9, align 8
  %37 = load i32******************, i32******************* %10, align 8
  %38 = load i32******************, i32******************* %11, align 8
  %39 = call i64 @RegFindRecurse(i64 %34, i64* %35, i64* %36, i32****************** %37, i32****************** %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %5
  %42 = load i64, i64* @TRUE, align 8
  store i64 %42, i64* %6, align 8
  store i32 1, i32* %23, align 4
  br label %465

43:                                               ; preds = %5
  %44 = load i64*, i64** %8, align 8
  %45 = call i32 @wcslen(i64* %44)
  %46 = load i32, i32* @MAX_PATH, align 4
  %47 = icmp sge i32 %45, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %43
  %49 = load i64, i64* @FALSE, align 8
  store i64 %49, i64* %6, align 8
  store i32 1, i32* %23, align 4
  br label %465

50:                                               ; preds = %43
  %51 = load i64*, i64** %8, align 8
  %52 = call i32 @wcscpy(i64* %31, i64* %51)
  br label %53

53:                                               ; preds = %328, %50
  %54 = getelementptr inbounds i64, i64* %31, i64 0
  %55 = load i64, i64* %54, align 16
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %329

57:                                               ; preds = %53
  %58 = call i64 (...) @DoEvents()
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %57
  %61 = load i64, i64* @FALSE, align 8
  store i64 %61, i64* %6, align 8
  store i32 1, i32* %23, align 4
  br label %465

62:                                               ; preds = %57
  %63 = call i32************************* @wcsrchr(i64* %31, i32 92)
  %64 = bitcast i32************************* %63 to i32*****************
  store i32***************** %64, i32****************** %20, align 8
  %65 = load i32*****************, i32****************** %20, align 8
  %66 = icmp eq i32***************** %65, null
  br i1 %66, label %67, label %71

67:                                               ; preds = %62
  %68 = call i32 @wcscpy(i64* %28, i64* %31)
  %69 = getelementptr inbounds i64, i64* %31, i64 0
  store i64 0, i64* %69, align 16
  %70 = load i64, i64* %15, align 8
  store i64 %70, i64* %16, align 8
  br label %86

71:                                               ; preds = %62
  %72 = load i32*****************, i32****************** %20, align 8
  %73 = getelementptr inbounds i32****************, i32***************** %72, i64 1
  %74 = load i32, i32* @MAX_PATH, align 4
  %75 = call i32 @lstrcpynW(i64* %28, i32***************** %73, i32 %74)
  %76 = load i32*****************, i32****************** %20, align 8
  store i32**************** null, i32***************** %76, align 8
  %77 = load i64, i64* %15, align 8
  %78 = load i32, i32* @KEY_ALL_ACCESS, align 4
  %79 = call i64 @RegOpenKeyExW(i64 %77, i64* %31, i32 0, i32 %78, i64* %16)
  store i64 %79, i64* %12, align 8
  %80 = load i64, i64* %12, align 8
  %81 = load i64, i64* @ERROR_SUCCESS, align 8
  %82 = icmp ne i64 %80, %81
  br i1 %82, label %83, label %85

83:                                               ; preds = %71
  %84 = load i64, i64* @FALSE, align 8
  store i64 %84, i64* %6, align 8
  store i32 1, i32* %23, align 4
  br label %465

85:                                               ; preds = %71
  br label %86

86:                                               ; preds = %85, %67
  %87 = load i64, i64* %16, align 8
  %88 = call i64 @RegQueryInfoKeyW(i64 %87, i32* null, i32* null, i32* null, i32* %14, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null)
  store i64 %88, i64* %12, align 8
  %89 = load i64, i64* %12, align 8
  %90 = load i64, i64* @ERROR_SUCCESS, align 8
  %91 = icmp ne i64 %89, %90
  br i1 %91, label %92, label %93

92:                                               ; preds = %86
  br label %403

93:                                               ; preds = %86
  %94 = load i32, i32* %14, align 4
  %95 = sext i32 %94 to i64
  %96 = mul i64 %95, 8
  %97 = trunc i64 %96 to i32
  %98 = call i32************************* @malloc(i32 %97)
  %99 = bitcast i32************************* %98 to i32******************
  store i32****************** %99, i32******************* %22, align 8
  %100 = load i32******************, i32******************* %22, align 8
  %101 = icmp eq i32****************** %100, null
  br i1 %101, label %102, label %103

102:                                              ; preds = %93
  br label %403

103:                                              ; preds = %93
  %104 = load i32******************, i32******************* %22, align 8
  %105 = load i32, i32* %14, align 4
  %106 = sext i32 %105 to i64
  %107 = mul i64 %106, 8
  %108 = trunc i64 %107 to i32
  %109 = call i32 @ZeroMemory(i32****************** %104, i32 %108)
  store i32 0, i32* %13, align 4
  br label %110

110:                                              ; preds = %145, %103
  %111 = load i32, i32* %13, align 4
  %112 = load i32, i32* %14, align 4
  %113 = icmp slt i32 %111, %112
  br i1 %113, label %114, label %148

114:                                              ; preds = %110
  %115 = call i64 (...) @DoEvents()
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %114
  br label %403

118:                                              ; preds = %114
  %119 = load i32, i32* @MAX_PATH, align 4
  %120 = sext i32 %119 to i64
  %121 = mul i64 %120, 8
  %122 = trunc i64 %121 to i32
  store i32 %122, i32* @s_cbName, align 4
  %123 = load i64, i64* %16, align 8
  %124 = load i32, i32* %13, align 4
  %125 = load i32, i32* @s_szName, align 4
  %126 = call i64 @RegEnumKeyExW(i64 %123, i32 %124, i32 %125, i32* @s_cbName, i32* null, i32* null, i32* null, i32* null)
  store i64 %126, i64* %12, align 8
  %127 = load i64, i64* %12, align 8
  %128 = load i64, i64* @ERROR_NO_MORE_ITEMS, align 8
  %129 = icmp eq i64 %127, %128
  br i1 %129, label %130, label %132

130:                                              ; preds = %118
  %131 = load i32, i32* %13, align 4
  store i32 %131, i32* %14, align 4
  br label %148

132:                                              ; preds = %118
  %133 = load i64, i64* %12, align 8
  %134 = load i64, i64* @ERROR_SUCCESS, align 8
  %135 = icmp ne i64 %133, %134
  br i1 %135, label %136, label %137

136:                                              ; preds = %132
  br label %148

137:                                              ; preds = %132
  %138 = load i32, i32* @s_szName, align 4
  %139 = call i32************************* @_wcsdup(i32 %138)
  %140 = bitcast i32************************* %139 to i32*****************
  %141 = load i32******************, i32******************* %22, align 8
  %142 = load i32, i32* %13, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i32*****************, i32****************** %141, i64 %143
  store i32***************** %140, i32****************** %144, align 8
  br label %145

145:                                              ; preds = %137
  %146 = load i32, i32* %13, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %13, align 4
  br label %110

148:                                              ; preds = %136, %130, %110
  %149 = load i32******************, i32******************* %22, align 8
  %150 = load i32, i32* %14, align 4
  %151 = load i32, i32* @compare, align 4
  %152 = call i32 @qsort(i32****************** %149, i32 %150, i32 8, i32 %151)
  %153 = load i64, i64* @FALSE, align 8
  store i64 %153, i64* %21, align 8
  store i32 0, i32* %13, align 4
  br label %154

154:                                              ; preds = %296, %148
  %155 = load i32, i32* %13, align 4
  %156 = load i32, i32* %14, align 4
  %157 = icmp slt i32 %155, %156
  br i1 %157, label %158, label %299

158:                                              ; preds = %154
  %159 = call i64 (...) @DoEvents()
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %162

161:                                              ; preds = %158
  br label %403

162:                                              ; preds = %158
  %163 = load i64, i64* %21, align 8
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %175, label %165

165:                                              ; preds = %162
  %166 = load i32******************, i32******************* %22, align 8
  %167 = load i32, i32* %13, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i32*****************, i32****************** %166, i64 %168
  %170 = load i32*****************, i32****************** %169, align 8
  %171 = call i64 @_wcsicmp(i32***************** %170, i64* %28)
  %172 = icmp eq i64 %171, 0
  br i1 %172, label %173, label %175

173:                                              ; preds = %165
  %174 = load i64, i64* @TRUE, align 8
  store i64 %174, i64* %21, align 8
  br label %296

175:                                              ; preds = %165, %162
  %176 = load i64, i64* %21, align 8
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %179, label %178

178:                                              ; preds = %175
  br label %296

179:                                              ; preds = %175
  %180 = load i32, i32* @s_dwFlags, align 4
  %181 = load i32, i32* @RSF_LOOKATKEYS, align 4
  %182 = and i32 %180, %181
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %240

184:                                              ; preds = %179
  %185 = load i32******************, i32******************* %22, align 8
  %186 = load i32, i32* %13, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i32*****************, i32****************** %185, i64 %187
  %189 = load i32*****************, i32****************** %188, align 8
  %190 = load i32, i32* @s_szFindWhat, align 4
  %191 = call i64 @CompareName(i32***************** %189, i32 %190)
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %240

193:                                              ; preds = %184
  %194 = call i32 @wcslen(i64* %31)
  %195 = load i32******************, i32******************* %22, align 8
  %196 = load i32, i32* %13, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds i32*****************, i32****************** %195, i64 %197
  %199 = load i32*****************, i32****************** %198, align 8
  %200 = bitcast i32***************** %199 to i64*
  %201 = call i32 @wcslen(i64* %200)
  %202 = add nsw i32 %194, %201
  %203 = add nsw i32 %202, 2
  %204 = sext i32 %203 to i64
  %205 = mul i64 %204, 8
  %206 = trunc i64 %205 to i32
  %207 = call i32************************* @malloc(i32 %206)
  %208 = bitcast i32************************* %207 to i32*****************
  %209 = load i32******************, i32******************* %10, align 8
  store i32***************** %208, i32****************** %209, align 8
  %210 = load i32******************, i32******************* %10, align 8
  %211 = load i32*****************, i32****************** %210, align 8
  %212 = icmp eq i32***************** %211, null
  br i1 %212, label %213, label %214

213:                                              ; preds = %193
  br label %403

214:                                              ; preds = %193
  %215 = getelementptr inbounds i64, i64* %31, i64 0
  %216 = load i64, i64* %215, align 16
  %217 = icmp ne i64 %216, 0
  br i1 %217, label %218, label %227

218:                                              ; preds = %214
  %219 = load i32******************, i32******************* %10, align 8
  %220 = load i32*****************, i32****************** %219, align 8
  %221 = bitcast i32***************** %220 to i64*
  %222 = call i32 @wcscpy(i64* %221, i64* %31)
  %223 = load i32******************, i32******************* %10, align 8
  %224 = load i32*****************, i32****************** %223, align 8
  %225 = load i32*****************, i32****************** @s_backslash, align 8
  %226 = call i32 @wcscat(i32***************** %224, i32***************** %225)
  br label %230

227:                                              ; preds = %214
  %228 = load i32******************, i32******************* %10, align 8
  %229 = load i32*****************, i32****************** %228, align 8
  store i32**************** null, i32***************** %229, align 8
  br label %230

230:                                              ; preds = %227, %218
  %231 = load i32******************, i32******************* %10, align 8
  %232 = load i32*****************, i32****************** %231, align 8
  %233 = load i32******************, i32******************* %22, align 8
  %234 = load i32, i32* %13, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds i32*****************, i32****************** %233, i64 %235
  %237 = load i32*****************, i32****************** %236, align 8
  %238 = call i32 @wcscat(i32***************** %232, i32***************** %237)
  %239 = load i32******************, i32******************* %11, align 8
  store i32***************** null, i32****************** %239, align 8
  br label %434

240:                                              ; preds = %184, %179
  %241 = load i64, i64* %16, align 8
  %242 = load i32******************, i32******************* %22, align 8
  %243 = load i32, i32* %13, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds i32*****************, i32****************** %242, i64 %244
  %246 = load i32*****************, i32****************** %245, align 8
  %247 = bitcast i32***************** %246 to i64*
  %248 = load i32******************, i32******************* %10, align 8
  %249 = load i32******************, i32******************* %11, align 8
  %250 = call i64 @RegFindRecurse(i64 %241, i64* %247, i64* null, i32****************** %248, i32****************** %249)
  %251 = icmp ne i64 %250, 0
  br i1 %251, label %252, label %295

252:                                              ; preds = %240
  %253 = load i32******************, i32******************* %10, align 8
  %254 = load i32*****************, i32****************** %253, align 8
  store i32***************** %254, i32****************** %24, align 8
  %255 = call i32 @wcslen(i64* %31)
  %256 = load i32*****************, i32****************** %24, align 8
  %257 = bitcast i32***************** %256 to i64*
  %258 = call i32 @wcslen(i64* %257)
  %259 = add nsw i32 %255, %258
  %260 = add nsw i32 %259, 2
  %261 = sext i32 %260 to i64
  %262 = mul i64 %261, 8
  %263 = trunc i64 %262 to i32
  %264 = call i32************************* @malloc(i32 %263)
  %265 = bitcast i32************************* %264 to i32*****************
  %266 = load i32******************, i32******************* %10, align 8
  store i32***************** %265, i32****************** %266, align 8
  %267 = load i32******************, i32******************* %10, align 8
  %268 = load i32*****************, i32****************** %267, align 8
  %269 = icmp eq i32***************** %268, null
  br i1 %269, label %270, label %271

270:                                              ; preds = %252
  br label %403

271:                                              ; preds = %252
  %272 = getelementptr inbounds i64, i64* %31, i64 0
  %273 = load i64, i64* %272, align 16
  %274 = icmp ne i64 %273, 0
  br i1 %274, label %275, label %284

275:                                              ; preds = %271
  %276 = load i32******************, i32******************* %10, align 8
  %277 = load i32*****************, i32****************** %276, align 8
  %278 = bitcast i32***************** %277 to i64*
  %279 = call i32 @wcscpy(i64* %278, i64* %31)
  %280 = load i32******************, i32******************* %10, align 8
  %281 = load i32*****************, i32****************** %280, align 8
  %282 = load i32*****************, i32****************** @s_backslash, align 8
  %283 = call i32 @wcscat(i32***************** %281, i32***************** %282)
  br label %287

284:                                              ; preds = %271
  %285 = load i32******************, i32******************* %10, align 8
  %286 = load i32*****************, i32****************** %285, align 8
  store i32**************** null, i32***************** %286, align 8
  br label %287

287:                                              ; preds = %284, %275
  %288 = load i32******************, i32******************* %10, align 8
  %289 = load i32*****************, i32****************** %288, align 8
  %290 = load i32*****************, i32****************** %24, align 8
  %291 = call i32 @wcscat(i32***************** %289, i32***************** %290)
  %292 = load i32*****************, i32****************** %24, align 8
  %293 = bitcast i32***************** %292 to i32******************
  %294 = call i32 @free(i32****************** %293)
  br label %434

295:                                              ; preds = %240
  br label %296

296:                                              ; preds = %295, %178, %173
  %297 = load i32, i32* %13, align 4
  %298 = add nsw i32 %297, 1
  store i32 %298, i32* %13, align 4
  br label %154

299:                                              ; preds = %154
  %300 = load i32******************, i32******************* %22, align 8
  %301 = icmp ne i32****************** %300, null
  br i1 %301, label %302, label %321

302:                                              ; preds = %299
  store i32 0, i32* %13, align 4
  br label %303

303:                                              ; preds = %315, %302
  %304 = load i32, i32* %13, align 4
  %305 = load i32, i32* %14, align 4
  %306 = icmp slt i32 %304, %305
  br i1 %306, label %307, label %318

307:                                              ; preds = %303
  %308 = load i32******************, i32******************* %22, align 8
  %309 = load i32, i32* %13, align 4
  %310 = sext i32 %309 to i64
  %311 = getelementptr inbounds i32*****************, i32****************** %308, i64 %310
  %312 = load i32*****************, i32****************** %311, align 8
  %313 = bitcast i32***************** %312 to i32******************
  %314 = call i32 @free(i32****************** %313)
  br label %315

315:                                              ; preds = %307
  %316 = load i32, i32* %13, align 4
  %317 = add nsw i32 %316, 1
  store i32 %317, i32* %13, align 4
  br label %303

318:                                              ; preds = %303
  %319 = load i32******************, i32******************* %22, align 8
  %320 = call i32 @free(i32****************** %319)
  br label %321

321:                                              ; preds = %318, %299
  store i32****************** null, i32******************* %22, align 8
  %322 = load i64, i64* %15, align 8
  %323 = load i64, i64* %16, align 8
  %324 = icmp ne i64 %322, %323
  br i1 %324, label %325, label %328

325:                                              ; preds = %321
  %326 = load i64, i64* %16, align 8
  %327 = call i32 @RegCloseKey(i64 %326)
  br label %328

328:                                              ; preds = %325, %321
  br label %53

329:                                              ; preds = %53
  %330 = load i64*, i64** %7, align 8
  %331 = load i64, i64* %330, align 8
  %332 = load i64, i64* @HKEY_CLASSES_ROOT, align 8
  %333 = icmp eq i64 %331, %332
  br i1 %333, label %334, label %348

334:                                              ; preds = %329
  %335 = load i64, i64* @HKEY_CURRENT_USER, align 8
  %336 = load i64*, i64** %7, align 8
  store i64 %335, i64* %336, align 8
  %337 = load i64*, i64** %7, align 8
  %338 = load i64, i64* %337, align 8
  %339 = load i32*****************, i32****************** @s_empty, align 8
  %340 = bitcast i32***************** %339 to i64*
  %341 = load i32******************, i32******************* %10, align 8
  %342 = load i32******************, i32******************* %11, align 8
  %343 = call i64 @RegFindRecurse(i64 %338, i64* %340, i64* null, i32****************** %341, i32****************** %342)
  %344 = icmp ne i64 %343, 0
  br i1 %344, label %345, label %347

345:                                              ; preds = %334
  %346 = load i64, i64* @TRUE, align 8
  store i64 %346, i64* %6, align 8
  store i32 1, i32* %23, align 4
  br label %465

347:                                              ; preds = %334
  br label %348

348:                                              ; preds = %347, %329
  %349 = load i64*, i64** %7, align 8
  %350 = load i64, i64* %349, align 8
  %351 = load i64, i64* @HKEY_CURRENT_USER, align 8
  %352 = icmp eq i64 %350, %351
  br i1 %352, label %353, label %366

353:                                              ; preds = %348
  %354 = load i64, i64* @HKEY_LOCAL_MACHINE, align 8
  %355 = load i64*, i64** %7, align 8
  store i64 %354, i64* %355, align 8
  %356 = load i64*, i64** %7, align 8
  %357 = load i64, i64* %356, align 8
  %358 = load i32*****************, i32****************** @s_empty, align 8
  %359 = bitcast i32***************** %358 to i64*
  %360 = load i32******************, i32******************* %10, align 8
  %361 = load i32******************, i32******************* %11, align 8
  %362 = call i64 @RegFindRecurse(i64 %357, i64* %359, i64* null, i32****************** %360, i32****************** %361)
  %363 = icmp ne i64 %362, 0
  br i1 %363, label %364, label %365

364:                                              ; preds = %353
  br label %434

365:                                              ; preds = %353
  br label %366

366:                                              ; preds = %365, %348
  %367 = load i64*, i64** %7, align 8
  %368 = load i64, i64* %367, align 8
  %369 = load i64, i64* @HKEY_LOCAL_MACHINE, align 8
  %370 = icmp eq i64 %368, %369
  br i1 %370, label %371, label %384

371:                                              ; preds = %366
  %372 = load i64, i64* @HKEY_USERS, align 8
  %373 = load i64*, i64** %7, align 8
  store i64 %372, i64* %373, align 8
  %374 = load i64*, i64** %7, align 8
  %375 = load i64, i64* %374, align 8
  %376 = load i32*****************, i32****************** @s_empty, align 8
  %377 = bitcast i32***************** %376 to i64*
  %378 = load i32******************, i32******************* %10, align 8
  %379 = load i32******************, i32******************* %11, align 8
  %380 = call i64 @RegFindRecurse(i64 %375, i64* %377, i64* null, i32****************** %378, i32****************** %379)
  %381 = icmp ne i64 %380, 0
  br i1 %381, label %382, label %383

382:                                              ; preds = %371
  br label %434

383:                                              ; preds = %371
  br label %384

384:                                              ; preds = %383, %366
  %385 = load i64*, i64** %7, align 8
  %386 = load i64, i64* %385, align 8
  %387 = load i64, i64* @HKEY_USERS, align 8
  %388 = icmp eq i64 %386, %387
  br i1 %388, label %389, label %402

389:                                              ; preds = %384
  %390 = load i64, i64* @HKEY_CURRENT_CONFIG, align 8
  %391 = load i64*, i64** %7, align 8
  store i64 %390, i64* %391, align 8
  %392 = load i64*, i64** %7, align 8
  %393 = load i64, i64* %392, align 8
  %394 = load i32*****************, i32****************** @s_empty, align 8
  %395 = bitcast i32***************** %394 to i64*
  %396 = load i32******************, i32******************* %10, align 8
  %397 = load i32******************, i32******************* %11, align 8
  %398 = call i64 @RegFindRecurse(i64 %393, i64* %395, i64* null, i32****************** %396, i32****************** %397)
  %399 = icmp ne i64 %398, 0
  br i1 %399, label %400, label %401

400:                                              ; preds = %389
  br label %434

401:                                              ; preds = %389
  br label %402

402:                                              ; preds = %401, %384
  br label %403

403:                                              ; preds = %402, %270, %213, %161, %117, %102, %92
  %404 = load i32******************, i32******************* %22, align 8
  %405 = icmp ne i32****************** %404, null
  br i1 %405, label %406, label %425

406:                                              ; preds = %403
  store i32 0, i32* %13, align 4
  br label %407

407:                                              ; preds = %419, %406
  %408 = load i32, i32* %13, align 4
  %409 = load i32, i32* %14, align 4
  %410 = icmp slt i32 %408, %409
  br i1 %410, label %411, label %422

411:                                              ; preds = %407
  %412 = load i32******************, i32******************* %22, align 8
  %413 = load i32, i32* %13, align 4
  %414 = sext i32 %413 to i64
  %415 = getelementptr inbounds i32*****************, i32****************** %412, i64 %414
  %416 = load i32*****************, i32****************** %415, align 8
  %417 = bitcast i32***************** %416 to i32******************
  %418 = call i32 @free(i32****************** %417)
  br label %419

419:                                              ; preds = %411
  %420 = load i32, i32* %13, align 4
  %421 = add nsw i32 %420, 1
  store i32 %421, i32* %13, align 4
  br label %407

422:                                              ; preds = %407
  %423 = load i32******************, i32******************* %22, align 8
  %424 = call i32 @free(i32****************** %423)
  br label %425

425:                                              ; preds = %422, %403
  %426 = load i64, i64* %15, align 8
  %427 = load i64, i64* %16, align 8
  %428 = icmp ne i64 %426, %427
  br i1 %428, label %429, label %432

429:                                              ; preds = %425
  %430 = load i64, i64* %16, align 8
  %431 = call i32 @RegCloseKey(i64 %430)
  br label %432

432:                                              ; preds = %429, %425
  %433 = load i64, i64* @FALSE, align 8
  store i64 %433, i64* %6, align 8
  store i32 1, i32* %23, align 4
  br label %465

434:                                              ; preds = %400, %382, %364, %287, %230
  %435 = load i32******************, i32******************* %22, align 8
  %436 = icmp ne i32****************** %435, null
  br i1 %436, label %437, label %456

437:                                              ; preds = %434
  store i32 0, i32* %13, align 4
  br label %438

438:                                              ; preds = %450, %437
  %439 = load i32, i32* %13, align 4
  %440 = load i32, i32* %14, align 4
  %441 = icmp slt i32 %439, %440
  br i1 %441, label %442, label %453

442:                                              ; preds = %438
  %443 = load i32******************, i32******************* %22, align 8
  %444 = load i32, i32* %13, align 4
  %445 = sext i32 %444 to i64
  %446 = getelementptr inbounds i32*****************, i32****************** %443, i64 %445
  %447 = load i32*****************, i32****************** %446, align 8
  %448 = bitcast i32***************** %447 to i32******************
  %449 = call i32 @free(i32****************** %448)
  br label %450

450:                                              ; preds = %442
  %451 = load i32, i32* %13, align 4
  %452 = add nsw i32 %451, 1
  store i32 %452, i32* %13, align 4
  br label %438

453:                                              ; preds = %438
  %454 = load i32******************, i32******************* %22, align 8
  %455 = call i32 @free(i32****************** %454)
  br label %456

456:                                              ; preds = %453, %434
  %457 = load i64, i64* %15, align 8
  %458 = load i64, i64* %16, align 8
  %459 = icmp ne i64 %457, %458
  br i1 %459, label %460, label %463

460:                                              ; preds = %456
  %461 = load i64, i64* %16, align 8
  %462 = call i32 @RegCloseKey(i64 %461)
  br label %463

463:                                              ; preds = %460, %456
  %464 = load i64, i64* @TRUE, align 8
  store i64 %464, i64* %6, align 8
  store i32 1, i32* %23, align 4
  br label %465

465:                                              ; preds = %463, %432, %345, %83, %60, %48, %41
  %466 = load i8*, i8** %17, align 8
  call void @llvm.stackrestore(i8* %466)
  %467 = load i64, i64* %6, align 8
  ret i64 %467
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @RegFindRecurse(i64, i64*, i64*, i32******************, i32******************) #2

declare dso_local i32 @wcslen(i64*) #2

declare dso_local i32 @wcscpy(i64*, i64*) #2

declare dso_local i64 @DoEvents(...) #2

declare dso_local i32************************* @wcsrchr(i64*, i32) #2

declare dso_local i32 @lstrcpynW(i64*, i32*****************, i32) #2

declare dso_local i64 @RegOpenKeyExW(i64, i64*, i32, i32, i64*) #2

declare dso_local i64 @RegQueryInfoKeyW(i64, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*) #2

declare dso_local i32************************* @malloc(i32) #2

declare dso_local i32 @ZeroMemory(i32******************, i32) #2

declare dso_local i64 @RegEnumKeyExW(i64, i32, i32, i32*, i32*, i32*, i32*, i32*) #2

declare dso_local i32************************* @_wcsdup(i32) #2

declare dso_local i32 @qsort(i32******************, i32, i32, i32) #2

declare dso_local i64 @_wcsicmp(i32*****************, i64*) #2

declare dso_local i64 @CompareName(i32*****************, i32) #2

declare dso_local i32 @wcscat(i32*****************, i32*****************) #2

declare dso_local i32 @free(i32******************) #2

declare dso_local i32 @RegCloseKey(i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
