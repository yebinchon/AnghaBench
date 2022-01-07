; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/libc/extr_math.c_floor.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/libc/extr_math.c_floor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone readnone uwtable
define dso_local double @floor(double %0) #0 {
  %2 = alloca double, align 8
  store double %0, double* %2, align 8
  %3 = load double, double* %2, align 8
  %4 = fcmp olt double %3, 0.000000e+00
  br i1 %4, label %5, label %20

5:                                                ; preds = %1
  %6 = load double, double* %2, align 8
  %7 = fptosi double %6 to i32
  %8 = sitofp i32 %7 to double
  %9 = load double, double* %2, align 8
  %10 = fcmp oeq double %8, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %5
  %12 = load double, double* %2, align 8
  br label %18

13:                                               ; preds = %5
  %14 = load double, double* %2, align 8
  %15 = fptosi double %14 to i32
  %16 = sub nsw i32 %15, 1
  %17 = sitofp i32 %16 to double
  br label %18

18:                                               ; preds = %13, %11
  %19 = phi double [ %12, %11 ], [ %17, %13 ]
  br label %24

20:                                               ; preds = %1
  %21 = load double, double* %2, align 8
  %22 = fptosi double %21 to i32
  %23 = sitofp i32 %22 to double
  br label %24

24:                                               ; preds = %20, %18
  %25 = phi double [ %19, %18 ], [ %23, %20 ]
  ret double %25
}

attributes #0 = { noinline nounwind optnone readnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
