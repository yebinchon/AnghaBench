; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_vo_direct3d.c_d3d_draw_frame.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_vo_direct3d.c_d3d_draw_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_15__, i32**, %struct.TYPE_14__*, i64, %struct.TYPE_18__, %struct.TYPE_18__, i32 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i32, i32, %struct.TYPE_19__ }
%struct.TYPE_19__ = type { float, float }
%struct.TYPE_18__ = type { i32, i32, i32, i32 }
%struct.TYPE_16__ = type { float, float**, i32, i32 }

@VO_TRUE = common dso_local global i32 0, align 4
@VO_ERROR = common dso_local global i32 0, align 4
@D3DCLEAR_TARGET = common dso_local global i32 0, align 4
@D3DFVF_VIDEO_VERTEX = common dso_local global i32 0, align 4
@D3DPT_TRIANGLESTRIP = common dso_local global i32 0, align 4
@D3DTEXF_LINEAR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Copying frame to the backbuffer failed.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_17__*)* @d3d_draw_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @d3d_draw_frame(%struct.TYPE_17__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_17__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_18__, align 4
  %6 = alloca %struct.TYPE_18__, align 4
  %7 = alloca [4 x %struct.TYPE_16__], align 16
  %8 = alloca [4 x [2 x float]], align 16
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %3, align 8
  %12 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %12, i32 0, i32 5
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @VO_TRUE, align 4
  store i32 %17, i32* %2, align 4
  br label %348

18:                                               ; preds = %1
  %19 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %20 = call i32 @d3d_begin_scene(%struct.TYPE_17__* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %18
  %23 = load i32, i32* @VO_ERROR, align 4
  store i32 %23, i32* %2, align 4
  br label %348

24:                                               ; preds = %18
  %25 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %25, i32 0, i32 5
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @D3DCLEAR_TARGET, align 4
  %29 = call i32 @IDirect3DDevice9_Clear(i32 %27, i32 0, i32* null, i32 %28, i32 0, i32 0, i32 0)
  %30 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %30, i32 0, i32 12
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %24
  br label %342

35:                                               ; preds = %24
  %36 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %36, i32 0, i32 11
  %38 = bitcast %struct.TYPE_18__* %5 to i8*
  %39 = bitcast %struct.TYPE_18__* %37 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %38, i8* align 8 %39, i64 16, i1 false)
  %40 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %40, i32 0, i32 10
  %42 = bitcast %struct.TYPE_18__* %6 to i8*
  %43 = bitcast %struct.TYPE_18__* %41 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %42, i8* align 8 %43, i64 16, i1 false)
  %44 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %44, i32 0, i32 9
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %310

48:                                               ; preds = %35
  store i32 0, i32* %4, align 4
  br label %49

49:                                               ; preds = %70, %48
  %50 = load i32, i32* %4, align 4
  %51 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp slt i32 %50, %53
  br i1 %54, label %55, label %73

55:                                               ; preds = %49
  %56 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %56, i32 0, i32 5
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %4, align 4
  %60 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %61 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %61, i32 0, i32 8
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %62, align 8
  %64 = load i32, i32* %4, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i32 0, i32 2
  %68 = call i32* @d3dtex_get_render_texture(%struct.TYPE_17__* %60, %struct.TYPE_19__* %67)
  %69 = call i32 @IDirect3DDevice9_SetTexture(i32 %58, i32 %59, i32* %68)
  br label %70

70:                                               ; preds = %55
  %71 = load i32, i32* %4, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %4, align 4
  br label %49

