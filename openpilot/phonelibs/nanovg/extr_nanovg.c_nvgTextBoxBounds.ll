; ModuleID = '/home/carl/AnghaBench/openpilot/phonelibs/nanovg/extr_nanovg.c_nvgTextBoxBounds.c'
source_filename = "/home/carl/AnghaBench/openpilot/phonelibs/nanovg/extr_nanovg.c_nvgTextBoxBounds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { float, i32 }
%struct.TYPE_12__ = type { i32, i64, float, float, float, float }
%struct.TYPE_11__ = type { float, float, float, i8* }

@NVG_ALIGN_LEFT = common dso_local global i32 0, align 4
@NVG_ALIGN_CENTER = common dso_local global i32 0, align 4
@NVG_ALIGN_RIGHT = common dso_local global i32 0, align 4
@NVG_ALIGN_TOP = common dso_local global i32 0, align 4
@NVG_ALIGN_MIDDLE = common dso_local global i32 0, align 4
@NVG_ALIGN_BOTTOM = common dso_local global i32 0, align 4
@NVG_ALIGN_BASELINE = common dso_local global i32 0, align 4
@FONS_INVALID = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nvgTextBoxBounds(%struct.TYPE_13__* %0, float %1, float %2, float %3, i8* %4, i8* %5, float* %6) #0 {
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca float*, align 8
  %15 = alloca %struct.TYPE_12__*, align 8
  %16 = alloca [2 x %struct.TYPE_11__], align 16
  %17 = alloca float, align 4
  %18 = alloca float, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca float, align 4
  %25 = alloca float, align 4
  %26 = alloca float, align 4
  %27 = alloca float, align 4
  %28 = alloca float, align 4
  %29 = alloca float, align 4
  %30 = alloca float, align 4
  %31 = alloca %struct.TYPE_11__*, align 8
  %32 = alloca float, align 4
  %33 = alloca float, align 4
  %34 = alloca float, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %8, align 8
  store float %1, float* %9, align 4
  store float %2, float* %10, align 4
  store float %3, float* %11, align 4
  store i8* %4, i8** %12, align 8
  store i8* %5, i8** %13, align 8
  store float* %6, float** %14, align 8
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %36 = call %struct.TYPE_12__* @nvg__getState(%struct.TYPE_13__* %35)
  store %struct.TYPE_12__* %36, %struct.TYPE_12__** %15, align 8
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %38 = call float @nvg__getFontScale(%struct.TYPE_12__* %37)
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 0
  %41 = load float, float* %40, align 4
  %42 = fmul float %38, %41
  store float %42, float* %17, align 4
  %43 = load float, float* %17, align 4
  %44 = fdiv float 1.000000e+00, %43
  store float %44, float* %18, align 4
  store i32 0, i32* %19, align 4
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  store i32 %47, i32* %21, align 4
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @NVG_ALIGN_LEFT, align 4
  %52 = load i32, i32* @NVG_ALIGN_CENTER, align 4
  %53 = or i32 %51, %52
  %54 = load i32, i32* @NVG_ALIGN_RIGHT, align 4
  %55 = or i32 %53, %54
  %56 = and i32 %50, %55
  store i32 %56, i32* %22, align 4
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @NVG_ALIGN_TOP, align 4
  %61 = load i32, i32* @NVG_ALIGN_MIDDLE, align 4
  %62 = or i32 %60, %61
  %63 = load i32, i32* @NVG_ALIGN_BOTTOM, align 4
  %64 = or i32 %62, %63
  %65 = load i32, i32* @NVG_ALIGN_BASELINE, align 4
  %66 = or i32 %64, %65
  %67 = and i32 %59, %66
  store i32 %67, i32* %23, align 4
  store float 0.000000e+00, float* %24, align 4
  store float 0.000000e+00, float* %25, align 4
  store float 0.000000e+00, float* %26, align 4
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @FONS_INVALID, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %86

73:                                               ; preds = %7
  %74 = load float*, float** %14, align 8
  %75 = icmp ne float* %74, null
  br i1 %75, label %76, label %85

76:                                               ; preds = %73
  %77 = load float*, float** %14, align 8
  %78 = getelementptr inbounds float, float* %77, i64 3
  store float 0.000000e+00, float* %78, align 4
  %79 = load float*, float** %14, align 8
  %80 = getelementptr inbounds float, float* %79, i64 2
  store float 0.000000e+00, float* %80, align 4
  %81 = load float*, float** %14, align 8
  %82 = getelementptr inbounds float, float* %81, i64 1
  store float 0.000000e+00, float* %82, align 4
  %83 = load float*, float** %14, align 8
  %84 = getelementptr inbounds float, float* %83, i64 0
  store float 0.000000e+00, float* %84, align 4
  br label %85

85:                                               ; preds = %76, %73
  br label %262

