; ModuleID = '/home/carl/AnghaBench/netdata/daemon/extr_unit_test.c_storage_number_min.c'
source_filename = "/home/carl/AnghaBench/netdata/daemon/extr_unit_test.c_storage_number_min.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SN_EXISTS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @storage_number_min(double %0) #0 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca i32, align 4
  store double %0, double* %2, align 8
  store double 1.000000e+00, double* %3, align 8
  br label %6

6:                                                ; preds = %22, %1
  %7 = load double, double* %2, align 8
  store double %7, double* %4, align 8
  %8 = load double, double* %2, align 8
  %9 = fdiv double %8, 2.000000e+00
  store double %9, double* %2, align 8
  %10 = load double, double* %2, align 8
  %11 = load i32, i32* @SN_EXISTS, align 4
  %12 = call i32 @pack_storage_number(double %10, i32 %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = call double @unpack_storage_number(i32 %13)
  store double %14, double* %3, align 8
  br label %15

15:                                               ; preds = %6
  %16 = load double, double* %3, align 8
  %17 = fcmp une double %16, 0.000000e+00
  br i1 %17, label %18, label %22

18:                                               ; preds = %15
  %19 = load double, double* %3, align 8
  %20 = load double, double* %4, align 8
  %21 = fcmp une double %19, %20
  br label %22

22:                                               ; preds = %18, %15
  %23 = phi i1 [ false, %15 ], [ %21, %18 ]
  br i1 %23, label %6, label %24

24:                                               ; preds = %22
  %25 = load double, double* %4, align 8
  ret double %25
}

declare dso_local i32 @pack_storage_number(double, i32) #1

declare dso_local double @unpack_storage_number(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
