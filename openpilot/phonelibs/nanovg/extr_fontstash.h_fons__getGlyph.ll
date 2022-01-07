; ModuleID = '/home/carl/AnghaBench/openpilot/phonelibs/nanovg/extr_fontstash.h_fons__getGlyph.c'
source_filename = "/home/carl/AnghaBench/openpilot/phonelibs/nanovg/extr_fontstash.h_fons__getGlyph.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i16, i16, i32, i64, i16, i16, i16, i16, i16, i16, i16 }
%struct.TYPE_14__ = type { i8*, i8**, %struct.TYPE_11__, i64, i32, i32, i32 (i32, i32, i32)*, %struct.TYPE_13__** }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_13__ = type { i32*, i32, i64*, i32, i32, %struct.TYPE_12__* }

@FONS_HASH_LUT_SIZE = common dso_local global i32 0, align 4
@FONS_ATLAS_FULL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_12__* (%struct.TYPE_14__*, %struct.TYPE_13__*, i32, i16, i16)* @fons__getGlyph to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_12__* @fons__getGlyph(%struct.TYPE_14__* %0, %struct.TYPE_13__* %1, i32 %2, i16 signext %3, i16 signext %4) #0 {
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i16, align 2
  %11 = alloca i16, align 2
  %12 = alloca i32, align 4
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
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca float, align 4
  %27 = alloca %struct.TYPE_12__*, align 8
  %28 = alloca i32, align 4
  %29 = alloca float, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i8*, align 8
  %33 = alloca i8*, align 8
  %34 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %7, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %8, align 8
  store i32 %2, i32* %9, align 4
  store i16 %3, i16* %10, align 2
  store i16 %4, i16* %11, align 2
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %27, align 8
  %35 = load i16, i16* %10, align 2
  %36 = sext i16 %35 to i32
  %37 = sitofp i32 %36 to float
  %38 = fdiv float %37, 1.000000e+01
  store float %38, float* %29, align 4
  %39 = load i16, i16* %10, align 2
  %40 = sext i16 %39 to i32
  %41 = icmp slt i32 %40, 2
  br i1 %41, label %42, label %43

42:                                               ; preds = %5
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %6, align 8
  br label %514

43:                                               ; preds = %5
  %44 = load i16, i16* %11, align 2
  %45 = sext i16 %44 to i32
  %46 = icmp sgt i32 %45, 20
  br i1 %46, label %47, label %48

47:                                               ; preds = %43
  store i16 20, i16* %11, align 2
  br label %48

48:                                               ; preds = %47, %43
  %49 = load i16, i16* %11, align 2
  %50 = sext i16 %49 to i32
  %51 = add nsw i32 %50, 2
  store i32 %51, i32* %30, align 4
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i32 0, i32 3
  store i64 0, i64* %53, align 8
  %54 = load i32, i32* %9, align 4
  %55 = call i32 @fons__hashint(i32 %54)
  %56 = load i32, i32* @FONS_HASH_LUT_SIZE, align 4
  %57 = sub nsw i32 %56, 1
  %58 = and i32 %55, %57
  store i32 %58, i32* %28, align 4
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* %28, align 4
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = load i32, i32* %64, align 4
  store i32 %65, i32* %12, align 4
  br label %66

66:                                               ; preds = %113, %48
  %67 = load i32, i32* %12, align 4
  %68 = icmp ne i32 %67, -1
  br i1 %68, label %69, label %122

69:                                               ; preds = %66
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i32 0, i32 5
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %71, align 8
  %73 = load i32, i32* %12, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* %9, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %113

80:                                               ; preds = %69
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %81, i32 0, i32 5
  %83 = load %struct.TYPE_12__*, %struct.TYPE_12__** %82, align 8
  %84 = load i32, i32* %12, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %86, i32 0, i32 1
  %88 = load i16, i16* %87, align 4
  %89 = sext i16 %88 to i32
  %90 = load i16, i16* %10, align 2
  %91 = sext i16 %90 to i32
  %92 = icmp eq i32 %89, %91
  br i1 %92, label %93, label %113

