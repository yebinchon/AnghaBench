; ModuleID = '/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_xform.c_gl_xform_points_3fv.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_xform.c_gl_xform_points_3fv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gl_xform_points_3fv(i64 %0, [4 x float]* %1, float* %2, [3 x float]* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca [4 x float]*, align 8
  %7 = alloca float*, align 8
  %8 = alloca [3 x float]*, align 8
  %9 = alloca i64, align 8
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  %17 = alloca float, align 4
  %18 = alloca float, align 4
  %19 = alloca float, align 4
  %20 = alloca float, align 4
  %21 = alloca i64, align 8
  %22 = alloca float, align 4
  %23 = alloca float, align 4
  %24 = alloca float, align 4
  %25 = alloca float, align 4
  %26 = alloca float, align 4
  %27 = alloca float, align 4
  %28 = alloca float, align 4
  %29 = alloca float, align 4
  %30 = alloca float, align 4
  %31 = alloca float, align 4
  %32 = alloca float, align 4
  %33 = alloca float, align 4
  %34 = alloca float, align 4
  %35 = alloca float, align 4
  store i64 %0, i64* %5, align 8
  store [4 x float]* %1, [4 x float]** %6, align 8
  store float* %2, float** %7, align 8
  store [3 x float]* %3, [3 x float]** %8, align 8
  %36 = load float*, float** %7, align 8
  %37 = getelementptr inbounds float, float* %36, i64 0
  %38 = load float, float* %37, align 4
  store float %38, float* %10, align 4
  %39 = load float*, float** %7, align 8
  %40 = getelementptr inbounds float, float* %39, i64 4
  %41 = load float, float* %40, align 4
  store float %41, float* %11, align 4
  %42 = load float*, float** %7, align 8
  %43 = getelementptr inbounds float, float* %42, i64 8
  %44 = load float, float* %43, align 4
  store float %44, float* %12, align 4
  %45 = load float*, float** %7, align 8
  %46 = getelementptr inbounds float, float* %45, i64 12
  %47 = load float, float* %46, align 4
  store float %47, float* %13, align 4
  %48 = load float*, float** %7, align 8
  %49 = getelementptr inbounds float, float* %48, i64 1
  %50 = load float, float* %49, align 4
  store float %50, float* %14, align 4
  %51 = load float*, float** %7, align 8
  %52 = getelementptr inbounds float, float* %51, i64 5
  %53 = load float, float* %52, align 4
  store float %53, float* %15, align 4
  %54 = load float*, float** %7, align 8
  %55 = getelementptr inbounds float, float* %54, i64 9
  %56 = load float, float* %55, align 4
  store float %56, float* %16, align 4
  %57 = load float*, float** %7, align 8
  %58 = getelementptr inbounds float, float* %57, i64 13
  %59 = load float, float* %58, align 4
  store float %59, float* %17, align 4
  store i64 0, i64* %9, align 8
  br label %60

60:                                               ; preds = %114, %4
  %61 = load i64, i64* %9, align 8
  %62 = load i64, i64* %5, align 8
  %63 = icmp ult i64 %61, %62
  br i1 %63, label %64, label %117

64:                                               ; preds = %60
  %65 = load [3 x float]*, [3 x float]** %8, align 8
  %66 = load i64, i64* %9, align 8
  %67 = getelementptr inbounds [3 x float], [3 x float]* %65, i64 %66
  %68 = getelementptr inbounds [3 x float], [3 x float]* %67, i64 0, i64 0
  %69 = load float, float* %68, align 4
  store float %69, float* %18, align 4
  %70 = load [3 x float]*, [3 x float]** %8, align 8
  %71 = load i64, i64* %9, align 8
  %72 = getelementptr inbounds [3 x float], [3 x float]* %70, i64 %71
  %73 = getelementptr inbounds [3 x float], [3 x float]* %72, i64 0, i64 1
  %74 = load float, float* %73, align 4
  store float %74, float* %19, align 4
  %75 = load [3 x float]*, [3 x float]** %8, align 8
  %76 = load i64, i64* %9, align 8
  %77 = getelementptr inbounds [3 x float], [3 x float]* %75, i64 %76
  %78 = getelementptr inbounds [3 x float], [3 x float]* %77, i64 0, i64 2
  %79 = load float, float* %78, align 4
  store float %79, float* %20, align 4
  %80 = load float, float* %10, align 4
  %81 = load float, float* %18, align 4
  %82 = fmul float %80, %81
  %83 = load float, float* %11, align 4
  %84 = load float, float* %19, align 4
  %85 = fmul float %83, %84
  %86 = fadd float %82, %85
  %87 = load float, float* %12, align 4
  %88 = load float, float* %20, align 4
  %89 = fmul float %87, %88
  %90 = fadd float %86, %89
  %91 = load float, float* %13, align 4
  %92 = fadd float %90, %91
  %93 = load [4 x float]*, [4 x float]** %6, align 8
  %94 = load i64, i64* %9, align 8
  %95 = getelementptr inbounds [4 x float], [4 x float]* %93, i64 %94
  %96 = getelementptr inbounds [4 x float], [4 x float]* %95, i64 0, i64 0
  store float %92, float* %96, align 4
  %97 = load float, float* %14, align 4
  %98 = load float, float* %18, align 4
  %99 = fmul float %97, %98
  %100 = load float, float* %15, align 4
  %101 = load float, float* %19, align 4
  %102 = fmul float %100, %101
  %103 = fadd float %99, %102
  %104 = load float, float* %16, align 4
  %105 = load float, float* %20, align 4
  %106 = fmul float %104, %105
  %107 = fadd float %103, %106
  %108 = load float, float* %17, align 4
  %109 = fadd float %107, %108
  %110 = load [4 x float]*, [4 x float]** %6, align 8
  %111 = load i64, i64* %9, align 8
  %112 = getelementptr inbounds [4 x float], [4 x float]* %110, i64 %111
  %113 = getelementptr inbounds [4 x float], [4 x float]* %112, i64 0, i64 1
  store float %109, float* %113, align 4
  br label %114

