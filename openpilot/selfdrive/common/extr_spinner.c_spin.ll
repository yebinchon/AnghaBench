; ModuleID = '/home/carl/AnghaBench/openpilot/selfdrive/common/extr_spinner.c_spin.c'
source_filename = "/home/carl/AnghaBench/openpilot/selfdrive/common/extr_spinner.c_spin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SPINTEXT_LENGTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"spinner\00", align 1
@NVG_ANTIALIAS = common dso_local global i32 0, align 4
@NVG_STENCIL_STROKES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"Bold\00", align 1
@_binary_opensans_semibold_ttf_start = common dso_local global i64 0, align 8
@_binary_opensans_semibold_ttf_end = common dso_local global i64 0, align 8
@_binary_img_spinner_track_png_start = common dso_local global i64 0, align 8
@_binary_img_spinner_track_png_end = common dso_local global i64 0, align 8
@_binary_img_spinner_comma_png_start = common dso_local global i64 0, align 8
@_binary_img_spinner_comma_png_end = common dso_local global i64 0, align 8
@stdin = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@GL_STENCIL_BUFFER_BIT = common dso_local global i32 0, align 4
@GL_COLOR_BUFFER_BIT = common dso_local global i32 0, align 4
@GL_BLEND = common dso_local global i32 0, align 4
@GL_SRC_ALPHA = common dso_local global i32 0, align 4
@GL_ONE_MINUS_SRC_ALPHA = common dso_local global i32 0, align 4
@M_PI = common dso_local global double 0.000000e+00, align 8
@NVG_ALIGN_CENTER = common dso_local global i32 0, align 4
@NVG_ALIGN_TOP = common dso_local global i32 0, align 4
@GL_NO_ERROR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @spin(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca float, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i64, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  store i32 0, i32* %6, align 4
  store float 0.000000e+00, float* %7, align 4
  %38 = load i32, i32* @SPINTEXT_LENGTH, align 4
  %39 = zext i32 %38 to i64
  %40 = call i8* @llvm.stacksave()
  store i8* %40, i8** %8, align 8
  %41 = alloca i8, i64 %39, align 16
  store i64 %39, i64* %9, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 0
  store i8 0, i8* %42, align 16
  store i8* null, i8** %10, align 8
  %43 = load i32, i32* %3, align 4
  %44 = icmp sge i32 %43, 2
  br i1 %44, label %45, label %51

45:                                               ; preds = %2
  %46 = load i8**, i8*** %4, align 8
  %47 = getelementptr inbounds i8*, i8** %46, i64 1
  %48 = load i8*, i8** %47, align 8
  %49 = load i32, i32* @SPINTEXT_LENGTH, align 4
  %50 = call i32 @strncpy(i8* %41, i8* %48, i32 %49)
  br label %51

51:                                               ; preds = %45, %2
  %52 = call i32* @framebuffer_init(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 4096, i32 0, i32* %13, i32* %14, i32* %11, i32* %12)
  store i32* %52, i32** %15, align 8
  %53 = load i32*, i32** %15, align 8
  %54 = ptrtoint i32* %53 to i32
  %55 = call i32 @assert(i32 %54)
  %56 = load i32, i32* @NVG_ANTIALIAS, align 4
  %57 = load i32, i32* @NVG_STENCIL_STROKES, align 4
  %58 = or i32 %56, %57
  %59 = call i32* @nvgCreateGLES3(i32 %58)
  store i32* %59, i32** %16, align 8
  %60 = load i32*, i32** %16, align 8
  %61 = ptrtoint i32* %60 to i32
  %62 = call i32 @assert(i32 %61)
  %63 = load i32*, i32** %16, align 8
  %64 = load i64, i64* @_binary_opensans_semibold_ttf_start, align 8
  %65 = inttoptr i64 %64 to i8*
  %66 = load i64, i64* @_binary_opensans_semibold_ttf_end, align 8
  %67 = load i64, i64* @_binary_opensans_semibold_ttf_start, align 8
  %68 = sub nsw i64 %66, %67
  %69 = call i32 @nvgCreateFontMem(i32* %63, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %65, i64 %68, i32 0)
  store i32 %69, i32* %17, align 4
  %70 = load i32, i32* %17, align 4
  %71 = icmp sge i32 %70, 0
  %72 = zext i1 %71 to i32
  %73 = call i32 @assert(i32 %72)
  %74 = load i32*, i32** %16, align 8
  %75 = load i64, i64* @_binary_img_spinner_track_png_start, align 8
  %76 = inttoptr i64 %75 to i8*
  %77 = load i64, i64* @_binary_img_spinner_track_png_end, align 8
  %78 = load i64, i64* @_binary_img_spinner_track_png_start, align 8
  %79 = sub nsw i64 %77, %78
  %80 = call i32 @nvgCreateImageMem(i32* %74, i32 0, i8* %76, i64 %79)
  store i32 %80, i32* %18, align 4
  %81 = load i32, i32* %18, align 4
  %82 = icmp sge i32 %81, 0
  %83 = zext i1 %82 to i32
  %84 = call i32 @assert(i32 %83)
  store i32 360, i32* %19, align 4
  %85 = load i32, i32* %11, align 4
  %86 = sdiv i32 %85, 2
  %87 = load i32, i32* %19, align 4
  %88 = sdiv i32 %87, 2
  %89 = sub nsw i32 %86, %88
  store i32 %89, i32* %20, align 4
  store i32 260, i32* %21, align 4
  %90 = load i32, i32* %11, align 4
  %91 = sdiv i32 %90, 2
  store i32 %91, i32* %22, align 4
  %92 = load i32, i32* %12, align 4
  %93 = sdiv i32 %92, 2
  %94 = sub nsw i32 %93, 100
  store i32 %94, i32* %23, align 4
  %95 = load i32*, i32** %16, align 8
  %96 = load i64, i64* @_binary_img_spinner_comma_png_start, align 8
  %97 = inttoptr i64 %96 to i8*
  %98 = load i64, i64* @_binary_img_spinner_comma_png_end, align 8
  %99 = load i64, i64* @_binary_img_spinner_comma_png_start, align 8
  %100 = sub nsw i64 %98, %99
  %101 = call i32 @nvgCreateImageMem(i32* %95, i32 0, i8* %97, i64 %100)
  store i32 %101, i32* %24, align 4
  %102 = load i32, i32* %24, align 4
  %103 = icmp sge i32 %102, 0
  %104 = zext i1 %103 to i32
  %105 = call i32 @assert(i32 %104)
  store i32 0, i32* %25, align 4
  br label %106

106:                                              ; preds = %339, %51
  %107 = call i64 (...) @stdin_input_available()
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %151

109:                                              ; preds = %106
  %110 = load i32, i32* @SPINTEXT_LENGTH, align 4
  %111 = load i32, i32* @stdin, align 4
  %112 = call i32 @fgets(i8* %41, i32 %110, i32 %111)
  %113 = call i64 @strcspn(i8* %41, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %114 = getelementptr inbounds i8, i8* %41, i64 %113
  store i8 0, i8* %114, align 1
  %115 = call i64 @strlen(i8* %41)
  store i64 %115, i64* %26, align 8
  %116 = load i64, i64* %26, align 8
  %117 = icmp ugt i64 %116, 0
  %118 = zext i1 %117 to i32
  store i32 %118, i32* %27, align 4
  store i32 0, i32* %28, align 4
  br label %119

119:                                              ; preds = %133, %109
  %120 = load i32, i32* %28, align 4
  %121 = sext i32 %120 to i64
  %122 = load i64, i64* %26, align 8
  %123 = icmp ult i64 %121, %122
  br i1 %123, label %124, label %136

124:                                              ; preds = %119
  %125 = load i32, i32* %28, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i8, i8* %41, i64 %126
  %128 = load i8, i8* %127, align 1
  %129 = call i32 @isdigit(i8 signext %128)
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %132, label %131

131:                                              ; preds = %124
  store i32 0, i32* %27, align 4
  br label %136

132:                                              ; preds = %124
  br label %133

133:                                              ; preds = %132
  %134 = load i32, i32* %28, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %28, align 4
  br label %119

136:                                              ; preds = %131, %119
  %137 = load i32, i32* %27, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %149

139:                                              ; preds = %136
  %140 = call i64 @atoi(i8* %41)
  %141 = sitofp i64 %140 to float
  %142 = fpext float %141 to double
  %143 = fdiv double %142, 1.000000e+02
  %144 = fptrunc double %143 to float
  store float %144, float* %7, align 4
  %145 = load float, float* %7, align 4
  %146 = call float @fmin(double 1.000000e+00, float %145)
  store float %146, float* %7, align 4
  %147 = load float, float* %7, align 4
  %148 = call float @fmax(double 0.000000e+00, float %147)
  store float %148, float* %7, align 4
  br label %149

149:                                              ; preds = %139, %136
  %150 = load i32, i32* %27, align 4
  store i32 %150, i32* %6, align 4
  br label %151

151:                                              ; preds = %149, %106
  %152 = call i32 @glClearColor(double 1.000000e-01, double 1.000000e-01, double 1.000000e-01, double 1.000000e+00)
  %153 = load i32, i32* @GL_STENCIL_BUFFER_BIT, align 4
  %154 = load i32, i32* @GL_COLOR_BUFFER_BIT, align 4
  %155 = or i32 %153, %154
  %156 = call i32 @glClear(i32 %155)
  %157 = load i32, i32* @GL_BLEND, align 4
  %158 = call i32 @glEnable(i32 %157)
  %159 = load i32, i32* @GL_SRC_ALPHA, align 4
  %160 = load i32, i32* @GL_ONE_MINUS_SRC_ALPHA, align 4
  %161 = call i32 @glBlendFunc(i32 %159, i32 %160)
  %162 = load i32*, i32** %16, align 8
  %163 = load i32, i32* %11, align 4
  %164 = load i32, i32* %12, align 4
  %165 = call i32 @nvgBeginFrame(i32* %162, i32 %163, i32 %164, float 1.000000e+00)
  %166 = load i32*, i32** %16, align 8
  %167 = call i32 @nvgBeginPath(i32* %166)
  %168 = load i32*, i32** %16, align 8
  %169 = load i32, i32* %11, align 4
  %170 = load i32, i32* %11, align 4
  %171 = load i32, i32* %12, align 4
  %172 = call i32 @nvgRGBA(i32 0, i32 0, i32 0, i32 175)
  %173 = call i32 @nvgRGBA(i32 0, i32 0, i32 0, i32 255)
  %174 = call i32 @nvgLinearGradient(i32* %168, i32 %169, i32 0, i32 %170, i32 %171, i32 %172, i32 %173)
  store i32 %174, i32* %29, align 4
  %175 = load i32*, i32** %16, align 8
  %176 = load i32, i32* %29, align 4
  %177 = call i32 @nvgFillPaint(i32* %175, i32 %176)
  %178 = load i32*, i32** %16, align 8
  %179 = load i32, i32* %11, align 4
  %180 = load i32, i32* %12, align 4
  %181 = call i32 @nvgRect(i32* %178, i32 0, i32 0, i32 %179, i32 %180)
  %182 = load i32*, i32** %16, align 8
  %183 = call i32 @nvgFill(i32* %182)
  %184 = load i32*, i32** %16, align 8
  %185 = call i32 @nvgSave(i32* %184)
  %186 = load i32*, i32** %16, align 8
  %187 = load i32, i32* %22, align 4
  %188 = load i32, i32* %23, align 4
  %189 = call i32 @nvgTranslate(i32* %186, i32 %187, i32 %188)
  %190 = load i32*, i32** %16, align 8
  %191 = load double, double* @M_PI, align 8
  %192 = fmul double 3.750000e+00, %191
  %193 = load i32, i32* %25, align 4
  %194 = sitofp i32 %193 to double
  %195 = fmul double %192, %194
  %196 = fdiv double %195, 1.200000e+02
  %197 = call i32 @nvgRotate(i32* %190, double %196)
  %198 = load i32*, i32** %16, align 8
  %199 = load i32, i32* %22, align 4
  %200 = sub nsw i32 0, %199
  %201 = load i32, i32* %23, align 4
  %202 = sub nsw i32 0, %201
  %203 = call i32 @nvgTranslate(i32* %198, i32 %200, i32 %202)
  %204 = load i32*, i32** %16, align 8
  %205 = load i32, i32* %20, align 4
  %206 = load i32, i32* %21, align 4
  %207 = load i32, i32* %19, align 4
  %208 = load i32, i32* %19, align 4
  %209 = load i32, i32* %18, align 4
  %210 = call i32 @nvgImagePattern(i32* %204, i32 %205, i32 %206, i32 %207, i32 %208, i32 0, i32 %209, float 0x3FE3333340000000)
  store i32 %210, i32* %30, align 4
  %211 = load i32*, i32** %16, align 8
  %212 = call i32 @nvgBeginPath(i32* %211)
  %213 = load i32*, i32** %16, align 8
  %214 = load i32, i32* %30, align 4
  %215 = call i32 @nvgFillPaint(i32* %213, i32 %214)
  %216 = load i32*, i32** %16, align 8
  %217 = load i32, i32* %20, align 4
  %218 = load i32, i32* %21, align 4
  %219 = load i32, i32* %19, align 4
  %220 = load i32, i32* %19, align 4
  %221 = call i32 @nvgRect(i32* %216, i32 %217, i32 %218, i32 %219, i32 %220)
  %222 = load i32*, i32** %16, align 8
  %223 = call i32 @nvgFill(i32* %222)
  %224 = load i32*, i32** %16, align 8
  %225 = call i32 @nvgRestore(i32* %224)
  %226 = load i32*, i32** %16, align 8
  %227 = load i32, i32* %20, align 4
  %228 = load i32, i32* %21, align 4
  %229 = load i32, i32* %19, align 4
  %230 = load i32, i32* %19, align 4
  %231 = load i32, i32* %24, align 4
  %232 = call i32 @nvgImagePattern(i32* %226, i32 %227, i32 %228, i32 %229, i32 %230, i32 0, i32 %231, float 1.000000e+00)
  store i32 %232, i32* %31, align 4
  %233 = load i32*, i32** %16, align 8
  %234 = call i32 @nvgBeginPath(i32* %233)
  %235 = load i32*, i32** %16, align 8
  %236 = load i32, i32* %31, align 4
  %237 = call i32 @nvgFillPaint(i32* %235, i32 %236)
  %238 = load i32*, i32** %16, align 8
  %239 = load i32, i32* %20, align 4
  %240 = load i32, i32* %21, align 4
  %241 = load i32, i32* %19, align 4
  %242 = load i32, i32* %19, align 4
  %243 = call i32 @nvgRect(i32* %238, i32 %239, i32 %240, i32 %241, i32 %242)
  %244 = load i32*, i32** %16, align 8
  %245 = call i32 @nvgFill(i32* %244)
  %246 = load i32, i32* %6, align 4
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %248, label %312

248:                                              ; preds = %151
  store i32 1000, i32* %32, align 4
  %249 = load i32, i32* %11, align 4
  %250 = sdiv i32 %249, 2
  %251 = load i32, i32* %32, align 4
  %252 = sdiv i32 %251, 2
  %253 = sub nsw i32 %250, %252
  store i32 %253, i32* %33, align 4
  store i32 775, i32* %34, align 4
  store i32 25, i32* %35, align 4
  %254 = load i32*, i32** %16, align 8
  %255 = load i32, i32* %33, align 4
  %256 = add nsw i32 %255, 1
  %257 = load i32, i32* %34, align 4
  %258 = add nsw i32 %257, 1
  %259 = load i32, i32* %32, align 4
  %260 = sub nsw i32 %259, 2
  %261 = load i32, i32* %35, align 4
  %262 = call i32 @nvgRGB(i32 27, i32 27, i32 27)
  %263 = call i32 @nvgRGB(i32 27, i32 27, i32 27)
  %264 = call i32 @nvgBoxGradient(i32* %254, i32 %256, i32 %258, i32 %260, i32 %261, i32 3, i32 4, i32 %262, i32 %263)
  store i32 %264, i32* %36, align 4
  %265 = load i32*, i32** %16, align 8
  %266 = call i32 @nvgBeginPath(i32* %265)
  %267 = load i32*, i32** %16, align 8
  %268 = load i32, i32* %33, align 4
  %269 = load i32, i32* %34, align 4
  %270 = load i32, i32* %32, align 4
  %271 = load i32, i32* %35, align 4
  %272 = call i32 @nvgRoundedRect(i32* %267, i32 %268, i32 %269, i32 %270, i32 %271, i32 12)
  %273 = load i32*, i32** %16, align 8
  %274 = load i32, i32* %36, align 4
  %275 = call i32 @nvgFillPaint(i32* %273, i32 %274)
  %276 = load i32*, i32** %16, align 8
  %277 = call i32 @nvgFill(i32* %276)
  %278 = load i32, i32* %32, align 4
  %279 = sub nsw i32 %278, 2
  %280 = sitofp i32 %279 to float
  %281 = load float, float* %7, align 4
  %282 = fmul float %280, %281
  %283 = fptosi float %282 to i32
  store i32 %283, i32* %37, align 4
  %284 = load i32*, i32** %16, align 8
  %285 = load i32, i32* %33, align 4
  %286 = load i32, i32* %34, align 4
  %287 = load i32, i32* %37, align 4
  %288 = sitofp i32 %287 to float
  %289 = fadd float %288, 1.500000e+00
  %290 = fptosi float %289 to i32
  %291 = load i32, i32* %35, align 4
  %292 = sub nsw i32 %291, 1
  %293 = call i32 @nvgRGB(i32 245, i32 245, i32 245)
  %294 = call i32 @nvgRGB(i32 105, i32 105, i32 105)
  %295 = call i32 @nvgBoxGradient(i32* %284, i32 %285, i32 %286, i32 %290, i32 %292, i32 3, i32 4, i32 %293, i32 %294)
  store i32 %295, i32* %36, align 4
  %296 = load i32*, i32** %16, align 8
  %297 = call i32 @nvgBeginPath(i32* %296)
  %298 = load i32*, i32** %16, align 8
  %299 = load i32, i32* %33, align 4
  %300 = add nsw i32 %299, 1
  %301 = load i32, i32* %34, align 4
  %302 = add nsw i32 %301, 1
  %303 = load i32, i32* %37, align 4
  %304 = load i32, i32* %35, align 4
  %305 = sub nsw i32 %304, 2
  %306 = call i32 @nvgRoundedRect(i32* %298, i32 %300, i32 %302, i32 %303, i32 %305, i32 12)
  %307 = load i32*, i32** %16, align 8
  %308 = load i32, i32* %36, align 4
  %309 = call i32 @nvgFillPaint(i32* %307, i32 %308)
  %310 = load i32*, i32** %16, align 8
  %311 = call i32 @nvgFill(i32* %310)
  br label %328

312:                                              ; preds = %151
  %313 = load i32*, i32** %16, align 8
  %314 = load i32, i32* @NVG_ALIGN_CENTER, align 4
  %315 = load i32, i32* @NVG_ALIGN_TOP, align 4
  %316 = or i32 %314, %315
  %317 = call i32 @nvgTextAlign(i32* %313, i32 %316)
  %318 = load i32*, i32** %16, align 8
  %319 = call i32 @nvgFontSize(i32* %318, float 9.600000e+01)
  %320 = load i32*, i32** %16, align 8
  %321 = load i32, i32* %11, align 4
  %322 = sdiv i32 %321, 2
  %323 = load i32, i32* %12, align 4
  %324 = mul nsw i32 %323, 2
  %325 = sdiv i32 %324, 3
  %326 = add nsw i32 %325, 24
  %327 = call i32 @nvgText(i32* %320, i32 %322, i32 %326, i8* %41, i32* null)
  br label %328

328:                                              ; preds = %312, %248
  %329 = load i32*, i32** %16, align 8
  %330 = call i32 @nvgEndFrame(i32* %329)
  %331 = load i32, i32* %13, align 4
  %332 = load i32, i32* %14, align 4
  %333 = call i32 @eglSwapBuffers(i32 %331, i32 %332)
  %334 = call i64 (...) @glGetError()
  %335 = load i64, i64* @GL_NO_ERROR, align 8
  %336 = icmp eq i64 %334, %335
  %337 = zext i1 %336 to i32
  %338 = call i32 @assert(i32 %337)
  br label %339

339:                                              ; preds = %328
  %340 = load i32, i32* %25, align 4
  %341 = add nsw i32 %340, 1
  store i32 %341, i32* %25, align 4
  br label %106
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #2

declare dso_local i32* @framebuffer_init(i8*, i32, i32, i32*, i32*, i32*, i32*) #2

declare dso_local i32 @assert(i32) #2

declare dso_local i32* @nvgCreateGLES3(i32) #2

declare dso_local i32 @nvgCreateFontMem(i32*, i8*, i8*, i64, i32) #2

declare dso_local i32 @nvgCreateImageMem(i32*, i32, i8*, i64) #2

declare dso_local i64 @stdin_input_available(...) #2

declare dso_local i32 @fgets(i8*, i32, i32) #2

declare dso_local i64 @strcspn(i8*, i8*) #2

declare dso_local i64 @strlen(i8*) #2

declare dso_local i32 @isdigit(i8 signext) #2

declare dso_local i64 @atoi(i8*) #2

declare dso_local float @fmin(double, float) #2

declare dso_local float @fmax(double, float) #2

declare dso_local i32 @glClearColor(double, double, double, double) #2

declare dso_local i32 @glClear(i32) #2

declare dso_local i32 @glEnable(i32) #2

declare dso_local i32 @glBlendFunc(i32, i32) #2

declare dso_local i32 @nvgBeginFrame(i32*, i32, i32, float) #2

declare dso_local i32 @nvgBeginPath(i32*) #2

declare dso_local i32 @nvgLinearGradient(i32*, i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @nvgRGBA(i32, i32, i32, i32) #2

declare dso_local i32 @nvgFillPaint(i32*, i32) #2

declare dso_local i32 @nvgRect(i32*, i32, i32, i32, i32) #2

declare dso_local i32 @nvgFill(i32*) #2

declare dso_local i32 @nvgSave(i32*) #2

declare dso_local i32 @nvgTranslate(i32*, i32, i32) #2

declare dso_local i32 @nvgRotate(i32*, double) #2

declare dso_local i32 @nvgImagePattern(i32*, i32, i32, i32, i32, i32, i32, float) #2

declare dso_local i32 @nvgRestore(i32*) #2

declare dso_local i32 @nvgBoxGradient(i32*, i32, i32, i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @nvgRGB(i32, i32, i32) #2

declare dso_local i32 @nvgRoundedRect(i32*, i32, i32, i32, i32, i32) #2

declare dso_local i32 @nvgTextAlign(i32*, i32) #2

declare dso_local i32 @nvgFontSize(i32*, float) #2

declare dso_local i32 @nvgText(i32*, i32, i32, i8*, i32*) #2

declare dso_local i32 @nvgEndFrame(i32*) #2

declare dso_local i32 @eglSwapBuffers(i32, i32) #2

declare dso_local i64 @glGetError(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
