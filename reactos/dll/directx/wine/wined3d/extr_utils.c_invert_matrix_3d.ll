; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_utils.c_invert_matrix_3d.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_utils.c_invert_matrix_3d.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_matrix = type { float, float, float, float, float, float, float, float, float }

@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @invert_matrix_3d(%struct.wined3d_matrix* %0, %struct.wined3d_matrix* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wined3d_matrix*, align 8
  %5 = alloca %struct.wined3d_matrix*, align 8
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca %struct.wined3d_matrix, align 4
  store %struct.wined3d_matrix* %0, %struct.wined3d_matrix** %4, align 8
  store %struct.wined3d_matrix* %1, %struct.wined3d_matrix** %5, align 8
  store float 0.000000e+00, float* %7, align 4
  store float 0.000000e+00, float* %6, align 4
  %11 = load %struct.wined3d_matrix*, %struct.wined3d_matrix** %5, align 8
  %12 = getelementptr inbounds %struct.wined3d_matrix, %struct.wined3d_matrix* %11, i32 0, i32 0
  %13 = load float, float* %12, align 4
  %14 = load %struct.wined3d_matrix*, %struct.wined3d_matrix** %5, align 8
  %15 = getelementptr inbounds %struct.wined3d_matrix, %struct.wined3d_matrix* %14, i32 0, i32 1
  %16 = load float, float* %15, align 4
  %17 = fmul float %13, %16
  %18 = load %struct.wined3d_matrix*, %struct.wined3d_matrix** %5, align 8
  %19 = getelementptr inbounds %struct.wined3d_matrix, %struct.wined3d_matrix* %18, i32 0, i32 2
  %20 = load float, float* %19, align 4
  %21 = fmul float %17, %20
  store float %21, float* %8, align 4
  %22 = load float, float* %8, align 4
  %23 = fcmp oge float %22, 0.000000e+00
  br i1 %23, label %24, label %28

24:                                               ; preds = %2
  %25 = load float, float* %8, align 4
  %26 = load float, float* %6, align 4
  %27 = fadd float %26, %25
  store float %27, float* %6, align 4
  br label %32

28:                                               ; preds = %2
  %29 = load float, float* %8, align 4
  %30 = load float, float* %7, align 4
  %31 = fadd float %30, %29
  store float %31, float* %7, align 4
  br label %32

32:                                               ; preds = %28, %24
  %33 = load %struct.wined3d_matrix*, %struct.wined3d_matrix** %5, align 8
  %34 = getelementptr inbounds %struct.wined3d_matrix, %struct.wined3d_matrix* %33, i32 0, i32 3
  %35 = load float, float* %34, align 4
  %36 = load %struct.wined3d_matrix*, %struct.wined3d_matrix** %5, align 8
  %37 = getelementptr inbounds %struct.wined3d_matrix, %struct.wined3d_matrix* %36, i32 0, i32 4
  %38 = load float, float* %37, align 4
  %39 = fmul float %35, %38
  %40 = load %struct.wined3d_matrix*, %struct.wined3d_matrix** %5, align 8
  %41 = getelementptr inbounds %struct.wined3d_matrix, %struct.wined3d_matrix* %40, i32 0, i32 5
  %42 = load float, float* %41, align 4
  %43 = fmul float %39, %42
  store float %43, float* %8, align 4
  %44 = load float, float* %8, align 4
  %45 = fcmp oge float %44, 0.000000e+00
  br i1 %45, label %46, label %50

46:                                               ; preds = %32
  %47 = load float, float* %8, align 4
  %48 = load float, float* %6, align 4
  %49 = fadd float %48, %47
  store float %49, float* %6, align 4
  br label %54

50:                                               ; preds = %32
  %51 = load float, float* %8, align 4
  %52 = load float, float* %7, align 4
  %53 = fadd float %52, %51
  store float %53, float* %7, align 4
  br label %54

54:                                               ; preds = %50, %46
  %55 = load %struct.wined3d_matrix*, %struct.wined3d_matrix** %5, align 8
  %56 = getelementptr inbounds %struct.wined3d_matrix, %struct.wined3d_matrix* %55, i32 0, i32 6
  %57 = load float, float* %56, align 4
  %58 = load %struct.wined3d_matrix*, %struct.wined3d_matrix** %5, align 8
  %59 = getelementptr inbounds %struct.wined3d_matrix, %struct.wined3d_matrix* %58, i32 0, i32 7
  %60 = load float, float* %59, align 4
  %61 = fmul float %57, %60
  %62 = load %struct.wined3d_matrix*, %struct.wined3d_matrix** %5, align 8
  %63 = getelementptr inbounds %struct.wined3d_matrix, %struct.wined3d_matrix* %62, i32 0, i32 8
  %64 = load float, float* %63, align 4
  %65 = fmul float %61, %64
  store float %65, float* %8, align 4
  %66 = load float, float* %8, align 4
  %67 = fcmp oge float %66, 0.000000e+00
  br i1 %67, label %68, label %72

68:                                               ; preds = %54
  %69 = load float, float* %8, align 4
  %70 = load float, float* %6, align 4
  %71 = fadd float %70, %69
  store float %71, float* %6, align 4
  br label %76

72:                                               ; preds = %54
  %73 = load float, float* %8, align 4
  %74 = load float, float* %7, align 4
  %75 = fadd float %74, %73
  store float %75, float* %7, align 4
  br label %76

76:                                               ; preds = %72, %68
  %77 = load %struct.wined3d_matrix*, %struct.wined3d_matrix** %5, align 8
  %78 = getelementptr inbounds %struct.wined3d_matrix, %struct.wined3d_matrix* %77, i32 0, i32 6
  %79 = load float, float* %78, align 4
  %80 = fneg float %79
  %81 = load %struct.wined3d_matrix*, %struct.wined3d_matrix** %5, align 8
  %82 = getelementptr inbounds %struct.wined3d_matrix, %struct.wined3d_matrix* %81, i32 0, i32 1
  %83 = load float, float* %82, align 4
  %84 = fmul float %80, %83
  %85 = load %struct.wined3d_matrix*, %struct.wined3d_matrix** %5, align 8
  %86 = getelementptr inbounds %struct.wined3d_matrix, %struct.wined3d_matrix* %85, i32 0, i32 5
  %87 = load float, float* %86, align 4
  %88 = fmul float %84, %87
  store float %88, float* %8, align 4
  %89 = load float, float* %8, align 4
  %90 = fcmp oge float %89, 0.000000e+00
  br i1 %90, label %91, label %95

91:                                               ; preds = %76
  %92 = load float, float* %8, align 4
  %93 = load float, float* %6, align 4
  %94 = fadd float %93, %92
  store float %94, float* %6, align 4
  br label %99

95:                                               ; preds = %76
  %96 = load float, float* %8, align 4
  %97 = load float, float* %7, align 4
  %98 = fadd float %97, %96
  store float %98, float* %7, align 4
  br label %99

99:                                               ; preds = %95, %91
  %100 = load %struct.wined3d_matrix*, %struct.wined3d_matrix** %5, align 8
  %101 = getelementptr inbounds %struct.wined3d_matrix, %struct.wined3d_matrix* %100, i32 0, i32 3
  %102 = load float, float* %101, align 4
  %103 = fneg float %102
  %104 = load %struct.wined3d_matrix*, %struct.wined3d_matrix** %5, align 8
  %105 = getelementptr inbounds %struct.wined3d_matrix, %struct.wined3d_matrix* %104, i32 0, i32 7
  %106 = load float, float* %105, align 4
  %107 = fmul float %103, %106
  %108 = load %struct.wined3d_matrix*, %struct.wined3d_matrix** %5, align 8
  %109 = getelementptr inbounds %struct.wined3d_matrix, %struct.wined3d_matrix* %108, i32 0, i32 2
  %110 = load float, float* %109, align 4
  %111 = fmul float %107, %110
  store float %111, float* %8, align 4
  %112 = load float, float* %8, align 4
  %113 = fcmp oge float %112, 0.000000e+00
  br i1 %113, label %114, label %118

114:                                              ; preds = %99
  %115 = load float, float* %8, align 4
  %116 = load float, float* %6, align 4
  %117 = fadd float %116, %115
  store float %117, float* %6, align 4
  br label %122

118:                                              ; preds = %99
  %119 = load float, float* %8, align 4
  %120 = load float, float* %7, align 4
  %121 = fadd float %120, %119
  store float %121, float* %7, align 4
  br label %122

122:                                              ; preds = %118, %114
  %123 = load %struct.wined3d_matrix*, %struct.wined3d_matrix** %5, align 8
  %124 = getelementptr inbounds %struct.wined3d_matrix, %struct.wined3d_matrix* %123, i32 0, i32 0
  %125 = load float, float* %124, align 4
  %126 = fneg float %125
  %127 = load %struct.wined3d_matrix*, %struct.wined3d_matrix** %5, align 8
  %128 = getelementptr inbounds %struct.wined3d_matrix, %struct.wined3d_matrix* %127, i32 0, i32 4
  %129 = load float, float* %128, align 4
  %130 = fmul float %126, %129
  %131 = load %struct.wined3d_matrix*, %struct.wined3d_matrix** %5, align 8
  %132 = getelementptr inbounds %struct.wined3d_matrix, %struct.wined3d_matrix* %131, i32 0, i32 8
  %133 = load float, float* %132, align 4
  %134 = fmul float %130, %133
  store float %134, float* %8, align 4
  %135 = load float, float* %8, align 4
  %136 = fcmp oge float %135, 0.000000e+00
  br i1 %136, label %137, label %141

137:                                              ; preds = %122
  %138 = load float, float* %8, align 4
  %139 = load float, float* %6, align 4
  %140 = fadd float %139, %138
  store float %140, float* %6, align 4
  br label %145

141:                                              ; preds = %122
  %142 = load float, float* %8, align 4
  %143 = load float, float* %7, align 4
  %144 = fadd float %143, %142
  store float %144, float* %7, align 4
  br label %145

145:                                              ; preds = %141, %137
  %146 = load float, float* %6, align 4
  %147 = load float, float* %7, align 4
  %148 = fadd float %146, %147
  store float %148, float* %9, align 4
  %149 = load float, float* %9, align 4
  %150 = call float @llvm.fabs.f32(float %149)
  %151 = fcmp olt float %150, 0x3ABEF2D100000000
  br i1 %151, label %152, label %154

152:                                              ; preds = %145
  %153 = load i32, i32* @FALSE, align 4
  store i32 %153, i32* %3, align 4
  br label %327

154:                                              ; preds = %145
  %155 = load float, float* %9, align 4
  %156 = fdiv float 1.000000e+00, %155
  store float %156, float* %9, align 4
  %157 = load %struct.wined3d_matrix*, %struct.wined3d_matrix** %5, align 8
  %158 = getelementptr inbounds %struct.wined3d_matrix, %struct.wined3d_matrix* %157, i32 0, i32 1
  %159 = load float, float* %158, align 4
  %160 = load %struct.wined3d_matrix*, %struct.wined3d_matrix** %5, align 8
  %161 = getelementptr inbounds %struct.wined3d_matrix, %struct.wined3d_matrix* %160, i32 0, i32 2
  %162 = load float, float* %161, align 4
  %163 = fmul float %159, %162
  %164 = load %struct.wined3d_matrix*, %struct.wined3d_matrix** %5, align 8
  %165 = getelementptr inbounds %struct.wined3d_matrix, %struct.wined3d_matrix* %164, i32 0, i32 4
  %166 = load float, float* %165, align 4
  %167 = load %struct.wined3d_matrix*, %struct.wined3d_matrix** %5, align 8
  %168 = getelementptr inbounds %struct.wined3d_matrix, %struct.wined3d_matrix* %167, i32 0, i32 8
  %169 = load float, float* %168, align 4
  %170 = fmul float %166, %169
  %171 = fsub float %163, %170
  %172 = load float, float* %9, align 4
  %173 = fmul float %171, %172
  %174 = getelementptr inbounds %struct.wined3d_matrix, %struct.wined3d_matrix* %10, i32 0, i32 0
  store float %173, float* %174, align 4
  %175 = load %struct.wined3d_matrix*, %struct.wined3d_matrix** %5, align 8
  %176 = getelementptr inbounds %struct.wined3d_matrix, %struct.wined3d_matrix* %175, i32 0, i32 7
  %177 = load float, float* %176, align 4
  %178 = load %struct.wined3d_matrix*, %struct.wined3d_matrix** %5, align 8
  %179 = getelementptr inbounds %struct.wined3d_matrix, %struct.wined3d_matrix* %178, i32 0, i32 2
  %180 = load float, float* %179, align 4
  %181 = fmul float %177, %180
  %182 = load %struct.wined3d_matrix*, %struct.wined3d_matrix** %5, align 8
  %183 = getelementptr inbounds %struct.wined3d_matrix, %struct.wined3d_matrix* %182, i32 0, i32 4
  %184 = load float, float* %183, align 4
  %185 = load %struct.wined3d_matrix*, %struct.wined3d_matrix** %5, align 8
  %186 = getelementptr inbounds %struct.wined3d_matrix, %struct.wined3d_matrix* %185, i32 0, i32 5
  %187 = load float, float* %186, align 4
  %188 = fmul float %184, %187
  %189 = fsub float %181, %188
  %190 = fneg float %189
  %191 = load float, float* %9, align 4
  %192 = fmul float %190, %191
  %193 = getelementptr inbounds %struct.wined3d_matrix, %struct.wined3d_matrix* %10, i32 0, i32 7
  store float %192, float* %193, align 4
  %194 = load %struct.wined3d_matrix*, %struct.wined3d_matrix** %5, align 8
  %195 = getelementptr inbounds %struct.wined3d_matrix, %struct.wined3d_matrix* %194, i32 0, i32 7
  %196 = load float, float* %195, align 4
  %197 = load %struct.wined3d_matrix*, %struct.wined3d_matrix** %5, align 8
  %198 = getelementptr inbounds %struct.wined3d_matrix, %struct.wined3d_matrix* %197, i32 0, i32 8
  %199 = load float, float* %198, align 4
  %200 = fmul float %196, %199
  %201 = load %struct.wined3d_matrix*, %struct.wined3d_matrix** %5, align 8
  %202 = getelementptr inbounds %struct.wined3d_matrix, %struct.wined3d_matrix* %201, i32 0, i32 1
  %203 = load float, float* %202, align 4
  %204 = load %struct.wined3d_matrix*, %struct.wined3d_matrix** %5, align 8
  %205 = getelementptr inbounds %struct.wined3d_matrix, %struct.wined3d_matrix* %204, i32 0, i32 5
  %206 = load float, float* %205, align 4
  %207 = fmul float %203, %206
  %208 = fsub float %200, %207
  %209 = load float, float* %9, align 4
  %210 = fmul float %208, %209
  %211 = getelementptr inbounds %struct.wined3d_matrix, %struct.wined3d_matrix* %10, i32 0, i32 5
  store float %210, float* %211, align 4
  %212 = load %struct.wined3d_matrix*, %struct.wined3d_matrix** %5, align 8
  %213 = getelementptr inbounds %struct.wined3d_matrix, %struct.wined3d_matrix* %212, i32 0, i32 3
  %214 = load float, float* %213, align 4
  %215 = load %struct.wined3d_matrix*, %struct.wined3d_matrix** %5, align 8
  %216 = getelementptr inbounds %struct.wined3d_matrix, %struct.wined3d_matrix* %215, i32 0, i32 2
  %217 = load float, float* %216, align 4
  %218 = fmul float %214, %217
  %219 = load %struct.wined3d_matrix*, %struct.wined3d_matrix** %5, align 8
  %220 = getelementptr inbounds %struct.wined3d_matrix, %struct.wined3d_matrix* %219, i32 0, i32 6
  %221 = load float, float* %220, align 4
  %222 = load %struct.wined3d_matrix*, %struct.wined3d_matrix** %5, align 8
  %223 = getelementptr inbounds %struct.wined3d_matrix, %struct.wined3d_matrix* %222, i32 0, i32 8
  %224 = load float, float* %223, align 4
  %225 = fmul float %221, %224
  %226 = fsub float %218, %225
  %227 = fneg float %226
  %228 = load float, float* %9, align 4
  %229 = fmul float %227, %228
  %230 = getelementptr inbounds %struct.wined3d_matrix, %struct.wined3d_matrix* %10, i32 0, i32 3
  store float %229, float* %230, align 4
  %231 = load %struct.wined3d_matrix*, %struct.wined3d_matrix** %5, align 8
  %232 = getelementptr inbounds %struct.wined3d_matrix, %struct.wined3d_matrix* %231, i32 0, i32 0
  %233 = load float, float* %232, align 4
  %234 = load %struct.wined3d_matrix*, %struct.wined3d_matrix** %5, align 8
  %235 = getelementptr inbounds %struct.wined3d_matrix, %struct.wined3d_matrix* %234, i32 0, i32 2
  %236 = load float, float* %235, align 4
  %237 = fmul float %233, %236
  %238 = load %struct.wined3d_matrix*, %struct.wined3d_matrix** %5, align 8
  %239 = getelementptr inbounds %struct.wined3d_matrix, %struct.wined3d_matrix* %238, i32 0, i32 6
  %240 = load float, float* %239, align 4
  %241 = load %struct.wined3d_matrix*, %struct.wined3d_matrix** %5, align 8
  %242 = getelementptr inbounds %struct.wined3d_matrix, %struct.wined3d_matrix* %241, i32 0, i32 5
  %243 = load float, float* %242, align 4
  %244 = fmul float %240, %243
  %245 = fsub float %237, %244
  %246 = load float, float* %9, align 4
  %247 = fmul float %245, %246
  %248 = getelementptr inbounds %struct.wined3d_matrix, %struct.wined3d_matrix* %10, i32 0, i32 1
  store float %247, float* %248, align 4
  %249 = load %struct.wined3d_matrix*, %struct.wined3d_matrix** %5, align 8
  %250 = getelementptr inbounds %struct.wined3d_matrix, %struct.wined3d_matrix* %249, i32 0, i32 0
  %251 = load float, float* %250, align 4
  %252 = load %struct.wined3d_matrix*, %struct.wined3d_matrix** %5, align 8
  %253 = getelementptr inbounds %struct.wined3d_matrix, %struct.wined3d_matrix* %252, i32 0, i32 8
  %254 = load float, float* %253, align 4
  %255 = fmul float %251, %254
  %256 = load %struct.wined3d_matrix*, %struct.wined3d_matrix** %5, align 8
  %257 = getelementptr inbounds %struct.wined3d_matrix, %struct.wined3d_matrix* %256, i32 0, i32 3
  %258 = load float, float* %257, align 4
  %259 = load %struct.wined3d_matrix*, %struct.wined3d_matrix** %5, align 8
  %260 = getelementptr inbounds %struct.wined3d_matrix, %struct.wined3d_matrix* %259, i32 0, i32 5
  %261 = load float, float* %260, align 4
  %262 = fmul float %258, %261
  %263 = fsub float %255, %262
  %264 = fneg float %263
  %265 = load float, float* %9, align 4
  %266 = fmul float %264, %265
  %267 = getelementptr inbounds %struct.wined3d_matrix, %struct.wined3d_matrix* %10, i32 0, i32 8
  store float %266, float* %267, align 4
  %268 = load %struct.wined3d_matrix*, %struct.wined3d_matrix** %5, align 8
  %269 = getelementptr inbounds %struct.wined3d_matrix, %struct.wined3d_matrix* %268, i32 0, i32 3
  %270 = load float, float* %269, align 4
  %271 = load %struct.wined3d_matrix*, %struct.wined3d_matrix** %5, align 8
  %272 = getelementptr inbounds %struct.wined3d_matrix, %struct.wined3d_matrix* %271, i32 0, i32 4
  %273 = load float, float* %272, align 4
  %274 = fmul float %270, %273
  %275 = load %struct.wined3d_matrix*, %struct.wined3d_matrix** %5, align 8
  %276 = getelementptr inbounds %struct.wined3d_matrix, %struct.wined3d_matrix* %275, i32 0, i32 6
  %277 = load float, float* %276, align 4
  %278 = load %struct.wined3d_matrix*, %struct.wined3d_matrix** %5, align 8
  %279 = getelementptr inbounds %struct.wined3d_matrix, %struct.wined3d_matrix* %278, i32 0, i32 1
  %280 = load float, float* %279, align 4
  %281 = fmul float %277, %280
  %282 = fsub float %274, %281
  %283 = load float, float* %9, align 4
  %284 = fmul float %282, %283
  %285 = getelementptr inbounds %struct.wined3d_matrix, %struct.wined3d_matrix* %10, i32 0, i32 6
  store float %284, float* %285, align 4
  %286 = load %struct.wined3d_matrix*, %struct.wined3d_matrix** %5, align 8
  %287 = getelementptr inbounds %struct.wined3d_matrix, %struct.wined3d_matrix* %286, i32 0, i32 0
  %288 = load float, float* %287, align 4
  %289 = load %struct.wined3d_matrix*, %struct.wined3d_matrix** %5, align 8
  %290 = getelementptr inbounds %struct.wined3d_matrix, %struct.wined3d_matrix* %289, i32 0, i32 4
  %291 = load float, float* %290, align 4
  %292 = fmul float %288, %291
  %293 = load %struct.wined3d_matrix*, %struct.wined3d_matrix** %5, align 8
  %294 = getelementptr inbounds %struct.wined3d_matrix, %struct.wined3d_matrix* %293, i32 0, i32 6
  %295 = load float, float* %294, align 4
  %296 = load %struct.wined3d_matrix*, %struct.wined3d_matrix** %5, align 8
  %297 = getelementptr inbounds %struct.wined3d_matrix, %struct.wined3d_matrix* %296, i32 0, i32 7
  %298 = load float, float* %297, align 4
  %299 = fmul float %295, %298
  %300 = fsub float %292, %299
  %301 = fneg float %300
  %302 = load float, float* %9, align 4
  %303 = fmul float %301, %302
  %304 = getelementptr inbounds %struct.wined3d_matrix, %struct.wined3d_matrix* %10, i32 0, i32 4
  store float %303, float* %304, align 4
  %305 = load %struct.wined3d_matrix*, %struct.wined3d_matrix** %5, align 8
  %306 = getelementptr inbounds %struct.wined3d_matrix, %struct.wined3d_matrix* %305, i32 0, i32 0
  %307 = load float, float* %306, align 4
  %308 = load %struct.wined3d_matrix*, %struct.wined3d_matrix** %5, align 8
  %309 = getelementptr inbounds %struct.wined3d_matrix, %struct.wined3d_matrix* %308, i32 0, i32 1
  %310 = load float, float* %309, align 4
  %311 = fmul float %307, %310
  %312 = load %struct.wined3d_matrix*, %struct.wined3d_matrix** %5, align 8
  %313 = getelementptr inbounds %struct.wined3d_matrix, %struct.wined3d_matrix* %312, i32 0, i32 3
  %314 = load float, float* %313, align 4
  %315 = load %struct.wined3d_matrix*, %struct.wined3d_matrix** %5, align 8
  %316 = getelementptr inbounds %struct.wined3d_matrix, %struct.wined3d_matrix* %315, i32 0, i32 7
  %317 = load float, float* %316, align 4
  %318 = fmul float %314, %317
  %319 = fsub float %311, %318
  %320 = load float, float* %9, align 4
  %321 = fmul float %319, %320
  %322 = getelementptr inbounds %struct.wined3d_matrix, %struct.wined3d_matrix* %10, i32 0, i32 2
  store float %321, float* %322, align 4
  %323 = load %struct.wined3d_matrix*, %struct.wined3d_matrix** %4, align 8
  %324 = bitcast %struct.wined3d_matrix* %323 to i8*
  %325 = bitcast %struct.wined3d_matrix* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %324, i8* align 4 %325, i64 36, i1 false)
  %326 = load i32, i32* @TRUE, align 4
  store i32 %326, i32* %3, align 4
  br label %327

327:                                              ; preds = %154, %152
  %328 = load i32, i32* %3, align 4
  ret i32 %328
}

; Function Attrs: nounwind readnone speculatable willreturn
declare float @llvm.fabs.f32(float) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
