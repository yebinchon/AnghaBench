; ModuleID = '/home/carl/AnghaBench/numpy/numpy/random/src/distributions/extr_random_hypergeometric.c_hypergeometric_hrua.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/random/src/distributions/extr_random_hypergeometric.c_hypergeometric_hrua.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@D1 = common dso_local global double 0.000000e+00, align 8
@D2 = common dso_local global double 0.000000e+00, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (double (i32*, double, double, double)* @hypergeometric_hrua to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @hypergeometric_hrua(i32* %0, double %1, double %2, double %3) #0 {
  %5 = alloca i32*, align 8
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
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  %19 = alloca double, align 8
  %20 = alloca double, align 8
  %21 = alloca double, align 8
  %22 = alloca double, align 8
  %23 = alloca double, align 8
  %24 = alloca double, align 8
  %25 = alloca double, align 8
  %26 = alloca double, align 8
  %27 = alloca double, align 8
  %28 = alloca double, align 8
  store i32* %0, i32** %5, align 8
  store double %1, double* %6, align 8
  store double %2, double* %7, align 8
  store double %3, double* %8, align 8
  %29 = load double, double* %6, align 8
  %30 = load double, double* %7, align 8
  %31 = fadd double %29, %30
  store double %31, double* %11, align 8
  %32 = load double, double* %8, align 8
  %33 = fptosi double %32 to i32
  %34 = load double, double* %11, align 8
  %35 = load double, double* %8, align 8
  %36 = fsub double %34, %35
  %37 = call i32 @MIN(i32 %33, double %36)
  %38 = sitofp i32 %37 to double
  store double %38, double* %12, align 8
  %39 = load double, double* %6, align 8
  %40 = fptosi double %39 to i32
  %41 = load double, double* %7, align 8
  %42 = call i32 @MIN(i32 %40, double %41)
  %43 = sitofp i32 %42 to double
  store double %43, double* %9, align 8
  %44 = load double, double* %6, align 8
  %45 = load double, double* %7, align 8
  %46 = call double @MAX(double %44, double %45)
  store double %46, double* %10, align 8
  %47 = load double, double* %9, align 8
  %48 = load double, double* %11, align 8
  %49 = fdiv double %47, %48
  store double %49, double* %13, align 8
  %50 = load double, double* %10, align 8
  %51 = load double, double* %11, align 8
  %52 = fdiv double %50, %51
  store double %52, double* %14, align 8
  %53 = load double, double* %12, align 8
  %54 = load double, double* %13, align 8
  %55 = fmul double %53, %54
  store double %55, double* %15, align 8
  %56 = load double, double* %15, align 8
  %57 = fadd double %56, 5.000000e-01
  store double %57, double* %17, align 8
  %58 = load double, double* %11, align 8
  %59 = load double, double* %12, align 8
  %60 = fsub double %58, %59
  %61 = load double, double* %12, align 8
  %62 = fmul double %60, %61
  %63 = load double, double* %13, align 8
  %64 = fmul double %62, %63
  %65 = load double, double* %14, align 8
  %66 = fmul double %64, %65
  %67 = load double, double* %11, align 8
  %68 = fsub double %67, 1.000000e+00
  %69 = fdiv double %66, %68
  store double %69, double* %16, align 8
  %70 = load double, double* %16, align 8
  %71 = fadd double %70, 5.000000e-01
  %72 = call double @sqrt(double %71) #4
  store double %72, double* %18, align 8
  %73 = load double, double* @D1, align 8
  %74 = load double, double* %18, align 8
  %75 = fmul double %73, %74
  %76 = load double, double* @D2, align 8
  %77 = fadd double %75, %76
  store double %77, double* %20, align 8
  %78 = load double, double* %12, align 8
  %79 = fadd double %78, 1.000000e+00
  %80 = load double, double* %9, align 8
  %81 = fadd double %80, 1.000000e+00
  %82 = fmul double %79, %81
  %83 = load double, double* %11, align 8
  %84 = fadd double %83, 2.000000e+00
  %85 = fdiv double %82, %84
  %86 = call double @llvm.floor.f64(double %85)
  store double %86, double* %22, align 8
  %87 = load double, double* %22, align 8
  %88 = call double @logfactorial(double %87)
  %89 = load double, double* %9, align 8
  %90 = load double, double* %22, align 8
  %91 = fsub double %89, %90
  %92 = call double @logfactorial(double %91)
  %93 = fadd double %88, %92
  %94 = load double, double* %12, align 8
  %95 = load double, double* %22, align 8
  %96 = fsub double %94, %95
  %97 = call double @logfactorial(double %96)
  %98 = fadd double %93, %97
  %99 = load double, double* %10, align 8
  %100 = load double, double* %12, align 8
  %101 = fsub double %99, %100
  %102 = load double, double* %22, align 8
  %103 = fadd double %101, %102
  %104 = call double @logfactorial(double %103)
  %105 = fadd double %98, %104
  store double %105, double* %21, align 8
  %106 = load double, double* %12, align 8
  %107 = fptosi double %106 to i32
  %108 = load double, double* %9, align 8
  %109 = call i32 @MIN(i32 %107, double %108)
  %110 = add nsw i32 %109, 1
  %111 = load double, double* %17, align 8
  %112 = load double, double* %18, align 8
  %113 = fmul double 1.600000e+01, %112
  %114 = fadd double %111, %113
  %115 = call double @llvm.floor.f64(double %114)
  %116 = call i32 @MIN(i32 %110, double %115)
  %117 = sitofp i32 %116 to double
  store double %117, double* %19, align 8
  br label %118

118:                                              ; preds = %4, %137, %178, %186
  %119 = load i32*, i32** %5, align 8
  %120 = call double @next_double(i32* %119)
  store double %120, double* %24, align 8
  %121 = load i32*, i32** %5, align 8
  %122 = call double @next_double(i32* %121)
  store double %122, double* %25, align 8
  %123 = load double, double* %17, align 8
  %124 = load double, double* %20, align 8
  %125 = load double, double* %25, align 8
  %126 = fsub double %125, 5.000000e-01
  %127 = fmul double %124, %126
  %128 = load double, double* %24, align 8
  %129 = fdiv double %127, %128
  %130 = fadd double %123, %129
  store double %130, double* %26, align 8
  %131 = load double, double* %26, align 8
  %132 = fcmp olt double %131, 0.000000e+00
  br i1 %132, label %137, label %133

133:                                              ; preds = %118
  %134 = load double, double* %26, align 8
  %135 = load double, double* %19, align 8
  %136 = fcmp oge double %134, %135
  br i1 %136, label %137, label %138

137:                                              ; preds = %133, %118
  br label %118

138:                                              ; preds = %133
  %139 = load double, double* %26, align 8
  %140 = call double @llvm.floor.f64(double %139)
  store double %140, double* %23, align 8
  %141 = load double, double* %23, align 8
  %142 = call double @logfactorial(double %141)
  %143 = load double, double* %9, align 8
  %144 = load double, double* %23, align 8
  %145 = fsub double %143, %144
  %146 = call double @logfactorial(double %145)
  %147 = fadd double %142, %146
  %148 = load double, double* %12, align 8
  %149 = load double, double* %23, align 8
  %150 = fsub double %148, %149
  %151 = call double @logfactorial(double %150)
  %152 = fadd double %147, %151
  %153 = load double, double* %10, align 8
  %154 = load double, double* %12, align 8
  %155 = fsub double %153, %154
  %156 = load double, double* %23, align 8
  %157 = fadd double %155, %156
  %158 = call double @logfactorial(double %157)
  %159 = fadd double %152, %158
  store double %159, double* %28, align 8
  %160 = load double, double* %21, align 8
  %161 = load double, double* %28, align 8
  %162 = fsub double %160, %161
  store double %162, double* %27, align 8
  %163 = load double, double* %24, align 8
  %164 = load double, double* %24, align 8
  %165 = fsub double 4.000000e+00, %164
  %166 = fmul double %163, %165
  %167 = fsub double %166, 3.000000e+00
  %168 = load double, double* %27, align 8
  %169 = fcmp ole double %167, %168
  br i1 %169, label %170, label %171

170:                                              ; preds = %138
  br label %187

171:                                              ; preds = %138
  %172 = load double, double* %24, align 8
  %173 = load double, double* %24, align 8
  %174 = load double, double* %27, align 8
  %175 = fsub double %173, %174
  %176 = fmul double %172, %175
  %177 = fcmp oge double %176, 1.000000e+00
  br i1 %177, label %178, label %179

178:                                              ; preds = %171
  br label %118

179:                                              ; preds = %171
  %180 = load double, double* %24, align 8
  %181 = call double @log(double %180) #4
  %182 = fmul double 2.000000e+00, %181
  %183 = load double, double* %27, align 8
  %184 = fcmp ole double %182, %183
  br i1 %184, label %185, label %186

185:                                              ; preds = %179
  br label %187

186:                                              ; preds = %179
  br label %118

187:                                              ; preds = %185, %170
  %188 = load double, double* %6, align 8
  %189 = load double, double* %7, align 8
  %190 = fcmp ogt double %188, %189
  br i1 %190, label %191, label %195

191:                                              ; preds = %187
  %192 = load double, double* %12, align 8
  %193 = load double, double* %23, align 8
  %194 = fsub double %192, %193
  store double %194, double* %23, align 8
  br label %195

195:                                              ; preds = %191, %187
  %196 = load double, double* %12, align 8
  %197 = load double, double* %8, align 8
  %198 = fcmp olt double %196, %197
  br i1 %198, label %199, label %203

199:                                              ; preds = %195
  %200 = load double, double* %6, align 8
  %201 = load double, double* %23, align 8
  %202 = fsub double %200, %201
  store double %202, double* %23, align 8
  br label %203

203:                                              ; preds = %199, %195
  %204 = load double, double* %23, align 8
  ret double %204
}

declare dso_local i32 @MIN(i32, double) #1

declare dso_local double @MAX(double, double) #1

; Function Attrs: nounwind
declare dso_local double @sqrt(double) #2

; Function Attrs: nounwind readnone speculatable willreturn
declare double @llvm.floor.f64(double) #3

declare dso_local double @logfactorial(double) #1

declare dso_local double @next_double(i32*) #1

; Function Attrs: nounwind
declare dso_local double @log(double) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