93:                                               ; preds = %80
  %94 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %95 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %94, i32 0, i32 5
  %96 = load %struct.TYPE_12__*, %struct.TYPE_12__** %95, align 8
  %97 = load i32, i32* %12, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %96, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %99, i32 0, i32 2
  %101 = load i16, i16* %100, align 2
  %102 = sext i16 %101 to i32
  %103 = load i16, i16* %11, align 2
  %104 = sext i16 %103 to i32
  %105 = icmp eq i32 %102, %104
  br i1 %105, label %106, label %113

106:                                              ; preds = %93
  %107 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %108 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %107, i32 0, i32 5
  %109 = load %struct.TYPE_12__*, %struct.TYPE_12__** %108, align 8
  %110 = load i32, i32* %12, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %109, i64 %111
  store %struct.TYPE_12__* %112, %struct.TYPE_12__** %6, align 8
  br label %514

113:                                              ; preds = %93, %80, %69
  %114 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %115 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %114, i32 0, i32 5
  %116 = load %struct.TYPE_12__*, %struct.TYPE_12__** %115, align 8
  %117 = load i32, i32* %12, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %116, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %119, i32 0, i32 3
  %121 = load i32, i32* %120, align 8
  store i32 %121, i32* %12, align 4
  br label %66

122:                                              ; preds = %66
  %123 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %124 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %123, i32 0, i32 4
  %125 = load float, float* %29, align 4
  %126 = call float @fons__tt_getPixelHeightScale(i32* %124, float %125)
  store float %126, float* %26, align 4
  %127 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %128 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %127, i32 0, i32 4
  %129 = load i32, i32* %9, align 4
  %130 = call i32 @fons__tt_getGlyphIndex(i32* %128, i32 %129)
  store i32 %130, i32* %13, align 4
  %131 = load i32, i32* %13, align 4
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %133, label %172

133:                                              ; preds = %122
  store i32 0, i32* %12, align 4
  br label %134

134:                                              ; preds = %168, %133
  %135 = load i32, i32* %12, align 4
  %136 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %137 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 8
  %139 = icmp slt i32 %135, %138
  br i1 %139, label %140, label %171

140:                                              ; preds = %134
  %141 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %142 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %143 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %142, i32 0, i32 7
  %144 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %143, align 8
  %145 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %146 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %145, i32 0, i32 2
  %147 = load i64*, i64** %146, align 8
  %148 = load i32, i32* %12, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i64, i64* %147, i64 %149
  %151 = load i64, i64* %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %144, i64 %151
  %153 = load %struct.TYPE_13__*, %struct.TYPE_13__** %152, align 8
  %154 = load i32, i32* %9, align 4
  %155 = load i16, i16* %10, align 2
  %156 = load i16, i16* %11, align 2
  %157 = call %struct.TYPE_12__* @fons__getGlyph(%struct.TYPE_14__* %141, %struct.TYPE_13__* %153, i32 %154, i16 signext %155, i16 signext %156)
  store %struct.TYPE_12__* %157, %struct.TYPE_12__** %34, align 8
  %158 = load %struct.TYPE_12__*, %struct.TYPE_12__** %34, align 8
  %159 = icmp ne %struct.TYPE_12__* %158, null
  br i1 %159, label %160, label %167

160:                                              ; preds = %140
  %161 = load %struct.TYPE_12__*, %struct.TYPE_12__** %34, align 8
  %162 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %161, i32 0, i32 4
  %163 = load i64, i64* %162, align 8
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %167

165:                                              ; preds = %160
  %166 = load %struct.TYPE_12__*, %struct.TYPE_12__** %34, align 8
  store %struct.TYPE_12__* %166, %struct.TYPE_12__** %6, align 8
  br label %514

167:                                              ; preds = %160, %140
  br label %168

168:                                              ; preds = %167
  %169 = load i32, i32* %12, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %12, align 4
  br label %134

171:                                              ; preds = %134
  br label %172

