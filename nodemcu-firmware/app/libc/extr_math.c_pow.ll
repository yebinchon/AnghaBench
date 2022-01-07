; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/libc/extr_math.c_pow.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/libc/extr_math.c_pow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NAN = common dso_local global double 0.000000e+00, align 8
@a1 = common dso_local global double* null, align 8
@a2 = common dso_local global double* null, align 8
@p4 = common dso_local global double 0.000000e+00, align 8
@p3 = common dso_local global double 0.000000e+00, align 8
@p2 = common dso_local global double 0.000000e+00, align 8
@p1 = common dso_local global double 0.000000e+00, align 8
@k = common dso_local global double 0.000000e+00, align 8
@MAXEXP = common dso_local global i32 0, align 4
@HUGE = common dso_local global double 0.000000e+00, align 8
@MINEXP = common dso_local global i32 0, align 4
@q7 = common dso_local global double 0.000000e+00, align 8
@q6 = common dso_local global double 0.000000e+00, align 8
@q5 = common dso_local global double 0.000000e+00, align 8
@q4 = common dso_local global double 0.000000e+00, align 8
@q3 = common dso_local global double 0.000000e+00, align 8
@q2 = common dso_local global double 0.000000e+00, align 8
@q1 = common dso_local global double 0.000000e+00, align 8
@g = common dso_local global double 0.000000e+00, align 8
@r = common dso_local global double 0.000000e+00, align 8
@u1 = common dso_local global double 0.000000e+00, align 8
@u2 = common dso_local global double 0.000000e+00, align 8
@v = common dso_local global double 0.000000e+00, align 8
@w = common dso_local global double 0.000000e+00, align 8
@w1 = common dso_local global double 0.000000e+00, align 8
@w2 = common dso_local global double 0.000000e+00, align 8
@y1 = common dso_local global double 0.000000e+00, align 8
@y2 = common dso_local global double 0.000000e+00, align 8
@z = common dso_local global double 0.000000e+00, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @pow(double %0, double %1) #0 {
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca double, align 8
  store double %0, double* %4, align 8
  store double %1, double* %5, align 8
  store i32 0, i32* %20, align 4
  %22 = load double, double* %5, align 8
  %23 = fcmp oeq double %22, 0.000000e+00
  br i1 %23, label %24, label %25

24:                                               ; preds = %2
  store double 1.000000e+00, double* %3, align 8
  br label %285

25:                                               ; preds = %2
  %26 = load double, double* %4, align 8
  %27 = fcmp ole double %26, 0.000000e+00
  br i1 %27, label %28, label %51

28:                                               ; preds = %25
  %29 = load double, double* %4, align 8
  %30 = fcmp oeq double %29, 0.000000e+00
  br i1 %30, label %31, label %36

31:                                               ; preds = %28
  %32 = load double, double* %5, align 8
  %33 = fcmp ogt double %32, 0.000000e+00
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  store double 0.000000e+00, double* %3, align 8
  br label %285

35:                                               ; preds = %31
  br label %50

36:                                               ; preds = %28
  %37 = load double, double* %4, align 8
  %38 = fneg double %37
  store double %38, double* %4, align 8
  %39 = load double, double* %5, align 8
  %40 = load double, double* %5, align 8
  %41 = fptosi double %40 to i32
  %42 = sitofp i32 %41 to double
  %43 = fcmp une double %39, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %36
  %45 = load double, double* @NAN, align 8
  store double %45, double* %3, align 8
  br label %285

46:                                               ; preds = %36
  %47 = load double, double* %5, align 8
  %48 = fptosi double %47 to i32
  %49 = and i32 %48, 1
  store i32 %49, i32* %20, align 4
  br label %50

50:                                               ; preds = %46, %35
  br label %51