114:                                              ; preds = %64
  %115 = load i64, i64* %9, align 8
  %116 = add i64 %115, 1
  store i64 %116, i64* %9, align 8
  br label %60

117:                                              ; preds = %60
  %118 = load float*, float** %7, align 8
  %119 = getelementptr inbounds float, float* %118, i64 2
  %120 = load float, float* %119, align 4
  store float %120, float* %22, align 4
  %121 = load float*, float** %7, align 8
  %122 = getelementptr inbounds float, float* %121, i64 6
  %123 = load float, float* %122, align 4
  store float %123, float* %23, align 4
  %124 = load float*, float** %7, align 8
  %125 = getelementptr inbounds float, float* %124, i64 10
  %126 = load float, float* %125, align 4
  store float %126, float* %24, align 4
  %127 = load float*, float** %7, align 8
  %128 = getelementptr inbounds float, float* %127, i64 14
  %129 = load float, float* %128, align 4
  store float %129, float* %25, align 4
  %130 = load float*, float** %7, align 8
  %131 = getelementptr inbounds float, float* %130, i64 3
  %132 = load float, float* %131, align 4
  store float %132, float* %26, align 4
  %133 = load float*, float** %7, align 8
  %134 = getelementptr inbounds float, float* %133, i64 7
  %135 = load float, float* %134, align 4
  store float %135, float* %27, align 4
  %136 = load float*, float** %7, align 8
  %137 = getelementptr inbounds float, float* %136, i64 11
  %138 = load float, float* %137, align 4
  store float %138, float* %28, align 4
  %139 = load float*, float** %7, align 8
  %140 = getelementptr inbounds float, float* %139, i64 15
  %141 = load float, float* %140, align 4
  store float %141, float* %29, align 4
  %142 = load float, float* %26, align 4
  %143 = fcmp oeq float %142, 0.000000e+00
  br i1 %143, label %144, label %199

144:                                              ; preds = %117
  %145 = load float, float* %27, align 4
  %146 = fcmp oeq float %145, 0.000000e+00
  br i1 %146, label %147, label %199

147:                                              ; preds = %144
  %148 = load float, float* %28, align 4
  %149 = fcmp oeq float %148, 0.000000e+00
  br i1 %149, label %150, label %199

150:                                              ; preds = %147
  %151 = load float, float* %29, align 4
  %152 = fcmp oeq float %151, 1.000000e+00
  br i1 %152, label %153, label %199

153:                                              ; preds = %150
  store i64 0, i64* %21, align 8
  br label %154

154:                                              ; preds = %195, %153
  %155 = load i64, i64* %21, align 8
  %156 = load i64, i64* %5, align 8
  %157 = icmp ult i64 %155, %156
  br i1 %157, label %158, label %198

