; ModuleID = '/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_s_lapack.c_slasv2_.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_s_lapack.c_slasv2_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@slasv2_.a = internal global float 0.000000e+00, align 4
@slasv2_.d__ = internal global float 0.000000e+00, align 4
@slasv2_.l = internal global float 0.000000e+00, align 4
@slasv2_.m = internal global float 0.000000e+00, align 4
@slasv2_.r__ = internal global float 0.000000e+00, align 4
@slasv2_.s = internal global float 0.000000e+00, align 4
@slasv2_.t = internal global float 0.000000e+00, align 4
@slasv2_.fa = internal global float 0.000000e+00, align 4
@slasv2_.ga = internal global float 0.000000e+00, align 4
@slasv2_.ha = internal global float 0.000000e+00, align 4
@slasv2_.ft = internal global float 0.000000e+00, align 4
@slasv2_.gt = internal global float 0.000000e+00, align 4
@slasv2_.ht = internal global float 0.000000e+00, align 4
@slasv2_.mm = internal global float 0.000000e+00, align 4
@slasv2_.tt = internal global float 0.000000e+00, align 4
@slasv2_.clt = internal global float 0.000000e+00, align 4
@slasv2_.crt = internal global float 0.000000e+00, align 4
@slasv2_.slt = internal global float 0.000000e+00, align 4
@slasv2_.srt = internal global float 0.000000e+00, align 4
@slasv2_.pmax = internal global i32 0, align 4
@slasv2_.temp = internal global float 0.000000e+00, align 4
@slasv2_.swap = internal global i32 0, align 4
@slasv2_.tsign = internal global float 0.000000e+00, align 4
@slasv2_.gasmal = internal global i32 0, align 4
@TRUE_ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"EPS\00", align 1
@FALSE_ = common dso_local global i32 0, align 4
@c_b3178 = common dso_local global float 0.000000e+00, align 4
@c_b15 = common dso_local global float 0.000000e+00, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @slasv2_(float* %0, float* %1, float* %2, float* %3, float* %4, float* %5, float* %6, float* %7, float* %8) #0 {
  %10 = alloca float*, align 8
  %11 = alloca float*, align 8
  %12 = alloca float*, align 8
  %13 = alloca float*, align 8
  %14 = alloca float*, align 8
  %15 = alloca float*, align 8
  %16 = alloca float*, align 8
  %17 = alloca float*, align 8
  %18 = alloca float*, align 8
  %19 = alloca float, align 4
  store float* %0, float** %10, align 8
  store float* %1, float** %11, align 8
  store float* %2, float** %12, align 8
  store float* %3, float** %13, align 8
  store float* %4, float** %14, align 8
  store float* %5, float** %15, align 8
  store float* %6, float** %16, align 8
  store float* %7, float** %17, align 8
  store float* %8, float** %18, align 8
  %20 = load float*, float** %10, align 8
  %21 = load float, float* %20, align 4
  store float %21, float* @slasv2_.ft, align 4
  %22 = load float, float* @slasv2_.ft, align 4
  %23 = call float @dabs(float %22)
  store float %23, float* @slasv2_.fa, align 4
  %24 = load float*, float** %12, align 8
  %25 = load float, float* %24, align 4
  store float %25, float* @slasv2_.ht, align 4
  %26 = load float*, float** %12, align 8
  %27 = load float, float* %26, align 4
  %28 = call float @dabs(float %27)
  store float %28, float* @slasv2_.ha, align 4
  store i32 1, i32* @slasv2_.pmax, align 4
  %29 = load float, float* @slasv2_.ha, align 4
  %30 = load float, float* @slasv2_.fa, align 4
  %31 = fcmp ogt float %29, %30
  %32 = zext i1 %31 to i32
  store i32 %32, i32* @slasv2_.swap, align 4
  %33 = load i32, i32* @slasv2_.swap, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %9
  store i32 3, i32* @slasv2_.pmax, align 4
  %36 = load float, float* @slasv2_.ft, align 4
  store float %36, float* @slasv2_.temp, align 4
  %37 = load float, float* @slasv2_.ht, align 4
  store float %37, float* @slasv2_.ft, align 4
  %38 = load float, float* @slasv2_.temp, align 4
  store float %38, float* @slasv2_.ht, align 4
  %39 = load float, float* @slasv2_.fa, align 4
  store float %39, float* @slasv2_.temp, align 4
  %40 = load float, float* @slasv2_.ha, align 4
  store float %40, float* @slasv2_.fa, align 4
  %41 = load float, float* @slasv2_.temp, align 4
  store float %41, float* @slasv2_.ha, align 4
  br label %42

