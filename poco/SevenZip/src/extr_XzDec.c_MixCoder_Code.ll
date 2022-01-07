; ModuleID = '/home/carl/AnghaBench/poco/SevenZip/src/extr_XzDec.c_MixCoder_Code.c'
source_filename = "/home/carl/AnghaBench/poco/SevenZip/src/extr_XzDec.c_MixCoder_Code.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32, i32*, i64*, i32*, %struct.TYPE_5__*, %struct.TYPE_7__* }
%struct.TYPE_5__ = type { i64 (i32, i32*, i64*, i32*, i64*, i32, i32, i32*)*, i32 }
%struct.TYPE_7__ = type { i64 (%struct.TYPE_7__*, i32)* }

@True = common dso_local global i64 0, align 8
@CODER_STATUS_NOT_FINISHED = common dso_local global i32 0, align 4
@CODER_BUF_SIZE = common dso_local global i32 0, align 4
@MIXCODER_NUM_FILTERS_MAX = common dso_local global i32 0, align 4
@SZ_ERROR_MEM = common dso_local global i64 0, align 8
@CODER_FINISH_ANY = common dso_local global i32 0, align 4
@False = common dso_local global i64 0, align 8
@SZ_OK = common dso_local global i64 0, align 8
@CODER_STATUS_FINISHED_WITH_MARK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @MixCoder_Code(%struct.TYPE_6__* %0, i32* %1, i64* %2, i32* %3, i64* %4, i32 %5, i32 %6, i32* %7) #0 {
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca i64, align 8
  %24 = alloca %struct.TYPE_5__*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i32*, align 8
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %10, align 8
  store i32* %1, i32** %11, align 8
  store i64* %2, i64** %12, align 8
  store i32* %3, i32** %13, align 8
  store i64* %4, i64** %14, align 8
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32* %7, i32** %17, align 8
  %31 = load i64*, i64** %12, align 8
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* %18, align 8
  %33 = load i64*, i64** %14, align 8
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %19, align 8
  %35 = load i64, i64* @True, align 8
  store i64 %35, i64* %20, align 8
  %36 = load i64*, i64** %12, align 8
  store i64 0, i64* %36, align 8
  %37 = load i64*, i64** %14, align 8
  store i64 0, i64* %37, align 8
  %38 = load i32, i32* @CODER_STATUS_NOT_FINISHED, align 4
  %39 = load i32*, i32** %17, align 8
  store i32 %38, i32* %39, align 4
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %67

44:                                               ; preds = %8
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 6
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = load i64 (%struct.TYPE_7__*, i32)*, i64 (%struct.TYPE_7__*, i32)** %48, align 8
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 6
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %51, align 8
  %53 = load i32, i32* @CODER_BUF_SIZE, align 4
  %54 = load i32, i32* @MIXCODER_NUM_FILTERS_MAX, align 4
  %55 = sub nsw i32 %54, 1
  %56 = mul nsw i32 %53, %55
  %57 = call i64 %49(%struct.TYPE_7__* %52, i32 %56)
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  store i64 %57, i64* %59, align 8
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %44
  %65 = load i64, i64* @SZ_ERROR_MEM, align 8
  store i64 %65, i64* %9, align 8
  br label %296

66:                                               ; preds = %44
  br label %67

67:                                               ; preds = %66, %8
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = icmp ne i32 %70, 1
  br i1 %71, label %72, label %74

72:                                               ; preds = %67
  %73 = load i32, i32* @CODER_FINISH_ANY, align 4
  store i32 %73, i32* %16, align 4
  br label %74

74:                                               ; preds = %72, %67
  br label %75

75:                                               ; preds = %287, %74
  %76 = load i64, i64* @False, align 8
  store i64 %76, i64* %21, align 8
  store i32 0, i32* %22, align 4
  br label %77

77:                                               ; preds = %280, %75
  %78 = load i32, i32* %22, align 4
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = icmp slt i32 %78, %81
  br i1 %82, label %83, label %283

83:                                               ; preds = %77
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 5
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %85, align 8
  %87 = load i32, i32* %22, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i64 %88
  store %struct.TYPE_5__* %89, %struct.TYPE_5__** %24, align 8
  %90 = load i32, i32* %22, align 4
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %99

92:                                               ; preds = %83
  %93 = load i32*, i32** %13, align 8
  store i32* %93, i32** %28, align 8
  %94 = load i64, i64* %19, align 8
  %95 = load i64*, i64** %14, align 8
  %96 = load i64, i64* %95, align 8
  %97 = sub nsw i64 %94, %96
  store i64 %97, i64* %27, align 8
  %98 = load i32, i32* %15, align 4
  store i32 %98, i32* %29, align 4
  br label %146