172:                                              ; preds = %171, %122
  %173 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %174 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %173, i32 0, i32 4
  %175 = load i32, i32* %13, align 4
  %176 = load float, float* %29, align 4
  %177 = load float, float* %26, align 4
  %178 = call i32 @fons__tt_buildGlyphBitmap(i32* %174, i32 %175, float %176, float %177, i32* %14, i32* %15, i32* %16, i32* %17, i32* %18, i32* %19)
  %179 = load i32, i32* %18, align 4
  %180 = load i32, i32* %16, align 4
  %181 = sub nsw i32 %179, %180
  %182 = load i32, i32* %30, align 4
  %183 = mul nsw i32 %182, 2
  %184 = add nsw i32 %181, %183
  store i32 %184, i32* %20, align 4
  %185 = load i32, i32* %19, align 4
  %186 = load i32, i32* %17, align 4
  %187 = sub nsw i32 %185, %186
  %188 = load i32, i32* %30, align 4
  %189 = mul nsw i32 %188, 2
  %190 = add nsw i32 %187, %189
  store i32 %190, i32* %21, align 4
  %191 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %192 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %191, i32 0, i32 4
  %193 = load i32, i32* %192, align 8
  %194 = load i32, i32* %20, align 4
  %195 = load i32, i32* %21, align 4
  %196 = call i32 @fons__atlasAddRect(i32 %193, i32 %194, i32 %195, i32* %22, i32* %23)
  store i32 %196, i32* %31, align 4
  %197 = load i32, i32* %31, align 4
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %199, label %219

199:                                              ; preds = %172
  %200 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %201 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %200, i32 0, i32 6
  %202 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %201, align 8
  %203 = icmp ne i32 (i32, i32, i32)* %202, null
  br i1 %203, label %204, label %219

204:                                              ; preds = %199
  %205 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %206 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %205, i32 0, i32 6
  %207 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %206, align 8
  %208 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %209 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %208, i32 0, i32 5
  %210 = load i32, i32* %209, align 4
  %211 = load i32, i32* @FONS_ATLAS_FULL, align 4
  %212 = call i32 %207(i32 %210, i32 %211, i32 0)
  %213 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %214 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %213, i32 0, i32 4
  %215 = load i32, i32* %214, align 8
  %216 = load i32, i32* %20, align 4
  %217 = load i32, i32* %21, align 4
  %218 = call i32 @fons__atlasAddRect(i32 %215, i32 %216, i32 %217, i32* %22, i32* %23)
  store i32 %218, i32* %31, align 4
  br label %219

219:                                              ; preds = %204, %199, %172
  %220 = load i32, i32* %31, align 4
  %221 = icmp eq i32 %220, 0
  br i1 %221, label %222, label %223

222:                                              ; preds = %219
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %6, align 8
  br label %514