73:                                               ; preds = %49
  %74 = getelementptr inbounds [4 x %struct.TYPE_16__], [4 x %struct.TYPE_16__]* %7, i64 0, i64 0
  %75 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %5, i32 0, i32 3
  %77 = load i32, i32* %76, align 4
  %78 = sitofp i32 %77 to float
  store float %78, float* %75, align 8
  %79 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %74, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %5, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = sext i32 %81 to i64
  %83 = inttoptr i64 %82 to float**
  store float** %83, float*** %79, align 8
  %84 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %74, i32 0, i32 2
  store i32 0, i32* %84, align 8
  %85 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %74, i32 0, i32 3
  store i32 0, i32* %85, align 4
  %86 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %74, i64 1
  %87 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %5, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = sitofp i32 %89 to float
  store float %90, float* %87, align 8
  %91 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %86, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %5, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = sext i32 %93 to i64
  %95 = inttoptr i64 %94 to float**
  store float** %95, float*** %91, align 8
  %96 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %86, i32 0, i32 2
  store i32 0, i32* %96, align 8
  %97 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %86, i32 0, i32 3
  store i32 0, i32* %97, align 4
  %98 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %86, i64 1
  %99 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %5, i32 0, i32 3
  %101 = load i32, i32* %100, align 4
  %102 = sitofp i32 %101 to float
  store float %102, float* %99, align 8
  %103 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %98, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %5, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = sext i32 %105 to i64
  %107 = inttoptr i64 %106 to float**
  store float** %107, float*** %103, align 8
  %108 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %98, i32 0, i32 2
  store i32 0, i32* %108, align 8
  %109 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %98, i32 0, i32 3
  store i32 0, i32* %109, align 4
  %110 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %98, i64 1
  %111 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %5, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = sitofp i32 %113 to float
  store float %114, float* %111, align 8
  %115 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %110, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %5, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = sext i32 %117 to i64
  %119 = inttoptr i64 %118 to float**
  store float** %119, float*** %115, align 8
  %120 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %110, i32 0, i32 2
  store i32 0, i32* %120, align 8
  %121 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %110, i32 0, i32 3
  store i32 0, i32* %121, align 4
  %122 = getelementptr inbounds [4 x [2 x float]], [4 x [2 x float]]* %8, i64 0, i64 0
  %123 = getelementptr inbounds [2 x float], [2 x float]* %122, i64 0, i64 0
  %124 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %6, i32 0, i32 3
  %125 = load i32, i32* %124, align 4
  %126 = sitofp i32 %125 to float
  store float %126, float* %123, align 4
  %127 = getelementptr inbounds float, float* %123, i64 1
  %128 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %6, i32 0, i32 2
  %129 = load i32, i32* %128, align 4
  %130 = sitofp i32 %129 to float
  store float %130, float* %127, align 4
  %131 = getelementptr inbounds [2 x float], [2 x float]* %122, i64 1
  %132 = getelementptr inbounds [2 x float], [2 x float]* %131, i64 0, i64 0
  %133 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %6, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = sitofp i32 %134 to float
  store float %135, float* %132, align 4
  %136 = getelementptr inbounds float, float* %132, i64 1
  %137 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %6, i32 0, i32 2
  %138 = load i32, i32* %137, align 4
  %139 = sitofp i32 %138 to float
  store float %139, float* %136, align 4
  %140 = getelementptr inbounds [2 x float], [2 x float]* %131, i64 1
  %141 = getelementptr inbounds [2 x float], [2 x float]* %140, i64 0, i64 0
  %142 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %6, i32 0, i32 3
  %143 = load i32, i32* %142, align 4
  %144 = sitofp i32 %143 to float
  store float %144, float* %141, align 4
  %145 = getelementptr inbounds float, float* %141, i64 1
  %146 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %6, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = sitofp i32 %147 to float
  store float %148, float* %145, align 4
  %149 = getelementptr inbounds [2 x float], [2 x float]* %140, i64 1
  %150 = getelementptr inbounds [2 x float], [2 x float]* %149, i64 0, i64 0
  %151 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %6, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = sitofp i32 %152 to float
  store float %153, float* %150, align 4
  %154 = getelementptr inbounds float, float* %150, i64 1
  %155 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %6, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = sitofp i32 %156 to float
  store float %157, float* %154, align 4
  store i32 0, i32* %4, align 4
  br label %158

158:                                              ; preds = %249, %73
  %159 = load i32, i32* %4, align 4
  %160 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %161 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = icmp slt i32 %159, %162
  br i1 %163, label %164, label %252

164:                                              ; preds = %158
  %165 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %166 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %165, i32 0, i32 8
  %167 = load %struct.TYPE_14__*, %struct.TYPE_14__** %166, align 8
  %168 = load i32, i32* %4, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %167, i64 %169
  %171 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = shl i32 1, %172
  %174 = sitofp i32 %173 to float
  %175 = fdiv float 1.000000e+00, %174
  %176 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %177 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %176, i32 0, i32 8
  %178 = load %struct.TYPE_14__*, %struct.TYPE_14__** %177, align 8
  %179 = load i32, i32* %4, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %178, i64 %180
  %182 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %181, i32 0, i32 2
  %183 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %182, i32 0, i32 0
  %184 = load float, float* %183, align 4
  %185 = fdiv float %175, %184
  store float %185, float* %9, align 4
  %186 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %187 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %186, i32 0, i32 8
  %188 = load %struct.TYPE_14__*, %struct.TYPE_14__** %187, align 8
  %189 = load i32, i32* %4, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %188, i64 %190
  %192 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 4
  %194 = shl i32 1, %193
  %195 = sitofp i32 %194 to float
  %196 = fdiv float 1.000000e+00, %195
  %197 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %198 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %197, i32 0, i32 8
  %199 = load %struct.TYPE_14__*, %struct.TYPE_14__** %198, align 8
  %200 = load i32, i32* %4, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %199, i64 %201
  %203 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %202, i32 0, i32 2
  %204 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %203, i32 0, i32 1
  %205 = load float, float* %204, align 4
  %206 = fdiv float %196, %205
  store float %206, float* %10, align 4
  store i32 0, i32* %11, align 4
  br label %207

