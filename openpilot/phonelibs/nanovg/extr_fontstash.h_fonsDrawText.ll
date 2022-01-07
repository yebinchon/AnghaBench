; ModuleID = '/home/carl/AnghaBench/openpilot/phonelibs/nanovg/extr_fontstash.h_fonsDrawText.c'
source_filename = "/home/carl/AnghaBench/openpilot/phonelibs/nanovg/extr_fontstash.h_fonsDrawText.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { i64, i64, %struct.TYPE_24__** }
%struct.TYPE_24__ = type { i32, i32* }
%struct.TYPE_21__ = type { float, i64, i32, i32, i32, i64 }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_22__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@FONS_ALIGN_LEFT = common dso_local global i32 0, align 4
@FONS_ALIGN_RIGHT = common dso_local global i32 0, align 4
@FONS_ALIGN_CENTER = common dso_local global i32 0, align 4
@FONS_VERTEX_COUNT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float @fonsDrawText(%struct.TYPE_25__* %0, float %1, float %2, i8* %3, i8* %4) #0 {
  %6 = alloca float, align 4
  %7 = alloca %struct.TYPE_25__*, align 8
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_21__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_23__*, align 8
  %16 = alloca %struct.TYPE_22__, align 4
  %17 = alloca i32, align 4
  %18 = alloca i16, align 2
  %19 = alloca i16, align 2
  %20 = alloca float, align 4
  %21 = alloca %struct.TYPE_24__*, align 8
  %22 = alloca float, align 4
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %7, align 8
  store float %1, float* %8, align 4
  store float %2, float* %9, align 4
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  %23 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %24 = call %struct.TYPE_21__* @fons__getState(%struct.TYPE_25__* %23)
  store %struct.TYPE_21__* %24, %struct.TYPE_21__** %12, align 8
  store i32 0, i32* %14, align 4
  store %struct.TYPE_23__* null, %struct.TYPE_23__** %15, align 8
  store i32 -1, i32* %17, align 4
  %25 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %26 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %25, i32 0, i32 0
  %27 = load float, float* %26, align 8
  %28 = fmul float %27, 1.000000e+01
  %29 = fptosi float %28 to i16
  store i16 %29, i16* %18, align 2
  %30 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %31 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %30, i32 0, i32 5
  %32 = load i64, i64* %31, align 8
  %33 = trunc i64 %32 to i16
  store i16 %33, i16* %19, align 2
  %34 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %35 = icmp eq %struct.TYPE_25__* %34, null
  br i1 %35, label %36, label %38

36:                                               ; preds = %5
  %37 = load float, float* %8, align 4
  store float %37, float* %6, align 4
  br label %273

38:                                               ; preds = %5
  %39 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %40 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp ult i64 %41, 0
  br i1 %42, label %51, label %43

43:                                               ; preds = %38
  %44 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %45 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp uge i64 %46, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %43, %38
  %52 = load float, float* %8, align 4
  store float %52, float* %6, align 4
  br label %273

53:                                               ; preds = %43
  %54 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %54, i32 0, i32 2
  %56 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %55, align 8
  %57 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %58 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_24__*, %struct.TYPE_24__** %56, i64 %59
  %61 = load %struct.TYPE_24__*, %struct.TYPE_24__** %60, align 8
  store %struct.TYPE_24__* %61, %struct.TYPE_24__** %21, align 8
  %62 = load %struct.TYPE_24__*, %struct.TYPE_24__** %21, align 8
  %63 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %62, i32 0, i32 1
  %64 = load i32*, i32** %63, align 8
  %65 = icmp eq i32* %64, null
  br i1 %65, label %66, label %68

66:                                               ; preds = %53
  %67 = load float, float* %8, align 4
  store float %67, float* %6, align 4
  br label %273

68:                                               ; preds = %53
  %69 = load %struct.TYPE_24__*, %struct.TYPE_24__** %21, align 8
  %70 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %69, i32 0, i32 0
  %71 = load i16, i16* %18, align 2
  %72 = sitofp i16 %71 to float
  %73 = fdiv float %72, 1.000000e+01
  %74 = call float @fons__tt_getPixelHeightScale(i32* %70, float %73)
  store float %74, float* %20, align 4
  %75 = load i8*, i8** %11, align 8
  %76 = icmp eq i8* %75, null
  br i1 %76, label %77, label %83

77:                                               ; preds = %68
  %78 = load i8*, i8** %10, align 8
  %79 = load i8*, i8** %10, align 8
  %80 = call i32 @strlen(i8* %79)
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i8, i8* %78, i64 %81
  store i8* %82, i8** %11, align 8
  br label %83

83:                                               ; preds = %77, %68
  %84 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %85 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @FONS_ALIGN_LEFT, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %83
  br label %128

91:                                               ; preds = %83
  %92 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %93 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @FONS_ALIGN_RIGHT, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %108

