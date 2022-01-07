; ModuleID = '/home/carl/AnghaBench/php-src/ext/gd/libgd/extr_gd_rotate.c_gdImageSkewX.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/gd/libgd/extr_gd_rotate.c_gdImageSkewX.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gdImageSkewX(%struct.TYPE_11__* %0, %struct.TYPE_11__* %1, i32 %2, i32 %3, double %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca double, align 8
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
  %23 = alloca i32, align 4
  %24 = alloca i32 (%struct.TYPE_11__*, i32, i32)*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %8, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store double %4, double* %12, align 8
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  store i32 0, i32* %26, align 4
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %7
  %33 = load i32, i32* %13, align 4
  store i32 %33, i32* %25, align 4
  store i32 (%struct.TYPE_11__*, i32, i32)* @gdImageGetTrueColorPixel, i32 (%struct.TYPE_11__*, i32, i32)** %24, align 8
  br label %57

34:                                               ; preds = %7
  %35 = load i32, i32* %13, align 4
  store i32 %35, i32* %25, align 4
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %37 = load i32, i32* %13, align 4
  %38 = call double @gdImageRed(%struct.TYPE_11__* %36, i32 %37)
  %39 = fptosi double %38 to i32
  store i32 %39, i32* %20, align 4
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %41 = load i32, i32* %13, align 4
  %42 = call double @gdImageGreen(%struct.TYPE_11__* %40, i32 %41)
  %43 = fptosi double %42 to i32
  store i32 %43, i32* %21, align 4
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %45 = load i32, i32* %13, align 4
  %46 = call double @gdImageBlue(%struct.TYPE_11__* %44, i32 %45)
  %47 = fptosi double %46 to i32
  store i32 %47, i32* %22, align 4
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %49 = load i32, i32* %13, align 4
  %50 = call double @gdImageAlpha(%struct.TYPE_11__* %48, i32 %49)
  %51 = fptosi double %50 to i32
  store i32 %51, i32* %23, align 4
  %52 = load i32, i32* %20, align 4
  %53 = load i32, i32* %21, align 4
  %54 = load i32, i32* %22, align 4
  %55 = load i32, i32* %23, align 4
  %56 = call i32 @gdTrueColorAlpha(i32 %52, i32 %53, i32 %54, i32 %55)
  store i32 %56, i32* %13, align 4
  store i32 (%struct.TYPE_11__*, i32, i32)* @gdImageGetPixel, i32 (%struct.TYPE_11__*, i32, i32)** %24, align 8
  br label %57

57:                                               ; preds = %34, %32
  store i32 0, i32* %15, align 4
  br label %58

58:                                               ; preds = %68, %57
  %59 = load i32, i32* %15, align 4
  %60 = load i32, i32* %11, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %71

62:                                               ; preds = %58
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %64 = load i32, i32* %15, align 4
  %65 = load i32, i32* %10, align 4
  %66 = load i32, i32* %13, align 4
  %67 = call i32 @gdImageSetPixel(%struct.TYPE_11__* %63, i32 %64, i32 %65, i32 %66)
  br label %68

68:                                               ; preds = %62
  %69 = load i32, i32* %15, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %15, align 4
  br label %58

71:                                               ; preds = %58
  %72 = load i32, i32* %15, align 4
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = icmp slt i32 %72, %75
  br i1 %76, label %77, label %83

77:                                               ; preds = %71
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %79 = load i32, i32* %15, align 4
  %80 = load i32, i32* %10, align 4
  %81 = load i32, i32* %13, align 4
  %82 = call i32 @gdImageSetPixel(%struct.TYPE_11__* %78, i32 %79, i32 %80, i32 %81)
  br label %83

83:                                               ; preds = %77, %71
  store i32 0, i32* %15, align 4
  br label %84

84:                                               ; preds = %252, %83
  %85 = load i32, i32* %15, align 4
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = icmp slt i32 %85, %88
  br i1 %89, label %90, label %255

