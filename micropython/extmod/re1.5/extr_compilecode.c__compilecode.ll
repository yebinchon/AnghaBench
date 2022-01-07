; ModuleID = '/home/carl/AnghaBench/micropython/extmod/re1.5/extr_compilecode.c__compilecode.c'
source_filename = "/home/carl/AnghaBench/micropython/extmod/re1.5/extr_compilecode.c__compilecode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i32, i32 }

@PC = common dso_local global i32 0, align 4
@NamedClass = common dso_local global i32 0, align 4
@Char = common dso_local global i32 0, align 4
@Any = common dso_local global i32 0, align 4
@ClassNot = common dso_local global i32 0, align 4
@Class = common dso_local global i32 0, align 4
@Save = common dso_local global i32 0, align 4
@RSplit = common dso_local global i32 0, align 4
@Split = common dso_local global i32 0, align 4
@Jmp = common dso_local global i32 0, align 4
@Bol = common dso_local global i32 0, align 4
@Eol = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, %struct.TYPE_3__*, i32)* @_compilecode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @_compilecode(i8* %0, %struct.TYPE_3__* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  br label %22

18:                                               ; preds = %3
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  br label %22

22:                                               ; preds = %18, %17
  %23 = phi i8* [ null, %17 ], [ %21, %18 ]
  store i8* %23, i8** %8, align 8
  %24 = load i32, i32* @PC, align 4
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* @PC, align 4
  store i32 %25, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %26

26:                                               ; preds = %461, %22
  %27 = load i8*, i8** %5, align 8
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %26
  %32 = load i8*, i8** %5, align 8
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp ne i32 %34, 41
  br label %36

36:                                               ; preds = %31, %26
  %37 = phi i1 [ false, %26 ], [ %35, %31 ]
  br i1 %37, label %38, label %464

38:                                               ; preds = %36
  %39 = load i8*, i8** %5, align 8
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  switch i32 %41, label %84 [
    i32 92, label %42
    i32 46, label %100
    i32 91, label %111
    i32 40, label %195
    i32 63, label %271
    i32 42, label %310
    i32 43, label %362
    i32 124, label %400
    i32 94, label %438
    i32 36, label %449
  ]

42:                                               ; preds = %38
  %43 = load i8*, i8** %5, align 8
  %44 = getelementptr inbounds i8, i8* %43, i32 1
  store i8* %44, i8** %5, align 8
  %45 = load i8*, i8** %5, align 8
  %46 = load i8, i8* %45, align 1
  %47 = icmp ne i8 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %42
  store i8* null, i8** %4, align 8
  br label %477

49:                                               ; preds = %42
  %50 = load i8*, i8** %5, align 8
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = or i32 %52, 32
  %54 = icmp eq i32 %53, 100
  br i1 %54, label %67, label %55

55:                                               ; preds = %49
  %56 = load i8*, i8** %5, align 8
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = or i32 %58, 32
  %60 = icmp eq i32 %59, 115
  br i1 %60, label %67, label %61

61:                                               ; preds = %55
  %62 = load i8*, i8** %5, align 8
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = or i32 %64, 32
  %66 = icmp eq i32 %65, 119
  br i1 %66, label %67, label %83

67:                                               ; preds = %61, %55, %49
  %68 = load i32, i32* @PC, align 4
  store i32 %68, i32* %10, align 4
  %69 = load i32, i32* @PC, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* @PC, align 4
  %71 = load i32, i32* @NamedClass, align 4
  %72 = trunc i32 %71 to i8
  %73 = call i32 @EMIT(i32 %69, i8 signext %72)
  %74 = load i32, i32* @PC, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* @PC, align 4
  %76 = load i8*, i8** %5, align 8
  %77 = load i8, i8* %76, align 1
  %78 = call i32 @EMIT(i32 %74, i8 signext %77)
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %80, align 8
  br label %460

83:                                               ; preds = %61
  br label %84

84:                                               ; preds = %38, %83
  %85 = load i32, i32* @PC, align 4
  store i32 %85, i32* %10, align 4
  %86 = load i32, i32* @PC, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* @PC, align 4
  %88 = load i32, i32* @Char, align 4
  %89 = trunc i32 %88 to i8
  %90 = call i32 @EMIT(i32 %86, i8 signext %89)
  %91 = load i32, i32* @PC, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* @PC, align 4
  %93 = load i8*, i8** %5, align 8
  %94 = load i8, i8* %93, align 1
  %95 = call i32 @EMIT(i32 %91, i8 signext %94)
  %96 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %97, align 8
  br label %460

100:                                              ; preds = %38
  %101 = load i32, i32* @PC, align 4
  store i32 %101, i32* %10, align 4
  %102 = load i32, i32* @PC, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* @PC, align 4
  %104 = load i32, i32* @Any, align 4
  %105 = trunc i32 %104 to i8
  %106 = call i32 @EMIT(i32 %102, i8 signext %105)
  %107 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %108, align 8
  br label %460

111:                                              ; preds = %38
  %112 = load i32, i32* @PC, align 4
  store i32 %112, i32* %10, align 4
  %113 = load i8*, i8** %5, align 8
  %114 = getelementptr inbounds i8, i8* %113, i32 1
  store i8* %114, i8** %5, align 8
  %115 = load i8*, i8** %5, align 8
  %116 = load i8, i8* %115, align 1
  %117 = sext i8 %116 to i32
  %118 = icmp eq i32 %117, 94
  br i1 %118, label %119, label %127

119:                                              ; preds = %111
  %120 = load i32, i32* @PC, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* @PC, align 4
  %122 = load i32, i32* @ClassNot, align 4
  %123 = trunc i32 %122 to i8
  %124 = call i32 @EMIT(i32 %120, i8 signext %123)
  %125 = load i8*, i8** %5, align 8
  %126 = getelementptr inbounds i8, i8* %125, i32 1
  store i8* %126, i8** %5, align 8
  br label %133

127:                                              ; preds = %111
  %128 = load i32, i32* @PC, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* @PC, align 4
  %130 = load i32, i32* @Class, align 4
  %131 = trunc i32 %130 to i8
  %132 = call i32 @EMIT(i32 %128, i8 signext %131)
  br label %133

133:                                              ; preds = %127, %119
  %134 = load i32, i32* @PC, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* @PC, align 4
  %136 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 8
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %137, align 8
  store i32 0, i32* %12, align 4
  br label %140

140:                                              ; preds = %184, %133
  %141 = load i8*, i8** %5, align 8
  %142 = load i8, i8* %141, align 1
  %143 = sext i8 %142 to i32
  %144 = icmp ne i32 %143, 93
  br i1 %144, label %145, label %189

145:                                              ; preds = %140
  %146 = load i8*, i8** %5, align 8
  %147 = load i8, i8* %146, align 1
  %148 = sext i8 %147 to i32
  %149 = icmp eq i32 %148, 92
  br i1 %149, label %150, label %153

150:                                              ; preds = %145
  %151 = load i8*, i8** %5, align 8
  %152 = getelementptr inbounds i8, i8* %151, i32 1
  store i8* %152, i8** %5, align 8
  br label %153

153:                                              ; preds = %150, %145
  %154 = load i8*, i8** %5, align 8
  %155 = load i8, i8* %154, align 1
  %156 = icmp ne i8 %155, 0
  br i1 %156, label %158, label %157

157:                                              ; preds = %153
  store i8* null, i8** %4, align 8
  br label %477

158:                                              ; preds = %153
  %159 = load i32, i32* @PC, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* @PC, align 4
  %161 = load i8*, i8** %5, align 8
  %162 = load i8, i8* %161, align 1
  %163 = call i32 @EMIT(i32 %159, i8 signext %162)
  %164 = load i8*, i8** %5, align 8
  %165 = getelementptr inbounds i8, i8* %164, i64 1
  %166 = load i8, i8* %165, align 1
  %167 = sext i8 %166 to i32
  %168 = icmp eq i32 %167, 45
  br i1 %168, label %169, label %178

169:                                              ; preds = %158
  %170 = load i8*, i8** %5, align 8
  %171 = getelementptr inbounds i8, i8* %170, i64 2
  %172 = load i8, i8* %171, align 1
  %173 = sext i8 %172 to i32
  %174 = icmp ne i32 %173, 93
  br i1 %174, label %175, label %178

175:                                              ; preds = %169
  %176 = load i8*, i8** %5, align 8
  %177 = getelementptr inbounds i8, i8* %176, i64 2
  store i8* %177, i8** %5, align 8
  br label %178

178:                                              ; preds = %175, %169, %158
  %179 = load i32, i32* @PC, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* @PC, align 4
  %181 = load i8*, i8** %5, align 8
  %182 = load i8, i8* %181, align 1
  %183 = call i32 @EMIT(i32 %179, i8 signext %182)
  br label %184

184:                                              ; preds = %178
  %185 = load i8*, i8** %5, align 8
  %186 = getelementptr inbounds i8, i8* %185, i32 1
  store i8* %186, i8** %5, align 8
  %187 = load i32, i32* %12, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %12, align 4
  br label %140

189:                                              ; preds = %140
  %190 = load i32, i32* %10, align 4
  %191 = add nsw i32 %190, 1
  %192 = load i32, i32* %12, align 4
  %193 = trunc i32 %192 to i8
  %194 = call i32 @EMIT(i32 %191, i8 signext %193)
  br label %460

195:                                              ; preds = %38
  %196 = load i32, i32* @PC, align 4
  store i32 %196, i32* %10, align 4
  store i32 0, i32* %13, align 4
  %197 = load i8*, i8** %5, align 8
  %198 = getelementptr inbounds i8, i8* %197, i64 1
  %199 = load i8, i8* %198, align 1
  %200 = sext i8 %199 to i32
  %201 = icmp ne i32 %200, 63
  br i1 %201, label %208, label %202

202:                                              ; preds = %195
  %203 = load i8*, i8** %5, align 8
  %204 = getelementptr inbounds i8, i8* %203, i64 2
  %205 = load i8, i8* %204, align 1
  %206 = sext i8 %205 to i32
  %207 = icmp ne i32 %206, 58
  br label %208

208:                                              ; preds = %202, %195
  %209 = phi i1 [ true, %195 ], [ %207, %202 ]
  %210 = zext i1 %209 to i32
  store i32 %210, i32* %14, align 4
  %211 = load i32, i32* %14, align 4
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %233

213:                                              ; preds = %208
  %214 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %215 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %214, i32 0, i32 2
  %216 = load i32, i32* %215, align 4
  %217 = add nsw i32 %216, 1
  store i32 %217, i32* %215, align 4
  store i32 %217, i32* %13, align 4
  %218 = load i32, i32* @PC, align 4
  %219 = add nsw i32 %218, 1
  store i32 %219, i32* @PC, align 4
  %220 = load i32, i32* @Save, align 4
  %221 = trunc i32 %220 to i8
  %222 = call i32 @EMIT(i32 %218, i8 signext %221)
  %223 = load i32, i32* @PC, align 4
  %224 = add nsw i32 %223, 1
  store i32 %224, i32* @PC, align 4
  %225 = load i32, i32* %13, align 4
  %226 = mul nsw i32 2, %225
  %227 = trunc i32 %226 to i8
  %228 = call i32 @EMIT(i32 %223, i8 signext %227)
  %229 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %230 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %229, i32 0, i32 1
  %231 = load i32, i32* %230, align 8
  %232 = add nsw i32 %231, 1
  store i32 %232, i32* %230, align 8
  br label %236

233:                                              ; preds = %208
  %234 = load i8*, i8** %5, align 8
  %235 = getelementptr inbounds i8, i8* %234, i64 2
  store i8* %235, i8** %5, align 8
  br label %236

236:                                              ; preds = %233, %213
  %237 = load i8*, i8** %5, align 8
  %238 = getelementptr inbounds i8, i8* %237, i64 1
  %239 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %240 = load i32, i32* %7, align 4
  %241 = call i8* @_compilecode(i8* %238, %struct.TYPE_3__* %239, i32 %240)
  store i8* %241, i8** %5, align 8
  %242 = load i8*, i8** %5, align 8
  %243 = icmp eq i8* %242, null
  br i1 %243, label %249, label %244

244:                                              ; preds = %236
  %245 = load i8*, i8** %5, align 8
  %246 = load i8, i8* %245, align 1
  %247 = sext i8 %246 to i32
  %248 = icmp ne i32 %247, 41
  br i1 %248, label %249, label %250

249:                                              ; preds = %244, %236
  store i8* null, i8** %4, align 8
  br label %477

250:                                              ; preds = %244
  %251 = load i32, i32* %14, align 4
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %253, label %270

253:                                              ; preds = %250
  %254 = load i32, i32* @PC, align 4
  %255 = add nsw i32 %254, 1
  store i32 %255, i32* @PC, align 4
  %256 = load i32, i32* @Save, align 4
  %257 = trunc i32 %256 to i8
  %258 = call i32 @EMIT(i32 %254, i8 signext %257)
  %259 = load i32, i32* @PC, align 4
  %260 = add nsw i32 %259, 1
  store i32 %260, i32* @PC, align 4
  %261 = load i32, i32* %13, align 4
  %262 = mul nsw i32 2, %261
  %263 = add nsw i32 %262, 1
  %264 = trunc i32 %263 to i8
  %265 = call i32 @EMIT(i32 %259, i8 signext %264)
  %266 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %267 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %266, i32 0, i32 1
  %268 = load i32, i32* %267, align 8
  %269 = add nsw i32 %268, 1
  store i32 %269, i32* %267, align 8
  br label %270

270:                                              ; preds = %253, %250
  br label %460

271:                                              ; preds = %38
  %272 = load i32, i32* @PC, align 4
  %273 = load i32, i32* %10, align 4
  %274 = icmp eq i32 %272, %273
  br i1 %274, label %275, label %276

275:                                              ; preds = %271
  store i8* null, i8** %4, align 8
  br label %477

276:                                              ; preds = %271
  %277 = load i32, i32* %10, align 4
  %278 = load i32, i32* @PC, align 4
  %279 = call i32 @INSERT_CODE(i32 %277, i32 2, i32 %278)
  %280 = load i8*, i8** %5, align 8
  %281 = getelementptr inbounds i8, i8* %280, i64 1
  %282 = load i8, i8* %281, align 1
  %283 = sext i8 %282 to i32
  %284 = icmp eq i32 %283, 63
  br i1 %284, label %285, label %292

285:                                              ; preds = %276
  %286 = load i32, i32* %10, align 4
  %287 = load i32, i32* @RSplit, align 4
  %288 = trunc i32 %287 to i8
  %289 = call i32 @EMIT(i32 %286, i8 signext %288)
  %290 = load i8*, i8** %5, align 8
  %291 = getelementptr inbounds i8, i8* %290, i32 1
  store i8* %291, i8** %5, align 8
  br label %297

292:                                              ; preds = %276
  %293 = load i32, i32* %10, align 4
  %294 = load i32, i32* @Split, align 4
  %295 = trunc i32 %294 to i8
  %296 = call i32 @EMIT(i32 %293, i8 signext %295)
  br label %297

297:                                              ; preds = %292, %285
  %298 = load i32, i32* %10, align 4
  %299 = add nsw i32 %298, 1
  %300 = load i32, i32* %10, align 4
  %301 = load i32, i32* @PC, align 4
  %302 = call i32 @REL(i32 %300, i32 %301)
  %303 = trunc i32 %302 to i8
  %304 = call i32 @EMIT(i32 %299, i8 signext %303)
  %305 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %306 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %305, i32 0, i32 1
  %307 = load i32, i32* %306, align 8
  %308 = add nsw i32 %307, 1
  store i32 %308, i32* %306, align 8
  %309 = load i32, i32* @PC, align 4
  store i32 %309, i32* %10, align 4
  br label %460

310:                                              ; preds = %38
  %311 = load i32, i32* @PC, align 4
  %312 = load i32, i32* %10, align 4
  %313 = icmp eq i32 %311, %312
  br i1 %313, label %314, label %315

314:                                              ; preds = %310
  store i8* null, i8** %4, align 8
  br label %477

315:                                              ; preds = %310
  %316 = load i32, i32* %10, align 4
  %317 = load i32, i32* @PC, align 4
  %318 = call i32 @INSERT_CODE(i32 %316, i32 2, i32 %317)
  %319 = load i32, i32* @PC, align 4
  %320 = load i32, i32* @Jmp, align 4
  %321 = trunc i32 %320 to i8
  %322 = call i32 @EMIT(i32 %319, i8 signext %321)
  %323 = load i32, i32* @PC, align 4
  %324 = add nsw i32 %323, 1
  %325 = load i32, i32* @PC, align 4
  %326 = load i32, i32* %10, align 4
  %327 = call i32 @REL(i32 %325, i32 %326)
  %328 = trunc i32 %327 to i8
  %329 = call i32 @EMIT(i32 %324, i8 signext %328)
  %330 = load i32, i32* @PC, align 4
  %331 = add nsw i32 %330, 2
  store i32 %331, i32* @PC, align 4
  %332 = load i8*, i8** %5, align 8
  %333 = getelementptr inbounds i8, i8* %332, i64 1
  %334 = load i8, i8* %333, align 1
  %335 = sext i8 %334 to i32
  %336 = icmp eq i32 %335, 63
  br i1 %336, label %337, label %344

337:                                              ; preds = %315
  %338 = load i32, i32* %10, align 4
  %339 = load i32, i32* @RSplit, align 4
  %340 = trunc i32 %339 to i8
  %341 = call i32 @EMIT(i32 %338, i8 signext %340)
  %342 = load i8*, i8** %5, align 8
  %343 = getelementptr inbounds i8, i8* %342, i32 1
  store i8* %343, i8** %5, align 8
  br label %349

344:                                              ; preds = %315
  %345 = load i32, i32* %10, align 4
  %346 = load i32, i32* @Split, align 4
  %347 = trunc i32 %346 to i8
  %348 = call i32 @EMIT(i32 %345, i8 signext %347)
  br label %349

349:                                              ; preds = %344, %337
  %350 = load i32, i32* %10, align 4
  %351 = add nsw i32 %350, 1
  %352 = load i32, i32* %10, align 4
  %353 = load i32, i32* @PC, align 4
  %354 = call i32 @REL(i32 %352, i32 %353)
  %355 = trunc i32 %354 to i8
  %356 = call i32 @EMIT(i32 %351, i8 signext %355)
  %357 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %358 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %357, i32 0, i32 1
  %359 = load i32, i32* %358, align 8
  %360 = add nsw i32 %359, 2
  store i32 %360, i32* %358, align 8
  %361 = load i32, i32* @PC, align 4
  store i32 %361, i32* %10, align 4
  br label %460

362:                                              ; preds = %38
  %363 = load i32, i32* @PC, align 4
  %364 = load i32, i32* %10, align 4
  %365 = icmp eq i32 %363, %364
  br i1 %365, label %366, label %367

366:                                              ; preds = %362
  store i8* null, i8** %4, align 8
  br label %477

367:                                              ; preds = %362
  %368 = load i8*, i8** %5, align 8
  %369 = getelementptr inbounds i8, i8* %368, i64 1
  %370 = load i8, i8* %369, align 1
  %371 = sext i8 %370 to i32
  %372 = icmp eq i32 %371, 63
  br i1 %372, label %373, label %380

373:                                              ; preds = %367
  %374 = load i32, i32* @PC, align 4
  %375 = load i32, i32* @Split, align 4
  %376 = trunc i32 %375 to i8
  %377 = call i32 @EMIT(i32 %374, i8 signext %376)
  %378 = load i8*, i8** %5, align 8
  %379 = getelementptr inbounds i8, i8* %378, i32 1
  store i8* %379, i8** %5, align 8
  br label %385

380:                                              ; preds = %367
  %381 = load i32, i32* @PC, align 4
  %382 = load i32, i32* @RSplit, align 4
  %383 = trunc i32 %382 to i8
  %384 = call i32 @EMIT(i32 %381, i8 signext %383)
  br label %385

385:                                              ; preds = %380, %373
  %386 = load i32, i32* @PC, align 4
  %387 = add nsw i32 %386, 1
  %388 = load i32, i32* @PC, align 4
  %389 = load i32, i32* %10, align 4
  %390 = call i32 @REL(i32 %388, i32 %389)
  %391 = trunc i32 %390 to i8
  %392 = call i32 @EMIT(i32 %387, i8 signext %391)
  %393 = load i32, i32* @PC, align 4
  %394 = add nsw i32 %393, 2
  store i32 %394, i32* @PC, align 4
  %395 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %396 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %395, i32 0, i32 1
  %397 = load i32, i32* %396, align 8
  %398 = add nsw i32 %397, 1
  store i32 %398, i32* %396, align 8
  %399 = load i32, i32* @PC, align 4
  store i32 %399, i32* %10, align 4
  br label %460

400:                                              ; preds = %38
  %401 = load i32, i32* %11, align 4
  %402 = icmp ne i32 %401, 0
  br i1 %402, label %403, label %411

403:                                              ; preds = %400
  %404 = load i32, i32* %11, align 4
  %405 = load i32, i32* %11, align 4
  %406 = load i32, i32* @PC, align 4
  %407 = call i32 @REL(i32 %405, i32 %406)
  %408 = add nsw i32 %407, 1
  %409 = trunc i32 %408 to i8
  %410 = call i32 @EMIT(i32 %404, i8 signext %409)
  br label %411

411:                                              ; preds = %403, %400
  %412 = load i32, i32* %9, align 4
  %413 = load i32, i32* @PC, align 4
  %414 = call i32 @INSERT_CODE(i32 %412, i32 2, i32 %413)
  %415 = load i32, i32* @PC, align 4
  %416 = add nsw i32 %415, 1
  store i32 %416, i32* @PC, align 4
  %417 = load i32, i32* @Jmp, align 4
  %418 = trunc i32 %417 to i8
  %419 = call i32 @EMIT(i32 %415, i8 signext %418)
  %420 = load i32, i32* @PC, align 4
  %421 = add nsw i32 %420, 1
  store i32 %421, i32* @PC, align 4
  store i32 %420, i32* %11, align 4
  %422 = load i32, i32* %9, align 4
  %423 = load i32, i32* @Split, align 4
  %424 = trunc i32 %423 to i8
  %425 = call i32 @EMIT(i32 %422, i8 signext %424)
  %426 = load i32, i32* %9, align 4
  %427 = add nsw i32 %426, 1
  %428 = load i32, i32* %9, align 4
  %429 = load i32, i32* @PC, align 4
  %430 = call i32 @REL(i32 %428, i32 %429)
  %431 = trunc i32 %430 to i8
  %432 = call i32 @EMIT(i32 %427, i8 signext %431)
  %433 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %434 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %433, i32 0, i32 1
  %435 = load i32, i32* %434, align 8
  %436 = add nsw i32 %435, 2
  store i32 %436, i32* %434, align 8
  %437 = load i32, i32* @PC, align 4
  store i32 %437, i32* %10, align 4
  br label %460

438:                                              ; preds = %38
  %439 = load i32, i32* @PC, align 4
  %440 = add nsw i32 %439, 1
  store i32 %440, i32* @PC, align 4
  %441 = load i32, i32* @Bol, align 4
  %442 = trunc i32 %441 to i8
  %443 = call i32 @EMIT(i32 %439, i8 signext %442)
  %444 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %445 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %444, i32 0, i32 1
  %446 = load i32, i32* %445, align 8
  %447 = add nsw i32 %446, 1
  store i32 %447, i32* %445, align 8
  %448 = load i32, i32* @PC, align 4
  store i32 %448, i32* %10, align 4
  br label %460

449:                                              ; preds = %38
  %450 = load i32, i32* @PC, align 4
  %451 = add nsw i32 %450, 1
  store i32 %451, i32* @PC, align 4
  %452 = load i32, i32* @Eol, align 4
  %453 = trunc i32 %452 to i8
  %454 = call i32 @EMIT(i32 %450, i8 signext %453)
  %455 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %456 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %455, i32 0, i32 1
  %457 = load i32, i32* %456, align 8
  %458 = add nsw i32 %457, 1
  store i32 %458, i32* %456, align 8
  %459 = load i32, i32* @PC, align 4
  store i32 %459, i32* %10, align 4
  br label %460

460:                                              ; preds = %449, %438, %411, %385, %349, %297, %270, %189, %100, %84, %67
  br label %461

461:                                              ; preds = %460
  %462 = load i8*, i8** %5, align 8
  %463 = getelementptr inbounds i8, i8* %462, i32 1
  store i8* %463, i8** %5, align 8
  br label %26

464:                                              ; preds = %36
  %465 = load i32, i32* %11, align 4
  %466 = icmp ne i32 %465, 0
  br i1 %466, label %467, label %475

467:                                              ; preds = %464
  %468 = load i32, i32* %11, align 4
  %469 = load i32, i32* %11, align 4
  %470 = load i32, i32* @PC, align 4
  %471 = call i32 @REL(i32 %469, i32 %470)
  %472 = add nsw i32 %471, 1
  %473 = trunc i32 %472 to i8
  %474 = call i32 @EMIT(i32 %468, i8 signext %473)
  br label %475

475:                                              ; preds = %467, %464
  %476 = load i8*, i8** %5, align 8
  store i8* %476, i8** %4, align 8
  br label %477

477:                                              ; preds = %475, %366, %314, %275, %249, %157, %48
  %478 = load i8*, i8** %4, align 8
  ret i8* %478
}

declare dso_local i32 @EMIT(i32, i8 signext) #1

declare dso_local i32 @INSERT_CODE(i32, i32, i32) #1

declare dso_local i32 @REL(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
