; ModuleID = '/home/carl/AnghaBench/micropython/lib/libm_dbl/extr_atan2.c_atan2.c'
source_filename = "/home/carl/AnghaBench/micropython/lib/libm_dbl/extr_atan2.c_atan2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@pi = common dso_local global double 0.000000e+00, align 8
@pi_lo = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @atan2(double %0, double %1) #0 {
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store double %0, double* %4, align 8
  store double %1, double* %5, align 8
  %12 = load double, double* %5, align 8
  %13 = call i64 @isnan(double %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %2
  %16 = load double, double* %4, align 8
  %17 = call i64 @isnan(double %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %15, %2
  %20 = load double, double* %5, align 8
  %21 = load double, double* %4, align 8
  %22 = fadd double %20, %21
  store double %22, double* %3, align 8
  br label %177

23:                                               ; preds = %15
  %24 = load i32, i32* %10, align 4
  %25 = load i32, i32* %8, align 4
  %26 = load double, double* %5, align 8
  %27 = call i32 @EXTRACT_WORDS(i32 %24, i32 %25, double %26)
  %28 = load i32, i32* %11, align 4
  %29 = load i32, i32* %9, align 4
  %30 = load double, double* %4, align 8
  %31 = call i32 @EXTRACT_WORDS(i32 %28, i32 %29, double %30)
  %32 = load i32, i32* %10, align 4
  %33 = sub nsw i32 %32, 1072693248
  %34 = load i32, i32* %8, align 4
  %35 = or i32 %33, %34
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %23
  %38 = load double, double* %4, align 8
  %39 = call double @atan(double %38) #4
  store double %39, double* %3, align 8
  br label %177

40:                                               ; preds = %23
  %41 = load i32, i32* %11, align 4
  %42 = ashr i32 %41, 31
  %43 = and i32 %42, 1
  %44 = load i32, i32* %10, align 4
  %45 = ashr i32 %44, 30
  %46 = and i32 %45, 2
  %47 = or i32 %43, %46
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* %10, align 4
  %49 = and i32 %48, 2147483647
  store i32 %49, i32* %10, align 4
  %50 = load i32, i32* %11, align 4
  %51 = and i32 %50, 2147483647
  store i32 %51, i32* %11, align 4
  %52 = load i32, i32* %11, align 4
  %53 = load i32, i32* %9, align 4
  %54 = or i32 %52, %53
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %66

56:                                               ; preds = %40
  %57 = load i32, i32* %7, align 4
  switch i32 %57, label %65 [
    i32 0, label %58
    i32 1, label %58
    i32 2, label %60
    i32 3, label %62
  ]

58:                                               ; preds = %56, %56
  %59 = load double, double* %4, align 8
  store double %59, double* %3, align 8
  br label %177

60:                                               ; preds = %56
  %61 = load double, double* @pi, align 8
  store double %61, double* %3, align 8
  br label %177

62:                                               ; preds = %56
  %63 = load double, double* @pi, align 8
  %64 = fneg double %63
  store double %64, double* %3, align 8
  br label %177

65:                                               ; preds = %56
  br label %66

66:                                               ; preds = %65, %40
  %67 = load i32, i32* %10, align 4
  %68 = load i32, i32* %8, align 4
  %69 = or i32 %67, %68
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %84

71:                                               ; preds = %66
  %72 = load i32, i32* %7, align 4
  %73 = and i32 %72, 1
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %71
  %76 = load double, double* @pi, align 8
  %77 = fneg double %76
  %78 = fdiv double %77, 2.000000e+00
  br label %82

79:                                               ; preds = %71
  %80 = load double, double* @pi, align 8
  %81 = fdiv double %80, 2.000000e+00
  br label %82

82:                                               ; preds = %79, %75
  %83 = phi double [ %78, %75 ], [ %81, %79 ]
  store double %83, double* %3, align 8
  br label %177

84:                                               ; preds = %66
  %85 = load i32, i32* %10, align 4
  %86 = icmp eq i32 %85, 2146435072
  br i1 %86, label %87, label %119

87:                                               ; preds = %84
  %88 = load i32, i32* %11, align 4
  %89 = icmp eq i32 %88, 2146435072
  br i1 %89, label %90, label %108

90:                                               ; preds = %87
  %91 = load i32, i32* %7, align 4
  switch i32 %91, label %107 [
    i32 0, label %92
    i32 1, label %95
    i32 2, label %99
    i32 3, label %103
  ]

92:                                               ; preds = %90
  %93 = load double, double* @pi, align 8
  %94 = fdiv double %93, 4.000000e+00
  store double %94, double* %3, align 8
  br label %177

95:                                               ; preds = %90
  %96 = load double, double* @pi, align 8
  %97 = fneg double %96
  %98 = fdiv double %97, 4.000000e+00
  store double %98, double* %3, align 8
  br label %177

99:                                               ; preds = %90
  %100 = load double, double* @pi, align 8
  %101 = fmul double 3.000000e+00, %100
  %102 = fdiv double %101, 4.000000e+00
  store double %102, double* %3, align 8
  br label %177

103:                                              ; preds = %90
  %104 = load double, double* @pi, align 8
  %105 = fmul double -3.000000e+00, %104
  %106 = fdiv double %105, 4.000000e+00
  store double %106, double* %3, align 8
  br label %177

107:                                              ; preds = %90
  br label %118

108:                                              ; preds = %87
  %109 = load i32, i32* %7, align 4
  switch i32 %109, label %117 [
    i32 0, label %110
    i32 1, label %111
    i32 2, label %112
    i32 3, label %114
  ]

110:                                              ; preds = %108
  store double 0.000000e+00, double* %3, align 8
  br label %177

111:                                              ; preds = %108
  store double -0.000000e+00, double* %3, align 8
  br label %177

112:                                              ; preds = %108
  %113 = load double, double* @pi, align 8
  store double %113, double* %3, align 8
  br label %177

114:                                              ; preds = %108
  %115 = load double, double* @pi, align 8
  %116 = fneg double %115
  store double %116, double* %3, align 8
  br label %177

117:                                              ; preds = %108
  br label %118

118:                                              ; preds = %117, %107
  br label %119

119:                                              ; preds = %118, %84
  %120 = load i32, i32* %10, align 4
  %121 = add nsw i32 %120, 67108864
  %122 = load i32, i32* %11, align 4
  %123 = icmp slt i32 %121, %122
  br i1 %123, label %127, label %124

124:                                              ; preds = %119
  %125 = load i32, i32* %11, align 4
  %126 = icmp eq i32 %125, 2146435072
  br i1 %126, label %127, label %140

127:                                              ; preds = %124, %119
  %128 = load i32, i32* %7, align 4
  %129 = and i32 %128, 1
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %135

131:                                              ; preds = %127
  %132 = load double, double* @pi, align 8
  %133 = fneg double %132
  %134 = fdiv double %133, 2.000000e+00
  br label %138

135:                                              ; preds = %127
  %136 = load double, double* @pi, align 8
  %137 = fdiv double %136, 2.000000e+00
  br label %138

138:                                              ; preds = %135, %131
  %139 = phi double [ %134, %131 ], [ %137, %135 ]
  store double %139, double* %3, align 8
  br label %177

140:                                              ; preds = %124
  %141 = load i32, i32* %7, align 4
  %142 = and i32 %141, 2
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %150

144:                                              ; preds = %140
  %145 = load i32, i32* %11, align 4
  %146 = add nsw i32 %145, 67108864
  %147 = load i32, i32* %10, align 4
  %148 = icmp slt i32 %146, %147
  br i1 %148, label %149, label %150

149:                                              ; preds = %144
  store double 0.000000e+00, double* %6, align 8
  br label %156

150:                                              ; preds = %144, %140
  %151 = load double, double* %4, align 8
  %152 = load double, double* %5, align 8
  %153 = fdiv double %151, %152
  %154 = call double @llvm.fabs.f64(double %153)
  %155 = call double @atan(double %154) #4
  store double %155, double* %6, align 8
  br label %156

156:                                              ; preds = %150, %149
  %157 = load i32, i32* %7, align 4
  switch i32 %157, label %170 [
    i32 0, label %158
    i32 1, label %160
    i32 2, label %163
  ]

158:                                              ; preds = %156
  %159 = load double, double* %6, align 8
  store double %159, double* %3, align 8
  br label %177

160:                                              ; preds = %156
  %161 = load double, double* %6, align 8
  %162 = fneg double %161
  store double %162, double* %3, align 8
  br label %177

163:                                              ; preds = %156
  %164 = load double, double* @pi, align 8
  %165 = load double, double* %6, align 8
  %166 = load i32, i32* @pi_lo, align 4
  %167 = sitofp i32 %166 to double
  %168 = fsub double %165, %167
  %169 = fsub double %164, %168
  store double %169, double* %3, align 8
  br label %177

170:                                              ; preds = %156
  %171 = load double, double* %6, align 8
  %172 = load i32, i32* @pi_lo, align 4
  %173 = sitofp i32 %172 to double
  %174 = fsub double %171, %173
  %175 = load double, double* @pi, align 8
  %176 = fsub double %174, %175
  store double %176, double* %3, align 8
  br label %177

177:                                              ; preds = %170, %163, %160, %158, %138, %114, %112, %111, %110, %103, %99, %95, %92, %82, %62, %60, %58, %37, %19
  %178 = load double, double* %3, align 8
  ret double %178
}

declare dso_local i64 @isnan(double) #1

declare dso_local i32 @EXTRACT_WORDS(i32, i32, double) #1

; Function Attrs: nounwind
declare dso_local double @atan(double) #2

; Function Attrs: nounwind readnone speculatable willreturn
declare double @llvm.fabs.f64(double) #3

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
