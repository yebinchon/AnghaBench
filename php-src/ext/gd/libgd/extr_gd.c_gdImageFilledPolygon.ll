; ModuleID = '/home/carl/AnghaBench/php-src/ext/gd/libgd/extr_gd.c_gdImageFilledPolygon.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/gd/libgd/extr_gd.c_gdImageFilledPolygon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i32* }
%struct.TYPE_9__ = type { i32, i32 }

@gdAntiAliased = common dso_local global i32 0, align 4
@gdCompareInt = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gdImageFilledPolygon(%struct.TYPE_10__* %0, %struct.TYPE_9__* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp sle i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %4
  br label %408

25:                                               ; preds = %4
  %26 = load i32, i32* %7, align 4
  %27 = call i64 @overflow2(i32 4, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  br label %408

30:                                               ; preds = %25
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* @gdAntiAliased, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %30
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  store i32 %37, i32* %21, align 4
  br label %40

38:                                               ; preds = %30
  %39 = load i32, i32* %8, align 4
  store i32 %39, i32* %21, align 4
  br label %40

40:                                               ; preds = %38, %34
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %57, label %45

45:                                               ; preds = %40
  %46 = load i32, i32* %7, align 4
  %47 = sext i32 %46 to i64
  %48 = mul i64 4, %47
  %49 = trunc i64 %48 to i32
  %50 = call i64 @gdMalloc(i32 %49)
  %51 = inttoptr i64 %50 to i32*
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 2
  store i32* %51, i32** %53, align 8
  %54 = load i32, i32* %7, align 4
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 4
  br label %57

57:                                               ; preds = %45, %40
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %7, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %63, label %96

63:                                               ; preds = %57
  br label %64

64:                                               ; preds = %70, %63
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %7, align 4
  %69 = icmp slt i32 %67, %68
  br i1 %69, label %70, label %75

70:                                               ; preds = %64
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = mul nsw i32 %73, 2
  store i32 %74, i32* %72, align 4
  br label %64

75:                                               ; preds = %64
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = call i64 @overflow2(i32 4, i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %75
  br label %408

82:                                               ; preds = %75
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 2
  %85 = load i32*, i32** %84, align 8
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = sext i32 %88 to i64
  %90 = mul i64 4, %89
  %91 = trunc i64 %90 to i32
  %92 = call i64 @gdRealloc(i32* %85, i32 %91)
  %93 = inttoptr i64 %92 to i32*
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 2
  store i32* %93, i32** %95, align 8
  br label %96

96:                                               ; preds = %82, %57
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i64 0
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  store i32 %100, i32* %11, align 4
  %101 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i64 0
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  store i32 %104, i32* %12, align 4
  store i32 1, i32* %9, align 4
  br label %105

105:                                              ; preds = %142, %96
  %106 = load i32, i32* %9, align 4
  %107 = load i32, i32* %7, align 4
  %108 = icmp slt i32 %106, %107
  br i1 %108, label %109, label %145

109:                                              ; preds = %105
  %110 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %111 = load i32, i32* %9, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* %11, align 4
  %117 = icmp slt i32 %115, %116
  br i1 %117, label %118, label %125

118:                                              ; preds = %109
  %119 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %120 = load i32, i32* %9, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %119, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  store i32 %124, i32* %11, align 4
  br label %125

125:                                              ; preds = %118, %109
  %126 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %127 = load i32, i32* %9, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %126, i64 %128
  %130 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* %12, align 4
  %133 = icmp sgt i32 %131, %132
  br i1 %133, label %134, label %141

134:                                              ; preds = %125
  %135 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %136 = load i32, i32* %9, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %135, i64 %137
  %139 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  store i32 %140, i32* %12, align 4
  br label %141

141:                                              ; preds = %134, %125
  br label %142

142:                                              ; preds = %141
  %143 = load i32, i32* %9, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %9, align 4
  br label %105

145:                                              ; preds = %105
  %146 = load i32, i32* %7, align 4
  %147 = icmp sgt i32 %146, 1
  br i1 %147, label %148, label %206

148:                                              ; preds = %145
  %149 = load i32, i32* %11, align 4
  %150 = load i32, i32* %12, align 4
  %151 = icmp eq i32 %149, %150
  br i1 %151, label %152, label %206

152:                                              ; preds = %148
  %153 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %154 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %153, i64 0
  %155 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  store i32 %156, i32* %16, align 4
  store i32 %156, i32* %14, align 4
  store i32 1, i32* %9, align 4
  br label %157

157:                                              ; preds = %195, %152
  %158 = load i32, i32* %9, align 4
  %159 = load i32, i32* %7, align 4
  %160 = icmp slt i32 %158, %159
  br i1 %160, label %161, label %198

161:                                              ; preds = %157
  %162 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %163 = load i32, i32* %9, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %162, i64 %164
  %166 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = load i32, i32* %14, align 4
  %169 = icmp slt i32 %167, %168
  br i1 %169, label %170, label %177

170:                                              ; preds = %161
  %171 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %172 = load i32, i32* %9, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %171, i64 %173
  %175 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  store i32 %176, i32* %14, align 4
  br label %194

177:                                              ; preds = %161
  %178 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %179 = load i32, i32* %9, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %178, i64 %180
  %182 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = load i32, i32* %16, align 4
  %185 = icmp sgt i32 %183, %184
  br i1 %185, label %186, label %193

186:                                              ; preds = %177
  %187 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %188 = load i32, i32* %9, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %187, i64 %189
  %191 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 4
  store i32 %192, i32* %16, align 4
  br label %193

193:                                              ; preds = %186, %177
  br label %194

194:                                              ; preds = %193, %170
  br label %195

195:                                              ; preds = %194
  %196 = load i32, i32* %9, align 4
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* %9, align 4
  br label %157

198:                                              ; preds = %157
  %199 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %200 = load i32, i32* %14, align 4
  %201 = load i32, i32* %11, align 4
  %202 = load i32, i32* %16, align 4
  %203 = load i32, i32* %11, align 4
  %204 = load i32, i32* %8, align 4
  %205 = call i32 @gdImageLine(%struct.TYPE_10__* %199, i32 %200, i32 %201, i32 %202, i32 %203, i32 %204)
  br label %408

206:                                              ; preds = %148, %145
  %207 = load i32, i32* %12, align 4
  store i32 %207, i32* %13, align 4
  %208 = load i32, i32* %11, align 4
  %209 = icmp slt i32 %208, 0
  br i1 %209, label %210, label %211

210:                                              ; preds = %206
  store i32 0, i32* %11, align 4
  br label %211

211:                                              ; preds = %210, %206
  %212 = load i32, i32* %12, align 4
  %213 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %214 = call i32 @gdImageSY(%struct.TYPE_10__* %213)
  %215 = icmp sge i32 %212, %214
  br i1 %215, label %216, label %220

216:                                              ; preds = %211
  %217 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %218 = call i32 @gdImageSY(%struct.TYPE_10__* %217)
  %219 = sub nsw i32 %218, 1
  store i32 %219, i32* %12, align 4
  br label %220

220:                                              ; preds = %216, %211
  %221 = load i32, i32* %11, align 4
  store i32 %221, i32* %10, align 4
  br label %222

222:                                              ; preds = %395, %220
  %223 = load i32, i32* %10, align 4
  %224 = load i32, i32* %12, align 4
  %225 = icmp sle i32 %223, %224
  br i1 %225, label %226, label %398

226:                                              ; preds = %222
  store i32 0, i32* %20, align 4
  store i32 0, i32* %9, align 4
  br label %227

227:                                              ; preds = %355, %226
  %228 = load i32, i32* %9, align 4
  %229 = load i32, i32* %7, align 4
  %230 = icmp slt i32 %228, %229
  br i1 %230, label %231, label %358

231:                                              ; preds = %227
  %232 = load i32, i32* %9, align 4
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %237, label %234

234:                                              ; preds = %231
  %235 = load i32, i32* %7, align 4
  %236 = sub nsw i32 %235, 1
  store i32 %236, i32* %18, align 4
  store i32 0, i32* %19, align 4
  br label %241

237:                                              ; preds = %231
  %238 = load i32, i32* %9, align 4
  %239 = sub nsw i32 %238, 1
  store i32 %239, i32* %18, align 4
  %240 = load i32, i32* %9, align 4
  store i32 %240, i32* %19, align 4
  br label %241

241:                                              ; preds = %237, %234
  %242 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %243 = load i32, i32* %18, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %242, i64 %244
  %246 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 4
  store i32 %247, i32* %15, align 4
  %248 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %249 = load i32, i32* %19, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %248, i64 %250
  %252 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 4
  store i32 %253, i32* %17, align 4
  %254 = load i32, i32* %15, align 4
  %255 = load i32, i32* %17, align 4
  %256 = icmp slt i32 %254, %255
  br i1 %256, label %257, label %270

257:                                              ; preds = %241
  %258 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %259 = load i32, i32* %18, align 4
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %258, i64 %260
  %262 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %261, i32 0, i32 1
  %263 = load i32, i32* %262, align 4
  store i32 %263, i32* %14, align 4
  %264 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %265 = load i32, i32* %19, align 4
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %264, i64 %266
  %268 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %267, i32 0, i32 1
  %269 = load i32, i32* %268, align 4
  store i32 %269, i32* %16, align 4
  br label %301

270:                                              ; preds = %241
  %271 = load i32, i32* %15, align 4
  %272 = load i32, i32* %17, align 4
  %273 = icmp sgt i32 %271, %272
  br i1 %273, label %274, label %299

274:                                              ; preds = %270
  %275 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %276 = load i32, i32* %18, align 4
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %275, i64 %277
  %279 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %278, i32 0, i32 0
  %280 = load i32, i32* %279, align 4
  store i32 %280, i32* %17, align 4
  %281 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %282 = load i32, i32* %19, align 4
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %281, i64 %283
  %285 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %284, i32 0, i32 0
  %286 = load i32, i32* %285, align 4
  store i32 %286, i32* %15, align 4
  %287 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %288 = load i32, i32* %18, align 4
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %287, i64 %289
  %291 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %290, i32 0, i32 1
  %292 = load i32, i32* %291, align 4
  store i32 %292, i32* %16, align 4
  %293 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %294 = load i32, i32* %19, align 4
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %293, i64 %295
  %297 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %296, i32 0, i32 1
  %298 = load i32, i32* %297, align 4
  store i32 %298, i32* %14, align 4
  br label %300

299:                                              ; preds = %270
  br label %355

300:                                              ; preds = %274
  br label %301

301:                                              ; preds = %300, %257
  %302 = load i32, i32* %10, align 4
  %303 = load i32, i32* %15, align 4
  %304 = icmp sge i32 %302, %303
  br i1 %304, label %305, label %336

305:                                              ; preds = %301
  %306 = load i32, i32* %10, align 4
  %307 = load i32, i32* %17, align 4
  %308 = icmp slt i32 %306, %307
  br i1 %308, label %309, label %336

309:                                              ; preds = %305
  %310 = load i32, i32* %10, align 4
  %311 = load i32, i32* %15, align 4
  %312 = sub nsw i32 %310, %311
  %313 = load i32, i32* %16, align 4
  %314 = load i32, i32* %14, align 4
  %315 = sub nsw i32 %313, %314
  %316 = mul nsw i32 %312, %315
  %317 = sitofp i32 %316 to float
  %318 = load i32, i32* %17, align 4
  %319 = load i32, i32* %15, align 4
  %320 = sub nsw i32 %318, %319
  %321 = sitofp i32 %320 to float
  %322 = fdiv float %317, %321
  %323 = fpext float %322 to double
  %324 = fadd double %323, 5.000000e-01
  %325 = load i32, i32* %14, align 4
  %326 = sitofp i32 %325 to double
  %327 = fadd double %324, %326
  %328 = fptosi double %327 to i32
  %329 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %330 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %329, i32 0, i32 2
  %331 = load i32*, i32** %330, align 8
  %332 = load i32, i32* %20, align 4
  %333 = add nsw i32 %332, 1
  store i32 %333, i32* %20, align 4
  %334 = sext i32 %332 to i64
  %335 = getelementptr inbounds i32, i32* %331, i64 %334
  store i32 %328, i32* %335, align 4
  br label %354

336:                                              ; preds = %305, %301
  %337 = load i32, i32* %10, align 4
  %338 = load i32, i32* %13, align 4
  %339 = icmp eq i32 %337, %338
  br i1 %339, label %340, label %353

340:                                              ; preds = %336
  %341 = load i32, i32* %10, align 4
  %342 = load i32, i32* %17, align 4
  %343 = icmp eq i32 %341, %342
  br i1 %343, label %344, label %353

344:                                              ; preds = %340
  %345 = load i32, i32* %16, align 4
  %346 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %347 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %346, i32 0, i32 2
  %348 = load i32*, i32** %347, align 8
  %349 = load i32, i32* %20, align 4
  %350 = add nsw i32 %349, 1
  store i32 %350, i32* %20, align 4
  %351 = sext i32 %349 to i64
  %352 = getelementptr inbounds i32, i32* %348, i64 %351
  store i32 %345, i32* %352, align 4
  br label %353

353:                                              ; preds = %344, %340, %336
  br label %354

354:                                              ; preds = %353, %309
  br label %355

355:                                              ; preds = %354, %299
  %356 = load i32, i32* %9, align 4
  %357 = add nsw i32 %356, 1
  store i32 %357, i32* %9, align 4
  br label %227

358:                                              ; preds = %227
  %359 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %360 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %359, i32 0, i32 2
  %361 = load i32*, i32** %360, align 8
  %362 = load i32, i32* %20, align 4
  %363 = load i32, i32* @gdCompareInt, align 4
  %364 = call i32 @qsort(i32* %361, i32 %362, i32 4, i32 %363)
  store i32 0, i32* %9, align 4
  br label %365

365:                                              ; preds = %391, %358
  %366 = load i32, i32* %9, align 4
  %367 = load i32, i32* %20, align 4
  %368 = sub nsw i32 %367, 1
  %369 = icmp slt i32 %366, %368
  br i1 %369, label %370, label %394

370:                                              ; preds = %365
  %371 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %372 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %373 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %372, i32 0, i32 2
  %374 = load i32*, i32** %373, align 8
  %375 = load i32, i32* %9, align 4
  %376 = sext i32 %375 to i64
  %377 = getelementptr inbounds i32, i32* %374, i64 %376
  %378 = load i32, i32* %377, align 4
  %379 = load i32, i32* %10, align 4
  %380 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %381 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %380, i32 0, i32 2
  %382 = load i32*, i32** %381, align 8
  %383 = load i32, i32* %9, align 4
  %384 = add nsw i32 %383, 1
  %385 = sext i32 %384 to i64
  %386 = getelementptr inbounds i32, i32* %382, i64 %385
  %387 = load i32, i32* %386, align 4
  %388 = load i32, i32* %10, align 4
  %389 = load i32, i32* %21, align 4
  %390 = call i32 @gdImageLine(%struct.TYPE_10__* %371, i32 %378, i32 %379, i32 %387, i32 %388, i32 %389)
  br label %391

391:                                              ; preds = %370
  %392 = load i32, i32* %9, align 4
  %393 = add nsw i32 %392, 2
  store i32 %393, i32* %9, align 4
  br label %365

394:                                              ; preds = %365
  br label %395

395:                                              ; preds = %394
  %396 = load i32, i32* %10, align 4
  %397 = add nsw i32 %396, 1
  store i32 %397, i32* %10, align 4
  br label %222

398:                                              ; preds = %222
  %399 = load i32, i32* %8, align 4
  %400 = load i32, i32* @gdAntiAliased, align 4
  %401 = icmp eq i32 %399, %400
  br i1 %401, label %402, label %408

402:                                              ; preds = %398
  %403 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %404 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %405 = load i32, i32* %7, align 4
  %406 = load i32, i32* %8, align 4
  %407 = call i32 @gdImagePolygon(%struct.TYPE_10__* %403, %struct.TYPE_9__* %404, i32 %405, i32 %406)
  br label %408

408:                                              ; preds = %24, %29, %81, %198, %402, %398
  ret void
}

declare dso_local i64 @overflow2(i32, i32) #1

declare dso_local i64 @gdMalloc(i32) #1

declare dso_local i64 @gdRealloc(i32*, i32) #1

declare dso_local i32 @gdImageLine(%struct.TYPE_10__*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @gdImageSY(%struct.TYPE_10__*) #1

declare dso_local i32 @qsort(i32*, i32, i32, i32) #1

declare dso_local i32 @gdImagePolygon(%struct.TYPE_10__*, %struct.TYPE_9__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
