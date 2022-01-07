; ModuleID = '/home/carl/AnghaBench/micropython/ports/cc3200/hal/extr_prcm.c_PRCMSysResetCauseGet.c'
source_filename = "/home/carl/AnghaBench/micropython/ports/cc3200/hal/extr_prcm.c_PRCMSysResetCauseGet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GPRCM_BASE = common dso_local global i64 0, align 8
@GPRCM_O_APPS_RESET_CAUSE = common dso_local global i64 0, align 8
@PRCM_POWER_ON = common dso_local global i64 0, align 8
@HIB3P3_BASE = common dso_local global i64 0, align 8
@HIB3P3_O_MEM_HIB_WAKE_STATUS = common dso_local global i64 0, align 8
@PRCM_HIB_EXIT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @PRCMSysResetCauseGet() #0 {
  %1 = alloca i64, align 8
  %2 = load i64, i64* @GPRCM_BASE, align 8
  %3 = load i64, i64* @GPRCM_O_APPS_RESET_CAUSE, align 8
  %4 = add nsw i64 %2, %3
  %5 = call i32 @HWREG(i64 %4)
  %6 = and i32 %5, 255
  %7 = sext i32 %6 to i64
  store i64 %7, i64* %1, align 8
  %8 = load i64, i64* %1, align 8
  %9 = load i64, i64* @PRCM_POWER_ON, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %21

11:                                               ; preds = %0
  %12 = load i64, i64* @HIB3P3_BASE, align 8
  %13 = load i64, i64* @HIB3P3_O_MEM_HIB_WAKE_STATUS, align 8
  %14 = add nsw i64 %12, %13
  %15 = call i32 @MAP_PRCMHIBRegRead(i64 %14)
  %16 = and i32 %15, 1
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %11
  %19 = load i64, i64* @PRCM_HIB_EXIT, align 8
  store i64 %19, i64* %1, align 8
  br label %20

20:                                               ; preds = %18, %11
  br label %21

21:                                               ; preds = %20, %0
  %22 = load i64, i64* %1, align 8
  ret i64 %22
}

declare dso_local i32 @HWREG(i64) #1

declare dso_local i32 @MAP_PRCMHIBRegRead(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
