; ModuleID = '/home/carl/AnghaBench/postgres/contrib/pgcrypto/extr_imath.c_s_inlen.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/pgcrypto/extr_imath.c_s_inlen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@s_log2 = common dso_local global double* null, align 8
@MP_DIGIT_BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i64)* @s_inlen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @s_inlen(i32 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca double, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i64 %1, i64* %4, align 8
  %7 = load i32, i32* %3, align 4
  %8 = sitofp i32 %7 to double
  %9 = load double*, double** @s_log2, align 8
  %10 = load i64, i64* %4, align 8
  %11 = getelementptr inbounds double, double* %9, i64 %10
  %12 = load double, double* %11, align 8
  %13 = fdiv double %8, %12
  store double %13, double* %5, align 8
  %14 = load double, double* %5, align 8
  %15 = fadd double %14, 5.000000e-01
  %16 = fptoui double %15 to i64
  store i64 %16, i64* %6, align 8
  %17 = load i64, i64* %6, align 8
  %18 = load i32, i32* @MP_DIGIT_BIT, align 4
  %19 = sub nsw i32 %18, 1
  %20 = sext i32 %19 to i64
  %21 = add i64 %17, %20
  %22 = load i32, i32* @MP_DIGIT_BIT, align 4
  %23 = sext i32 %22 to i64
  %24 = udiv i64 %21, %23
  %25 = add i64 %24, 1
  ret i64 %25
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
