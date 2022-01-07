; ModuleID = '/home/carl/AnghaBench/reactos/dll/opengl/glu32/src/libutil/extr_mipmap.c_scale_internal.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/opengl/glu32/src/libutil/extr_mipmap.c_scale_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, float*, i32, i32, float*)* @scale_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scale_internal(i32 %0, i32 %1, i32 %2, float* %3, i32 %4, i32 %5, float* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca float*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca float*, align 8
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  %17 = alloca float, align 4
  %18 = alloca float, align 4
  %19 = alloca float, align 4
  %20 = alloca float, align 4
  %21 = alloca float, align 4
  %22 = alloca float, align 4
  %23 = alloca float, align 4
  %24 = alloca float, align 4
  %25 = alloca float, align 4
  %26 = alloca float, align 4
  %27 = alloca float, align 4
  %28 = alloca [4 x float], align 16
  %29 = alloca float, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store float* %3, float** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store float* %6, float** %14, align 8
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* %12, align 4
  %40 = mul nsw i32 %39, 2
  %41 = icmp eq i32 %38, %40
  br i1 %41, label %42, label %54

42:                                               ; preds = %7
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* %13, align 4
  %45 = mul nsw i32 %44, 2
  %46 = icmp eq i32 %43, %45
  br i1 %46, label %47, label %54

47:                                               ; preds = %42
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* %10, align 4
  %51 = load float*, float** %11, align 8
  %52 = load float*, float** %14, align 8
  %53 = call i32 @halveImage(i32 %48, i32 %49, i32 %50, float* %51, float* %52)
  br label %280

54:                                               ; preds = %42, %7
  %55 = load i32, i32* %10, align 4
  %56 = sitofp i32 %55 to float
  %57 = load i32, i32* %13, align 4
  %58 = sitofp i32 %57 to float
  %59 = fdiv float %56, %58
  store float %59, float* %23, align 4
  %60 = load i32, i32* %9, align 4
  %61 = sitofp i32 %60 to float
  %62 = load i32, i32* %12, align 4
  %63 = sitofp i32 %62 to float
  %64 = fdiv float %61, %63
  store float %64, float* %18, align 4
  %65 = load float, float* %18, align 4
  %66 = fdiv float %65, 2.000000e+00
  store float %66, float* %19, align 4
  %67 = load float, float* %23, align 4
  %68 = fdiv float %67, 2.000000e+00
  store float %68, float* %24, align 4
  store i32 0, i32* %30, align 4
  br label %69

69:                                               ; preds = %277, %54
  %70 = load i32, i32* %30, align 4
  %71 = load i32, i32* %13, align 4
  %72 = icmp slt i32 %70, %71
  br i1 %72, label %73, label %280

73:                                               ; preds = %69
  %74 = load float, float* %23, align 4
  %75 = fpext float %74 to double
  %76 = load i32, i32* %30, align 4
  %77 = sitofp i32 %76 to double
  %78 = fadd double %77, 5.000000e-01
  %79 = fmul double %75, %78
  %80 = fptrunc double %79 to float
  store float %80, float* %20, align 4
  %81 = load i32, i32* %10, align 4
  %82 = load i32, i32* %13, align 4
  %83 = icmp sgt i32 %81, %82
  br i1 %83, label %84, label %91

84:                                               ; preds = %73
  %85 = load float, float* %20, align 4
  %86 = load float, float* %24, align 4
  %87 = fadd float %85, %86
  store float %87, float* %22, align 4
  %88 = load float, float* %20, align 4
  %89 = load float, float* %24, align 4
  %90 = fsub float %88, %89
  store float %90, float* %21, align 4
  br label %100

91:                                               ; preds = %73
  %92 = load float, float* %20, align 4
  %93 = fpext float %92 to double
  %94 = fadd double %93, 5.000000e-01
  %95 = fptrunc double %94 to float
  store float %95, float* %22, align 4
  %96 = load float, float* %20, align 4
  %97 = fpext float %96 to double
  %98 = fsub double %97, 5.000000e-01
  %99 = fptrunc double %98 to float
  store float %99, float* %21, align 4
  br label %100

100:                                              ; preds = %91, %84
  store i32 0, i32* %31, align 4
  br label %101

101:                                              ; preds = %273, %100
  %102 = load i32, i32* %31, align 4
  %103 = load i32, i32* %12, align 4
  %104 = icmp slt i32 %102, %103
  br i1 %104, label %105, label %276

105:                                              ; preds = %101
  %106 = load float, float* %18, align 4
  %107 = fpext float %106 to double
  %108 = load i32, i32* %31, align 4
  %109 = sitofp i32 %108 to double
  %110 = fadd double %109, 5.000000e-01
  %111 = fmul double %107, %110
  %112 = fptrunc double %111 to float
  store float %112, float* %15, align 4
  %113 = load i32, i32* %9, align 4
  %114 = load i32, i32* %12, align 4
  %115 = icmp sgt i32 %113, %114
  br i1 %115, label %116, label %123

