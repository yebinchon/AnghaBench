; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/itss/extr_chm_lib.c_chm_enumerate_dir.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/itss/extr_chm_lib.c_chm_enumerate_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.chmFile = type { i64, i32, i64 }
%struct.chmUnitInfo = type { i64, i8* }
%struct.chmPmglHeader = type { i32, i32* }

@FALSE = common dso_local global i64 0, align 8
@CHM_MAX_PATHLEN = common dso_local global i32 0, align 4
@_CHM_PMGL_LEN = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@CHM_ENUMERATE_DIRS = common dso_local global i32 0, align 4
@CHM_ENUMERATE_FILES = common dso_local global i32 0, align 4
@CHM_ENUMERATE_SPECIAL = common dso_local global i32 0, align 4
@CHM_ENUMERATE_NORMAL = common dso_local global i32 0, align 4
@CHM_ENUMERATE_META = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @chm_enumerate_dir(%struct.chmFile* %0, i8* %1, i32 %2, i32 (%struct.chmFile*, %struct.chmUnitInfo*, i8*)* %3, i8* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.chmFile*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32 (%struct.chmFile*, %struct.chmUnitInfo*, i8*)*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca %struct.chmPmglHeader, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca %struct.chmUnitInfo, align 8
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i64, align 8
  %24 = alloca i32, align 4
  %25 = alloca i64, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  store %struct.chmFile* %0, %struct.chmFile** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 (%struct.chmFile*, %struct.chmUnitInfo*, i8*)* %3, i32 (%struct.chmFile*, %struct.chmUnitInfo*, i8*)** %10, align 8
  store i8* %4, i8** %11, align 8
  %29 = call i32 (...) @GetProcessHeap()
  %30 = load %struct.chmFile*, %struct.chmFile** %7, align 8
  %31 = getelementptr inbounds %struct.chmFile, %struct.chmFile* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = call i32* @HeapAlloc(i32 %29, i32 0, i64 %32)
  store i32* %33, i32** %13, align 8
  %34 = load i64, i64* @FALSE, align 8
  store i64 %34, i64* %18, align 8
  %35 = load i32, i32* @CHM_MAX_PATHLEN, align 4
  %36 = add nsw i32 %35, 1
  %37 = zext i32 %36 to i64
  %38 = call i8* @llvm.stacksave()
  store i8* %38, i8** %22, align 8
  %39 = alloca i8, i64 %37, align 16
  store i64 %37, i64* %23, align 8
  %40 = load i32, i32* @CHM_MAX_PATHLEN, align 4
  %41 = zext i32 %40 to i64
  %42 = alloca i8, i64 %41, align 16
  store i64 %41, i64* %25, align 8
  %43 = load %struct.chmFile*, %struct.chmFile** %7, align 8
  %44 = getelementptr inbounds %struct.chmFile, %struct.chmFile* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  store i32 %45, i32* %12, align 4
  %46 = load i8*, i8** %8, align 8
  %47 = load i32, i32* @CHM_MAX_PATHLEN, align 4
  %48 = call i32 @lstrcpynW(i8* %39, i8* %46, i32 %47)
  %49 = call i32 @lstrlenW(i8* %39)
  store i32 %49, i32* %24, align 4
  %50 = load i32, i32* %24, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %71

52:                                               ; preds = %5
  %53 = load i32, i32* %24, align 4
  %54 = sub nsw i32 %53, 1
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i8, i8* %39, i64 %55
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp ne i32 %58, 47
  br i1 %59, label %60, label %70

60:                                               ; preds = %52
  %61 = load i32, i32* %24, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8, i8* %39, i64 %62
  store i8 47, i8* %63, align 1
  %64 = load i32, i32* %24, align 4
  %65 = add nsw i32 %64, 1
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i8, i8* %39, i64 %66
  store i8 0, i8* %67, align 1
  %68 = load i32, i32* %24, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %24, align 4
  br label %70

70:                                               ; preds = %60, %52
  br label %71

71:                                               ; preds = %70, %5
  %72 = getelementptr inbounds i8, i8* %42, i64 0
  store i8 0, i8* %72, align 16
  store i32 -1, i32* %26, align 4
  br label %73

73:                                               ; preds = %277, %71
  %74 = load i32, i32* %12, align 4
  %75 = icmp ne i32 %74, -1
  br i1 %75, label %76, label %280

76:                                               ; preds = %73
  %77 = load %struct.chmFile*, %struct.chmFile** %7, align 8
  %78 = load i32*, i32** %13, align 8
  %79 = load %struct.chmFile*, %struct.chmFile** %7, align 8
  %80 = getelementptr inbounds %struct.chmFile, %struct.chmFile* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = load i32, i32* %12, align 4
  %83 = sext i32 %82 to i64
  %84 = load %struct.chmFile*, %struct.chmFile** %7, align 8
  %85 = getelementptr inbounds %struct.chmFile, %struct.chmFile* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = mul i64 %83, %86
  %88 = add i64 %81, %87
  %89 = load %struct.chmFile*, %struct.chmFile** %7, align 8
  %90 = getelementptr inbounds %struct.chmFile, %struct.chmFile* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = call i64 @_chm_fetch_bytes(%struct.chmFile* %77, i32* %78, i64 %88, i64 %91)
  %93 = load %struct.chmFile*, %struct.chmFile** %7, align 8
  %94 = getelementptr inbounds %struct.chmFile, %struct.chmFile* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %92, %95
  br i1 %96, label %97, label %102

97:                                               ; preds = %76
  %98 = call i32 (...) @GetProcessHeap()
  %99 = load i32*, i32** %13, align 8
  %100 = call i32 @HeapFree(i32 %98, i32 0, i32* %99)
  %101 = load i64, i64* @FALSE, align 8
  store i64 %101, i64* %6, align 8
  store i32 1, i32* %27, align 4
  br label %285

102:                                              ; preds = %76
  %103 = load i32*, i32** %13, align 8
  store i32* %103, i32** %16, align 8
  %104 = load i32, i32* @_CHM_PMGL_LEN, align 4
  store i32 %104, i32* %17, align 4
  %105 = call i32 @_unmarshal_pmgl_header(i32** %16, i32* %17, %struct.chmPmglHeader* %14)
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %112, label %107

107:                                              ; preds = %102
  %108 = call i32 (...) @GetProcessHeap()
  %109 = load i32*, i32** %13, align 8
  %110 = call i32 @HeapFree(i32 %108, i32 0, i32* %109)
  %111 = load i64, i64* @FALSE, align 8
  store i64 %111, i64* %6, align 8
  store i32 1, i32* %27, align 4
  br label %285

112:                                              ; preds = %102
  %113 = load i32*, i32** %13, align 8
  %114 = load %struct.chmFile*, %struct.chmFile** %7, align 8
  %115 = getelementptr inbounds %struct.chmFile, %struct.chmFile* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = getelementptr inbounds i32, i32* %113, i64 %116
  %118 = getelementptr inbounds %struct.chmPmglHeader, %struct.chmPmglHeader* %14, i32 0, i32 1
  %119 = load i32*, i32** %118, align 8
  %120 = ptrtoint i32* %117 to i64
  %121 = ptrtoint i32* %119 to i64
  %122 = sub i64 %120, %121
  %123 = sdiv exact i64 %122, 4
  %124 = inttoptr i64 %123 to i32*
  store i32* %124, i32** %15, align 8
  br label %125

125:                                              ; preds = %276, %257, %223, %209, %185, %162, %152, %112
  %126 = load i32*, i32** %16, align 8
  %127 = load i32*, i32** %15, align 8
  %128 = icmp ult i32* %126, %127
  br i1 %128, label %129, label %277

129:                                              ; preds = %125
  %130 = call i32 @_chm_parse_PMGL_entry(i32** %16, %struct.chmUnitInfo* %19)
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %137, label %132

132:                                              ; preds = %129
  %133 = call i32 (...) @GetProcessHeap()
  %134 = load i32*, i32** %13, align 8
  %135 = call i32 @HeapFree(i32 %133, i32 0, i32* %134)
  %136 = load i64, i64* @FALSE, align 8
  store i64 %136, i64* %6, align 8
  store i32 1, i32* %27, align 4
  br label %285

137:                                              ; preds = %129
  %138 = load i64, i64* %18, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %164, label %140

140:                                              ; preds = %137
  %141 = getelementptr inbounds %struct.chmUnitInfo, %struct.chmUnitInfo* %19, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = icmp eq i64 %142, 0
  br i1 %143, label %144, label %152

144:                                              ; preds = %140
  %145 = getelementptr inbounds %struct.chmUnitInfo, %struct.chmUnitInfo* %19, i32 0, i32 1
  %146 = load i8*, i8** %145, align 8
  %147 = load i32, i32* %24, align 4
  %148 = call i64 @_wcsnicmp(i8* %146, i8* %39, i32 %147)
  %149 = icmp eq i64 %148, 0
  br i1 %149, label %150, label %152

150:                                              ; preds = %144
  %151 = load i64, i64* @TRUE, align 8
  store i64 %151, i64* %18, align 8
  br label %153

152:                                              ; preds = %144, %140
  br label %125

153:                                              ; preds = %150
  %154 = getelementptr inbounds %struct.chmUnitInfo, %struct.chmUnitInfo* %19, i32 0, i32 1
  %155 = load i8*, i8** %154, align 8
  %156 = load i32, i32* %24, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i8, i8* %155, i64 %157
  %159 = load i8, i8* %158, align 1
  %160 = sext i8 %159 to i32
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %162, label %163

162:                                              ; preds = %153
  br label %125

163:                                              ; preds = %153
  br label %176

164:                                              ; preds = %137
  %165 = getelementptr inbounds %struct.chmUnitInfo, %struct.chmUnitInfo* %19, i32 0, i32 1
  %166 = load i8*, i8** %165, align 8
  %167 = load i32, i32* %24, align 4
  %168 = call i64 @_wcsnicmp(i8* %166, i8* %39, i32 %167)
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %175

170:                                              ; preds = %164
  %171 = call i32 (...) @GetProcessHeap()
  %172 = load i32*, i32** %13, align 8
  %173 = call i32 @HeapFree(i32 %171, i32 0, i32* %172)
  %174 = load i64, i64* @TRUE, align 8
  store i64 %174, i64* %6, align 8
  store i32 1, i32* %27, align 4
  br label %285

175:                                              ; preds = %164
  br label %176

176:                                              ; preds = %175, %163
  %177 = load i32, i32* %26, align 4
  %178 = icmp ne i32 %177, -1
  br i1 %178, label %179, label %187

179:                                              ; preds = %176
  %180 = getelementptr inbounds %struct.chmUnitInfo, %struct.chmUnitInfo* %19, i32 0, i32 1
  %181 = load i8*, i8** %180, align 8
  %182 = load i32, i32* %26, align 4
  %183 = call i64 @_wcsnicmp(i8* %181, i8* %42, i32 %182)
  %184 = icmp eq i64 %183, 0
  br i1 %184, label %185, label %186

185:                                              ; preds = %179
  br label %125

186:                                              ; preds = %179
  br label %187

187:                                              ; preds = %186, %176
  %188 = getelementptr inbounds %struct.chmUnitInfo, %struct.chmUnitInfo* %19, i32 0, i32 1
  %189 = load i8*, i8** %188, align 8
  %190 = call i32 @lstrcpyW(i8* %42, i8* %189)
  %191 = call i32 @lstrlenW(i8* %42)
  store i32 %191, i32* %26, align 4
  %192 = getelementptr inbounds %struct.chmUnitInfo, %struct.chmUnitInfo* %19, i32 0, i32 1
  %193 = load i8*, i8** %192, align 8
  %194 = call i32 @lstrlenW(i8* %193)
  %195 = sub nsw i32 %194, 1
  %196 = sext i32 %195 to i64
  store i64 %196, i64* %21, align 8
  %197 = getelementptr inbounds %struct.chmUnitInfo, %struct.chmUnitInfo* %19, i32 0, i32 1
  %198 = load i8*, i8** %197, align 8
  %199 = load i64, i64* %21, align 8
  %200 = getelementptr inbounds i8, i8* %198, i64 %199
  %201 = load i8, i8* %200, align 1
  %202 = sext i8 %201 to i32
  %203 = icmp eq i32 %202, 47
  br i1 %203, label %204, label %210

204:                                              ; preds = %187
  %205 = load i32, i32* %9, align 4
  %206 = load i32, i32* @CHM_ENUMERATE_DIRS, align 4
  %207 = and i32 %205, %206
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %210, label %209

209:                                              ; preds = %204
  br label %125

210:                                              ; preds = %204, %187
  %211 = getelementptr inbounds %struct.chmUnitInfo, %struct.chmUnitInfo* %19, i32 0, i32 1
  %212 = load i8*, i8** %211, align 8
  %213 = load i64, i64* %21, align 8
  %214 = getelementptr inbounds i8, i8* %212, i64 %213
  %215 = load i8, i8* %214, align 1
  %216 = sext i8 %215 to i32
  %217 = icmp ne i32 %216, 47
  br i1 %217, label %218, label %224

218:                                              ; preds = %210
  %219 = load i32, i32* %9, align 4
  %220 = load i32, i32* @CHM_ENUMERATE_FILES, align 4
  %221 = and i32 %219, %220
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %224, label %223

223:                                              ; preds = %218
  br label %125

224:                                              ; preds = %218, %210
  %225 = getelementptr inbounds %struct.chmUnitInfo, %struct.chmUnitInfo* %19, i32 0, i32 1
  %226 = load i8*, i8** %225, align 8
  %227 = getelementptr inbounds i8, i8* %226, i64 0
  %228 = load i8, i8* %227, align 1
  %229 = sext i8 %228 to i32
  %230 = icmp eq i32 %229, 47
  br i1 %230, label %231, label %250

231:                                              ; preds = %224
  %232 = getelementptr inbounds %struct.chmUnitInfo, %struct.chmUnitInfo* %19, i32 0, i32 1
  %233 = load i8*, i8** %232, align 8
  %234 = getelementptr inbounds i8, i8* %233, i64 1
  %235 = load i8, i8* %234, align 1
  %236 = sext i8 %235 to i32
  %237 = icmp eq i32 %236, 35
  br i1 %237, label %245, label %238

238:                                              ; preds = %231
  %239 = getelementptr inbounds %struct.chmUnitInfo, %struct.chmUnitInfo* %19, i32 0, i32 1
  %240 = load i8*, i8** %239, align 8
  %241 = getelementptr inbounds i8, i8* %240, i64 1
  %242 = load i8, i8* %241, align 1
  %243 = sext i8 %242 to i32
  %244 = icmp eq i32 %243, 36
  br i1 %244, label %245, label %247

245:                                              ; preds = %238, %231
  %246 = load i32, i32* @CHM_ENUMERATE_SPECIAL, align 4
  store i32 %246, i32* %20, align 4
  br label %249

247:                                              ; preds = %238
  %248 = load i32, i32* @CHM_ENUMERATE_NORMAL, align 4
  store i32 %248, i32* %20, align 4
  br label %249

249:                                              ; preds = %247, %245
  br label %252

250:                                              ; preds = %224
  %251 = load i32, i32* @CHM_ENUMERATE_META, align 4
  store i32 %251, i32* %20, align 4
  br label %252

252:                                              ; preds = %250, %249
  %253 = load i32, i32* %9, align 4
  %254 = load i32, i32* %20, align 4
  %255 = and i32 %253, %254
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %258, label %257

257:                                              ; preds = %252
  br label %125

258:                                              ; preds = %252
  %259 = load i32 (%struct.chmFile*, %struct.chmUnitInfo*, i8*)*, i32 (%struct.chmFile*, %struct.chmUnitInfo*, i8*)** %10, align 8
  %260 = load %struct.chmFile*, %struct.chmFile** %7, align 8
  %261 = load i8*, i8** %11, align 8
  %262 = call i32 %259(%struct.chmFile* %260, %struct.chmUnitInfo* %19, i8* %261)
  store i32 %262, i32* %28, align 4
  %263 = load i32, i32* %28, align 4
  switch i32 %263, label %275 [
    i32 129, label %264
    i32 130, label %269
    i32 128, label %270
  ]

264:                                              ; preds = %258
  %265 = call i32 (...) @GetProcessHeap()
  %266 = load i32*, i32** %13, align 8
  %267 = call i32 @HeapFree(i32 %265, i32 0, i32* %266)
  %268 = load i64, i64* @FALSE, align 8
  store i64 %268, i64* %6, align 8
  store i32 1, i32* %27, align 4
  br label %285

269:                                              ; preds = %258
  br label %276

270:                                              ; preds = %258
  %271 = call i32 (...) @GetProcessHeap()
  %272 = load i32*, i32** %13, align 8
  %273 = call i32 @HeapFree(i32 %271, i32 0, i32* %272)
  %274 = load i64, i64* @TRUE, align 8
  store i64 %274, i64* %6, align 8
  store i32 1, i32* %27, align 4
  br label %285

275:                                              ; preds = %258
  br label %276

276:                                              ; preds = %275, %269
  br label %125

277:                                              ; preds = %125
  %278 = getelementptr inbounds %struct.chmPmglHeader, %struct.chmPmglHeader* %14, i32 0, i32 0
  %279 = load i32, i32* %278, align 8
  store i32 %279, i32* %12, align 4
  br label %73

280:                                              ; preds = %73
  %281 = call i32 (...) @GetProcessHeap()
  %282 = load i32*, i32** %13, align 8
  %283 = call i32 @HeapFree(i32 %281, i32 0, i32* %282)
  %284 = load i64, i64* @TRUE, align 8
  store i64 %284, i64* %6, align 8
  store i32 1, i32* %27, align 4
  br label %285

285:                                              ; preds = %280, %270, %264, %170, %132, %107, %97
  %286 = load i8*, i8** %22, align 8
  call void @llvm.stackrestore(i8* %286)
  %287 = load i64, i64* %6, align 8
  ret i64 %287
}

declare dso_local i32* @HeapAlloc(i32, i32, i64) #1

declare dso_local i32 @GetProcessHeap(...) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @lstrcpynW(i8*, i8*, i32) #1

declare dso_local i32 @lstrlenW(i8*) #1

declare dso_local i64 @_chm_fetch_bytes(%struct.chmFile*, i32*, i64, i64) #1

declare dso_local i32 @HeapFree(i32, i32, i32*) #1

declare dso_local i32 @_unmarshal_pmgl_header(i32**, i32*, %struct.chmPmglHeader*) #1

declare dso_local i32 @_chm_parse_PMGL_entry(i32**, %struct.chmUnitInfo*) #1

declare dso_local i64 @_wcsnicmp(i8*, i8*, i32) #1

declare dso_local i32 @lstrcpyW(i8*, i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
