; ModuleID = '/home/carl/AnghaBench/micropython/lib/libm_dbl/extr_log1p.c_log1p.c'
source_filename = "/home/carl/AnghaBench/micropython/lib/libm_dbl/extr_log1p.c_log1p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.anon = type { double }

@Lg2 = common dso_local global double 0.000000e+00, align 8
@Lg4 = common dso_local global double 0.000000e+00, align 8
@Lg6 = common dso_local global double 0.000000e+00, align 8
@Lg1 = common dso_local global double 0.000000e+00, align 8
@Lg3 = common dso_local global double 0.000000e+00, align 8
@Lg5 = common dso_local global double 0.000000e+00, align 8
@Lg7 = common dso_local global double 0.000000e+00, align 8
@ln2_lo = common dso_local global double 0.000000e+00, align 8
@ln2_hi = common dso_local global double 0.000000e+00, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @log1p(double %0) #0 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca %union.anon, align 8
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
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store double %0, double* %3, align 8
  %18 = bitcast %union.anon* %4 to double*
  %19 = load double, double* %3, align 8
  store double %19, double* %18, align 8
  %20 = bitcast %union.anon* %4 to i32*
  %21 = load i32, i32* %20, align 8
  %22 = ashr i32 %21, 32
  store i32 %22, i32* %15, align 4
  store i32 1, i32* %17, align 4
  %23 = load i32, i32* %15, align 4
  %24 = icmp slt i32 %23, 1071284858
  br i1 %24, label %29, label %25

25:                                               ; preds = %1
  %26 = load i32, i32* %15, align 4
  %27 = ashr i32 %26, 31
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %63

29:                                               ; preds = %25, %1
  %30 = load i32, i32* %15, align 4
  %31 = icmp uge i32 %30, -1074790400
  br i1 %31, label %32, label %43

32:                                               ; preds = %29
  %33 = load double, double* %3, align 8
  %34 = fcmp oeq double %33, -1.000000e+00
  br i1 %34, label %35, label %38

35:                                               ; preds = %32
  %36 = load double, double* %3, align 8
  %37 = fdiv double %36, 0.000000e+00
  store double %37, double* %2, align 8
  br label %186

38:                                               ; preds = %32
  %39 = load double, double* %3, align 8
  %40 = load double, double* %3, align 8
  %41 = fsub double %39, %40
  %42 = fdiv double %41, 0.000000e+00
  store double %42, double* %2, align 8
  br label %186

43:                                               ; preds = %29
  %44 = load i32, i32* %15, align 4
  %45 = shl i32 %44, 1
  %46 = icmp slt i32 %45, 2034237440
  br i1 %46, label %47, label %57

47:                                               ; preds = %43
  %48 = load i32, i32* %15, align 4
  %49 = and i32 %48, 2146435072
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %47
  %52 = load double, double* %3, align 8
  %53 = fptrunc double %52 to float
  %54 = call i32 @FORCE_EVAL(float %53)
  br label %55

55:                                               ; preds = %51, %47
  %56 = load double, double* %3, align 8
  store double %56, double* %2, align 8
  br label %186

57:                                               ; preds = %43
  %58 = load i32, i32* %15, align 4
  %59 = icmp ule i32 %58, -1076707644
  br i1 %59, label %60, label %62

60:                                               ; preds = %57
  store i32 0, i32* %17, align 4
  store double 0.000000e+00, double* %7, align 8
  %61 = load double, double* %3, align 8
  store double %61, double* %6, align 8
  br label %62

62:                                               ; preds = %60, %57
  br label %69

63:                                               ; preds = %25
  %64 = load i32, i32* %15, align 4
  %65 = icmp sge i32 %64, 2146435072
  br i1 %65, label %66, label %68

66:                                               ; preds = %63
  %67 = load double, double* %3, align 8
  store double %67, double* %2, align 8
  br label %186

68:                                               ; preds = %63
  br label %69

69:                                               ; preds = %68, %62
  %70 = load i32, i32* %17, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %121

72:                                               ; preds = %69
  %73 = load double, double* %3, align 8
  %74 = fadd double 1.000000e+00, %73
  %75 = bitcast %union.anon* %4 to double*
  store double %74, double* %75, align 8
  %76 = bitcast %union.anon* %4 to i32*
  %77 = load i32, i32* %76, align 8
  %78 = ashr i32 %77, 32
  store i32 %78, i32* %16, align 4
  %79 = load i32, i32* %16, align 4
  %80 = add nsw i32 %79, 614242
  store i32 %80, i32* %16, align 4
  %81 = load i32, i32* %16, align 4
  %82 = ashr i32 %81, 20
  %83 = sub nsw i32 %82, 1023
  store i32 %83, i32* %17, align 4
  %84 = load i32, i32* %17, align 4
  %85 = icmp slt i32 %84, 54
  br i1 %85, label %86, label %107

86:                                               ; preds = %72
  %87 = load i32, i32* %17, align 4
  %88 = icmp sge i32 %87, 2
  br i1 %88, label %89, label %95

