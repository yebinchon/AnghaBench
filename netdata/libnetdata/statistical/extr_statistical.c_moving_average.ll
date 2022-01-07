; ModuleID = '/home/carl/AnghaBench/netdata/libnetdata/statistical/extr_statistical.c_moving_average.c'
source_filename = "/home/carl/AnghaBench/netdata/libnetdata/statistical/extr_statistical.c_moving_average.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @moving_average(double* %0, i64 %1, i64 %2) #0 {
  %4 = alloca double, align 8
  %5 = alloca double*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca double, align 8
  store double* %0, double** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %15 = load i64, i64* %7, align 8
  %16 = icmp ule i64 %15, 0
  %17 = zext i1 %16 to i32
  %18 = call i64 @unlikely(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  store double 0.000000e+00, double* %4, align 8
  br label %104

21:                                               ; preds = %3
  store double 0.000000e+00, double* %10, align 8
  store double 0.000000e+00, double* %11, align 8
  %22 = load i64, i64* %7, align 8
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %12, align 8
  %24 = alloca double, i64 %22, align 16
  store i64 %22, i64* %13, align 8
  store i64 0, i64* %9, align 8
  br label %25

25:                                               ; preds = %32, %21
  %26 = load i64, i64* %9, align 8
  %27 = load i64, i64* %7, align 8
  %28 = icmp ult i64 %26, %27
  br i1 %28, label %29, label %35

29:                                               ; preds = %25
  %30 = load i64, i64* %9, align 8
  %31 = getelementptr inbounds double, double* %24, i64 %30
  store double 0.000000e+00, double* %31, align 8
  br label %32

32:                                               ; preds = %29
  %33 = load i64, i64* %9, align 8
  %34 = add i64 %33, 1
  store i64 %34, i64* %9, align 8
  br label %25

35:                                               ; preds = %25
  store i64 0, i64* %8, align 8
  store i64 0, i64* %9, align 8
  br label %36

36:                                               ; preds = %98, %35
  %37 = load i64, i64* %8, align 8
  %38 = load i64, i64* %6, align 8
  %39 = icmp ult i64 %37, %38
  br i1 %39, label %40, label %101

40:                                               ; preds = %36
  %41 = load double*, double** %5, align 8
  %42 = load i64, i64* %8, align 8
  %43 = getelementptr inbounds double, double* %41, i64 %42
  %44 = load double, double* %43, align 8
  store double %44, double* %14, align 8
  %45 = load double, double* %14, align 8
  %46 = call i32 @calculated_number_isnumber(double %45)
  %47 = icmp ne i32 %46, 0
  %48 = xor i1 %47, true
  %49 = zext i1 %48 to i32
  %50 = call i64 @unlikely(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %40
  br label %98

53:                                               ; preds = %40
  %54 = load i64, i64* %9, align 8
  %55 = load i64, i64* %7, align 8
  %56 = icmp ult i64 %54, %55
  %57 = zext i1 %56 to i32
  %58 = call i64 @unlikely(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %76

60:                                               ; preds = %53
  %61 = load double, double* %14, align 8
  %62 = load double, double* %10, align 8
  %63 = fadd double %62, %61
  store double %63, double* %10, align 8
  %64 = load i64, i64* %9, align 8
  %65 = load i64, i64* %7, align 8
  %66 = sub i64 %65, 1
  %67 = icmp eq i64 %64, %66
  br i1 %67, label %68, label %73

68:                                               ; preds = %60
  %69 = load double, double* %10, align 8
  %70 = load i64, i64* %7, align 8
  %71 = uitofp i64 %70 to double
  %72 = fdiv double %69, %71
  br label %74

73:                                               ; preds = %60
  br label %74

74:                                               ; preds = %73, %68
  %75 = phi double [ %72, %68 ], [ 0.000000e+00, %73 ]
  store double %75, double* %11, align 8
  br label %90

76:                                               ; preds = %53
  %77 = load double, double* %10, align 8
  %78 = load i64, i64* %9, align 8
  %79 = load i64, i64* %7, align 8
  %80 = urem i64 %78, %79
  %81 = getelementptr inbounds double, double* %24, i64 %80
  %82 = load double, double* %81, align 8
  %83 = fsub double %77, %82
  %84 = load double, double* %14, align 8
  %85 = fadd double %83, %84
  store double %85, double* %10, align 8
  %86 = load double, double* %10, align 8
  %87 = load i64, i64* %7, align 8
  %88 = uitofp i64 %87 to double
  %89 = fdiv double %86, %88
  store double %89, double* %11, align 8
  br label %90

90:                                               ; preds = %76, %74
  %91 = load double, double* %14, align 8
  %92 = load i64, i64* %9, align 8
  %93 = load i64, i64* %7, align 8
  %94 = urem i64 %92, %93
  %95 = getelementptr inbounds double, double* %24, i64 %94
  store double %91, double* %95, align 8
  %96 = load i64, i64* %9, align 8
  %97 = add i64 %96, 1
  store i64 %97, i64* %9, align 8
  br label %98

98:                                               ; preds = %90, %52
  %99 = load i64, i64* %8, align 8
  %100 = add i64 %99, 1
  store i64 %100, i64* %8, align 8
  br label %36

101:                                              ; preds = %36
  %102 = load double, double* %11, align 8
  store double %102, double* %4, align 8
  %103 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %103)
  br label %104

104:                                              ; preds = %101, %20
  %105 = load double, double* %4, align 8
  ret double %105
}

declare dso_local i64 @unlikely(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @calculated_number_isnumber(double) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
