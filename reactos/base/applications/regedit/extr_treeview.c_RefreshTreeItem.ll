; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/regedit/extr_treeview.c_RefreshTreeItem.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/regedit/extr_treeview.c_RefreshTreeItem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32*, i8*, i32 }

@FALSE = common dso_local global i64 0, align 8
@KEY_READ = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@TVIF_CHILDREN = common dso_local global i32 0, align 4
@TVIS_EXPANDED = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@TVIF_TEXT = common dso_local global i32 0, align 4
@KEY_QUERY_VALUE = common dso_local global i32 0, align 4
@TVM_SORTCHILDREN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @RefreshTreeItem(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_4__, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i8*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  store i32* null, i32** %13, align 8
  store i32* null, i32** %15, align 8
  %28 = load i64, i64* @FALSE, align 8
  store i64 %28, i64* %16, align 8
  %29 = load i32, i32* %3, align 4
  %30 = load i8*, i8** %4, align 8
  %31 = call i32* @GetItemPath(i32 %29, i8* %30, i32* %5)
  store i32* %31, i32** %9, align 8
  %32 = load i32*, i32** %9, align 8
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %2
  %36 = load i32, i32* %5, align 4
  %37 = load i32*, i32** %9, align 8
  %38 = load i32, i32* @KEY_READ, align 4
  %39 = call i64 @RegOpenKeyExW(i32 %36, i32* %37, i32 0, i32 %38, i32* %6)
  %40 = load i64, i64* @ERROR_SUCCESS, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %35
  br label %278

43:                                               ; preds = %35
  br label %46

44:                                               ; preds = %2
  %45 = load i32, i32* %5, align 4
  store i32 %45, i32* %6, align 4
  br label %46

46:                                               ; preds = %44, %43
  %47 = load i32, i32* %6, align 4
  %48 = call i64 @RegQueryInfoKeyW(i32 %47, i32 0, i32 0, i32 0, i32* %10, i32* %12, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0)
  %49 = load i64, i64* @ERROR_SUCCESS, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  br label %278

52:                                               ; preds = %46
  %53 = load i32, i32* @TVIF_CHILDREN, align 4
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 4
  store i32 %53, i32* %54, align 8
  %55 = load i8*, i8** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 3
  store i8* %55, i8** %56, align 8
  %57 = load i32, i32* %10, align 4
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  store i32 %57, i32* %58, align 8
  %59 = load i32, i32* %3, align 4
  %60 = call i32 @TreeView_SetItem(i32 %59, %struct.TYPE_4__* %14)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %52
  br label %278

63:                                               ; preds = %52
  %64 = load i32, i32* %3, align 4
  %65 = load i8*, i8** %4, align 8
  %66 = load i32, i32* @TVIS_EXPANDED, align 4
  %67 = call i64 @TreeView_GetItemState(i32 %64, i8* %65, i32 %66)
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %63
  %70 = load i32, i32* %6, align 4
  %71 = call i32 @RegCloseKey(i32 %70)
  %72 = load i64, i64* @TRUE, align 8
  store i64 %72, i64* %16, align 8
  br label %278

73:                                               ; preds = %63
  %74 = load i32, i32* %12, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %12, align 4
  %76 = call i32 (...) @GetProcessHeap()
  %77 = load i32, i32* %12, align 4
  %78 = sext i32 %77 to i64
  %79 = mul i64 %78, 4
  %80 = trunc i64 %79 to i32
  %81 = call i32* @HeapAlloc(i32 %76, i32 0, i32 %80)
  store i32* %81, i32** %13, align 8
  %82 = icmp ne i32* %81, null
  br i1 %82, label %84, label %83

83:                                               ; preds = %73
  br label %278

84:                                               ; preds = %73
  %85 = load i32, i32* %12, align 4
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  store i32 %85, i32* %86, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  store i32 10000, i32* %23, align 4
  %87 = load i32, i32* %3, align 4
  %88 = load i8*, i8** %4, align 8
  %89 = call i8* @TreeView_GetChild(i32 %87, i8* %88)
  store i8* %89, i8** %8, align 8
  br label %90

90:                                               ; preds = %160, %84
  %91 = load i8*, i8** %8, align 8
  %92 = icmp ne i8* %91, null
  br i1 %92, label %93, label %164

93:                                               ; preds = %90
  %94 = load i32, i32* %20, align 4
  %95 = load i32, i32* %12, align 4
  %96 = add nsw i32 %94, %95
  %97 = add nsw i32 %96, 1
  %98 = load i32, i32* %19, align 4
  %99 = icmp sgt i32 %97, %98
  br i1 %99, label %100, label %132

100:                                              ; preds = %93
  %101 = load i32, i32* %20, align 4
  %102 = load i32, i32* %12, align 4
  %103 = add nsw i32 %101, %102
  %104 = add nsw i32 %103, 1
  %105 = load i32, i32* %23, align 4
  %106 = add nsw i32 %104, %105
  store i32 %106, i32* %21, align 4
  %107 = load i32*, i32** %15, align 8
  %108 = icmp ne i32* %107, null
  br i1 %108, label %109, label %118

109:                                              ; preds = %100
  %110 = call i32 (...) @GetProcessHeap()
  %111 = load i32*, i32** %15, align 8
  %112 = load i32, i32* %21, align 4
  %113 = sext i32 %112 to i64
  %114 = mul i64 %113, 4
  %115 = trunc i64 %114 to i32
  %116 = call i64 @HeapReAlloc(i32 %110, i32 0, i32* %111, i32 %115)
  %117 = inttoptr i64 %116 to i32*
  store i32* %117, i32** %22, align 8
  br label %125

118:                                              ; preds = %100
  %119 = call i32 (...) @GetProcessHeap()
  %120 = load i32, i32* %21, align 4
  %121 = sext i32 %120 to i64
  %122 = mul i64 %121, 4
  %123 = trunc i64 %122 to i32
  %124 = call i32* @HeapAlloc(i32 %119, i32 0, i32 %123)
  store i32* %124, i32** %22, align 8
  br label %125

125:                                              ; preds = %118, %109
  %126 = load i32*, i32** %22, align 8
  %127 = icmp ne i32* %126, null
  br i1 %127, label %129, label %128

128:                                              ; preds = %125
  br label %278

129:                                              ; preds = %125
  %130 = load i32, i32* %21, align 4
  store i32 %130, i32* %19, align 4
  %131 = load i32*, i32** %22, align 8
  store i32* %131, i32** %15, align 8
  br label %132

132:                                              ; preds = %129, %93
  %133 = load i32, i32* @TVIF_TEXT, align 4
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 4
  store i32 %133, i32* %134, align 8
  %135 = load i8*, i8** %8, align 8
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 3
  store i8* %135, i8** %136, align 8
  %137 = load i32*, i32** %15, align 8
  %138 = load i32, i32* %20, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i32, i32* %137, i64 %139
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 2
  store i32* %140, i32** %141, align 8
  %142 = load i32, i32* %19, align 4
  %143 = load i32, i32* %20, align 4
  %144 = sub nsw i32 %142, %143
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  store i32 %144, i32* %145, align 4
  %146 = load i32, i32* %3, align 4
  %147 = call i32 @TreeView_GetItem(i32 %146, %struct.TYPE_4__* %14)
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %150, label %149

149:                                              ; preds = %132
  br label %278

150:                                              ; preds = %132
  %151 = load i32*, i32** %15, align 8
  %152 = load i32, i32* %20, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i32, i32* %151, i64 %153
  %155 = call i64 @wcslen(i32* %154)
  %156 = trunc i64 %155 to i32
  %157 = add nsw i32 %156, 1
  %158 = load i32, i32* %20, align 4
  %159 = add nsw i32 %158, %157
  store i32 %159, i32* %20, align 4
  br label %160

160:                                              ; preds = %150
  %161 = load i32, i32* %3, align 4
  %162 = load i8*, i8** %8, align 8
  %163 = call i8* @TreeView_GetNextSibling(i32 %161, i8* %162)
  store i8* %163, i8** %8, align 8
  br label %90

164:                                              ; preds = %90
  %165 = load i32*, i32** %15, align 8
  %166 = icmp ne i32* %165, null
  br i1 %166, label %167, label %172

167:                                              ; preds = %164
  %168 = load i32*, i32** %15, align 8
  %169 = load i32, i32* %20, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i32, i32* %168, i64 %170
  store i32 0, i32* %171, align 4
  br label %172

172:                                              ; preds = %167, %164
  %173 = load i32, i32* %3, align 4
  %174 = load i8*, i8** %4, align 8
  %175 = call i8* @TreeView_GetChild(i32 %173, i8* %174)
  store i8* %175, i8** %8, align 8
  br label %176

176:                                              ; preds = %192, %172
  %177 = load i8*, i8** %8, align 8
  %178 = icmp ne i8* %177, null
  br i1 %178, label %179, label %194

179:                                              ; preds = %176
  %180 = load i32, i32* %3, align 4
  %181 = load i8*, i8** %8, align 8
  %182 = call i8* @TreeView_GetNextSibling(i32 %180, i8* %181)
  store i8* %182, i8** %24, align 8
  %183 = load i32, i32* %3, align 4
  %184 = load i8*, i8** %8, align 8
  %185 = call i64 @RefreshTreeItem(i32 %183, i8* %184)
  %186 = load i64, i64* @FALSE, align 8
  %187 = icmp eq i64 %185, %186
  br i1 %187, label %188, label %192

188:                                              ; preds = %179
  %189 = load i32, i32* %3, align 4
  %190 = load i8*, i8** %8, align 8
  %191 = call i32 @TreeView_DeleteItem(i32 %189, i8* %190)
  br label %192

192:                                              ; preds = %188, %179
  %193 = load i8*, i8** %24, align 8
  store i8* %193, i8** %8, align 8
  br label %176

194:                                              ; preds = %176
  %195 = load i64, i64* @FALSE, align 8
  store i64 %195, i64* %18, align 8
  store i32 0, i32* %11, align 4
  br label %196

196:                                              ; preds = %262, %194
  %197 = load i32, i32* %11, align 4
  %198 = load i32, i32* %10, align 4
  %199 = icmp slt i32 %197, %198
  br i1 %199, label %200, label %265

200:                                              ; preds = %196
  %201 = load i32, i32* %12, align 4
  store i32 %201, i32* %25, align 4
  %202 = load i64, i64* @FALSE, align 8
  store i64 %202, i64* %27, align 8
  %203 = load i32, i32* %6, align 4
  %204 = load i32, i32* %11, align 4
  %205 = load i32*, i32** %13, align 8
  %206 = call i64 @RegEnumKeyExW(i32 %203, i32 %204, i32* %205, i32* %25, i32 0, i32 0, i32 0, i32* null)
  %207 = load i64, i64* @ERROR_SUCCESS, align 8
  %208 = icmp ne i64 %206, %207
  br i1 %208, label %209, label %210

209:                                              ; preds = %200
  br label %262

210:                                              ; preds = %200
  %211 = load i32*, i32** %15, align 8
  %212 = icmp ne i32* %211, null
  br i1 %212, label %213, label %234

213:                                              ; preds = %210
  %214 = load i32*, i32** %15, align 8
  store i32* %214, i32** %17, align 8
  br label %215

215:                                              ; preds = %227, %213
  %216 = load i32*, i32** %17, align 8
  %217 = load i32, i32* %216, align 4
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %233

219:                                              ; preds = %215
  %220 = load i32*, i32** %17, align 8
  %221 = load i32*, i32** %13, align 8
  %222 = call i32 @wcscmp(i32* %220, i32* %221)
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %226, label %224

224:                                              ; preds = %219
  %225 = load i64, i64* @TRUE, align 8
  store i64 %225, i64* %27, align 8
  br label %233

226:                                              ; preds = %219
  br label %227

227:                                              ; preds = %226
  %228 = load i32*, i32** %17, align 8
  %229 = call i64 @wcslen(i32* %228)
  %230 = add nsw i64 %229, 1
  %231 = load i32*, i32** %17, align 8
  %232 = getelementptr inbounds i32, i32* %231, i64 %230
  store i32* %232, i32** %17, align 8
  br label %215

233:                                              ; preds = %224, %215
  br label %234

234:                                              ; preds = %233, %210
  %235 = load i64, i64* %27, align 8
  %236 = load i64, i64* @FALSE, align 8
  %237 = icmp eq i64 %235, %236
  br i1 %237, label %238, label %261

238:                                              ; preds = %234
  store i32 0, i32* %26, align 4
  %239 = load i32, i32* %6, align 4
  %240 = load i32*, i32** %13, align 8
  %241 = load i32, i32* @KEY_QUERY_VALUE, align 4
  %242 = call i64 @RegOpenKeyExW(i32 %239, i32* %240, i32 0, i32 %241, i32* %7)
  %243 = load i64, i64* @ERROR_SUCCESS, align 8
  %244 = icmp eq i64 %242, %243
  br i1 %244, label %245, label %254

245:                                              ; preds = %238
  %246 = load i32, i32* %7, align 4
  %247 = call i64 @RegQueryInfoKeyW(i32 %246, i32 0, i32 0, i32 0, i32* %26, i32* null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0)
  %248 = load i64, i64* @ERROR_SUCCESS, align 8
  %249 = icmp ne i64 %247, %248
  br i1 %249, label %250, label %251

250:                                              ; preds = %245
  store i32 0, i32* %26, align 4
  br label %251

251:                                              ; preds = %250, %245
  %252 = load i32, i32* %7, align 4
  %253 = call i32 @RegCloseKey(i32 %252)
  br label %254

254:                                              ; preds = %251, %238
  %255 = load i32, i32* %3, align 4
  %256 = load i8*, i8** %4, align 8
  %257 = load i32*, i32** %13, align 8
  %258 = load i32, i32* %26, align 4
  %259 = call i32 @AddEntryToTree(i32 %255, i8* %256, i32* %257, i32* null, i32 %258)
  %260 = load i64, i64* @TRUE, align 8
  store i64 %260, i64* %18, align 8
  br label %261

261:                                              ; preds = %254, %234
  br label %262

262:                                              ; preds = %261, %209
  %263 = load i32, i32* %11, align 4
  %264 = add nsw i32 %263, 1
  store i32 %264, i32* %11, align 4
  br label %196

265:                                              ; preds = %196
  %266 = load i32, i32* %6, align 4
  %267 = call i32 @RegCloseKey(i32 %266)
  %268 = load i64, i64* %18, align 8
  %269 = icmp ne i64 %268, 0
  br i1 %269, label %270, label %276

270:                                              ; preds = %265
  %271 = load i32, i32* %3, align 4
  %272 = load i32, i32* @TVM_SORTCHILDREN, align 4
  %273 = load i8*, i8** %4, align 8
  %274 = ptrtoint i8* %273 to i32
  %275 = call i32 @SendMessageW(i32 %271, i32 %272, i32 0, i32 %274)
  br label %276

276:                                              ; preds = %270, %265
  %277 = load i64, i64* @TRUE, align 8
  store i64 %277, i64* %16, align 8
  br label %278

278:                                              ; preds = %276, %149, %128, %83, %69, %62, %51, %42
  %279 = load i32*, i32** %15, align 8
  %280 = icmp ne i32* %279, null
  br i1 %280, label %281, label %285

281:                                              ; preds = %278
  %282 = call i32 (...) @GetProcessHeap()
  %283 = load i32*, i32** %15, align 8
  %284 = call i32 @HeapFree(i32 %282, i32 0, i32* %283)
  br label %285

285:                                              ; preds = %281, %278
  %286 = load i32*, i32** %13, align 8
  %287 = icmp ne i32* %286, null
  br i1 %287, label %288, label %292

288:                                              ; preds = %285
  %289 = call i32 (...) @GetProcessHeap()
  %290 = load i32*, i32** %13, align 8
  %291 = call i32 @HeapFree(i32 %289, i32 0, i32* %290)
  br label %292

292:                                              ; preds = %288, %285
  %293 = load i64, i64* %16, align 8
  ret i64 %293
}

