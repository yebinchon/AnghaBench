; ModuleID = '/home/carl/AnghaBench/openpilot/selfdrive/locationd/extr_get_vp.c_get_intersections.c'
source_filename = "/home/carl/AnghaBench/openpilot/selfdrive/locationd/extr_get_vp.c_get_intersections.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@W = common dso_local global double 0.000000e+00, align 8
@H = common dso_local global double 0.000000e+00, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_intersections(double* %0, double* %1, i64 %2) #0 {
  %4 = alloca double*, align 8
  %5 = alloca double*, align 8
  %6 = alloca i64, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double*, align 8
  %13 = alloca double*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store double* %0, double** %4, align 8
  store double* %1, double** %5, align 8
  store i64 %2, i64* %6, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  br label %17

17:                                               ; preds = %155, %3
  %18 = load i32, i32* %15, align 4
  %19 = sext i32 %18 to i64
  %20 = load i64, i64* %6, align 8
  %21 = icmp slt i64 %19, %20
  br i1 %21, label %22, label %158

22:                                               ; preds = %17
  store i32 0, i32* %16, align 4
  br label %23

23:                                               ; preds = %151, %22
  %24 = load i32, i32* %16, align 4
  %25 = sext i32 %24 to i64
  %26 = load i64, i64* %6, align 8
  %27 = icmp slt i64 %25, %26
  br i1 %27, label %28, label %154

28:                                               ; preds = %23
  %29 = load double*, double** %4, align 8
  %30 = load i32, i32* %15, align 4
  %31 = mul nsw i32 %30, 3
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds double, double* %29, i64 %32
  store double* %33, double** %12, align 8
  %34 = load double*, double** %4, align 8
  %35 = load i32, i32* %16, align 4
  %36 = mul nsw i32 %35, 3
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds double, double* %34, i64 %37
  store double* %38, double** %13, align 8
  %39 = load double*, double** %12, align 8
  %40 = getelementptr inbounds double, double* %39, i64 0
  %41 = load double, double* %40, align 8
  %42 = load double*, double** %13, align 8
  %43 = getelementptr inbounds double, double* %42, i64 1
  %44 = load double, double* %43, align 8
  %45 = fmul double %41, %44
  %46 = load double*, double** %12, align 8
  %47 = getelementptr inbounds double, double* %46, i64 1
  %48 = load double, double* %47, align 8
  %49 = load double*, double** %13, align 8
  %50 = getelementptr inbounds double, double* %49, i64 0
  %51 = load double, double* %50, align 8
  %52 = fmul double %48, %51
  %53 = fsub double %45, %52
  store double %53, double* %7, align 8
  %54 = load double*, double** %12, align 8
  %55 = getelementptr inbounds double, double* %54, i64 2
  %56 = load double, double* %55, align 8
  %57 = load double*, double** %13, align 8
  %58 = getelementptr inbounds double, double* %57, i64 1
  %59 = load double, double* %58, align 8
  %60 = fmul double %56, %59
  %61 = load double*, double** %12, align 8
  %62 = getelementptr inbounds double, double* %61, i64 1
  %63 = load double, double* %62, align 8
  %64 = load double*, double** %13, align 8
  %65 = getelementptr inbounds double, double* %64, i64 2
  %66 = load double, double* %65, align 8
  %67 = fmul double %63, %66
  %68 = fsub double %60, %67
  store double %68, double* %8, align 8
  %69 = load double*, double** %12, align 8
  %70 = getelementptr inbounds double, double* %69, i64 0
  %71 = load double, double* %70, align 8
  %72 = load double*, double** %13, align 8
  %73 = getelementptr inbounds double, double* %72, i64 2
  %74 = load double, double* %73, align 8
  %75 = fmul double %71, %74
  %76 = load double*, double** %12, align 8
  %77 = getelementptr inbounds double, double* %76, i64 2
  %78 = load double, double* %77, align 8
  %79 = load double*, double** %13, align 8
  %80 = getelementptr inbounds double, double* %79, i64 0
  %81 = load double, double* %80, align 8
  %82 = fmul double %78, %81
  %83 = fsub double %75, %82
  store double %83, double* %9, align 8
  %84 = load double, double* %7, align 8
  %85 = fcmp une double %84, 0.000000e+00
  br i1 %85, label %86, label %150

