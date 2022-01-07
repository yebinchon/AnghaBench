; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/gin/extr_ginget.c_keyGetItem.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/gin/extr_ginget.c_keyGetItem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i8*, i64, i64, i64, i64, i32*, i32 (%struct.TYPE_7__*)*, i32, i32, %struct.TYPE_8__**, %struct.TYPE_8__**, %struct.TYPE_8__** }
%struct.TYPE_8__ = type { i32, i8* }

@InvalidOffsetNumber = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, %struct.TYPE_7__*, i8*, i32)* @keyGetItem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @keyGetItem(i32* %0, i32 %1, %struct.TYPE_7__* %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_8__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  %25 = call i32 @Assert(i32 %24)
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 1
  %28 = call i64 @ginCompareItemPointers(i8** %27, i8** %9)
  %29 = icmp sgt i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %5
  br label %333

31:                                               ; preds = %5
  %32 = call i32 @ItemPointerSetMax(i8** %11)
  store i32 1, i32* %18, align 4
  store i64 0, i64* %13, align 8
  br label %33

33:                                               ; preds = %78, %31
  %34 = load i64, i64* %13, align 8
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = icmp ult i64 %34, %37
  br i1 %38, label %39, label %81

39:                                               ; preds = %33
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 12
  %42 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %41, align 8
  %43 = load i64, i64* %13, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %42, i64 %43
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %44, align 8
  store %struct.TYPE_8__* %45, %struct.TYPE_8__** %15, align 8
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %39
  br label %78

51:                                               ; preds = %39
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 1
  %54 = call i64 @ginCompareItemPointers(i8** %53, i8** %9)
  %55 = icmp sle i64 %54, 0
  br i1 %55, label %56, label %68

56:                                               ; preds = %51
  %57 = load i32*, i32** %6, align 8
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %59 = load i8*, i8** %9, align 8
  %60 = load i32, i32* %10, align 4
  %61 = call i32 @entryGetItem(i32* %57, %struct.TYPE_8__* %58, i8* %59, i32 %60)
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %56
  br label %78

67:                                               ; preds = %56
  br label %68

68:                                               ; preds = %67, %51
  store i32 0, i32* %18, align 4
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 1
  %71 = call i64 @ginCompareItemPointers(i8** %70, i8** %11)
  %72 = icmp slt i64 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %68
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 1
  %76 = load i8*, i8** %75, align 8
  store i8* %76, i8** %11, align 8
  br label %77

77:                                               ; preds = %73, %68
  br label %78

78:                                               ; preds = %77, %66, %50
  %79 = load i64, i64* %13, align 8
  %80 = add i64 %79, 1
  store i64 %80, i64* %13, align 8
  br label %33

81:                                               ; preds = %33
  %82 = load i32, i32* %18, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %81
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 0
  store i32 1, i32* %86, align 8
  br label %333

87:                                               ; preds = %81
  %88 = call i32 @ItemPointerIsLossyPage(i8** %11)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %99

90:                                               ; preds = %87
  %91 = call i64 @GinItemPointerGetBlockNumber(i8** %9)
  %92 = call i64 @GinItemPointerGetBlockNumber(i8** %11)
  %93 = icmp slt i64 %91, %92
  br i1 %93, label %94, label %98

94:                                               ; preds = %90
  %95 = call i64 @GinItemPointerGetBlockNumber(i8** %11)
  %96 = load i32, i32* @InvalidOffsetNumber, align 4
  %97 = call i32 @ItemPointerSet(i8** %9, i64 %95, i32 %96)
  br label %98

98:                                               ; preds = %94, %90
  br label %108

99:                                               ; preds = %87
  %100 = call i64 @GinItemPointerGetOffsetNumber(i8** %11)
  %101 = icmp sgt i64 %100, 0
  %102 = zext i1 %101 to i32
  %103 = call i32 @Assert(i32 %102)
  %104 = call i64 @GinItemPointerGetBlockNumber(i8** %11)
  %105 = call i64 @GinItemPointerGetOffsetNumber(i8** %11)
  %106 = call i32 @OffsetNumberPrev(i64 %105)
  %107 = call i32 @ItemPointerSet(i8** %9, i64 %104, i32 %106)
  br label %108

108:                                              ; preds = %99, %98
  store i64 0, i64* %13, align 8
  br label %109

109:                                              ; preds = %156, %108
  %110 = load i64, i64* %13, align 8
  %111 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 3
  %113 = load i64, i64* %112, align 8
  %114 = icmp ult i64 %110, %113
  br i1 %114, label %115, label %159

115:                                              ; preds = %109
  %116 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 11
  %118 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %117, align 8
  %119 = load i64, i64* %13, align 8
  %120 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %118, i64 %119
  %121 = load %struct.TYPE_8__*, %struct.TYPE_8__** %120, align 8
  store %struct.TYPE_8__* %121, %struct.TYPE_8__** %15, align 8
  %122 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %115
  br label %156

127:                                              ; preds = %115
  %128 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 1
  %130 = call i64 @ginCompareItemPointers(i8** %129, i8** %9)
  %131 = icmp sle i64 %130, 0
  br i1 %131, label %132, label %144

132:                                              ; preds = %127
  %133 = load i32*, i32** %6, align 8
  %134 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %135 = load i8*, i8** %9, align 8
  %136 = load i32, i32* %10, align 4
  %137 = call i32 @entryGetItem(i32* %133, %struct.TYPE_8__* %134, i8* %135, i32 %136)
  %138 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %132
  br label %156

143:                                              ; preds = %132
  br label %144

144:                                              ; preds = %143, %127
  %145 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %146 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %145, i32 0, i32 1
  %147 = call i64 @ginCompareItemPointers(i8** %146, i8** %11)
  %148 = icmp slt i64 %147, 0
  br i1 %148, label %149, label %155

149:                                              ; preds = %144
  %150 = call i32 @ItemPointerIsLossyPage(i8** %11)
  %151 = call i32 @Assert(i32 %150)
  %152 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %153 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %152, i32 0, i32 1
  %154 = load i8*, i8** %153, align 8
  store i8* %154, i8** %11, align 8
  br label %155

155:                                              ; preds = %149, %144
  br label %156

156:                                              ; preds = %155, %142, %126
  %157 = load i64, i64* %13, align 8
  %158 = add i64 %157, 1
  store i64 %158, i64* %13, align 8
  br label %109

159:                                              ; preds = %109
  %160 = load i8*, i8** %11, align 8
  %161 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %162 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %161, i32 0, i32 1
  store i8* %160, i8** %162, align 8
  %163 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %164 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %163, i32 0, i32 1
  %165 = call i64 @GinItemPointerGetBlockNumber(i8** %164)
  %166 = call i32 @ItemPointerSetLossyPage(i8** %12, i64 %165)
  store i32 0, i32* %14, align 4
  store i64 0, i64* %13, align 8
  br label %167

167:                                              ; preds = %215, %159
  %168 = load i64, i64* %13, align 8
  %169 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %170 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %169, i32 0, i32 4
  %171 = load i64, i64* %170, align 8
  %172 = icmp ult i64 %168, %171
  br i1 %172, label %173, label %218

173:                                              ; preds = %167
  %174 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %175 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %174, i32 0, i32 10
  %176 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %175, align 8
  %177 = load i64, i64* %13, align 8
  %178 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %176, i64 %177
  %179 = load %struct.TYPE_8__*, %struct.TYPE_8__** %178, align 8
  store %struct.TYPE_8__* %179, %struct.TYPE_8__** %15, align 8
  %180 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %181 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %184, label %208

184:                                              ; preds = %173
  %185 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %186 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %185, i32 0, i32 1
  %187 = call i64 @ginCompareItemPointers(i8** %186, i8** %12)
  %188 = icmp eq i64 %187, 0
  br i1 %188, label %189, label %208

189:                                              ; preds = %184
  %190 = load i64, i64* %13, align 8
  %191 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %192 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %191, i32 0, i32 5
  %193 = load i64, i64* %192, align 8
  %194 = icmp ult i64 %190, %193
  br i1 %194, label %195, label %201

195:                                              ; preds = %189
  %196 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %197 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %196, i32 0, i32 6
  %198 = load i32*, i32** %197, align 8
  %199 = load i64, i64* %13, align 8
  %200 = getelementptr inbounds i32, i32* %198, i64 %199
  store i32 129, i32* %200, align 4
  br label %207

201:                                              ; preds = %189
  %202 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %203 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %202, i32 0, i32 6
  %204 = load i32*, i32** %203, align 8
  %205 = load i64, i64* %13, align 8
  %206 = getelementptr inbounds i32, i32* %204, i64 %205
  store i32 128, i32* %206, align 4
  br label %207

207:                                              ; preds = %201, %195
  store i32 1, i32* %14, align 4
  br label %214

208:                                              ; preds = %184, %173
  %209 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %210 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %209, i32 0, i32 6
  %211 = load i32*, i32** %210, align 8
  %212 = load i64, i64* %13, align 8
  %213 = getelementptr inbounds i32, i32* %211, i64 %212
  store i32 130, i32* %213, align 4
  br label %214

214:                                              ; preds = %208, %207
  br label %215

215:                                              ; preds = %214
  %216 = load i64, i64* %13, align 8
  %217 = add i64 %216, 1
  store i64 %217, i64* %13, align 8
  br label %167

218:                                              ; preds = %167
  %219 = load i32, i32* %7, align 4
  %220 = call i32 @MemoryContextSwitchTo(i32 %219)
  store i32 %220, i32* %17, align 4
  %221 = load i32, i32* %14, align 4
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %247

223:                                              ; preds = %218
  %224 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %225 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %224, i32 0, i32 7
  %226 = load i32 (%struct.TYPE_7__*)*, i32 (%struct.TYPE_7__*)** %225, align 8
  %227 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %228 = call i32 %226(%struct.TYPE_7__* %227)
  store i32 %228, i32* %16, align 4
  %229 = load i32, i32* %16, align 4
  %230 = icmp eq i32 %229, 128
  br i1 %230, label %234, label %231

231:                                              ; preds = %223
  %232 = load i32, i32* %16, align 4
  %233 = icmp eq i32 %232, 129
  br i1 %233, label %234, label %246

234:                                              ; preds = %231, %223
  %235 = load i32, i32* %17, align 4
  %236 = call i32 @MemoryContextSwitchTo(i32 %235)
  %237 = load i32, i32* %7, align 4
  %238 = call i32 @MemoryContextReset(i32 %237)
  %239 = load i8*, i8** %12, align 8
  %240 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %241 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %240, i32 0, i32 1
  store i8* %239, i8** %241, align 8
  %242 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %243 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %242, i32 0, i32 8
  store i32 1, i32* %243, align 8
  %244 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %245 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %244, i32 0, i32 9
  store i32 1, i32* %245, align 4
  br label %333

246:                                              ; preds = %231
  br label %247

247:                                              ; preds = %246, %218
  store i64 0, i64* %13, align 8
  br label %248

248:                                              ; preds = %302, %247
  %249 = load i64, i64* %13, align 8
  %250 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %251 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %250, i32 0, i32 4
  %252 = load i64, i64* %251, align 8
  %253 = icmp ult i64 %249, %252
  br i1 %253, label %254, label %305

254:                                              ; preds = %248
  %255 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %256 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %255, i32 0, i32 10
  %257 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %256, align 8
  %258 = load i64, i64* %13, align 8
  %259 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %257, i64 %258
  %260 = load %struct.TYPE_8__*, %struct.TYPE_8__** %259, align 8
  store %struct.TYPE_8__* %260, %struct.TYPE_8__** %15, align 8
  %261 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %262 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 8
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %265, label %271

265:                                              ; preds = %254
  %266 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %267 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %266, i32 0, i32 6
  %268 = load i32*, i32** %267, align 8
  %269 = load i64, i64* %13, align 8
  %270 = getelementptr inbounds i32, i32* %268, i64 %269
  store i32 130, i32* %270, align 4
  br label %301

271:                                              ; preds = %254
  %272 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %273 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %272, i32 0, i32 1
  %274 = call i64 @ginCompareItemPointers(i8** %273, i8** %12)
  %275 = icmp eq i64 %274, 0
  br i1 %275, label %276, label %282

276:                                              ; preds = %271
  %277 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %278 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %277, i32 0, i32 6
  %279 = load i32*, i32** %278, align 8
  %280 = load i64, i64* %13, align 8
  %281 = getelementptr inbounds i32, i32* %279, i64 %280
  store i32 129, i32* %281, align 4
  br label %300

282:                                              ; preds = %271
  %283 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %284 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %283, i32 0, i32 1
  %285 = call i64 @ginCompareItemPointers(i8** %284, i8** %11)
  %286 = icmp eq i64 %285, 0
  br i1 %286, label %287, label %293

287:                                              ; preds = %282
  %288 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %289 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %288, i32 0, i32 6
  %290 = load i32*, i32** %289, align 8
  %291 = load i64, i64* %13, align 8
  %292 = getelementptr inbounds i32, i32* %290, i64 %291
  store i32 128, i32* %292, align 4
  br label %299

293:                                              ; preds = %282
  %294 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %295 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %294, i32 0, i32 6
  %296 = load i32*, i32** %295, align 8
  %297 = load i64, i64* %13, align 8
  %298 = getelementptr inbounds i32, i32* %296, i64 %297
  store i32 130, i32* %298, align 4
  br label %299

299:                                              ; preds = %293, %287
  br label %300

300:                                              ; preds = %299, %276
  br label %301

301:                                              ; preds = %300, %265
  br label %302

302:                                              ; preds = %301
  %303 = load i64, i64* %13, align 8
  %304 = add i64 %303, 1
  store i64 %304, i64* %13, align 8
  br label %248

305:                                              ; preds = %248
  %306 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %307 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %306, i32 0, i32 7
  %308 = load i32 (%struct.TYPE_7__*)*, i32 (%struct.TYPE_7__*)** %307, align 8
  %309 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %310 = call i32 %308(%struct.TYPE_7__* %309)
  store i32 %310, i32* %16, align 4
  %311 = load i32, i32* %16, align 4
  switch i32 %311, label %323 [
    i32 128, label %312
    i32 130, label %315
    i32 129, label %318
  ]

312:                                              ; preds = %305
  %313 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %314 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %313, i32 0, i32 8
  store i32 1, i32* %314, align 8
  br label %328

315:                                              ; preds = %305
  %316 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %317 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %316, i32 0, i32 8
  store i32 0, i32* %317, align 8
  br label %328

318:                                              ; preds = %305
  %319 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %320 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %319, i32 0, i32 8
  store i32 1, i32* %320, align 8
  %321 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %322 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %321, i32 0, i32 9
  store i32 1, i32* %322, align 4
  br label %328

323:                                              ; preds = %305
  %324 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %325 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %324, i32 0, i32 8
  store i32 1, i32* %325, align 8
  %326 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %327 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %326, i32 0, i32 9
  store i32 1, i32* %327, align 4
  br label %328

328:                                              ; preds = %323, %318, %315, %312
  %329 = load i32, i32* %17, align 4
  %330 = call i32 @MemoryContextSwitchTo(i32 %329)
  %331 = load i32, i32* %7, align 4
  %332 = call i32 @MemoryContextReset(i32 %331)
  br label %333

333:                                              ; preds = %328, %234, %84, %30
  ret void
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i64 @ginCompareItemPointers(i8**, i8**) #1

declare dso_local i32 @ItemPointerSetMax(i8**) #1

declare dso_local i32 @entryGetItem(i32*, %struct.TYPE_8__*, i8*, i32) #1

declare dso_local i32 @ItemPointerIsLossyPage(i8**) #1

declare dso_local i64 @GinItemPointerGetBlockNumber(i8**) #1

declare dso_local i32 @ItemPointerSet(i8**, i64, i32) #1

declare dso_local i64 @GinItemPointerGetOffsetNumber(i8**) #1

declare dso_local i32 @OffsetNumberPrev(i64) #1

declare dso_local i32 @ItemPointerSetLossyPage(i8**, i64) #1

declare dso_local i32 @MemoryContextSwitchTo(i32) #1

declare dso_local i32 @MemoryContextReset(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
