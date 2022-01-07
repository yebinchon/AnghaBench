; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libtiff/extr_tif_getimage.c_gtTileContig.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libtiff/extr_tif_getimage.c_gtTileContig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32, i64, i64, %struct.TYPE_13__, %struct.TYPE_15__* }
%struct.TYPE_13__ = type { i32 (%struct.TYPE_14__*, i32*, i32, i32, i32, i32, i32, i32, i8*)* }
%struct.TYPE_15__ = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"No space for tile buffer\00", align 1
@TIFFTAG_TILEWIDTH = common dso_local global i32 0, align 4
@TIFFTAG_TILELENGTH = common dso_local global i32 0, align 4
@FLIP_VERTICALLY = common dso_local global i32 0, align 4
@FLIP_HORIZONTALLY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*, i32*, i32, i32)* @gtTileContig to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gtTileContig(%struct.TYPE_14__* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_15__*, align 8
  %11 = alloca i32 (%struct.TYPE_14__*, i32*, i32, i32, i32, i32, i32, i32, i8*)*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
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
  %31 = alloca i64, align 8
  %32 = alloca i32, align 4
  %33 = alloca i32*, align 8
  %34 = alloca i32*, align 8
  %35 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %36, i32 0, i32 5
  %38 = load %struct.TYPE_15__*, %struct.TYPE_15__** %37, align 8
  store %struct.TYPE_15__* %38, %struct.TYPE_15__** %10, align 8
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i32 0, i32 4
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i32 0, i32 0
  %42 = load i32 (%struct.TYPE_14__*, i32*, i32, i32, i32, i32, i32, i32, i8*)*, i32 (%struct.TYPE_14__*, i32*, i32, i32, i32, i32, i32, i32, i8*)** %41, align 8
  store i32 (%struct.TYPE_14__*, i32*, i32, i32, i32, i32, i32, i32, i8*)* %42, i32 (%struct.TYPE_14__*, i32*, i32, i32, i32, i32, i32, i32, i8*)** %11, align 8
  store i8* null, i8** %19, align 8
  store i32 1, i32* %23, align 4
  %43 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %44 = call i64 @TIFFTileSize(%struct.TYPE_15__* %43)
  store i64 %44, i64* %31, align 8
  %45 = load i64, i64* %31, align 8
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %4
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %49 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %52 = call i32 @TIFFFileName(%struct.TYPE_15__* %51)
  %53 = call i32 @TIFFErrorExt(i32 %50, i32 %52, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %284

54:                                               ; preds = %4
  %55 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %56 = load i32, i32* @TIFFTAG_TILEWIDTH, align 4
  %57 = call i32 @TIFFGetField(%struct.TYPE_15__* %55, i32 %56, i32* %17)
  %58 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %59 = load i32, i32* @TIFFTAG_TILELENGTH, align 4
  %60 = call i32 @TIFFGetField(%struct.TYPE_15__* %58, i32 %59, i32* %18)
  %61 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %62 = call i32 @setorientation(%struct.TYPE_14__* %61)
  store i32 %62, i32* %24, align 4
  %63 = load i32, i32* %24, align 4
  %64 = load i32, i32* @FLIP_VERTICALLY, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %54
  %68 = load i32, i32* %9, align 4
  %69 = sub nsw i32 %68, 1
  store i32 %69, i32* %14, align 4
  %70 = load i32, i32* %17, align 4
  %71 = load i32, i32* %8, align 4
  %72 = add nsw i32 %70, %71
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %21, align 4
  br label %79

74:                                               ; preds = %54
  store i32 0, i32* %14, align 4
  %75 = load i32, i32* %17, align 4
  %76 = load i32, i32* %8, align 4
  %77 = sub nsw i32 %75, %76
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %21, align 4
  br label %79

79:                                               ; preds = %74, %67
  %80 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* %17, align 4
  %84 = srem i32 %82, %83
  store i32 %84, i32* %29, align 4
  %85 = load i32, i32* %17, align 4
  %86 = load i32, i32* %29, align 4
  %87 = sub nsw i32 %85, %86
  store i32 %87, i32* %30, align 4
  %88 = load i32, i32* %21, align 4
  %89 = load i32, i32* %29, align 4
  %90 = add nsw i32 %88, %89
  store i32 %90, i32* %28, align 4
  store i32 0, i32* %13, align 4
  br label %91

91:                                               ; preds = %233, %79
  %92 = load i32, i32* %23, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %91
  %95 = load i32, i32* %13, align 4
  %96 = load i32, i32* %9, align 4
  %97 = icmp slt i32 %95, %96
  br label %98

98:                                               ; preds = %94, %91
  %99 = phi i1 [ false, %91 ], [ %97, %94 ]
  br i1 %99, label %100, label %237

100:                                              ; preds = %98
  %101 = load i32, i32* %18, align 4
  %102 = load i32, i32* %13, align 4
  %103 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = add nsw i32 %102, %105
  %107 = load i32, i32* %18, align 4
  %108 = srem i32 %106, %107
  %109 = sub nsw i32 %101, %108
  store i32 %109, i32* %15, align 4
  %110 = load i32, i32* %13, align 4
  %111 = load i32, i32* %15, align 4
  %112 = add nsw i32 %110, %111
  %113 = load i32, i32* %9, align 4
  %114 = icmp sgt i32 %112, %113
  br i1 %114, label %115, label %119

115:                                              ; preds = %100
  %116 = load i32, i32* %9, align 4
  %117 = load i32, i32* %13, align 4
  %118 = sub nsw i32 %116, %117
  br label %121

119:                                              ; preds = %100
  %120 = load i32, i32* %15, align 4
  br label %121

121:                                              ; preds = %119, %115
  %122 = phi i32 [ %118, %115 ], [ %120, %119 ]
  store i32 %122, i32* %22, align 4
  %123 = load i32, i32* %29, align 4
  store i32 %123, i32* %20, align 4
  %124 = load i32, i32* %30, align 4
  store i32 %124, i32* %25, align 4
  %125 = load i32, i32* %28, align 4
  store i32 %125, i32* %27, align 4
  store i32 0, i32* %26, align 4
  %126 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %127 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  store i32 %128, i32* %12, align 4
  br label %129

129:                                              ; preds = %189, %121
  %130 = load i32, i32* %26, align 4
  %131 = load i32, i32* %8, align 4
  %132 = icmp slt i32 %130, %131
  br i1 %132, label %133, label %219

133:                                              ; preds = %129
  %134 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %135 = load i64, i64* %31, align 8
  %136 = load i32, i32* %12, align 4
  %137 = load i32, i32* %13, align 4
  %138 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %139 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = add nsw i32 %137, %140
  %142 = call i64 @_TIFFReadTileAndAllocBuffer(%struct.TYPE_15__* %134, i8** %19, i64 %135, i32 %136, i32 %141, i32 0, i32 0)
  %143 = icmp eq i64 %142, -1
  br i1 %143, label %144, label %153

144:                                              ; preds = %133
  %145 = load i8*, i8** %19, align 8
  %146 = icmp eq i8* %145, null
  br i1 %146, label %152, label %147

147:                                              ; preds = %144
  %148 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %149 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %148, i32 0, i32 3
  %150 = load i64, i64* %149, align 8
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %153

152:                                              ; preds = %147, %144
  store i32 0, i32* %23, align 4
  br label %219

153:                                              ; preds = %147, %133
  %154 = load i32, i32* %13, align 4
  %155 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %156 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = add nsw i32 %154, %157
  %159 = load i32, i32* %18, align 4
  %160 = srem i32 %158, %159
  %161 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %162 = call i32 @TIFFTileRowSize(%struct.TYPE_15__* %161)
  %163 = mul nsw i32 %160, %162
  %164 = sext i32 %163 to i64
  %165 = load i32, i32* %20, align 4
  %166 = sext i32 %165 to i64
  %167 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %168 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %167, i32 0, i32 2
  %169 = load i64, i64* %168, align 8
  %170 = mul nsw i64 %166, %169
  %171 = add nsw i64 %164, %170
  store i64 %171, i64* %16, align 8
  %172 = load i32, i32* %26, align 4
  %173 = load i32, i32* %25, align 4
  %174 = add nsw i32 %172, %173
  %175 = load i32, i32* %8, align 4
  %176 = icmp sgt i32 %174, %175
  br i1 %176, label %177, label %189

177:                                              ; preds = %153
  %178 = load i32, i32* %17, align 4
  %179 = load i32, i32* %8, align 4
  %180 = load i32, i32* %26, align 4
  %181 = sub nsw i32 %179, %180
  %182 = sub nsw i32 %178, %181
  store i32 %182, i32* %20, align 4
  %183 = load i32, i32* %17, align 4
  %184 = load i32, i32* %20, align 4
  %185 = sub nsw i32 %183, %184
  store i32 %185, i32* %25, align 4
  %186 = load i32, i32* %21, align 4
  %187 = load i32, i32* %20, align 4
  %188 = add nsw i32 %186, %187
  store i32 %188, i32* %27, align 4
  br label %189

189:                                              ; preds = %177, %153
  %190 = load i32 (%struct.TYPE_14__*, i32*, i32, i32, i32, i32, i32, i32, i8*)*, i32 (%struct.TYPE_14__*, i32*, i32, i32, i32, i32, i32, i32, i8*)** %11, align 8
  %191 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %192 = load i32*, i32** %7, align 8
  %193 = load i32, i32* %14, align 4
  %194 = load i32, i32* %8, align 4
  %195 = mul nsw i32 %193, %194
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds i32, i32* %192, i64 %196
  %198 = load i32, i32* %26, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds i32, i32* %197, i64 %199
  %201 = load i32, i32* %26, align 4
  %202 = load i32, i32* %14, align 4
  %203 = load i32, i32* %25, align 4
  %204 = load i32, i32* %22, align 4
  %205 = load i32, i32* %20, align 4
  %206 = load i32, i32* %27, align 4
  %207 = load i8*, i8** %19, align 8
  %208 = load i64, i64* %16, align 8
  %209 = getelementptr inbounds i8, i8* %207, i64 %208
  %210 = call i32 %190(%struct.TYPE_14__* %191, i32* %200, i32 %201, i32 %202, i32 %203, i32 %204, i32 %205, i32 %206, i8* %209)
  %211 = load i32, i32* %25, align 4
  %212 = load i32, i32* %26, align 4
  %213 = add nsw i32 %212, %211
  store i32 %213, i32* %26, align 4
  %214 = load i32, i32* %25, align 4
  %215 = load i32, i32* %12, align 4
  %216 = add nsw i32 %215, %214
  store i32 %216, i32* %12, align 4
  store i32 0, i32* %20, align 4
  %217 = load i32, i32* %17, align 4
  store i32 %217, i32* %25, align 4
  %218 = load i32, i32* %21, align 4
  store i32 %218, i32* %27, align 4
  br label %129

219:                                              ; preds = %152, %129
  %220 = load i32, i32* %24, align 4
  %221 = load i32, i32* @FLIP_VERTICALLY, align 4
  %222 = and i32 %220, %221
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %227

224:                                              ; preds = %219
  %225 = load i32, i32* %22, align 4
  %226 = sub nsw i32 0, %225
  br label %229

227:                                              ; preds = %219
  %228 = load i32, i32* %22, align 4
  br label %229

229:                                              ; preds = %227, %224
  %230 = phi i32 [ %226, %224 ], [ %228, %227 ]
  %231 = load i32, i32* %14, align 4
  %232 = add nsw i32 %231, %230
  store i32 %232, i32* %14, align 4
  br label %233

233:                                              ; preds = %229
  %234 = load i32, i32* %22, align 4
  %235 = load i32, i32* %13, align 4
  %236 = add nsw i32 %235, %234
  store i32 %236, i32* %13, align 4
  br label %91

237:                                              ; preds = %98
  %238 = load i8*, i8** %19, align 8
  %239 = call i32 @_TIFFfree(i8* %238)
  %240 = load i32, i32* %24, align 4
  %241 = load i32, i32* @FLIP_HORIZONTALLY, align 4
  %242 = and i32 %240, %241
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %244, label %282

244:                                              ; preds = %237
  store i32 0, i32* %32, align 4
  br label %245

245:                                              ; preds = %278, %244
  %246 = load i32, i32* %32, align 4
  %247 = load i32, i32* %9, align 4
  %248 = icmp slt i32 %246, %247
  br i1 %248, label %249, label %281

249:                                              ; preds = %245
  %250 = load i32*, i32** %7, align 8
  %251 = load i32, i32* %32, align 4
  %252 = load i32, i32* %8, align 4
  %253 = mul nsw i32 %251, %252
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds i32, i32* %250, i64 %254
  store i32* %255, i32** %33, align 8
  %256 = load i32*, i32** %33, align 8
  %257 = load i32, i32* %8, align 4
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds i32, i32* %256, i64 %258
  %260 = getelementptr inbounds i32, i32* %259, i64 -1
  store i32* %260, i32** %34, align 8
  br label %261

261:                                              ; preds = %265, %249
  %262 = load i32*, i32** %33, align 8
  %263 = load i32*, i32** %34, align 8
  %264 = icmp ult i32* %262, %263
  br i1 %264, label %265, label %277

265:                                              ; preds = %261
  %266 = load i32*, i32** %33, align 8
  %267 = load i32, i32* %266, align 4
  store i32 %267, i32* %35, align 4
  %268 = load i32*, i32** %34, align 8
  %269 = load i32, i32* %268, align 4
  %270 = load i32*, i32** %33, align 8
  store i32 %269, i32* %270, align 4
  %271 = load i32, i32* %35, align 4
  %272 = load i32*, i32** %34, align 8
  store i32 %271, i32* %272, align 4
  %273 = load i32*, i32** %33, align 8
  %274 = getelementptr inbounds i32, i32* %273, i32 1
  store i32* %274, i32** %33, align 8
  %275 = load i32*, i32** %34, align 8
  %276 = getelementptr inbounds i32, i32* %275, i32 -1
  store i32* %276, i32** %34, align 8
  br label %261

277:                                              ; preds = %261
  br label %278

278:                                              ; preds = %277
  %279 = load i32, i32* %32, align 4
  %280 = add nsw i32 %279, 1
  store i32 %280, i32* %32, align 4
  br label %245

281:                                              ; preds = %245
  br label %282

282:                                              ; preds = %281, %237
  %283 = load i32, i32* %23, align 4
  store i32 %283, i32* %5, align 4
  br label %284

284:                                              ; preds = %282, %47
  %285 = load i32, i32* %5, align 4
  ret i32 %285
}

declare dso_local i64 @TIFFTileSize(%struct.TYPE_15__*) #1

declare dso_local i32 @TIFFErrorExt(i32, i32, i8*, i8*) #1

declare dso_local i32 @TIFFFileName(%struct.TYPE_15__*) #1

declare dso_local i32 @TIFFGetField(%struct.TYPE_15__*, i32, i32*) #1

declare dso_local i32 @setorientation(%struct.TYPE_14__*) #1

declare dso_local i64 @_TIFFReadTileAndAllocBuffer(%struct.TYPE_15__*, i8**, i64, i32, i32, i32, i32) #1

declare dso_local i32 @TIFFTileRowSize(%struct.TYPE_15__*) #1

declare dso_local i32 @_TIFFfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
