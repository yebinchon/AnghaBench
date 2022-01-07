; ModuleID = '/home/carl/AnghaBench/micropython/lib/libm_dbl/extr___tan.c___tan.c'
source_filename = "/home/carl/AnghaBench/micropython/lib/libm_dbl/extr___tan.c___tan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@pio4 = common dso_local global double 0.000000e+00, align 8
@pio4lo = common dso_local global double 0.000000e+00, align 8
@T = common dso_local global double* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @__tan(double %0, double %1, i32 %2) #0 {
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca i32, align 4
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store double %0, double* %5, align 8
  store double %1, double* %6, align 8
  store i32 %2, i32* %7, align 4
  %19 = load i32, i32* %16, align 4
  %20 = load double, double* %5, align 8
  %21 = call i32 @GET_HIGH_WORD(i32 %19, double %20)
  %22 = load i32, i32* %16, align 4
  %23 = and i32 %22, 2147483647
  %24 = icmp sge i32 %23, 1072010280
  %25 = zext i1 %24 to i32
  store i32 %25, i32* %17, align 4
  %26 = load i32, i32* %17, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %46

28:                                               ; preds = %3
  %29 = load i32, i32* %16, align 4
  %30 = ashr i32 %29, 31
  store i32 %30, i32* %18, align 4
  %31 = load i32, i32* %18, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %28
  %34 = load double, double* %5, align 8
  %35 = fneg double %34
  store double %35, double* %5, align 8
  %36 = load double, double* %6, align 8
  %37 = fneg double %36
  store double %37, double* %6, align 8
  br label %38

38:                                               ; preds = %33, %28
  %39 = load double, double* @pio4, align 8
  %40 = load double, double* %5, align 8
  %41 = fsub double %39, %40
  %42 = load double, double* @pio4lo, align 8
  %43 = load double, double* %6, align 8
  %44 = fsub double %42, %43
  %45 = fadd double %41, %44
  store double %45, double* %5, align 8
  store double 0.000000e+00, double* %6, align 8
  br label %46

46:                                               ; preds = %38, %3
  %47 = load double, double* %5, align 8
  %48 = load double, double* %5, align 8
  %49 = fmul double %47, %48
  store double %49, double* %8, align 8
  %50 = load double, double* %8, align 8
  %51 = load double, double* %8, align 8
  %52 = fmul double %50, %51
  store double %52, double* %11, align 8
  %53 = load double*, double** @T, align 8
  %54 = getelementptr inbounds double, double* %53, i64 1
  %55 = load double, double* %54, align 8
  %56 = load double, double* %11, align 8
  %57 = load double*, double** @T, align 8
  %58 = getelementptr inbounds double, double* %57, i64 3
  %59 = load double, double* %58, align 8
  %60 = load double, double* %11, align 8
  %61 = load double*, double** @T, align 8
  %62 = getelementptr inbounds double, double* %61, i64 5
  %63 = load double, double* %62, align 8
  %64 = load double, double* %11, align 8
  %65 = load double*, double** @T, align 8
  %66 = getelementptr inbounds double, double* %65, i64 7
  %67 = load double, double* %66, align 8
  %68 = load double, double* %11, align 8
  %69 = load double*, double** @T, align 8
  %70 = getelementptr inbounds double, double* %69, i64 9
  %71 = load double, double* %70, align 8
  %72 = load double, double* %11, align 8
  %73 = load double*, double** @T, align 8
  %74 = getelementptr inbounds double, double* %73, i64 11
  %75 = load double, double* %74, align 8
  %76 = fmul double %72, %75
  %77 = fadd double %71, %76
  %78 = fmul double %68, %77
  %79 = fadd double %67, %78
  %80 = fmul double %64, %79
  %81 = fadd double %63, %80
  %82 = fmul double %60, %81
  %83 = fadd double %59, %82
  %84 = fmul double %56, %83
  %85 = fadd double %55, %84
  store double %85, double* %9, align 8
  %86 = load double, double* %8, align 8
  %87 = load double*, double** @T, align 8
  %88 = getelementptr inbounds double, double* %87, i64 2
  %89 = load double, double* %88, align 8
  %90 = load double, double* %11, align 8
  %91 = load double*, double** @T, align 8
  %92 = getelementptr inbounds double, double* %91, i64 4
  %93 = load double, double* %92, align 8
  %94 = load double, double* %11, align 8
  %95 = load double*, double** @T, align 8
  %96 = getelementptr inbounds double, double* %95, i64 6
  %97 = load double, double* %96, align 8
  %98 = load double, double* %11, align 8
  %99 = load double*, double** @T, align 8
  %100 = getelementptr inbounds double, double* %99, i64 8
  %101 = load double, double* %100, align 8
  %102 = load double, double* %11, align 8
  %103 = load double*, double** @T, align 8
  %104 = getelementptr inbounds double, double* %103, i64 10
  %105 = load double, double* %104, align 8
  %106 = load double, double* %11, align 8
  %107 = load double*, double** @T, align 8
  %108 = getelementptr inbounds double, double* %107, i64 12
  %109 = load double, double* %108, align 8
  %110 = fmul double %106, %109
  %111 = fadd double %105, %110
  %112 = fmul double %102, %111
  %113 = fadd double %101, %112
  %114 = fmul double %98, %113
  %115 = fadd double %97, %114
  %116 = fmul double %94, %115
  %117 = fadd double %93, %116
  %118 = fmul double %90, %117
  %119 = fadd double %89, %118
  %120 = fmul double %86, %119
  store double %120, double* %10, align 8
  %121 = load double, double* %8, align 8
  %122 = load double, double* %5, align 8
  %123 = fmul double %121, %122
  store double %123, double* %12, align 8
  %124 = load double, double* %6, align 8
  %125 = load double, double* %8, align 8
  %126 = load double, double* %12, align 8
  %127 = load double, double* %9, align 8
  %128 = load double, double* %10, align 8
  %129 = fadd double %127, %128
  %130 = fmul double %126, %129
  %131 = load double, double* %6, align 8
  %132 = fadd double %130, %131
  %133 = fmul double %125, %132
  %134 = fadd double %124, %133
  %135 = load double, double* %12, align 8
  %136 = load double*, double** @T, align 8
  %137 = getelementptr inbounds double, double* %136, i64 0
  %138 = load double, double* %137, align 8
  %139 = fmul double %135, %138
  %140 = fadd double %134, %139
  store double %140, double* %9, align 8
  %141 = load double, double* %5, align 8
  %142 = load double, double* %9, align 8
  %143 = fadd double %141, %142
  store double %143, double* %11, align 8
  %144 = load i32, i32* %17, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %174