207:                                              ; preds = %245, %164
  %208 = load i32, i32* %11, align 4
  %209 = icmp slt i32 %208, 4
  br i1 %209, label %210, label %248

210:                                              ; preds = %207
  %211 = load i32, i32* %11, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds [4 x [2 x float]], [4 x [2 x float]]* %8, i64 0, i64 %212
  %214 = getelementptr inbounds [2 x float], [2 x float]* %213, i64 0, i64 0
  %215 = load float, float* %214, align 8
  %216 = load float, float* %9, align 4
  %217 = fmul float %215, %216
  %218 = load i32, i32* %11, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds [4 x %struct.TYPE_16__], [4 x %struct.TYPE_16__]* %7, i64 0, i64 %219
  %221 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %220, i32 0, i32 1
  %222 = load float**, float*** %221, align 8
  %223 = load i32, i32* %4, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds float*, float** %222, i64 %224
  %226 = load float*, float** %225, align 8
  %227 = getelementptr inbounds float, float* %226, i64 0
  store float %217, float* %227, align 4
  %228 = load i32, i32* %11, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds [4 x [2 x float]], [4 x [2 x float]]* %8, i64 0, i64 %229
  %231 = getelementptr inbounds [2 x float], [2 x float]* %230, i64 0, i64 1
  %232 = load float, float* %231, align 4
  %233 = load float, float* %10, align 4
  %234 = fmul float %232, %233
  %235 = load i32, i32* %11, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds [4 x %struct.TYPE_16__], [4 x %struct.TYPE_16__]* %7, i64 0, i64 %236
  %238 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %237, i32 0, i32 1
  %239 = load float**, float*** %238, align 8
  %240 = load i32, i32* %4, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds float*, float** %239, i64 %241
  %243 = load float*, float** %242, align 8
  %244 = getelementptr inbounds float, float* %243, i64 1
  store float %234, float* %244, align 4
  br label %245

245:                                              ; preds = %210
  %246 = load i32, i32* %11, align 4
  %247 = add nsw i32 %246, 1
  store i32 %247, i32* %11, align 4
  br label %207

248:                                              ; preds = %207
  br label %249

249:                                              ; preds = %248
  %250 = load i32, i32* %4, align 4
  %251 = add nsw i32 %250, 1
  store i32 %251, i32* %4, align 4
  br label %158

252:                                              ; preds = %158
  %253 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %254 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %253, i32 0, i32 1
  %255 = load i32, i32* %254, align 4
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %257, label %278

257:                                              ; preds = %252
  %258 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %259 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %258, i32 0, i32 5
  %260 = load i32, i32* %259, align 4
  %261 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %262 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %261, i32 0, i32 7
  %263 = load i32**, i32*** %262, align 8
  %264 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %265 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %264, i32 0, i32 1
  %266 = load i32, i32* %265, align 4
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds i32*, i32** %263, i64 %267
  %269 = load i32*, i32** %268, align 8
  %270 = call i32 @IDirect3DDevice9_SetPixelShader(i32 %260, i32* %269)
  %271 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %272 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %271, i32 0, i32 5
  %273 = load i32, i32* %272, align 4
  %274 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %275 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %274, i32 0, i32 6
  %276 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %275, i32 0, i32 0
  %277 = call i32 @IDirect3DDevice9_SetPixelShaderConstantF(i32 %273, i32 0, i32* %276, i32 4)
  br label %278

278:                                              ; preds = %257, %252
  %279 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %280 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %279, i32 0, i32 5
  %281 = load i32, i32* %280, align 4
  %282 = load i32, i32* @D3DFVF_VIDEO_VERTEX, align 4
  %283 = call i32 @IDirect3DDevice9_SetFVF(i32 %281, i32 %282)
  %284 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %285 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %284, i32 0, i32 5
  %286 = load i32, i32* %285, align 4
  %287 = load i32, i32* @D3DPT_TRIANGLESTRIP, align 4
  %288 = getelementptr inbounds [4 x %struct.TYPE_16__], [4 x %struct.TYPE_16__]* %7, i64 0, i64 0
  %289 = call i32 @IDirect3DDevice9_DrawPrimitiveUP(i32 %286, i32 %287, i32 2, %struct.TYPE_16__* %288, i32 24)
  %290 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %291 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %290, i32 0, i32 5
  %292 = load i32, i32* %291, align 4
  %293 = call i32 @IDirect3DDevice9_SetPixelShader(i32 %292, i32* null)
  store i32 0, i32* %4, align 4
  br label %294

