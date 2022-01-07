; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/lib/extr_hyperloglog.c_initHyperLogLogError.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/lib/extr_hyperloglog.c_initHyperLogLogError.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @initHyperLogLogError(i32* %0, double %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca double, align 8
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  store i32* %0, i32** %3, align 8
  store double %1, double* %4, align 8
  store i32 4, i32* %5, align 4
  br label %7

7:                                                ; preds = %20, %2
  %8 = load i32, i32* %5, align 4
  %9 = icmp slt i32 %8, 16
  br i1 %9, label %10, label %23

10:                                               ; preds = %7
  %11 = load i32, i32* %5, align 4
  %12 = shl i32 1, %11
  %13 = sitofp i32 %12 to double
  store double %13, double* %6, align 8
  %14 = load double, double* %6, align 8
  %15 = call double @sqrt(double %14) #3
  %16 = fdiv double 1.040000e+00, %15
  %17 = load double, double* %4, align 8
  %18 = fcmp olt double %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %10
  br label %23

20:                                               ; preds = %10
  %21 = load i32, i32* %5, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %5, align 4
  br label %7

23:                                               ; preds = %19, %7
  %24 = load i32*, i32** %3, align 8
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @initHyperLogLog(i32* %24, i32 %25)
  ret void
}

; Function Attrs: nounwind
declare dso_local double @sqrt(double) #1

declare dso_local i32 @initHyperLogLog(i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