51:                                               ; preds = %50, %25
  %52 = load double, double* %4, align 8
  %53 = call double @frexp(double %52, i32* %18) #2
  store double %53, double* %6, align 8
  store i32 0, i32* %19, align 4
  %54 = load double, double* %6, align 8
  %55 = load double*, double** @a1, align 8
  %56 = getelementptr inbounds double, double* %55, i64 8
  %57 = load double, double* %56, align 8
  %58 = fcmp ole double %54, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %51
  store i32 8, i32* %19, align 4
  br label %60

60:                                               ; preds = %59, %51
  %61 = load double, double* %6, align 8
  %62 = load double*, double** @a1, align 8
  %63 = load i32, i32* %19, align 4
  %64 = add nsw i32 %63, 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds double, double* %62, i64 %65
  %67 = load double, double* %66, align 8
  %68 = fcmp ole double %61, %67
  br i1 %68, label %69, label %72

69:                                               ; preds = %60
  %70 = load i32, i32* %19, align 4
  %71 = add nsw i32 %70, 4
  store i32 %71, i32* %19, align 4
  br label %72

72:                                               ; preds = %69, %60
  %73 = load double, double* %6, align 8
  %74 = load double*, double** @a1, align 8
  %75 = load i32, i32* %19, align 4
  %76 = add nsw i32 %75, 2
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds double, double* %74, i64 %77
  %79 = load double, double* %78, align 8
  %80 = fcmp ole double %73, %79
  br i1 %80, label %81, label %84

81:                                               ; preds = %72
  %82 = load i32, i32* %19, align 4
  %83 = add nsw i32 %82, 2
  store i32 %83, i32* %19, align 4
  br label %84

