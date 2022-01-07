; ModuleID = '/home/carl/AnghaBench/numpy/numpy/random/src/legacy/extr_legacy-distributions.c_random_hypergeometric_hrua.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/random/src/legacy/extr_legacy-distributions.c_random_hypergeometric_hrua.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@D1 = common dso_local global double 0.000000e+00, align 8
@D2 = common dso_local global double 0.000000e+00, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (double (i32*, double, double, double)* @random_hypergeometric_hrua to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @random_hypergeometric_hrua(i32* %0, double %1, double %2, double %3) #0 {
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
  store i32* %0, i32** %5, align 8
  store double %1, double* %6, align 8
  store double %2, double* %7, align 8
  store double %3, double* %8, align 8
  %26 = load double, double* %6, align 8
  %27 = load double, double* %7, align 8
  %28 = call double @MIN(double %26, double %27)
  store double %28, double* %9, align 8
  %29 = load double, double* %6, align 8
  %30 = load double, double* %7, align 8
  %31 = fadd double %29, %30
  store double %31, double* %11, align 8
  %32 = load double, double* %6, align 8
  %33 = load double, double* %7, align 8
  %34 = call double @MAX(double %32, double %33)
  store double %34, double* %10, align 8
  %35 = load double, double* %8, align 8
  %36 = load double, double* %11, align 8
  %37 = load double, double* %8, align 8
  %38 = fsub double %36, %37
  %39 = call double @MIN(double %35, double %38)
  store double %39, double* %12, align 8
  %40 = load double, double* %9, align 8
  %41 = load double, double* %11, align 8
  %42 = fdiv double %40, %41
  store double %42, double* %14, align 8
  %43 = load double, double* %14, align 8
  %44 = fsub double 1.000000e+00, %43
  store double %44, double* %15, align 8
  %45 = load double, double* %12, align 8
  %46 = load double, double* %14, align 8
  %47 = fmul double %45, %46
  %48 = fadd double %47, 5.000000e-01
  store double %48, double* %16, align 8
  %49 = load double, double* %11, align 8
  %50 = load double, double* %12, align 8
  %51 = fsub double %49, %50
  %52 = load double, double* %8, align 8
  %53 = fmul double %51, %52
  %54 = load double, double* %14, align 8
  %55 = fmul double %53, %54
  %56 = load double, double* %15, align 8
  %57 = fmul double %55, %56
  %58 = load double, double* %11, align 8
  %59 = fsub double %58, 1.000000e+00
  %60 = fdiv double %57, %59
  %61 = fadd double %60, 5.000000e-01
  %62 = call double @sqrt(double %61) #4
  store double %62, double* %17, align 8
  %63 = load double, double* @D1, align 8
  %64 = load double, double* %17, align 8
  %65 = fmul double %63, %64
  %66 = load double, double* @D2, align 8
  %67 = fadd double %65, %66
  store double %67, double* %18, align 8
  %68 = load double, double* %12, align 8
  %69 = fadd double %68, 1.000000e+00
  %70 = load double, double* %9, align 8
  %71 = fadd double %70, 1.000000e+00
  %72 = fmul double %69, %71
  %73 = load double, double* %11, align 8
  %74 = fadd double %73, 2.000000e+00
  %75 = fdiv double %72, %74
  %76 = call double @llvm.floor.f64(double %75)
  store double %76, double* %13, align 8
  %77 = load double, double* %13, align 8
  %78 = fadd double %77, 1.000000e+00
  %79 = call double @random_loggam(double %78)
  %80 = load double, double* %9, align 8
  %81 = load double, double* %13, align 8
  %82 = fsub double %80, %81
  %83 = fadd double %82, 1.000000e+00
  %84 = call double @random_loggam(double %83)
  %85 = fadd double %79, %84
  %86 = load double, double* %12, align 8
  %87 = load double, double* %13, align 8
  %88 = fsub double %86, %87
  %89 = fadd double %88, 1.000000e+00
  %90 = call double @random_loggam(double %89)
  %91 = fadd double %85, %90
  %92 = load double, double* %10, align 8
  %93 = load double, double* %12, align 8
  %94 = fsub double %92, %93
  %95 = load double, double* %13, align 8
  %96 = fadd double %94, %95
  %97 = fadd double %96, 1.000000e+00
  %98 = call double @random_loggam(double %97)
  %99 = fadd double %91, %98
  store double %99, double* %19, align 8
  %100 = load double, double* %12, align 8
  %101 = load double, double* %9, align 8
  %102 = call double @MIN(double %100, double %101)
  %103 = fadd double %102, 1.000000e+00
  %104 = load double, double* %16, align 8
  %105 = load double, double* %17, align 8
  %106 = fmul double 1.600000e+01, %105
  %107 = fadd double %104, %106
  %108 = call double @llvm.floor.f64(double %107)
  %109 = call double @MIN(double %103, double %108)
  store double %109, double* %20, align 8
  br label %110

110:                                              ; preds = %4, %129, %173, %181
  %111 = load i32*, i32** %5, align 8
  %112 = call double @next_double(i32* %111)
  store double %112, double* %24, align 8
  %113 = load i32*, i32** %5, align 8
  %114 = call double @next_double(i32* %113)
  store double %114, double* %25, align 8
  %115 = load double, double* %16, align 8
  %116 = load double, double* %18, align 8
  %117 = load double, double* %25, align 8
  %118 = fsub double %117, 5.000000e-01
  %119 = fmul double %116, %118
  %120 = load double, double* %24, align 8
  %121 = fdiv double %119, %120
  %122 = fadd double %115, %121
  store double %122, double* %23, align 8
  %123 = load double, double* %23, align 8
  %124 = fcmp olt double %123, 0.000000e+00
  br i1 %124, label %129, label %125

125:                                              ; preds = %110
  %126 = load double, double* %23, align 8
  %127 = load double, double* %20, align 8
  %128 = fcmp oge double %126, %127
  br i1 %128, label %129, label %130

129:                                              ; preds = %125, %110
  br label %110

130:                                              ; preds = %125
  %131 = load double, double* %23, align 8
  %132 = call double @llvm.floor.f64(double %131)
  store double %132, double* %21, align 8
  %133 = load double, double* %19, align 8
  %134 = load double, double* %21, align 8
  %135 = fadd double %134, 1.000000e+00
  %136 = call double @random_loggam(double %135)
  %137 = load double, double* %9, align 8
  %138 = load double, double* %21, align 8
  %139 = fsub double %137, %138
  %140 = fadd double %139, 1.000000e+00
  %141 = call double @random_loggam(double %140)
  %142 = fadd double %136, %141
  %143 = load double, double* %12, align 8
  %144 = load double, double* %21, align 8
  %145 = fsub double %143, %144
  %146 = fadd double %145, 1.000000e+00
  %147 = call double @random_loggam(double %146)
  %148 = fadd double %142, %147
  %149 = load double, double* %10, align 8
  %150 = load double, double* %12, align 8
  %151 = fsub double %149, %150
  %152 = load double, double* %21, align 8
  %153 = fadd double %151, %152
  %154 = fadd double %153, 1.000000e+00
  %155 = call double @random_loggam(double %154)
  %156 = fadd double %148, %155
  %157 = fsub double %133, %156
  store double %157, double* %22, align 8
  %158 = load double, double* %24, align 8
  %159 = load double, double* %24, align 8
  %160 = fsub double 4.000000e+00, %159
  %161 = fmul double %158, %160
  %162 = fsub double %161, 3.000000e+00
  %163 = load double, double* %22, align 8
  %164 = fcmp ole double %162, %163
  br i1 %164, label %165, label %166

165:                                              ; preds = %130
  br label %182

166:                                              ; preds = %130
  %167 = load double, double* %24, align 8
  %168 = load double, double* %24, align 8
  %169 = load double, double* %22, align 8
  %170 = fsub double %168, %169
  %171 = fmul double %167, %170
  %172 = fcmp oge double %171, 1.000000e+00
  br i1 %172, label %173, label %174

173:                                              ; preds = %166
  br label %110

174:                                              ; preds = %166
  %175 = load double, double* %24, align 8
  %176 = call double @log(double %175) #4
  %177 = fmul double 2.000000e+00, %176
  %178 = load double, double* %22, align 8
  %179 = fcmp ole double %177, %178
  br i1 %179, label %180, label %181

180:                                              ; preds = %174
  br label %182

181:                                              ; preds = %174
  br label %110

182:                                              ; preds = %180, %165
  %183 = load double, double* %6, align 8
  %184 = load double, double* %7, align 8
  %185 = fcmp ogt double %183, %184
  br i1 %185, label %186, label %190

186:                                              ; preds = %182
  %187 = load double, double* %12, align 8
  %188 = load double, double* %21, align 8
  %189 = fsub double %187, %188
  store double %189, double* %21, align 8
  br label %190

190:                                              ; preds = %186, %182
  %191 = load double, double* %12, align 8
  %192 = load double, double* %8, align 8
  %193 = fcmp olt double %191, %192
  br i1 %193, label %194, label %198

194:                                              ; preds = %190
  %195 = load double, double* %6, align 8
  %196 = load double, double* %21, align 8
  %197 = fsub double %195, %196
  store double %197, double* %21, align 8
  br label %198

198:                                              ; preds = %194, %190
  %199 = load double, double* %21, align 8
  ret double %199
}

declare dso_local double @MIN(double, double) #1

declare dso_local double @MAX(double, double) #1

; Function Attrs: nounwind
declare dso_local double @sqrt(double) #2

; Function Attrs: nounwind readnone speculatable willreturn
declare double @llvm.floor.f64(double) #3

declare dso_local double @random_loggam(double) #1

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