116:                                              ; preds = %105
  %117 = load float, float* %15, align 4
  %118 = load float, float* %19, align 4
  %119 = fadd float %117, %118
  store float %119, float* %17, align 4
  %120 = load float, float* %15, align 4
  %121 = load float, float* %19, align 4
  %122 = fsub float %120, %121
  store float %122, float* %16, align 4
  br label %132

123:                                              ; preds = %105
  %124 = load float, float* %15, align 4
  %125 = fpext float %124 to double
  %126 = fadd double %125, 5.000000e-01
  %127 = fptrunc double %126 to float
  store float %127, float* %17, align 4
  %128 = load float, float* %15, align 4
  %129 = fpext float %128 to double
  %130 = fsub double %129, 5.000000e-01
  %131 = fptrunc double %130 to float
  store float %131, float* %16, align 4
  br label %132

132:                                              ; preds = %123, %116
  %133 = getelementptr inbounds [4 x float], [4 x float]* %28, i64 0, i64 3
  store float 0.000000e+00, float* %133, align 4
  %134 = getelementptr inbounds [4 x float], [4 x float]* %28, i64 0, i64 2
  store float 0.000000e+00, float* %134, align 8
  %135 = getelementptr inbounds [4 x float], [4 x float]* %28, i64 0, i64 1
  store float 0.000000e+00, float* %135, align 4
  %136 = getelementptr inbounds [4 x float], [4 x float]* %28, i64 0, i64 0
  store float 0.000000e+00, float* %136, align 16
  store float 0.000000e+00, float* %29, align 4
  %137 = load float, float* %21, align 4
  store float %137, float* %20, align 4
  %138 = load float, float* %20, align 4
  %139 = call i32 @floor(float %138)
  store i32 %139, i32* %33, align 4
  br label %140

140:                                              ; preds = %235, %132
  %141 = load float, float* %20, align 4
  %142 = load float, float* %22, align 4
  %143 = fcmp olt float %141, %142
  br i1 %143, label %144, label %240

144:                                              ; preds = %140
  %145 = load i32, i32* %33, align 4
  %146 = load i32, i32* %10, align 4
  %147 = add nsw i32 %145, %146
  %148 = load i32, i32* %10, align 4
  %149 = srem i32 %147, %148
  store i32 %149, i32* %36, align 4
  %150 = load float, float* %22, align 4
  %151 = load i32, i32* %33, align 4
  %152 = add nsw i32 %151, 1
  %153 = sitofp i32 %152 to float
  %154 = fcmp olt float %150, %153
  br i1 %154, label %155, label %159

155:                                              ; preds = %144
  %156 = load float, float* %22, align 4
  %157 = load float, float* %20, align 4
  %158 = fsub float %156, %157
  store float %158, float* %26, align 4
  br label %165

159:                                              ; preds = %144
  %160 = load i32, i32* %33, align 4
  %161 = add nsw i32 %160, 1
  %162 = sitofp i32 %161 to float
  %163 = load float, float* %20, align 4
  %164 = fsub float %162, %163
  store float %164, float* %26, align 4
  br label %165

165:                                              ; preds = %159, %155
  %166 = load float, float* %16, align 4
  store float %166, float* %15, align 4
  %167 = load float, float* %15, align 4
  %168 = call i32 @floor(float %167)
  store i32 %168, i32* %34, align 4
  br label %169

169:                                              ; preds = %230, %165
  %170 = load float, float* %15, align 4
  %171 = load float, float* %17, align 4
  %172 = fcmp olt float %170, %171
  br i1 %172, label %173, label %235

173:                                              ; preds = %169
  %174 = load i32, i32* %34, align 4
  %175 = load i32, i32* %9, align 4
  %176 = add nsw i32 %174, %175
  %177 = load i32, i32* %9, align 4
  %178 = srem i32 %176, %177
  store i32 %178, i32* %35, align 4
  %179 = load float, float* %17, align 4
  %180 = load i32, i32* %34, align 4
  %181 = add nsw i32 %180, 1
  %182 = sitofp i32 %181 to float
  %183 = fcmp olt float %179, %182
  br i1 %183, label %184, label %188

184:                                              ; preds = %173
  %185 = load float, float* %17, align 4
  %186 = load float, float* %15, align 4
  %187 = fsub float %185, %186
  store float %187, float* %25, align 4
  br label %194

188:                                              ; preds = %173
  %189 = load i32, i32* %34, align 4
  %190 = add nsw i32 %189, 1
  %191 = sitofp i32 %190 to float
  %192 = load float, float* %15, align 4
  %193 = fsub float %191, %192
  store float %193, float* %25, align 4
  br label %194

