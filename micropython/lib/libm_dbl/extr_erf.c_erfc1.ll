; ModuleID = '/home/carl/AnghaBench/micropython/lib/libm_dbl/extr_erf.c_erfc1.c'
source_filename = "/home/carl/AnghaBench/micropython/lib/libm_dbl/extr_erf.c_erfc1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@pa0 = common dso_local global i32 0, align 4
@pa1 = common dso_local global i32 0, align 4
@pa2 = common dso_local global i32 0, align 4
@pa3 = common dso_local global i32 0, align 4
@pa4 = common dso_local global i32 0, align 4
@pa5 = common dso_local global i32 0, align 4
@pa6 = common dso_local global i32 0, align 4
@qa1 = common dso_local global i32 0, align 4
@qa2 = common dso_local global i32 0, align 4
@qa3 = common dso_local global i32 0, align 4
@qa4 = common dso_local global i32 0, align 4
@qa5 = common dso_local global i32 0, align 4
@qa6 = common dso_local global i32 0, align 4
@erx = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (double (double)* @erfc1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @erfc1(double %0) #0 {
  %2 = alloca double, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store double %0, double* %2, align 8
  %6 = load double, double* %2, align 8
  %7 = call i32 @fabs(double %6)
  %8 = sub nsw i32 %7, 1
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* @pa0, align 4
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @pa1, align 4
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* @pa2, align 4
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* @pa3, align 4
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* @pa4, align 4
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* @pa5, align 4
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* @pa6, align 4
  %22 = mul nsw i32 %20, %21
  %23 = add nsw i32 %19, %22
  %24 = mul nsw i32 %18, %23
  %25 = add nsw i32 %17, %24
  %26 = mul nsw i32 %16, %25
  %27 = add nsw i32 %15, %26
  %28 = mul nsw i32 %14, %27
  %29 = add nsw i32 %13, %28
  %30 = mul nsw i32 %12, %29
  %31 = add nsw i32 %11, %30
  %32 = mul nsw i32 %10, %31
  %33 = add nsw i32 %9, %32
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* %3, align 4
  %35 = load i32, i32* @qa1, align 4
  %36 = load i32, i32* %3, align 4
  %37 = load i32, i32* @qa2, align 4
  %38 = load i32, i32* %3, align 4
  %39 = load i32, i32* @qa3, align 4
  %40 = load i32, i32* %3, align 4
  %41 = load i32, i32* @qa4, align 4
  %42 = load i32, i32* %3, align 4
  %43 = load i32, i32* @qa5, align 4
  %44 = load i32, i32* %3, align 4
  %45 = load i32, i32* @qa6, align 4
  %46 = mul nsw i32 %44, %45
  %47 = add nsw i32 %43, %46
  %48 = mul nsw i32 %42, %47
  %49 = add nsw i32 %41, %48
  %50 = mul nsw i32 %40, %49
  %51 = add nsw i32 %39, %50
  %52 = mul nsw i32 %38, %51
  %53 = add nsw i32 %37, %52
  %54 = mul nsw i32 %36, %53
  %55 = add nsw i32 %35, %54
  %56 = mul nsw i32 %34, %55
  %57 = add nsw i32 1, %56
  store i32 %57, i32* %5, align 4
  %58 = load i32, i32* @erx, align 4
  %59 = sub nsw i32 1, %58
  %60 = load i32, i32* %4, align 4
  %61 = load i32, i32* %5, align 4
  %62 = sdiv i32 %60, %61
  %63 = sub nsw i32 %59, %62
  %64 = sitofp i32 %63 to double
  ret double %64
}

declare dso_local i32 @fabs(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
