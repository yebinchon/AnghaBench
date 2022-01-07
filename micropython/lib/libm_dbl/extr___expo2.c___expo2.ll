; ModuleID = '/home/carl/AnghaBench/micropython/lib/libm_dbl/extr___expo2.c___expo2.c'
source_filename = "/home/carl/AnghaBench/micropython/lib/libm_dbl/extr___expo2.c___expo2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@k = common dso_local global i32 0, align 4
@kln2 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @__expo2(double %0) #0 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  store double %0, double* %2, align 8
  %4 = load double, double* %3, align 8
  %5 = load i32, i32* @k, align 4
  %6 = sdiv i32 %5, 2
  %7 = add nsw i32 1023, %6
  %8 = shl i32 %7, 20
  %9 = call i32 @INSERT_WORDS(double %4, i32 %8, i32 0)
  %10 = load double, double* %2, align 8
  %11 = load i64, i64* @kln2, align 8
  %12 = sitofp i64 %11 to double
  %13 = fsub double %10, %12
  %14 = fptosi double %13 to i64
  %15 = call double @exp(i64 %14)
  %16 = load double, double* %3, align 8
  %17 = fmul double %15, %16
  %18 = load double, double* %3, align 8
  %19 = fmul double %17, %18
  ret double %19
}

declare dso_local i32 @INSERT_WORDS(double, i32, i32) #1

declare dso_local double @exp(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