89:                                               ; preds = %86
  %90 = bitcast %union.anon* %4 to double*
  %91 = load double, double* %90, align 8
  %92 = load double, double* %3, align 8
  %93 = fsub double %91, %92
  %94 = fsub double 1.000000e+00, %93
  br label %101

95:                                               ; preds = %86
  %96 = load double, double* %3, align 8
  %97 = bitcast %union.anon* %4 to double*
  %98 = load double, double* %97, align 8
  %99 = fsub double %98, 1.000000e+00
  %100 = fsub double %96, %99
  br label %101

101:                                              ; preds = %95, %89
  %102 = phi double [ %94, %89 ], [ %100, %95 ]
  store double %102, double* %7, align 8
  %103 = bitcast %union.anon* %4 to double*
  %104 = load double, double* %103, align 8
  %105 = load double, double* %7, align 8
  %106 = fdiv double %105, %104
  store double %106, double* %7, align 8
  br label %108

107:                                              ; preds = %72
  store double 0.000000e+00, double* %7, align 8
  br label %108

108:                                              ; preds = %107, %101
  %109 = load i32, i32* %16, align 4
  %110 = and i32 %109, 1048575
  %111 = add nsw i32 %110, 1072079006
  store i32 %111, i32* %16, align 4
  %112 = load i32, i32* %16, align 4
  %113 = shl i32 %112, 32
  %114 = bitcast %union.anon* %4 to i32*
  %115 = load i32, i32* %114, align 8
  %116 = or i32 %113, %115
  %117 = bitcast %union.anon* %4 to i32*
  store i32 %116, i32* %117, align 8
  %118 = bitcast %union.anon* %4 to double*
  %119 = load double, double* %118, align 8
  %120 = fsub double %119, 1.000000e+00
  store double %120, double* %6, align 8
  br label %121

121:                                              ; preds = %108, %69
  %122 = load double, double* %6, align 8
  %123 = fmul double 5.000000e-01, %122
  %124 = load double, double* %6, align 8
  %125 = fmul double %123, %124
  store double %125, double* %5, align 8
  %126 = load double, double* %6, align 8
  %127 = load double, double* %6, align 8
  %128 = fadd double 2.000000e+00, %127
  %129 = fdiv double %126, %128
  store double %129, double* %8, align 8
  %130 = load double, double* %8, align 8
  %131 = load double, double* %8, align 8
  %132 = fmul double %130, %131
  store double %132, double* %9, align 8
  %133 = load double, double* %9, align 8
  %134 = load double, double* %9, align 8
  %135 = fmul double %133, %134
  store double %135, double* %11, align 8
  %136 = load double, double* %11, align 8
  %137 = load double, double* @Lg2, align 8
  %138 = load double, double* %11, align 8
  %139 = load double, double* @Lg4, align 8
  %140 = load double, double* %11, align 8
  %141 = load double, double* @Lg6, align 8
  %142 = fmul double %140, %141
  %143 = fadd double %139, %142
  %144 = fmul double %138, %143
  %145 = fadd double %137, %144
  %146 = fmul double %136, %145
  store double %146, double* %12, align 8
  %147 = load double, double* %9, align 8
  %148 = load double, double* @Lg1, align 8
  %149 = load double, double* %11, align 8
  %150 = load double, double* @Lg3, align 8
  %151 = load double, double* %11, align 8
  %152 = load double, double* @Lg5, align 8
  %153 = load double, double* %11, align 8
  %154 = load double, double* @Lg7, align 8
  %155 = fmul double %153, %154
  %156 = fadd double %152, %155
  %157 = fmul double %151, %156
  %158 = fadd double %150, %157
  %159 = fmul double %149, %158
  %160 = fadd double %148, %159
  %161 = fmul double %147, %160
  store double %161, double* %13, align 8
  %162 = load double, double* %13, align 8
  %163 = load double, double* %12, align 8
  %164 = fadd double %162, %163
  store double %164, double* %10, align 8
  %165 = load i32, i32* %17, align 4
  %166 = sitofp i32 %165 to double
  store double %166, double* %14, align 8
  %167 = load double, double* %8, align 8
  %168 = load double, double* %5, align 8
  %169 = load double, double* %10, align 8
  %170 = fadd double %168, %169
  %171 = fmul double %167, %170
  %172 = load double, double* %14, align 8
  %173 = load double, double* @ln2_lo, align 8
  %174 = fmul double %172, %173
  %175 = load double, double* %7, align 8
  %176 = fadd double %174, %175
  %177 = fadd double %171, %176
  %178 = load double, double* %5, align 8
  %179 = fsub double %177, %178
  %180 = load double, double* %6, align 8
  %181 = fadd double %179, %180
  %182 = load double, double* %14, align 8
  %183 = load double, double* @ln2_hi, align 8
  %184 = fmul double %182, %183
  %185 = fadd double %181, %184
  store double %185, double* %2, align 8
  br label %186

186:                                              ; preds = %121, %66, %55, %38, %35
  %187 = load double, double* %2, align 8
  ret double %187
}

declare dso_local i32 @FORCE_EVAL(float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