84:                                               ; preds = %81, %72
  %85 = load i32, i32* %19, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %19, align 4
  %87 = load double, double* %6, align 8
  %88 = load double*, double** @a1, align 8
  %89 = load i32, i32* %19, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds double, double* %88, i64 %90
  %92 = load double, double* %91, align 8
  %93 = fsub double %87, %92
  %94 = load double*, double** @a2, align 8
  %95 = load i32, i32* %19, align 4
  %96 = sdiv i32 %95, 2
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds double, double* %94, i64 %97
  %99 = load double, double* %98, align 8
  %100 = fsub double %93, %99
  %101 = load double, double* %6, align 8
  %102 = load double*, double** @a1, align 8
  %103 = load i32, i32* %19, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds double, double* %102, i64 %104
  %106 = load double, double* %105, align 8
  %107 = fadd double %101, %106
  %108 = fdiv double %100, %107
  store double %108, double* %16, align 8
  %109 = load double, double* %16, align 8
  %110 = load double, double* %16, align 8
  %111 = fadd double %110, %109
  store double %111, double* %16, align 8
  %112 = load double, double* %16, align 8
  %113 = load double, double* %16, align 8
  %114 = fmul double %112, %113
  store double %114, double* %10, align 8
  %115 = load double, double* @p4, align 8
  %116 = load double, double* %10, align 8
  %117 = fmul double %115, %116
  %118 = load double, double* @p3, align 8
  %119 = fadd double %117, %118
  %120 = load double, double* %10, align 8
  %121 = fmul double %119, %120
  %122 = load double, double* @p2, align 8
  %123 = fadd double %121, %122
  %124 = load double, double* %10, align 8
  %125 = fmul double %123, %124
  %126 = load double, double* @p1, align 8
  %127 = fadd double %125, %126
  %128 = load double, double* %10, align 8
  %129 = fmul double %127, %128
  %130 = load double, double* %16, align 8
  %131 = fmul double %129, %130
  store double %131, double* %7, align 8
  %132 = load double, double* @k, align 8
  %133 = load double, double* %7, align 8
  %134 = fmul double %132, %133
  %135 = load double, double* %7, align 8
  %136 = fadd double %135, %134
  store double %136, double* %7, align 8
  %137 = load double, double* %7, align 8
  %138 = load double, double* %16, align 8
  %139 = load double, double* @k, align 8
  %140 = fmul double %138, %139
  %141 = fadd double %137, %140
  %142 = load double, double* %16, align 8
  %143 = fadd double %141, %142
  store double %143, double* %9, align 8
  %144 = load i32, i32* %18, align 4
  %145 = mul nsw i32 16, %144
  %146 = load i32, i32* %19, align 4
  %147 = sub nsw i32 %145, %146
  %148 = sitofp i32 %147 to double
  %149 = fmul double 6.250000e-02, %148
  store double %149, double* %8, align 8
  %150 = load double, double* %5, align 8
  %151 = fmul double 1.600000e+01, %150
  %152 = fptosi double %151 to i32
  %153 = sitofp i32 %152 to double
  %154 = fmul double 6.250000e-02, %153
  store double %154, double* %14, align 8
  %155 = load double, double* %5, align 8
  %156 = load double, double* %14, align 8
  %157 = fsub double %155, %156
  store double %157, double* %15, align 8
  %158 = load double, double* %9, align 8
  %159 = load double, double* %5, align 8
  %160 = fmul double %158, %159
  %161 = load double, double* %8, align 8
  %162 = load double, double* %15, align 8
  %163 = fmul double %161, %162
  %164 = fadd double %160, %163
  store double %164, double* %11, align 8
  %165 = load double, double* %11, align 8
  %166 = fmul double 1.600000e+01, %165
  %167 = fptosi double %166 to i32
  %168 = sitofp i32 %167 to double
  %169 = fmul double 6.250000e-02, %168
  store double %169, double* %12, align 8
  %170 = load double, double* %11, align 8
  %171 = load double, double* %12, align 8
  %172 = fsub double %170, %171
  store double %172, double* %13, align 8
  %173 = load double, double* %12, align 8
  %174 = load double, double* %8, align 8
  %175 = load double, double* %14, align 8
  %176 = fmul double %174, %175
  %177 = fadd double %173, %176
  store double %177, double* %11, align 8
  %178 = load double, double* %11, align 8
  %179 = fmul double 1.600000e+01, %178
  %180 = fptosi double %179 to i32
  %181 = sitofp i32 %180 to double
  %182 = fmul double 6.250000e-02, %181
  store double %182, double* %12, align 8
  %183 = load double, double* %11, align 8
  %184 = load double, double* %12, align 8
  %185 = fsub double %183, %184
  %186 = load double, double* %13, align 8
  %187 = fadd double %186, %185
  store double %187, double* %13, align 8
  %188 = load double, double* %13, align 8
  %189 = fmul double 1.600000e+01, %188
  %190 = fptosi double %189 to i32
  %191 = sitofp i32 %190 to double
  %192 = fmul double 6.250000e-02, %191
  store double %192, double* %11, align 8
  %193 = load double, double* %12, align 8
  %194 = load double, double* %11, align 8
  %195 = fadd double %193, %194
  %196 = fmul double 1.600000e+01, %195
  %197 = fptosi double %196 to i32
  store i32 %197, i32* %17, align 4
  %198 = load double, double* %11, align 8
  %199 = load double, double* %13, align 8
  %200 = fsub double %199, %198
  store double %200, double* %13, align 8
  br label %201

201:                                              ; preds = %204, %84
  %202 = load double, double* %13, align 8
  %203 = fcmp ogt double %202, 0.000000e+00
  br i1 %203, label %204, label %209

204:                                              ; preds = %201
  %205 = load i32, i32* %17, align 4
  %206 = add nsw i32 %205, 1
  store i32 %206, i32* %17, align 4
  %207 = load double, double* %13, align 8
  %208 = fsub double %207, 6.250000e-02
  store double %208, double* %13, align 8
  br label %201

209:                                              ; preds = %201
  %210 = load i32, i32* %17, align 4
  %211 = load i32, i32* @MAXEXP, align 4
  %212 = icmp sgt i32 %210, %211
  br i1 %212, label %213, label %215

