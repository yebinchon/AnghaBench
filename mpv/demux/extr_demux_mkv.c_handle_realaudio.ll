; ModuleID = '/home/carl/AnghaBench/mpv/demux/extr_demux_mkv.c_handle_realaudio.c'
source_filename = "/home/carl/AnghaBench/mpv/demux/extr_demux_mkv.c_handle_realaudio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32, i32, i32, i32*, i64*, i64, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i8*, i32 }
%struct.demux_packet = type { i32*, i32, i64, i64 }
%struct.TYPE_10__ = type { i64, i32, i64 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"ra_288\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"cook\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"atrac3\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"sipr\00", align 1
@sipr_swaps = common dso_local global i32** null, align 8
@MP_NOPTS_VALUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_9__*, %struct.demux_packet*)* @handle_realaudio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_realaudio(i32* %0, %struct.TYPE_9__* %1, %struct.demux_packet* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca %struct.demux_packet*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_10__*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
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
  %34 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %6, align 8
  store %struct.demux_packet* %2, %struct.demux_packet** %7, align 8
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  store i32 %37, i32* %8, align 4
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %9, align 4
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  store i32 %43, i32* %10, align 4
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %11, align 4
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 8
  store i32 %49, i32* %12, align 4
  %50 = load %struct.demux_packet*, %struct.demux_packet** %7, align 8
  %51 = getelementptr inbounds %struct.demux_packet, %struct.demux_packet* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  store i32* %52, i32** %13, align 8
  %53 = load %struct.demux_packet*, %struct.demux_packet** %7, align 8
  %54 = getelementptr inbounds %struct.demux_packet, %struct.demux_packet* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  store i32 %55, i32* %14, align 4
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* %11, align 4
  %58 = mul nsw i32 %56, %57
  %59 = sext i32 %58 to i64
  store i64 %59, i64* %16, align 8
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 5
  %62 = load i32*, i32** %61, align 8
  %63 = icmp ne i32* %62, null
  br i1 %63, label %64, label %74

64:                                               ; preds = %3
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 6
  %67 = load i64*, i64** %66, align 8
  %68 = icmp ne i64* %67, null
  br i1 %68, label %69, label %74

69:                                               ; preds = %64
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 8
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %71, align 8
  %73 = icmp ne %struct.TYPE_11__* %72, null
  br i1 %73, label %75, label %74

74:                                               ; preds = %69, %64, %3
  store i32 0, i32* %4, align 4
  br label %511

75:                                               ; preds = %69
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 8
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 0
  %82 = load i8*, i8** %81, align 8
  %83 = icmp ne i8* %82, null
  br i1 %83, label %84, label %92

84:                                               ; preds = %75
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 8
  %87 = load %struct.TYPE_11__*, %struct.TYPE_11__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i32 0, i32 0
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 0
  %91 = load i8*, i8** %90, align 8
  br label %93

92:                                               ; preds = %75
  br label %93

93:                                               ; preds = %92, %84
  %94 = phi i8* [ %91, %84 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), %92 ]
  store i8* %94, i8** %17, align 8
  %95 = load i8*, i8** %17, align 8
  %96 = call i32 @strcmp(i8* %95, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %147, label %98

98:                                               ; preds = %93
  store i32 0, i32* %18, align 4
  br label %99

99:                                               ; preds = %143, %98
  %100 = load i32, i32* %18, align 4
  %101 = load i32, i32* %9, align 4
  %102 = sdiv i32 %101, 2
  %103 = icmp slt i32 %100, %102
  br i1 %103, label %104, label %146

104:                                              ; preds = %99
  %105 = load i32, i32* %18, align 4
  %106 = mul nsw i32 %105, 2
  %107 = load i32, i32* %11, align 4
  %108 = mul nsw i32 %106, %107
  %109 = load i32, i32* %12, align 4
  %110 = load i32, i32* %10, align 4
  %111 = mul nsw i32 %109, %110
  %112 = add nsw i32 %108, %111
  store i32 %112, i32* %19, align 4
  %113 = load i32, i32* %19, align 4
  %114 = load i32, i32* %10, align 4
  %115 = add nsw i32 %113, %114
  %116 = sext i32 %115 to i64
  %117 = load i64, i64* %16, align 8
  %118 = icmp ugt i64 %116, %117
  br i1 %118, label %119, label %120

119:                                              ; preds = %104
  br label %508

120:                                              ; preds = %104
  %121 = load i32, i32* %18, align 4
  %122 = load i32, i32* %10, align 4
  %123 = mul nsw i32 %121, %122
  store i32 %123, i32* %20, align 4
  %124 = load i32, i32* %20, align 4
  %125 = load i32, i32* %10, align 4
  %126 = add nsw i32 %124, %125
  %127 = load i32, i32* %14, align 4
  %128 = icmp sgt i32 %126, %127
  br i1 %128, label %129, label %130

129:                                              ; preds = %120
  br label %508

130:                                              ; preds = %120
  %131 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %132 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %131, i32 0, i32 5
  %133 = load i32*, i32** %132, align 8
  %134 = load i32, i32* %19, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i32, i32* %133, i64 %135
  %137 = load i32*, i32** %13, align 8
  %138 = load i32, i32* %20, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i32, i32* %137, i64 %139
  %141 = load i32, i32* %10, align 4
  %142 = call i32 @memcpy(i32* %136, i32* %140, i32 %141)
  br label %143

143:                                              ; preds = %130
  %144 = load i32, i32* %18, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %18, align 4
  br label %99

146:                                              ; preds = %99
  br label %386

147:                                              ; preds = %93
  %148 = load i8*, i8** %17, align 8
  %149 = call i32 @strcmp(i8* %148, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %155

151:                                              ; preds = %147
  %152 = load i8*, i8** %17, align 8
  %153 = call i32 @strcmp(i8* %152, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %212, label %155

155:                                              ; preds = %151, %147
  store i32 0, i32* %21, align 4
  br label %156

156:                                              ; preds = %208, %155
  %157 = load i32, i32* %21, align 4
  %158 = load i32, i32* %11, align 4
  %159 = load i32, i32* %8, align 4
  %160 = sdiv i32 %158, %159
  %161 = icmp slt i32 %157, %160
  br i1 %161, label %162, label %211

162:                                              ; preds = %156
  %163 = load i32, i32* %8, align 4
  %164 = load i32, i32* %9, align 4
  %165 = load i32, i32* %21, align 4
  %166 = mul nsw i32 %164, %165
  %167 = load i32, i32* %9, align 4
  %168 = add nsw i32 %167, 1
  %169 = sdiv i32 %168, 2
  %170 = load i32, i32* %12, align 4
  %171 = and i32 %170, 1
  %172 = mul nsw i32 %169, %171
  %173 = add nsw i32 %166, %172
  %174 = load i32, i32* %12, align 4
  %175 = ashr i32 %174, 1
  %176 = add nsw i32 %173, %175
  %177 = mul nsw i32 %163, %176
  store i32 %177, i32* %22, align 4
  %178 = load i32, i32* %22, align 4
  %179 = load i32, i32* %8, align 4
  %180 = add nsw i32 %178, %179
  %181 = sext i32 %180 to i64
  %182 = load i64, i64* %16, align 8
  %183 = icmp ugt i64 %181, %182
  br i1 %183, label %184, label %185

184:                                              ; preds = %162
  br label %508

185:                                              ; preds = %162
  %186 = load i32, i32* %8, align 4
  %187 = load i32, i32* %21, align 4
  %188 = mul nsw i32 %186, %187
  store i32 %188, i32* %23, align 4
  %189 = load i32, i32* %23, align 4
  %190 = load i32, i32* %8, align 4
  %191 = add nsw i32 %189, %190
  %192 = load i32, i32* %14, align 4
  %193 = icmp sgt i32 %191, %192
  br i1 %193, label %194, label %195

194:                                              ; preds = %185
  br label %508

195:                                              ; preds = %185
  %196 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %197 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %196, i32 0, i32 5
  %198 = load i32*, i32** %197, align 8
  %199 = load i32, i32* %22, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds i32, i32* %198, i64 %200
  %202 = load i32*, i32** %13, align 8
  %203 = load i32, i32* %23, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds i32, i32* %202, i64 %204
  %206 = load i32, i32* %8, align 4
  %207 = call i32 @memcpy(i32* %201, i32* %205, i32 %206)
  br label %208

208:                                              ; preds = %195
  %209 = load i32, i32* %21, align 4
  %210 = add nsw i32 %209, 1
  store i32 %210, i32* %21, align 4
  br label %156

211:                                              ; preds = %156
  br label %385

212:                                              ; preds = %151
  %213 = load i8*, i8** %17, align 8
  %214 = call i32 @strcmp(i8* %213, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %383, label %216

216:                                              ; preds = %212
  %217 = load i32, i32* %12, align 4
  %218 = load i32, i32* %11, align 4
  %219 = mul nsw i32 %217, %218
  %220 = load i32, i32* %11, align 4
  %221 = add nsw i32 %219, %220
  %222 = sext i32 %221 to i64
  %223 = load i64, i64* %16, align 8
  %224 = icmp ugt i64 %222, %223
  br i1 %224, label %229, label %225

225:                                              ; preds = %216
  %226 = load i32, i32* %11, align 4
  %227 = load i32, i32* %14, align 4
  %228 = icmp sgt i32 %226, %227
  br i1 %228, label %229, label %230

229:                                              ; preds = %225, %216
  br label %508

230:                                              ; preds = %225
  %231 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %232 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %231, i32 0, i32 5
  %233 = load i32*, i32** %232, align 8
  %234 = load i32, i32* %12, align 4
  %235 = load i32, i32* %11, align 4
  %236 = mul nsw i32 %234, %235
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds i32, i32* %233, i64 %237
  %239 = load i32*, i32** %13, align 8
  %240 = load i32, i32* %11, align 4
  %241 = call i32 @memcpy(i32* %238, i32* %239, i32 %240)
  %242 = load i32, i32* %12, align 4
  %243 = load i32, i32* %9, align 4
  %244 = sub nsw i32 %243, 1
  %245 = icmp eq i32 %242, %244
  br i1 %245, label %246, label %382

246:                                              ; preds = %230
  %247 = load i32, i32* %9, align 4
  %248 = load i32, i32* %11, align 4
  %249 = mul nsw i32 %247, %248
  %250 = mul nsw i32 %249, 2
  %251 = sdiv i32 %250, 96
  store i32 %251, i32* %25, align 4
  store i32 0, i32* %24, align 4
  br label %252

252:                                              ; preds = %378, %246
  %253 = load i32, i32* %24, align 4
  %254 = icmp slt i32 %253, 38
  br i1 %254, label %255, label %381

255:                                              ; preds = %252
  %256 = load i32, i32* %25, align 4
  %257 = load i32**, i32*** @sipr_swaps, align 8
  %258 = load i32, i32* %24, align 4
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds i32*, i32** %257, i64 %259
  %261 = load i32*, i32** %260, align 8
  %262 = getelementptr inbounds i32, i32* %261, i64 0
  %263 = load i32, i32* %262, align 4
  %264 = mul nsw i32 %256, %263
  store i32 %264, i32* %26, align 4
  %265 = load i32, i32* %25, align 4
  %266 = load i32**, i32*** @sipr_swaps, align 8
  %267 = load i32, i32* %24, align 4
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds i32*, i32** %266, i64 %268
  %270 = load i32*, i32** %269, align 8
  %271 = getelementptr inbounds i32, i32* %270, i64 1
  %272 = load i32, i32* %271, align 4
  %273 = mul nsw i32 %265, %272
  store i32 %273, i32* %27, align 4
  store i32 0, i32* %28, align 4
  br label %274

274:                                              ; preds = %374, %255
  %275 = load i32, i32* %28, align 4
  %276 = load i32, i32* %25, align 4
  %277 = icmp slt i32 %275, %276
  br i1 %277, label %278, label %377

278:                                              ; preds = %274
  %279 = load i32, i32* %26, align 4
  %280 = udiv i32 %279, 2
  %281 = zext i32 %280 to i64
  %282 = load i64, i64* %16, align 8
  %283 = icmp uge i64 %281, %282
  br i1 %283, label %290, label %284

284:                                              ; preds = %278
  %285 = load i32, i32* %27, align 4
  %286 = udiv i32 %285, 2
  %287 = zext i32 %286 to i64
  %288 = load i64, i64* %16, align 8
  %289 = icmp uge i64 %287, %288
  br i1 %289, label %290, label %291

290:                                              ; preds = %284, %278
  br label %508

291:                                              ; preds = %284
  %292 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %293 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %292, i32 0, i32 5
  %294 = load i32*, i32** %293, align 8
  %295 = load i32, i32* %26, align 4
  %296 = udiv i32 %295, 2
  %297 = zext i32 %296 to i64
  %298 = getelementptr inbounds i32, i32* %294, i64 %297
  %299 = load i32, i32* %298, align 4
  store i32 %299, i32* %29, align 4
  %300 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %301 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %300, i32 0, i32 5
  %302 = load i32*, i32** %301, align 8
  %303 = load i32, i32* %27, align 4
  %304 = udiv i32 %303, 2
  %305 = zext i32 %304 to i64
  %306 = getelementptr inbounds i32, i32* %302, i64 %305
  %307 = load i32, i32* %306, align 4
  store i32 %307, i32* %30, align 4
  %308 = load i32, i32* %26, align 4
  %309 = and i32 %308, 1
  %310 = icmp ne i32 %309, 0
  br i1 %310, label %311, label %314

311:                                              ; preds = %291
  %312 = load i32, i32* %29, align 4
  %313 = ashr i32 %312, 4
  br label %317

314:                                              ; preds = %291
  %315 = load i32, i32* %29, align 4
  %316 = and i32 %315, 15
  br label %317

317:                                              ; preds = %314, %311
  %318 = phi i32 [ %313, %311 ], [ %316, %314 ]
  store i32 %318, i32* %31, align 4
  %319 = load i32, i32* %27, align 4
  %320 = and i32 %319, 1
  %321 = icmp ne i32 %320, 0
  br i1 %321, label %322, label %325

322:                                              ; preds = %317
  %323 = load i32, i32* %30, align 4
  %324 = ashr i32 %323, 4
  br label %328

325:                                              ; preds = %317
  %326 = load i32, i32* %30, align 4
  %327 = and i32 %326, 15
  br label %328

328:                                              ; preds = %325, %322
  %329 = phi i32 [ %324, %322 ], [ %327, %325 ]
  store i32 %329, i32* %32, align 4
  %330 = load i32, i32* %30, align 4
  %331 = and i32 %330, 15
  %332 = load i32, i32* %27, align 4
  %333 = and i32 %332, 1
  %334 = icmp ne i32 %333, 0
  br i1 %334, label %335, label %338

335:                                              ; preds = %328
  %336 = load i32, i32* %31, align 4
  %337 = shl i32 %336, 4
  br label %340

338:                                              ; preds = %328
  %339 = load i32, i32* %31, align 4
  br label %340

340:                                              ; preds = %338, %335
  %341 = phi i32 [ %337, %335 ], [ %339, %338 ]
  %342 = or i32 %331, %341
  %343 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %344 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %343, i32 0, i32 5
  %345 = load i32*, i32** %344, align 8
  %346 = load i32, i32* %27, align 4
  %347 = udiv i32 %346, 2
  %348 = zext i32 %347 to i64
  %349 = getelementptr inbounds i32, i32* %345, i64 %348
  store i32 %342, i32* %349, align 4
  %350 = load i32, i32* %29, align 4
  %351 = and i32 %350, 15
  %352 = load i32, i32* %26, align 4
  %353 = and i32 %352, 1
  %354 = icmp ne i32 %353, 0
  br i1 %354, label %355, label %358

355:                                              ; preds = %340
  %356 = load i32, i32* %32, align 4
  %357 = shl i32 %356, 4
  br label %360

358:                                              ; preds = %340
  %359 = load i32, i32* %32, align 4
  br label %360

360:                                              ; preds = %358, %355
  %361 = phi i32 [ %357, %355 ], [ %359, %358 ]
  %362 = or i32 %351, %361
  %363 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %364 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %363, i32 0, i32 5
  %365 = load i32*, i32** %364, align 8
  %366 = load i32, i32* %26, align 4
  %367 = udiv i32 %366, 2
  %368 = zext i32 %367 to i64
  %369 = getelementptr inbounds i32, i32* %365, i64 %368
  store i32 %362, i32* %369, align 4
  %370 = load i32, i32* %26, align 4
  %371 = add i32 %370, 1
  store i32 %371, i32* %26, align 4
  %372 = load i32, i32* %27, align 4
  %373 = add i32 %372, 1
  store i32 %373, i32* %27, align 4
  br label %374

374:                                              ; preds = %360
  %375 = load i32, i32* %28, align 4
  %376 = add nsw i32 %375, 1
  store i32 %376, i32* %28, align 4
  br label %274

377:                                              ; preds = %274
  br label %378

378:                                              ; preds = %377
  %379 = load i32, i32* %24, align 4
  %380 = add nsw i32 %379, 1
  store i32 %380, i32* %24, align 4
  br label %252

381:                                              ; preds = %252
  br label %382

382:                                              ; preds = %381, %230
  br label %384

383:                                              ; preds = %212
  store i32 0, i32* %4, align 4
  br label %511

384:                                              ; preds = %382
  br label %385

385:                                              ; preds = %384, %211
  br label %386

386:                                              ; preds = %385, %146
  %387 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %388 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %387, i32 0, i32 7
  %389 = load i64, i64* %388, align 8
  %390 = load %struct.demux_packet*, %struct.demux_packet** %7, align 8
  %391 = getelementptr inbounds %struct.demux_packet, %struct.demux_packet* %390, i32 0, i32 2
  %392 = load i64, i64* %391, align 8
  %393 = icmp eq i64 %389, %392
  br i1 %393, label %394, label %395

394:                                              ; preds = %386
  br label %399

395:                                              ; preds = %386
  %396 = load %struct.demux_packet*, %struct.demux_packet** %7, align 8
  %397 = getelementptr inbounds %struct.demux_packet, %struct.demux_packet* %396, i32 0, i32 2
  %398 = load i64, i64* %397, align 8
  br label %399

399:                                              ; preds = %395, %394
  %400 = phi i64 [ 0, %394 ], [ %398, %395 ]
  %401 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %402 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %401, i32 0, i32 6
  %403 = load i64*, i64** %402, align 8
  %404 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %405 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %404, i32 0, i32 4
  %406 = load i32, i32* %405, align 8
  %407 = sext i32 %406 to i64
  %408 = getelementptr inbounds i64, i64* %403, i64 %407
  store i64 %400, i64* %408, align 8
  %409 = load %struct.demux_packet*, %struct.demux_packet** %7, align 8
  %410 = getelementptr inbounds %struct.demux_packet, %struct.demux_packet* %409, i32 0, i32 2
  %411 = load i64, i64* %410, align 8
  %412 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %413 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %412, i32 0, i32 7
  store i64 %411, i64* %413, align 8
  %414 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %415 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %414, i32 0, i32 4
  %416 = load i32, i32* %415, align 8
  %417 = add nsw i32 %416, 1
  store i32 %417, i32* %415, align 8
  %418 = load i32, i32* %9, align 4
  %419 = icmp eq i32 %417, %418
  br i1 %419, label %420, label %507

420:                                              ; preds = %399
  %421 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %422 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %421, i32 0, i32 4
  store i32 0, i32* %422, align 8
  %423 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %424 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %423, i32 0, i32 8
  %425 = load %struct.TYPE_11__*, %struct.TYPE_11__** %424, align 8
  %426 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %425, i32 0, i32 0
  %427 = load %struct.TYPE_8__*, %struct.TYPE_8__** %426, align 8
  %428 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %427, i32 0, i32 1
  %429 = load i32, i32* %428, align 8
  store i32 %429, i32* %33, align 4
  %430 = load i32, i32* %33, align 4
  %431 = sext i32 %430 to i64
  %432 = load i64, i64* %16, align 8
  %433 = icmp ugt i64 %431, %432
  br i1 %433, label %434, label %435

434:                                              ; preds = %420
  br label %508

435:                                              ; preds = %420
  store i32 0, i32* %34, align 4
  br label %436

436:                                              ; preds = %503, %435
  %437 = load i32, i32* %34, align 4
  %438 = load i32, i32* %9, align 4
  %439 = load i32, i32* %11, align 4
  %440 = mul nsw i32 %438, %439
  %441 = load i32, i32* %33, align 4
  %442 = sdiv i32 %440, %441
  %443 = icmp slt i32 %437, %442
  br i1 %443, label %444, label %506

444:                                              ; preds = %436
  %445 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %446 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %445, i32 0, i32 5
  %447 = load i32*, i32** %446, align 8
  %448 = load i32, i32* %34, align 4
  %449 = load i32, i32* %33, align 4
  %450 = mul nsw i32 %448, %449
  %451 = sext i32 %450 to i64
  %452 = getelementptr inbounds i32, i32* %447, i64 %451
  %453 = load i32, i32* %33, align 4
  %454 = call %struct.TYPE_10__* @new_demux_packet_from(i32* %452, i32 %453)
  store %struct.TYPE_10__* %454, %struct.TYPE_10__** %15, align 8
  %455 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %456 = icmp ne %struct.TYPE_10__* %455, null
  br i1 %456, label %458, label %457

457:                                              ; preds = %444
  br label %508

458:                                              ; preds = %444
  %459 = load i32, i32* %34, align 4
  %460 = load i32, i32* %33, align 4
  %461 = mul nsw i32 %459, %460
  %462 = load i32, i32* %11, align 4
  %463 = srem i32 %461, %462
  %464 = icmp ne i32 %463, 0
  br i1 %464, label %465, label %467

465:                                              ; preds = %458
  %466 = load i64, i64* @MP_NOPTS_VALUE, align 8
  br label %479

467:                                              ; preds = %458
  %468 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %469 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %468, i32 0, i32 6
  %470 = load i64*, i64** %469, align 8
  %471 = load i32, i32* %34, align 4
  %472 = load i32, i32* %33, align 4
  %473 = mul nsw i32 %471, %472
  %474 = load i32, i32* %11, align 4
  %475 = sdiv i32 %473, %474
  %476 = sext i32 %475 to i64
  %477 = getelementptr inbounds i64, i64* %470, i64 %476
  %478 = load i64, i64* %477, align 8
  br label %479

479:                                              ; preds = %467, %465
  %480 = phi i64 [ %466, %465 ], [ %478, %467 ]
  %481 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %482 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %481, i32 0, i32 0
  store i64 %480, i64* %482, align 8
  %483 = load %struct.demux_packet*, %struct.demux_packet** %7, align 8
  %484 = getelementptr inbounds %struct.demux_packet, %struct.demux_packet* %483, i32 0, i32 3
  %485 = load i64, i64* %484, align 8
  %486 = load i32, i32* %34, align 4
  %487 = sext i32 %486 to i64
  %488 = add nsw i64 %485, %487
  %489 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %490 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %489, i32 0, i32 2
  store i64 %488, i64* %490, align 8
  %491 = load i32, i32* %34, align 4
  %492 = icmp ne i32 %491, 0
  %493 = xor i1 %492, true
  %494 = zext i1 %493 to i32
  %495 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %496 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %495, i32 0, i32 1
  store i32 %494, i32* %496, align 8
  %497 = load i32*, i32** %5, align 8
  %498 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %499 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %498, i32 0, i32 8
  %500 = load %struct.TYPE_11__*, %struct.TYPE_11__** %499, align 8
  %501 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %502 = call i32 @add_packet(i32* %497, %struct.TYPE_11__* %500, %struct.TYPE_10__* %501)
  br label %503

503:                                              ; preds = %479
  %504 = load i32, i32* %34, align 4
  %505 = add nsw i32 %504, 1
  store i32 %505, i32* %34, align 4
  br label %436

506:                                              ; preds = %436
  br label %507

507:                                              ; preds = %506, %399
  br label %508

508:                                              ; preds = %507, %457, %434, %290, %229, %194, %184, %129, %119
  %509 = load %struct.demux_packet*, %struct.demux_packet** %7, align 8
  %510 = call i32 @talloc_free(%struct.demux_packet* %509)
  store i32 1, i32* %4, align 4
  br label %511

511:                                              ; preds = %508, %383, %74
  %512 = load i32, i32* %4, align 4
  ret i32 %512
}

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local %struct.TYPE_10__* @new_demux_packet_from(i32*, i32) #1

declare dso_local i32 @add_packet(i32*, %struct.TYPE_11__*, %struct.TYPE_10__*) #1

declare dso_local i32 @talloc_free(%struct.demux_packet*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
