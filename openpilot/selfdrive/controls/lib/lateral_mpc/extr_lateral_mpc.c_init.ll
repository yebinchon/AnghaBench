; ModuleID = '/home/carl/AnghaBench/openpilot/selfdrive/controls/lib/lateral_mpc/extr_lateral_mpc.c_init.c'
source_filename = "/home/carl/AnghaBench/openpilot/selfdrive/controls/lib/lateral_mpc/extr_lateral_mpc.c_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { double*, double*, double*, double*, double*, double*, double* }

@NX = common dso_local global i32 0, align 4
@N = common dso_local global i32 0, align 4
@acadoVariables = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@NU = common dso_local global i32 0, align 4
@NY = common dso_local global i32 0, align 4
@NYN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @init(double %0, double %1, double %2, double %3) #0 {
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store double %0, double* %5, align 8
  store double %1, double* %6, align 8
  store double %2, double* %7, align 8
  store double %3, double* %8, align 8
  %12 = call i32 (...) @acado_initializeSolver()
  store i32 3, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %13

13:                                               ; preds = %25, %4
  %14 = load i32, i32* %9, align 4
  %15 = load i32, i32* @NX, align 4
  %16 = load i32, i32* @N, align 4
  %17 = add nsw i32 %16, 1
  %18 = mul nsw i32 %15, %17
  %19 = icmp slt i32 %14, %18
  br i1 %19, label %20, label %28

20:                                               ; preds = %13
  %21 = load double*, double** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @acadoVariables, i32 0, i32 0), align 8
  %22 = load i32, i32* %9, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds double, double* %21, i64 %23
  store double 0.000000e+00, double* %24, align 8
  br label %25

25:                                               ; preds = %20
  %26 = load i32, i32* %9, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %9, align 4
  br label %13

28:                                               ; preds = %13
  store i32 0, i32* %9, align 4
  br label %29

29:                                               ; preds = %40, %28
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* @NU, align 4
  %32 = load i32, i32* @N, align 4
  %33 = mul nsw i32 %31, %32
  %34 = icmp slt i32 %30, %33
  br i1 %34, label %35, label %43

35:                                               ; preds = %29
  %36 = load double*, double** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @acadoVariables, i32 0, i32 1), align 8
  %37 = load i32, i32* %9, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds double, double* %36, i64 %38
  store double 1.000000e-01, double* %39, align 8
  br label %40

40:                                               ; preds = %35
  %41 = load i32, i32* %9, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %9, align 4
  br label %29

43:                                               ; preds = %29
  store i32 0, i32* %9, align 4
  br label %44

44:                                               ; preds = %55, %43
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* @NY, align 4
  %47 = load i32, i32* @N, align 4
  %48 = mul nsw i32 %46, %47
  %49 = icmp slt i32 %45, %48
  br i1 %49, label %50, label %58

50:                                               ; preds = %44
  %51 = load double*, double** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @acadoVariables, i32 0, i32 2), align 8
  %52 = load i32, i32* %9, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds double, double* %51, i64 %53
  store double 0.000000e+00, double* %54, align 8
  br label %55

55:                                               ; preds = %50
  %56 = load i32, i32* %9, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %9, align 4
  br label %44

58:                                               ; preds = %44
  store i32 0, i32* %9, align 4
  br label %59

59:                                               ; preds = %68, %58
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* @NYN, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %63, label %71

63:                                               ; preds = %59
  %64 = load double*, double** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @acadoVariables, i32 0, i32 3), align 8
  %65 = load i32, i32* %9, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds double, double* %64, i64 %66
  store double 0.000000e+00, double* %67, align 8
  br label %68

68:                                               ; preds = %63
  %69 = load i32, i32* %9, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %9, align 4
  br label %59

71:                                               ; preds = %59
  store i32 0, i32* %9, align 4
  br label %72

72:                                               ; preds = %81, %71
  %73 = load i32, i32* %9, align 4
  %74 = load i32, i32* @NX, align 4
  %75 = icmp slt i32 %73, %74
  br i1 %75, label %76, label %84

76:                                               ; preds = %72
  %77 = load double*, double** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @acadoVariables, i32 0, i32 4), align 8
  %78 = load i32, i32* %9, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds double, double* %77, i64 %79
  store double 0.000000e+00, double* %80, align 8
  br label %81

81:                                               ; preds = %76
  %82 = load i32, i32* %9, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %9, align 4
  br label %72

84:                                               ; preds = %72
  store i32 0, i32* %9, align 4
  br label %85

85:                                               ; preds = %174, %84
  %86 = load i32, i32* %9, align 4
  %87 = load i32, i32* @N, align 4
  %88 = icmp slt i32 %86, %87
  br i1 %88, label %89, label %177

89:                                               ; preds = %85
  store i32 1, i32* %11, align 4
  %90 = load i32, i32* %9, align 4
  %91 = icmp sgt i32 %90, 4
  br i1 %91, label %92, label %93

92:                                               ; preds = %89
  store i32 3, i32* %11, align 4
  br label %93

