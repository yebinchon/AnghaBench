; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/gin/extr_ginget.c_entryGetItem.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/gin/extr_ginget.c_entryGetItem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i64, i64, i32*, i32, i32, %struct.TYPE_7__*, i32*, i64 }
%struct.TYPE_7__ = type { i64, i64, i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_6__*, i32, i32)* @entryGetItem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @entryGetItem(i32* %0, %struct.TYPE_6__* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  %18 = call i32 @Assert(i32 %17)
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 5
  %21 = call i32 @ItemPointerIsValid(i32* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %4
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 5
  %26 = call i64 @ginCompareItemPointers(i32* %25, i32* %7)
  %27 = icmp sle i64 %26, 0
  br label %28

28:                                               ; preds = %23, %4
  %29 = phi i1 [ true, %4 ], [ %27, %23 ]
  %30 = zext i1 %29 to i32
  %31 = call i32 @Assert(i32 %30)
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 9
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %225

36:                                               ; preds = %28
  %37 = call i64 @GinItemPointerGetBlockNumber(i32* %7)
  store i64 %37, i64* %9, align 8
  %38 = call i64 @GinItemPointerGetOffsetNumber(i32* %7)
  store i64 %38, i64* %10, align 8
  store i32 0, i32* %11, align 4
  br label %39

39:                                               ; preds = %222, %36
  br label %40

40:                                               ; preds = %108, %39
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 7
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %42, align 8
  %44 = icmp eq %struct.TYPE_7__* %43, null
  br i1 %44, label %83, label %45

45:                                               ; preds = %40
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 7
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp uge i64 %50, 0
  br i1 %51, label %52, label %62

52:                                               ; preds = %45
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 7
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp uge i64 %55, %60
  br i1 %61, label %83, label %62

62:                                               ; preds = %52, %45
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 7
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* %9, align 8
  %69 = icmp slt i64 %67, %68
  br i1 %69, label %83, label %70

70:                                               ; preds = %62
  %71 = call i64 @ItemPointerIsLossyPage(i32* %7)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %81

73:                                               ; preds = %70
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 7
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* %9, align 8
  %80 = icmp eq i64 %78, %79
  br label %81

81:                                               ; preds = %73, %70
  %82 = phi i1 [ false, %70 ], [ %80, %73 ]
  br label %83

83:                                               ; preds = %81, %62, %52, %40
  %84 = phi i1 [ true, %62 ], [ true, %52 ], [ true, %40 ], [ %82, %81 ]
  br i1 %84, label %85, label %111

85:                                               ; preds = %83
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 8
  %88 = load i32*, i32** %87, align 8
  %89 = call %struct.TYPE_7__* @tbm_iterate(i32* %88)
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 7
  store %struct.TYPE_7__* %89, %struct.TYPE_7__** %91, align 8
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 7
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %93, align 8
  %95 = icmp eq %struct.TYPE_7__* %94, null
  br i1 %95, label %96, label %108

96:                                               ; preds = %85
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 5
  %99 = call i32 @ItemPointerSetInvalid(i32* %98)
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 8
  %102 = load i32*, i32** %101, align 8
  %103 = call i32 @tbm_end_iterate(i32* %102)
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 8
  store i32* null, i32** %105, align 8
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 0
  store i32 1, i32* %107, align 8
  br label %111

108:                                              ; preds = %85
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 2
  store i64 0, i64* %110, align 8
  br label %40

111:                                              ; preds = %96, %83
  %112 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %111
  br label %224

117:                                              ; preds = %111
  %118 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 7
  %120 = load %struct.TYPE_7__*, %struct.TYPE_7__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = icmp ult i64 %122, 0
  br i1 %123, label %124, label %133

124:                                              ; preds = %117
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 5
  %127 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 7
  %129 = load %struct.TYPE_7__*, %struct.TYPE_7__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  %132 = call i32 @ItemPointerSetLossyPage(i32* %126, i64 %131)
  store i32 1, i32* %11, align 4
  br label %224

133:                                              ; preds = %117
  %134 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 7
  %136 = load %struct.TYPE_7__*, %struct.TYPE_7__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %136, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  %139 = load i64, i64* %9, align 8
  %140 = icmp eq i64 %138, %139
  br i1 %140, label %141, label %185

141:                                              ; preds = %133
  %142 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i32 0, i32 7
  %144 = load %struct.TYPE_7__*, %struct.TYPE_7__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %144, i32 0, i32 2
  %146 = load i64*, i64** %145, align 8
  %147 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %148 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %147, i32 0, i32 7
  %149 = load %struct.TYPE_7__*, %struct.TYPE_7__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = sub i64 %151, 1
  %153 = getelementptr inbounds i64, i64* %146, i64 %152
  %154 = load i64, i64* %153, align 8
  %155 = load i64, i64* %10, align 8
  %156 = icmp sle i64 %154, %155
  br i1 %156, label %157, label %165

157:                                              ; preds = %141
  %158 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %159 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %158, i32 0, i32 7
  %160 = load %struct.TYPE_7__*, %struct.TYPE_7__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %164 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %163, i32 0, i32 2
  store i64 %162, i64* %164, align 8
  br label %208

165:                                              ; preds = %141
  br label %166

166:                                              ; preds = %179, %165
  %167 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %168 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %167, i32 0, i32 7
  %169 = load %struct.TYPE_7__*, %struct.TYPE_7__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %169, i32 0, i32 2
  %171 = load i64*, i64** %170, align 8
  %172 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %173 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %172, i32 0, i32 2
  %174 = load i64, i64* %173, align 8
  %175 = getelementptr inbounds i64, i64* %171, i64 %174
  %176 = load i64, i64* %175, align 8
  %177 = load i64, i64* %10, align 8
  %178 = icmp sle i64 %176, %177
  br i1 %178, label %179, label %184

179:                                              ; preds = %166
  %180 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %181 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %180, i32 0, i32 2
  %182 = load i64, i64* %181, align 8
  %183 = add i64 %182, 1
  store i64 %183, i64* %181, align 8
  br label %166

184:                                              ; preds = %166
  br label %185

185:                                              ; preds = %184, %133
  %186 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %187 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %186, i32 0, i32 5
  %188 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %189 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %188, i32 0, i32 7
  %190 = load %struct.TYPE_7__*, %struct.TYPE_7__** %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %190, i32 0, i32 1
  %192 = load i64, i64* %191, align 8
  %193 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %194 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %193, i32 0, i32 7
  %195 = load %struct.TYPE_7__*, %struct.TYPE_7__** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %195, i32 0, i32 2
  %197 = load i64*, i64** %196, align 8
  %198 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %199 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %198, i32 0, i32 2
  %200 = load i64, i64* %199, align 8
  %201 = getelementptr inbounds i64, i64* %197, i64 %200
  %202 = load i64, i64* %201, align 8
  %203 = call i32 @ItemPointerSet(i32* %187, i64 %192, i64 %202)
  %204 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %205 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %204, i32 0, i32 2
  %206 = load i64, i64* %205, align 8
  %207 = add i64 %206, 1
  store i64 %207, i64* %205, align 8
  store i32 1, i32* %11, align 4
  br label %208

208:                                              ; preds = %185, %157
  %209 = load i32, i32* %11, align 4
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %222

211:                                              ; preds = %208
  %212 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %213 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %212, i32 0, i32 1
  %214 = load i32, i32* %213, align 4
  %215 = icmp eq i32 %214, 1
  br i1 %215, label %216, label %220

216:                                              ; preds = %211
  %217 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %218 = call i64 @dropItem(%struct.TYPE_6__* %217)
  %219 = icmp ne i64 %218, 0
  br label %220

220:                                              ; preds = %216, %211
  %221 = phi i1 [ false, %211 ], [ %219, %216 ]
  br label %222

222:                                              ; preds = %220, %208
  %223 = phi i1 [ true, %208 ], [ %221, %220 ]
  br i1 %223, label %39, label %224

224:                                              ; preds = %222, %124, %116
  br label %321

225:                                              ; preds = %28
  %226 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %227 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %226, i32 0, i32 6
  %228 = load i32, i32* %227, align 4
  %229 = call i32 @BufferIsValid(i32 %228)
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %264, label %231

231:                                              ; preds = %225
  br label %232

232:                                              ; preds = %258, %231
  %233 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %234 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %233, i32 0, i32 2
  %235 = load i64, i64* %234, align 8
  %236 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %237 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %236, i32 0, i32 3
  %238 = load i64, i64* %237, align 8
  %239 = icmp uge i64 %235, %238
  br i1 %239, label %240, label %246

240:                                              ; preds = %232
  %241 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %242 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %241, i32 0, i32 5
  %243 = call i32 @ItemPointerSetInvalid(i32* %242)
  %244 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %245 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %244, i32 0, i32 0
  store i32 1, i32* %245, align 8
  br label %263

246:                                              ; preds = %232
  %247 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %248 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %247, i32 0, i32 4
  %249 = load i32*, i32** %248, align 8
  %250 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %251 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %250, i32 0, i32 2
  %252 = load i64, i64* %251, align 8
  %253 = add i64 %252, 1
  store i64 %253, i64* %251, align 8
  %254 = getelementptr inbounds i32, i32* %249, i64 %252
  %255 = load i32, i32* %254, align 4
  %256 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %257 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %256, i32 0, i32 5
  store i32 %255, i32* %257, align 8
  br label %258

258:                                              ; preds = %246
  %259 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %260 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %259, i32 0, i32 5
  %261 = call i64 @ginCompareItemPointers(i32* %260, i32* %7)
  %262 = icmp sle i64 %261, 0
  br i1 %262, label %232, label %263

263:                                              ; preds = %258, %240
  br label %320

264:                                              ; preds = %225
  br label %265

265:                                              ; preds = %317, %264
  br label %266

266:                                              ; preds = %288, %265
  %267 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %268 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %267, i32 0, i32 2
  %269 = load i64, i64* %268, align 8
  %270 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %271 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %270, i32 0, i32 3
  %272 = load i64, i64* %271, align 8
  %273 = icmp uge i64 %269, %272
  br i1 %273, label %274, label %289

274:                                              ; preds = %266
  %275 = load i32*, i32** %5, align 8
  %276 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %277 = load i32, i32* %7, align 4
  %278 = load i32, i32* %8, align 4
  %279 = call i32 @entryLoadMoreItems(i32* %275, %struct.TYPE_6__* %276, i32 %277, i32 %278)
  %280 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %281 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %280, i32 0, i32 0
  %282 = load i32, i32* %281, align 8
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %284, label %288

284:                                              ; preds = %274
  %285 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %286 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %285, i32 0, i32 5
  %287 = call i32 @ItemPointerSetInvalid(i32* %286)
  br label %321

288:                                              ; preds = %274
  br label %266

289:                                              ; preds = %266
  %290 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %291 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %290, i32 0, i32 4
  %292 = load i32*, i32** %291, align 8
  %293 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %294 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %293, i32 0, i32 2
  %295 = load i64, i64* %294, align 8
  %296 = add i64 %295, 1
  store i64 %296, i64* %294, align 8
  %297 = getelementptr inbounds i32, i32* %292, i64 %295
  %298 = load i32, i32* %297, align 4
  %299 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %300 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %299, i32 0, i32 5
  store i32 %298, i32* %300, align 8
  br label %301

301:                                              ; preds = %289
  %302 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %303 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %302, i32 0, i32 5
  %304 = call i64 @ginCompareItemPointers(i32* %303, i32* %7)
  %305 = icmp sle i64 %304, 0
  br i1 %305, label %317, label %306

306:                                              ; preds = %301
  %307 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %308 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %307, i32 0, i32 1
  %309 = load i32, i32* %308, align 4
  %310 = icmp eq i32 %309, 1
  br i1 %310, label %311, label %315

311:                                              ; preds = %306
  %312 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %313 = call i64 @dropItem(%struct.TYPE_6__* %312)
  %314 = icmp ne i64 %313, 0
  br label %315

315:                                              ; preds = %311, %306
  %316 = phi i1 [ false, %306 ], [ %314, %311 ]
  br label %317

317:                                              ; preds = %315, %301
  %318 = phi i1 [ true, %301 ], [ %316, %315 ]
  br i1 %318, label %265, label %319

319:                                              ; preds = %317
  br label %320

320:                                              ; preds = %319, %263
  br label %321

321:                                              ; preds = %284, %320, %224
  ret void
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @ItemPointerIsValid(i32*) #1

declare dso_local i64 @ginCompareItemPointers(i32*, i32*) #1

declare dso_local i64 @GinItemPointerGetBlockNumber(i32*) #1

declare dso_local i64 @GinItemPointerGetOffsetNumber(i32*) #1

declare dso_local i64 @ItemPointerIsLossyPage(i32*) #1

declare dso_local %struct.TYPE_7__* @tbm_iterate(i32*) #1

declare dso_local i32 @ItemPointerSetInvalid(i32*) #1

declare dso_local i32 @tbm_end_iterate(i32*) #1

declare dso_local i32 @ItemPointerSetLossyPage(i32*, i64) #1

declare dso_local i32 @ItemPointerSet(i32*, i64, i64) #1

declare dso_local i64 @dropItem(%struct.TYPE_6__*) #1

declare dso_local i32 @BufferIsValid(i32) #1

declare dso_local i32 @entryLoadMoreItems(i32*, %struct.TYPE_6__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
