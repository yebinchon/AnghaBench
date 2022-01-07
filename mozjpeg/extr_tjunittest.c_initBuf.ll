; ModuleID = '/home/carl/AnghaBench/mozjpeg/extr_tjunittest.c_initBuf.c'
source_filename = "/home/carl/AnghaBench/mozjpeg/extr_tjunittest.c_initBuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@tjRedOffset = common dso_local global i32* null, align 8
@tjGreenOffset = common dso_local global i32* null, align 8
@tjBlueOffset = common dso_local global i32* null, align 8
@tjPixelSize = common dso_local global i32* null, align 8
@TJPF_GRAY = common dso_local global i32 0, align 4
@TJFLAG_BOTTOMUP = common dso_local global i32 0, align 4
@TJPF_CMYK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @initBuf(i8* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
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
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %19 = load i32*, i32** @tjRedOffset, align 8
  %20 = load i32, i32* %9, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %11, align 4
  %24 = load i32*, i32** @tjGreenOffset, align 8
  %25 = load i32, i32* %9, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %12, align 4
  %29 = load i32*, i32** @tjBlueOffset, align 8
  %30 = load i32, i32* %9, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %13, align 4
  %34 = load i32*, i32** @tjPixelSize, align 8
  %35 = load i32, i32* %9, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %14, align 4
  store i32 16, i32* %18, align 4
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* @TJPF_GRAY, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %118

42:                                               ; preds = %5
  %43 = load i8*, i8** %6, align 8
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* %8, align 4
  %46 = mul nsw i32 %44, %45
  %47 = load i32, i32* %14, align 4
  %48 = mul nsw i32 %46, %47
  %49 = call i32 @memset(i8* %43, i32 0, i32 %48)
  store i32 0, i32* %16, align 4
  br label %50

50:                                               ; preds = %114, %42
  %51 = load i32, i32* %16, align 4
  %52 = load i32, i32* %8, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %117

54:                                               ; preds = %50
  store i32 0, i32* %17, align 4
  br label %55

55:                                               ; preds = %110, %54
  %56 = load i32, i32* %17, align 4
  %57 = load i32, i32* %7, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %113

59:                                               ; preds = %55
  %60 = load i32, i32* %10, align 4
  %61 = load i32, i32* @TJFLAG_BOTTOMUP, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %73

64:                                               ; preds = %59
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* %16, align 4
  %67 = sub nsw i32 %65, %66
  %68 = sub nsw i32 %67, 1
  %69 = load i32, i32* %7, align 4
  %70 = mul nsw i32 %68, %69
  %71 = load i32, i32* %17, align 4
  %72 = add nsw i32 %70, %71
  store i32 %72, i32* %15, align 4
  br label %79

73:                                               ; preds = %59
  %74 = load i32, i32* %16, align 4
  %75 = load i32, i32* %7, align 4
  %76 = mul nsw i32 %74, %75
  %77 = load i32, i32* %17, align 4
  %78 = add nsw i32 %76, %77
  store i32 %78, i32* %15, align 4
  br label %79

79:                                               ; preds = %73, %64
  %80 = load i32, i32* %16, align 4
  %81 = sdiv i32 %80, 8
  %82 = load i32, i32* %17, align 4
  %83 = sdiv i32 %82, 8
  %84 = add nsw i32 %81, %83
  %85 = srem i32 %84, 2
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %98

87:                                               ; preds = %79
  %88 = load i32, i32* %16, align 4
  %89 = load i32, i32* %18, align 4
  %90 = icmp slt i32 %88, %89
  %91 = zext i1 %90 to i64
  %92 = select i1 %90, i32 255, i32 0
  %93 = trunc i32 %92 to i8
  %94 = load i8*, i8** %6, align 8
  %95 = load i32, i32* %15, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i8, i8* %94, i64 %96
  store i8 %93, i8* %97, align 1
  br label %109

98:                                               ; preds = %79
  %99 = load i32, i32* %16, align 4
  %100 = load i32, i32* %18, align 4
  %101 = icmp slt i32 %99, %100
  %102 = zext i1 %101 to i64
  %103 = select i1 %101, i32 76, i32 226
  %104 = trunc i32 %103 to i8
  %105 = load i8*, i8** %6, align 8
  %106 = load i32, i32* %15, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i8, i8* %105, i64 %107
  store i8 %104, i8* %108, align 1
  br label %109

109:                                              ; preds = %98, %87
  br label %110

110:                                              ; preds = %109
  %111 = load i32, i32* %17, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %17, align 4
  br label %55

113:                                              ; preds = %55
  br label %114

114:                                              ; preds = %113
  %115 = load i32, i32* %16, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %16, align 4
  br label %50

117:                                              ; preds = %50
  br label %316

118:                                              ; preds = %5
  %119 = load i32, i32* %9, align 4
  %120 = load i32, i32* @TJPF_CMYK, align 4
  %121 = icmp eq i32 %119, %120
  br i1 %121, label %122, label %209

122:                                              ; preds = %118
  %123 = load i8*, i8** %6, align 8
  %124 = load i32, i32* %7, align 4
  %125 = load i32, i32* %8, align 4
  %126 = mul nsw i32 %124, %125
  %127 = load i32, i32* %14, align 4
  %128 = mul nsw i32 %126, %127
  %129 = call i32 @memset(i8* %123, i32 255, i32 %128)
  store i32 0, i32* %16, align 4
  br label %130

130:                                              ; preds = %205, %122
  %131 = load i32, i32* %16, align 4
  %132 = load i32, i32* %8, align 4
  %133 = icmp slt i32 %131, %132
  br i1 %133, label %134, label %208

134:                                              ; preds = %130
  store i32 0, i32* %17, align 4
  br label %135

135:                                              ; preds = %201, %134
  %136 = load i32, i32* %17, align 4
  %137 = load i32, i32* %7, align 4
  %138 = icmp slt i32 %136, %137
  br i1 %138, label %139, label %204

139:                                              ; preds = %135
  %140 = load i32, i32* %10, align 4
  %141 = load i32, i32* @TJFLAG_BOTTOMUP, align 4
  %142 = and i32 %140, %141
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %153

144:                                              ; preds = %139
  %145 = load i32, i32* %8, align 4
  %146 = load i32, i32* %16, align 4
  %147 = sub nsw i32 %145, %146
  %148 = sub nsw i32 %147, 1
  %149 = load i32, i32* %7, align 4
  %150 = mul nsw i32 %148, %149
  %151 = load i32, i32* %17, align 4
  %152 = add nsw i32 %150, %151
  store i32 %152, i32* %15, align 4
  br label %159

153:                                              ; preds = %139
  %154 = load i32, i32* %16, align 4
  %155 = load i32, i32* %7, align 4
  %156 = mul nsw i32 %154, %155
  %157 = load i32, i32* %17, align 4
  %158 = add nsw i32 %156, %157
  store i32 %158, i32* %15, align 4
  br label %159

159:                                              ; preds = %153, %144
  %160 = load i32, i32* %16, align 4
  %161 = sdiv i32 %160, 8
  %162 = load i32, i32* %17, align 4
  %163 = sdiv i32 %162, 8
  %164 = add nsw i32 %161, %163
  %165 = srem i32 %164, 2
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %167, label %180

167:                                              ; preds = %159
  %168 = load i32, i32* %16, align 4
  %169 = load i32, i32* %18, align 4
  %170 = icmp sge i32 %168, %169
  br i1 %170, label %171, label %179

171:                                              ; preds = %167
  %172 = load i8*, i8** %6, align 8
  %173 = load i32, i32* %15, align 4
  %174 = load i32, i32* %14, align 4
  %175 = mul nsw i32 %173, %174
  %176 = add nsw i32 %175, 3
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i8, i8* %172, i64 %177
  store i8 0, i8* %178, align 1
  br label %179

179:                                              ; preds = %171, %167
  br label %200

180:                                              ; preds = %159
  %181 = load i8*, i8** %6, align 8
  %182 = load i32, i32* %15, align 4
  %183 = load i32, i32* %14, align 4
  %184 = mul nsw i32 %182, %183
  %185 = add nsw i32 %184, 2
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i8, i8* %181, i64 %186
  store i8 0, i8* %187, align 1
  %188 = load i32, i32* %16, align 4
  %189 = load i32, i32* %18, align 4
  %190 = icmp slt i32 %188, %189
  br i1 %190, label %191, label %199

191:                                              ; preds = %180
  %192 = load i8*, i8** %6, align 8
  %193 = load i32, i32* %15, align 4
  %194 = load i32, i32* %14, align 4
  %195 = mul nsw i32 %193, %194
  %196 = add nsw i32 %195, 1
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds i8, i8* %192, i64 %197
  store i8 0, i8* %198, align 1
  br label %199

199:                                              ; preds = %191, %180
  br label %200

200:                                              ; preds = %199, %179
  br label %201

201:                                              ; preds = %200
  %202 = load i32, i32* %17, align 4
  %203 = add nsw i32 %202, 1
  store i32 %203, i32* %17, align 4
  br label %135

204:                                              ; preds = %135
  br label %205

205:                                              ; preds = %204
  %206 = load i32, i32* %16, align 4
  %207 = add nsw i32 %206, 1
  store i32 %207, i32* %16, align 4
  br label %130

208:                                              ; preds = %130
  br label %315

209:                                              ; preds = %118
  %210 = load i8*, i8** %6, align 8
  %211 = load i32, i32* %7, align 4
  %212 = load i32, i32* %8, align 4
  %213 = mul nsw i32 %211, %212
  %214 = load i32, i32* %14, align 4
  %215 = mul nsw i32 %213, %214
  %216 = call i32 @memset(i8* %210, i32 0, i32 %215)
  store i32 0, i32* %16, align 4
  br label %217

217:                                              ; preds = %311, %209
  %218 = load i32, i32* %16, align 4
  %219 = load i32, i32* %8, align 4
  %220 = icmp slt i32 %218, %219
  br i1 %220, label %221, label %314

221:                                              ; preds = %217
  store i32 0, i32* %17, align 4
  br label %222

222:                                              ; preds = %307, %221
  %223 = load i32, i32* %17, align 4
  %224 = load i32, i32* %7, align 4
  %225 = icmp slt i32 %223, %224
  br i1 %225, label %226, label %310

226:                                              ; preds = %222
  %227 = load i32, i32* %10, align 4
  %228 = load i32, i32* @TJFLAG_BOTTOMUP, align 4
  %229 = and i32 %227, %228
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %240

231:                                              ; preds = %226
  %232 = load i32, i32* %8, align 4
  %233 = load i32, i32* %16, align 4
  %234 = sub nsw i32 %232, %233
  %235 = sub nsw i32 %234, 1
  %236 = load i32, i32* %7, align 4
  %237 = mul nsw i32 %235, %236
  %238 = load i32, i32* %17, align 4
  %239 = add nsw i32 %237, %238
  store i32 %239, i32* %15, align 4
  br label %246

240:                                              ; preds = %226
  %241 = load i32, i32* %16, align 4
  %242 = load i32, i32* %7, align 4
  %243 = mul nsw i32 %241, %242
  %244 = load i32, i32* %17, align 4
  %245 = add nsw i32 %243, %244
  store i32 %245, i32* %15, align 4
  br label %246

246:                                              ; preds = %240, %231
  %247 = load i32, i32* %16, align 4
  %248 = sdiv i32 %247, 8
  %249 = load i32, i32* %17, align 4
  %250 = sdiv i32 %249, 8
  %251 = add nsw i32 %248, %250
  %252 = srem i32 %251, 2
  %253 = icmp eq i32 %252, 0
  br i1 %253, label %254, label %284

254:                                              ; preds = %246
  %255 = load i32, i32* %16, align 4
  %256 = load i32, i32* %18, align 4
  %257 = icmp slt i32 %255, %256
  br i1 %257, label %258, label %283

258:                                              ; preds = %254
  %259 = load i8*, i8** %6, align 8
  %260 = load i32, i32* %15, align 4
  %261 = load i32, i32* %14, align 4
  %262 = mul nsw i32 %260, %261
  %263 = load i32, i32* %11, align 4
  %264 = add nsw i32 %262, %263
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds i8, i8* %259, i64 %265
  store i8 -1, i8* %266, align 1
  %267 = load i8*, i8** %6, align 8
  %268 = load i32, i32* %15, align 4
  %269 = load i32, i32* %14, align 4
  %270 = mul nsw i32 %268, %269
  %271 = load i32, i32* %12, align 4
  %272 = add nsw i32 %270, %271
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds i8, i8* %267, i64 %273
  store i8 -1, i8* %274, align 1
  %275 = load i8*, i8** %6, align 8
  %276 = load i32, i32* %15, align 4
  %277 = load i32, i32* %14, align 4
  %278 = mul nsw i32 %276, %277
  %279 = load i32, i32* %13, align 4
  %280 = add nsw i32 %278, %279
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds i8, i8* %275, i64 %281
  store i8 -1, i8* %282, align 1
  br label %283

283:                                              ; preds = %258, %254
  br label %306

284:                                              ; preds = %246
  %285 = load i8*, i8** %6, align 8
  %286 = load i32, i32* %15, align 4
  %287 = load i32, i32* %14, align 4
  %288 = mul nsw i32 %286, %287
  %289 = load i32, i32* %11, align 4
  %290 = add nsw i32 %288, %289
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds i8, i8* %285, i64 %291
  store i8 -1, i8* %292, align 1
  %293 = load i32, i32* %16, align 4
  %294 = load i32, i32* %18, align 4
  %295 = icmp sge i32 %293, %294
  br i1 %295, label %296, label %305

296:                                              ; preds = %284
  %297 = load i8*, i8** %6, align 8
  %298 = load i32, i32* %15, align 4
  %299 = load i32, i32* %14, align 4
  %300 = mul nsw i32 %298, %299
  %301 = load i32, i32* %12, align 4
  %302 = add nsw i32 %300, %301
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds i8, i8* %297, i64 %303
  store i8 -1, i8* %304, align 1
  br label %305

305:                                              ; preds = %296, %284
  br label %306

306:                                              ; preds = %305, %283
  br label %307

307:                                              ; preds = %306
  %308 = load i32, i32* %17, align 4
  %309 = add nsw i32 %308, 1
  store i32 %309, i32* %17, align 4
  br label %222

310:                                              ; preds = %222
  br label %311

311:                                              ; preds = %310
  %312 = load i32, i32* %16, align 4
  %313 = add nsw i32 %312, 1
  store i32 %313, i32* %16, align 4
  br label %217

314:                                              ; preds = %217
  br label %315

315:                                              ; preds = %314, %208
  br label %316

316:                                              ; preds = %315, %117
  ret void
}

declare dso_local i32 @memset(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
