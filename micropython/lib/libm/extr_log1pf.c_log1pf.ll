; ModuleID = '/home/carl/AnghaBench/micropython/lib/libm/extr_log1pf.c_log1pf.c'
source_filename = "/home/carl/AnghaBench/micropython/lib/libm/extr_log1pf.c_log1pf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.anon = type { float }

@Lg2 = common dso_local global float 0.000000e+00, align 4
@Lg4 = common dso_local global float 0.000000e+00, align 4
@Lg1 = common dso_local global float 0.000000e+00, align 4
@Lg3 = common dso_local global float 0.000000e+00, align 4
@ln2_lo = common dso_local global float 0.000000e+00, align 4
@ln2_hi = common dso_local global float 0.000000e+00, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float @log1pf(float %0) #0 {
  %2 = alloca float, align 4
  %3 = alloca float, align 4
  %4 = alloca %union.anon, align 4
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store float %0, float* %3, align 4
  %18 = bitcast %union.anon* %4 to float*
  %19 = load float, float* %3, align 4
  store float %19, float* %18, align 4
  %20 = bitcast %union.anon* %4 to i32*
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %15, align 4
  store i32 1, i32* %17, align 4
  %22 = load i32, i32* %15, align 4
  %23 = icmp slt i32 %22, 1054086096
  br i1 %23, label %28, label %24

24:                                               ; preds = %1
  %25 = load i32, i32* %15, align 4
  %26 = ashr i32 %25, 31
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %63

28:                                               ; preds = %24, %1
  %29 = load i32, i32* %15, align 4
  %30 = icmp uge i32 %29, -1082130432
  br i1 %30, label %31, label %42

31:                                               ; preds = %28
  %32 = load float, float* %3, align 4
  %33 = fcmp oeq float %32, -1.000000e+00
  br i1 %33, label %34, label %37

34:                                               ; preds = %31
  %35 = load float, float* %3, align 4
  %36 = fdiv float %35, 0.000000e+00
  store float %36, float* %2, align 4
  br label %169

37:                                               ; preds = %31
  %38 = load float, float* %3, align 4
  %39 = load float, float* %3, align 4
  %40 = fsub float %38, %39
  %41 = fdiv float %40, 0.000000e+00
  store float %41, float* %2, align 4
  br label %169

42:                                               ; preds = %28
  %43 = load i32, i32* %15, align 4
  %44 = shl i32 %43, 1
  %45 = icmp slt i32 %44, 1728053248
  br i1 %45, label %46, label %57

46:                                               ; preds = %42
  %47 = load i32, i32* %15, align 4
  %48 = and i32 %47, 2139095040
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %46
  %51 = load float, float* %3, align 4
  %52 = load float, float* %3, align 4
  %53 = fmul float %51, %52
  %54 = call i32 @FORCE_EVAL(float %53)
  br label %55

55:                                               ; preds = %50, %46
  %56 = load float, float* %3, align 4
  store float %56, float* %2, align 4
  br label %169

57:                                               ; preds = %42
  %58 = load i32, i32* %15, align 4
  %59 = icmp ule i32 %58, -1097468391
  br i1 %59, label %60, label %62

60:                                               ; preds = %57
  store i32 0, i32* %17, align 4
  store float 0.000000e+00, float* %7, align 4
  %61 = load float, float* %3, align 4
  store float %61, float* %6, align 4
  br label %62

62:                                               ; preds = %60, %57
  br label %69

63:                                               ; preds = %24
  %64 = load i32, i32* %15, align 4
  %65 = icmp sge i32 %64, 2139095040
  br i1 %65, label %66, label %68

66:                                               ; preds = %63
  %67 = load float, float* %3, align 4
  store float %67, float* %2, align 4
  br label %169

68:                                               ; preds = %63
  br label %69

69:                                               ; preds = %68, %62
  %70 = load i32, i32* %17, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %116

72:                                               ; preds = %69
  %73 = load float, float* %3, align 4
  %74 = fadd float 1.000000e+00, %73
  %75 = bitcast %union.anon* %4 to float*
  store float %74, float* %75, align 4
  %76 = bitcast %union.anon* %4 to i32*
  %77 = load i32, i32* %76, align 4
  store i32 %77, i32* %16, align 4
  %78 = load i32, i32* %16, align 4
  %79 = add nsw i32 %78, 4913933
  store i32 %79, i32* %16, align 4
  %80 = load i32, i32* %16, align 4
  %81 = ashr i32 %80, 23
  %82 = sub nsw i32 %81, 127
  store i32 %82, i32* %17, align 4
  %83 = load i32, i32* %17, align 4
  %84 = icmp slt i32 %83, 25
  br i1 %84, label %85, label %106

