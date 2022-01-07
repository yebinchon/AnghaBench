; ModuleID = '/home/carl/AnghaBench/netdata/daemon/extr_unit_test.c_unit_test_storage.c'
source_filename = "/home/carl/AnghaBench/netdata/daemon/extr_unit_test.c_unit_test_storage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@STORAGE_NUMBER_POSITIVE_MIN_RAW = common dso_local global i32 0, align 4
@STORAGE_NUMBER_NEGATIVE_MAX_RAW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @unit_test_storage() #0 {
  %1 = alloca i32, align 4
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = call i64 (...) @check_storage_number_exists()
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %0
  store i32 0, i32* %1, align 4
  br label %77

13:                                               ; preds = %0
  %14 = load i32, i32* @STORAGE_NUMBER_POSITIVE_MIN_RAW, align 4
  %15 = call double @unpack_storage_number(i32 %14)
  store double %15, double* %2, align 8
  %16 = load i32, i32* @STORAGE_NUMBER_NEGATIVE_MAX_RAW, align 4
  %17 = call double @unpack_storage_number(i32 %16)
  store double %17, double* %3, align 8
  store double 0.000000e+00, double* %5, align 8
  store i32 0, i32* %9, align 4
  store i32 -1, i32* %8, align 4
  br label %18

18:                                               ; preds = %71, %13
  %19 = load i32, i32* %8, align 4
  %20 = icmp sle i32 %19, 1
  br i1 %20, label %21, label %74

21:                                               ; preds = %18
  store double 0.000000e+00, double* %5, align 8
  %22 = load i32, i32* %8, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %21
  br label %71

25:                                               ; preds = %21
  store i32 0, i32* %7, align 4
  br label %26

26:                                               ; preds = %67, %25
  %27 = load i32, i32* %7, align 4
  %28 = icmp slt i32 %27, 9
  br i1 %28, label %29, label %70

29:                                               ; preds = %26
  %30 = load double, double* %5, align 8
  %31 = fadd double %30, 0x3E7AD7F29ABCAF48
  store double %31, double* %5, align 8
  %32 = load double, double* %5, align 8
  %33 = load i32, i32* %8, align 4
  %34 = sitofp i32 %33 to double
  %35 = fmul double %32, %34
  store double %35, double* %4, align 8
  store i32 0, i32* %6, align 4
  br label %36

36:                                               ; preds = %61, %29
  %37 = load i32, i32* %6, align 4
  %38 = icmp slt i32 %37, 21
  br i1 %38, label %39, label %66

39:                                               ; preds = %36
  %40 = load double, double* %4, align 8
  %41 = fcmp ogt double %40, 0.000000e+00
  br i1 %41, label %42, label %47

42:                                               ; preds = %39
  %43 = load double, double* %4, align 8
  %44 = load double, double* %2, align 8
  %45 = fcmp olt double %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %42
  br label %61

47:                                               ; preds = %42, %39
  %48 = load double, double* %4, align 8
  %49 = fcmp olt double %48, 0.000000e+00
  br i1 %49, label %50, label %55

50:                                               ; preds = %47
  %51 = load double, double* %4, align 8
  %52 = load double, double* %3, align 8
  %53 = fcmp ogt double %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %50
  br label %61

55:                                               ; preds = %50, %47
  %56 = load double, double* %4, align 8
  %57 = call i64 @check_storage_number(double %56, i32 1)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %55
  store i32 1, i32* %1, align 4
  br label %77

60:                                               ; preds = %55
  br label %61

61:                                               ; preds = %60, %54, %46
  %62 = load i32, i32* %6, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %6, align 4
  %64 = load double, double* %4, align 8
  %65 = fmul double %64, 1.000000e+01
  store double %65, double* %4, align 8
  br label %36

66:                                               ; preds = %36
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %7, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %7, align 4
  br label %26

70:                                               ; preds = %26
  br label %71

71:                                               ; preds = %70, %24
  %72 = load i32, i32* %8, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %8, align 4
  br label %18

74:                                               ; preds = %18
  %75 = call i32 @benchmark_storage_number(i32 1000000, i32 2)
  %76 = load i32, i32* %9, align 4
  store i32 %76, i32* %1, align 4
  br label %77

77:                                               ; preds = %74, %59, %12
  %78 = load i32, i32* %1, align 4
  ret i32 %78
}

declare dso_local i64 @check_storage_number_exists(...) #1

declare dso_local double @unpack_storage_number(i32) #1

declare dso_local i64 @check_storage_number(double, i32) #1

declare dso_local i32 @benchmark_storage_number(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