90:                                               ; preds = %84
  %91 = load i32 (%struct.TYPE_11__*, i32, i32)*, i32 (%struct.TYPE_11__*, i32, i32)** %24, align 8
  %92 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %93 = load i32, i32* %15, align 4
  %94 = load i32, i32* %10, align 4
  %95 = call i32 %91(%struct.TYPE_11__* %92, i32 %93, i32 %94)
  store i32 %95, i32* %27, align 4
  %96 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %97 = load i32, i32* %27, align 4
  %98 = call double @gdImageRed(%struct.TYPE_11__* %96, i32 %97)
  %99 = load double, double* %12, align 8
  %100 = fmul double %98, %99
  %101 = fptosi double %100 to i32
  store i32 %101, i32* %16, align 4
  %102 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %103 = load i32, i32* %27, align 4
  %104 = call double @gdImageGreen(%struct.TYPE_11__* %102, i32 %103)
  %105 = load double, double* %12, align 8
  %106 = fmul double %104, %105
  %107 = fptosi double %106 to i32
  store i32 %107, i32* %17, align 4
  %108 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %109 = load i32, i32* %27, align 4
  %110 = call double @gdImageBlue(%struct.TYPE_11__* %108, i32 %109)
  %111 = load double, double* %12, align 8
  %112 = fmul double %110, %111
  %113 = fptosi double %112 to i32
  store i32 %113, i32* %18, align 4
  %114 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %115 = load i32, i32* %27, align 4
  %116 = call double @gdImageAlpha(%struct.TYPE_11__* %114, i32 %115)
  %117 = load double, double* %12, align 8
  %118 = fmul double %116, %117
  %119 = fptosi double %118 to i32
  store i32 %119, i32* %19, align 4
  %120 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %121 = load i32, i32* %16, align 4
  %122 = load i32, i32* %17, align 4
  %123 = load i32, i32* %18, align 4
  %124 = load i32, i32* %19, align 4
  %125 = call i32 @gdImageColorAllocateAlpha(%struct.TYPE_11__* %120, i32 %121, i32 %122, i32 %123, i32 %124)
  store i32 %125, i32* %26, align 4
  %126 = load i32, i32* %26, align 4
  %127 = icmp eq i32 %126, -1
  br i1 %127, label %128, label %135

128:                                              ; preds = %90
  %129 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %130 = load i32, i32* %16, align 4
  %131 = load i32, i32* %17, align 4
  %132 = load i32, i32* %18, align 4
  %133 = load i32, i32* %19, align 4
  %134 = call i32 @gdImageColorClosestAlpha(%struct.TYPE_11__* %129, i32 %130, i32 %131, i32 %132, i32 %133)
  store i32 %134, i32* %26, align 4
  br label %135

135:                                              ; preds = %128, %90
  %136 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %137 = load i32, i32* %27, align 4
  %138 = call double @gdImageRed(%struct.TYPE_11__* %136, i32 %137)
  %139 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %140 = load i32, i32* %26, align 4
  %141 = call double @gdImageRed(%struct.TYPE_11__* %139, i32 %140)
  %142 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %143 = load i32, i32* %25, align 4
  %144 = call double @gdImageRed(%struct.TYPE_11__* %142, i32 %143)
  %145 = fsub double %141, %144
  %146 = fsub double %138, %145
  %147 = fptosi double %146 to i32
  store i32 %147, i32* %16, align 4
  %148 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %149 = load i32, i32* %27, align 4
  %150 = call double @gdImageGreen(%struct.TYPE_11__* %148, i32 %149)
  %151 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %152 = load i32, i32* %26, align 4
  %153 = call double @gdImageGreen(%struct.TYPE_11__* %151, i32 %152)
  %154 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %155 = load i32, i32* %25, align 4
  %156 = call double @gdImageGreen(%struct.TYPE_11__* %154, i32 %155)
  %157 = fsub double %153, %156
  %158 = fsub double %150, %157
  %159 = fptosi double %158 to i32
  store i32 %159, i32* %17, align 4
  %160 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %161 = load i32, i32* %27, align 4
  %162 = call double @gdImageBlue(%struct.TYPE_11__* %160, i32 %161)
  %163 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %164 = load i32, i32* %26, align 4
  %165 = call double @gdImageBlue(%struct.TYPE_11__* %163, i32 %164)
  %166 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %167 = load i32, i32* %25, align 4
  %168 = call double @gdImageBlue(%struct.TYPE_11__* %166, i32 %167)
  %169 = fsub double %165, %168
  %170 = fsub double %162, %169
  %171 = fptosi double %170 to i32
  store i32 %171, i32* %18, align 4
  %172 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %173 = load i32, i32* %27, align 4
  %174 = call double @gdImageAlpha(%struct.TYPE_11__* %172, i32 %173)
  %175 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %176 = load i32, i32* %26, align 4
  %177 = call double @gdImageAlpha(%struct.TYPE_11__* %175, i32 %176)
  %178 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %179 = load i32, i32* %25, align 4
  %180 = call double @gdImageAlpha(%struct.TYPE_11__* %178, i32 %179)
  %181 = fsub double %177, %180
  %182 = fsub double %174, %181
  %183 = fptosi double %182 to i32
  store i32 %183, i32* %19, align 4
  %184 = load i32, i32* %16, align 4
  %185 = icmp sgt i32 %184, 255
  br i1 %185, label %186, label %187