223:                                              ; preds = %219
  %224 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %225 = call %struct.TYPE_12__* @fons__allocGlyph(%struct.TYPE_13__* %224)
  store %struct.TYPE_12__* %225, %struct.TYPE_12__** %27, align 8
  %226 = load i32, i32* %9, align 4
  %227 = load %struct.TYPE_12__*, %struct.TYPE_12__** %27, align 8
  %228 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %227, i32 0, i32 0
  store i32 %226, i32* %228, align 8
  %229 = load i16, i16* %10, align 2
  %230 = load %struct.TYPE_12__*, %struct.TYPE_12__** %27, align 8
  %231 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %230, i32 0, i32 1
  store i16 %229, i16* %231, align 4
  %232 = load i16, i16* %11, align 2
  %233 = load %struct.TYPE_12__*, %struct.TYPE_12__** %27, align 8
  %234 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %233, i32 0, i32 2
  store i16 %232, i16* %234, align 2
  %235 = load i32, i32* %13, align 4
  %236 = sext i32 %235 to i64
  %237 = load %struct.TYPE_12__*, %struct.TYPE_12__** %27, align 8
  %238 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %237, i32 0, i32 4
  store i64 %236, i64* %238, align 8
  %239 = load i32, i32* %22, align 4
  %240 = trunc i32 %239 to i16
  %241 = load %struct.TYPE_12__*, %struct.TYPE_12__** %27, align 8
  %242 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %241, i32 0, i32 5
  store i16 %240, i16* %242, align 8
  %243 = load i32, i32* %23, align 4
  %244 = trunc i32 %243 to i16
  %245 = load %struct.TYPE_12__*, %struct.TYPE_12__** %27, align 8
  %246 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %245, i32 0, i32 6
  store i16 %244, i16* %246, align 2
  %247 = load %struct.TYPE_12__*, %struct.TYPE_12__** %27, align 8
  %248 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %247, i32 0, i32 5
  %249 = load i16, i16* %248, align 8
  %250 = sext i16 %249 to i32
  %251 = load i32, i32* %20, align 4
  %252 = add nsw i32 %250, %251
  %253 = trunc i32 %252 to i16
  %254 = load %struct.TYPE_12__*, %struct.TYPE_12__** %27, align 8
  %255 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %254, i32 0, i32 7
  store i16 %253, i16* %255, align 4
  %256 = load %struct.TYPE_12__*, %struct.TYPE_12__** %27, align 8
  %257 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %256, i32 0, i32 6
  %258 = load i16, i16* %257, align 2
  %259 = sext i16 %258 to i32
  %260 = load i32, i32* %21, align 4
  %261 = add nsw i32 %259, %260
  %262 = trunc i32 %261 to i16
  %263 = load %struct.TYPE_12__*, %struct.TYPE_12__** %27, align 8
  %264 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %263, i32 0, i32 8
  store i16 %262, i16* %264, align 2
  %265 = load float, float* %26, align 4
  %266 = load i32, i32* %14, align 4
  %267 = sitofp i32 %266 to float
  %268 = fmul float %265, %267
  %269 = fmul float %268, 1.000000e+01
  %270 = fptosi float %269 to i16
  %271 = load %struct.TYPE_12__*, %struct.TYPE_12__** %27, align 8
  %272 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %271, i32 0, i32 9
  store i16 %270, i16* %272, align 8
  %273 = load i32, i32* %16, align 4
  %274 = load i32, i32* %30, align 4
  %275 = sub nsw i32 %273, %274
  %276 = trunc i32 %275 to i16
  %277 = load %struct.TYPE_12__*, %struct.TYPE_12__** %27, align 8
  %278 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %277, i32 0, i32 10
  store i16 %276, i16* %278, align 2
  %279 = load i32, i32* %17, align 4
  %280 = load i32, i32* %30, align 4
  %281 = sub nsw i32 %279, %280
  %282 = trunc i32 %281 to i16
  %283 = load %struct.TYPE_12__*, %struct.TYPE_12__** %27, align 8
  %284 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %283, i32 0, i32 11
  store i16 %282, i16* %284, align 4
  %285 = load %struct.TYPE_12__*, %struct.TYPE_12__** %27, align 8
  %286 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %285, i32 0, i32 3
  store i32 0, i32* %286, align 8
  %287 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %288 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %287, i32 0, i32 0
  %289 = load i32*, i32** %288, align 8
  %290 = load i32, i32* %28, align 4
  %291 = zext i32 %290 to i64
  %292 = getelementptr inbounds i32, i32* %289, i64 %291
  %293 = load i32, i32* %292, align 4
  %294 = load %struct.TYPE_12__*, %struct.TYPE_12__** %27, align 8
  %295 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %294, i32 0, i32 3
  store i32 %293, i32* %295, align 8
  %296 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %297 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %296, i32 0, i32 3
  %298 = load i32, i32* %297, align 8
  %299 = sub nsw i32 %298, 1
  %300 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %301 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %300, i32 0, i32 0
  %302 = load i32*, i32** %301, align 8
  %303 = load i32, i32* %28, align 4
  %304 = zext i32 %303 to i64
  %305 = getelementptr inbounds i32, i32* %302, i64 %304
  store i32 %299, i32* %305, align 4
  %306 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %307 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %306, i32 0, i32 0
  %308 = load i8*, i8** %307, align 8
  %309 = load %struct.TYPE_12__*, %struct.TYPE_12__** %27, align 8
  %310 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %309, i32 0, i32 5
  %311 = load i16, i16* %310, align 8
  %312 = sext i16 %311 to i32
  %313 = load i32, i32* %30, align 4
  %314 = add nsw i32 %312, %313
  %315 = load %struct.TYPE_12__*, %struct.TYPE_12__** %27, align 8
  %316 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %315, i32 0, i32 6
  %317 = load i16, i16* %316, align 2
  %318 = sext i16 %317 to i32
  %319 = load i32, i32* %30, align 4
  %320 = add nsw i32 %318, %319
  %321 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %322 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %321, i32 0, i32 2
  %323 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %322, i32 0, i32 0
  %324 = load i32, i32* %323, align 8
  %325 = mul nsw i32 %320, %324
  %326 = add nsw i32 %314, %325
  %327 = sext i32 %326 to i64
  %328 = getelementptr inbounds i8, i8* %308, i64 %327
  store i8* %328, i8** %33, align 8
  %329 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %330 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %329, i32 0, i32 4
  %331 = load i8*, i8** %33, align 8
  %332 = load i32, i32* %20, align 4
  %333 = load i32, i32* %30, align 4
  %334 = mul nsw i32 %333, 2
  %335 = sub nsw i32 %332, %334
  %336 = load i32, i32* %21, align 4
  %337 = load i32, i32* %30, align 4
  %338 = mul nsw i32 %337, 2
  %339 = sub nsw i32 %336, %338
  %340 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %341 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %340, i32 0, i32 2
  %342 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %341, i32 0, i32 0
  %343 = load i32, i32* %342, align 8
  %344 = load float, float* %26, align 4
  %345 = load float, float* %26, align 4
  %346 = load i32, i32* %13, align 4
  %347 = call i32 @fons__tt_renderGlyphBitmap(i32* %330, i8* %331, i32 %335, i32 %339, i32 %343, float %344, float %345, i32 %346)
  %348 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %349 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %348, i32 0, i32 0
  %350 = load i8*, i8** %349, align 8
  %351 = load %struct.TYPE_12__*, %struct.TYPE_12__** %27, align 8
  %352 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %351, i32 0, i32 5
  %353 = load i16, i16* %352, align 8
  %354 = sext i16 %353 to i32
  %355 = load %struct.TYPE_12__*, %struct.TYPE_12__** %27, align 8
  %356 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %355, i32 0, i32 6
  %357 = load i16, i16* %356, align 2
  %358 = sext i16 %357 to i32
  %359 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %360 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %359, i32 0, i32 2
  %361 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %360, i32 0, i32 0
  %362 = load i32, i32* %361, align 8
  %363 = mul nsw i32 %358, %362
  %364 = add nsw i32 %354, %363
  %365 = sext i32 %364 to i64
  %366 = getelementptr inbounds i8, i8* %350, i64 %365
  store i8* %366, i8** %33, align 8
  store i32 0, i32* %25, align 4
  br label %367

