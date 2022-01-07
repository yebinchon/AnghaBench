; ModuleID = '/home/carl/AnghaBench/openpilot/phonelibs/nanovg/extr_fontstash.h_fonsTextBounds.c'
source_filename = "/home/carl/AnghaBench/openpilot/phonelibs/nanovg/extr_fontstash.h_fonsTextBounds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { i64, %struct.TYPE_19__, %struct.TYPE_23__** }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_23__ = type { i32, i32* }
%struct.TYPE_20__ = type { float, i64, i32, i32, i64 }
%struct.TYPE_21__ = type { float, float, float, float }
%struct.TYPE_22__ = type { i32 }

@FONS_ZERO_TOPLEFT = common dso_local global i32 0, align 4
@FONS_ALIGN_LEFT = common dso_local global i32 0, align 4
@FONS_ALIGN_RIGHT = common dso_local global i32 0, align 4
@FONS_ALIGN_CENTER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float @fonsTextBounds(%struct.TYPE_24__* %0, float %1, float %2, i8* %3, i8* %4, float* %5) #0 {
  %7 = alloca float, align 4
  %8 = alloca %struct.TYPE_24__*, align 8
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca float*, align 8
  %14 = alloca %struct.TYPE_20__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_21__, align 4
  %18 = alloca %struct.TYPE_22__*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i16, align 2
  %21 = alloca i16, align 2
  %22 = alloca float, align 4
  %23 = alloca %struct.TYPE_23__*, align 8
  %24 = alloca float, align 4
  %25 = alloca float, align 4
  %26 = alloca float, align 4
  %27 = alloca float, align 4
  %28 = alloca float, align 4
  %29 = alloca float, align 4
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %8, align 8
  store float %1, float* %9, align 4
  store float %2, float* %10, align 4
  store i8* %3, i8** %11, align 8
  store i8* %4, i8** %12, align 8
  store float* %5, float** %13, align 8
  %30 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %31 = call %struct.TYPE_20__* @fons__getState(%struct.TYPE_24__* %30)
  store %struct.TYPE_20__* %31, %struct.TYPE_20__** %14, align 8
  store i32 0, i32* %16, align 4
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %18, align 8
  store i32 -1, i32* %19, align 4
  %32 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %33 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %32, i32 0, i32 0
  %34 = load float, float* %33, align 8
  %35 = fmul float %34, 1.000000e+01
  %36 = fptosi float %35 to i16
  store i16 %36, i16* %20, align 2
  %37 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %38 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %37, i32 0, i32 4
  %39 = load i64, i64* %38, align 8
  %40 = trunc i64 %39 to i16
  store i16 %40, i16* %21, align 2
  %41 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %42 = icmp eq %struct.TYPE_24__* %41, null
  br i1 %42, label %43, label %44

43:                                               ; preds = %6
  store float 0.000000e+00, float* %7, align 4
  br label %262

44:                                               ; preds = %6
  %45 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %46 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp ult i64 %47, 0
  br i1 %48, label %57, label %49

49:                                               ; preds = %44
  %50 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %51 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp uge i64 %52, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %49, %44
  store float 0.000000e+00, float* %7, align 4
  br label %262

58:                                               ; preds = %49
  %59 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %59, i32 0, i32 2
  %61 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %60, align 8
  %62 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %63 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %61, i64 %64
  %66 = load %struct.TYPE_23__*, %struct.TYPE_23__** %65, align 8
  store %struct.TYPE_23__* %66, %struct.TYPE_23__** %23, align 8
  %67 = load %struct.TYPE_23__*, %struct.TYPE_23__** %23, align 8
  %68 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %67, i32 0, i32 1
  %69 = load i32*, i32** %68, align 8
  %70 = icmp eq i32* %69, null
  br i1 %70, label %71, label %72

71:                                               ; preds = %58
  store float 0.000000e+00, float* %7, align 4
  br label %262

72:                                               ; preds = %58
  %73 = load %struct.TYPE_23__*, %struct.TYPE_23__** %23, align 8
  %74 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %73, i32 0, i32 0
  %75 = load i16, i16* %20, align 2
  %76 = sitofp i16 %75 to float
  %77 = fdiv float %76, 1.000000e+01
  %78 = call float @fons__tt_getPixelHeightScale(i32* %74, float %77)
  store float %78, float* %22, align 4
  %79 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %80 = load %struct.TYPE_23__*, %struct.TYPE_23__** %23, align 8
  %81 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %82 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = load i16, i16* %20, align 2
  %85 = call i64 @fons__getVertAlign(%struct.TYPE_24__* %79, %struct.TYPE_23__* %80, i32 %83, i16 signext %84)
  %86 = sitofp i64 %85 to float
  %87 = load float, float* %10, align 4
  %88 = fadd float %87, %86
  store float %88, float* %10, align 4
  %89 = load float, float* %9, align 4
  store float %89, float* %28, align 4
  store float %89, float* %26, align 4
  %90 = load float, float* %10, align 4
  store float %90, float* %29, align 4
  store float %90, float* %27, align 4
  %91 = load float, float* %9, align 4
  store float %91, float* %24, align 4
  %92 = load i8*, i8** %12, align 8
  %93 = icmp eq i8* %92, null
  br i1 %93, label %94, label %100