186:                                              ; preds = %135
  store i32 255, i32* %16, align 4
  br label %187

187:                                              ; preds = %186, %135
  %188 = load i32, i32* %17, align 4
  %189 = icmp sgt i32 %188, 255
  br i1 %189, label %190, label %191

190:                                              ; preds = %187
  store i32 255, i32* %17, align 4
  br label %191

191:                                              ; preds = %190, %187
  %192 = load i32, i32* %18, align 4
  %193 = icmp sgt i32 %192, 255
  br i1 %193, label %194, label %195

194:                                              ; preds = %191
  store i32 255, i32* %18, align 4
  br label %195

195:                                              ; preds = %194, %191
  %196 = load i32, i32* %19, align 4
  %197 = icmp sgt i32 %196, 127
  br i1 %197, label %198, label %199

198:                                              ; preds = %195
  store i32 127, i32* %19, align 4
  br label %199

199:                                              ; preds = %198, %195
  %200 = load i32, i32* %14, align 4
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %212

202:                                              ; preds = %199
  %203 = load i32, i32* %27, align 4
  %204 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %205 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %204, i32 0, i32 1
  %206 = load i32, i32* %205, align 4
  %207 = icmp eq i32 %203, %206
  br i1 %207, label %208, label %212

208:                                              ; preds = %202
  %209 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %210 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %209, i32 0, i32 1
  %211 = load i32, i32* %210, align 4
  store i32 %211, i32* %27, align 4
  br label %229

212:                                              ; preds = %202, %199
  %213 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %214 = load i32, i32* %16, align 4
  %215 = load i32, i32* %17, align 4
  %216 = load i32, i32* %18, align 4
  %217 = load i32, i32* %19, align 4
  %218 = call i32 @gdImageColorAllocateAlpha(%struct.TYPE_11__* %213, i32 %214, i32 %215, i32 %216, i32 %217)
  store i32 %218, i32* %27, align 4
  %219 = load i32, i32* %27, align 4
  %220 = icmp eq i32 %219, -1
  br i1 %220, label %221, label %228

221:                                              ; preds = %212
  %222 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %223 = load i32, i32* %16, align 4
  %224 = load i32, i32* %17, align 4
  %225 = load i32, i32* %18, align 4
  %226 = load i32, i32* %19, align 4
  %227 = call i32 @gdImageColorClosestAlpha(%struct.TYPE_11__* %222, i32 %223, i32 %224, i32 %225, i32 %226)
  store i32 %227, i32* %27, align 4
  br label %228

228:                                              ; preds = %221, %212
  br label %229

229:                                              ; preds = %228, %208
  %230 = load i32, i32* %15, align 4
  %231 = load i32, i32* %11, align 4
  %232 = add nsw i32 %230, %231
  %233 = icmp sge i32 %232, 0
  br i1 %233, label %234, label %250

