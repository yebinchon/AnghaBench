; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/regex/extr_regprefix.c_findprefix.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/regex/extr_regprefix.c_findprefix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cnfa = type { i32, i64*, i64*, i64, i32, %struct.carc** }
%struct.carc = type { i64, i32 }
%struct.colormap = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i64, i32 }

@COLORLESS = common dso_local global i64 0, align 8
@REG_NOMATCH = common dso_local global i32 0, align 4
@REG_EXACT = common dso_local global i32 0, align 4
@REG_PREFIX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cnfa*, %struct.colormap*, i32*, i64*)* @findprefix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @findprefix(%struct.cnfa* %0, %struct.colormap* %1, i32* %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.cnfa*, align 8
  %7 = alloca %struct.colormap*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.carc*, align 8
  store %struct.cnfa* %0, %struct.cnfa** %6, align 8
  store %struct.colormap* %1, %struct.colormap** %7, align 8
  store i32* %2, i32** %8, align 8
  store i64* %3, i64** %9, align 8
  %15 = load %struct.cnfa*, %struct.cnfa** %6, align 8
  %16 = getelementptr inbounds %struct.cnfa, %struct.cnfa* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %10, align 4
  store i32 -1, i32* %11, align 4
  %18 = load %struct.cnfa*, %struct.cnfa** %6, align 8
  %19 = getelementptr inbounds %struct.cnfa, %struct.cnfa* %18, i32 0, i32 5
  %20 = load %struct.carc**, %struct.carc*** %19, align 8
  %21 = load i32, i32* %10, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.carc*, %struct.carc** %20, i64 %22
  %24 = load %struct.carc*, %struct.carc** %23, align 8
  store %struct.carc* %24, %struct.carc** %14, align 8
  br label %25

25:                                               ; preds = %71, %4
  %26 = load %struct.carc*, %struct.carc** %14, align 8
  %27 = getelementptr inbounds %struct.carc, %struct.carc* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @COLORLESS, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %74

31:                                               ; preds = %25
  %32 = load %struct.carc*, %struct.carc** %14, align 8
  %33 = getelementptr inbounds %struct.carc, %struct.carc* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.cnfa*, %struct.cnfa** %6, align 8
  %36 = getelementptr inbounds %struct.cnfa, %struct.cnfa* %35, i32 0, i32 1
  %37 = load i64*, i64** %36, align 8
  %38 = getelementptr inbounds i64, i64* %37, i64 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp eq i64 %34, %39
  br i1 %40, label %51, label %41

41:                                               ; preds = %31
  %42 = load %struct.carc*, %struct.carc** %14, align 8
  %43 = getelementptr inbounds %struct.carc, %struct.carc* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.cnfa*, %struct.cnfa** %6, align 8
  %46 = getelementptr inbounds %struct.cnfa, %struct.cnfa* %45, i32 0, i32 1
  %47 = load i64*, i64** %46, align 8
  %48 = getelementptr inbounds i64, i64* %47, i64 1
  %49 = load i64, i64* %48, align 8
  %50 = icmp eq i64 %44, %49
  br i1 %50, label %51, label %68

51:                                               ; preds = %41, %31
  %52 = load i32, i32* %11, align 4
  %53 = icmp eq i32 %52, -1
  br i1 %53, label %54, label %58

54:                                               ; preds = %51
  %55 = load %struct.carc*, %struct.carc** %14, align 8
  %56 = getelementptr inbounds %struct.carc, %struct.carc* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  store i32 %57, i32* %11, align 4
  br label %67

58:                                               ; preds = %51
  %59 = load i32, i32* %11, align 4
  %60 = load %struct.carc*, %struct.carc** %14, align 8
  %61 = getelementptr inbounds %struct.carc, %struct.carc* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = icmp ne i32 %59, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %58
  %65 = load i32, i32* @REG_NOMATCH, align 4
  store i32 %65, i32* %5, align 4
  br label %292

66:                                               ; preds = %58
  br label %67

67:                                               ; preds = %66, %54
  br label %70

68:                                               ; preds = %41
  %69 = load i32, i32* @REG_NOMATCH, align 4
  store i32 %69, i32* %5, align 4
  br label %292

70:                                               ; preds = %67
  br label %71

71:                                               ; preds = %70
  %72 = load %struct.carc*, %struct.carc** %14, align 8
  %73 = getelementptr inbounds %struct.carc, %struct.carc* %72, i32 1
  store %struct.carc* %73, %struct.carc** %14, align 8
  br label %25

74:                                               ; preds = %25
  %75 = load i32, i32* %11, align 4
  %76 = icmp eq i32 %75, -1
  br i1 %76, label %77, label %79

77:                                               ; preds = %74
  %78 = load i32, i32* @REG_NOMATCH, align 4
  store i32 %78, i32* %5, align 4
  br label %292

79:                                               ; preds = %74
  br label %80

80:                                               ; preds = %218, %79
  %81 = load i32, i32* %11, align 4
  store i32 %81, i32* %10, align 4
  store i32 -1, i32* %11, align 4
  %82 = load i64, i64* @COLORLESS, align 8
  store i64 %82, i64* %12, align 8
  %83 = load %struct.cnfa*, %struct.cnfa** %6, align 8
  %84 = getelementptr inbounds %struct.cnfa, %struct.cnfa* %83, i32 0, i32 5
  %85 = load %struct.carc**, %struct.carc*** %84, align 8
  %86 = load i32, i32* %10, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.carc*, %struct.carc** %85, i64 %87
  %89 = load %struct.carc*, %struct.carc** %88, align 8
  store %struct.carc* %89, %struct.carc** %14, align 8
  br label %90

90:                                               ; preds = %169, %80
  %91 = load %struct.carc*, %struct.carc** %14, align 8
  %92 = getelementptr inbounds %struct.carc, %struct.carc* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @COLORLESS, align 8
  %95 = icmp ne i64 %93, %94
  br i1 %95, label %96, label %172

96:                                               ; preds = %90
  %97 = load %struct.carc*, %struct.carc** %14, align 8
  %98 = getelementptr inbounds %struct.carc, %struct.carc* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load %struct.cnfa*, %struct.cnfa** %6, align 8
  %101 = getelementptr inbounds %struct.cnfa, %struct.cnfa* %100, i32 0, i32 1
  %102 = load i64*, i64** %101, align 8
  %103 = getelementptr inbounds i64, i64* %102, i64 0
  %104 = load i64, i64* %103, align 8
  %105 = icmp eq i64 %99, %104
  br i1 %105, label %116, label %106

106:                                              ; preds = %96
  %107 = load %struct.carc*, %struct.carc** %14, align 8
  %108 = getelementptr inbounds %struct.carc, %struct.carc* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load %struct.cnfa*, %struct.cnfa** %6, align 8
  %111 = getelementptr inbounds %struct.cnfa, %struct.cnfa* %110, i32 0, i32 1
  %112 = load i64*, i64** %111, align 8
  %113 = getelementptr inbounds i64, i64* %112, i64 1
  %114 = load i64, i64* %113, align 8
  %115 = icmp eq i64 %109, %114
  br i1 %115, label %116, label %117

116:                                              ; preds = %106, %96
  br label %169

117:                                              ; preds = %106
  %118 = load %struct.carc*, %struct.carc** %14, align 8
  %119 = getelementptr inbounds %struct.carc, %struct.carc* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load %struct.cnfa*, %struct.cnfa** %6, align 8
  %122 = getelementptr inbounds %struct.cnfa, %struct.cnfa* %121, i32 0, i32 2
  %123 = load i64*, i64** %122, align 8
  %124 = getelementptr inbounds i64, i64* %123, i64 0
  %125 = load i64, i64* %124, align 8
  %126 = icmp eq i64 %120, %125
  br i1 %126, label %145, label %127

127:                                              ; preds = %117
  %128 = load %struct.carc*, %struct.carc** %14, align 8
  %129 = getelementptr inbounds %struct.carc, %struct.carc* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = load %struct.cnfa*, %struct.cnfa** %6, align 8
  %132 = getelementptr inbounds %struct.cnfa, %struct.cnfa* %131, i32 0, i32 2
  %133 = load i64*, i64** %132, align 8
  %134 = getelementptr inbounds i64, i64* %133, i64 1
  %135 = load i64, i64* %134, align 8
  %136 = icmp eq i64 %130, %135
  br i1 %136, label %145, label %137

137:                                              ; preds = %127
  %138 = load %struct.carc*, %struct.carc** %14, align 8
  %139 = getelementptr inbounds %struct.carc, %struct.carc* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = load %struct.cnfa*, %struct.cnfa** %6, align 8
  %142 = getelementptr inbounds %struct.cnfa, %struct.cnfa* %141, i32 0, i32 3
  %143 = load i64, i64* %142, align 8
  %144 = icmp sge i64 %140, %143
  br i1 %144, label %145, label %147

145:                                              ; preds = %137, %127, %117
  %146 = load i64, i64* @COLORLESS, align 8
  store i64 %146, i64* %12, align 8
  br label %172

147:                                              ; preds = %137
  %148 = load i64, i64* %12, align 8
  %149 = load i64, i64* @COLORLESS, align 8
  %150 = icmp eq i64 %148, %149
  br i1 %150, label %151, label %158

151:                                              ; preds = %147
  %152 = load %struct.carc*, %struct.carc** %14, align 8
  %153 = getelementptr inbounds %struct.carc, %struct.carc* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  store i64 %154, i64* %12, align 8
  %155 = load %struct.carc*, %struct.carc** %14, align 8
  %156 = getelementptr inbounds %struct.carc, %struct.carc* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 8
  store i32 %157, i32* %11, align 4
  br label %168

158:                                              ; preds = %147
  %159 = load i64, i64* %12, align 8
  %160 = load %struct.carc*, %struct.carc** %14, align 8
  %161 = getelementptr inbounds %struct.carc, %struct.carc* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = icmp eq i64 %159, %162
  br i1 %163, label %164, label %165

164:                                              ; preds = %158
  store i32 -1, i32* %11, align 4
  br label %167

165:                                              ; preds = %158
  %166 = load i64, i64* @COLORLESS, align 8
  store i64 %166, i64* %12, align 8
  br label %172

167:                                              ; preds = %164
  br label %168

168:                                              ; preds = %167, %151
  br label %169

169:                                              ; preds = %168, %116
  %170 = load %struct.carc*, %struct.carc** %14, align 8
  %171 = getelementptr inbounds %struct.carc, %struct.carc* %170, i32 1
  store %struct.carc* %171, %struct.carc** %14, align 8
  br label %90

172:                                              ; preds = %165, %145, %90
  %173 = load i64, i64* %12, align 8
  %174 = load i64, i64* @COLORLESS, align 8
  %175 = icmp eq i64 %173, %174
  br i1 %175, label %176, label %177

176:                                              ; preds = %172
  br label %221

177:                                              ; preds = %172
  %178 = load %struct.colormap*, %struct.colormap** %7, align 8
  %179 = getelementptr inbounds %struct.colormap, %struct.colormap* %178, i32 0, i32 0
  %180 = load %struct.TYPE_2__*, %struct.TYPE_2__** %179, align 8
  %181 = load i64, i64* %12, align 8
  %182 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %180, i64 %181
  %183 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = icmp ne i32 %184, 1
  br i1 %185, label %186, label %187

186:                                              ; preds = %177
  br label %221

187:                                              ; preds = %177
  %188 = load %struct.colormap*, %struct.colormap** %7, align 8
  %189 = getelementptr inbounds %struct.colormap, %struct.colormap* %188, i32 0, i32 0
  %190 = load %struct.TYPE_2__*, %struct.TYPE_2__** %189, align 8
  %191 = load i64, i64* %12, align 8
  %192 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %190, i64 %191
  %193 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %192, i32 0, i32 1
  %194 = load i64, i64* %193, align 8
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %196, label %197

196:                                              ; preds = %187
  br label %221

197:                                              ; preds = %187
  %198 = load %struct.colormap*, %struct.colormap** %7, align 8
  %199 = getelementptr inbounds %struct.colormap, %struct.colormap* %198, i32 0, i32 0
  %200 = load %struct.TYPE_2__*, %struct.TYPE_2__** %199, align 8
  %201 = load i64, i64* %12, align 8
  %202 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %200, i64 %201
  %203 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %202, i32 0, i32 2
  %204 = load i32, i32* %203, align 8
  store i32 %204, i32* %13, align 4
  %205 = load %struct.colormap*, %struct.colormap** %7, align 8
  %206 = load i32, i32* %13, align 4
  %207 = call i64 @GETCOLOR(%struct.colormap* %205, i32 %206)
  %208 = load i64, i64* %12, align 8
  %209 = icmp ne i64 %207, %208
  br i1 %209, label %210, label %211

210:                                              ; preds = %197
  br label %221

211:                                              ; preds = %197
  %212 = load i32, i32* %13, align 4
  %213 = load i32*, i32** %8, align 8
  %214 = load i64*, i64** %9, align 8
  %215 = load i64, i64* %214, align 8
  %216 = add i64 %215, 1
  store i64 %216, i64* %214, align 8
  %217 = getelementptr inbounds i32, i32* %213, i64 %215
  store i32 %212, i32* %217, align 4
  br label %218

218:                                              ; preds = %211
  %219 = load i32, i32* %11, align 4
  %220 = icmp ne i32 %219, -1
  br i1 %220, label %80, label %221

221:                                              ; preds = %218, %210, %196, %186, %176
  store i32 -1, i32* %11, align 4
  %222 = load %struct.cnfa*, %struct.cnfa** %6, align 8
  %223 = getelementptr inbounds %struct.cnfa, %struct.cnfa* %222, i32 0, i32 5
  %224 = load %struct.carc**, %struct.carc*** %223, align 8
  %225 = load i32, i32* %10, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds %struct.carc*, %struct.carc** %224, i64 %226
  %228 = load %struct.carc*, %struct.carc** %227, align 8
  store %struct.carc* %228, %struct.carc** %14, align 8
  br label %229

229:                                              ; preds = %273, %221
  %230 = load %struct.carc*, %struct.carc** %14, align 8
  %231 = getelementptr inbounds %struct.carc, %struct.carc* %230, i32 0, i32 0
  %232 = load i64, i64* %231, align 8
  %233 = load i64, i64* @COLORLESS, align 8
  %234 = icmp ne i64 %232, %233
  br i1 %234, label %235, label %276

235:                                              ; preds = %229
  %236 = load %struct.carc*, %struct.carc** %14, align 8
  %237 = getelementptr inbounds %struct.carc, %struct.carc* %236, i32 0, i32 0
  %238 = load i64, i64* %237, align 8
  %239 = load %struct.cnfa*, %struct.cnfa** %6, align 8
  %240 = getelementptr inbounds %struct.cnfa, %struct.cnfa* %239, i32 0, i32 2
  %241 = load i64*, i64** %240, align 8
  %242 = getelementptr inbounds i64, i64* %241, i64 0
  %243 = load i64, i64* %242, align 8
  %244 = icmp eq i64 %238, %243
  br i1 %244, label %255, label %245

245:                                              ; preds = %235
  %246 = load %struct.carc*, %struct.carc** %14, align 8
  %247 = getelementptr inbounds %struct.carc, %struct.carc* %246, i32 0, i32 0
  %248 = load i64, i64* %247, align 8
  %249 = load %struct.cnfa*, %struct.cnfa** %6, align 8
  %250 = getelementptr inbounds %struct.cnfa, %struct.cnfa* %249, i32 0, i32 2
  %251 = load i64*, i64** %250, align 8
  %252 = getelementptr inbounds i64, i64* %251, i64 1
  %253 = load i64, i64* %252, align 8
  %254 = icmp eq i64 %248, %253
  br i1 %254, label %255, label %271

255:                                              ; preds = %245, %235
  %256 = load i32, i32* %11, align 4
  %257 = icmp eq i32 %256, -1
  br i1 %257, label %258, label %262

258:                                              ; preds = %255
  %259 = load %struct.carc*, %struct.carc** %14, align 8
  %260 = getelementptr inbounds %struct.carc, %struct.carc* %259, i32 0, i32 1
  %261 = load i32, i32* %260, align 8
  store i32 %261, i32* %11, align 4
  br label %270

262:                                              ; preds = %255
  %263 = load i32, i32* %11, align 4
  %264 = load %struct.carc*, %struct.carc** %14, align 8
  %265 = getelementptr inbounds %struct.carc, %struct.carc* %264, i32 0, i32 1
  %266 = load i32, i32* %265, align 8
  %267 = icmp ne i32 %263, %266
  br i1 %267, label %268, label %269

268:                                              ; preds = %262
  store i32 -1, i32* %11, align 4
  br label %276

269:                                              ; preds = %262
  br label %270

270:                                              ; preds = %269, %258
  br label %272

271:                                              ; preds = %245
  store i32 -1, i32* %11, align 4
  br label %276

272:                                              ; preds = %270
  br label %273

273:                                              ; preds = %272
  %274 = load %struct.carc*, %struct.carc** %14, align 8
  %275 = getelementptr inbounds %struct.carc, %struct.carc* %274, i32 1
  store %struct.carc* %275, %struct.carc** %14, align 8
  br label %229

276:                                              ; preds = %271, %268, %229
  %277 = load i32, i32* %11, align 4
  %278 = load %struct.cnfa*, %struct.cnfa** %6, align 8
  %279 = getelementptr inbounds %struct.cnfa, %struct.cnfa* %278, i32 0, i32 4
  %280 = load i32, i32* %279, align 8
  %281 = icmp eq i32 %277, %280
  br i1 %281, label %282, label %284

282:                                              ; preds = %276
  %283 = load i32, i32* @REG_EXACT, align 4
  store i32 %283, i32* %5, align 4
  br label %292

284:                                              ; preds = %276
  %285 = load i64*, i64** %9, align 8
  %286 = load i64, i64* %285, align 8
  %287 = icmp ugt i64 %286, 0
  br i1 %287, label %288, label %290

288:                                              ; preds = %284
  %289 = load i32, i32* @REG_PREFIX, align 4
  store i32 %289, i32* %5, align 4
  br label %292

290:                                              ; preds = %284
  %291 = load i32, i32* @REG_NOMATCH, align 4
  store i32 %291, i32* %5, align 4
  br label %292

292:                                              ; preds = %290, %288, %282, %77, %68, %64
  %293 = load i32, i32* %5, align 4
  ret i32 %293
}

declare dso_local i64 @GETCOLOR(%struct.colormap*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