94:                                               ; preds = %72
  %95 = load i8*, i8** %11, align 8
  %96 = load i8*, i8** %11, align 8
  %97 = call i32 @strlen(i8* %96)
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i8, i8* %95, i64 %98
  store i8* %99, i8** %12, align 8
  br label %100

100:                                              ; preds = %94, %72
  br label %101

101:                                              ; preds = %198, %100
  %102 = load i8*, i8** %11, align 8
  %103 = load i8*, i8** %12, align 8
  %104 = icmp ne i8* %102, %103
  br i1 %104, label %105, label %201

105:                                              ; preds = %101
  %106 = load i8*, i8** %11, align 8
  %107 = load i8, i8* %106, align 1
  %108 = call i64 @fons__decutf8(i32* %16, i32* %15, i8 zeroext %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %105
  br label %198

111:                                              ; preds = %105
  %112 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %113 = load %struct.TYPE_23__*, %struct.TYPE_23__** %23, align 8
  %114 = load i32, i32* %15, align 4
  %115 = load i16, i16* %20, align 2
  %116 = load i16, i16* %21, align 2
  %117 = call %struct.TYPE_22__* @fons__getGlyph(%struct.TYPE_24__* %112, %struct.TYPE_23__* %113, i32 %114, i16 signext %115, i16 signext %116)
  store %struct.TYPE_22__* %117, %struct.TYPE_22__** %18, align 8
  %118 = load %struct.TYPE_22__*, %struct.TYPE_22__** %18, align 8
  %119 = icmp ne %struct.TYPE_22__* %118, null
  br i1 %119, label %120, label %188

120:                                              ; preds = %111
  %121 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %122 = load %struct.TYPE_23__*, %struct.TYPE_23__** %23, align 8
  %123 = load i32, i32* %19, align 4
  %124 = load %struct.TYPE_22__*, %struct.TYPE_22__** %18, align 8
  %125 = load float, float* %22, align 4
  %126 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %127 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %126, i32 0, i32 3
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @fons__getQuad(%struct.TYPE_24__* %121, %struct.TYPE_23__* %122, i32 %123, %struct.TYPE_22__* %124, float %125, i32 %128, float* %9, float* %10, %struct.TYPE_21__* %17)
  %130 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %17, i32 0, i32 0
  %131 = load float, float* %130, align 4
  %132 = load float, float* %26, align 4
  %133 = fcmp olt float %131, %132
  br i1 %133, label %134, label %137

134:                                              ; preds = %120
  %135 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %17, i32 0, i32 0
  %136 = load float, float* %135, align 4
  store float %136, float* %26, align 4
  br label %137

137:                                              ; preds = %134, %120
  %138 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %17, i32 0, i32 1
  %139 = load float, float* %138, align 4
  %140 = load float, float* %28, align 4
  %141 = fcmp ogt float %139, %140
  br i1 %141, label %142, label %145

142:                                              ; preds = %137
  %143 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %17, i32 0, i32 1
  %144 = load float, float* %143, align 4
  store float %144, float* %28, align 4
  br label %145

145:                                              ; preds = %142, %137
  %146 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %147 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %146, i32 0, i32 1
  %148 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = load i32, i32* @FONS_ZERO_TOPLEFT, align 4
  %151 = and i32 %149, %150
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %170

153:                                              ; preds = %145
  %154 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %17, i32 0, i32 2
  %155 = load float, float* %154, align 4
  %156 = load float, float* %27, align 4
  %157 = fcmp olt float %155, %156
  br i1 %157, label %158, label %161

158:                                              ; preds = %153
  %159 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %17, i32 0, i32 2
  %160 = load float, float* %159, align 4
  store float %160, float* %27, align 4
  br label %161

161:                                              ; preds = %158, %153
  %162 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %17, i32 0, i32 3
  %163 = load float, float* %162, align 4
  %164 = load float, float* %29, align 4
  %165 = fcmp ogt float %163, %164
  br i1 %165, label %166, label %169

166:                                              ; preds = %161
  %167 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %17, i32 0, i32 3
  %168 = load float, float* %167, align 4
  store float %168, float* %29, align 4
  br label %169

169:                                              ; preds = %166, %161
  br label %187

170:                                              ; preds = %145
  %171 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %17, i32 0, i32 3
  %172 = load float, float* %171, align 4
  %173 = load float, float* %27, align 4
  %174 = fcmp olt float %172, %173
  br i1 %174, label %175, label %178

175:                                              ; preds = %170
  %176 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %17, i32 0, i32 3
  %177 = load float, float* %176, align 4
  store float %177, float* %27, align 4
  br label %178

178:                                              ; preds = %175, %170
  %179 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %17, i32 0, i32 2
  %180 = load float, float* %179, align 4
  %181 = load float, float* %29, align 4
  %182 = fcmp ogt float %180, %181
  br i1 %182, label %183, label %186

183:                                              ; preds = %178
  %184 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %17, i32 0, i32 2
  %185 = load float, float* %184, align 4
  store float %185, float* %29, align 4
  br label %186

186:                                              ; preds = %183, %178
  br label %187

187:                                              ; preds = %186, %169
  br label %188

188:                                              ; preds = %187, %111
  %189 = load %struct.TYPE_22__*, %struct.TYPE_22__** %18, align 8
  %190 = icmp ne %struct.TYPE_22__* %189, null
  br i1 %190, label %191, label %195

191:                                              ; preds = %188
  %192 = load %struct.TYPE_22__*, %struct.TYPE_22__** %18, align 8
  %193 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 4
  br label %196

195:                                              ; preds = %188
  br label %196

196:                                              ; preds = %195, %191
  %197 = phi i32 [ %194, %191 ], [ -1, %195 ]
  store i32 %197, i32* %19, align 4
  br label %198

198:                                              ; preds = %196, %110
  %199 = load i8*, i8** %11, align 8
  %200 = getelementptr inbounds i8, i8* %199, i32 1
  store i8* %200, i8** %11, align 8
  br label %101

201:                                              ; preds = %101
  %202 = load float, float* %9, align 4
  %203 = load float, float* %24, align 4
  %204 = fsub float %202, %203
  store float %204, float* %25, align 4
  %205 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %206 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %205, i32 0, i32 2
  %207 = load i32, i32* %206, align 8
  %208 = load i32, i32* @FONS_ALIGN_LEFT, align 4
  %209 = and i32 %207, %208
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %212

211:                                              ; preds = %201
  br label %244

212:                                              ; preds = %201
  %213 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %214 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %213, i32 0, i32 2
  %215 = load i32, i32* %214, align 8
  %216 = load i32, i32* @FONS_ALIGN_RIGHT, align 4
  %217 = and i32 %215, %216
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %226

219:                                              ; preds = %212
  %220 = load float, float* %25, align 4
  %221 = load float, float* %26, align 4
  %222 = fsub float %221, %220
  store float %222, float* %26, align 4
  %223 = load float, float* %25, align 4
  %224 = load float, float* %28, align 4
  %225 = fsub float %224, %223
  store float %225, float* %28, align 4
  br label %243

226:                                              ; preds = %212
  %227 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %228 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %227, i32 0, i32 2
  %229 = load i32, i32* %228, align 8
  %230 = load i32, i32* @FONS_ALIGN_CENTER, align 4
  %231 = and i32 %229, %230
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %242

233:                                              ; preds = %226
  %234 = load float, float* %25, align 4
  %235 = fmul float %234, 5.000000e-01
  %236 = load float, float* %26, align 4
  %237 = fsub float %236, %235
  store float %237, float* %26, align 4
  %238 = load float, float* %25, align 4
  %239 = fmul float %238, 5.000000e-01
  %240 = load float, float* %28, align 4
  %241 = fsub float %240, %239
  store float %241, float* %28, align 4
  br label %242

242:                                              ; preds = %233, %226
  br label %243

243:                                              ; preds = %242, %219
  br label %244

244:                                              ; preds = %243, %211
  %245 = load float*, float** %13, align 8
  %246 = icmp ne float* %245, null
  br i1 %246, label %247, label %260

247:                                              ; preds = %244
  %248 = load float, float* %26, align 4
  %249 = load float*, float** %13, align 8
  %250 = getelementptr inbounds float, float* %249, i64 0
  store float %248, float* %250, align 4
  %251 = load float, float* %27, align 4
  %252 = load float*, float** %13, align 8
  %253 = getelementptr inbounds float, float* %252, i64 1
  store float %251, float* %253, align 4
  %254 = load float, float* %28, align 4
  %255 = load float*, float** %13, align 8
  %256 = getelementptr inbounds float, float* %255, i64 2
  store float %254, float* %256, align 4
  %257 = load float, float* %29, align 4
  %258 = load float*, float** %13, align 8
  %259 = getelementptr inbounds float, float* %258, i64 3
  store float %257, float* %259, align 4
  br label %260

260:                                              ; preds = %247, %244
  %261 = load float, float* %25, align 4
  store float %261, float* %7, align 4
  br label %262

262:                                              ; preds = %260, %71, %57, %43
  %263 = load float, float* %7, align 4
  ret float %263
}

declare dso_local %struct.TYPE_20__* @fons__getState(%struct.TYPE_24__*) #1

declare dso_local float @fons__tt_getPixelHeightScale(i32*, float) #1

declare dso_local i64 @fons__getVertAlign(%struct.TYPE_24__*, %struct.TYPE_23__*, i32, i16 signext) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @fons__decutf8(i32*, i32*, i8 zeroext) #1

declare dso_local %struct.TYPE_22__* @fons__getGlyph(%struct.TYPE_24__*, %struct.TYPE_23__*, i32, i16 signext, i16 signext) #1

declare dso_local i32 @fons__getQuad(%struct.TYPE_24__*, %struct.TYPE_23__*, i32, %struct.TYPE_22__*, float, i32, float*, float*, %struct.TYPE_21__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
