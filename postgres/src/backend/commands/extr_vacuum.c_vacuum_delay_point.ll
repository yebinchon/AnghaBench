; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_vacuum.c_vacuum_delay_point.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_vacuum.c_vacuum_delay_point.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VacuumCostActive = common dso_local global i64 0, align 8
@InterruptPending = common dso_local global i32 0, align 4
@VacuumCostBalance = common dso_local global i32 0, align 4
@VacuumCostLimit = common dso_local global i32 0, align 4
@VacuumCostDelay = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vacuum_delay_point() #0 {
  %1 = alloca double, align 8
  %2 = call i32 (...) @CHECK_FOR_INTERRUPTS()
  %3 = load i64, i64* @VacuumCostActive, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %35

5:                                                ; preds = %0
  %6 = load i32, i32* @InterruptPending, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %35, label %8

8:                                                ; preds = %5
  %9 = load i32, i32* @VacuumCostBalance, align 4
  %10 = load i32, i32* @VacuumCostLimit, align 4
  %11 = icmp sge i32 %9, %10
  br i1 %11, label %12, label %35

12:                                               ; preds = %8
  %13 = load i32, i32* @VacuumCostDelay, align 4
  %14 = load i32, i32* @VacuumCostBalance, align 4
  %15 = mul nsw i32 %13, %14
  %16 = load i32, i32* @VacuumCostLimit, align 4
  %17 = sdiv i32 %15, %16
  %18 = sitofp i32 %17 to double
  store double %18, double* %1, align 8
  %19 = load double, double* %1, align 8
  %20 = load i32, i32* @VacuumCostDelay, align 4
  %21 = mul nsw i32 %20, 4
  %22 = sitofp i32 %21 to double
  %23 = fcmp ogt double %19, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %12
  %25 = load i32, i32* @VacuumCostDelay, align 4
  %26 = mul nsw i32 %25, 4
  %27 = sitofp i32 %26 to double
  store double %27, double* %1, align 8
  br label %28

28:                                               ; preds = %24, %12
  %29 = load double, double* %1, align 8
  %30 = fmul double %29, 1.000000e+03
  %31 = fptosi double %30 to i64
  %32 = call i32 @pg_usleep(i64 %31)
  store i32 0, i32* @VacuumCostBalance, align 4
  %33 = call i32 (...) @AutoVacuumUpdateDelay()
  %34 = call i32 (...) @CHECK_FOR_INTERRUPTS()
  br label %35

35:                                               ; preds = %28, %8, %5, %0
  ret void
}

declare dso_local i32 @CHECK_FOR_INTERRUPTS(...) #1

declare dso_local i32 @pg_usleep(i64) #1

declare dso_local i32 @AutoVacuumUpdateDelay(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