85:                                               ; preds = %72
  %86 = load i32, i32* %17, align 4
  %87 = icmp sge i32 %86, 2
  br i1 %87, label %88, label %94

88:                                               ; preds = %85
  %89 = bitcast %union.anon* %4 to float*
  %90 = load float, float* %89, align 4
  %91 = load float, float* %3, align 4
  %92 = fsub float %90, %91
  %93 = fsub float 1.000000e+00, %92
  br label %100

94:                                               ; preds = %85
  %95 = load float, float* %3, align 4
  %96 = bitcast %union.anon* %4 to float*
  %97 = load float, float* %96, align 4
  %98 = fsub float %97, 1.000000e+00
  %99 = fsub float %95, %98
  br label %100

100:                                              ; preds = %94, %88
  %101 = phi float [ %93, %88 ], [ %99, %94 ]
  store float %101, float* %7, align 4
  %102 = bitcast %union.anon* %4 to float*
  %103 = load float, float* %102, align 4
  %104 = load float, float* %7, align 4
  %105 = fdiv float %104, %103
  store float %105, float* %7, align 4
  br label %107

106:                                              ; preds = %72
  store float 0.000000e+00, float* %7, align 4
  br label %107

107:                                              ; preds = %106, %100
  %108 = load i32, i32* %16, align 4
  %109 = and i32 %108, 8388607
  %110 = add nsw i32 %109, 1060439283
  store i32 %110, i32* %16, align 4
  %111 = load i32, i32* %16, align 4
  %112 = bitcast %union.anon* %4 to i32*
  store i32 %111, i32* %112, align 4
  %113 = bitcast %union.anon* %4 to float*
  %114 = load float, float* %113, align 4
  %115 = fsub float %114, 1.000000e+00
  store float %115, float* %6, align 4
  br label %116

116:                                              ; preds = %107, %69
  %117 = load float, float* %6, align 4
  %118 = load float, float* %6, align 4
  %119 = fadd float 2.000000e+00, %118
  %120 = fdiv float %117, %119
  store float %120, float* %8, align 4
  %121 = load float, float* %8, align 4
  %122 = load float, float* %8, align 4
  %123 = fmul float %121, %122
  store float %123, float* %9, align 4
  %124 = load float, float* %9, align 4
  %125 = load float, float* %9, align 4
  %126 = fmul float %124, %125
  store float %126, float* %11, align 4
  %127 = load float, float* %11, align 4
  %128 = load float, float* @Lg2, align 4
  %129 = load float, float* %11, align 4
  %130 = load float, float* @Lg4, align 4
  %131 = fmul float %129, %130
  %132 = fadd float %128, %131
  %133 = fmul float %127, %132
  store float %133, float* %12, align 4
  %134 = load float, float* %9, align 4
  %135 = load float, float* @Lg1, align 4
  %136 = load float, float* %11, align 4
  %137 = load float, float* @Lg3, align 4
  %138 = fmul float %136, %137
  %139 = fadd float %135, %138
  %140 = fmul float %134, %139
  store float %140, float* %13, align 4
  %141 = load float, float* %13, align 4
  %142 = load float, float* %12, align 4
  %143 = fadd float %141, %142
  store float %143, float* %10, align 4
  %144 = load float, float* %6, align 4
  %145 = fmul float 5.000000e-01, %144
  %146 = load float, float* %6, align 4
  %147 = fmul float %145, %146
  store float %147, float* %5, align 4
  %148 = load i32, i32* %17, align 4
  %149 = sitofp i32 %148 to float
  store float %149, float* %14, align 4
  %150 = load float, float* %8, align 4
  %151 = load float, float* %5, align 4
  %152 = load float, float* %10, align 4
  %153 = fadd float %151, %152
  %154 = fmul float %150, %153
  %155 = load float, float* %14, align 4
  %156 = load float, float* @ln2_lo, align 4
  %157 = fmul float %155, %156
  %158 = load float, float* %7, align 4
  %159 = fadd float %157, %158
  %160 = fadd float %154, %159
  %161 = load float, float* %5, align 4
  %162 = fsub float %160, %161
  %163 = load float, float* %6, align 4
  %164 = fadd float %162, %163
  %165 = load float, float* %14, align 4
  %166 = load float, float* @ln2_hi, align 4
  %167 = fmul float %165, %166
  %168 = fadd float %164, %167
  store float %168, float* %2, align 4
  br label %169

169:                                              ; preds = %116, %66, %55, %37, %34
  %170 = load float, float* %2, align 4
  ret float %170
}

declare dso_local i32 @FORCE_EVAL(float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
