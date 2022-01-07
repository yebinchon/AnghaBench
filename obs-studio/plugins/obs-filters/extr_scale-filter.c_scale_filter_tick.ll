; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/obs-filters/extr_scale-filter.c_scale_filter_tick.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/obs-filters/extr_scale-filter.c_scale_filter_tick.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scale_filter_data = type { i32, i32, i32, i32, i32, double, i32, i32, i32*, i32, i32*, i32*, i8*, i64, i32, i32, i64, i32, i32, i64 }
%struct.obs_video_info = type { i32, i32 }

@EPSILON = common dso_local global i64 0, align 8
@OBS_EFFECT_BILINEAR_LOWRES = common dso_local global i32 0, align 4
@OBS_EFFECT_DEFAULT = common dso_local global i32 0, align 4
@OBS_EFFECT_BICUBIC = common dso_local global i32 0, align 4
@OBS_EFFECT_LANCZOS = common dso_local global i32 0, align 4
@OBS_EFFECT_AREA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"image\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"base_dimension\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"base_dimension_i\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"undistort_factor\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, float)* @scale_filter_tick to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scale_filter_tick(i8* %0, float %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca float, align 4
  %5 = alloca %struct.scale_filter_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.obs_video_info, align 4
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  store i8* %0, i8** %3, align 8
  store float %1, float* %4, align 4
  %16 = load i8*, i8** %3, align 8
  %17 = bitcast i8* %16 to %struct.scale_filter_data*
  store %struct.scale_filter_data* %17, %struct.scale_filter_data** %5, align 8
  %18 = load %struct.scale_filter_data*, %struct.scale_filter_data** %5, align 8
  %19 = getelementptr inbounds %struct.scale_filter_data, %struct.scale_filter_data* %18, i32 0, i32 19
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %32

22:                                               ; preds = %2
  %23 = call i32 @obs_get_video_info(%struct.obs_video_info* %13)
  %24 = getelementptr inbounds %struct.obs_video_info, %struct.obs_video_info* %13, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.scale_filter_data*, %struct.scale_filter_data** %5, align 8
  %27 = getelementptr inbounds %struct.scale_filter_data, %struct.scale_filter_data* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  %28 = getelementptr inbounds %struct.obs_video_info, %struct.obs_video_info* %13, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.scale_filter_data*, %struct.scale_filter_data** %5, align 8
  %31 = getelementptr inbounds %struct.scale_filter_data, %struct.scale_filter_data* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  br label %32

32:                                               ; preds = %22, %2
  %33 = load %struct.scale_filter_data*, %struct.scale_filter_data** %5, align 8
  %34 = getelementptr inbounds %struct.scale_filter_data, %struct.scale_filter_data* %33, i32 0, i32 18
  %35 = load i32, i32* %34, align 4
  %36 = call i32* @obs_filter_get_target(i32 %35)
  store i32* %36, i32** %7, align 8
  %37 = load %struct.scale_filter_data*, %struct.scale_filter_data** %5, align 8
  %38 = getelementptr inbounds %struct.scale_filter_data, %struct.scale_filter_data* %37, i32 0, i32 2
  store i32 0, i32* %38, align 8
  %39 = load %struct.scale_filter_data*, %struct.scale_filter_data** %5, align 8
  %40 = getelementptr inbounds %struct.scale_filter_data, %struct.scale_filter_data* %39, i32 0, i32 3
  store i32 0, i32* %40, align 4
  %41 = load i32*, i32** %7, align 8
  %42 = icmp ne i32* %41, null
  %43 = xor i1 %42, true
  %44 = xor i1 %43, true
  %45 = zext i1 %44 to i32
  %46 = load %struct.scale_filter_data*, %struct.scale_filter_data** %5, align 8
  %47 = getelementptr inbounds %struct.scale_filter_data, %struct.scale_filter_data* %46, i32 0, i32 4
  store i32 %45, i32* %47, align 8
  %48 = load %struct.scale_filter_data*, %struct.scale_filter_data** %5, align 8
  %49 = getelementptr inbounds %struct.scale_filter_data, %struct.scale_filter_data* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 8
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %32
  br label %289

53:                                               ; preds = %32
  %54 = load i32*, i32** %7, align 8
  %55 = call i32 @obs_source_get_base_width(i32* %54)
  store i32 %55, i32* %11, align 4
  %56 = load i32*, i32** %7, align 8
  %57 = call i32 @obs_source_get_base_height(i32* %56)
  store i32 %57, i32* %12, align 4
  %58 = load i32, i32* %11, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %53
  %61 = load i32, i32* %12, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %66, label %63

63:                                               ; preds = %60, %53
  %64 = load %struct.scale_filter_data*, %struct.scale_filter_data** %5, align 8
  %65 = getelementptr inbounds %struct.scale_filter_data, %struct.scale_filter_data* %64, i32 0, i32 4
  store i32 0, i32* %65, align 8
  br label %289

66:                                               ; preds = %60
  %67 = load i32, i32* %11, align 4
  %68 = load %struct.scale_filter_data*, %struct.scale_filter_data** %5, align 8
  %69 = getelementptr inbounds %struct.scale_filter_data, %struct.scale_filter_data* %68, i32 0, i32 2
  store i32 %67, i32* %69, align 8
  %70 = load i32, i32* %12, align 4
  %71 = load %struct.scale_filter_data*, %struct.scale_filter_data** %5, align 8
  %72 = getelementptr inbounds %struct.scale_filter_data, %struct.scale_filter_data* %71, i32 0, i32 3
  store i32 %70, i32* %72, align 4
  %73 = load %struct.scale_filter_data*, %struct.scale_filter_data** %5, align 8
  %74 = getelementptr inbounds %struct.scale_filter_data, %struct.scale_filter_data* %73, i32 0, i32 17
  %75 = load i32, i32* %74, align 8
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %78, label %77

77:                                               ; preds = %66
  br label %289

78:                                               ; preds = %66
  %79 = load i32, i32* %11, align 4
  %80 = sitofp i32 %79 to double
  store double %80, double* %9, align 8
  %81 = load i32, i32* %12, align 4
  %82 = sitofp i32 %81 to double
  store double %82, double* %10, align 8
  %83 = load double, double* %9, align 8
  %84 = load double, double* %10, align 8
  %85 = fdiv double %83, %84
  store double %85, double* %14, align 8
  %86 = load %struct.scale_filter_data*, %struct.scale_filter_data** %5, align 8
  %87 = getelementptr inbounds %struct.scale_filter_data, %struct.scale_filter_data* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = sitofp i32 %88 to double
  %90 = load %struct.scale_filter_data*, %struct.scale_filter_data** %5, align 8
  %91 = getelementptr inbounds %struct.scale_filter_data, %struct.scale_filter_data* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = sitofp i32 %92 to double
  %94 = fdiv double %89, %93
  store double %94, double* %15, align 8
  %95 = load %struct.scale_filter_data*, %struct.scale_filter_data** %5, align 8
  %96 = getelementptr inbounds %struct.scale_filter_data, %struct.scale_filter_data* %95, i32 0, i32 16
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %135

99:                                               ; preds = %78
  %100 = load double, double* %14, align 8
  %101 = load double, double* %15, align 8
  %102 = fsub double %100, %101
  %103 = call i64 @fabs(double %102)
  %104 = load i64, i64* @EPSILON, align 8
  %105 = icmp sle i64 %103, %104
  br i1 %105, label %106, label %109

106:                                              ; preds = %99
  %107 = load %struct.scale_filter_data*, %struct.scale_filter_data** %5, align 8
  %108 = getelementptr inbounds %struct.scale_filter_data, %struct.scale_filter_data* %107, i32 0, i32 4
  store i32 0, i32* %108, align 8
  br label %289

109:                                              ; preds = %99
  %110 = load double, double* %15, align 8
  %111 = load double, double* %14, align 8
  %112 = fcmp ogt double %110, %111
  br i1 %112, label %113, label %123

113:                                              ; preds = %109
  %114 = load double, double* %10, align 8
  %115 = load double, double* %15, align 8
  %116 = fmul double %114, %115
  %117 = fptosi double %116 to i32
  %118 = load %struct.scale_filter_data*, %struct.scale_filter_data** %5, align 8
  %119 = getelementptr inbounds %struct.scale_filter_data, %struct.scale_filter_data* %118, i32 0, i32 2
  store i32 %117, i32* %119, align 8
  %120 = load i32, i32* %12, align 4
  %121 = load %struct.scale_filter_data*, %struct.scale_filter_data** %5, align 8
  %122 = getelementptr inbounds %struct.scale_filter_data, %struct.scale_filter_data* %121, i32 0, i32 3
  store i32 %120, i32* %122, align 4
  br label %133

123:                                              ; preds = %109
  %124 = load i32, i32* %11, align 4
  %125 = load %struct.scale_filter_data*, %struct.scale_filter_data** %5, align 8
  %126 = getelementptr inbounds %struct.scale_filter_data, %struct.scale_filter_data* %125, i32 0, i32 2
  store i32 %124, i32* %126, align 8
  %127 = load double, double* %9, align 8
  %128 = load double, double* %15, align 8
  %129 = fdiv double %127, %128
  %130 = fptosi double %129 to i32
  %131 = load %struct.scale_filter_data*, %struct.scale_filter_data** %5, align 8
  %132 = getelementptr inbounds %struct.scale_filter_data, %struct.scale_filter_data* %131, i32 0, i32 3
  store i32 %130, i32* %132, align 4
  br label %133

133:                                              ; preds = %123, %113
  br label %134

134:                                              ; preds = %133
  br label %146

135:                                              ; preds = %78
  %136 = load %struct.scale_filter_data*, %struct.scale_filter_data** %5, align 8
  %137 = getelementptr inbounds %struct.scale_filter_data, %struct.scale_filter_data* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = load %struct.scale_filter_data*, %struct.scale_filter_data** %5, align 8
  %140 = getelementptr inbounds %struct.scale_filter_data, %struct.scale_filter_data* %139, i32 0, i32 2
  store i32 %138, i32* %140, align 8
  %141 = load %struct.scale_filter_data*, %struct.scale_filter_data** %5, align 8
  %142 = getelementptr inbounds %struct.scale_filter_data, %struct.scale_filter_data* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.scale_filter_data*, %struct.scale_filter_data** %5, align 8
  %145 = getelementptr inbounds %struct.scale_filter_data, %struct.scale_filter_data* %144, i32 0, i32 3
  store i32 %143, i32* %145, align 4
  br label %146

146:                                              ; preds = %135, %134
  %147 = load %struct.scale_filter_data*, %struct.scale_filter_data** %5, align 8
  %148 = getelementptr inbounds %struct.scale_filter_data, %struct.scale_filter_data* %147, i32 0, i32 15
  %149 = load i32, i32* %11, align 4
  %150 = sitofp i32 %149 to float
  %151 = load i32, i32* %12, align 4
  %152 = sitofp i32 %151 to float
  %153 = call i32 @vec2_set(i32* %148, float %150, float %152)
  %154 = load %struct.scale_filter_data*, %struct.scale_filter_data** %5, align 8
  %155 = getelementptr inbounds %struct.scale_filter_data, %struct.scale_filter_data* %154, i32 0, i32 14
  %156 = load i32, i32* %11, align 4
  %157 = sitofp i32 %156 to float
  %158 = fdiv float 1.000000e+00, %157
  %159 = load i32, i32* %12, align 4
  %160 = sitofp i32 %159 to float
  %161 = fdiv float 1.000000e+00, %160
  %162 = call i32 @vec2_set(i32* %155, float %158, float %161)
  %163 = load %struct.scale_filter_data*, %struct.scale_filter_data** %5, align 8
  %164 = getelementptr inbounds %struct.scale_filter_data, %struct.scale_filter_data* %163, i32 0, i32 13
  %165 = load i64, i64* %164, align 8
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %173

167:                                              ; preds = %146
  %168 = load double, double* %15, align 8
  %169 = load double, double* %14, align 8
  %170 = fdiv double %168, %169
  %171 = load %struct.scale_filter_data*, %struct.scale_filter_data** %5, align 8
  %172 = getelementptr inbounds %struct.scale_filter_data, %struct.scale_filter_data* %171, i32 0, i32 5
  store double %170, double* %172, align 8
  br label %176

173:                                              ; preds = %146
  %174 = load %struct.scale_filter_data*, %struct.scale_filter_data** %5, align 8
  %175 = getelementptr inbounds %struct.scale_filter_data, %struct.scale_filter_data* %174, i32 0, i32 5
  store double 1.000000e+00, double* %175, align 8
  br label %176

176:                                              ; preds = %173, %167
  %177 = load %struct.scale_filter_data*, %struct.scale_filter_data** %5, align 8
  %178 = getelementptr inbounds %struct.scale_filter_data, %struct.scale_filter_data* %177, i32 0, i32 6
  store i32 0, i32* %178, align 8
  %179 = load %struct.scale_filter_data*, %struct.scale_filter_data** %5, align 8
  %180 = getelementptr inbounds %struct.scale_filter_data, %struct.scale_filter_data* %179, i32 0, i32 2
  %181 = load i32, i32* %180, align 8
  %182 = load i32, i32* %11, align 4
  %183 = sdiv i32 %182, 2
  %184 = icmp slt i32 %181, %183
  br i1 %184, label %192, label %185

185:                                              ; preds = %176
  %186 = load %struct.scale_filter_data*, %struct.scale_filter_data** %5, align 8
  %187 = getelementptr inbounds %struct.scale_filter_data, %struct.scale_filter_data* %186, i32 0, i32 3
  %188 = load i32, i32* %187, align 4
  %189 = load i32, i32* %12, align 4
  %190 = sdiv i32 %189, 2
  %191 = icmp slt i32 %188, %190
  br label %192

192:                                              ; preds = %185, %176
  %193 = phi i1 [ true, %176 ], [ %191, %185 ]
  %194 = zext i1 %193 to i32
  store i32 %194, i32* %8, align 4
  %195 = load i32, i32* %8, align 4
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %204

197:                                              ; preds = %192
  %198 = load %struct.scale_filter_data*, %struct.scale_filter_data** %5, align 8
  %199 = getelementptr inbounds %struct.scale_filter_data, %struct.scale_filter_data* %198, i32 0, i32 7
  %200 = load i32, i32* %199, align 4
  %201 = icmp ne i32 %200, 128
  br i1 %201, label %202, label %204

202:                                              ; preds = %197
  %203 = load i32, i32* @OBS_EFFECT_BILINEAR_LOWRES, align 4
  store i32 %203, i32* %6, align 4
  br label %233

204:                                              ; preds = %197, %192
  %205 = load %struct.scale_filter_data*, %struct.scale_filter_data** %5, align 8
  %206 = getelementptr inbounds %struct.scale_filter_data, %struct.scale_filter_data* %205, i32 0, i32 7
  %207 = load i32, i32* %206, align 4
  switch i32 %207, label %208 [
    i32 128, label %209
    i32 130, label %209
    i32 131, label %211
    i32 129, label %213
    i32 132, label %215
  ]

208:                                              ; preds = %204
  br label %209

209:                                              ; preds = %204, %204, %208
  %210 = load i32, i32* @OBS_EFFECT_DEFAULT, align 4
  store i32 %210, i32* %6, align 4
  br label %232

211:                                              ; preds = %204
  %212 = load i32, i32* @OBS_EFFECT_BICUBIC, align 4
  store i32 %212, i32* %6, align 4
  br label %232

213:                                              ; preds = %204
  %214 = load i32, i32* @OBS_EFFECT_LANCZOS, align 4
  store i32 %214, i32* %6, align 4
  br label %232

215:                                              ; preds = %204
  %216 = load i32, i32* @OBS_EFFECT_AREA, align 4
  store i32 %216, i32* %6, align 4
  %217 = load %struct.scale_filter_data*, %struct.scale_filter_data** %5, align 8
  %218 = getelementptr inbounds %struct.scale_filter_data, %struct.scale_filter_data* %217, i32 0, i32 2
  %219 = load i32, i32* %218, align 8
  %220 = load i32, i32* %11, align 4
  %221 = icmp sge i32 %219, %220
  br i1 %221, label %222, label %231

222:                                              ; preds = %215
  %223 = load %struct.scale_filter_data*, %struct.scale_filter_data** %5, align 8
  %224 = getelementptr inbounds %struct.scale_filter_data, %struct.scale_filter_data* %223, i32 0, i32 3
  %225 = load i32, i32* %224, align 4
  %226 = load i32, i32* %12, align 4
  %227 = icmp sge i32 %225, %226
  br i1 %227, label %228, label %231

228:                                              ; preds = %222
  %229 = load %struct.scale_filter_data*, %struct.scale_filter_data** %5, align 8
  %230 = getelementptr inbounds %struct.scale_filter_data, %struct.scale_filter_data* %229, i32 0, i32 6
  store i32 1, i32* %230, align 8
  br label %231

231:                                              ; preds = %228, %222, %215
  br label %232

232:                                              ; preds = %231, %213, %211, %209
  br label %233

233:                                              ; preds = %232, %202
  %234 = load i32, i32* %6, align 4
  %235 = call i32 @obs_get_base_effect(i32 %234)
  %236 = load %struct.scale_filter_data*, %struct.scale_filter_data** %5, align 8
  %237 = getelementptr inbounds %struct.scale_filter_data, %struct.scale_filter_data* %236, i32 0, i32 9
  store i32 %235, i32* %237, align 8
  %238 = load %struct.scale_filter_data*, %struct.scale_filter_data** %5, align 8
  %239 = getelementptr inbounds %struct.scale_filter_data, %struct.scale_filter_data* %238, i32 0, i32 9
  %240 = load i32, i32* %239, align 8
  %241 = call i8* @gs_effect_get_param_by_name(i32 %240, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %242 = load %struct.scale_filter_data*, %struct.scale_filter_data** %5, align 8
  %243 = getelementptr inbounds %struct.scale_filter_data, %struct.scale_filter_data* %242, i32 0, i32 12
  store i8* %241, i8** %243, align 8
  %244 = load i32, i32* %6, align 4
  %245 = load i32, i32* @OBS_EFFECT_DEFAULT, align 4
  %246 = icmp ne i32 %244, %245
  br i1 %246, label %247, label %262

247:                                              ; preds = %233
  %248 = load %struct.scale_filter_data*, %struct.scale_filter_data** %5, align 8
  %249 = getelementptr inbounds %struct.scale_filter_data, %struct.scale_filter_data* %248, i32 0, i32 9
  %250 = load i32, i32* %249, align 8
  %251 = call i8* @gs_effect_get_param_by_name(i32 %250, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %252 = bitcast i8* %251 to i32*
  %253 = load %struct.scale_filter_data*, %struct.scale_filter_data** %5, align 8
  %254 = getelementptr inbounds %struct.scale_filter_data, %struct.scale_filter_data* %253, i32 0, i32 11
  store i32* %252, i32** %254, align 8
  %255 = load %struct.scale_filter_data*, %struct.scale_filter_data** %5, align 8
  %256 = getelementptr inbounds %struct.scale_filter_data, %struct.scale_filter_data* %255, i32 0, i32 9
  %257 = load i32, i32* %256, align 8
  %258 = call i8* @gs_effect_get_param_by_name(i32 %257, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %259 = bitcast i8* %258 to i32*
  %260 = load %struct.scale_filter_data*, %struct.scale_filter_data** %5, align 8
  %261 = getelementptr inbounds %struct.scale_filter_data, %struct.scale_filter_data* %260, i32 0, i32 10
  store i32* %259, i32** %261, align 8
  br label %267

262:                                              ; preds = %233
  %263 = load %struct.scale_filter_data*, %struct.scale_filter_data** %5, align 8
  %264 = getelementptr inbounds %struct.scale_filter_data, %struct.scale_filter_data* %263, i32 0, i32 11
  store i32* null, i32** %264, align 8
  %265 = load %struct.scale_filter_data*, %struct.scale_filter_data** %5, align 8
  %266 = getelementptr inbounds %struct.scale_filter_data, %struct.scale_filter_data* %265, i32 0, i32 10
  store i32* null, i32** %266, align 8
  br label %267

267:                                              ; preds = %262, %247
  %268 = load i32, i32* %6, align 4
  %269 = load i32, i32* @OBS_EFFECT_BICUBIC, align 4
  %270 = icmp eq i32 %268, %269
  br i1 %270, label %275, label %271

271:                                              ; preds = %267
  %272 = load i32, i32* %6, align 4
  %273 = load i32, i32* @OBS_EFFECT_LANCZOS, align 4
  %274 = icmp eq i32 %272, %273
  br i1 %274, label %275, label %283

275:                                              ; preds = %271, %267
  %276 = load %struct.scale_filter_data*, %struct.scale_filter_data** %5, align 8
  %277 = getelementptr inbounds %struct.scale_filter_data, %struct.scale_filter_data* %276, i32 0, i32 9
  %278 = load i32, i32* %277, align 8
  %279 = call i8* @gs_effect_get_param_by_name(i32 %278, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  %280 = bitcast i8* %279 to i32*
  %281 = load %struct.scale_filter_data*, %struct.scale_filter_data** %5, align 8
  %282 = getelementptr inbounds %struct.scale_filter_data, %struct.scale_filter_data* %281, i32 0, i32 8
  store i32* %280, i32** %282, align 8
  br label %286

283:                                              ; preds = %271
  %284 = load %struct.scale_filter_data*, %struct.scale_filter_data** %5, align 8
  %285 = getelementptr inbounds %struct.scale_filter_data, %struct.scale_filter_data* %284, i32 0, i32 8
  store i32* null, i32** %285, align 8
  br label %286

286:                                              ; preds = %283, %275
  %287 = load float, float* %4, align 4
  %288 = call i32 @UNUSED_PARAMETER(float %287)
  br label %289

289:                                              ; preds = %286, %106, %77, %63, %52
  ret void
}

declare dso_local i32 @obs_get_video_info(%struct.obs_video_info*) #1

declare dso_local i32* @obs_filter_get_target(i32) #1

declare dso_local i32 @obs_source_get_base_width(i32*) #1

declare dso_local i32 @obs_source_get_base_height(i32*) #1

declare dso_local i64 @fabs(double) #1

declare dso_local i32 @vec2_set(i32*, float, float) #1

declare dso_local i32 @obs_get_base_effect(i32) #1

declare dso_local i8* @gs_effect_get_param_by_name(i32, i8*) #1

declare dso_local i32 @UNUSED_PARAMETER(float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
