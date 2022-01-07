; ModuleID = '/home/carl/AnghaBench/openpilot/selfdrive/controls/lib/longitudinal_mpc/extr_longitudinal_mpc.c_init_with_simulation.c'
source_filename = "/home/carl/AnghaBench/openpilot/selfdrive/controls/lib/longitudinal_mpc/extr_longitudinal_mpc.c_init_with_simulation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { double*, double*, double*, double* }

@N = common dso_local global i32 0, align 4
@acadoVariables = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@NX = common dso_local global i32 0, align 4
@NU = common dso_local global i32 0, align 4
@NY = common dso_local global i32 0, align 4
@NYN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @init_with_simulation(double %0, double %1, double %2, double %3, double %4) #0 {
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca i32, align 4
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  store double %0, double* %6, align 8
  store double %1, double* %7, align 8
  store double %2, double* %8, align 8
  store double %3, double* %9, align 8
  store double %4, double* %10, align 8
  %19 = load double, double* %7, align 8
  store double %19, double* %12, align 8
  %20 = load double, double* %8, align 8
  store double %20, double* %13, align 8
  %21 = load double, double* %9, align 8
  store double %21, double* %14, align 8
  store double 0.000000e+00, double* %15, align 8
  %22 = load double, double* %6, align 8
  %23 = load double, double* %13, align 8
  %24 = fsub double %22, %23
  %25 = fneg double %24
  %26 = load double, double* %6, align 8
  %27 = load double, double* %13, align 8
  %28 = fsub double %26, %27
  %29 = fmul double %25, %28
  %30 = load double, double* %12, align 8
  %31 = fmul double 2.000000e+00, %30
  %32 = fadd double %31, 1.000000e-02
  %33 = fdiv double %29, %32
  %34 = load double, double* %14, align 8
  %35 = fadd double %33, %34
  store double %35, double* %16, align 8
  %36 = load double, double* %16, align 8
  %37 = fcmp ogt double %36, 0.000000e+00
  br i1 %37, label %38, label %39

38:                                               ; preds = %5
  store double 0.000000e+00, double* %16, align 8
  br label %39

39:                                               ; preds = %38, %5
  store double 2.000000e-01, double* %17, align 8
  store double 0.000000e+00, double* %18, align 8
  store i32 0, i32* %11, align 4
  br label %40

40:                                               ; preds = %90, %39
  %41 = load i32, i32* %11, align 4
  %42 = load i32, i32* @N, align 4
  %43 = add nsw i32 %42, 1
  %44 = icmp slt i32 %41, %43
  br i1 %44, label %45, label %93

45:                                               ; preds = %40
  %46 = load i32, i32* %11, align 4
  %47 = icmp sgt i32 %46, 4
  br i1 %47, label %48, label %49

48:                                               ; preds = %45
  store double 6.000000e-01, double* %17, align 8
  br label %49

49:                                               ; preds = %48, %45
  %50 = load double, double* %15, align 8
  %51 = load double*, double** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @acadoVariables, i32 0, i32 0), align 8
  %52 = load i32, i32* %11, align 4
  %53 = load i32, i32* @NX, align 4
  %54 = mul nsw i32 %52, %53
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds double, double* %51, i64 %55
  store double %50, double* %56, align 8
  %57 = load double, double* %6, align 8
  %58 = load double*, double** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @acadoVariables, i32 0, i32 0), align 8
  %59 = load i32, i32* %11, align 4
  %60 = load i32, i32* @NX, align 4
  %61 = mul nsw i32 %59, %60
  %62 = add nsw i32 %61, 1
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds double, double* %58, i64 %63
  store double %57, double* %64, align 8
  %65 = load double, double* %16, align 8
  %66 = load double*, double** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @acadoVariables, i32 0, i32 0), align 8
  %67 = load i32, i32* %11, align 4
  %68 = load i32, i32* @NX, align 4
  %69 = mul nsw i32 %67, %68
  %70 = add nsw i32 %69, 2
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds double, double* %66, i64 %71
  store double %65, double* %72, align 8
  %73 = load double, double* %16, align 8
  %74 = load double, double* %17, align 8
  %75 = fmul double %73, %74
  %76 = load double, double* %6, align 8
  %77 = fadd double %76, %75
  store double %77, double* %6, align 8
  %78 = load double, double* %6, align 8
  %79 = fcmp ole double %78, 0.000000e+00
  br i1 %79, label %80, label %81

80:                                               ; preds = %49
  store double 0.000000e+00, double* %6, align 8
  store double 0.000000e+00, double* %16, align 8
  br label %81

81:                                               ; preds = %80, %49
  %82 = load double, double* %6, align 8
  %83 = load double, double* %17, align 8
  %84 = fmul double %82, %83
  %85 = load double, double* %15, align 8
  %86 = fadd double %85, %84
  store double %86, double* %15, align 8
  %87 = load double, double* %17, align 8
  %88 = load double, double* %18, align 8
  %89 = fadd double %88, %87
  store double %89, double* %18, align 8
  br label %90

90:                                               ; preds = %81
  %91 = load i32, i32* %11, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %11, align 4
  br label %40

93:                                               ; preds = %40
  store i32 0, i32* %11, align 4
  br label %94

94:                                               ; preds = %105, %93
  %95 = load i32, i32* %11, align 4
  %96 = load i32, i32* @NU, align 4
  %97 = load i32, i32* @N, align 4
  %98 = mul nsw i32 %96, %97
  %99 = icmp slt i32 %95, %98
  br i1 %99, label %100, label %108

100:                                              ; preds = %94
  %101 = load double*, double** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @acadoVariables, i32 0, i32 1), align 8
  %102 = load i32, i32* %11, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds double, double* %101, i64 %103
  store double 0.000000e+00, double* %104, align 8
  br label %105

105:                                              ; preds = %100
  %106 = load i32, i32* %11, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %11, align 4
  br label %94

108:                                              ; preds = %94
  store i32 0, i32* %11, align 4
  br label %109

109:                                              ; preds = %120, %108
  %110 = load i32, i32* %11, align 4
  %111 = load i32, i32* @NY, align 4
  %112 = load i32, i32* @N, align 4
  %113 = mul nsw i32 %111, %112
  %114 = icmp slt i32 %110, %113
  br i1 %114, label %115, label %123

115:                                              ; preds = %109
  %116 = load double*, double** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @acadoVariables, i32 0, i32 2), align 8
  %117 = load i32, i32* %11, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds double, double* %116, i64 %118
  store double 0.000000e+00, double* %119, align 8
  br label %120

120:                                              ; preds = %115
  %121 = load i32, i32* %11, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %11, align 4
  br label %109

123:                                              ; preds = %109
  store i32 0, i32* %11, align 4
  br label %124

124:                                              ; preds = %133, %123
  %125 = load i32, i32* %11, align 4
  %126 = load i32, i32* @NYN, align 4
  %127 = icmp slt i32 %125, %126
  br i1 %127, label %128, label %136

128:                                              ; preds = %124
  %129 = load double*, double** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @acadoVariables, i32 0, i32 3), align 8
  %130 = load i32, i32* %11, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds double, double* %129, i64 %131
  store double 0.000000e+00, double* %132, align 8
  br label %133

133:                                              ; preds = %128
  %134 = load i32, i32* %11, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %11, align 4
  br label %124

136:                                              ; preds = %124
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