194:                                              ; preds = %188, %184
  %195 = load float, float* %25, align 4
  %196 = load float, float* %26, align 4
  %197 = fmul float %195, %196
  store float %197, float* %27, align 4
  %198 = load float, float* %27, align 4
  %199 = load float, float* %29, align 4
  %200 = fadd float %199, %198
  store float %200, float* %29, align 4
  %201 = load i32, i32* %35, align 4
  %202 = load i32, i32* %36, align 4
  %203 = load i32, i32* %9, align 4
  %204 = mul nsw i32 %202, %203
  %205 = add nsw i32 %201, %204
  %206 = load i32, i32* %8, align 4
  %207 = mul nsw i32 %205, %206
  store i32 %207, i32* %37, align 4
  store i32 0, i32* %32, align 4
  br label %208

208:                                              ; preds = %227, %194
  %209 = load i32, i32* %32, align 4
  %210 = load i32, i32* %8, align 4
  %211 = icmp slt i32 %209, %210
  br i1 %211, label %212, label %230

212:                                              ; preds = %208
  %213 = load float*, float** %11, align 8
  %214 = load i32, i32* %37, align 4
  %215 = load i32, i32* %32, align 4
  %216 = add nsw i32 %214, %215
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds float, float* %213, i64 %217
  %219 = load float, float* %218, align 4
  %220 = load float, float* %27, align 4
  %221 = fmul float %219, %220
  %222 = load i32, i32* %32, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds [4 x float], [4 x float]* %28, i64 0, i64 %223
  %225 = load float, float* %224, align 4
  %226 = fadd float %225, %221
  store float %226, float* %224, align 4
  br label %227

227:                                              ; preds = %212
  %228 = load i32, i32* %32, align 4
  %229 = add nsw i32 %228, 1
  store i32 %229, i32* %32, align 4
  br label %208

230:                                              ; preds = %208
  %231 = load i32, i32* %34, align 4
  %232 = add nsw i32 %231, 1
  store i32 %232, i32* %34, align 4
  %233 = load i32, i32* %34, align 4
  %234 = sitofp i32 %233 to float
  store float %234, float* %15, align 4
  br label %169

235:                                              ; preds = %169
  %236 = load i32, i32* %33, align 4
  %237 = add nsw i32 %236, 1
  store i32 %237, i32* %33, align 4
  %238 = load i32, i32* %33, align 4
  %239 = sitofp i32 %238 to float
  store float %239, float* %20, align 4
  br label %140

240:                                              ; preds = %140
  %241 = load i32, i32* %31, align 4
  %242 = load i32, i32* %30, align 4
  %243 = load i32, i32* %12, align 4
  %244 = mul nsw i32 %242, %243
  %245 = add nsw i32 %241, %244
  %246 = load i32, i32* %8, align 4
  %247 = mul nsw i32 %245, %246
  store i32 %247, i32* %37, align 4
  store i32 0, i32* %32, align 4
  br label %248

248:                                              ; preds = %269, %240
  %249 = load i32, i32* %32, align 4
  %250 = load i32, i32* %8, align 4
  %251 = icmp slt i32 %249, %250
  br i1 %251, label %252, label %272

252:                                              ; preds = %248
  %253 = load i32, i32* %32, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds [4 x float], [4 x float]* %28, i64 0, i64 %254
  %256 = load float, float* %255, align 4
  %257 = fpext float %256 to double
  %258 = fadd double %257, 5.000000e-01
  %259 = load float, float* %29, align 4
  %260 = fpext float %259 to double
  %261 = fdiv double %258, %260
  %262 = fptrunc double %261 to float
  %263 = load float*, float** %14, align 8
  %264 = load i32, i32* %37, align 4
  %265 = load i32, i32* %32, align 4
  %266 = add nsw i32 %264, %265
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds float, float* %263, i64 %267
  store float %262, float* %268, align 4
  br label %269

269:                                              ; preds = %252
  %270 = load i32, i32* %32, align 4
  %271 = add nsw i32 %270, 1
  store i32 %271, i32* %32, align 4
  br label %248

272:                                              ; preds = %248
  br label %273

273:                                              ; preds = %272
  %274 = load i32, i32* %31, align 4
  %275 = add nsw i32 %274, 1
  store i32 %275, i32* %31, align 4
  br label %101

276:                                              ; preds = %101
  br label %277

277:                                              ; preds = %276
  %278 = load i32, i32* %30, align 4
  %279 = add nsw i32 %278, 1
  store i32 %279, i32* %30, align 4
  br label %69

280:                                              ; preds = %47, %69
  ret void
}

declare dso_local i32 @halveImage(i32, i32, i32, float*, float*) #1

declare dso_local i32 @floor(float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