234:                                              ; preds = %229
  %235 = load i32, i32* %15, align 4
  %236 = load i32, i32* %11, align 4
  %237 = add nsw i32 %235, %236
  %238 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %239 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 8
  %241 = icmp slt i32 %237, %240
  br i1 %241, label %242, label %250

242:                                              ; preds = %234
  %243 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %244 = load i32, i32* %15, align 4
  %245 = load i32, i32* %11, align 4
  %246 = add nsw i32 %244, %245
  %247 = load i32, i32* %10, align 4
  %248 = load i32, i32* %27, align 4
  %249 = call i32 @gdImageSetPixel(%struct.TYPE_11__* %243, i32 %246, i32 %247, i32 %248)
  br label %250

250:                                              ; preds = %242, %234, %229
  %251 = load i32, i32* %26, align 4
  store i32 %251, i32* %25, align 4
  br label %252

252:                                              ; preds = %250
  %253 = load i32, i32* %15, align 4
  %254 = add nsw i32 %253, 1
  store i32 %254, i32* %15, align 4
  br label %84

255:                                              ; preds = %84
  %256 = load i32, i32* %11, align 4
  %257 = load i32, i32* %15, align 4
  %258 = add nsw i32 %257, %256
  store i32 %258, i32* %15, align 4
  %259 = load i32, i32* %15, align 4
  %260 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %261 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %260, i32 0, i32 0
  %262 = load i32, i32* %261, align 8
  %263 = icmp slt i32 %259, %262
  br i1 %263, label %264, label %270

264:                                              ; preds = %255
  %265 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %266 = load i32, i32* %15, align 4
  %267 = load i32, i32* %10, align 4
  %268 = load i32, i32* %26, align 4
  %269 = call i32 @gdImageSetPixel(%struct.TYPE_11__* %265, i32 %266, i32 %267, i32 %268)
  br label %270

270:                                              ; preds = %264, %255
  %271 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %272 = load i32, i32* %11, align 4
  %273 = load i32, i32* %10, align 4
  %274 = load i32, i32* %13, align 4
  %275 = call i32 @gdImageSetPixel(%struct.TYPE_11__* %271, i32 %272, i32 %273, i32 %274)
  %276 = load i32, i32* %15, align 4
  %277 = add nsw i32 %276, -1
  store i32 %277, i32* %15, align 4
  br label %278

278:                                              ; preds = %285, %270
  %279 = load i32, i32* %15, align 4
  %280 = add nsw i32 %279, 1
  store i32 %280, i32* %15, align 4
  %281 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %282 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %281, i32 0, i32 0
  %283 = load i32, i32* %282, align 8
  %284 = icmp slt i32 %280, %283
  br i1 %284, label %285, label %291

285:                                              ; preds = %278
  %286 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %287 = load i32, i32* %15, align 4
  %288 = load i32, i32* %10, align 4
  %289 = load i32, i32* %13, align 4
  %290 = call i32 @gdImageSetPixel(%struct.TYPE_11__* %286, i32 %287, i32 %288, i32 %289)
  br label %278

291:                                              ; preds = %278
  ret void
}

declare dso_local i32 @gdImageGetTrueColorPixel(%struct.TYPE_11__*, i32, i32) #1

declare dso_local double @gdImageRed(%struct.TYPE_11__*, i32) #1

declare dso_local double @gdImageGreen(%struct.TYPE_11__*, i32) #1

declare dso_local double @gdImageBlue(%struct.TYPE_11__*, i32) #1

declare dso_local double @gdImageAlpha(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @gdTrueColorAlpha(i32, i32, i32, i32) #1

declare dso_local i32 @gdImageGetPixel(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @gdImageSetPixel(%struct.TYPE_11__*, i32, i32, i32) #1

declare dso_local i32 @gdImageColorAllocateAlpha(%struct.TYPE_11__*, i32, i32, i32, i32) #1

declare dso_local i32 @gdImageColorClosestAlpha(%struct.TYPE_11__*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