42:                                               ; preds = %35, %9
  %43 = load float*, float** %11, align 8
  %44 = load float, float* %43, align 4
  store float %44, float* @slasv2_.gt, align 4
  %45 = load float, float* @slasv2_.gt, align 4
  %46 = call float @dabs(float %45)
  store float %46, float* @slasv2_.ga, align 4
  %47 = load float, float* @slasv2_.ga, align 4
  %48 = fcmp oeq float %47, 0.000000e+00
  br i1 %48, label %49, label %54

49:                                               ; preds = %42
  %50 = load float, float* @slasv2_.ha, align 4
  %51 = load float*, float** %13, align 8
  store float %50, float* %51, align 4
  %52 = load float, float* @slasv2_.fa, align 4
  %53 = load float*, float** %14, align 8
  store float %52, float* %53, align 4
  store float 1.000000e+00, float* @slasv2_.clt, align 4
  store float 1.000000e+00, float* @slasv2_.crt, align 4
  store float 0.000000e+00, float* @slasv2_.slt, align 4
  store float 0.000000e+00, float* @slasv2_.srt, align 4
  br label %208

54:                                               ; preds = %42
  %55 = load i32, i32* @TRUE_, align 4
  store i32 %55, i32* @slasv2_.gasmal, align 4
  %56 = load float, float* @slasv2_.ga, align 4
  %57 = load float, float* @slasv2_.fa, align 4
  %58 = fcmp ogt float %56, %57
  br i1 %58, label %59, label %93