367:                                              ; preds = %393, %223
  %368 = load i32, i32* %25, align 4
  %369 = load i32, i32* %21, align 4
  %370 = icmp slt i32 %368, %369
  br i1 %370, label %371, label %396

371:                                              ; preds = %367
  %372 = load i8*, i8** %33, align 8
  %373 = load i32, i32* %25, align 4
  %374 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %375 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %374, i32 0, i32 2
  %376 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %375, i32 0, i32 0
  %377 = load i32, i32* %376, align 8
  %378 = mul nsw i32 %373, %377
  %379 = sext i32 %378 to i64
  %380 = getelementptr inbounds i8, i8* %372, i64 %379
  store i8 0, i8* %380, align 1
  %381 = load i8*, i8** %33, align 8
  %382 = load i32, i32* %20, align 4
  %383 = sub nsw i32 %382, 1
  %384 = load i32, i32* %25, align 4
  %385 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %386 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %385, i32 0, i32 2
  %387 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %386, i32 0, i32 0
  %388 = load i32, i32* %387, align 8
  %389 = mul nsw i32 %384, %388
  %390 = add nsw i32 %383, %389
  %391 = sext i32 %390 to i64
  %392 = getelementptr inbounds i8, i8* %381, i64 %391
  store i8 0, i8* %392, align 1
  br label %393