93:                                               ; preds = %92, %89
  %94 = load double, double* %5, align 8
  %95 = load i32, i32* %11, align 4
  %96 = sitofp i32 %95 to double
  %97 = fmul double %94, %96
  %98 = load double*, double** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @acadoVariables, i32 0, i32 5), align 8
  %99 = load i32, i32* @NY, align 4
  %100 = load i32, i32* @NY, align 4
  %101 = mul nsw i32 %99, %100
  %102 = load i32, i32* %9, align 4
  %103 = mul nsw i32 %101, %102
  %104 = load i32, i32* @NY, align 4
  %105 = add nsw i32 %104, 1
  %106 = mul nsw i32 %105, 0
  %107 = add nsw i32 %103, %106
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds double, double* %98, i64 %108
  store double %97, double* %109, align 8
  %110 = load double, double* %6, align 8
  %111 = load i32, i32* %11, align 4
  %112 = sitofp i32 %111 to double
  %113 = fmul double %110, %112
  %114 = load double*, double** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @acadoVariables, i32 0, i32 5), align 8
  %115 = load i32, i32* @NY, align 4
  %116 = load i32, i32* @NY, align 4
  %117 = mul nsw i32 %115, %116
  %118 = load i32, i32* %9, align 4
  %119 = mul nsw i32 %117, %118
  %120 = load i32, i32* @NY, align 4
  %121 = add nsw i32 %120, 1
  %122 = mul nsw i32 %121, 1
  %123 = add nsw i32 %119, %122
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds double, double* %114, i64 %124
  store double %113, double* %125, align 8
  %126 = load double, double* %6, align 8
  %127 = load i32, i32* %11, align 4
  %128 = sitofp i32 %127 to double
  %129 = fmul double %126, %128
  %130 = load double*, double** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @acadoVariables, i32 0, i32 5), align 8
  %131 = load i32, i32* @NY, align 4
  %132 = load i32, i32* @NY, align 4
  %133 = mul nsw i32 %131, %132
  %134 = load i32, i32* %9, align 4
  %135 = mul nsw i32 %133, %134
  %136 = load i32, i32* @NY, align 4
  %137 = add nsw i32 %136, 1
  %138 = mul nsw i32 %137, 2
  %139 = add nsw i32 %135, %138
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds double, double* %130, i64 %140
  store double %129, double* %141, align 8
  %142 = load double, double* %7, align 8
  %143 = load i32, i32* %11, align 4
  %144 = sitofp i32 %143 to double
  %145 = fmul double %142, %144
  %146 = load double*, double** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @acadoVariables, i32 0, i32 5), align 8
  %147 = load i32, i32* @NY, align 4
  %148 = load i32, i32* @NY, align 4
  %149 = mul nsw i32 %147, %148
  %150 = load i32, i32* %9, align 4
  %151 = mul nsw i32 %149, %150
  %152 = load i32, i32* @NY, align 4
  %153 = add nsw i32 %152, 1
  %154 = mul nsw i32 %153, 3
  %155 = add nsw i32 %151, %154
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds double, double* %146, i64 %156
  store double %145, double* %157, align 8
  %158 = load double, double* %8, align 8
  %159 = load i32, i32* %11, align 4
  %160 = sitofp i32 %159 to double
  %161 = fmul double %158, %160
  %162 = load double*, double** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @acadoVariables, i32 0, i32 5), align 8
  %163 = load i32, i32* @NY, align 4
  %164 = load i32, i32* @NY, align 4
  %165 = mul nsw i32 %163, %164
  %166 = load i32, i32* %9, align 4
  %167 = mul nsw i32 %165, %166
  %168 = load i32, i32* @NY, align 4
  %169 = add nsw i32 %168, 1
  %170 = mul nsw i32 %169, 4
  %171 = add nsw i32 %167, %170
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds double, double* %162, i64 %172
  store double %161, double* %173, align 8
  br label %174

174:                                              ; preds = %93
  %175 = load i32, i32* %9, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %9, align 4
  br label %85

177:                                              ; preds = %85
  %178 = load double, double* %5, align 8
  %179 = fmul double %178, 3.000000e+00
  %180 = load double*, double** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @acadoVariables, i32 0, i32 6), align 8
  %181 = load i32, i32* @NYN, align 4
  %182 = add nsw i32 %181, 1
  %183 = mul nsw i32 %182, 0
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds double, double* %180, i64 %184
  store double %179, double* %185, align 8
  %186 = load double, double* %6, align 8
  %187 = fmul double %186, 3.000000e+00
  %188 = load double*, double** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @acadoVariables, i32 0, i32 6), align 8
  %189 = load i32, i32* @NYN, align 4
  %190 = add nsw i32 %189, 1
  %191 = mul nsw i32 %190, 1
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds double, double* %188, i64 %192
  store double %187, double* %193, align 8
  %194 = load double, double* %6, align 8
  %195 = fmul double %194, 3.000000e+00
  %196 = load double*, double** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @acadoVariables, i32 0, i32 6), align 8
  %197 = load i32, i32* @NYN, align 4
  %198 = add nsw i32 %197, 1
  %199 = mul nsw i32 %198, 2
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds double, double* %196, i64 %200
  store double %195, double* %201, align 8
  %202 = load double, double* %7, align 8
  %203 = fmul double %202, 3.000000e+00
  %204 = load double*, double** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @acadoVariables, i32 0, i32 6), align 8
  %205 = load i32, i32* @NYN, align 4
  %206 = add nsw i32 %205, 1
  %207 = mul nsw i32 %206, 3
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds double, double* %204, i64 %208
  store double %203, double* %209, align 8
  ret void
}

declare dso_local i32 @acado_initializeSolver(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
