; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_jscript.h_is_int32.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_jscript.h_is_int32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INT32_MIN = common dso_local global double 0.000000e+00, align 8
@INT32_MAX = common dso_local global double 0.000000e+00, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (double)* @is_int32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_int32(double %0) #0 {
  %2 = alloca double, align 8
  store double %0, double* %2, align 8
  %3 = load double, double* @INT32_MIN, align 8
  %4 = load double, double* %2, align 8
  %5 = fcmp ole double %3, %4
  br i1 %5, label %6, label %16

6:                                                ; preds = %1
  %7 = load double, double* %2, align 8
  %8 = load double, double* @INT32_MAX, align 8
  %9 = fcmp ole double %7, %8
  br i1 %9, label %10, label %16

10:                                               ; preds = %6
  %11 = load double, double* %2, align 8
  %12 = fptosi double %11 to i32
  %13 = sitofp i32 %12 to double
  %14 = load double, double* %2, align 8
  %15 = fcmp oeq double %13, %14
  br label %16

16:                                               ; preds = %10, %6, %1
  %17 = phi i1 [ false, %6 ], [ false, %1 ], [ %15, %10 ]
  %18 = zext i1 %17 to i32
  ret i32 %18
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