213:                                              ; preds = %209
  %214 = load double, double* @HUGE, align 8
  store double %214, double* %3, align 8
  br label %285

215:                                              ; preds = %209
  %216 = load i32, i32* %17, align 4
  %217 = load i32, i32* @MINEXP, align 4
  %218 = icmp slt i32 %216, %217
  br i1 %218, label %219, label %220

219:                                              ; preds = %215
  store double 0.000000e+00, double* %3, align 8
  br label %285

220:                                              ; preds = %215
  %221 = load i32, i32* %17, align 4
  %222 = sdiv i32 %221, 16
  store i32 %222, i32* %18, align 4
  %223 = load i32, i32* %17, align 4
  %224 = icmp sge i32 %223, 0
  br i1 %224, label %225, label %228

225:                                              ; preds = %220
  %226 = load i32, i32* %18, align 4
  %227 = add nsw i32 %226, 1
  store i32 %227, i32* %18, align 4
  br label %228

228:                                              ; preds = %225, %220
  %229 = load i32, i32* %18, align 4
  %230 = mul nsw i32 16, %229
  %231 = load i32, i32* %17, align 4
  %232 = sub nsw i32 %230, %231
  store i32 %232, i32* %19, align 4
  %233 = load double, double* @q7, align 8
  %234 = load double, double* %13, align 8
  %235 = fmul double %233, %234
  %236 = load double, double* @q6, align 8
  %237 = fadd double %235, %236
  %238 = load double, double* %13, align 8
  %239 = fmul double %237, %238
  %240 = load double, double* @q5, align 8
  %241 = fadd double %239, %240
  %242 = load double, double* %13, align 8
  %243 = fmul double %241, %242
  %244 = load double, double* @q4, align 8
  %245 = fadd double %243, %244
  %246 = load double, double* %13, align 8
  %247 = fmul double %245, %246
  %248 = load double, double* @q3, align 8
  %249 = fadd double %247, %248
  %250 = load double, double* %13, align 8
  %251 = fmul double %249, %250
  %252 = load double, double* @q2, align 8
  %253 = fadd double %251, %252
  %254 = load double, double* %13, align 8
  %255 = fmul double %253, %254
  %256 = load double, double* @q1, align 8
  %257 = fadd double %255, %256
  %258 = load double, double* %13, align 8
  %259 = fmul double %257, %258
  store double %259, double* %16, align 8
  %260 = load double*, double** @a1, align 8
  %261 = load i32, i32* %19, align 4
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds double, double* %260, i64 %262
  %264 = load double, double* %263, align 8
  %265 = load double*, double** @a1, align 8
  %266 = load i32, i32* %19, align 4
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds double, double* %265, i64 %267
  %269 = load double, double* %268, align 8
  %270 = load double, double* %16, align 8
  %271 = fmul double %269, %270
  %272 = fadd double %264, %271
  store double %272, double* %16, align 8
  %273 = load double, double* %16, align 8
  %274 = load i32, i32* %18, align 4
  %275 = call double @ldexp(double %273, i32 %274) #2
  store double %275, double* %21, align 8
  %276 = load i32, i32* %20, align 4
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %278, label %281

278:                                              ; preds = %228
  %279 = load double, double* %21, align 8
  %280 = fneg double %279
  br label %283

281:                                              ; preds = %228
  %282 = load double, double* %21, align 8
  br label %283

283:                                              ; preds = %281, %278
  %284 = phi double [ %280, %278 ], [ %282, %281 ]
  store double %284, double* %3, align 8
  br label %285

285:                                              ; preds = %283, %219, %213, %44, %34, %24
  %286 = load double, double* %3, align 8
  ret double %286
}

; Function Attrs: nounwind
declare dso_local double @frexp(double, i32*) #1

; Function Attrs: nounwind
declare dso_local double @ldexp(double, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