146:                                              ; preds = %46
  %147 = load i32, i32* %7, align 4
  %148 = mul nsw i32 2, %147
  %149 = sub nsw i32 1, %148
  %150 = sitofp i32 %149 to double
  store double %150, double* %12, align 8
  %151 = load double, double* %12, align 8
  %152 = load double, double* %5, align 8
  %153 = load double, double* %9, align 8
  %154 = load double, double* %11, align 8
  %155 = load double, double* %11, align 8
  %156 = fmul double %154, %155
  %157 = load double, double* %11, align 8
  %158 = load double, double* %12, align 8
  %159 = fadd double %157, %158
  %160 = fdiv double %156, %159
  %161 = fsub double %153, %160
  %162 = fadd double %152, %161
  %163 = fmul double 2.000000e+00, %162
  %164 = fsub double %151, %163
  store double %164, double* %10, align 8
  %165 = load i32, i32* %18, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %170

167:                                              ; preds = %146
  %168 = load double, double* %10, align 8
  %169 = fneg double %168
  br label %172

170:                                              ; preds = %146
  %171 = load double, double* %10, align 8
  br label %172

172:                                              ; preds = %170, %167
  %173 = phi double [ %169, %167 ], [ %171, %170 ]
  store double %173, double* %4, align 8
  br label %204

174:                                              ; preds = %46
  %175 = load i32, i32* %7, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %179, label %177

177:                                              ; preds = %174
  %178 = load double, double* %11, align 8
  store double %178, double* %4, align 8
  br label %204

179:                                              ; preds = %174
  %180 = load double, double* %11, align 8
  store double %180, double* %14, align 8
  %181 = load double, double* %14, align 8
  %182 = call i32 @SET_LOW_WORD(double %181, i32 0)
  %183 = load double, double* %9, align 8
  %184 = load double, double* %14, align 8
  %185 = load double, double* %5, align 8
  %186 = fsub double %184, %185
  %187 = fsub double %183, %186
  store double %187, double* %10, align 8
  %188 = load double, double* %11, align 8
  %189 = fdiv double -1.000000e+00, %188
  store double %189, double* %13, align 8
  store double %189, double* %15, align 8
  %190 = load double, double* %15, align 8
  %191 = call i32 @SET_LOW_WORD(double %190, i32 0)
  %192 = load double, double* %15, align 8
  %193 = load double, double* %13, align 8
  %194 = load double, double* %15, align 8
  %195 = load double, double* %14, align 8
  %196 = fmul double %194, %195
  %197 = fadd double 1.000000e+00, %196
  %198 = load double, double* %15, align 8
  %199 = load double, double* %10, align 8
  %200 = fmul double %198, %199
  %201 = fadd double %197, %200
  %202 = fmul double %193, %201
  %203 = fadd double %192, %202
  store double %203, double* %4, align 8
  br label %204

204:                                              ; preds = %179, %177, %172
  %205 = load double, double* %4, align 8
  ret double %205
}

declare dso_local i32 @GET_HIGH_WORD(i32, double) #1

declare dso_local i32 @SET_LOW_WORD(double, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
