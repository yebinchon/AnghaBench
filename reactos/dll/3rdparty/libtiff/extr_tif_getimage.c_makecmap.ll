; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libtiff/extr_tif_getimage.c_makecmap.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libtiff/extr_tif_getimage.c_makecmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32**, %struct.TYPE_5__*, i32*, i32*, i32* }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"No space for Palette mapping table\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*)* @makecmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @makecmap(%struct.TYPE_4__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = sdiv i32 8, %15
  store i32 %16, i32* %5, align 4
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 5
  %19 = load i32*, i32** %18, align 8
  store i32* %19, i32** %6, align 8
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 4
  %22 = load i32*, i32** %21, align 8
  store i32* %22, i32** %7, align 8
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 3
  %25 = load i32*, i32** %24, align 8
  store i32* %25, i32** %8, align 8
  %26 = load i32, i32* %5, align 4
  %27 = mul nsw i32 256, %26
  %28 = sext i32 %27 to i64
  %29 = mul i64 %28, 4
  %30 = add i64 2048, %29
  %31 = trunc i64 %30 to i32
  %32 = call i64 @_TIFFmalloc(i32 %31)
  %33 = inttoptr i64 %32 to i32**
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  store i32** %33, i32*** %35, align 8
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  %38 = load i32**, i32*** %37, align 8
  %39 = icmp eq i32** %38, null
  br i1 %39, label %40, label %51

