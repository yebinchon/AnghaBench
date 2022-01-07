; ModuleID = '/home/carl/AnghaBench/poco/PDF/src/extr_pngrtran.c_png_do_read_filler.c'
source_filename = "/home/carl/AnghaBench/poco/PDF/src/extr_pngrtran.c_png_do_read_filler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [23 x i8] c"in png_do_read_filler\0A\00", align 1
@PNG_COLOR_TYPE_GRAY = common dso_local global i64 0, align 8
@PNG_FLAG_FILLER_AFTER = common dso_local global i32 0, align 4
@PNG_COLOR_TYPE_RGB = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @png_do_read_filler(%struct.TYPE_3__* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i32*, align 8
  %27 = alloca i32*, align 8
  %28 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %7, align 4
  %33 = ashr i32 %32, 8
  %34 = and i32 %33, 255
  store i32 %34, i32* %11, align 4
  %35 = load i32, i32* %7, align 4
  %36 = and i32 %35, 255
  store i32 %36, i32* %12, align 4
  %37 = call i32 @png_debug(i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @PNG_COLOR_TYPE_GRAY, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %232

43:                                               ; preds = %4
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = icmp eq i32 %46, 8
  br i1 %47, label %48, label %125

48:                                               ; preds = %43
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* @PNG_FLAG_FILLER_AFTER, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %90

53:                                               ; preds = %48
  %54 = load i32*, i32** %6, align 8
  %55 = load i32, i32* %10, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  store i32* %57, i32** %13, align 8
  %58 = load i32*, i32** %13, align 8
  %59 = load i32, i32* %10, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  store i32* %61, i32** %14, align 8
  store i32 1, i32* %9, align 4
  br label %62

62:                                               ; preds = %75, %53
  %63 = load i32, i32* %9, align 4
  %64 = load i32, i32* %10, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %78

66:                                               ; preds = %62
  %67 = load i32, i32* %12, align 4
  %68 = load i32*, i32** %14, align 8
  %69 = getelementptr inbounds i32, i32* %68, i32 -1
  store i32* %69, i32** %14, align 8
  store i32 %67, i32* %69, align 4
  %70 = load i32*, i32** %13, align 8
  %71 = getelementptr inbounds i32, i32* %70, i32 -1
  store i32* %71, i32** %13, align 8
  %72 = load i32, i32* %71, align 4
  %73 = load i32*, i32** %14, align 8
  %74 = getelementptr inbounds i32, i32* %73, i32 -1
  store i32* %74, i32** %14, align 8
  store i32 %72, i32* %74, align 4
  br label %75

75:                                               ; preds = %66
  %76 = load i32, i32* %9, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %9, align 4
  br label %62

78:                                               ; preds = %62
  %79 = load i32, i32* %12, align 4
  %80 = load i32*, i32** %14, align 8
  %81 = getelementptr inbounds i32, i32* %80, i32 -1
  store i32* %81, i32** %14, align 8
  store i32 %79, i32* %81, align 4
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 3
  store i32 2, i32* %83, align 4
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 4
  store i32 16, i32* %85, align 8
  %86 = load i32, i32* %10, align 4
  %87 = mul nsw i32 %86, 2
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 5
  store i32 %87, i32* %89, align 4
  br label %124

90:                                               ; preds = %48
  %91 = load i32*, i32** %6, align 8
  %92 = load i32, i32* %10, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %91, i64 %93
  store i32* %94, i32** %15, align 8
  %95 = load i32*, i32** %15, align 8
  %96 = load i32, i32* %10, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %95, i64 %97
  store i32* %98, i32** %16, align 8
  store i32 0, i32* %9, align 4
  br label %99

99:                                               ; preds = %112, %90
  %100 = load i32, i32* %9, align 4
  %101 = load i32, i32* %10, align 4
  %102 = icmp slt i32 %100, %101
  br i1 %102, label %103, label %115

103:                                              ; preds = %99
  %104 = load i32*, i32** %15, align 8
  %105 = getelementptr inbounds i32, i32* %104, i32 -1
  store i32* %105, i32** %15, align 8
  %106 = load i32, i32* %105, align 4
  %107 = load i32*, i32** %16, align 8
  %108 = getelementptr inbounds i32, i32* %107, i32 -1
  store i32* %108, i32** %16, align 8
  store i32 %106, i32* %108, align 4
  %109 = load i32, i32* %12, align 4
  %110 = load i32*, i32** %16, align 8
  %111 = getelementptr inbounds i32, i32* %110, i32 -1
  store i32* %111, i32** %16, align 8
  store i32 %109, i32* %111, align 4
  br label %112

112:                                              ; preds = %103
  %113 = load i32, i32* %9, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %9, align 4
  br label %99

115:                                              ; preds = %99
  %116 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 3
  store i32 2, i32* %117, align 4
  %118 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 4
  store i32 16, i32* %119, align 8
  %120 = load i32, i32* %10, align 4
  %121 = mul nsw i32 %120, 2
  %122 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i32 0, i32 5
  store i32 %121, i32* %123, align 4
  br label %124

124:                                              ; preds = %115, %78
  br label %231

125:                                              ; preds = %43
  %126 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 8
  %129 = icmp eq i32 %128, 16
  br i1 %129, label %130, label %230

130:                                              ; preds = %125
  %131 = load i32, i32* %8, align 4
  %132 = load i32, i32* @PNG_FLAG_FILLER_AFTER, align 4
  %133 = and i32 %131, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %185

135:                                              ; preds = %130
  %136 = load i32*, i32** %6, align 8
  %137 = load i32, i32* %10, align 4
  %138 = mul nsw i32 %137, 2
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i32, i32* %136, i64 %139
  store i32* %140, i32** %17, align 8
  %141 = load i32*, i32** %17, align 8
  %142 = load i32, i32* %10, align 4
  %143 = mul nsw i32 %142, 2
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i32, i32* %141, i64 %144
  store i32* %145, i32** %18, align 8
  store i32 1, i32* %9, align 4
  br label %146

146:                                              ; preds = %167, %135
  %147 = load i32, i32* %9, align 4
  %148 = load i32, i32* %10, align 4
  %149 = icmp slt i32 %147, %148
  br i1 %149, label %150, label %170

150:                                              ; preds = %146
  %151 = load i32, i32* %11, align 4
  %152 = load i32*, i32** %18, align 8
  %153 = getelementptr inbounds i32, i32* %152, i32 -1
  store i32* %153, i32** %18, align 8
  store i32 %151, i32* %153, align 4
  %154 = load i32, i32* %12, align 4
  %155 = load i32*, i32** %18, align 8
  %156 = getelementptr inbounds i32, i32* %155, i32 -1
  store i32* %156, i32** %18, align 8
  store i32 %154, i32* %156, align 4
  %157 = load i32*, i32** %17, align 8
  %158 = getelementptr inbounds i32, i32* %157, i32 -1
  store i32* %158, i32** %17, align 8
  %159 = load i32, i32* %158, align 4
  %160 = load i32*, i32** %18, align 8
  %161 = getelementptr inbounds i32, i32* %160, i32 -1
  store i32* %161, i32** %18, align 8
  store i32 %159, i32* %161, align 4
  %162 = load i32*, i32** %17, align 8
  %163 = getelementptr inbounds i32, i32* %162, i32 -1
  store i32* %163, i32** %17, align 8
  %164 = load i32, i32* %163, align 4
  %165 = load i32*, i32** %18, align 8
  %166 = getelementptr inbounds i32, i32* %165, i32 -1
  store i32* %166, i32** %18, align 8
  store i32 %164, i32* %166, align 4
  br label %167

167:                                              ; preds = %150
  %168 = load i32, i32* %9, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %9, align 4
  br label %146

170:                                              ; preds = %146
  %171 = load i32, i32* %11, align 4
  %172 = load i32*, i32** %18, align 8
  %173 = getelementptr inbounds i32, i32* %172, i32 -1
  store i32* %173, i32** %18, align 8
  store i32 %171, i32* %173, align 4
  %174 = load i32, i32* %12, align 4
  %175 = load i32*, i32** %18, align 8
  %176 = getelementptr inbounds i32, i32* %175, i32 -1
  store i32* %176, i32** %18, align 8
  store i32 %174, i32* %176, align 4
  %177 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %178 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %177, i32 0, i32 3
  store i32 2, i32* %178, align 4
  %179 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %180 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %179, i32 0, i32 4
  store i32 32, i32* %180, align 8
  %181 = load i32, i32* %10, align 4
  %182 = mul nsw i32 %181, 4
  %183 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %184 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %183, i32 0, i32 5
  store i32 %182, i32* %184, align 4
  br label %229

185:                                              ; preds = %130
  %186 = load i32*, i32** %6, align 8
  %187 = load i32, i32* %10, align 4
  %188 = mul nsw i32 %187, 2
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds i32, i32* %186, i64 %189
  store i32* %190, i32** %19, align 8
  %191 = load i32*, i32** %19, align 8
  %192 = load i32, i32* %10, align 4
  %193 = mul nsw i32 %192, 2
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i32, i32* %191, i64 %194
  store i32* %195, i32** %20, align 8
  store i32 0, i32* %9, align 4
  br label %196

196:                                              ; preds = %217, %185
  %197 = load i32, i32* %9, align 4
  %198 = load i32, i32* %10, align 4
  %199 = icmp slt i32 %197, %198
  br i1 %199, label %200, label %220

200:                                              ; preds = %196
  %201 = load i32*, i32** %19, align 8
  %202 = getelementptr inbounds i32, i32* %201, i32 -1
  store i32* %202, i32** %19, align 8
  %203 = load i32, i32* %202, align 4
  %204 = load i32*, i32** %20, align 8
  %205 = getelementptr inbounds i32, i32* %204, i32 -1
  store i32* %205, i32** %20, align 8
  store i32 %203, i32* %205, align 4
  %206 = load i32*, i32** %19, align 8
  %207 = getelementptr inbounds i32, i32* %206, i32 -1
  store i32* %207, i32** %19, align 8
  %208 = load i32, i32* %207, align 4
  %209 = load i32*, i32** %20, align 8
  %210 = getelementptr inbounds i32, i32* %209, i32 -1
  store i32* %210, i32** %20, align 8
  store i32 %208, i32* %210, align 4
  %211 = load i32, i32* %11, align 4
  %212 = load i32*, i32** %20, align 8
  %213 = getelementptr inbounds i32, i32* %212, i32 -1
  store i32* %213, i32** %20, align 8
  store i32 %211, i32* %213, align 4
  %214 = load i32, i32* %12, align 4
  %215 = load i32*, i32** %20, align 8
  %216 = getelementptr inbounds i32, i32* %215, i32 -1
  store i32* %216, i32** %20, align 8
  store i32 %214, i32* %216, align 4
  br label %217

217:                                              ; preds = %200
  %218 = load i32, i32* %9, align 4
  %219 = add nsw i32 %218, 1
  store i32 %219, i32* %9, align 4
  br label %196

220:                                              ; preds = %196
  %221 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %222 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %221, i32 0, i32 3
  store i32 2, i32* %222, align 4
  %223 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %224 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %223, i32 0, i32 4
  store i32 32, i32* %224, align 8
  %225 = load i32, i32* %10, align 4
  %226 = mul nsw i32 %225, 4
  %227 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %228 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %227, i32 0, i32 5
  store i32 %226, i32* %228, align 4
  br label %229

229:                                              ; preds = %220, %170
  br label %230

230:                                              ; preds = %229, %125
  br label %231

231:                                              ; preds = %230, %124
  br label %490

232:                                              ; preds = %4
  %233 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %234 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %233, i32 0, i32 1
  %235 = load i64, i64* %234, align 8
  %236 = load i64, i64* @PNG_COLOR_TYPE_RGB, align 8
  %237 = icmp eq i64 %235, %236
  br i1 %237, label %238, label %489

238:                                              ; preds = %232
  %239 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %240 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %239, i32 0, i32 2
  %241 = load i32, i32* %240, align 8
  %242 = icmp eq i32 %241, 8
  br i1 %242, label %243, label %342

243:                                              ; preds = %238
  %244 = load i32, i32* %8, align 4
  %245 = load i32, i32* @PNG_FLAG_FILLER_AFTER, align 4
  %246 = and i32 %244, %245
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %248, label %296

248:                                              ; preds = %243
  %249 = load i32*, i32** %6, align 8
  %250 = load i32, i32* %10, align 4
  %251 = mul nsw i32 %250, 3
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds i32, i32* %249, i64 %252
  store i32* %253, i32** %21, align 8
  %254 = load i32*, i32** %21, align 8
  %255 = load i32, i32* %10, align 4
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds i32, i32* %254, i64 %256
  store i32* %257, i32** %22, align 8
  store i32 1, i32* %9, align 4
  br label %258

258:                                              ; preds = %281, %248
  %259 = load i32, i32* %9, align 4
  %260 = load i32, i32* %10, align 4
  %261 = icmp slt i32 %259, %260
  br i1 %261, label %262, label %284

262:                                              ; preds = %258
  %263 = load i32, i32* %12, align 4
  %264 = load i32*, i32** %22, align 8
  %265 = getelementptr inbounds i32, i32* %264, i32 -1
  store i32* %265, i32** %22, align 8
  store i32 %263, i32* %265, align 4
  %266 = load i32*, i32** %21, align 8
  %267 = getelementptr inbounds i32, i32* %266, i32 -1
  store i32* %267, i32** %21, align 8
  %268 = load i32, i32* %267, align 4
  %269 = load i32*, i32** %22, align 8
  %270 = getelementptr inbounds i32, i32* %269, i32 -1
  store i32* %270, i32** %22, align 8
  store i32 %268, i32* %270, align 4
  %271 = load i32*, i32** %21, align 8
  %272 = getelementptr inbounds i32, i32* %271, i32 -1
  store i32* %272, i32** %21, align 8
  %273 = load i32, i32* %272, align 4
  %274 = load i32*, i32** %22, align 8
  %275 = getelementptr inbounds i32, i32* %274, i32 -1
  store i32* %275, i32** %22, align 8
  store i32 %273, i32* %275, align 4
  %276 = load i32*, i32** %21, align 8
  %277 = getelementptr inbounds i32, i32* %276, i32 -1
  store i32* %277, i32** %21, align 8
  %278 = load i32, i32* %277, align 4
  %279 = load i32*, i32** %22, align 8
  %280 = getelementptr inbounds i32, i32* %279, i32 -1
  store i32* %280, i32** %22, align 8
  store i32 %278, i32* %280, align 4
  br label %281

281:                                              ; preds = %262
  %282 = load i32, i32* %9, align 4
  %283 = add nsw i32 %282, 1
  store i32 %283, i32* %9, align 4
  br label %258

284:                                              ; preds = %258
  %285 = load i32, i32* %12, align 4
  %286 = load i32*, i32** %22, align 8
  %287 = getelementptr inbounds i32, i32* %286, i32 -1
  store i32* %287, i32** %22, align 8
  store i32 %285, i32* %287, align 4
  %288 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %289 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %288, i32 0, i32 3
  store i32 4, i32* %289, align 4
  %290 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %291 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %290, i32 0, i32 4
  store i32 32, i32* %291, align 8
  %292 = load i32, i32* %10, align 4
  %293 = mul nsw i32 %292, 4
  %294 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %295 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %294, i32 0, i32 5
  store i32 %293, i32* %295, align 4
  br label %341

296:                                              ; preds = %243
  %297 = load i32*, i32** %6, align 8
  %298 = load i32, i32* %10, align 4
  %299 = mul nsw i32 %298, 3
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds i32, i32* %297, i64 %300
  store i32* %301, i32** %23, align 8
  %302 = load i32*, i32** %23, align 8
  %303 = load i32, i32* %10, align 4
  %304 = sext i32 %303 to i64
  %305 = getelementptr inbounds i32, i32* %302, i64 %304
  store i32* %305, i32** %24, align 8
  store i32 0, i32* %9, align 4
  br label %306

306:                                              ; preds = %329, %296
  %307 = load i32, i32* %9, align 4
  %308 = load i32, i32* %10, align 4
  %309 = icmp slt i32 %307, %308
  br i1 %309, label %310, label %332

310:                                              ; preds = %306
  %311 = load i32*, i32** %23, align 8
  %312 = getelementptr inbounds i32, i32* %311, i32 -1
  store i32* %312, i32** %23, align 8
  %313 = load i32, i32* %312, align 4
  %314 = load i32*, i32** %24, align 8
  %315 = getelementptr inbounds i32, i32* %314, i32 -1
  store i32* %315, i32** %24, align 8
  store i32 %313, i32* %315, align 4
  %316 = load i32*, i32** %23, align 8
  %317 = getelementptr inbounds i32, i32* %316, i32 -1
  store i32* %317, i32** %23, align 8
  %318 = load i32, i32* %317, align 4
  %319 = load i32*, i32** %24, align 8
  %320 = getelementptr inbounds i32, i32* %319, i32 -1
  store i32* %320, i32** %24, align 8
  store i32 %318, i32* %320, align 4
  %321 = load i32*, i32** %23, align 8
  %322 = getelementptr inbounds i32, i32* %321, i32 -1
  store i32* %322, i32** %23, align 8
  %323 = load i32, i32* %322, align 4
  %324 = load i32*, i32** %24, align 8
  %325 = getelementptr inbounds i32, i32* %324, i32 -1
  store i32* %325, i32** %24, align 8
  store i32 %323, i32* %325, align 4
  %326 = load i32, i32* %12, align 4
  %327 = load i32*, i32** %24, align 8
  %328 = getelementptr inbounds i32, i32* %327, i32 -1
  store i32* %328, i32** %24, align 8
  store i32 %326, i32* %328, align 4
  br label %329

329:                                              ; preds = %310
  %330 = load i32, i32* %9, align 4
  %331 = add nsw i32 %330, 1
  store i32 %331, i32* %9, align 4
  br label %306

332:                                              ; preds = %306
  %333 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %334 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %333, i32 0, i32 3
  store i32 4, i32* %334, align 4
  %335 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %336 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %335, i32 0, i32 4
  store i32 32, i32* %336, align 8
  %337 = load i32, i32* %10, align 4
  %338 = mul nsw i32 %337, 4
  %339 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %340 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %339, i32 0, i32 5
  store i32 %338, i32* %340, align 4
  br label %341

341:                                              ; preds = %332, %284
  br label %488

342:                                              ; preds = %238
  %343 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %344 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %343, i32 0, i32 2
  %345 = load i32, i32* %344, align 8
  %346 = icmp eq i32 %345, 16
  br i1 %346, label %347, label %487

347:                                              ; preds = %342
  %348 = load i32, i32* %8, align 4
  %349 = load i32, i32* @PNG_FLAG_FILLER_AFTER, align 4
  %350 = and i32 %348, %349
  %351 = icmp ne i32 %350, 0
  br i1 %351, label %352, label %422

352:                                              ; preds = %347
  %353 = load i32*, i32** %6, align 8
  %354 = load i32, i32* %10, align 4
  %355 = mul nsw i32 %354, 6
  %356 = sext i32 %355 to i64
  %357 = getelementptr inbounds i32, i32* %353, i64 %356
  store i32* %357, i32** %25, align 8
  %358 = load i32*, i32** %25, align 8
  %359 = load i32, i32* %10, align 4
  %360 = mul nsw i32 %359, 2
  %361 = sext i32 %360 to i64
  %362 = getelementptr inbounds i32, i32* %358, i64 %361
  store i32* %362, i32** %26, align 8
  store i32 1, i32* %9, align 4
  br label %363

363:                                              ; preds = %404, %352
  %364 = load i32, i32* %9, align 4
  %365 = load i32, i32* %10, align 4
  %366 = icmp slt i32 %364, %365
  br i1 %366, label %367, label %407

367:                                              ; preds = %363
  %368 = load i32, i32* %11, align 4
  %369 = load i32*, i32** %26, align 8
  %370 = getelementptr inbounds i32, i32* %369, i32 -1
  store i32* %370, i32** %26, align 8
  store i32 %368, i32* %370, align 4
  %371 = load i32, i32* %12, align 4
  %372 = load i32*, i32** %26, align 8
  %373 = getelementptr inbounds i32, i32* %372, i32 -1
  store i32* %373, i32** %26, align 8
  store i32 %371, i32* %373, align 4
  %374 = load i32*, i32** %25, align 8
  %375 = getelementptr inbounds i32, i32* %374, i32 -1
  store i32* %375, i32** %25, align 8
  %376 = load i32, i32* %375, align 4
  %377 = load i32*, i32** %26, align 8
  %378 = getelementptr inbounds i32, i32* %377, i32 -1
  store i32* %378, i32** %26, align 8
  store i32 %376, i32* %378, align 4
  %379 = load i32*, i32** %25, align 8
  %380 = getelementptr inbounds i32, i32* %379, i32 -1
  store i32* %380, i32** %25, align 8
  %381 = load i32, i32* %380, align 4
  %382 = load i32*, i32** %26, align 8
  %383 = getelementptr inbounds i32, i32* %382, i32 -1
  store i32* %383, i32** %26, align 8
  store i32 %381, i32* %383, align 4
  %384 = load i32*, i32** %25, align 8
  %385 = getelementptr inbounds i32, i32* %384, i32 -1
  store i32* %385, i32** %25, align 8
  %386 = load i32, i32* %385, align 4
  %387 = load i32*, i32** %26, align 8
  %388 = getelementptr inbounds i32, i32* %387, i32 -1
  store i32* %388, i32** %26, align 8
  store i32 %386, i32* %388, align 4
  %389 = load i32*, i32** %25, align 8
  %390 = getelementptr inbounds i32, i32* %389, i32 -1
  store i32* %390, i32** %25, align 8
  %391 = load i32, i32* %390, align 4
  %392 = load i32*, i32** %26, align 8
  %393 = getelementptr inbounds i32, i32* %392, i32 -1
  store i32* %393, i32** %26, align 8
  store i32 %391, i32* %393, align 4
  %394 = load i32*, i32** %25, align 8
  %395 = getelementptr inbounds i32, i32* %394, i32 -1
  store i32* %395, i32** %25, align 8
  %396 = load i32, i32* %395, align 4
  %397 = load i32*, i32** %26, align 8
  %398 = getelementptr inbounds i32, i32* %397, i32 -1
  store i32* %398, i32** %26, align 8
  store i32 %396, i32* %398, align 4
  %399 = load i32*, i32** %25, align 8
  %400 = getelementptr inbounds i32, i32* %399, i32 -1
  store i32* %400, i32** %25, align 8
  %401 = load i32, i32* %400, align 4
  %402 = load i32*, i32** %26, align 8
  %403 = getelementptr inbounds i32, i32* %402, i32 -1
  store i32* %403, i32** %26, align 8
  store i32 %401, i32* %403, align 4
  br label %404

404:                                              ; preds = %367
  %405 = load i32, i32* %9, align 4
  %406 = add nsw i32 %405, 1
  store i32 %406, i32* %9, align 4
  br label %363

407:                                              ; preds = %363
  %408 = load i32, i32* %11, align 4
  %409 = load i32*, i32** %26, align 8
  %410 = getelementptr inbounds i32, i32* %409, i32 -1
  store i32* %410, i32** %26, align 8
  store i32 %408, i32* %410, align 4
  %411 = load i32, i32* %12, align 4
  %412 = load i32*, i32** %26, align 8
  %413 = getelementptr inbounds i32, i32* %412, i32 -1
  store i32* %413, i32** %26, align 8
  store i32 %411, i32* %413, align 4
  %414 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %415 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %414, i32 0, i32 3
  store i32 4, i32* %415, align 4
  %416 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %417 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %416, i32 0, i32 4
  store i32 64, i32* %417, align 8
  %418 = load i32, i32* %10, align 4
  %419 = mul nsw i32 %418, 8
  %420 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %421 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %420, i32 0, i32 5
  store i32 %419, i32* %421, align 4
  br label %486

422:                                              ; preds = %347
  %423 = load i32*, i32** %6, align 8
  %424 = load i32, i32* %10, align 4
  %425 = mul nsw i32 %424, 6
  %426 = sext i32 %425 to i64
  %427 = getelementptr inbounds i32, i32* %423, i64 %426
  store i32* %427, i32** %27, align 8
  %428 = load i32*, i32** %27, align 8
  %429 = load i32, i32* %10, align 4
  %430 = mul nsw i32 %429, 2
  %431 = sext i32 %430 to i64
  %432 = getelementptr inbounds i32, i32* %428, i64 %431
  store i32* %432, i32** %28, align 8
  store i32 0, i32* %9, align 4
  br label %433

433:                                              ; preds = %474, %422
  %434 = load i32, i32* %9, align 4
  %435 = load i32, i32* %10, align 4
  %436 = icmp slt i32 %434, %435
  br i1 %436, label %437, label %477

437:                                              ; preds = %433
  %438 = load i32*, i32** %27, align 8
  %439 = getelementptr inbounds i32, i32* %438, i32 -1
  store i32* %439, i32** %27, align 8
  %440 = load i32, i32* %439, align 4
  %441 = load i32*, i32** %28, align 8
  %442 = getelementptr inbounds i32, i32* %441, i32 -1
  store i32* %442, i32** %28, align 8
  store i32 %440, i32* %442, align 4
  %443 = load i32*, i32** %27, align 8
  %444 = getelementptr inbounds i32, i32* %443, i32 -1
  store i32* %444, i32** %27, align 8
  %445 = load i32, i32* %444, align 4
  %446 = load i32*, i32** %28, align 8
  %447 = getelementptr inbounds i32, i32* %446, i32 -1
  store i32* %447, i32** %28, align 8
  store i32 %445, i32* %447, align 4
  %448 = load i32*, i32** %27, align 8
  %449 = getelementptr inbounds i32, i32* %448, i32 -1
  store i32* %449, i32** %27, align 8
  %450 = load i32, i32* %449, align 4
  %451 = load i32*, i32** %28, align 8
  %452 = getelementptr inbounds i32, i32* %451, i32 -1
  store i32* %452, i32** %28, align 8
  store i32 %450, i32* %452, align 4
  %453 = load i32*, i32** %27, align 8
  %454 = getelementptr inbounds i32, i32* %453, i32 -1
  store i32* %454, i32** %27, align 8
  %455 = load i32, i32* %454, align 4
  %456 = load i32*, i32** %28, align 8
  %457 = getelementptr inbounds i32, i32* %456, i32 -1
  store i32* %457, i32** %28, align 8
  store i32 %455, i32* %457, align 4
  %458 = load i32*, i32** %27, align 8
  %459 = getelementptr inbounds i32, i32* %458, i32 -1
  store i32* %459, i32** %27, align 8
  %460 = load i32, i32* %459, align 4
  %461 = load i32*, i32** %28, align 8
  %462 = getelementptr inbounds i32, i32* %461, i32 -1
  store i32* %462, i32** %28, align 8
  store i32 %460, i32* %462, align 4
  %463 = load i32*, i32** %27, align 8
  %464 = getelementptr inbounds i32, i32* %463, i32 -1
  store i32* %464, i32** %27, align 8
  %465 = load i32, i32* %464, align 4
  %466 = load i32*, i32** %28, align 8
  %467 = getelementptr inbounds i32, i32* %466, i32 -1
  store i32* %467, i32** %28, align 8
  store i32 %465, i32* %467, align 4
  %468 = load i32, i32* %11, align 4
  %469 = load i32*, i32** %28, align 8
  %470 = getelementptr inbounds i32, i32* %469, i32 -1
  store i32* %470, i32** %28, align 8
  store i32 %468, i32* %470, align 4
  %471 = load i32, i32* %12, align 4
  %472 = load i32*, i32** %28, align 8
  %473 = getelementptr inbounds i32, i32* %472, i32 -1
  store i32* %473, i32** %28, align 8
  store i32 %471, i32* %473, align 4
  br label %474

474:                                              ; preds = %437
  %475 = load i32, i32* %9, align 4
  %476 = add nsw i32 %475, 1
  store i32 %476, i32* %9, align 4
  br label %433

477:                                              ; preds = %433
  %478 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %479 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %478, i32 0, i32 3
  store i32 4, i32* %479, align 4
  %480 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %481 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %480, i32 0, i32 4
  store i32 64, i32* %481, align 8
  %482 = load i32, i32* %10, align 4
  %483 = mul nsw i32 %482, 8
  %484 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %485 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %484, i32 0, i32 5
  store i32 %483, i32* %485, align 4
  br label %486

486:                                              ; preds = %477, %407
  br label %487

487:                                              ; preds = %486, %342
  br label %488

488:                                              ; preds = %487, %341
  br label %489

489:                                              ; preds = %488, %232
  br label %490

490:                                              ; preds = %489, %231
  ret void
}

declare dso_local i32 @png_debug(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