99:                                               ; preds = %83
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load i32, i32* @CODER_BUF_SIZE, align 4
  %104 = load i32, i32* %22, align 4
  %105 = sub nsw i32 %104, 1
  %106 = mul nsw i32 %103, %105
  %107 = sext i32 %106 to i64
  %108 = add nsw i64 %102, %107
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 2
  %111 = load i32*, i32** %110, align 8
  %112 = load i32, i32* %22, align 4
  %113 = sub nsw i32 %112, 1
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %111, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = sext i32 %116 to i64
  %118 = add nsw i64 %108, %117
  %119 = inttoptr i64 %118 to i32*
  store i32* %119, i32** %28, align 8
  %120 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 3
  %122 = load i64*, i64** %121, align 8
  %123 = load i32, i32* %22, align 4
  %124 = sub nsw i32 %123, 1
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i64, i64* %122, i64 %125
  %127 = load i64, i64* %126, align 8
  %128 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 2
  %130 = load i32*, i32** %129, align 8
  %131 = load i32, i32* %22, align 4
  %132 = sub nsw i32 %131, 1
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i32, i32* %130, i64 %133
  %135 = load i32, i32* %134, align 4
  %136 = sext i32 %135 to i64
  %137 = sub nsw i64 %127, %136
  store i64 %137, i64* %27, align 8
  %138 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 4
  %140 = load i32*, i32** %139, align 8
  %141 = load i32, i32* %22, align 4
  %142 = sub nsw i32 %141, 1
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i32, i32* %140, i64 %143
  %145 = load i32, i32* %144, align 4
  store i32 %145, i32* %29, align 4
  br label %146

146:                                              ; preds = %99, %92
  %147 = load i32, i32* %22, align 4
  %148 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 8
  %151 = sub nsw i32 %150, 1
  %152 = icmp eq i32 %147, %151
  br i1 %152, label %153, label %159

153:                                              ; preds = %146
  %154 = load i32*, i32** %11, align 8
  store i32* %154, i32** %25, align 8
  %155 = load i64, i64* %18, align 8
  %156 = load i64*, i64** %12, align 8
  %157 = load i64, i64* %156, align 8
  %158 = sub nsw i64 %155, %157
  store i64 %158, i64* %26, align 8
  br label %189

159:                                              ; preds = %146
  %160 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %160, i32 0, i32 2
  %162 = load i32*, i32** %161, align 8
  %163 = load i32, i32* %22, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i32, i32* %162, i64 %164
  %166 = load i32, i32* %165, align 4
  %167 = sext i32 %166 to i64
  %168 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %169 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %168, i32 0, i32 3
  %170 = load i64*, i64** %169, align 8
  %171 = load i32, i32* %22, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i64, i64* %170, i64 %172
  %174 = load i64, i64* %173, align 8
  %175 = icmp ne i64 %167, %174
  br i1 %175, label %176, label %177

176:                                              ; preds = %159
  br label %280

177:                                              ; preds = %159
  %178 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %179 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %178, i32 0, i32 0
  %180 = load i64, i64* %179, align 8
  %181 = load i32, i32* @CODER_BUF_SIZE, align 4
  %182 = load i32, i32* %22, align 4
  %183 = mul nsw i32 %181, %182
  %184 = sext i32 %183 to i64
  %185 = add nsw i64 %180, %184
  %186 = inttoptr i64 %185 to i32*
  store i32* %186, i32** %25, align 8
  %187 = load i32, i32* @CODER_BUF_SIZE, align 4
  %188 = sext i32 %187 to i64
  store i64 %188, i64* %26, align 8
  br label %189

189:                                              ; preds = %177, %153
  %190 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %191 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %190, i32 0, i32 0
  %192 = load i64 (i32, i32*, i64*, i32*, i64*, i32, i32, i32*)*, i64 (i32, i32*, i64*, i32*, i64*, i32, i32, i32*)** %191, align 8
  %193 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %194 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 8
  %196 = load i32*, i32** %25, align 8
  %197 = load i32*, i32** %28, align 8
  %198 = load i32, i32* %29, align 4
  %199 = load i32, i32* %16, align 4
  %200 = call i64 %192(i32 %195, i32* %196, i64* %26, i32* %197, i64* %27, i32 %198, i32 %199, i32* %30)
  store i64 %200, i64* %23, align 8
  %201 = load i32, i32* %30, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %205, label %203

203:                                              ; preds = %189
  %204 = load i64, i64* @False, align 8
  store i64 %204, i64* %20, align 8
  br label %205

205:                                              ; preds = %203, %189
  %206 = load i32, i32* %22, align 4
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %208, label %216