86:                                               ; preds = %7
  %87 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %88 = call i32 @nvgTextMetrics(%struct.TYPE_13__* %87, i32* null, i32* null, float* %24)
  %89 = load i32, i32* @NVG_ALIGN_LEFT, align 4
  %90 = load i32, i32* %23, align 4
  %91 = or i32 %89, %90
  %92 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 0
  store i32 %91, i32* %93, align 8
  %94 = load float, float* %9, align 4
  store float %94, float* %29, align 4
  store float %94, float* %27, align 4
  %95 = load float, float* %10, align 4
  store float %95, float* %30, align 4
  store float %95, float* %28, align 4
  %96 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %97 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %100 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %99, i32 0, i32 2
  %101 = load float, float* %100, align 8
  %102 = load float, float* %17, align 4
  %103 = fmul float %101, %102
  %104 = call i32 @fonsSetSize(i32 %98, float %103)
  %105 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %106 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %109 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %108, i32 0, i32 3
  %110 = load float, float* %109, align 4
  %111 = load float, float* %17, align 4
  %112 = fmul float %110, %111
  %113 = call i32 @fonsSetSpacing(i32 %107, float %112)
  %114 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %115 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %118 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %117, i32 0, i32 4
  %119 = load float, float* %118, align 8
  %120 = load float, float* %17, align 4
  %121 = fmul float %119, %120
  %122 = call i32 @fonsSetBlur(i32 %116, float %121)
  %123 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %124 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %127 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = call i32 @fonsSetAlign(i32 %125, i32 %128)
  %130 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %131 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %134 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %133, i32 0, i32 1
  %135 = load i64, i64* %134, align 8
  %136 = call i32 @fonsSetFont(i32 %132, i64 %135)
  %137 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %138 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @fonsLineBounds(i32 %139, i32 0, float* %25, float* %26)
  %141 = load float, float* %18, align 4
  %142 = load float, float* %25, align 4
  %143 = fmul float %142, %141
  store float %143, float* %25, align 4
  %144 = load float, float* %18, align 4
  %145 = load float, float* %26, align 4
  %146 = fmul float %145, %144
  store float %146, float* %26, align 4
  br label %147

147:                                              ; preds = %236, %86
  %148 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %149 = load i8*, i8** %12, align 8
  %150 = load i8*, i8** %13, align 8
  %151 = load float, float* %11, align 4
  %152 = getelementptr inbounds [2 x %struct.TYPE_11__], [2 x %struct.TYPE_11__]* %16, i64 0, i64 0
  %153 = call i32 @nvgTextBreakLines(%struct.TYPE_13__* %148, i8* %149, i8* %150, float %151, %struct.TYPE_11__* %152, i32 2)
  store i32 %153, i32* %19, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %243

155:                                              ; preds = %147
  store i32 0, i32* %20, align 4
  br label %156

156:                                              ; preds = %233, %155
  %157 = load i32, i32* %20, align 4
  %158 = load i32, i32* %19, align 4
  %159 = icmp slt i32 %157, %158
  br i1 %159, label %160, label %236

160:                                              ; preds = %156
  %161 = load i32, i32* %20, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds [2 x %struct.TYPE_11__], [2 x %struct.TYPE_11__]* %16, i64 0, i64 %162
  store %struct.TYPE_11__* %163, %struct.TYPE_11__** %31, align 8
  store float 0.000000e+00, float* %34, align 4
  %164 = load i32, i32* %22, align 4
  %165 = load i32, i32* @NVG_ALIGN_LEFT, align 4
  %166 = and i32 %164, %165
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %169

168:                                              ; preds = %160
  store float 0.000000e+00, float* %34, align 4
  br label %195

169:                                              ; preds = %160
  %170 = load i32, i32* %22, align 4
  %171 = load i32, i32* @NVG_ALIGN_CENTER, align 4
  %172 = and i32 %170, %171
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %182

174:                                              ; preds = %169
  %175 = load float, float* %11, align 4
  %176 = fmul float %175, 5.000000e-01
  %177 = load %struct.TYPE_11__*, %struct.TYPE_11__** %31, align 8
  %178 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %177, i32 0, i32 0
  %179 = load float, float* %178, align 8
  %180 = fmul float %179, 5.000000e-01
  %181 = fsub float %176, %180
  store float %181, float* %34, align 4
  br label %194

182:                                              ; preds = %169
  %183 = load i32, i32* %22, align 4
  %184 = load i32, i32* @NVG_ALIGN_RIGHT, align 4
  %185 = and i32 %183, %184
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %193

187:                                              ; preds = %182
  %188 = load float, float* %11, align 4
  %189 = load %struct.TYPE_11__*, %struct.TYPE_11__** %31, align 8
  %190 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %189, i32 0, i32 0
  %191 = load float, float* %190, align 8
  %192 = fsub float %188, %191
  store float %192, float* %34, align 4
  br label %193

193:                                              ; preds = %187, %182
  br label %194