40:                                               ; preds = %1
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 2
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 2
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %47, align 8
  %49 = call i32 @TIFFFileName(%struct.TYPE_5__* %48)
  %50 = call i32 @TIFFErrorExt(i32 %45, i32 %49, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %430

51:                                               ; preds = %1
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 1
  %54 = load i32**, i32*** %53, align 8
  %55 = getelementptr inbounds i32*, i32** %54, i64 256
  %56 = bitcast i32** %55 to i32*
  store i32* %56, i32** %9, align 8
  store i32 0, i32* %10, align 4
  br label %57

57:                                               ; preds = %426, %51
  %58 = load i32, i32* %10, align 4
  %59 = icmp slt i32 %58, 256
  br i1 %59, label %60, label %429

60:                                               ; preds = %57
  %61 = load i32*, i32** %9, align 8
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 1
  %64 = load i32**, i32*** %63, align 8
  %65 = load i32, i32* %10, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32*, i32** %64, i64 %66
  store i32* %61, i32** %67, align 8
  %68 = load i32, i32* %4, align 4
  switch i32 %68, label %425 [
    i32 1, label %69
    i32 2, label %260
    i32 4, label %355
    i32 8, label %402
  ]

69:                                               ; preds = %60
  %70 = load i32, i32* %10, align 4
  %71 = ashr i32 %70, 7
  store i32 %71, i32* %11, align 4
  %72 = load i32*, i32** %6, align 8
  %73 = load i32, i32* %11, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = and i32 %76, 255
  %78 = load i32*, i32** %7, align 8
  %79 = load i32, i32* %11, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = and i32 %82, 255
  %84 = load i32*, i32** %8, align 8
  %85 = load i32, i32* %11, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = and i32 %88, 255
  %90 = call i32 (i32, i32, i32, ...) bitcast (i32 (...)* @PACK to i32 (i32, i32, i32, ...)*)(i32 %77, i32 %83, i32 %89)
  %91 = load i32*, i32** %9, align 8
  %92 = getelementptr inbounds i32, i32* %91, i32 1
  store i32* %92, i32** %9, align 8
  store i32 %90, i32* %91, align 4
  %93 = load i32, i32* %10, align 4
  %94 = ashr i32 %93, 6
  %95 = and i32 %94, 1
  store i32 %95, i32* %11, align 4
  %96 = load i32*, i32** %6, align 8
  %97 = load i32, i32* %11, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %96, i64 %98
  %100 = load i32, i32* %99, align 4
  %101 = and i32 %100, 255
  %102 = load i32*, i32** %7, align 8
  %103 = load i32, i32* %11, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %102, i64 %104
  %106 = load i32, i32* %105, align 4
  %107 = and i32 %106, 255
  %108 = load i32*, i32** %8, align 8
  %109 = load i32, i32* %11, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %108, i64 %110
  %112 = load i32, i32* %111, align 4
  %113 = and i32 %112, 255
  %114 = call i32 (i32, i32, i32, ...) bitcast (i32 (...)* @PACK to i32 (i32, i32, i32, ...)*)(i32 %101, i32 %107, i32 %113)
  %115 = load i32*, i32** %9, align 8
  %116 = getelementptr inbounds i32, i32* %115, i32 1
  store i32* %116, i32** %9, align 8
  store i32 %114, i32* %115, align 4
  %117 = load i32, i32* %10, align 4
  %118 = ashr i32 %117, 5
  %119 = and i32 %118, 1
  store i32 %119, i32* %11, align 4
  %120 = load i32*, i32** %6, align 8
  %121 = load i32, i32* %11, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %120, i64 %122
  %124 = load i32, i32* %123, align 4
  %125 = and i32 %124, 255
  %126 = load i32*, i32** %7, align 8
  %127 = load i32, i32* %11, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32, i32* %126, i64 %128
  %130 = load i32, i32* %129, align 4
  %131 = and i32 %130, 255
  %132 = load i32*, i32** %8, align 8
  %133 = load i32, i32* %11, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i32, i32* %132, i64 %134
  %136 = load i32, i32* %135, align 4
  %137 = and i32 %136, 255
  %138 = call i32 (i32, i32, i32, ...) bitcast (i32 (...)* @PACK to i32 (i32, i32, i32, ...)*)(i32 %125, i32 %131, i32 %137)
  %139 = load i32*, i32** %9, align 8
  %140 = getelementptr inbounds i32, i32* %139, i32 1
  store i32* %140, i32** %9, align 8
  store i32 %138, i32* %139, align 4
  %141 = load i32, i32* %10, align 4
  %142 = ashr i32 %141, 4
  %143 = and i32 %142, 1
  store i32 %143, i32* %11, align 4
  %144 = load i32*, i32** %6, align 8
  %145 = load i32, i32* %11, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i32, i32* %144, i64 %146
  %148 = load i32, i32* %147, align 4
  %149 = and i32 %148, 255
  %150 = load i32*, i32** %7, align 8
  %151 = load i32, i32* %11, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i32, i32* %150, i64 %152
  %154 = load i32, i32* %153, align 4
  %155 = and i32 %154, 255
  %156 = load i32*, i32** %8, align 8
  %157 = load i32, i32* %11, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i32, i32* %156, i64 %158
  %160 = load i32, i32* %159, align 4
  %161 = and i32 %160, 255
  %162 = call i32 (i32, i32, i32, ...) bitcast (i32 (...)* @PACK to i32 (i32, i32, i32, ...)*)(i32 %149, i32 %155, i32 %161)
  %163 = load i32*, i32** %9, align 8
  %164 = getelementptr inbounds i32, i32* %163, i32 1
  store i32* %164, i32** %9, align 8
  store i32 %162, i32* %163, align 4
  %165 = load i32, i32* %10, align 4
  %166 = ashr i32 %165, 3
  %167 = and i32 %166, 1
  store i32 %167, i32* %11, align 4
  %168 = load i32*, i32** %6, align 8
  %169 = load i32, i32* %11, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i32, i32* %168, i64 %170
  %172 = load i32, i32* %171, align 4
  %173 = and i32 %172, 255
  %174 = load i32*, i32** %7, align 8
  %175 = load i32, i32* %11, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i32, i32* %174, i64 %176
  %178 = load i32, i32* %177, align 4
  %179 = and i32 %178, 255
  %180 = load i32*, i32** %8, align 8
  %181 = load i32, i32* %11, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i32, i32* %180, i64 %182
  %184 = load i32, i32* %183, align 4
  %185 = and i32 %184, 255
  %186 = call i32 (i32, i32, i32, ...) bitcast (i32 (...)* @PACK to i32 (i32, i32, i32, ...)*)(i32 %173, i32 %179, i32 %185)
  %187 = load i32*, i32** %9, align 8
  %188 = getelementptr inbounds i32, i32* %187, i32 1
  store i32* %188, i32** %9, align 8
  store i32 %186, i32* %187, align 4
  %189 = load i32, i32* %10, align 4
  %190 = ashr i32 %189, 2
  %191 = and i32 %190, 1
  store i32 %191, i32* %11, align 4
  %192 = load i32*, i32** %6, align 8
  %193 = load i32, i32* %11, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i32, i32* %192, i64 %194
  %196 = load i32, i32* %195, align 4
  %197 = and i32 %196, 255
  %198 = load i32*, i32** %7, align 8
  %199 = load i32, i32* %11, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds i32, i32* %198, i64 %200
  %202 = load i32, i32* %201, align 4
  %203 = and i32 %202, 255
  %204 = load i32*, i32** %8, align 8
  %205 = load i32, i32* %11, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds i32, i32* %204, i64 %206
  %208 = load i32, i32* %207, align 4
  %209 = and i32 %208, 255
  %210 = call i32 (i32, i32, i32, ...) bitcast (i32 (...)* @PACK to i32 (i32, i32, i32, ...)*)(i32 %197, i32 %203, i32 %209)
  %211 = load i32*, i32** %9, align 8
  %212 = getelementptr inbounds i32, i32* %211, i32 1
  store i32* %212, i32** %9, align 8
  store i32 %210, i32* %211, align 4
  %213 = load i32, i32* %10, align 4
  %214 = ashr i32 %213, 1
  %215 = and i32 %214, 1
  store i32 %215, i32* %11, align 4
  %216 = load i32*, i32** %6, align 8
  %217 = load i32, i32* %11, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds i32, i32* %216, i64 %218
  %220 = load i32, i32* %219, align 4
  %221 = and i32 %220, 255
  %222 = load i32*, i32** %7, align 8
  %223 = load i32, i32* %11, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds i32, i32* %222, i64 %224
  %226 = load i32, i32* %225, align 4
  %227 = and i32 %226, 255
  %228 = load i32*, i32** %8, align 8
  %229 = load i32, i32* %11, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds i32, i32* %228, i64 %230
  %232 = load i32, i32* %231, align 4
  %233 = and i32 %232, 255
  %234 = call i32 (i32, i32, i32, ...) bitcast (i32 (...)* @PACK to i32 (i32, i32, i32, ...)*)(i32 %221, i32 %227, i32 %233)
  %235 = load i32*, i32** %9, align 8
  %236 = getelementptr inbounds i32, i32* %235, i32 1
  store i32* %236, i32** %9, align 8
  store i32 %234, i32* %235, align 4
  %237 = load i32, i32* %10, align 4
  %238 = and i32 %237, 1
  store i32 %238, i32* %11, align 4
  %239 = load i32*, i32** %6, align 8
  %240 = load i32, i32* %11, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds i32, i32* %239, i64 %241
  %243 = load i32, i32* %242, align 4
  %244 = and i32 %243, 255
  %245 = load i32*, i32** %7, align 8
  %246 = load i32, i32* %11, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds i32, i32* %245, i64 %247
  %249 = load i32, i32* %248, align 4
  %250 = and i32 %249, 255
  %251 = load i32*, i32** %8, align 8
  %252 = load i32, i32* %11, align 4
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds i32, i32* %251, i64 %253
  %255 = load i32, i32* %254, align 4
  %256 = and i32 %255, 255
  %257 = call i32 (i32, i32, i32, ...) bitcast (i32 (...)* @PACK to i32 (i32, i32, i32, ...)*)(i32 %244, i32 %250, i32 %256)
  %258 = load i32*, i32** %9, align 8
  %259 = getelementptr inbounds i32, i32* %258, i32 1
  store i32* %259, i32** %9, align 8
  store i32 %257, i32* %258, align 4
  br label %425

260:                                              ; preds = %60
  %261 = load i32, i32* %10, align 4
  %262 = ashr i32 %261, 6
  store i32 %262, i32* %11, align 4
  %263 = load i32*, i32** %6, align 8
  %264 = load i32, i32* %11, align 4
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds i32, i32* %263, i64 %265
  %267 = load i32, i32* %266, align 4
  %268 = and i32 %267, 255
  %269 = load i32*, i32** %7, align 8
  %270 = load i32, i32* %11, align 4
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds i32, i32* %269, i64 %271
  %273 = load i32, i32* %272, align 4
  %274 = and i32 %273, 255
  %275 = load i32*, i32** %8, align 8
  %276 = load i32, i32* %11, align 4
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds i32, i32* %275, i64 %277
  %279 = load i32, i32* %278, align 4
  %280 = and i32 %279, 255
  %281 = call i32 (i32, i32, i32, ...) bitcast (i32 (...)* @PACK to i32 (i32, i32, i32, ...)*)(i32 %268, i32 %274, i32 %280)
  %282 = load i32*, i32** %9, align 8
  %283 = getelementptr inbounds i32, i32* %282, i32 1
  store i32* %283, i32** %9, align 8
  store i32 %281, i32* %282, align 4
  %284 = load i32, i32* %10, align 4
  %285 = ashr i32 %284, 4
  %286 = and i32 %285, 3
  store i32 %286, i32* %11, align 4
  %287 = load i32*, i32** %6, align 8
  %288 = load i32, i32* %11, align 4
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds i32, i32* %287, i64 %289
  %291 = load i32, i32* %290, align 4
  %292 = and i32 %291, 255
  %293 = load i32*, i32** %7, align 8
  %294 = load i32, i32* %11, align 4
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds i32, i32* %293, i64 %295
  %297 = load i32, i32* %296, align 4
  %298 = and i32 %297, 255
  %299 = load i32*, i32** %8, align 8
  %300 = load i32, i32* %11, align 4
  %301 = sext i32 %300 to i64
  %302 = getelementptr inbounds i32, i32* %299, i64 %301
  %303 = load i32, i32* %302, align 4
  %304 = and i32 %303, 255
  %305 = call i32 (i32, i32, i32, ...) bitcast (i32 (...)* @PACK to i32 (i32, i32, i32, ...)*)(i32 %292, i32 %298, i32 %304)
  %306 = load i32*, i32** %9, align 8
  %307 = getelementptr inbounds i32, i32* %306, i32 1
  store i32* %307, i32** %9, align 8
  store i32 %305, i32* %306, align 4
  %308 = load i32, i32* %10, align 4
  %309 = ashr i32 %308, 2
  %310 = and i32 %309, 3
  store i32 %310, i32* %11, align 4
  %311 = load i32*, i32** %6, align 8
  %312 = load i32, i32* %11, align 4
  %313 = sext i32 %312 to i64
  %314 = getelementptr inbounds i32, i32* %311, i64 %313
  %315 = load i32, i32* %314, align 4
  %316 = and i32 %315, 255
  %317 = load i32*, i32** %7, align 8
  %318 = load i32, i32* %11, align 4
  %319 = sext i32 %318 to i64
  %320 = getelementptr inbounds i32, i32* %317, i64 %319
  %321 = load i32, i32* %320, align 4
  %322 = and i32 %321, 255
  %323 = load i32*, i32** %8, align 8
  %324 = load i32, i32* %11, align 4
  %325 = sext i32 %324 to i64
  %326 = getelementptr inbounds i32, i32* %323, i64 %325
  %327 = load i32, i32* %326, align 4
  %328 = and i32 %327, 255
  %329 = call i32 (i32, i32, i32, ...) bitcast (i32 (...)* @PACK to i32 (i32, i32, i32, ...)*)(i32 %316, i32 %322, i32 %328)
  %330 = load i32*, i32** %9, align 8
  %331 = getelementptr inbounds i32, i32* %330, i32 1
  store i32* %331, i32** %9, align 8
  store i32 %329, i32* %330, align 4
  %332 = load i32, i32* %10, align 4
  %333 = and i32 %332, 3
  store i32 %333, i32* %11, align 4
  %334 = load i32*, i32** %6, align 8
  %335 = load i32, i32* %11, align 4
  %336 = sext i32 %335 to i64
  %337 = getelementptr inbounds i32, i32* %334, i64 %336
  %338 = load i32, i32* %337, align 4
  %339 = and i32 %338, 255
  %340 = load i32*, i32** %7, align 8
  %341 = load i32, i32* %11, align 4
  %342 = sext i32 %341 to i64
  %343 = getelementptr inbounds i32, i32* %340, i64 %342
  %344 = load i32, i32* %343, align 4
  %345 = and i32 %344, 255
  %346 = load i32*, i32** %8, align 8
  %347 = load i32, i32* %11, align 4
  %348 = sext i32 %347 to i64
  %349 = getelementptr inbounds i32, i32* %346, i64 %348
  %350 = load i32, i32* %349, align 4
  %351 = and i32 %350, 255
  %352 = call i32 (i32, i32, i32, ...) bitcast (i32 (...)* @PACK to i32 (i32, i32, i32, ...)*)(i32 %339, i32 %345, i32 %351)
  %353 = load i32*, i32** %9, align 8
  %354 = getelementptr inbounds i32, i32* %353, i32 1
  store i32* %354, i32** %9, align 8
  store i32 %352, i32* %353, align 4
  br label %425

355:                                              ; preds = %60
  %356 = load i32, i32* %10, align 4
  %357 = ashr i32 %356, 4
  store i32 %357, i32* %11, align 4
  %358 = load i32*, i32** %6, align 8
  %359 = load i32, i32* %11, align 4
  %360 = sext i32 %359 to i64
  %361 = getelementptr inbounds i32, i32* %358, i64 %360
  %362 = load i32, i32* %361, align 4
  %363 = and i32 %362, 255
  %364 = load i32*, i32** %7, align 8
  %365 = load i32, i32* %11, align 4
  %366 = sext i32 %365 to i64
  %367 = getelementptr inbounds i32, i32* %364, i64 %366
  %368 = load i32, i32* %367, align 4
  %369 = and i32 %368, 255
  %370 = load i32*, i32** %8, align 8
  %371 = load i32, i32* %11, align 4
  %372 = sext i32 %371 to i64
  %373 = getelementptr inbounds i32, i32* %370, i64 %372
  %374 = load i32, i32* %373, align 4
  %375 = and i32 %374, 255
  %376 = call i32 (i32, i32, i32, ...) bitcast (i32 (...)* @PACK to i32 (i32, i32, i32, ...)*)(i32 %363, i32 %369, i32 %375)
  %377 = load i32*, i32** %9, align 8
  %378 = getelementptr inbounds i32, i32* %377, i32 1
  store i32* %378, i32** %9, align 8
  store i32 %376, i32* %377, align 4
  %379 = load i32, i32* %10, align 4
  %380 = and i32 %379, 15
  store i32 %380, i32* %11, align 4
  %381 = load i32*, i32** %6, align 8
  %382 = load i32, i32* %11, align 4
  %383 = sext i32 %382 to i64
  %384 = getelementptr inbounds i32, i32* %381, i64 %383
  %385 = load i32, i32* %384, align 4
  %386 = and i32 %385, 255
  %387 = load i32*, i32** %7, align 8
  %388 = load i32, i32* %11, align 4
  %389 = sext i32 %388 to i64
  %390 = getelementptr inbounds i32, i32* %387, i64 %389
  %391 = load i32, i32* %390, align 4
  %392 = and i32 %391, 255
  %393 = load i32*, i32** %8, align 8
  %394 = load i32, i32* %11, align 4
  %395 = sext i32 %394 to i64
  %396 = getelementptr inbounds i32, i32* %393, i64 %395
  %397 = load i32, i32* %396, align 4
  %398 = and i32 %397, 255
  %399 = call i32 (i32, i32, i32, ...) bitcast (i32 (...)* @PACK to i32 (i32, i32, i32, ...)*)(i32 %386, i32 %392, i32 %398)
  %400 = load i32*, i32** %9, align 8
  %401 = getelementptr inbounds i32, i32* %400, i32 1
  store i32* %401, i32** %9, align 8
  store i32 %399, i32* %400, align 4
  br label %425

402:                                              ; preds = %60
  %403 = load i32, i32* %10, align 4
  store i32 %403, i32* %11, align 4
  %404 = load i32*, i32** %6, align 8
  %405 = load i32, i32* %11, align 4
  %406 = sext i32 %405 to i64
  %407 = getelementptr inbounds i32, i32* %404, i64 %406
  %408 = load i32, i32* %407, align 4
  %409 = and i32 %408, 255
  %410 = load i32*, i32** %7, align 8
  %411 = load i32, i32* %11, align 4
  %412 = sext i32 %411 to i64
  %413 = getelementptr inbounds i32, i32* %410, i64 %412
  %414 = load i32, i32* %413, align 4
  %415 = and i32 %414, 255
  %416 = load i32*, i32** %8, align 8
  %417 = load i32, i32* %11, align 4
  %418 = sext i32 %417 to i64
  %419 = getelementptr inbounds i32, i32* %416, i64 %418
  %420 = load i32, i32* %419, align 4
  %421 = and i32 %420, 255
  %422 = call i32 (i32, i32, i32, ...) bitcast (i32 (...)* @PACK to i32 (i32, i32, i32, ...)*)(i32 %409, i32 %415, i32 %421)
  %423 = load i32*, i32** %9, align 8
  %424 = getelementptr inbounds i32, i32* %423, i32 1
  store i32* %424, i32** %9, align 8
  store i32 %422, i32* %423, align 4
  br label %425

425:                                              ; preds = %60, %402, %355, %260, %69
  br label %426

426:                                              ; preds = %425
  %427 = load i32, i32* %10, align 4
  %428 = add nsw i32 %427, 1
  store i32 %428, i32* %10, align 4
  br label %57

429:                                              ; preds = %57
  store i32 1, i32* %2, align 4
  br label %430

430:                                              ; preds = %429, %40
  %431 = load i32, i32* %2, align 4
  ret i32 %431
}

declare dso_local i64 @_TIFFmalloc(i32) #1

declare dso_local i32 @TIFFErrorExt(i32, i32, i8*) #1

declare dso_local i32 @TIFFFileName(%struct.TYPE_5__*) #1

declare dso_local i32 @PACK(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