98:                                               ; preds = %91
  %99 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %100 = load float, float* %8, align 4
  %101 = load float, float* %9, align 4
  %102 = load i8*, i8** %10, align 8
  %103 = load i8*, i8** %11, align 8
  %104 = call float @fonsTextBounds(%struct.TYPE_25__* %99, float %100, float %101, i8* %102, i8* %103, i32* null)
  store float %104, float* %22, align 4
  %105 = load float, float* %22, align 4
  %106 = load float, float* %8, align 4
  %107 = fsub float %106, %105
  store float %107, float* %8, align 4
  br label %127

108:                                              ; preds = %91
  %109 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %110 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* @FONS_ALIGN_CENTER, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %126

115:                                              ; preds = %108
  %116 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %117 = load float, float* %8, align 4
  %118 = load float, float* %9, align 4
  %119 = load i8*, i8** %10, align 8
  %120 = load i8*, i8** %11, align 8
  %121 = call float @fonsTextBounds(%struct.TYPE_25__* %116, float %117, float %118, i8* %119, i8* %120, i32* null)
  store float %121, float* %22, align 4
  %122 = load float, float* %22, align 4
  %123 = fmul float %122, 5.000000e-01
  %124 = load float, float* %8, align 4
  %125 = fsub float %124, %123
  store float %125, float* %8, align 4
  br label %126

126:                                              ; preds = %115, %108
  br label %127

127:                                              ; preds = %126, %98
  br label %128

128:                                              ; preds = %127, %90
  %129 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %130 = load %struct.TYPE_24__*, %struct.TYPE_24__** %21, align 8
  %131 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %132 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 8
  %134 = load i16, i16* %18, align 2
  %135 = call i64 @fons__getVertAlign(%struct.TYPE_25__* %129, %struct.TYPE_24__* %130, i32 %133, i16 signext %134)
  %136 = sitofp i64 %135 to float
  %137 = load float, float* %9, align 4
  %138 = fadd float %137, %136
  store float %138, float* %9, align 4
  br label %139

139:                                              ; preds = %266, %128
  %140 = load i8*, i8** %10, align 8
  %141 = load i8*, i8** %11, align 8
  %142 = icmp ne i8* %140, %141
  br i1 %142, label %143, label %269

