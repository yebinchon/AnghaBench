; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_orderedsetaggs.c_float8_lerp.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_orderedsetaggs.c_float8_lerp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, double)* @float8_lerp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @float8_lerp(i32 %0, i32 %1, double %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store double %2, double* %6, align 8
  %9 = load i32, i32* %4, align 4
  %10 = call double @DatumGetFloat8(i32 %9)
  store double %10, double* %7, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call double @DatumGetFloat8(i32 %11)
  store double %12, double* %8, align 8
  %13 = load double, double* %7, align 8
  %14 = load double, double* %6, align 8
  %15 = load double, double* %8, align 8
  %16 = load double, double* %7, align 8
  %17 = fsub double %15, %16
  %18 = fmul double %14, %17
  %19 = fadd double %13, %18
  %20 = call i32 @Float8GetDatum(double %19)
  ret i32 %20
}

declare dso_local double @DatumGetFloat8(i32) #1

declare dso_local i32 @Float8GetDatum(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
