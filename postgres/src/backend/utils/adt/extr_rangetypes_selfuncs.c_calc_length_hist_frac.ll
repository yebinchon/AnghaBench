; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_rangetypes_selfuncs.c_calc_length_hist_frac.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_rangetypes_selfuncs.c_calc_length_hist_frac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (double (i32*, i32, double, double, i32)* @calc_length_hist_frac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @calc_length_hist_frac(i32* %0, i32 %1, double %2, double %3, i32 %4) #0 {
  %6 = alloca double, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca i32, align 4
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  %18 = alloca i32, align 4
  %19 = alloca double, align 8
  %20 = alloca double, align 8
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store double %2, double* %9, align 8
  store double %3, double* %10, align 8
  store i32 %4, i32* %11, align 4
  %21 = load double, double* %10, align 8
  %22 = load double, double* %9, align 8
  %23 = fcmp oge double %21, %22
  %24 = zext i1 %23 to i32
  %25 = call i32 @Assert(i32 %24)
  %26 = load double, double* %10, align 8
  %27 = fcmp olt double %26, 0.000000e+00
  br i1 %27, label %28, label %29

28:                                               ; preds = %5
  store double 0.000000e+00, double* %6, align 8
  br label %222

29:                                               ; preds = %5
  %30 = load double, double* %10, align 8
  %31 = call i64 @isinf(double %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %29
  %34 = load i32, i32* %11, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  store double 1.000000e+00, double* %6, align 8
  br label %222

37:                                               ; preds = %33, %29
  %38 = load i32*, i32** %7, align 8
  %39 = load i32, i32* %8, align 4
  %40 = load double, double* %9, align 8
  %41 = load i32, i32* %11, align 4
  %42 = call i32 @length_hist_bsearch(i32* %38, i32 %39, double %40, i32 %41)
  store i32 %42, i32* %18, align 4
  %43 = load i32, i32* %18, align 4
  %44 = load i32, i32* %8, align 4
  %45 = sub nsw i32 %44, 1
  %46 = icmp sge i32 %43, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %37
  store double 1.000000e+00, double* %6, align 8
  br label %222

48:                                               ; preds = %37
  %49 = load i32, i32* %18, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %48
  store i32 0, i32* %18, align 4
  store double 0.000000e+00, double* %17, align 8
  br label %68

52:                                               ; preds = %48
  %53 = load double, double* %9, align 8
  %54 = load i32*, i32** %7, align 8
  %55 = load i32, i32* %18, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = call double @DatumGetFloat8(i32 %58)
  %60 = load i32*, i32** %7, align 8
  %61 = load i32, i32* %18, align 4
  %62 = add nsw i32 %61, 1
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %60, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = call double @DatumGetFloat8(i32 %65)
  %67 = call double @get_len_position(double %53, double %59, double %66)
  store double %67, double* %17, align 8
  br label %68

68:                                               ; preds = %52, %51
  %69 = load i32, i32* %18, align 4
  %70 = sitofp i32 %69 to double
  %71 = load double, double* %17, align 8
  %72 = fadd double %70, %71
  %73 = load i32, i32* %8, align 4
  %74 = sub nsw i32 %73, 1
  %75 = sitofp i32 %74 to double
  %76 = fdiv double %72, %75
  store double %76, double* %16, align 8
  %77 = load double, double* %9, align 8
  store double %77, double* %14, align 8
  %78 = load double, double* %10, align 8
  %79 = load double, double* %9, align 8
  %80 = fcmp oeq double %78, %79
  br i1 %80, label %81, label %83

81:                                               ; preds = %68
  %82 = load double, double* %16, align 8
  store double %82, double* %6, align 8
  br label %222

83:                                               ; preds = %68
  store double 0.000000e+00, double* %19, align 8
  br label %84

84:                                               ; preds = %135, %83
  %85 = load i32, i32* %18, align 4
  %86 = load i32, i32* %8, align 4
  %87 = sub nsw i32 %86, 1
  %88 = icmp slt i32 %85, %87
  br i1 %88, label %89, label %138

89:                                               ; preds = %84
  %90 = load i32*, i32** %7, align 8
  %91 = load i32, i32* %18, align 4
  %92 = add nsw i32 %91, 1
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %90, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = call double @DatumGetFloat8(i32 %95)
  store double %96, double* %20, align 8
  %97 = load double, double* %20, align 8
  %98 = load double, double* %10, align 8
  %99 = fcmp olt double %97, %98
  br i1 %99, label %108, label %100

100:                                              ; preds = %89
  %101 = load i32, i32* %11, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %100
  %104 = load double, double* %20, align 8
  %105 = load double, double* %10, align 8
  %106 = fcmp ole double %104, %105
  br i1 %106, label %108, label %107

107:                                              ; preds = %103, %100
  br label %138

108:                                              ; preds = %103, %89
  %109 = load double, double* %14, align 8
  store double %109, double* %13, align 8
  %110 = load double, double* %16, align 8
  store double %110, double* %15, align 8
  %111 = load double, double* %20, align 8
  store double %111, double* %14, align 8
  %112 = load i32, i32* %18, align 4
  %113 = sitofp i32 %112 to double
  %114 = load i32, i32* %8, align 4
  %115 = sub nsw i32 %114, 1
  %116 = sitofp i32 %115 to double
  %117 = fdiv double %113, %116
  store double %117, double* %16, align 8
  %118 = load double, double* %15, align 8
  %119 = fcmp ogt double %118, 0.000000e+00
  br i1 %119, label %123, label %120

120:                                              ; preds = %108
  %121 = load double, double* %16, align 8
  %122 = fcmp ogt double %121, 0.000000e+00
  br i1 %122, label %123, label %134

123:                                              ; preds = %120, %108
  %124 = load double, double* %16, align 8
  %125 = load double, double* %15, align 8
  %126 = fadd double %124, %125
  %127 = fmul double 5.000000e-01, %126
  %128 = load double, double* %14, align 8
  %129 = load double, double* %13, align 8
  %130 = fsub double %128, %129
  %131 = fmul double %127, %130
  %132 = load double, double* %19, align 8
  %133 = fadd double %132, %131
  store double %133, double* %19, align 8
  br label %134

134:                                              ; preds = %123, %120
  br label %135

135:                                              ; preds = %134
  %136 = load i32, i32* %18, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %18, align 4
  br label %84

138:                                              ; preds = %107, %84
  %139 = load double, double* %14, align 8
  store double %139, double* %13, align 8
  %140 = load double, double* %16, align 8
  store double %140, double* %15, align 8
  %141 = load double, double* %10, align 8
  store double %141, double* %14, align 8
  %142 = load i32, i32* %18, align 4
  %143 = load i32, i32* %8, align 4
  %144 = sub nsw i32 %143, 1
  %145 = icmp sge i32 %142, %144
  br i1 %145, label %146, label %147

146:                                              ; preds = %138
  store double 0.000000e+00, double* %17, align 8
  br label %180

147:                                              ; preds = %138
  %148 = load i32*, i32** %7, align 8
  %149 = load i32, i32* %18, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i32, i32* %148, i64 %150
  %152 = load i32, i32* %151, align 4
  %153 = call double @DatumGetFloat8(i32 %152)
  %154 = load i32*, i32** %7, align 8
  %155 = load i32, i32* %18, align 4
  %156 = add nsw i32 %155, 1
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i32, i32* %154, i64 %157
  %159 = load i32, i32* %158, align 4
  %160 = call double @DatumGetFloat8(i32 %159)
  %161 = fcmp oeq double %153, %160
  br i1 %161, label %162, label %163

162:                                              ; preds = %147
  store double 0.000000e+00, double* %17, align 8
  br label %179

163:                                              ; preds = %147
  %164 = load double, double* %10, align 8
  %165 = load i32*, i32** %7, align 8
  %166 = load i32, i32* %18, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i32, i32* %165, i64 %167
  %169 = load i32, i32* %168, align 4
  %170 = call double @DatumGetFloat8(i32 %169)
  %171 = load i32*, i32** %7, align 8
  %172 = load i32, i32* %18, align 4
  %173 = add nsw i32 %172, 1
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i32, i32* %171, i64 %174
  %176 = load i32, i32* %175, align 4
  %177 = call double @DatumGetFloat8(i32 %176)
  %178 = call double @get_len_position(double %164, double %170, double %177)
  store double %178, double* %17, align 8
  br label %179

179:                                              ; preds = %163, %162
  br label %180

180:                                              ; preds = %179, %146
  %181 = load i32, i32* %18, align 4
  %182 = sitofp i32 %181 to double
  %183 = load double, double* %17, align 8
  %184 = fadd double %182, %183
  %185 = load i32, i32* %8, align 4
  %186 = sub nsw i32 %185, 1
  %187 = sitofp i32 %186 to double
  %188 = fdiv double %184, %187
  store double %188, double* %16, align 8
  %189 = load double, double* %15, align 8
  %190 = fcmp ogt double %189, 0.000000e+00
  br i1 %190, label %194, label %191

191:                                              ; preds = %180
  %192 = load double, double* %16, align 8
  %193 = fcmp ogt double %192, 0.000000e+00
  br i1 %193, label %194, label %205

194:                                              ; preds = %191, %180
  %195 = load double, double* %16, align 8
  %196 = load double, double* %15, align 8
  %197 = fadd double %195, %196
  %198 = fmul double 5.000000e-01, %197
  %199 = load double, double* %14, align 8
  %200 = load double, double* %13, align 8
  %201 = fsub double %199, %200
  %202 = fmul double %198, %201
  %203 = load double, double* %19, align 8
  %204 = fadd double %203, %202
  store double %204, double* %19, align 8
  br label %205

205:                                              ; preds = %194, %191
  %206 = load double, double* %19, align 8
  %207 = call i64 @isinf(double %206)
  %208 = icmp ne i64 %207, 0
  br i1 %208, label %209, label %214

209:                                              ; preds = %205
  %210 = load double, double* %10, align 8
  %211 = call i64 @isinf(double %210)
  %212 = icmp ne i64 %211, 0
  br i1 %212, label %213, label %214

213:                                              ; preds = %209
  store double 5.000000e-01, double* %12, align 8
  br label %220

214:                                              ; preds = %209, %205
  %215 = load double, double* %19, align 8
  %216 = load double, double* %10, align 8
  %217 = load double, double* %9, align 8
  %218 = fsub double %216, %217
  %219 = fdiv double %215, %218
  store double %219, double* %12, align 8
  br label %220

220:                                              ; preds = %214, %213
  %221 = load double, double* %12, align 8
  store double %221, double* %6, align 8
  br label %222

222:                                              ; preds = %220, %81, %47, %36, %28
  %223 = load double, double* %6, align 8
  ret double %223
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i64 @isinf(double) #1

declare dso_local i32 @length_hist_bsearch(i32*, i32, double, i32) #1

declare dso_local double @get_len_position(double, double, double) #1

declare dso_local double @DatumGetFloat8(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