208:                                              ; preds = %205
  %209 = load i64, i64* %27, align 8
  %210 = load i64*, i64** %14, align 8
  %211 = load i64, i64* %210, align 8
  %212 = add nsw i64 %211, %209
  store i64 %212, i64* %210, align 8
  %213 = load i64, i64* %27, align 8
  %214 = load i32*, i32** %13, align 8
  %215 = getelementptr inbounds i32, i32* %214, i64 %213
  store i32* %215, i32** %13, align 8
  br label %229

216:                                              ; preds = %205
  %217 = load i64, i64* %27, align 8
  %218 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %219 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %218, i32 0, i32 2
  %220 = load i32*, i32** %219, align 8
  %221 = load i32, i32* %22, align 4
  %222 = sub nsw i32 %221, 1
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds i32, i32* %220, i64 %223
  %225 = load i32, i32* %224, align 4
  %226 = sext i32 %225 to i64
  %227 = add nsw i64 %226, %217
  %228 = trunc i64 %227 to i32
  store i32 %228, i32* %224, align 4
  br label %229

229:                                              ; preds = %216, %208
  %230 = load i32, i32* %22, align 4
  %231 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %232 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %231, i32 0, i32 1
  %233 = load i32, i32* %232, align 8
  %234 = sub nsw i32 %233, 1
  %235 = icmp eq i32 %230, %234
  br i1 %235, label %236, label %244

236:                                              ; preds = %229
  %237 = load i64, i64* %26, align 8
  %238 = load i64*, i64** %12, align 8
  %239 = load i64, i64* %238, align 8
  %240 = add nsw i64 %239, %237
  store i64 %240, i64* %238, align 8
  %241 = load i64, i64* %26, align 8
  %242 = load i32*, i32** %11, align 8
  %243 = getelementptr inbounds i32, i32* %242, i64 %241
  store i32* %243, i32** %11, align 8
  br label %265

244:                                              ; preds = %229
  %245 = load i64, i64* %26, align 8
  %246 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %247 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %246, i32 0, i32 3
  %248 = load i64*, i64** %247, align 8
  %249 = load i32, i32* %22, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds i64, i64* %248, i64 %250
  store i64 %245, i64* %251, align 8
  %252 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %253 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %252, i32 0, i32 2
  %254 = load i32*, i32** %253, align 8
  %255 = load i32, i32* %22, align 4
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds i32, i32* %254, i64 %256
  store i32 0, i32* %257, align 4
  %258 = load i32, i32* %30, align 4
  %259 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %260 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %259, i32 0, i32 4
  %261 = load i32*, i32** %260, align 8
  %262 = load i32, i32* %22, align 4
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds i32, i32* %261, i64 %263
  store i32 %258, i32* %264, align 4
  br label %265

265:                                              ; preds = %244, %236
  %266 = load i64, i64* %23, align 8
  %267 = load i64, i64* @SZ_OK, align 8
  %268 = icmp ne i64 %266, %267
  br i1 %268, label %269, label %271

269:                                              ; preds = %265
  %270 = load i64, i64* %23, align 8
  store i64 %270, i64* %9, align 8
  br label %296

271:                                              ; preds = %265
  %272 = load i64, i64* %26, align 8
  %273 = icmp ne i64 %272, 0
  br i1 %273, label %277, label %274

274:                                              ; preds = %271
  %275 = load i64, i64* %27, align 8
  %276 = icmp ne i64 %275, 0
  br i1 %276, label %277, label %279

277:                                              ; preds = %274, %271
  %278 = load i64, i64* @True, align 8
  store i64 %278, i64* %21, align 8
  br label %279

279:                                              ; preds = %277, %274
  br label %280

280:                                              ; preds = %279, %176
  %281 = load i32, i32* %22, align 4
  %282 = add nsw i32 %281, 1
  store i32 %282, i32* %22, align 4
  br label %77

283:                                              ; preds = %77
  %284 = load i64, i64* %21, align 8
  %285 = icmp ne i64 %284, 0
  br i1 %285, label %287, label %286

286:                                              ; preds = %283
  br label %288

287:                                              ; preds = %283
  br label %75

288:                                              ; preds = %286
  %289 = load i64, i64* %20, align 8
  %290 = icmp ne i64 %289, 0
  br i1 %290, label %291, label %294

291:                                              ; preds = %288
  %292 = load i32, i32* @CODER_STATUS_FINISHED_WITH_MARK, align 4
  %293 = load i32*, i32** %17, align 8
  store i32 %292, i32* %293, align 4
  br label %294

294:                                              ; preds = %291, %288
  %295 = load i64, i64* @SZ_OK, align 8
  store i64 %295, i64* %9, align 8
  br label %296

296:                                              ; preds = %294, %269, %64
  %297 = load i64, i64* %9, align 8
  ret i64 %297
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
