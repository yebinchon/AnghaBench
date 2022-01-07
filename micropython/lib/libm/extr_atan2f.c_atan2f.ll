; ModuleID = '/home/carl/AnghaBench/micropython/lib/libm/extr_atan2f.c_atan2f.c'
source_filename = "/home/carl/AnghaBench/micropython/lib/libm/extr_atan2f.c_atan2f.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@pi = common dso_local global float 0.000000e+00, align 4
@pi_lo = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float @atan2f(float %0, float %1) #0 {
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store float %0, float* %4, align 4
  store float %1, float* %5, align 4
  %10 = load float, float* %5, align 4
  %11 = call i64 @isnan(float %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %2
  %14 = load float, float* %4, align 4
  %15 = call i64 @isnan(float %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %13, %2
  %18 = load float, float* %5, align 4
  %19 = load float, float* %4, align 4
  %20 = fadd float %18, %19
  store float %20, float* %3, align 4
  br label %166

21:                                               ; preds = %13
  %22 = load i32, i32* %8, align 4
  %23 = load float, float* %5, align 4
  %24 = call i32 @GET_FLOAT_WORD(i32 %22, float %23)
  %25 = load i32, i32* %9, align 4
  %26 = load float, float* %4, align 4
  %27 = call i32 @GET_FLOAT_WORD(i32 %25, float %26)
  %28 = load i32, i32* %8, align 4
  %29 = icmp eq i32 %28, 1065353216
  br i1 %29, label %30, label %33

30:                                               ; preds = %21
  %31 = load float, float* %4, align 4
  %32 = call float @atanf(float %31) #4
  store float %32, float* %3, align 4
  br label %166

33:                                               ; preds = %21
  %34 = load i32, i32* %9, align 4
  %35 = ashr i32 %34, 31
  %36 = and i32 %35, 1
  %37 = load i32, i32* %8, align 4
  %38 = ashr i32 %37, 30
  %39 = and i32 %38, 2
  %40 = or i32 %36, %39
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %8, align 4
  %42 = and i32 %41, 2147483647
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %9, align 4
  %44 = and i32 %43, 2147483647
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* %9, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %57

47:                                               ; preds = %33
  %48 = load i32, i32* %7, align 4
  switch i32 %48, label %56 [
    i32 0, label %49
    i32 1, label %49
    i32 2, label %51
    i32 3, label %53
  ]

49:                                               ; preds = %47, %47
  %50 = load float, float* %4, align 4
  store float %50, float* %3, align 4
  br label %166

51:                                               ; preds = %47
  %52 = load float, float* @pi, align 4
  store float %52, float* %3, align 4
  br label %166

53:                                               ; preds = %47
  %54 = load float, float* @pi, align 4
  %55 = fneg float %54
  store float %55, float* %3, align 4
  br label %166

56:                                               ; preds = %47
  br label %57

57:                                               ; preds = %56, %33
  %58 = load i32, i32* %8, align 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %73

60:                                               ; preds = %57
  %61 = load i32, i32* %7, align 4
  %62 = and i32 %61, 1
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %60
  %65 = load float, float* @pi, align 4
  %66 = fneg float %65
  %67 = fdiv float %66, 2.000000e+00
  br label %71

68:                                               ; preds = %60
  %69 = load float, float* @pi, align 4
  %70 = fdiv float %69, 2.000000e+00
  br label %71

71:                                               ; preds = %68, %64
  %72 = phi float [ %67, %64 ], [ %70, %68 ]
  store float %72, float* %3, align 4
  br label %166

73:                                               ; preds = %57
  %74 = load i32, i32* %8, align 4
  %75 = icmp eq i32 %74, 2139095040
  br i1 %75, label %76, label %108

76:                                               ; preds = %73
  %77 = load i32, i32* %9, align 4
  %78 = icmp eq i32 %77, 2139095040
  br i1 %78, label %79, label %97

79:                                               ; preds = %76
  %80 = load i32, i32* %7, align 4
  switch i32 %80, label %96 [
    i32 0, label %81
    i32 1, label %84
    i32 2, label %88
    i32 3, label %92
  ]

81:                                               ; preds = %79
  %82 = load float, float* @pi, align 4
  %83 = fdiv float %82, 4.000000e+00
  store float %83, float* %3, align 4
  br label %166

84:                                               ; preds = %79
  %85 = load float, float* @pi, align 4
  %86 = fneg float %85
  %87 = fdiv float %86, 4.000000e+00
  store float %87, float* %3, align 4
  br label %166

88:                                               ; preds = %79
  %89 = load float, float* @pi, align 4
  %90 = fmul float 3.000000e+00, %89
  %91 = fdiv float %90, 4.000000e+00
  store float %91, float* %3, align 4
  br label %166

92:                                               ; preds = %79
  %93 = load float, float* @pi, align 4
  %94 = fmul float -3.000000e+00, %93
  %95 = fdiv float %94, 4.000000e+00
  store float %95, float* %3, align 4
  br label %166

96:                                               ; preds = %79
  br label %107

97:                                               ; preds = %76
  %98 = load i32, i32* %7, align 4
  switch i32 %98, label %106 [
    i32 0, label %99
    i32 1, label %100
    i32 2, label %101
    i32 3, label %103
  ]

99:                                               ; preds = %97
  store float 0.000000e+00, float* %3, align 4
  br label %166

100:                                              ; preds = %97
  store float -0.000000e+00, float* %3, align 4
  br label %166

101:                                              ; preds = %97
  %102 = load float, float* @pi, align 4
  store float %102, float* %3, align 4
  br label %166

103:                                              ; preds = %97
  %104 = load float, float* @pi, align 4
  %105 = fneg float %104
  store float %105, float* %3, align 4
  br label %166

106:                                              ; preds = %97
  br label %107

107:                                              ; preds = %106, %96
  br label %108

108:                                              ; preds = %107, %73
  %109 = load i32, i32* %8, align 4
  %110 = add nsw i32 %109, 218103808
  %111 = load i32, i32* %9, align 4
  %112 = icmp slt i32 %110, %111
  br i1 %112, label %116, label %113

113:                                              ; preds = %108
  %114 = load i32, i32* %9, align 4
  %115 = icmp eq i32 %114, 2139095040
  br i1 %115, label %116, label %129

116:                                              ; preds = %113, %108
  %117 = load i32, i32* %7, align 4
  %118 = and i32 %117, 1
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %124

120:                                              ; preds = %116
  %121 = load float, float* @pi, align 4
  %122 = fneg float %121
  %123 = fdiv float %122, 2.000000e+00
  br label %127

124:                                              ; preds = %116
  %125 = load float, float* @pi, align 4
  %126 = fdiv float %125, 2.000000e+00
  br label %127

127:                                              ; preds = %124, %120
  %128 = phi float [ %123, %120 ], [ %126, %124 ]
  store float %128, float* %3, align 4
  br label %166

129:                                              ; preds = %113
  %130 = load i32, i32* %7, align 4
  %131 = and i32 %130, 2
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %139

133:                                              ; preds = %129
  %134 = load i32, i32* %9, align 4
  %135 = add nsw i32 %134, 218103808
  %136 = load i32, i32* %8, align 4
  %137 = icmp slt i32 %135, %136
  br i1 %137, label %138, label %139

138:                                              ; preds = %133
  store float 0.000000e+00, float* %6, align 4
  br label %145

139:                                              ; preds = %133, %129
  %140 = load float, float* %4, align 4
  %141 = load float, float* %5, align 4
  %142 = fdiv float %140, %141
  %143 = call float @llvm.fabs.f32(float %142)
  %144 = call float @atanf(float %143) #4
  store float %144, float* %6, align 4
  br label %145

145:                                              ; preds = %139, %138
  %146 = load i32, i32* %7, align 4
  switch i32 %146, label %159 [
    i32 0, label %147
    i32 1, label %149
    i32 2, label %152
  ]

147:                                              ; preds = %145
  %148 = load float, float* %6, align 4
  store float %148, float* %3, align 4
  br label %166

149:                                              ; preds = %145
  %150 = load float, float* %6, align 4
  %151 = fneg float %150
  store float %151, float* %3, align 4
  br label %166

152:                                              ; preds = %145
  %153 = load float, float* @pi, align 4
  %154 = load float, float* %6, align 4
  %155 = load i32, i32* @pi_lo, align 4
  %156 = sitofp i32 %155 to float
  %157 = fsub float %154, %156
  %158 = fsub float %153, %157
  store float %158, float* %3, align 4
  br label %166

159:                                              ; preds = %145
  %160 = load float, float* %6, align 4
  %161 = load i32, i32* @pi_lo, align 4
  %162 = sitofp i32 %161 to float
  %163 = fsub float %160, %162
  %164 = load float, float* @pi, align 4
  %165 = fsub float %163, %164
  store float %165, float* %3, align 4
  br label %166

166:                                              ; preds = %159, %152, %149, %147, %127, %103, %101, %100, %99, %92, %88, %84, %81, %71, %53, %51, %49, %30, %17
  %167 = load float, float* %3, align 4
  ret float %167
}

declare dso_local i64 @isnan(float) #1

declare dso_local i32 @GET_FLOAT_WORD(i32, float) #1

; Function Attrs: nounwind
declare dso_local float @atanf(float) #2

; Function Attrs: nounwind readnone speculatable willreturn
declare float @llvm.fabs.f32(float) #3

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
