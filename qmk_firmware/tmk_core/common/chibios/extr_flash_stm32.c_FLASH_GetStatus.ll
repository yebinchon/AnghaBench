; ModuleID = '/home/carl/AnghaBench/qmk_firmware/tmk_core/common/chibios/extr_flash_stm32.c_FLASH_GetStatus.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/tmk_core/common/chibios/extr_flash_stm32.c_FLASH_GetStatus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@FLASH = common dso_local global %struct.TYPE_2__* null, align 8
@FLASH_SR_BSY = common dso_local global i32 0, align 4
@FLASH_BUSY = common dso_local global i32 0, align 4
@FLASH_SR_PGERR = common dso_local global i32 0, align 4
@FLASH_ERROR_PG = common dso_local global i32 0, align 4
@FLASH_SR_WRPERR = common dso_local global i32 0, align 4
@FLASH_ERROR_WRP = common dso_local global i32 0, align 4
@FLASH_OBR_OPTERR = common dso_local global i32 0, align 4
@FLASH_ERROR_OPT = common dso_local global i32 0, align 4
@FLASH_COMPLETE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @FLASH_GetStatus() #0 {
  %1 = alloca i32, align 4
  %2 = load %struct.TYPE_2__*, %struct.TYPE_2__** @FLASH, align 8
  %3 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %2, i32 0, i32 0
  %4 = load i32, i32* %3, align 4
  %5 = load i32, i32* @FLASH_SR_BSY, align 4
  %6 = and i32 %4, %5
  %7 = load i32, i32* @FLASH_SR_BSY, align 4
  %8 = icmp eq i32 %6, %7
  br i1 %8, label %9, label %11

9:                                                ; preds = %0
  %10 = load i32, i32* @FLASH_BUSY, align 4
  store i32 %10, i32* %1, align 4
  br label %40

11:                                               ; preds = %0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** @FLASH, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @FLASH_SR_PGERR, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %11
  %19 = load i32, i32* @FLASH_ERROR_PG, align 4
  store i32 %19, i32* %1, align 4
  br label %40

20:                                               ; preds = %11
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** @FLASH, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @FLASH_SR_WRPERR, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %20
  %28 = load i32, i32* @FLASH_ERROR_WRP, align 4
  store i32 %28, i32* %1, align 4
  br label %40

29:                                               ; preds = %20
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** @FLASH, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @FLASH_OBR_OPTERR, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %29
  %37 = load i32, i32* @FLASH_ERROR_OPT, align 4
  store i32 %37, i32* %1, align 4
  br label %40

38:                                               ; preds = %29
  %39 = load i32, i32* @FLASH_COMPLETE, align 4
  store i32 %39, i32* %1, align 4
  br label %40

40:                                               ; preds = %38, %36, %27, %18, %9
  %41 = load i32, i32* %1, align 4
  ret i32 %41
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