393:                                              ; preds = %371
  %394 = load i32, i32* %25, align 4
  %395 = add nsw i32 %394, 1
  store i32 %395, i32* %25, align 4
  br label %367

396:                                              ; preds = %367
  store i32 0, i32* %24, align 4
  br label %397

397:                                              ; preds = %418, %396
  %398 = load i32, i32* %24, align 4
  %399 = load i32, i32* %20, align 4
  %400 = icmp slt i32 %398, %399
  br i1 %400, label %401, label %421

401:                                              ; preds = %397
  %402 = load i8*, i8** %33, align 8
  %403 = load i32, i32* %24, align 4
  %404 = sext i32 %403 to i64
  %405 = getelementptr inbounds i8, i8* %402, i64 %404
  store i8 0, i8* %405, align 1
  %406 = load i8*, i8** %33, align 8
  %407 = load i32, i32* %24, align 4
  %408 = load i32, i32* %21, align 4
  %409 = sub nsw i32 %408, 1
  %410 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %411 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %410, i32 0, i32 2
  %412 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %411, i32 0, i32 0
  %413 = load i32, i32* %412, align 8
  %414 = mul nsw i32 %409, %413
  %415 = add nsw i32 %407, %414
  %416 = sext i32 %415 to i64
  %417 = getelementptr inbounds i8, i8* %406, i64 %416
  store i8 0, i8* %417, align 1
  br label %418

418:                                              ; preds = %401
  %419 = load i32, i32* %24, align 4
  %420 = add nsw i32 %419, 1
  store i32 %420, i32* %24, align 4
  br label %397

421:                                              ; preds = %397
  %422 = load i16, i16* %11, align 2
  %423 = sext i16 %422 to i32
  %424 = icmp sgt i32 %423, 0
  br i1 %424, label %425, label %458

425:                                              ; preds = %421
  %426 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %427 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %426, i32 0, i32 3
  store i64 0, i64* %427, align 8
  %428 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %429 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %428, i32 0, i32 0
  %430 = load i8*, i8** %429, align 8
  %431 = load %struct.TYPE_12__*, %struct.TYPE_12__** %27, align 8
  %432 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %431, i32 0, i32 5
  %433 = load i16, i16* %432, align 8
  %434 = sext i16 %433 to i32
  %435 = load %struct.TYPE_12__*, %struct.TYPE_12__** %27, align 8
  %436 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %435, i32 0, i32 6
  %437 = load i16, i16* %436, align 2
  %438 = sext i16 %437 to i32
  %439 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %440 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %439, i32 0, i32 2
  %441 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %440, i32 0, i32 0
  %442 = load i32, i32* %441, align 8
  %443 = mul nsw i32 %438, %442
  %444 = add nsw i32 %434, %443
  %445 = sext i32 %444 to i64
  %446 = getelementptr inbounds i8, i8* %430, i64 %445
  store i8* %446, i8** %32, align 8
  %447 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %448 = load i8*, i8** %32, align 8
  %449 = load i32, i32* %20, align 4
  %450 = load i32, i32* %21, align 4
  %451 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %452 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %451, i32 0, i32 2
  %453 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %452, i32 0, i32 0
  %454 = load i32, i32* %453, align 8
  %455 = sext i32 %454 to i64
  %456 = load i16, i16* %11, align 2
  %457 = call i32 @fons__blur(%struct.TYPE_14__* %447, i8* %448, i32 %449, i32 %450, i64 %455, i16 signext %456)
  br label %458

