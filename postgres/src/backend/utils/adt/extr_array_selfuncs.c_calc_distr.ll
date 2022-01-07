; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_array_selfuncs.c_calc_distr.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_array_selfuncs.c_calc_distr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DEFAULT_CONTAIN_SEL = common dso_local global float 0.000000e+00, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (float* (float*, i32, i32, float)* @calc_distr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal float* @calc_distr(float* %0, i32 %1, i32 %2, float %3) #0 {
  %5 = alloca float*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca float, align 4
  %9 = alloca float*, align 8
  %10 = alloca float*, align 8
  %11 = alloca float*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  store float* %0, float** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store float %3, float* %8, align 4
  %17 = load i32, i32* %7, align 4
  %18 = add nsw i32 %17, 1
  %19 = sext i32 %18 to i64
  %20 = mul i64 %19, 4
  %21 = trunc i64 %20 to i32
  %22 = call i64 @palloc(i32 %21)
  %23 = inttoptr i64 %22 to float*
  store float* %23, float** %9, align 8
  %24 = load i32, i32* %7, align 4
  %25 = add nsw i32 %24, 1
  %26 = sext i32 %25 to i64
  %27 = mul i64 %26, 4
  %28 = trunc i64 %27 to i32
  %29 = call i64 @palloc(i32 %28)
  %30 = inttoptr i64 %29 to float*
  store float* %30, float** %10, align 8
  %31 = load float*, float** %9, align 8
  %32 = getelementptr inbounds float, float* %31, i64 0
  store float 1.000000e+00, float* %32, align 4
  store i32 1, i32* %12, align 4
  br label %33

33:                                               ; preds = %96, %4
  %34 = load i32, i32* %12, align 4
  %35 = load i32, i32* %6, align 4
  %36 = icmp sle i32 %34, %35
  br i1 %36, label %37, label %99

37:                                               ; preds = %33
  %38 = load float*, float** %5, align 8
  %39 = load i32, i32* %12, align 4
  %40 = sub nsw i32 %39, 1
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds float, float* %38, i64 %41
  %43 = load float, float* %42, align 4
  store float %43, float* %14, align 4
  %44 = load float*, float** %9, align 8
  store float* %44, float** %11, align 8
  %45 = load float*, float** %10, align 8
  store float* %45, float** %9, align 8
  %46 = load float*, float** %11, align 8
  store float* %46, float** %10, align 8
  store i32 0, i32* %13, align 4
  br label %47

47:                                               ; preds = %92, %37
  %48 = load i32, i32* %13, align 4
  %49 = load i32, i32* %12, align 4
  %50 = icmp sle i32 %48, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %47
  %52 = load i32, i32* %13, align 4
  %53 = load i32, i32* %7, align 4
  %54 = icmp sle i32 %52, %53
  br label %55

55:                                               ; preds = %51, %47
  %56 = phi i1 [ false, %47 ], [ %54, %51 ]
  br i1 %56, label %57, label %95

57:                                               ; preds = %55
  store float 0.000000e+00, float* %15, align 4
  %58 = load i32, i32* %13, align 4
  %59 = load i32, i32* %12, align 4
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %61, label %72

61:                                               ; preds = %57
  %62 = load float*, float** %10, align 8
  %63 = load i32, i32* %13, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds float, float* %62, i64 %64
  %66 = load float, float* %65, align 4
  %67 = load float, float* %14, align 4
  %68 = fsub float 1.000000e+00, %67
  %69 = fmul float %66, %68
  %70 = load float, float* %15, align 4
  %71 = fadd float %70, %69
  store float %71, float* %15, align 4
  br label %72

72:                                               ; preds = %61, %57
  %73 = load i32, i32* %13, align 4
  %74 = icmp sgt i32 %73, 0
  br i1 %74, label %75, label %86

75:                                               ; preds = %72
  %76 = load float*, float** %10, align 8
  %77 = load i32, i32* %13, align 4
  %78 = sub nsw i32 %77, 1
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds float, float* %76, i64 %79
  %81 = load float, float* %80, align 4
  %82 = load float, float* %14, align 4
  %83 = fmul float %81, %82
  %84 = load float, float* %15, align 4
  %85 = fadd float %84, %83
  store float %85, float* %15, align 4
  br label %86

86:                                               ; preds = %75, %72
  %87 = load float, float* %15, align 4
  %88 = load float*, float** %9, align 8
  %89 = load i32, i32* %13, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds float, float* %88, i64 %90
  store float %87, float* %91, align 4
  br label %92

92:                                               ; preds = %86
  %93 = load i32, i32* %13, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %13, align 4
  br label %47

95:                                               ; preds = %55
  br label %96

96:                                               ; preds = %95
  %97 = load i32, i32* %12, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %12, align 4
  br label %33

99:                                               ; preds = %33
  %100 = load float, float* %8, align 4
  %101 = load float, float* @DEFAULT_CONTAIN_SEL, align 4
  %102 = fcmp ogt float %100, %101
  br i1 %102, label %103, label %165

103:                                              ; preds = %99
  %104 = load float*, float** %9, align 8
  store float* %104, float** %11, align 8
  %105 = load float*, float** %10, align 8
  store float* %105, float** %9, align 8
  %106 = load float*, float** %11, align 8
  store float* %106, float** %10, align 8
  store i32 0, i32* %12, align 4
  br label %107

107:                                              ; preds = %116, %103
  %108 = load i32, i32* %12, align 4
  %109 = load i32, i32* %7, align 4
  %110 = icmp sle i32 %108, %109
  br i1 %110, label %111, label %119

111:                                              ; preds = %107
  %112 = load float*, float** %9, align 8
  %113 = load i32, i32* %12, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds float, float* %112, i64 %114
  store float 0.000000e+00, float* %115, align 4
  br label %116

116:                                              ; preds = %111
  %117 = load i32, i32* %12, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %12, align 4
  br label %107

119:                                              ; preds = %107
  %120 = load float, float* %8, align 4
  %121 = fneg float %120
  %122 = call float @exp(float %121)
  store float %122, float* %16, align 4
  store i32 0, i32* %12, align 4
  br label %123

123:                                              ; preds = %161, %119
  %124 = load i32, i32* %12, align 4
  %125 = load i32, i32* %7, align 4
  %126 = icmp sle i32 %124, %125
  br i1 %126, label %127, label %164

127:                                              ; preds = %123
  store i32 0, i32* %13, align 4
  br label %128

128:                                              ; preds = %150, %127
  %129 = load i32, i32* %13, align 4
  %130 = load i32, i32* %7, align 4
  %131 = load i32, i32* %12, align 4
  %132 = sub nsw i32 %130, %131
  %133 = icmp sle i32 %129, %132
  br i1 %133, label %134, label %153

134:                                              ; preds = %128
  %135 = load float*, float** %10, align 8
  %136 = load i32, i32* %13, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds float, float* %135, i64 %137
  %139 = load float, float* %138, align 4
  %140 = load float, float* %16, align 4
  %141 = fmul float %139, %140
  %142 = load float*, float** %9, align 8
  %143 = load i32, i32* %13, align 4
  %144 = load i32, i32* %12, align 4
  %145 = add nsw i32 %143, %144
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds float, float* %142, i64 %146
  %148 = load float, float* %147, align 4
  %149 = fadd float %148, %141
  store float %149, float* %147, align 4
  br label %150

150:                                              ; preds = %134
  %151 = load i32, i32* %13, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %13, align 4
  br label %128

153:                                              ; preds = %128
  %154 = load float, float* %8, align 4
  %155 = load i32, i32* %12, align 4
  %156 = add nsw i32 %155, 1
  %157 = sitofp i32 %156 to float
  %158 = fdiv float %154, %157
  %159 = load float, float* %16, align 4
  %160 = fmul float %159, %158
  store float %160, float* %16, align 4
  br label %161

161:                                              ; preds = %153
  %162 = load i32, i32* %12, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %12, align 4
  br label %123

164:                                              ; preds = %123
  br label %165

165:                                              ; preds = %164, %99
  %166 = load float*, float** %10, align 8
  %167 = call i32 @pfree(float* %166)
  %168 = load float*, float** %9, align 8
  ret float* %168
}

declare dso_local i64 @palloc(i32) #1

declare dso_local float @exp(float) #1

declare dso_local i32 @pfree(float*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
