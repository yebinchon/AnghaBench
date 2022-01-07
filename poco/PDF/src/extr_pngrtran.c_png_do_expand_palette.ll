; ModuleID = '/home/carl/AnghaBench/poco/PDF/src/extr_pngrtran.c_png_do_expand_palette.c'
source_filename = "/home/carl/AnghaBench/poco/PDF/src/extr_pngrtran.c_png_do_expand_palette.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i64, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [26 x i8] c"in png_do_expand_palette\0A\00", align 1
@PNG_COLOR_TYPE_PALETTE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @png_do_expand_palette(%struct.TYPE_5__* %0, i32* %1, %struct.TYPE_6__* %2, i32* %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %6, align 8
  store i32* %1, i32** %7, align 8
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 %4, i32* %10, align 4
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %16, align 4
  %20 = call i32 @png_debug(i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @PNG_COLOR_TYPE_PALETTE, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %326

26:                                               ; preds = %5
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = icmp slt i32 %29, 8
  br i1 %30, label %31, label %176

31:                                               ; preds = %26
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  switch i32 %34, label %168 [
    i32 1, label %35
    i32 2, label %82
    i32 4, label %126
  ]

35:                                               ; preds = %31
  %36 = load i32*, i32** %7, align 8
  %37 = load i32, i32* %16, align 4
  %38 = sub nsw i32 %37, 1
  %39 = ashr i32 %38, 3
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %36, i64 %40
  store i32* %41, i32** %13, align 8
  %42 = load i32*, i32** %7, align 8
  %43 = load i32, i32* %16, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = getelementptr inbounds i32, i32* %45, i64 -1
  store i32* %46, i32** %14, align 8
  %47 = load i32, i32* %16, align 4
  %48 = add nsw i32 %47, 7
  %49 = and i32 %48, 7
  %50 = sub nsw i32 7, %49
  store i32 %50, i32* %11, align 4
  store i32 0, i32* %15, align 4
  br label %51

51:                                               ; preds = %78, %35
  %52 = load i32, i32* %15, align 4
  %53 = load i32, i32* %16, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %81

55:                                               ; preds = %51
  %56 = load i32*, i32** %13, align 8
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %11, align 4
  %59 = ashr i32 %57, %58
  %60 = and i32 %59, 1
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %55
  %63 = load i32*, i32** %14, align 8
  store i32 1, i32* %63, align 4
  br label %66

64:                                               ; preds = %55
  %65 = load i32*, i32** %14, align 8
  store i32 0, i32* %65, align 4
  br label %66

66:                                               ; preds = %64, %62
  %67 = load i32, i32* %11, align 4
  %68 = icmp eq i32 %67, 7
  br i1 %68, label %69, label %72

69:                                               ; preds = %66
  store i32 0, i32* %11, align 4
  %70 = load i32*, i32** %13, align 8
  %71 = getelementptr inbounds i32, i32* %70, i32 -1
  store i32* %71, i32** %13, align 8
  br label %75

72:                                               ; preds = %66
  %73 = load i32, i32* %11, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %11, align 4
  br label %75

75:                                               ; preds = %72, %69
  %76 = load i32*, i32** %14, align 8
  %77 = getelementptr inbounds i32, i32* %76, i32 -1
  store i32* %77, i32** %14, align 8
  br label %78

78:                                               ; preds = %75
  %79 = load i32, i32* %15, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %15, align 4
  br label %51

81:                                               ; preds = %51
  br label %168

82:                                               ; preds = %31
  %83 = load i32*, i32** %7, align 8
  %84 = load i32, i32* %16, align 4
  %85 = sub nsw i32 %84, 1
  %86 = ashr i32 %85, 2
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %83, i64 %87
  store i32* %88, i32** %13, align 8
  %89 = load i32*, i32** %7, align 8
  %90 = load i32, i32* %16, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  %93 = getelementptr inbounds i32, i32* %92, i64 -1
  store i32* %93, i32** %14, align 8
  %94 = load i32, i32* %16, align 4
  %95 = add nsw i32 %94, 3
  %96 = and i32 %95, 3
  %97 = sub nsw i32 3, %96
  %98 = shl i32 %97, 1
  store i32 %98, i32* %11, align 4
  store i32 0, i32* %15, align 4
  br label %99

99:                                               ; preds = %122, %82
  %100 = load i32, i32* %15, align 4
  %101 = load i32, i32* %16, align 4
  %102 = icmp slt i32 %100, %101
  br i1 %102, label %103, label %125

103:                                              ; preds = %99
  %104 = load i32*, i32** %13, align 8
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* %11, align 4
  %107 = ashr i32 %105, %106
  %108 = and i32 %107, 3
  store i32 %108, i32* %12, align 4
  %109 = load i32, i32* %12, align 4
  %110 = load i32*, i32** %14, align 8
  store i32 %109, i32* %110, align 4
  %111 = load i32, i32* %11, align 4
  %112 = icmp eq i32 %111, 6
  br i1 %112, label %113, label %116

113:                                              ; preds = %103
  store i32 0, i32* %11, align 4
  %114 = load i32*, i32** %13, align 8
  %115 = getelementptr inbounds i32, i32* %114, i32 -1
  store i32* %115, i32** %13, align 8
  br label %119

116:                                              ; preds = %103
  %117 = load i32, i32* %11, align 4
  %118 = add nsw i32 %117, 2
  store i32 %118, i32* %11, align 4
  br label %119

119:                                              ; preds = %116, %113
  %120 = load i32*, i32** %14, align 8
  %121 = getelementptr inbounds i32, i32* %120, i32 -1
  store i32* %121, i32** %14, align 8
  br label %122

122:                                              ; preds = %119
  %123 = load i32, i32* %15, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %15, align 4
  br label %99

125:                                              ; preds = %99
  br label %168

126:                                              ; preds = %31
  %127 = load i32*, i32** %7, align 8
  %128 = load i32, i32* %16, align 4
  %129 = sub nsw i32 %128, 1
  %130 = ashr i32 %129, 1
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i32, i32* %127, i64 %131
  store i32* %132, i32** %13, align 8
  %133 = load i32*, i32** %7, align 8
  %134 = load i32, i32* %16, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i32, i32* %133, i64 %135
  %137 = getelementptr inbounds i32, i32* %136, i64 -1
  store i32* %137, i32** %14, align 8
  %138 = load i32, i32* %16, align 4
  %139 = and i32 %138, 1
  %140 = shl i32 %139, 2
  store i32 %140, i32* %11, align 4
  store i32 0, i32* %15, align 4
  br label %141

141:                                              ; preds = %164, %126
  %142 = load i32, i32* %15, align 4
  %143 = load i32, i32* %16, align 4
  %144 = icmp slt i32 %142, %143
  br i1 %144, label %145, label %167

145:                                              ; preds = %141
  %146 = load i32*, i32** %13, align 8
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* %11, align 4
  %149 = ashr i32 %147, %148
  %150 = and i32 %149, 15
  store i32 %150, i32* %12, align 4
  %151 = load i32, i32* %12, align 4
  %152 = load i32*, i32** %14, align 8
  store i32 %151, i32* %152, align 4
  %153 = load i32, i32* %11, align 4
  %154 = icmp eq i32 %153, 4
  br i1 %154, label %155, label %158

155:                                              ; preds = %145
  store i32 0, i32* %11, align 4
  %156 = load i32*, i32** %13, align 8
  %157 = getelementptr inbounds i32, i32* %156, i32 -1
  store i32* %157, i32** %13, align 8
  br label %161

158:                                              ; preds = %145
  %159 = load i32, i32* %11, align 4
  %160 = add nsw i32 %159, 4
  store i32 %160, i32* %11, align 4
  br label %161

161:                                              ; preds = %158, %155
  %162 = load i32*, i32** %14, align 8
  %163 = getelementptr inbounds i32, i32* %162, i32 -1
  store i32* %163, i32** %14, align 8
  br label %164

164:                                              ; preds = %161
  %165 = load i32, i32* %15, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %15, align 4
  br label %141

167:                                              ; preds = %141
  br label %168

168:                                              ; preds = %31, %167, %125, %81
  %169 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %170 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %169, i32 0, i32 2
  store i32 8, i32* %170, align 8
  %171 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %172 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %171, i32 0, i32 3
  store i32 8, i32* %172, align 4
  %173 = load i32, i32* %16, align 4
  %174 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %175 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %174, i32 0, i32 4
  store i32 %173, i32* %175, align 8
  br label %176

176:                                              ; preds = %168, %26
  %177 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %178 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %177, i32 0, i32 2
  %179 = load i32, i32* %178, align 8
  switch i32 %179, label %325 [
    i32 8, label %180
  ]

180:                                              ; preds = %176
  %181 = load i32*, i32** %9, align 8
  %182 = icmp ne i32* %181, null
  br i1 %182, label %183, label %262

183:                                              ; preds = %180
  %184 = load i32*, i32** %7, align 8
  %185 = load i32, i32* %16, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i32, i32* %184, i64 %186
  %188 = getelementptr inbounds i32, i32* %187, i64 -1
  store i32* %188, i32** %13, align 8
  %189 = load i32*, i32** %7, align 8
  %190 = load i32, i32* %16, align 4
  %191 = shl i32 %190, 2
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds i32, i32* %189, i64 %192
  %194 = getelementptr inbounds i32, i32* %193, i64 -1
  store i32* %194, i32** %14, align 8
  store i32 0, i32* %15, align 4
  br label %195

195:                                              ; preds = %246, %183
  %196 = load i32, i32* %15, align 4
  %197 = load i32, i32* %16, align 4
  %198 = icmp slt i32 %196, %197
  br i1 %198, label %199, label %249

199:                                              ; preds = %195
  %200 = load i32*, i32** %13, align 8
  %201 = load i32, i32* %200, align 4
  %202 = load i32, i32* %10, align 4
  %203 = icmp sge i32 %201, %202
  br i1 %203, label %204, label %207

204:                                              ; preds = %199
  %205 = load i32*, i32** %14, align 8
  %206 = getelementptr inbounds i32, i32* %205, i32 -1
  store i32* %206, i32** %14, align 8
  store i32 255, i32* %205, align 4
  br label %216

207:                                              ; preds = %199
  %208 = load i32*, i32** %9, align 8
  %209 = load i32*, i32** %13, align 8
  %210 = load i32, i32* %209, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds i32, i32* %208, i64 %211
  %213 = load i32, i32* %212, align 4
  %214 = load i32*, i32** %14, align 8
  %215 = getelementptr inbounds i32, i32* %214, i32 -1
  store i32* %215, i32** %14, align 8
  store i32 %213, i32* %214, align 4
  br label %216

216:                                              ; preds = %207, %204
  %217 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %218 = load i32*, i32** %13, align 8
  %219 = load i32, i32* %218, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %217, i64 %220
  %222 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %221, i32 0, i32 2
  %223 = load i32, i32* %222, align 4
  %224 = load i32*, i32** %14, align 8
  %225 = getelementptr inbounds i32, i32* %224, i32 -1
  store i32* %225, i32** %14, align 8
  store i32 %223, i32* %224, align 4
  %226 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %227 = load i32*, i32** %13, align 8
  %228 = load i32, i32* %227, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %226, i64 %229
  %231 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %230, i32 0, i32 1
  %232 = load i32, i32* %231, align 4
  %233 = load i32*, i32** %14, align 8
  %234 = getelementptr inbounds i32, i32* %233, i32 -1
  store i32* %234, i32** %14, align 8
  store i32 %232, i32* %233, align 4
  %235 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %236 = load i32*, i32** %13, align 8
  %237 = load i32, i32* %236, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %235, i64 %238
  %240 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 4
  %242 = load i32*, i32** %14, align 8
  %243 = getelementptr inbounds i32, i32* %242, i32 -1
  store i32* %243, i32** %14, align 8
  store i32 %241, i32* %242, align 4
  %244 = load i32*, i32** %13, align 8
  %245 = getelementptr inbounds i32, i32* %244, i32 -1
  store i32* %245, i32** %13, align 8
  br label %246

246:                                              ; preds = %216
  %247 = load i32, i32* %15, align 4
  %248 = add nsw i32 %247, 1
  store i32 %248, i32* %15, align 4
  br label %195

249:                                              ; preds = %195
  %250 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %251 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %250, i32 0, i32 2
  store i32 8, i32* %251, align 8
  %252 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %253 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %252, i32 0, i32 3
  store i32 32, i32* %253, align 4
  %254 = load i32, i32* %16, align 4
  %255 = mul nsw i32 %254, 4
  %256 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %257 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %256, i32 0, i32 4
  store i32 %255, i32* %257, align 8
  %258 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %259 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %258, i32 0, i32 1
  store i64 6, i64* %259, align 8
  %260 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %261 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %260, i32 0, i32 5
  store i32 4, i32* %261, align 4
  br label %324

262:                                              ; preds = %180
  %263 = load i32*, i32** %7, align 8
  %264 = load i32, i32* %16, align 4
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds i32, i32* %263, i64 %265
  %267 = getelementptr inbounds i32, i32* %266, i64 -1
  store i32* %267, i32** %13, align 8
  %268 = load i32*, i32** %7, align 8
  %269 = load i32, i32* %16, align 4
  %270 = mul nsw i32 %269, 3
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds i32, i32* %268, i64 %271
  %273 = getelementptr inbounds i32, i32* %272, i64 -1
  store i32* %273, i32** %14, align 8
  store i32 0, i32* %15, align 4
  br label %274

274:                                              ; preds = %308, %262
  %275 = load i32, i32* %15, align 4
  %276 = load i32, i32* %16, align 4
  %277 = icmp slt i32 %275, %276
  br i1 %277, label %278, label %311

278:                                              ; preds = %274
  %279 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %280 = load i32*, i32** %13, align 8
  %281 = load i32, i32* %280, align 4
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %279, i64 %282
  %284 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %283, i32 0, i32 2
  %285 = load i32, i32* %284, align 4
  %286 = load i32*, i32** %14, align 8
  %287 = getelementptr inbounds i32, i32* %286, i32 -1
  store i32* %287, i32** %14, align 8
  store i32 %285, i32* %286, align 4
  %288 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %289 = load i32*, i32** %13, align 8
  %290 = load i32, i32* %289, align 4
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %288, i64 %291
  %293 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %292, i32 0, i32 1
  %294 = load i32, i32* %293, align 4
  %295 = load i32*, i32** %14, align 8
  %296 = getelementptr inbounds i32, i32* %295, i32 -1
  store i32* %296, i32** %14, align 8
  store i32 %294, i32* %295, align 4
  %297 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %298 = load i32*, i32** %13, align 8
  %299 = load i32, i32* %298, align 4
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %297, i64 %300
  %302 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %301, i32 0, i32 0
  %303 = load i32, i32* %302, align 4
  %304 = load i32*, i32** %14, align 8
  %305 = getelementptr inbounds i32, i32* %304, i32 -1
  store i32* %305, i32** %14, align 8
  store i32 %303, i32* %304, align 4
  %306 = load i32*, i32** %13, align 8
  %307 = getelementptr inbounds i32, i32* %306, i32 -1
  store i32* %307, i32** %13, align 8
  br label %308

308:                                              ; preds = %278
  %309 = load i32, i32* %15, align 4
  %310 = add nsw i32 %309, 1
  store i32 %310, i32* %15, align 4
  br label %274

311:                                              ; preds = %274
  %312 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %313 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %312, i32 0, i32 2
  store i32 8, i32* %313, align 8
  %314 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %315 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %314, i32 0, i32 3
  store i32 24, i32* %315, align 4
  %316 = load i32, i32* %16, align 4
  %317 = mul nsw i32 %316, 3
  %318 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %319 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %318, i32 0, i32 4
  store i32 %317, i32* %319, align 8
  %320 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %321 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %320, i32 0, i32 1
  store i64 2, i64* %321, align 8
  %322 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %323 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %322, i32 0, i32 5
  store i32 3, i32* %323, align 4
  br label %324

324:                                              ; preds = %311, %249
  br label %325

325:                                              ; preds = %176, %324
  br label %326

326:                                              ; preds = %325, %5
  ret void
}

declare dso_local i32 @png_debug(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