143:                                              ; preds = %139
  %144 = load i8*, i8** %10, align 8
  %145 = load i8, i8* %144, align 1
  %146 = call i64 @fons__decutf8(i32* %14, i32* %13, i8 zeroext %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %143
  br label %266

149:                                              ; preds = %143
  %150 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %151 = load %struct.TYPE_24__*, %struct.TYPE_24__** %21, align 8
  %152 = load i32, i32* %13, align 4
  %153 = load i16, i16* %18, align 2
  %154 = load i16, i16* %19, align 2
  %155 = call %struct.TYPE_23__* @fons__getGlyph(%struct.TYPE_25__* %150, %struct.TYPE_24__* %151, i32 %152, i16 signext %153, i16 signext %154)
  store %struct.TYPE_23__* %155, %struct.TYPE_23__** %15, align 8
  %156 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %157 = icmp ne %struct.TYPE_23__* %156, null
  br i1 %157, label %158, label %256

158:                                              ; preds = %149
  %159 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %160 = load %struct.TYPE_24__*, %struct.TYPE_24__** %21, align 8
  %161 = load i32, i32* %17, align 4
  %162 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %163 = load float, float* %20, align 4
  %164 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %165 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %164, i32 0, i32 4
  %166 = load i32, i32* %165, align 8
  %167 = call i32 @fons__getQuad(%struct.TYPE_25__* %159, %struct.TYPE_24__* %160, i32 %161, %struct.TYPE_23__* %162, float %163, i32 %166, float* %8, float* %9, %struct.TYPE_22__* %16)
  %168 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %169 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %168, i32 0, i32 1
  %170 = load i64, i64* %169, align 8
  %171 = add nsw i64 %170, 6
  %172 = load i64, i64* @FONS_VERTEX_COUNT, align 8
  %173 = icmp sgt i64 %171, %172
  br i1 %173, label %174, label %177

174:                                              ; preds = %158
  %175 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %176 = call i32 @fons__flush(%struct.TYPE_25__* %175)
  br label %177

177:                                              ; preds = %174, %158
  %178 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %179 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %16, i32 0, i32 5
  %180 = load i32, i32* %179, align 4
  %181 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %16, i32 0, i32 7
  %182 = load i32, i32* %181, align 4
  %183 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %16, i32 0, i32 4
  %184 = load i32, i32* %183, align 4
  %185 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %16, i32 0, i32 6
  %186 = load i32, i32* %185, align 4
  %187 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %188 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %187, i32 0, i32 3
  %189 = load i32, i32* %188, align 4
  %190 = call i32 @fons__vertex(%struct.TYPE_25__* %178, i32 %180, i32 %182, i32 %184, i32 %186, i32 %189)
  %191 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %192 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %16, i32 0, i32 3
  %193 = load i32, i32* %192, align 4
  %194 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %16, i32 0, i32 2
  %195 = load i32, i32* %194, align 4
  %196 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %16, i32 0, i32 1
  %197 = load i32, i32* %196, align 4
  %198 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %16, i32 0, i32 0
  %199 = load i32, i32* %198, align 4
  %200 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %201 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %200, i32 0, i32 3
  %202 = load i32, i32* %201, align 4
  %203 = call i32 @fons__vertex(%struct.TYPE_25__* %191, i32 %193, i32 %195, i32 %197, i32 %199, i32 %202)
  %204 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %205 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %16, i32 0, i32 3
  %206 = load i32, i32* %205, align 4
  %207 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %16, i32 0, i32 7
  %208 = load i32, i32* %207, align 4
  %209 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %16, i32 0, i32 1
  %210 = load i32, i32* %209, align 4
  %211 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %16, i32 0, i32 6
  %212 = load i32, i32* %211, align 4
  %213 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %214 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %213, i32 0, i32 3
  %215 = load i32, i32* %214, align 4
  %216 = call i32 @fons__vertex(%struct.TYPE_25__* %204, i32 %206, i32 %208, i32 %210, i32 %212, i32 %215)
  %217 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %218 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %16, i32 0, i32 5
  %219 = load i32, i32* %218, align 4
  %220 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %16, i32 0, i32 7
  %221 = load i32, i32* %220, align 4
  %222 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %16, i32 0, i32 4
  %223 = load i32, i32* %222, align 4
  %224 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %16, i32 0, i32 6
  %225 = load i32, i32* %224, align 4
  %226 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %227 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %226, i32 0, i32 3
  %228 = load i32, i32* %227, align 4
  %229 = call i32 @fons__vertex(%struct.TYPE_25__* %217, i32 %219, i32 %221, i32 %223, i32 %225, i32 %228)
  %230 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %231 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %16, i32 0, i32 5
  %232 = load i32, i32* %231, align 4
  %233 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %16, i32 0, i32 2
  %234 = load i32, i32* %233, align 4
  %235 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %16, i32 0, i32 4
  %236 = load i32, i32* %235, align 4
  %237 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %16, i32 0, i32 0
  %238 = load i32, i32* %237, align 4
  %239 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %240 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %239, i32 0, i32 3
  %241 = load i32, i32* %240, align 4
  %242 = call i32 @fons__vertex(%struct.TYPE_25__* %230, i32 %232, i32 %234, i32 %236, i32 %238, i32 %241)
  %243 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %244 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %16, i32 0, i32 3
  %245 = load i32, i32* %244, align 4
  %246 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %16, i32 0, i32 2
  %247 = load i32, i32* %246, align 4
  %248 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %16, i32 0, i32 1
  %249 = load i32, i32* %248, align 4
  %250 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %16, i32 0, i32 0
  %251 = load i32, i32* %250, align 4
  %252 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %253 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %252, i32 0, i32 3
  %254 = load i32, i32* %253, align 4
  %255 = call i32 @fons__vertex(%struct.TYPE_25__* %243, i32 %245, i32 %247, i32 %249, i32 %251, i32 %254)
  br label %256

256:                                              ; preds = %177, %149
  %257 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %258 = icmp ne %struct.TYPE_23__* %257, null
  br i1 %258, label %259, label %263

259:                                              ; preds = %256
  %260 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %261 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %260, i32 0, i32 0
  %262 = load i32, i32* %261, align 4
  br label %264

263:                                              ; preds = %256
  br label %264

264:                                              ; preds = %263, %259
  %265 = phi i32 [ %262, %259 ], [ -1, %263 ]
  store i32 %265, i32* %17, align 4
  br label %266

266:                                              ; preds = %264, %148
  %267 = load i8*, i8** %10, align 8
  %268 = getelementptr inbounds i8, i8* %267, i32 1
  store i8* %268, i8** %10, align 8
  br label %139

269:                                              ; preds = %139
  %270 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %271 = call i32 @fons__flush(%struct.TYPE_25__* %270)
  %272 = load float, float* %8, align 4
  store float %272, float* %6, align 4
  br label %273

273:                                              ; preds = %269, %66, %51, %36
  %274 = load float, float* %6, align 4
  ret float %274
}

declare dso_local %struct.TYPE_21__* @fons__getState(%struct.TYPE_25__*) #1

declare dso_local float @fons__tt_getPixelHeightScale(i32*, float) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local float @fonsTextBounds(%struct.TYPE_25__*, float, float, i8*, i8*, i32*) #1

declare dso_local i64 @fons__getVertAlign(%struct.TYPE_25__*, %struct.TYPE_24__*, i32, i16 signext) #1

declare dso_local i64 @fons__decutf8(i32*, i32*, i8 zeroext) #1

declare dso_local %struct.TYPE_23__* @fons__getGlyph(%struct.TYPE_25__*, %struct.TYPE_24__*, i32, i16 signext, i16 signext) #1

declare dso_local i32 @fons__getQuad(%struct.TYPE_25__*, %struct.TYPE_24__*, i32, %struct.TYPE_23__*, float, i32, float*, float*, %struct.TYPE_22__*) #1

declare dso_local i32 @fons__flush(%struct.TYPE_25__*) #1

declare dso_local i32 @fons__vertex(%struct.TYPE_25__*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