458:                                              ; preds = %425, %421
  %459 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %460 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %459, i32 0, i32 1
  %461 = load i8**, i8*** %460, align 8
  %462 = getelementptr inbounds i8*, i8** %461, i64 0
  %463 = load i8*, i8** %462, align 8
  %464 = load %struct.TYPE_12__*, %struct.TYPE_12__** %27, align 8
  %465 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %464, i32 0, i32 5
  %466 = load i16, i16* %465, align 8
  %467 = sext i16 %466 to i64
  %468 = call i8* @fons__mini(i8* %463, i64 %467)
  %469 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %470 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %469, i32 0, i32 1
  %471 = load i8**, i8*** %470, align 8
  %472 = getelementptr inbounds i8*, i8** %471, i64 0
  store i8* %468, i8** %472, align 8
  %473 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %474 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %473, i32 0, i32 1
  %475 = load i8**, i8*** %474, align 8
  %476 = getelementptr inbounds i8*, i8** %475, i64 1
  %477 = load i8*, i8** %476, align 8
  %478 = load %struct.TYPE_12__*, %struct.TYPE_12__** %27, align 8
  %479 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %478, i32 0, i32 6
  %480 = load i16, i16* %479, align 2
  %481 = sext i16 %480 to i64
  %482 = call i8* @fons__mini(i8* %477, i64 %481)
  %483 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %484 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %483, i32 0, i32 1
  %485 = load i8**, i8*** %484, align 8
  %486 = getelementptr inbounds i8*, i8** %485, i64 1
  store i8* %482, i8** %486, align 8
  %487 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %488 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %487, i32 0, i32 1
  %489 = load i8**, i8*** %488, align 8
  %490 = getelementptr inbounds i8*, i8** %489, i64 2
  %491 = load i8*, i8** %490, align 8
  %492 = load %struct.TYPE_12__*, %struct.TYPE_12__** %27, align 8
  %493 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %492, i32 0, i32 7
  %494 = load i16, i16* %493, align 4
  %495 = call i8* @fons__maxi(i8* %491, i16 signext %494)
  %496 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %497 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %496, i32 0, i32 1
  %498 = load i8**, i8*** %497, align 8
  %499 = getelementptr inbounds i8*, i8** %498, i64 2
  store i8* %495, i8** %499, align 8
  %500 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %501 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %500, i32 0, i32 1
  %502 = load i8**, i8*** %501, align 8
  %503 = getelementptr inbounds i8*, i8** %502, i64 3
  %504 = load i8*, i8** %503, align 8
  %505 = load %struct.TYPE_12__*, %struct.TYPE_12__** %27, align 8
  %506 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %505, i32 0, i32 8
  %507 = load i16, i16* %506, align 2
  %508 = call i8* @fons__maxi(i8* %504, i16 signext %507)
  %509 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %510 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %509, i32 0, i32 1
  %511 = load i8**, i8*** %510, align 8
  %512 = getelementptr inbounds i8*, i8** %511, i64 3
  store i8* %508, i8** %512, align 8
  %513 = load %struct.TYPE_12__*, %struct.TYPE_12__** %27, align 8
  store %struct.TYPE_12__* %513, %struct.TYPE_12__** %6, align 8
  br label %514

514:                                              ; preds = %458, %222, %165, %106, %42
  %515 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  ret %struct.TYPE_12__* %515
}

declare dso_local i32 @fons__hashint(i32) #1

declare dso_local float @fons__tt_getPixelHeightScale(i32*, float) #1

declare dso_local i32 @fons__tt_getGlyphIndex(i32*, i32) #1

declare dso_local i32 @fons__tt_buildGlyphBitmap(i32*, i32, float, float, i32*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @fons__atlasAddRect(i32, i32, i32, i32*, i32*) #1

declare dso_local %struct.TYPE_12__* @fons__allocGlyph(%struct.TYPE_13__*) #1

declare dso_local i32 @fons__tt_renderGlyphBitmap(i32*, i8*, i32, i32, i32, float, float, i32) #1

declare dso_local i32 @fons__blur(%struct.TYPE_14__*, i8*, i32, i32, i64, i16 signext) #1

declare dso_local i8* @fons__mini(i8*, i64) #1

declare dso_local i8* @fons__maxi(i8*, i16 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
