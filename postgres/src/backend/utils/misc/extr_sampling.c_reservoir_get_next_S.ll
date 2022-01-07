; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/misc/extr_sampling.c_reservoir_get_next_S.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/misc/extr_sampling.c_reservoir_get_next_S.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { double, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @reservoir_get_next_S(%struct.TYPE_3__* %0, double %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca double, align 8
  %6 = alloca i32, align 4
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
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store double %1, double* %5, align 8
  store i32 %2, i32* %6, align 4
  %21 = load double, double* %5, align 8
  %22 = load i32, i32* %6, align 4
  %23 = sitofp i32 %22 to double
  %24 = fmul double 2.200000e+01, %23
  %25 = fcmp ole double %21, %24
  br i1 %25, label %26, label %57

26:                                               ; preds = %3
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = call double @sampler_random_fract(i32 %29)
  store double %30, double* %8, align 8
  store double 0.000000e+00, double* %7, align 8
  %31 = load double, double* %5, align 8
  %32 = fadd double %31, 1.000000e+00
  store double %32, double* %5, align 8
  %33 = load double, double* %5, align 8
  %34 = load i32, i32* %6, align 4
  %35 = sitofp i32 %34 to double
  %36 = fsub double %33, %35
  %37 = load double, double* %5, align 8
  %38 = fdiv double %36, %37
  store double %38, double* %9, align 8
  br label %39

39:                                               ; preds = %43, %26
  %40 = load double, double* %9, align 8
  %41 = load double, double* %8, align 8
  %42 = fcmp ogt double %40, %41
  br i1 %42, label %43, label %56

43:                                               ; preds = %39
  %44 = load double, double* %7, align 8
  %45 = fadd double %44, 1.000000e+00
  store double %45, double* %7, align 8
  %46 = load double, double* %5, align 8
  %47 = fadd double %46, 1.000000e+00
  store double %47, double* %5, align 8
  %48 = load double, double* %5, align 8
  %49 = load i32, i32* %6, align 4
  %50 = sitofp i32 %49 to double
  %51 = fsub double %48, %50
  %52 = load double, double* %5, align 8
  %53 = fdiv double %51, %52
  %54 = load double, double* %9, align 8
  %55 = fmul double %54, %53
  store double %55, double* %9, align 8
  br label %39

56:                                               ; preds = %39
  br label %196

57:                                               ; preds = %3
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load double, double* %59, align 8
  store double %60, double* %10, align 8
  %61 = load double, double* %5, align 8
  %62 = load i32, i32* %6, align 4
  %63 = sitofp i32 %62 to double
  %64 = fsub double %61, %63
  %65 = fadd double %64, 1.000000e+00
  store double %65, double* %11, align 8
  br label %66

66:                                               ; preds = %191, %57
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = call double @sampler_random_fract(i32 %69)
  store double %70, double* %15, align 8
  %71 = load double, double* %5, align 8
  %72 = load double, double* %10, align 8
  %73 = fsub double %72, 1.000000e+00
  %74 = fmul double %71, %73
  store double %74, double* %16, align 8
  %75 = load double, double* %16, align 8
  %76 = call double @llvm.floor.f64(double %75)
  store double %76, double* %7, align 8
  %77 = load double, double* %5, align 8
  %78 = fadd double %77, 1.000000e+00
  %79 = load double, double* %11, align 8
  %80 = fdiv double %78, %79
  store double %80, double* %20, align 8
  %81 = load double, double* %15, align 8
  %82 = load double, double* %20, align 8
  %83 = fmul double %81, %82
  %84 = load double, double* %20, align 8
  %85 = fmul double %83, %84
  %86 = load double, double* %11, align 8
  %87 = load double, double* %7, align 8
  %88 = fadd double %86, %87
  %89 = fmul double %85, %88
  %90 = load double, double* %5, align 8
  %91 = load double, double* %16, align 8
  %92 = fadd double %90, %91
  %93 = fdiv double %89, %92
  %94 = call i32 @log(double %93)
  %95 = load i32, i32* %6, align 4
  %96 = sdiv i32 %94, %95
  %97 = call double @exp(i32 %96)
  store double %97, double* %17, align 8
  %98 = load double, double* %5, align 8
  %99 = load double, double* %16, align 8
  %100 = fadd double %98, %99
  %101 = load double, double* %11, align 8
  %102 = load double, double* %7, align 8
  %103 = fadd double %101, %102
  %104 = fdiv double %100, %103
  %105 = load double, double* %11, align 8
  %106 = fmul double %104, %105
  %107 = load double, double* %5, align 8
  %108 = fdiv double %106, %107
  store double %108, double* %18, align 8
  %109 = load double, double* %17, align 8
  %110 = load double, double* %18, align 8
  %111 = fcmp ole double %109, %110
  br i1 %111, label %112, label %116

112:                                              ; preds = %66
  %113 = load double, double* %18, align 8
  %114 = load double, double* %17, align 8
  %115 = fdiv double %113, %114
  store double %115, double* %10, align 8
  br label %192

116:                                              ; preds = %66
  %117 = load double, double* %15, align 8
  %118 = load double, double* %5, align 8
  %119 = fadd double %118, 1.000000e+00
  %120 = fmul double %117, %119
  %121 = load double, double* %11, align 8
  %122 = fdiv double %120, %121
  %123 = load double, double* %5, align 8
  %124 = load double, double* %7, align 8
  %125 = fadd double %123, %124
  %126 = fadd double %125, 1.000000e+00
  %127 = fmul double %122, %126
  %128 = load double, double* %5, align 8
  %129 = load double, double* %16, align 8
  %130 = fadd double %128, %129
  %131 = fdiv double %127, %130
  store double %131, double* %19, align 8
  %132 = load i32, i32* %6, align 4
  %133 = sitofp i32 %132 to double
  %134 = load double, double* %7, align 8
  %135 = fcmp olt double %133, %134
  br i1 %135, label %136, label %141

136:                                              ; preds = %116
  %137 = load double, double* %5, align 8
  store double %137, double* %14, align 8
  %138 = load double, double* %11, align 8
  %139 = load double, double* %7, align 8
  %140 = fadd double %138, %139
  store double %140, double* %13, align 8
  br label %150

141:                                              ; preds = %116
  %142 = load double, double* %5, align 8
  %143 = load i32, i32* %6, align 4
  %144 = sitofp i32 %143 to double
  %145 = fsub double %142, %144
  %146 = load double, double* %7, align 8
  %147 = fadd double %145, %146
  store double %147, double* %14, align 8
  %148 = load double, double* %5, align 8
  %149 = fadd double %148, 1.000000e+00
  store double %149, double* %13, align 8
  br label %150

150:                                              ; preds = %141, %136
  %151 = load double, double* %5, align 8
  %152 = load double, double* %7, align 8
  %153 = fadd double %151, %152
  store double %153, double* %12, align 8
  br label %154

154:                                              ; preds = %166, %150
  %155 = load double, double* %12, align 8
  %156 = load double, double* %13, align 8
  %157 = fcmp oge double %155, %156
  br i1 %157, label %158, label %169

158:                                              ; preds = %154
  %159 = load double, double* %12, align 8
  %160 = load double, double* %14, align 8
  %161 = fdiv double %159, %160
  %162 = load double, double* %19, align 8
  %163 = fmul double %162, %161
  store double %163, double* %19, align 8
  %164 = load double, double* %14, align 8
  %165 = fsub double %164, 1.000000e+00
  store double %165, double* %14, align 8
  br label %166

166:                                              ; preds = %158
  %167 = load double, double* %12, align 8
  %168 = fsub double %167, 1.000000e+00
  store double %168, double* %12, align 8
  br label %154

169:                                              ; preds = %154
  %170 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %171 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 8
  %173 = call double @sampler_random_fract(i32 %172)
  %174 = call i32 @log(double %173)
  %175 = sub nsw i32 0, %174
  %176 = load i32, i32* %6, align 4
  %177 = sdiv i32 %175, %176
  %178 = call double @exp(i32 %177)
  store double %178, double* %10, align 8
  %179 = load double, double* %19, align 8
  %180 = call i32 @log(double %179)
  %181 = load i32, i32* %6, align 4
  %182 = sdiv i32 %180, %181
  %183 = call double @exp(i32 %182)
  %184 = load double, double* %5, align 8
  %185 = load double, double* %16, align 8
  %186 = fadd double %184, %185
  %187 = load double, double* %5, align 8
  %188 = fdiv double %186, %187
  %189 = fcmp ole double %183, %188
  br i1 %189, label %190, label %191

190:                                              ; preds = %169
  br label %192

191:                                              ; preds = %169
  br label %66

192:                                              ; preds = %190, %112
  %193 = load double, double* %10, align 8
  %194 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %195 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %194, i32 0, i32 0
  store double %193, double* %195, align 8
  br label %196

196:                                              ; preds = %192, %56
  %197 = load double, double* %7, align 8
  ret double %197
}

declare dso_local double @sampler_random_fract(i32) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare double @llvm.floor.f64(double) #2

declare dso_local double @exp(i32) #1

declare dso_local i32 @log(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