86:                                               ; preds = %28
  %87 = load double*, double** %12, align 8
  %88 = getelementptr inbounds double, double* %87, i64 0
  %89 = load double, double* %88, align 8
  %90 = load double*, double** %13, align 8
  %91 = getelementptr inbounds double, double* %90, i64 0
  %92 = load double, double* %91, align 8
  %93 = fmul double %89, %92
  %94 = load double*, double** %12, align 8
  %95 = getelementptr inbounds double, double* %94, i64 1
  %96 = load double, double* %95, align 8
  %97 = fmul double %93, %96
  %98 = load double*, double** %13, align 8
  %99 = getelementptr inbounds double, double* %98, i64 1
  %100 = load double, double* %99, align 8
  %101 = fmul double %97, %100
  %102 = fcmp olt double %101, 0.000000e+00
  br i1 %102, label %103, label %150

103:                                              ; preds = %86
  %104 = load double*, double** %12, align 8
  %105 = getelementptr inbounds double, double* %104, i64 1
  %106 = load double, double* %105, align 8
  %107 = load double*, double** %13, align 8
  %108 = getelementptr inbounds double, double* %107, i64 1
  %109 = load double, double* %108, align 8
  %110 = fmul double %106, %109
  %111 = fcmp olt double %110, 0.000000e+00
  br i1 %111, label %112, label %150

112:                                              ; preds = %103
  %113 = load double, double* %8, align 8
  %114 = load double, double* %7, align 8
  %115 = fdiv double %113, %114
  store double %115, double* %10, align 8
  %116 = load double, double* %9, align 8
  %117 = load double, double* %7, align 8
  %118 = fdiv double %116, %117
  store double %118, double* %11, align 8
  %119 = load double, double* %10, align 8
  %120 = fcmp olt double 0.000000e+00, %119
  br i1 %120, label %121, label %149

121:                                              ; preds = %112
  %122 = load double, double* %10, align 8
  %123 = load double, double* @W, align 8
  %124 = fcmp olt double %122, %123
  br i1 %124, label %125, label %149

125:                                              ; preds = %121
  %126 = load double, double* %11, align 8
  %127 = fcmp olt double 0.000000e+00, %126
  br i1 %127, label %128, label %149

128:                                              ; preds = %125
  %129 = load double, double* %11, align 8
  %130 = load double, double* @H, align 8
  %131 = fcmp olt double %129, %130
  br i1 %131, label %132, label %149

132:                                              ; preds = %128
  %133 = load double, double* %10, align 8
  %134 = load double*, double** %5, align 8
  %135 = load i32, i32* %14, align 4
  %136 = mul nsw i32 %135, 2
  %137 = add nsw i32 %136, 0
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds double, double* %134, i64 %138
  store double %133, double* %139, align 8
  %140 = load double, double* %11, align 8
  %141 = load double*, double** %5, align 8
  %142 = load i32, i32* %14, align 4
  %143 = mul nsw i32 %142, 2
  %144 = add nsw i32 %143, 1
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds double, double* %141, i64 %145
  store double %140, double* %146, align 8
  %147 = load i32, i32* %14, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %14, align 4
  br label %149

149:                                              ; preds = %132, %128, %125, %121, %112
  br label %150

150:                                              ; preds = %149, %103, %86, %28
  br label %151

151:                                              ; preds = %150
  %152 = load i32, i32* %16, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %16, align 4
  br label %23

154:                                              ; preds = %23
  br label %155

155:                                              ; preds = %154
  %156 = load i32, i32* %15, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %15, align 4
  br label %17

158:                                              ; preds = %17
  %159 = load i32, i32* %14, align 4
  ret i32 %159
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