294:                                              ; preds = %306, %278
  %295 = load i32, i32* %4, align 4
  %296 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %297 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %296, i32 0, i32 0
  %298 = load i32, i32* %297, align 8
  %299 = icmp slt i32 %295, %298
  br i1 %299, label %300, label %309

300:                                              ; preds = %294
  %301 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %302 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %301, i32 0, i32 5
  %303 = load i32, i32* %302, align 4
  %304 = load i32, i32* %4, align 4
  %305 = call i32 @IDirect3DDevice9_SetTexture(i32 %303, i32 %304, i32* null)
  br label %306

306:                                              ; preds = %300
  %307 = load i32, i32* %4, align 4
  %308 = add nsw i32 %307, 1
  store i32 %308, i32* %4, align 4
  br label %294

309:                                              ; preds = %294
  br label %341

310:                                              ; preds = %35
  %311 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %6, i32 0, i32 3
  %312 = load i32, i32* %311, align 4
  %313 = and i32 %312, -2
  store i32 %313, i32* %311, align 4
  %314 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %6, i32 0, i32 2
  %315 = load i32, i32* %314, align 4
  %316 = and i32 %315, -2
  store i32 %316, i32* %314, align 4
  %317 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %6, i32 0, i32 1
  %318 = load i32, i32* %317, align 4
  %319 = and i32 %318, -2
  store i32 %319, i32* %317, align 4
  %320 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %6, i32 0, i32 0
  %321 = load i32, i32* %320, align 4
  %322 = and i32 %321, -2
  store i32 %322, i32* %320, align 4
  %323 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %324 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %323, i32 0, i32 5
  %325 = load i32, i32* %324, align 4
  %326 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %327 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %326, i32 0, i32 4
  %328 = load i32, i32* %327, align 8
  %329 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %330 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %329, i32 0, i32 3
  %331 = load i32, i32* %330, align 4
  %332 = load i32, i32* @D3DTEXF_LINEAR, align 4
  %333 = call i32 @IDirect3DDevice9_StretchRect(i32 %325, i32 %328, %struct.TYPE_18__* %6, i32 %331, %struct.TYPE_18__* %5, i32 %332)
  %334 = call i64 @FAILED(i32 %333)
  %335 = icmp ne i64 %334, 0
  br i1 %335, label %336, label %340

336:                                              ; preds = %310
  %337 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %338 = call i32 @MP_ERR(%struct.TYPE_17__* %337, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %339 = load i32, i32* @VO_ERROR, align 4
  store i32 %339, i32* %2, align 4
  br label %348

340:                                              ; preds = %310
  br label %341

341:                                              ; preds = %340, %309
  br label %342

342:                                              ; preds = %341, %34
  %343 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %344 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %343, i32 0, i32 2
  %345 = load i32, i32* %344, align 8
  %346 = call i32 @draw_osd(i32 %345)
  %347 = load i32, i32* @VO_TRUE, align 4
  store i32 %347, i32* %2, align 4
  br label %348

348:                                              ; preds = %342, %336, %22, %16
  %349 = load i32, i32* %2, align 4
  ret i32 %349
}

declare dso_local i32 @d3d_begin_scene(%struct.TYPE_17__*) #1

declare dso_local i32 @IDirect3DDevice9_Clear(i32, i32, i32*, i32, i32, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @IDirect3DDevice9_SetTexture(i32, i32, i32*) #1

declare dso_local i32* @d3dtex_get_render_texture(%struct.TYPE_17__*, %struct.TYPE_19__*) #1

declare dso_local i32 @IDirect3DDevice9_SetPixelShader(i32, i32*) #1

declare dso_local i32 @IDirect3DDevice9_SetPixelShaderConstantF(i32, i32, i32*, i32) #1

declare dso_local i32 @IDirect3DDevice9_SetFVF(i32, i32) #1

declare dso_local i32 @IDirect3DDevice9_DrawPrimitiveUP(i32, i32, i32, %struct.TYPE_16__*, i32) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @IDirect3DDevice9_StretchRect(i32, i32, %struct.TYPE_18__*, i32, %struct.TYPE_18__*, i32) #1

declare dso_local i32 @MP_ERR(%struct.TYPE_17__*, i8*) #1

declare dso_local i32 @draw_osd(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