59:                                               ; preds = %54
  store i32 2, i32* @slasv2_.pmax, align 4
  %60 = load float, float* @slasv2_.fa, align 4
  %61 = load float, float* @slasv2_.ga, align 4
  %62 = fdiv float %60, %61
  %63 = call float @slamch_(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %64 = fcmp olt float %62, %63
  br i1 %64, label %65, label %92

65:                                               ; preds = %59
  %66 = load i32, i32* @FALSE_, align 4
  store i32 %66, i32* @slasv2_.gasmal, align 4
  %67 = load float, float* @slasv2_.ga, align 4
  %68 = load float*, float** %14, align 8
  store float %67, float* %68, align 4
  %69 = load float, float* @slasv2_.ha, align 4
  %70 = fcmp ogt float %69, 1.000000e+00
  br i1 %70, label %71, label %78

71:                                               ; preds = %65
  %72 = load float, float* @slasv2_.fa, align 4
  %73 = load float, float* @slasv2_.ga, align 4
  %74 = load float, float* @slasv2_.ha, align 4
  %75 = fdiv float %73, %74
  %76 = fdiv float %72, %75
  %77 = load float*, float** %13, align 8
  store float %76, float* %77, align 4
  br label %85

78:                                               ; preds = %65
  %79 = load float, float* @slasv2_.fa, align 4
  %80 = load float, float* @slasv2_.ga, align 4
  %81 = fdiv float %79, %80
  %82 = load float, float* @slasv2_.ha, align 4
  %83 = fmul float %81, %82
  %84 = load float*, float** %13, align 8
  store float %83, float* %84, align 4
  br label %85

85:                                               ; preds = %78, %71
  store float 1.000000e+00, float* @slasv2_.clt, align 4
  %86 = load float, float* @slasv2_.ht, align 4
  %87 = load float, float* @slasv2_.gt, align 4
  %88 = fdiv float %86, %87
  store float %88, float* @slasv2_.slt, align 4
  store float 1.000000e+00, float* @slasv2_.srt, align 4
  %89 = load float, float* @slasv2_.ft, align 4
  %90 = load float, float* @slasv2_.gt, align 4
  %91 = fdiv float %89, %90
  store float %91, float* @slasv2_.crt, align 4
  br label %92

92:                                               ; preds = %85, %59
  br label %93

93:                                               ; preds = %92, %54
  %94 = load i32, i32* @slasv2_.gasmal, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %207

96:                                               ; preds = %93
  %97 = load float, float* @slasv2_.fa, align 4
  %98 = load float, float* @slasv2_.ha, align 4
  %99 = fsub float %97, %98
  store float %99, float* @slasv2_.d__, align 4
  %100 = load float, float* @slasv2_.d__, align 4
  %101 = load float, float* @slasv2_.fa, align 4
  %102 = fcmp oeq float %100, %101
  br i1 %102, label %103, label %104

103:                                              ; preds = %96
  store float 1.000000e+00, float* @slasv2_.l, align 4
  br label %108

104:                                              ; preds = %96
  %105 = load float, float* @slasv2_.d__, align 4
  %106 = load float, float* @slasv2_.fa, align 4
  %107 = fdiv float %105, %106
  store float %107, float* @slasv2_.l, align 4
  br label %108

108:                                              ; preds = %104, %103
  %109 = load float, float* @slasv2_.gt, align 4
  %110 = load float, float* @slasv2_.ft, align 4
  %111 = fdiv float %109, %110
  store float %111, float* @slasv2_.m, align 4
  %112 = load float, float* @slasv2_.l, align 4
  %113 = fsub float 2.000000e+00, %112
  store float %113, float* @slasv2_.t, align 4
  %114 = load float, float* @slasv2_.m, align 4
  %115 = load float, float* @slasv2_.m, align 4
  %116 = fmul float %114, %115
  store float %116, float* @slasv2_.mm, align 4
  %117 = load float, float* @slasv2_.t, align 4
  %118 = load float, float* @slasv2_.t, align 4
  %119 = fmul float %117, %118
  store float %119, float* @slasv2_.tt, align 4
  %120 = load float, float* @slasv2_.tt, align 4
  %121 = load float, float* @slasv2_.mm, align 4
  %122 = fadd float %120, %121
  %123 = call float @sqrt(float %122)
  store float %123, float* @slasv2_.s, align 4
  %124 = load float, float* @slasv2_.l, align 4
  %125 = fcmp oeq float %124, 0.000000e+00
  br i1 %125, label %126, label %129

126:                                              ; preds = %108
  %127 = load float, float* @slasv2_.m, align 4
  %128 = call float @dabs(float %127)
  store float %128, float* @slasv2_.r__, align 4
  br label %136

129:                                              ; preds = %108
  %130 = load float, float* @slasv2_.l, align 4
  %131 = load float, float* @slasv2_.l, align 4
  %132 = fmul float %130, %131
  %133 = load float, float* @slasv2_.mm, align 4
  %134 = fadd float %132, %133
  %135 = call float @sqrt(float %134)
  store float %135, float* @slasv2_.r__, align 4
  br label %136

136:                                              ; preds = %129, %126
  %137 = load float, float* @slasv2_.s, align 4
  %138 = load float, float* @slasv2_.r__, align 4
  %139 = fadd float %137, %138
  %140 = fmul float %139, 5.000000e-01
  store float %140, float* @slasv2_.a, align 4
  %141 = load float, float* @slasv2_.ha, align 4
  %142 = load float, float* @slasv2_.a, align 4
  %143 = fdiv float %141, %142
  %144 = load float*, float** %13, align 8
  store float %143, float* %144, align 4
  %145 = load float, float* @slasv2_.fa, align 4
  %146 = load float, float* @slasv2_.a, align 4
  %147 = fmul float %145, %146
  %148 = load float*, float** %14, align 8
  store float %147, float* %148, align 4
  %149 = load float, float* @slasv2_.mm, align 4
  %150 = fcmp oeq float %149, 0.000000e+00
  br i1 %150, label %151, label %167

151:                                              ; preds = %136
  %152 = load float, float* @slasv2_.l, align 4
  %153 = fcmp oeq float %152, 0.000000e+00
  br i1 %153, label %154, label %158

154:                                              ; preds = %151
  %155 = call float @r_sign(float* @c_b3178, float* @slasv2_.ft)
  %156 = call float @r_sign(float* @c_b15, float* @slasv2_.gt)
  %157 = fmul float %155, %156
  store float %157, float* @slasv2_.t, align 4
  br label %166

158:                                              ; preds = %151
  %159 = load float, float* @slasv2_.gt, align 4
  %160 = call float @r_sign(float* @slasv2_.d__, float* @slasv2_.ft)
  %161 = fdiv float %159, %160
  %162 = load float, float* @slasv2_.m, align 4
  %163 = load float, float* @slasv2_.t, align 4
  %164 = fdiv float %162, %163
  %165 = fadd float %161, %164
  store float %165, float* @slasv2_.t, align 4
  br label %166

166:                                              ; preds = %158, %154
  br label %182

167:                                              ; preds = %136
  %168 = load float, float* @slasv2_.m, align 4
  %169 = load float, float* @slasv2_.s, align 4
  %170 = load float, float* @slasv2_.t, align 4
  %171 = fadd float %169, %170
  %172 = fdiv float %168, %171
  %173 = load float, float* @slasv2_.m, align 4
  %174 = load float, float* @slasv2_.r__, align 4
  %175 = load float, float* @slasv2_.l, align 4
  %176 = fadd float %174, %175
  %177 = fdiv float %173, %176
  %178 = fadd float %172, %177
  %179 = load float, float* @slasv2_.a, align 4
  %180 = fadd float %179, 1.000000e+00
  %181 = fmul float %178, %180
  store float %181, float* @slasv2_.t, align 4
  br label %182

182:                                              ; preds = %167, %166
  %183 = load float, float* @slasv2_.t, align 4
  %184 = load float, float* @slasv2_.t, align 4
  %185 = fmul float %183, %184
  %186 = fadd float %185, 4.000000e+00
  %187 = call float @sqrt(float %186)
  store float %187, float* @slasv2_.l, align 4
  %188 = load float, float* @slasv2_.l, align 4
  %189 = fdiv float 2.000000e+00, %188
  store float %189, float* @slasv2_.crt, align 4
  %190 = load float, float* @slasv2_.t, align 4
  %191 = load float, float* @slasv2_.l, align 4
  %192 = fdiv float %190, %191
  store float %192, float* @slasv2_.srt, align 4
  %193 = load float, float* @slasv2_.crt, align 4
  %194 = load float, float* @slasv2_.srt, align 4
  %195 = load float, float* @slasv2_.m, align 4
  %196 = fmul float %194, %195
  %197 = fadd float %193, %196
  %198 = load float, float* @slasv2_.a, align 4
  %199 = fdiv float %197, %198
  store float %199, float* @slasv2_.clt, align 4
  %200 = load float, float* @slasv2_.ht, align 4
  %201 = load float, float* @slasv2_.ft, align 4
  %202 = fdiv float %200, %201
  %203 = load float, float* @slasv2_.srt, align 4
  %204 = fmul float %202, %203
  %205 = load float, float* @slasv2_.a, align 4
  %206 = fdiv float %204, %205
  store float %206, float* @slasv2_.slt, align 4
  br label %207

207:                                              ; preds = %182, %93
  br label %208

208:                                              ; preds = %207, %49
  %209 = load i32, i32* @slasv2_.swap, align 4
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %220

211:                                              ; preds = %208
  %212 = load float, float* @slasv2_.srt, align 4
  %213 = load float*, float** %18, align 8
  store float %212, float* %213, align 4
  %214 = load float, float* @slasv2_.crt, align 4
  %215 = load float*, float** %17, align 8
  store float %214, float* %215, align 4
  %216 = load float, float* @slasv2_.slt, align 4
  %217 = load float*, float** %16, align 8
  store float %216, float* %217, align 4
  %218 = load float, float* @slasv2_.clt, align 4
  %219 = load float*, float** %15, align 8
  store float %218, float* %219, align 4
  br label %229

220:                                              ; preds = %208
  %221 = load float, float* @slasv2_.clt, align 4
  %222 = load float*, float** %18, align 8
  store float %221, float* %222, align 4
  %223 = load float, float* @slasv2_.slt, align 4
  %224 = load float*, float** %17, align 8
  store float %223, float* %224, align 4
  %225 = load float, float* @slasv2_.crt, align 4
  %226 = load float*, float** %16, align 8
  store float %225, float* %226, align 4
  %227 = load float, float* @slasv2_.srt, align 4
  %228 = load float*, float** %15, align 8
  store float %227, float* %228, align 4
  br label %229

229:                                              ; preds = %220, %211
  %230 = load i32, i32* @slasv2_.pmax, align 4
  %231 = icmp eq i32 %230, 1
  br i1 %231, label %232, label %241

232:                                              ; preds = %229
  %233 = load float*, float** %16, align 8
  %234 = call float @r_sign(float* @c_b15, float* %233)
  %235 = load float*, float** %18, align 8
  %236 = call float @r_sign(float* @c_b15, float* %235)
  %237 = fmul float %234, %236
  %238 = load float*, float** %10, align 8
  %239 = call float @r_sign(float* @c_b15, float* %238)
  %240 = fmul float %237, %239
  store float %240, float* @slasv2_.tsign, align 4
  br label %241

241:                                              ; preds = %232, %229
  %242 = load i32, i32* @slasv2_.pmax, align 4
  %243 = icmp eq i32 %242, 2
  br i1 %243, label %244, label %253

244:                                              ; preds = %241
  %245 = load float*, float** %15, align 8
  %246 = call float @r_sign(float* @c_b15, float* %245)
  %247 = load float*, float** %18, align 8
  %248 = call float @r_sign(float* @c_b15, float* %247)
  %249 = fmul float %246, %248
  %250 = load float*, float** %11, align 8
  %251 = call float @r_sign(float* @c_b15, float* %250)
  %252 = fmul float %249, %251
  store float %252, float* @slasv2_.tsign, align 4
  br label %253

253:                                              ; preds = %244, %241
  %254 = load i32, i32* @slasv2_.pmax, align 4
  %255 = icmp eq i32 %254, 3
  br i1 %255, label %256, label %265

256:                                              ; preds = %253
  %257 = load float*, float** %15, align 8
  %258 = call float @r_sign(float* @c_b15, float* %257)
  %259 = load float*, float** %17, align 8
  %260 = call float @r_sign(float* @c_b15, float* %259)
  %261 = fmul float %258, %260
  %262 = load float*, float** %12, align 8
  %263 = call float @r_sign(float* @c_b15, float* %262)
  %264 = fmul float %261, %263
  store float %264, float* @slasv2_.tsign, align 4
  br label %265

265:                                              ; preds = %256, %253
  %266 = load float*, float** %14, align 8
  %267 = call float @r_sign(float* %266, float* @slasv2_.tsign)
  %268 = load float*, float** %14, align 8
  store float %267, float* %268, align 4
  %269 = load float, float* @slasv2_.tsign, align 4
  %270 = load float*, float** %10, align 8
  %271 = call float @r_sign(float* @c_b15, float* %270)
  %272 = fmul float %269, %271
  %273 = load float*, float** %12, align 8
  %274 = call float @r_sign(float* @c_b15, float* %273)
  %275 = fmul float %272, %274
  store float %275, float* %19, align 4
  %276 = load float*, float** %13, align 8
  %277 = call float @r_sign(float* %276, float* %19)
  %278 = load float*, float** %13, align 8
  store float %277, float* %278, align 4
  ret i32 0
}

declare dso_local float @dabs(float) #1

declare dso_local float @slamch_(i8*) #1

declare dso_local float @sqrt(float) #1

declare dso_local float @r_sign(float*, float*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
