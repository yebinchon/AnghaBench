; ModuleID = '/home/carl/AnghaBench/php-src/ext/gd/libgd/extr_gd_matrix.c_gdAffineFlip.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/gd/libgd/extr_gd_matrix.c_gdAffineFlip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GD_TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gdAffineFlip(double* %0, double* %1, i32 %2, i32 %3) #0 {
  %5 = alloca double*, align 8
  %6 = alloca double*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store double* %0, double** %5, align 8
  store double* %1, double** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load i32, i32* %7, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %4
  %12 = load double*, double** %6, align 8
  %13 = getelementptr inbounds double, double* %12, i64 0
  %14 = load double, double* %13, align 8
  %15 = fneg double %14
  br label %20

16:                                               ; preds = %4
  %17 = load double*, double** %6, align 8
  %18 = getelementptr inbounds double, double* %17, i64 0
  %19 = load double, double* %18, align 8
  br label %20

20:                                               ; preds = %16, %11
  %21 = phi double [ %15, %11 ], [ %19, %16 ]
  %22 = load double*, double** %5, align 8
  %23 = getelementptr inbounds double, double* %22, i64 0
  store double %21, double* %23, align 8
  %24 = load i32, i32* %7, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %20
  %27 = load double*, double** %6, align 8
  %28 = getelementptr inbounds double, double* %27, i64 1
  %29 = load double, double* %28, align 8
  %30 = fneg double %29
  br label %35

31:                                               ; preds = %20
  %32 = load double*, double** %6, align 8
  %33 = getelementptr inbounds double, double* %32, i64 1
  %34 = load double, double* %33, align 8
  br label %35

35:                                               ; preds = %31, %26
  %36 = phi double [ %30, %26 ], [ %34, %31 ]
  %37 = load double*, double** %5, align 8
  %38 = getelementptr inbounds double, double* %37, i64 1
  store double %36, double* %38, align 8
  %39 = load i32, i32* %8, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %35
  %42 = load double*, double** %6, align 8
  %43 = getelementptr inbounds double, double* %42, i64 2
  %44 = load double, double* %43, align 8
  %45 = fneg double %44
  br label %50

46:                                               ; preds = %35
  %47 = load double*, double** %6, align 8
  %48 = getelementptr inbounds double, double* %47, i64 2
  %49 = load double, double* %48, align 8
  br label %50

50:                                               ; preds = %46, %41
  %51 = phi double [ %45, %41 ], [ %49, %46 ]
  %52 = load double*, double** %5, align 8
  %53 = getelementptr inbounds double, double* %52, i64 2
  store double %51, double* %53, align 8
  %54 = load i32, i32* %8, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %50
  %57 = load double*, double** %6, align 8
  %58 = getelementptr inbounds double, double* %57, i64 3
  %59 = load double, double* %58, align 8
  %60 = fneg double %59
  br label %65

61:                                               ; preds = %50
  %62 = load double*, double** %6, align 8
  %63 = getelementptr inbounds double, double* %62, i64 3
  %64 = load double, double* %63, align 8
  br label %65

65:                                               ; preds = %61, %56
  %66 = phi double [ %60, %56 ], [ %64, %61 ]
  %67 = load double*, double** %5, align 8
  %68 = getelementptr inbounds double, double* %67, i64 3
  store double %66, double* %68, align 8
  %69 = load i32, i32* %7, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %65
  %72 = load double*, double** %6, align 8
  %73 = getelementptr inbounds double, double* %72, i64 4
  %74 = load double, double* %73, align 8
  %75 = fneg double %74
  br label %80

76:                                               ; preds = %65
  %77 = load double*, double** %6, align 8
  %78 = getelementptr inbounds double, double* %77, i64 4
  %79 = load double, double* %78, align 8
  br label %80

80:                                               ; preds = %76, %71
  %81 = phi double [ %75, %71 ], [ %79, %76 ]
  %82 = load double*, double** %5, align 8
  %83 = getelementptr inbounds double, double* %82, i64 4
  store double %81, double* %83, align 8
  %84 = load i32, i32* %8, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %80
  %87 = load double*, double** %6, align 8
  %88 = getelementptr inbounds double, double* %87, i64 5
  %89 = load double, double* %88, align 8
  %90 = fneg double %89
  br label %95

91:                                               ; preds = %80
  %92 = load double*, double** %6, align 8
  %93 = getelementptr inbounds double, double* %92, i64 5
  %94 = load double, double* %93, align 8
  br label %95

95:                                               ; preds = %91, %86
  %96 = phi double [ %90, %86 ], [ %94, %91 ]
  %97 = load double*, double** %5, align 8
  %98 = getelementptr inbounds double, double* %97, i64 5
  store double %96, double* %98, align 8
  %99 = load i32, i32* @GD_TRUE, align 4
  ret i32 %99
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
