; ModuleID = '/home/carl/AnghaBench/micropython/lib/libm/extr_ef_sqrt.c_sqrtf.c'
source_filename = "/home/carl/AnghaBench/micropython/lib/libm/extr_ef_sqrt.c_sqrtf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@one = common dso_local global float 0.000000e+00, align 4
@tiny = common dso_local global float 0.000000e+00, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float @sqrtf(float %0) #0 {
  %2 = alloca float, align 4
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store float %0, float* %3, align 4
  %13 = load i32, i32* %7, align 4
  %14 = load float, float* %3, align 4
  %15 = call i32 @GET_FLOAT_WORD(i32 %13, float %14)
  %16 = load i32, i32* %7, align 4
  %17 = and i32 %16, 2147483647
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @FLT_UWORD_IS_FINITE(i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %1
  %22 = load float, float* %3, align 4
  %23 = load float, float* %3, align 4
  %24 = fmul float %22, %23
  %25 = load float, float* %3, align 4
  %26 = fadd float %24, %25
  store float %26, float* %2, align 4
  br label %155

27:                                               ; preds = %1
  %28 = load i32, i32* %6, align 4
  %29 = call i64 @FLT_UWORD_IS_ZERO(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = load float, float* %3, align 4
  store float %32, float* %2, align 4
  br label %155

33:                                               ; preds = %27
  %34 = load i32, i32* %7, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %33
  %37 = load float, float* %3, align 4
  %38 = load float, float* %3, align 4
  %39 = fsub float %37, %38
  %40 = load float, float* %3, align 4
  %41 = load float, float* %3, align 4
  %42 = fsub float %40, %41
  %43 = fdiv float %39, %42
  store float %43, float* %2, align 4
  br label %155

44:                                               ; preds = %33
  %45 = load i32, i32* %7, align 4
  %46 = ashr i32 %45, 23
  store i32 %46, i32* %10, align 4
  %47 = load i32, i32* %6, align 4
  %48 = call i64 @FLT_UWORD_IS_SUBNORMAL(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %67

50:                                               ; preds = %44
  store i32 0, i32* %12, align 4
  br label %51

51:                                               ; preds = %59, %50
  %52 = load i32, i32* %7, align 4
  %53 = sext i32 %52 to i64
  %54 = and i64 %53, 8388608
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %51
  %57 = load i32, i32* %7, align 4
  %58 = shl i32 %57, 1
  store i32 %58, i32* %7, align 4
  br label %59

59:                                               ; preds = %56
  %60 = load i32, i32* %12, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %12, align 4
  br label %51

62:                                               ; preds = %51
  %63 = load i32, i32* %12, align 4
  %64 = sub nsw i32 %63, 1
  %65 = load i32, i32* %10, align 4
  %66 = sub nsw i32 %65, %64
  store i32 %66, i32* %10, align 4
  br label %67

67:                                               ; preds = %62, %44
  %68 = load i32, i32* %10, align 4
  %69 = sub nsw i32 %68, 127
  store i32 %69, i32* %10, align 4
  %70 = load i32, i32* %7, align 4
  %71 = sext i32 %70 to i64
  %72 = and i64 %71, 8388607
  %73 = or i64 %72, 8388608
  %74 = trunc i64 %73 to i32
  store i32 %74, i32* %7, align 4
  %75 = load i32, i32* %10, align 4
  %76 = and i32 %75, 1
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %67
  %79 = load i32, i32* %7, align 4
  %80 = load i32, i32* %7, align 4
  %81 = add nsw i32 %80, %79
  store i32 %81, i32* %7, align 4
  br label %82

82:                                               ; preds = %78, %67
  %83 = load i32, i32* %10, align 4
  %84 = ashr i32 %83, 1
  store i32 %84, i32* %10, align 4
  %85 = load i32, i32* %7, align 4
  %86 = load i32, i32* %7, align 4
  %87 = add nsw i32 %86, %85
  store i32 %87, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 16777216, i32* %5, align 4
  br label %88

88:                                               ; preds = %108, %82
  %89 = load i32, i32* %5, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %114

91:                                               ; preds = %88
  %92 = load i32, i32* %8, align 4
  %93 = load i32, i32* %5, align 4
  %94 = add nsw i32 %92, %93
  store i32 %94, i32* %11, align 4
  %95 = load i32, i32* %11, align 4
  %96 = load i32, i32* %7, align 4
  %97 = icmp sle i32 %95, %96
  br i1 %97, label %98, label %108

98:                                               ; preds = %91
  %99 = load i32, i32* %11, align 4
  %100 = load i32, i32* %5, align 4
  %101 = add nsw i32 %99, %100
  store i32 %101, i32* %8, align 4
  %102 = load i32, i32* %11, align 4
  %103 = load i32, i32* %7, align 4
  %104 = sub nsw i32 %103, %102
  store i32 %104, i32* %7, align 4
  %105 = load i32, i32* %5, align 4
  %106 = load i32, i32* %9, align 4
  %107 = add nsw i32 %106, %105
  store i32 %107, i32* %9, align 4
  br label %108

108:                                              ; preds = %98, %91
  %109 = load i32, i32* %7, align 4
  %110 = load i32, i32* %7, align 4
  %111 = add nsw i32 %110, %109
  store i32 %111, i32* %7, align 4
  %112 = load i32, i32* %5, align 4
  %113 = ashr i32 %112, 1
  store i32 %113, i32* %5, align 4
  br label %88

114:                                              ; preds = %88
  %115 = load i32, i32* %7, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %141

117:                                              ; preds = %114
  %118 = load float, float* @one, align 4
  %119 = load float, float* @tiny, align 4
  %120 = fsub float %118, %119
  store float %120, float* %4, align 4
  %121 = load float, float* %4, align 4
  %122 = load float, float* @one, align 4
  %123 = fcmp oge float %121, %122
  br i1 %123, label %124, label %140

124:                                              ; preds = %117
  %125 = load float, float* @one, align 4
  %126 = load float, float* @tiny, align 4
  %127 = fadd float %125, %126
  store float %127, float* %4, align 4
  %128 = load float, float* %4, align 4
  %129 = load float, float* @one, align 4
  %130 = fcmp ogt float %128, %129
  br i1 %130, label %131, label %134

131:                                              ; preds = %124
  %132 = load i32, i32* %9, align 4
  %133 = add nsw i32 %132, 2
  store i32 %133, i32* %9, align 4
  br label %139

134:                                              ; preds = %124
  %135 = load i32, i32* %9, align 4
  %136 = and i32 %135, 1
  %137 = load i32, i32* %9, align 4
  %138 = add nsw i32 %137, %136
  store i32 %138, i32* %9, align 4
  br label %139

139:                                              ; preds = %134, %131
  br label %140

140:                                              ; preds = %139, %117
  br label %141

141:                                              ; preds = %140, %114
  %142 = load i32, i32* %9, align 4
  %143 = ashr i32 %142, 1
  %144 = sext i32 %143 to i64
  %145 = add nsw i64 %144, 1056964608
  %146 = trunc i64 %145 to i32
  store i32 %146, i32* %7, align 4
  %147 = load i32, i32* %10, align 4
  %148 = shl i32 %147, 23
  %149 = load i32, i32* %7, align 4
  %150 = add nsw i32 %149, %148
  store i32 %150, i32* %7, align 4
  %151 = load float, float* %4, align 4
  %152 = load i32, i32* %7, align 4
  %153 = call i32 @SET_FLOAT_WORD(float %151, i32 %152)
  %154 = load float, float* %4, align 4
  store float %154, float* %2, align 4
  br label %155

155:                                              ; preds = %141, %36, %31, %21
  %156 = load float, float* %2, align 4
  ret float %156
}

declare dso_local i32 @GET_FLOAT_WORD(i32, float) #1

declare dso_local i32 @FLT_UWORD_IS_FINITE(i32) #1

declare dso_local i64 @FLT_UWORD_IS_ZERO(i32) #1

declare dso_local i64 @FLT_UWORD_IS_SUBNORMAL(i32) #1

declare dso_local i32 @SET_FLOAT_WORD(float, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
