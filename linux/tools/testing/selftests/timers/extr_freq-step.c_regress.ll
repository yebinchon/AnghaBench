; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/timers/extr_freq-step.c_regress.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/timers/extr_freq-step.c_regress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sample = type { double, double }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sample*, i32, double*, double*, double*, double*)* @regress to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @regress(%struct.sample* %0, i32 %1, double* %2, double* %3, double* %4, double* %5) #0 {
  %7 = alloca %struct.sample*, align 8
  %8 = alloca i32, align 4
  %9 = alloca double*, align 8
  %10 = alloca double*, align 8
  %11 = alloca double*, align 8
  %12 = alloca double*, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  %19 = alloca double, align 8
  %20 = alloca double, align 8
  %21 = alloca i32, align 4
  store %struct.sample* %0, %struct.sample** %7, align 8
  store i32 %1, i32* %8, align 4
  store double* %2, double** %9, align 8
  store double* %3, double** %10, align 8
  store double* %4, double** %11, align 8
  store double* %5, double** %12, align 8
  store double 0.000000e+00, double* %16, align 8
  store double 0.000000e+00, double* %17, align 8
  store double 0.000000e+00, double* %18, align 8
  store double 0.000000e+00, double* %19, align 8
  store i32 0, i32* %21, align 4
  br label %22

22:                                               ; preds = %55, %6
  %23 = load i32, i32* %21, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %58

26:                                               ; preds = %22
  %27 = load %struct.sample*, %struct.sample** %7, align 8
  %28 = load i32, i32* %21, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.sample, %struct.sample* %27, i64 %29
  %31 = getelementptr inbounds %struct.sample, %struct.sample* %30, i32 0, i32 0
  %32 = load double, double* %31, align 8
  store double %32, double* %13, align 8
  %33 = load %struct.sample*, %struct.sample** %7, align 8
  %34 = load i32, i32* %21, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.sample, %struct.sample* %33, i64 %35
  %37 = getelementptr inbounds %struct.sample, %struct.sample* %36, i32 0, i32 1
  %38 = load double, double* %37, align 8
  store double %38, double* %14, align 8
  %39 = load double, double* %13, align 8
  %40 = load double, double* %16, align 8
  %41 = fadd double %40, %39
  store double %41, double* %16, align 8
  %42 = load double, double* %14, align 8
  %43 = load double, double* %17, align 8
  %44 = fadd double %43, %42
  store double %44, double* %17, align 8
  %45 = load double, double* %13, align 8
  %46 = load double, double* %14, align 8
  %47 = fmul double %45, %46
  %48 = load double, double* %18, align 8
  %49 = fadd double %48, %47
  store double %49, double* %18, align 8
  %50 = load double, double* %13, align 8
  %51 = load double, double* %13, align 8
  %52 = fmul double %50, %51
  %53 = load double, double* %19, align 8
  %54 = fadd double %53, %52
  store double %54, double* %19, align 8
  br label %55

55:                                               ; preds = %26
  %56 = load i32, i32* %21, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %21, align 4
  br label %22

58:                                               ; preds = %22
  %59 = load double, double* %18, align 8
  %60 = load double, double* %16, align 8
  %61 = load double, double* %17, align 8
  %62 = fmul double %60, %61
  %63 = load i32, i32* %8, align 4
  %64 = sitofp i32 %63 to double
  %65 = fdiv double %62, %64
  %66 = fsub double %59, %65
  %67 = load double, double* %19, align 8
  %68 = load double, double* %16, align 8
  %69 = load double, double* %16, align 8
  %70 = fmul double %68, %69
  %71 = load i32, i32* %8, align 4
  %72 = sitofp i32 %71 to double
  %73 = fdiv double %70, %72
  %74 = fsub double %67, %73
  %75 = fdiv double %66, %74
  %76 = load double*, double** %10, align 8
  store double %75, double* %76, align 8
  %77 = load double, double* %17, align 8
  %78 = load double*, double** %10, align 8
  %79 = load double, double* %78, align 8
  %80 = load double, double* %16, align 8
  %81 = fmul double %79, %80
  %82 = fsub double %77, %81
  %83 = load i32, i32* %8, align 4
  %84 = sitofp i32 %83 to double
  %85 = fdiv double %82, %84
  %86 = load double*, double** %9, align 8
  store double %85, double* %86, align 8
  %87 = load double*, double** %12, align 8
  store double 0.000000e+00, double* %87, align 8
  store double 0.000000e+00, double* %20, align 8
  store i32 0, i32* %21, align 4
  br label %88

88:                                               ; preds = %128, %58
  %89 = load i32, i32* %21, align 4
  %90 = load i32, i32* %8, align 4
  %91 = icmp slt i32 %89, %90
  br i1 %91, label %92, label %131

92:                                               ; preds = %88
  %93 = load %struct.sample*, %struct.sample** %7, align 8
  %94 = load i32, i32* %21, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.sample, %struct.sample* %93, i64 %95
  %97 = getelementptr inbounds %struct.sample, %struct.sample* %96, i32 0, i32 0
  %98 = load double, double* %97, align 8
  store double %98, double* %13, align 8
  %99 = load %struct.sample*, %struct.sample** %7, align 8
  %100 = load i32, i32* %21, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.sample, %struct.sample* %99, i64 %101
  %103 = getelementptr inbounds %struct.sample, %struct.sample* %102, i32 0, i32 1
  %104 = load double, double* %103, align 8
  store double %104, double* %14, align 8
  %105 = load double, double* %13, align 8
  %106 = load double*, double** %10, align 8
  %107 = load double, double* %106, align 8
  %108 = fmul double %105, %107
  %109 = load double*, double** %9, align 8
  %110 = load double, double* %109, align 8
  %111 = fadd double %108, %110
  %112 = load double, double* %14, align 8
  %113 = fsub double %111, %112
  %114 = call double @llvm.fabs.f64(double %113)
  store double %114, double* %15, align 8
  %115 = load double*, double** %12, align 8
  %116 = load double, double* %115, align 8
  %117 = load double, double* %15, align 8
  %118 = fcmp olt double %116, %117
  br i1 %118, label %119, label %122

119:                                              ; preds = %92
  %120 = load double, double* %15, align 8
  %121 = load double*, double** %12, align 8
  store double %120, double* %121, align 8
  br label %122

122:                                              ; preds = %119, %92
  %123 = load double, double* %15, align 8
  %124 = load double, double* %15, align 8
  %125 = fmul double %123, %124
  %126 = load double, double* %20, align 8
  %127 = fadd double %126, %125
  store double %127, double* %20, align 8
  br label %128

128:                                              ; preds = %122
  %129 = load i32, i32* %21, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %21, align 4
  br label %88

131:                                              ; preds = %88
  %132 = load double, double* %20, align 8
  %133 = load i32, i32* %8, align 4
  %134 = sitofp i32 %133 to double
  %135 = fdiv double %132, %134
  %136 = call double @sqrt(double %135) #3
  %137 = load double*, double** %11, align 8
  store double %136, double* %137, align 8
  ret void
}

; Function Attrs: nounwind readnone speculatable willreturn
declare double @llvm.fabs.f64(double) #1

; Function Attrs: nounwind
declare dso_local double @sqrt(double) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
