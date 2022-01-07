; ModuleID = '/home/carl/AnghaBench/php-src/ext/gd/libgd/extr_gd.c_gdImageCopy.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/gd/libgd/extr_gd.c_gdImageCopy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32*, i32*, i32*, i32*, i64 }

@gdMaxColors = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gdImageCopy(%struct.TYPE_9__* %0, %struct.TYPE_9__* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca %struct.TYPE_9__*, align 8
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
  %22 = alloca i32, align 4
  %23 = alloca i8*, align 8
  %24 = alloca i64, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %9, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %30 = load i32, i32* @gdMaxColors, align 4
  %31 = zext i32 %30 to i64
  %32 = call i8* @llvm.stacksave()
  store i8* %32, i8** %23, align 8
  %33 = alloca i32, i64 %31, align 16
  store i64 %31, i64* %24, align 8
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 5
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %158

38:                                               ; preds = %8
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 5
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %86

43:                                               ; preds = %38
  store i32 0, i32* %19, align 4
  br label %44

44:                                               ; preds = %82, %43
  %45 = load i32, i32* %19, align 4
  %46 = load i32, i32* %16, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %85

48:                                               ; preds = %44
  store i32 0, i32* %18, align 4
  br label %49

49:                                               ; preds = %78, %48
  %50 = load i32, i32* %18, align 4
  %51 = load i32, i32* %15, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %81

53:                                               ; preds = %49
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %55 = load i32, i32* %13, align 4
  %56 = load i32, i32* %18, align 4
  %57 = add nsw i32 %55, %56
  %58 = load i32, i32* %14, align 4
  %59 = load i32, i32* %19, align 4
  %60 = add nsw i32 %58, %59
  %61 = call i32 @gdImageGetTrueColorPixel(%struct.TYPE_9__* %54, i32 %57, i32 %60)
  store i32 %61, i32* %25, align 4
  %62 = load i32, i32* %25, align 4
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = icmp ne i32 %62, %65
  br i1 %66, label %67, label %77

67:                                               ; preds = %53
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %69 = load i32, i32* %11, align 4
  %70 = load i32, i32* %18, align 4
  %71 = add nsw i32 %69, %70
  %72 = load i32, i32* %12, align 4
  %73 = load i32, i32* %19, align 4
  %74 = add nsw i32 %72, %73
  %75 = load i32, i32* %25, align 4
  %76 = call i32 @gdImageSetPixel(%struct.TYPE_9__* %68, i32 %71, i32 %74, i32 %75)
  br label %77

77:                                               ; preds = %67, %53
  br label %78

78:                                               ; preds = %77
  %79 = load i32, i32* %18, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %18, align 4
  br label %49

81:                                               ; preds = %49
  br label %82

82:                                               ; preds = %81
  %83 = load i32, i32* %19, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %19, align 4
  br label %44

85:                                               ; preds = %44
  br label %157

86:                                               ; preds = %38
  store i32 0, i32* %19, align 4
  br label %87

87:                                               ; preds = %153, %86
  %88 = load i32, i32* %19, align 4
  %89 = load i32, i32* %16, align 4
  %90 = icmp slt i32 %88, %89
  br i1 %90, label %91, label %156

91:                                               ; preds = %87
  store i32 0, i32* %18, align 4
  br label %92

92:                                               ; preds = %149, %91
  %93 = load i32, i32* %18, align 4
  %94 = load i32, i32* %15, align 4
  %95 = icmp slt i32 %93, %94
  br i1 %95, label %96, label %152

96:                                               ; preds = %92
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %98 = load i32, i32* %13, align 4
  %99 = load i32, i32* %18, align 4
  %100 = add nsw i32 %98, %99
  %101 = load i32, i32* %14, align 4
  %102 = load i32, i32* %19, align 4
  %103 = add nsw i32 %101, %102
  %104 = call i32 @gdImageGetPixel(%struct.TYPE_9__* %97, i32 %100, i32 %103)
  store i32 %104, i32* %26, align 4
  %105 = load i32, i32* %26, align 4
  %106 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = icmp ne i32 %105, %108
  br i1 %109, label %110, label %148

110:                                              ; preds = %96
  %111 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %112 = load i32, i32* %11, align 4
  %113 = load i32, i32* %18, align 4
  %114 = add nsw i32 %112, %113
  %115 = load i32, i32* %12, align 4
  %116 = load i32, i32* %19, align 4
  %117 = add nsw i32 %115, %116
  %118 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i32 0, i32 4
  %120 = load i32*, i32** %119, align 8
  %121 = load i32, i32* %26, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %120, i64 %122
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %126 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %125, i32 0, i32 3
  %127 = load i32*, i32** %126, align 8
  %128 = load i32, i32* %26, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %127, i64 %129
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %132, i32 0, i32 2
  %134 = load i32*, i32** %133, align 8
  %135 = load i32, i32* %26, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i32, i32* %134, i64 %136
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %140 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %139, i32 0, i32 1
  %141 = load i32*, i32** %140, align 8
  %142 = load i32, i32* %26, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i32, i32* %141, i64 %143
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @gdTrueColorAlpha(i32 %124, i32 %131, i32 %138, i32 %145)
  %147 = call i32 @gdImageSetPixel(%struct.TYPE_9__* %111, i32 %114, i32 %117, i32 %146)
  br label %148

148:                                              ; preds = %110, %96
  br label %149

149:                                              ; preds = %148
  %150 = load i32, i32* %18, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %18, align 4
  br label %92

152:                                              ; preds = %92
  br label %153

153:                                              ; preds = %152
  %154 = load i32, i32* %19, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %19, align 4
  br label %87

156:                                              ; preds = %87
  br label %157

157:                                              ; preds = %156, %85
  store i32 1, i32* %27, align 4
  br label %292

158:                                              ; preds = %8
  store i32 0, i32* %22, align 4
  br label %159

159:                                              ; preds = %167, %158
  %160 = load i32, i32* %22, align 4
  %161 = load i32, i32* @gdMaxColors, align 4
  %162 = icmp slt i32 %160, %161
  br i1 %162, label %163, label %170

163:                                              ; preds = %159
  %164 = load i32, i32* %22, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i32, i32* %33, i64 %165
  store i32 -1, i32* %166, align 4
  br label %167

167:                                              ; preds = %163
  %168 = load i32, i32* %22, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %22, align 4
  br label %159

170:                                              ; preds = %159
  %171 = load i32, i32* %12, align 4
  store i32 %171, i32* %21, align 4
  %172 = load i32, i32* %14, align 4
  store i32 %172, i32* %19, align 4
  br label %173

173:                                              ; preds = %288, %170
  %174 = load i32, i32* %19, align 4
  %175 = load i32, i32* %14, align 4
  %176 = load i32, i32* %16, align 4
  %177 = add nsw i32 %175, %176
  %178 = icmp slt i32 %174, %177
  br i1 %178, label %179, label %291

179:                                              ; preds = %173
  %180 = load i32, i32* %11, align 4
  store i32 %180, i32* %20, align 4
  %181 = load i32, i32* %13, align 4
  store i32 %181, i32* %18, align 4
  br label %182

182:                                              ; preds = %282, %179
  %183 = load i32, i32* %18, align 4
  %184 = load i32, i32* %13, align 4
  %185 = load i32, i32* %15, align 4
  %186 = add nsw i32 %184, %185
  %187 = icmp slt i32 %183, %186
  br i1 %187, label %188, label %285

188:                                              ; preds = %182
  %189 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %190 = load i32, i32* %18, align 4
  %191 = load i32, i32* %19, align 4
  %192 = call i32 @gdImageGetPixel(%struct.TYPE_9__* %189, i32 %190, i32 %191)
  store i32 %192, i32* %17, align 4
  %193 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %194 = call i32 @gdImageGetTransparent(%struct.TYPE_9__* %193)
  %195 = load i32, i32* %17, align 4
  %196 = icmp eq i32 %194, %195
  br i1 %196, label %197, label %200

197:                                              ; preds = %188
  %198 = load i32, i32* %20, align 4
  %199 = add nsw i32 %198, 1
  store i32 %199, i32* %20, align 4
  br label %282

200:                                              ; preds = %188
  %201 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %202 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %201, i32 0, i32 5
  %203 = load i64, i64* %202, align 8
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %205, label %216

205:                                              ; preds = %200
  %206 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %207 = load i32, i32* %17, align 4
  %208 = call i32 @gdTrueColorGetRed(i32 %207)
  %209 = load i32, i32* %17, align 4
  %210 = call i32 @gdTrueColorGetGreen(i32 %209)
  %211 = load i32, i32* %17, align 4
  %212 = call i32 @gdTrueColorGetBlue(i32 %211)
  %213 = load i32, i32* %17, align 4
  %214 = call i32 @gdTrueColorGetAlpha(i32 %213)
  %215 = call i32 @gdImageColorResolveAlpha(%struct.TYPE_9__* %206, i32 %208, i32 %210, i32 %212, i32 %214)
  store i32 %215, i32* %29, align 4
  br label %274

216:                                              ; preds = %200
  %217 = load i32, i32* %17, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds i32, i32* %33, i64 %218
  %220 = load i32, i32* %219, align 4
  %221 = icmp eq i32 %220, -1
  br i1 %221, label %222, label %268

222:                                              ; preds = %216
  %223 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %224 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %225 = icmp eq %struct.TYPE_9__* %223, %224
  br i1 %225, label %226, label %228

226:                                              ; preds = %222
  %227 = load i32, i32* %17, align 4
  store i32 %227, i32* %28, align 4
  br label %259

228:                                              ; preds = %222
  %229 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %230 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %231 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %230, i32 0, i32 4
  %232 = load i32*, i32** %231, align 8
  %233 = load i32, i32* %17, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds i32, i32* %232, i64 %234
  %236 = load i32, i32* %235, align 4
  %237 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %238 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %237, i32 0, i32 3
  %239 = load i32*, i32** %238, align 8
  %240 = load i32, i32* %17, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds i32, i32* %239, i64 %241
  %243 = load i32, i32* %242, align 4
  %244 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %245 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %244, i32 0, i32 2
  %246 = load i32*, i32** %245, align 8
  %247 = load i32, i32* %17, align 4
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds i32, i32* %246, i64 %248
  %250 = load i32, i32* %249, align 4
  %251 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %252 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %251, i32 0, i32 1
  %253 = load i32*, i32** %252, align 8
  %254 = load i32, i32* %17, align 4
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds i32, i32* %253, i64 %255
  %257 = load i32, i32* %256, align 4
  %258 = call i32 @gdImageColorResolveAlpha(%struct.TYPE_9__* %229, i32 %236, i32 %243, i32 %250, i32 %257)
  store i32 %258, i32* %28, align 4
  br label %259

259:                                              ; preds = %228, %226
  %260 = load i32, i32* %28, align 4
  %261 = load i32, i32* %17, align 4
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds i32, i32* %33, i64 %262
  store i32 %260, i32* %263, align 4
  %264 = load i32, i32* %17, align 4
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds i32, i32* %33, i64 %265
  %267 = load i32, i32* %266, align 4
  store i32 %267, i32* %29, align 4
  br label %273

268:                                              ; preds = %216
  %269 = load i32, i32* %17, align 4
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds i32, i32* %33, i64 %270
  %272 = load i32, i32* %271, align 4
  store i32 %272, i32* %29, align 4
  br label %273

273:                                              ; preds = %268, %259
  br label %274

274:                                              ; preds = %273, %205
  %275 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %276 = load i32, i32* %20, align 4
  %277 = load i32, i32* %21, align 4
  %278 = load i32, i32* %29, align 4
  %279 = call i32 @gdImageSetPixel(%struct.TYPE_9__* %275, i32 %276, i32 %277, i32 %278)
  %280 = load i32, i32* %20, align 4
  %281 = add nsw i32 %280, 1
  store i32 %281, i32* %20, align 4
  br label %282

282:                                              ; preds = %274, %197
  %283 = load i32, i32* %18, align 4
  %284 = add nsw i32 %283, 1
  store i32 %284, i32* %18, align 4
  br label %182

285:                                              ; preds = %182
  %286 = load i32, i32* %21, align 4
  %287 = add nsw i32 %286, 1
  store i32 %287, i32* %21, align 4
  br label %288

288:                                              ; preds = %285
  %289 = load i32, i32* %19, align 4
  %290 = add nsw i32 %289, 1
  store i32 %290, i32* %19, align 4
  br label %173

291:                                              ; preds = %173
  store i32 0, i32* %27, align 4
  br label %292

292:                                              ; preds = %291, %157
  %293 = load i8*, i8** %23, align 8
  call void @llvm.stackrestore(i8* %293)
  %294 = load i32, i32* %27, align 4
  switch i32 %294, label %296 [
    i32 0, label %295
    i32 1, label %295
  ]

295:                                              ; preds = %292, %292
  ret void

296:                                              ; preds = %292
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @gdImageGetTrueColorPixel(%struct.TYPE_9__*, i32, i32) #2

declare dso_local i32 @gdImageSetPixel(%struct.TYPE_9__*, i32, i32, i32) #2

declare dso_local i32 @gdImageGetPixel(%struct.TYPE_9__*, i32, i32) #2

declare dso_local i32 @gdTrueColorAlpha(i32, i32, i32, i32) #2

declare dso_local i32 @gdImageGetTransparent(%struct.TYPE_9__*) #2

declare dso_local i32 @gdImageColorResolveAlpha(%struct.TYPE_9__*, i32, i32, i32, i32) #2

declare dso_local i32 @gdTrueColorGetRed(i32) #2

declare dso_local i32 @gdTrueColorGetGreen(i32) #2

declare dso_local i32 @gdTrueColorGetBlue(i32) #2

declare dso_local i32 @gdTrueColorGetAlpha(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
