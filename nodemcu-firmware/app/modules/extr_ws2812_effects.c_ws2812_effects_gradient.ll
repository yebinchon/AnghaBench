; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_ws2812_effects.c_ws2812_effects_gradient.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_ws2812_effects.c_ws2812_effects_gradient.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, i32, i32* }

@state = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64)* @ws2812_effects_gradient to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ws2812_effects_gradient(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
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
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** @state, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  store %struct.TYPE_3__* %36, %struct.TYPE_3__** %5, align 8
  %37 = load i64, i64* %4, align 8
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = udiv i64 %37, %40
  %42 = sub i64 %41, 1
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %6, align 4
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* %6, align 4
  %48 = sdiv i32 %46, %47
  store i32 %48, i32* %7, align 4
  %49 = load i8*, i8** %3, align 8
  %50 = getelementptr inbounds i8, i8* %49, i32 1
  store i8* %50, i8** %3, align 8
  %51 = load i8, i8* %49, align 1
  %52 = sext i8 %51 to i32
  store i32 %52, i32* %11, align 4
  %53 = load i8*, i8** %3, align 8
  %54 = getelementptr inbounds i8, i8* %53, i32 1
  store i8* %54, i8** %3, align 8
  %55 = load i8, i8* %53, align 1
  %56 = sext i8 %55 to i32
  store i32 %56, i32* %12, align 4
  %57 = load i8*, i8** %3, align 8
  %58 = getelementptr inbounds i8, i8* %57, i32 1
  store i8* %58, i8** %3, align 8
  %59 = load i8, i8* %57, align 1
  %60 = sext i8 %59 to i32
  store i32 %60, i32* %13, align 4
  store i32 3, i32* %15, align 4
  br label %61

61:                                               ; preds = %72, %2
  %62 = load i32, i32* %15, align 4
  %63 = sext i32 %62 to i64
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp ult i64 %63, %66
  br i1 %67, label %68, label %75

68:                                               ; preds = %61
  %69 = load i8*, i8** %3, align 8
  %70 = getelementptr inbounds i8, i8* %69, i32 1
  store i8* %70, i8** %3, align 8
  %71 = load i8, i8* %69, align 1
  br label %72

72:                                               ; preds = %68
  %73 = load i32, i32* %15, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %15, align 4
  br label %61

75:                                               ; preds = %61
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 2
  %78 = load i32*, i32** %77, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 0
  store i32* %79, i32** %17, align 8
  store i32 0, i32* %16, align 4
  br label %80

80:                                               ; preds = %292, %75
  %81 = load i32, i32* %16, align 4
  %82 = load i32, i32* %6, align 4
  %83 = icmp slt i32 %81, %82
  br i1 %83, label %84, label %295

84:                                               ; preds = %80
  %85 = load i32, i32* %11, align 4
  store i32 %85, i32* %8, align 4
  %86 = load i32, i32* %12, align 4
  store i32 %86, i32* %9, align 4
  %87 = load i32, i32* %13, align 4
  store i32 %87, i32* %10, align 4
  %88 = load i32, i32* %8, align 4
  %89 = load i32, i32* %9, align 4
  %90 = load i32, i32* %10, align 4
  %91 = call i32 @grb2hsv(i32 %88, i32 %89, i32 %90)
  store i32 %91, i32* %26, align 4
  %92 = load i32, i32* %26, align 4
  %93 = and i32 %92, -65536
  %94 = lshr i32 %93, 16
  store i32 %94, i32* %18, align 4
  %95 = load i32, i32* %26, align 4
  %96 = and i32 %95, 65280
  %97 = ashr i32 %96, 8
  store i32 %97, i32* %22, align 4
  %98 = load i32, i32* %26, align 4
  %99 = and i32 %98, 255
  store i32 %99, i32* %23, align 4
  %100 = load i8*, i8** %3, align 8
  %101 = getelementptr inbounds i8, i8* %100, i32 1
  store i8* %101, i8** %3, align 8
  %102 = load i8, i8* %100, align 1
  %103 = sext i8 %102 to i32
  store i32 %103, i32* %11, align 4
  %104 = load i8*, i8** %3, align 8
  %105 = getelementptr inbounds i8, i8* %104, i32 1
  store i8* %105, i8** %3, align 8
  %106 = load i8, i8* %104, align 1
  %107 = sext i8 %106 to i32
  store i32 %107, i32* %12, align 4
  %108 = load i8*, i8** %3, align 8
  %109 = getelementptr inbounds i8, i8* %108, i32 1
  store i8* %109, i8** %3, align 8
  %110 = load i8, i8* %108, align 1
  %111 = sext i8 %110 to i32
  store i32 %111, i32* %13, align 4
  store i32 3, i32* %15, align 4
  br label %112

112:                                              ; preds = %123, %84
  %113 = load i32, i32* %15, align 4
  %114 = sext i32 %113 to i64
  %115 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = icmp ult i64 %114, %117
  br i1 %118, label %119, label %126

119:                                              ; preds = %112
  %120 = load i8*, i8** %3, align 8
  %121 = getelementptr inbounds i8, i8* %120, i32 1
  store i8* %121, i8** %3, align 8
  %122 = load i8, i8* %120, align 1
  br label %123

123:                                              ; preds = %119
  %124 = load i32, i32* %15, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %15, align 4
  br label %112

126:                                              ; preds = %112
  %127 = load i32, i32* %11, align 4
  %128 = load i32, i32* %12, align 4
  %129 = load i32, i32* %13, align 4
  %130 = call i32 @grb2hsv(i32 %127, i32 %128, i32 %129)
  store i32 %130, i32* %27, align 4
  %131 = load i32, i32* %27, align 4
  %132 = and i32 %131, -65536
  %133 = lshr i32 %132, 16
  store i32 %133, i32* %19, align 4
  %134 = load i32, i32* %26, align 4
  %135 = and i32 %134, 65280
  %136 = ashr i32 %135, 8
  store i32 %136, i32* %24, align 4
  %137 = load i32, i32* %26, align 4
  %138 = and i32 %137, 255
  store i32 %138, i32* %25, align 4
  %139 = load i32, i32* %18, align 4
  %140 = load i32, i32* %19, align 4
  %141 = icmp sgt i32 %139, %140
  br i1 %141, label %142, label %146

142:                                              ; preds = %126
  %143 = load i32, i32* %18, align 4
  %144 = load i32, i32* %19, align 4
  %145 = sub nsw i32 %143, %144
  br label %151

146:                                              ; preds = %126
  %147 = load i32, i32* %18, align 4
  %148 = add nsw i32 360, %147
  %149 = load i32, i32* %19, align 4
  %150 = sub nsw i32 %148, %149
  br label %151

151:                                              ; preds = %146, %142
  %152 = phi i32 [ %145, %142 ], [ %150, %146 ]
  store i32 %152, i32* %28, align 4
  %153 = load i32, i32* %18, align 4
  %154 = load i32, i32* %19, align 4
  %155 = icmp sgt i32 %153, %154
  br i1 %155, label %156, label %161

156:                                              ; preds = %151
  %157 = load i32, i32* %19, align 4
  %158 = add nsw i32 360, %157
  %159 = load i32, i32* %18, align 4
  %160 = sub nsw i32 %158, %159
  br label %165

161:                                              ; preds = %151
  %162 = load i32, i32* %19, align 4
  %163 = load i32, i32* %18, align 4
  %164 = sub nsw i32 %162, %163
  br label %165

165:                                              ; preds = %161, %156
  %166 = phi i32 [ %160, %156 ], [ %164, %161 ]
  store i32 %166, i32* %29, align 4
  %167 = load i32, i32* %7, align 4
  store i32 %167, i32* %30, align 4
  %168 = load i32, i32* %16, align 4
  %169 = load i32, i32* %6, align 4
  %170 = sub nsw i32 %169, 1
  %171 = icmp eq i32 %168, %170
  br i1 %171, label %172, label %181

172:                                              ; preds = %165
  %173 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %174 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 8
  %176 = load i32, i32* %7, align 4
  %177 = load i32, i32* %6, align 4
  %178 = sub nsw i32 %177, 1
  %179 = mul nsw i32 %176, %178
  %180 = sub nsw i32 %175, %179
  store i32 %180, i32* %30, align 4
  br label %181

181:                                              ; preds = %172, %165
  %182 = load i32, i32* %30, align 4
  %183 = sub nsw i32 %182, 1
  store i32 %183, i32* %31, align 4
  store i32 0, i32* %14, align 4
  br label %184

184:                                              ; preds = %288, %181
  %185 = load i32, i32* %14, align 4
  %186 = load i32, i32* %30, align 4
  %187 = icmp slt i32 %185, %186
  br i1 %187, label %188, label %291

188:                                              ; preds = %184
  %189 = load i32, i32* %28, align 4
  %190 = load i32, i32* %29, align 4
  %191 = icmp sgt i32 %189, %190
  br i1 %191, label %192, label %201

192:                                              ; preds = %188
  %193 = load i32, i32* %18, align 4
  %194 = load i32, i32* %29, align 4
  %195 = load i32, i32* %14, align 4
  %196 = mul nsw i32 %194, %195
  %197 = load i32, i32* %31, align 4
  %198 = sdiv i32 %196, %197
  %199 = srem i32 %198, 360
  %200 = add nsw i32 %193, %199
  br label %209

201:                                              ; preds = %188
  %202 = load i32, i32* %18, align 4
  %203 = load i32, i32* %28, align 4
  %204 = load i32, i32* %14, align 4
  %205 = mul nsw i32 %203, %204
  %206 = load i32, i32* %31, align 4
  %207 = sdiv i32 %205, %206
  %208 = sub nsw i32 %202, %207
  br label %209

209:                                              ; preds = %201, %192
  %210 = phi i32 [ %200, %192 ], [ %208, %201 ]
  store i32 %210, i32* %32, align 4
  %211 = load i32, i32* %32, align 4
  %212 = icmp slt i32 %211, 0
  br i1 %212, label %213, label %216

213:                                              ; preds = %209
  %214 = load i32, i32* %32, align 4
  %215 = add nsw i32 %214, 360
  store i32 %215, i32* %32, align 4
  br label %216

216:                                              ; preds = %213, %209
  %217 = load i32, i32* %32, align 4
  %218 = icmp sgt i32 %217, 359
  br i1 %218, label %219, label %222

219:                                              ; preds = %216
  %220 = load i32, i32* %32, align 4
  %221 = sub nsw i32 %220, 360
  store i32 %221, i32* %32, align 4
  br label %222

222:                                              ; preds = %219, %216
  %223 = load i32, i32* %22, align 4
  %224 = load i32, i32* %24, align 4
  %225 = load i32, i32* %22, align 4
  %226 = sub nsw i32 %224, %225
  %227 = load i32, i32* %14, align 4
  %228 = mul nsw i32 %226, %227
  %229 = load i32, i32* %31, align 4
  %230 = sdiv i32 %228, %229
  %231 = add nsw i32 %223, %230
  store i32 %231, i32* %20, align 4
  %232 = load i32, i32* %23, align 4
  %233 = load i32, i32* %25, align 4
  %234 = load i32, i32* %23, align 4
  %235 = sub nsw i32 %233, %234
  %236 = load i32, i32* %14, align 4
  %237 = mul nsw i32 %235, %236
  %238 = load i32, i32* %31, align 4
  %239 = sdiv i32 %237, %238
  %240 = add nsw i32 %232, %239
  store i32 %240, i32* %21, align 4
  %241 = load i32, i32* %32, align 4
  %242 = load i32, i32* %20, align 4
  %243 = load i32, i32* %21, align 4
  %244 = call i32 @hsv2grb(i32 %241, i32 %242, i32 %243)
  store i32 %244, i32* %33, align 4
  %245 = load i32, i32* %33, align 4
  %246 = and i32 %245, 16711680
  %247 = ashr i32 %246, 16
  %248 = load %struct.TYPE_4__*, %struct.TYPE_4__** @state, align 8
  %249 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 8
  %251 = mul nsw i32 %247, %250
  %252 = sdiv i32 %251, 255
  %253 = load i32*, i32** %17, align 8
  %254 = getelementptr inbounds i32, i32* %253, i32 1
  store i32* %254, i32** %17, align 8
  store i32 %252, i32* %253, align 4
  %255 = load i32, i32* %33, align 4
  %256 = and i32 %255, 65280
  %257 = ashr i32 %256, 8
  %258 = load %struct.TYPE_4__*, %struct.TYPE_4__** @state, align 8
  %259 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %258, i32 0, i32 0
  %260 = load i32, i32* %259, align 8
  %261 = mul nsw i32 %257, %260
  %262 = sdiv i32 %261, 255
  %263 = load i32*, i32** %17, align 8
  %264 = getelementptr inbounds i32, i32* %263, i32 1
  store i32* %264, i32** %17, align 8
  store i32 %262, i32* %263, align 4
  %265 = load i32, i32* %33, align 4
  %266 = and i32 %265, 255
  %267 = load %struct.TYPE_4__*, %struct.TYPE_4__** @state, align 8
  %268 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 8
  %270 = mul nsw i32 %266, %269
  %271 = sdiv i32 %270, 255
  %272 = load i32*, i32** %17, align 8
  %273 = getelementptr inbounds i32, i32* %272, i32 1
  store i32* %273, i32** %17, align 8
  store i32 %271, i32* %272, align 4
  store i32 3, i32* %15, align 4
  br label %274

274:                                              ; preds = %284, %222
  %275 = load i32, i32* %15, align 4
  %276 = sext i32 %275 to i64
  %277 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %278 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %277, i32 0, i32 0
  %279 = load i64, i64* %278, align 8
  %280 = icmp ult i64 %276, %279
  br i1 %280, label %281, label %287

281:                                              ; preds = %274
  %282 = load i32*, i32** %17, align 8
  %283 = getelementptr inbounds i32, i32* %282, i32 1
  store i32* %283, i32** %17, align 8
  store i32 0, i32* %282, align 4
  br label %284

284:                                              ; preds = %281
  %285 = load i32, i32* %15, align 4
  %286 = add nsw i32 %285, 1
  store i32 %286, i32* %15, align 4
  br label %274

287:                                              ; preds = %274
  br label %288

288:                                              ; preds = %287
  %289 = load i32, i32* %14, align 4
  %290 = add nsw i32 %289, 1
  store i32 %290, i32* %14, align 4
  br label %184

291:                                              ; preds = %184
  br label %292

292:                                              ; preds = %291
  %293 = load i32, i32* %16, align 4
  %294 = add nsw i32 %293, 1
  store i32 %294, i32* %16, align 4
  br label %80

295:                                              ; preds = %80
  ret i32 0
}

declare dso_local i32 @grb2hsv(i32, i32, i32) #1

declare dso_local i32 @hsv2grb(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