194:                                              ; preds = %193, %174
  br label %195

195:                                              ; preds = %194, %168
  %196 = load float, float* %9, align 4
  %197 = load %struct.TYPE_11__*, %struct.TYPE_11__** %31, align 8
  %198 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %197, i32 0, i32 1
  %199 = load float, float* %198, align 4
  %200 = fadd float %196, %199
  %201 = load float, float* %34, align 4
  %202 = fadd float %200, %201
  store float %202, float* %32, align 4
  %203 = load float, float* %9, align 4
  %204 = load %struct.TYPE_11__*, %struct.TYPE_11__** %31, align 8
  %205 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %204, i32 0, i32 2
  %206 = load float, float* %205, align 8
  %207 = fadd float %203, %206
  %208 = load float, float* %34, align 4
  %209 = fadd float %207, %208
  store float %209, float* %33, align 4
  %210 = load float, float* %27, align 4
  %211 = load float, float* %32, align 4
  %212 = call float @nvg__minf(float %210, float %211)
  store float %212, float* %27, align 4
  %213 = load float, float* %29, align 4
  %214 = load float, float* %33, align 4
  %215 = call float @nvg__maxf(float %213, float %214)
  store float %215, float* %29, align 4
  %216 = load float, float* %28, align 4
  %217 = load float, float* %10, align 4
  %218 = load float, float* %25, align 4
  %219 = fadd float %217, %218
  %220 = call float @nvg__minf(float %216, float %219)
  store float %220, float* %28, align 4
  %221 = load float, float* %30, align 4
  %222 = load float, float* %10, align 4
  %223 = load float, float* %26, align 4
  %224 = fadd float %222, %223
  %225 = call float @nvg__maxf(float %221, float %224)
  store float %225, float* %30, align 4
  %226 = load float, float* %24, align 4
  %227 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %228 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %227, i32 0, i32 5
  %229 = load float, float* %228, align 4
  %230 = fmul float %226, %229
  %231 = load float, float* %10, align 4
  %232 = fadd float %231, %230
  store float %232, float* %10, align 4
  br label %233

233:                                              ; preds = %195
  %234 = load i32, i32* %20, align 4
  %235 = add nsw i32 %234, 1
  store i32 %235, i32* %20, align 4
  br label %156

236:                                              ; preds = %156
  %237 = load i32, i32* %19, align 4
  %238 = sub nsw i32 %237, 1
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds [2 x %struct.TYPE_11__], [2 x %struct.TYPE_11__]* %16, i64 0, i64 %239
  %241 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %240, i32 0, i32 3
  %242 = load i8*, i8** %241, align 8
  store i8* %242, i8** %12, align 8
  br label %147

243:                                              ; preds = %147
  %244 = load i32, i32* %21, align 4
  %245 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %246 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %245, i32 0, i32 0
  store i32 %244, i32* %246, align 8
  %247 = load float*, float** %14, align 8
  %248 = icmp ne float* %247, null
  br i1 %248, label %249, label %262

249:                                              ; preds = %243
  %250 = load float, float* %27, align 4
  %251 = load float*, float** %14, align 8
  %252 = getelementptr inbounds float, float* %251, i64 0
  store float %250, float* %252, align 4
  %253 = load float, float* %28, align 4
  %254 = load float*, float** %14, align 8
  %255 = getelementptr inbounds float, float* %254, i64 1
  store float %253, float* %255, align 4
  %256 = load float, float* %29, align 4
  %257 = load float*, float** %14, align 8
  %258 = getelementptr inbounds float, float* %257, i64 2
  store float %256, float* %258, align 4
  %259 = load float, float* %30, align 4
  %260 = load float*, float** %14, align 8
  %261 = getelementptr inbounds float, float* %260, i64 3
  store float %259, float* %261, align 4
  br label %262

262:                                              ; preds = %85, %249, %243
  ret void
}

declare dso_local %struct.TYPE_12__* @nvg__getState(%struct.TYPE_13__*) #1

declare dso_local float @nvg__getFontScale(%struct.TYPE_12__*) #1

declare dso_local i32 @nvgTextMetrics(%struct.TYPE_13__*, i32*, i32*, float*) #1

declare dso_local i32 @fonsSetSize(i32, float) #1

declare dso_local i32 @fonsSetSpacing(i32, float) #1

declare dso_local i32 @fonsSetBlur(i32, float) #1

declare dso_local i32 @fonsSetAlign(i32, i32) #1

declare dso_local i32 @fonsSetFont(i32, i64) #1

declare dso_local i32 @fonsLineBounds(i32, i32, float*, float*) #1

declare dso_local i32 @nvgTextBreakLines(%struct.TYPE_13__*, i8*, i8*, float, %struct.TYPE_11__*, i32) #1

declare dso_local float @nvg__minf(float, float) #1

declare dso_local float @nvg__maxf(float, float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