158:                                              ; preds = %154
  %159 = load [3 x float]*, [3 x float]** %8, align 8
  %160 = load i64, i64* %21, align 8
  %161 = getelementptr inbounds [3 x float], [3 x float]* %159, i64 %160
  %162 = getelementptr inbounds [3 x float], [3 x float]* %161, i64 0, i64 0
  %163 = load float, float* %162, align 4
  store float %163, float* %30, align 4
  %164 = load [3 x float]*, [3 x float]** %8, align 8
  %165 = load i64, i64* %21, align 8
  %166 = getelementptr inbounds [3 x float], [3 x float]* %164, i64 %165
  %167 = getelementptr inbounds [3 x float], [3 x float]* %166, i64 0, i64 1
  %168 = load float, float* %167, align 4
  store float %168, float* %31, align 4
  %169 = load [3 x float]*, [3 x float]** %8, align 8
  %170 = load i64, i64* %21, align 8
  %171 = getelementptr inbounds [3 x float], [3 x float]* %169, i64 %170
  %172 = getelementptr inbounds [3 x float], [3 x float]* %171, i64 0, i64 2
  %173 = load float, float* %172, align 4
  store float %173, float* %32, align 4
  %174 = load float, float* %22, align 4
  %175 = load float, float* %30, align 4
  %176 = fmul float %174, %175
  %177 = load float, float* %23, align 4
  %178 = load float, float* %31, align 4
  %179 = fmul float %177, %178
  %180 = fadd float %176, %179
  %181 = load float, float* %24, align 4
  %182 = load float, float* %32, align 4
  %183 = fmul float %181, %182
  %184 = fadd float %180, %183
  %185 = load float, float* %25, align 4
  %186 = fadd float %184, %185
  %187 = load [4 x float]*, [4 x float]** %6, align 8
  %188 = load i64, i64* %21, align 8
  %189 = getelementptr inbounds [4 x float], [4 x float]* %187, i64 %188
  %190 = getelementptr inbounds [4 x float], [4 x float]* %189, i64 0, i64 2
  store float %186, float* %190, align 4
  %191 = load [4 x float]*, [4 x float]** %6, align 8
  %192 = load i64, i64* %21, align 8
  %193 = getelementptr inbounds [4 x float], [4 x float]* %191, i64 %192
  %194 = getelementptr inbounds [4 x float], [4 x float]* %193, i64 0, i64 3
  store float 1.000000e+00, float* %194, align 4
  br label %195

195:                                              ; preds = %158
  %196 = load i64, i64* %21, align 8
  %197 = add i64 %196, 1
  store i64 %197, i64* %21, align 8
  br label %154

198:                                              ; preds = %154
  br label %258

199:                                              ; preds = %150, %147, %144, %117
  store i64 0, i64* %21, align 8
  br label %200

200:                                              ; preds = %254, %199
  %201 = load i64, i64* %21, align 8
  %202 = load i64, i64* %5, align 8
  %203 = icmp ult i64 %201, %202
  br i1 %203, label %204, label %257

204:                                              ; preds = %200
  %205 = load [3 x float]*, [3 x float]** %8, align 8
  %206 = load i64, i64* %21, align 8
  %207 = getelementptr inbounds [3 x float], [3 x float]* %205, i64 %206
  %208 = getelementptr inbounds [3 x float], [3 x float]* %207, i64 0, i64 0
  %209 = load float, float* %208, align 4
  store float %209, float* %33, align 4
  %210 = load [3 x float]*, [3 x float]** %8, align 8
  %211 = load i64, i64* %21, align 8
  %212 = getelementptr inbounds [3 x float], [3 x float]* %210, i64 %211
  %213 = getelementptr inbounds [3 x float], [3 x float]* %212, i64 0, i64 1
  %214 = load float, float* %213, align 4
  store float %214, float* %34, align 4
  %215 = load [3 x float]*, [3 x float]** %8, align 8
  %216 = load i64, i64* %21, align 8
  %217 = getelementptr inbounds [3 x float], [3 x float]* %215, i64 %216
  %218 = getelementptr inbounds [3 x float], [3 x float]* %217, i64 0, i64 2
  %219 = load float, float* %218, align 4
  store float %219, float* %35, align 4
  %220 = load float, float* %22, align 4
  %221 = load float, float* %33, align 4
  %222 = fmul float %220, %221
  %223 = load float, float* %23, align 4
  %224 = load float, float* %34, align 4
  %225 = fmul float %223, %224
  %226 = fadd float %222, %225
  %227 = load float, float* %24, align 4
  %228 = load float, float* %35, align 4
  %229 = fmul float %227, %228
  %230 = fadd float %226, %229
  %231 = load float, float* %25, align 4
  %232 = fadd float %230, %231
  %233 = load [4 x float]*, [4 x float]** %6, align 8
  %234 = load i64, i64* %21, align 8
  %235 = getelementptr inbounds [4 x float], [4 x float]* %233, i64 %234
  %236 = getelementptr inbounds [4 x float], [4 x float]* %235, i64 0, i64 2
  store float %232, float* %236, align 4
  %237 = load float, float* %26, align 4
  %238 = load float, float* %33, align 4
  %239 = fmul float %237, %238
  %240 = load float, float* %27, align 4
  %241 = load float, float* %34, align 4
  %242 = fmul float %240, %241
  %243 = fadd float %239, %242
  %244 = load float, float* %28, align 4
  %245 = load float, float* %35, align 4
  %246 = fmul float %244, %245
  %247 = fadd float %243, %246
  %248 = load float, float* %29, align 4
  %249 = fadd float %247, %248
  %250 = load [4 x float]*, [4 x float]** %6, align 8
  %251 = load i64, i64* %21, align 8
  %252 = getelementptr inbounds [4 x float], [4 x float]* %250, i64 %251
  %253 = getelementptr inbounds [4 x float], [4 x float]* %252, i64 0, i64 3
  store float %249, float* %253, align 4
  br label %254

254:                                              ; preds = %204
  %255 = load i64, i64* %21, align 8
  %256 = add i64 %255, 1
  store i64 %256, i64* %21, align 8
  br label %200

257:                                              ; preds = %200
  br label %258

258:                                              ; preds = %257, %198
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
