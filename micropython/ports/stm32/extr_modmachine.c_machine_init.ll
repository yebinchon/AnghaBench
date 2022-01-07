; ModuleID = '/home/carl/AnghaBench/micropython/ports/stm32/extr_modmachine.c_machine_init.c'
source_filename = "/home/carl/AnghaBench/micropython/ports/stm32/extr_modmachine.c_machine_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32 }

@RCC = common dso_local global %struct.TYPE_3__* null, align 8
@RCC_SR_IWDGRSTF = common dso_local global i32 0, align 4
@RCC_SR_WWDGRSTF = common dso_local global i32 0, align 4
@PYB_RESET_WDT = common dso_local global i32 0, align 4
@reset_cause = common dso_local global i32 0, align 4
@RCC_SR_PORRSTF = common dso_local global i32 0, align 4
@RCC_SR_BORRSTF = common dso_local global i32 0, align 4
@PYB_RESET_POWER_ON = common dso_local global i32 0, align 4
@RCC_SR_PINRSTF = common dso_local global i32 0, align 4
@PYB_RESET_HARD = common dso_local global i32 0, align 4
@PYB_RESET_SOFT = common dso_local global i32 0, align 4
@RCC_SR_RMVF = common dso_local global i32 0, align 4
@PWR = common dso_local global %struct.TYPE_4__* null, align 8
@PWR_CPUCR_CSSF = common dso_local global i32 0, align 4
@PWR_CPUCR_SBF = common dso_local global i32 0, align 4
@PWR_CPUCR_STOPF = common dso_local global i32 0, align 4
@PWR_CR1_CSBF = common dso_local global i32 0, align 4
@PWR_CR_CSBF = common dso_local global i32 0, align 4
@PWR_CSR1_SBF = common dso_local global i32 0, align 4
@PWR_CSR_SBF = common dso_local global i32 0, align 4
@PWR_SCR_CSBF = common dso_local global i32 0, align 4
@PWR_SR1_SBF = common dso_local global i32 0, align 4
@PYB_RESET_DEEPSLEEP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @machine_init() #0 {
  %1 = alloca i32, align 4
  %2 = load %struct.TYPE_3__*, %struct.TYPE_3__** @RCC, align 8
  %3 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 0
  %4 = load i32, i32* %3, align 4
  store i32 %4, i32* %1, align 4
  %5 = load i32, i32* %1, align 4
  %6 = load i32, i32* @RCC_SR_IWDGRSTF, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %14, label %9

9:                                                ; preds = %0
  %10 = load i32, i32* %1, align 4
  %11 = load i32, i32* @RCC_SR_WWDGRSTF, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %9, %0
  %15 = load i32, i32* @PYB_RESET_WDT, align 4
  store i32 %15, i32* @reset_cause, align 4
  br label %39

16:                                               ; preds = %9
  %17 = load i32, i32* %1, align 4
  %18 = load i32, i32* @RCC_SR_PORRSTF, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %16
  %22 = load i32, i32* %1, align 4
  %23 = load i32, i32* @RCC_SR_BORRSTF, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %21, %16
  %27 = load i32, i32* @PYB_RESET_POWER_ON, align 4
  store i32 %27, i32* @reset_cause, align 4
  br label %38

28:                                               ; preds = %21
  %29 = load i32, i32* %1, align 4
  %30 = load i32, i32* @RCC_SR_PINRSTF, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = load i32, i32* @PYB_RESET_HARD, align 4
  store i32 %34, i32* @reset_cause, align 4
  br label %37

35:                                               ; preds = %28
  %36 = load i32, i32* @PYB_RESET_SOFT, align 4
  store i32 %36, i32* @reset_cause, align 4
  br label %37

37:                                               ; preds = %35, %33
  br label %38

38:                                               ; preds = %37, %26
  br label %39

39:                                               ; preds = %38, %14
  %40 = load i32, i32* @RCC_SR_RMVF, align 4
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** @RCC, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = or i32 %43, %40
  store i32 %44, i32* %42, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