declare dso_local i32* @GetItemPath(i32, i8*, i32*) #1

declare dso_local i64 @RegOpenKeyExW(i32, i32*, i32, i32, i32*) #1

declare dso_local i64 @RegQueryInfoKeyW(i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @TreeView_SetItem(i32, %struct.TYPE_4__*) #1

declare dso_local i64 @TreeView_GetItemState(i32, i8*, i32) #1

declare dso_local i32 @RegCloseKey(i32) #1

declare dso_local i32* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i8* @TreeView_GetChild(i32, i8*) #1

declare dso_local i64 @HeapReAlloc(i32, i32, i32*, i32) #1

declare dso_local i32 @TreeView_GetItem(i32, %struct.TYPE_4__*) #1

declare dso_local i64 @wcslen(i32*) #1

declare dso_local i8* @TreeView_GetNextSibling(i32, i8*) #1

declare dso_local i32 @TreeView_DeleteItem(i32, i8*) #1

declare dso_local i64 @RegEnumKeyExW(i32, i32, i32*, i32*, i32, i32, i32, i32*) #1

declare dso_local i32 @wcscmp(i32*, i32*) #1

declare dso_local i32 @AddEntryToTree(i32, i8*, i32*, i32*, i32) #1

declare dso_local i32 @SendMessageW(i32, i32, i32, i32) #1

declare dso_local i32 @HeapFree(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
