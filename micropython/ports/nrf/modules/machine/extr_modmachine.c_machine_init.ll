; ModuleID = '/home/carl/AnghaBench/micropython/ports/nrf/modules/machine/extr_modmachine.c_machine_init.c'
source_filename = "/home/carl/AnghaBench/micropython/ports/nrf/modules/machine/extr_modmachine.c_machine_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@NRF_POWER = common dso_local global %struct.TYPE_2__* null, align 8
@POWER_RESETREAS_RESETPIN_Msk = common dso_local global i32 0, align 4
@PYB_RESET_HARD = common dso_local global i32 0, align 4
@reset_cause = common dso_local global i32 0, align 4
@POWER_RESETREAS_DOG_Msk = common dso_local global i32 0, align 4
@PYB_RESET_WDT = common dso_local global i32 0, align 4
@POWER_RESETREAS_SREQ_Msk = common dso_local global i32 0, align 4
@PYB_RESET_SOFT = common dso_local global i32 0, align 4
@POWER_RESETREAS_LOCKUP_Msk = common dso_local global i32 0, align 4
@PYB_RESET_LOCKUP = common dso_local global i32 0, align 4
@POWER_RESETREAS_OFF_Msk = common dso_local global i32 0, align 4
@PYB_RESET_POWER_ON = common dso_local global i32 0, align 4
@POWER_RESETREAS_LPCOMP_Msk = common dso_local global i32 0, align 4
@PYB_RESET_LPCOMP = common dso_local global i32 0, align 4
@POWER_RESETREAS_DIF_Msk = common dso_local global i32 0, align 4
@PYB_RESET_DIF = common dso_local global i32 0, align 4
@POWER_RESETREAS_NFC_Msk = common dso_local global i32 0, align 4
@PYB_RESET_NFC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @machine_init() #0 {
  %1 = alloca i32, align 4
  %2 = load %struct.TYPE_2__*, %struct.TYPE_2__** @NRF_POWER, align 8
  %3 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %2, i32 0, i32 0
  %4 = load i32, i32* %3, align 4
  store i32 %4, i32* %1, align 4
  %5 = load i32, i32* %1, align 4
  %6 = load i32, i32* @POWER_RESETREAS_RESETPIN_Msk, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %0
  %10 = load i32, i32* @PYB_RESET_HARD, align 4
  store i32 %10, i32* @reset_cause, align 4
  br label %59

11:                                               ; preds = %0
  %12 = load i32, i32* %1, align 4
  %13 = load i32, i32* @POWER_RESETREAS_DOG_Msk, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %11
  %17 = load i32, i32* @PYB_RESET_WDT, align 4
  store i32 %17, i32* @reset_cause, align 4
  br label %58

18:                                               ; preds = %11
  %19 = load i32, i32* %1, align 4
  %20 = load i32, i32* @POWER_RESETREAS_SREQ_Msk, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = load i32, i32* @PYB_RESET_SOFT, align 4
  store i32 %24, i32* @reset_cause, align 4
  br label %57

25:                                               ; preds = %18
  %26 = load i32, i32* %1, align 4
  %27 = load i32, i32* @POWER_RESETREAS_LOCKUP_Msk, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = load i32, i32* @PYB_RESET_LOCKUP, align 4
  store i32 %31, i32* @reset_cause, align 4
  br label %56

32:                                               ; preds = %25
  %33 = load i32, i32* %1, align 4
  %34 = load i32, i32* @POWER_RESETREAS_OFF_Msk, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %32
  %38 = load i32, i32* @PYB_RESET_POWER_ON, align 4
  store i32 %38, i32* @reset_cause, align 4
  br label %55

39:                                               ; preds = %32
  %40 = load i32, i32* %1, align 4
  %41 = load i32, i32* @POWER_RESETREAS_LPCOMP_Msk, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %39
  %45 = load i32, i32* @PYB_RESET_LPCOMP, align 4
  store i32 %45, i32* @reset_cause, align 4
  br label %54

46:                                               ; preds = %39
  %47 = load i32, i32* %1, align 4
  %48 = load i32, i32* @POWER_RESETREAS_DIF_Msk, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %46
  %52 = load i32, i32* @PYB_RESET_DIF, align 4
  store i32 %52, i32* @reset_cause, align 4
  br label %53

53:                                               ; preds = %51, %46
  br label %54

54:                                               ; preds = %53, %44
  br label %55

55:                                               ; preds = %54, %37
  br label %56

56:                                               ; preds = %55, %30
  br label %57

57:                                               ; preds = %56, %23
  br label %58

58:                                               ; preds = %57, %16
  br label %59

59:                                               ; preds = %58, %9
  %60 = load i32, i32* @reset_cause, align 4
  %61 = shl i32 1, %60
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** @NRF_POWER, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
