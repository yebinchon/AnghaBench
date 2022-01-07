; ModuleID = '/home/carl/AnghaBench/qmk_firmware/tmk_core/common/chibios/extr_flash_stm32.c_FLASH_ErasePage.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/tmk_core/common/chibios/extr_flash_stm32.c_FLASH_ErasePage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }

@FLASH_COMPLETE = common dso_local global i64 0, align 8
@EraseTimeout = common dso_local global i32 0, align 4
@FLASH_CR_PER = common dso_local global i32 0, align 4
@FLASH = common dso_local global %struct.TYPE_2__* null, align 8
@FLASH_CR_STRT = common dso_local global i32 0, align 4
@FLASH_TIMEOUT = common dso_local global i64 0, align 8
@FLASH_SR_EOP = common dso_local global i32 0, align 4
@FLASH_SR_PGERR = common dso_local global i32 0, align 4
@FLASH_SR_WRPERR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @FLASH_ErasePage(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i64, i64* @FLASH_COMPLETE, align 8
  store i64 %4, i64* %3, align 8
  %5 = load i32, i32* %2, align 4
  %6 = call i32 @IS_FLASH_ADDRESS(i32 %5)
  %7 = call i32 @ASSERT(i32 %6)
  %8 = load i32, i32* @EraseTimeout, align 4
  %9 = call i64 @FLASH_WaitForLastOperation(i32 %8)
  store i64 %9, i64* %3, align 8
  %10 = load i64, i64* %3, align 8
  %11 = load i64, i64* @FLASH_COMPLETE, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %47

13:                                               ; preds = %1
  %14 = load i32, i32* @FLASH_CR_PER, align 4
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** @FLASH, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = or i32 %17, %14
  store i32 %18, i32* %16, align 4
  %19 = load i32, i32* %2, align 4
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** @FLASH, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 2
  store i32 %19, i32* %21, align 4
  %22 = load i32, i32* @FLASH_CR_STRT, align 4
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** @FLASH, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = or i32 %25, %22
  store i32 %26, i32* %24, align 4
  %27 = load i32, i32* @EraseTimeout, align 4
  %28 = call i64 @FLASH_WaitForLastOperation(i32 %27)
  store i64 %28, i64* %3, align 8
  %29 = load i64, i64* %3, align 8
  %30 = load i64, i64* @FLASH_TIMEOUT, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %39

32:                                               ; preds = %13
  %33 = load i32, i32* @FLASH_CR_PER, align 4
  %34 = xor i32 %33, -1
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** @FLASH, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = and i32 %37, %34
  store i32 %38, i32* %36, align 4
  br label %39

39:                                               ; preds = %32, %13
  %40 = load i32, i32* @FLASH_SR_EOP, align 4
  %41 = load i32, i32* @FLASH_SR_PGERR, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @FLASH_SR_WRPERR, align 4
  %44 = or i32 %42, %43
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** @FLASH, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 4
  br label %47

47:                                               ; preds = %39, %1
  %48 = load i64, i64* %3, align 8
  ret i64 %48
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @IS_FLASH_ADDRESS(i32) #1

declare dso_local i64 @FLASH_WaitForLastOperation(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
