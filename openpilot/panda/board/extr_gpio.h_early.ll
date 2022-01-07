; ModuleID = '/home/carl/AnghaBench/openpilot/panda/board/extr_gpio.h_early.c'
source_filename = "/home/carl/AnghaBench/openpilot/panda/board/extr_gpio.h_early.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_13__ = type { i64, i64, i64 }
%struct.TYPE_12__ = type { i64, i64, i64 }
%struct.TYPE_11__ = type { i64, i64, i64 }
%struct.TYPE_8__ = type { i32 (i32, i32)*, i32 (i32)* }

@global_critical_depth = common dso_local global i64 0, align 8
@enter_bootloader_mode = common dso_local global i64 0, align 8
@BOOT_NORMAL = common dso_local global i64 0, align 8
@ENTER_BOOTLOADER_MAGIC = common dso_local global i64 0, align 8
@ENTER_SOFTLOADER_MAGIC = common dso_local global i64 0, align 8
@DBGMCU = common dso_local global %struct.TYPE_14__* null, align 8
@g_pfnVectors = common dso_local global i32 0, align 4
@SCB = common dso_local global %struct.TYPE_9__* null, align 8
@RCC_AHB1ENR_GPIOAEN = common dso_local global i32 0, align 4
@RCC_AHB1ENR_GPIOBEN = common dso_local global i32 0, align 4
@RCC_AHB1ENR_GPIOCEN = common dso_local global i32 0, align 4
@RCC = common dso_local global %struct.TYPE_10__* null, align 8
@GPIOA = common dso_local global %struct.TYPE_13__* null, align 8
@GPIOB = common dso_local global %struct.TYPE_12__* null, align 8
@GPIOC = common dso_local global %struct.TYPE_11__* null, align 8
@current_board = common dso_local global %struct.TYPE_8__* null, align 8
@LED_GREEN = common dso_local global i32 0, align 4
@is_entering_bootmode = common dso_local global i64 0, align 8
@ESP_GPS_DISABLED = common dso_local global i32 0, align 4
@ESP_GPS_ENABLED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @early() #0 {
  %1 = alloca i32, align 4
  store i64 0, i64* @global_critical_depth, align 8
  %2 = call i32 (...) @enable_interrupts()
  %3 = load i64, i64* @enter_bootloader_mode, align 8
  %4 = load i64, i64* @BOOT_NORMAL, align 8
  %5 = icmp ne i64 %3, %4
  br i1 %5, label %6, label %17

6:                                                ; preds = %0
  %7 = load i64, i64* @enter_bootloader_mode, align 8
  %8 = load i64, i64* @ENTER_BOOTLOADER_MAGIC, align 8
  %9 = icmp ne i64 %7, %8
  br i1 %9, label %10, label %17

10:                                               ; preds = %6
  %11 = load i64, i64* @enter_bootloader_mode, align 8
  %12 = load i64, i64* @ENTER_SOFTLOADER_MAGIC, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %10
  %15 = load i64, i64* @BOOT_NORMAL, align 8
  store i64 %15, i64* @enter_bootloader_mode, align 8
  %16 = call i32 (...) @NVIC_SystemReset()
  br label %17

17:                                               ; preds = %14, %10, %6, %0
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** @DBGMCU, align 8
  %19 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store volatile i32 %20, i32* %1, align 4
  %21 = load volatile i32, i32* %1, align 4
  %22 = and i32 %21, 4095
  %23 = icmp ne i32 %22, 1041
  br i1 %23, label %24, label %26

24:                                               ; preds = %17
  %25 = load i64, i64* @ENTER_BOOTLOADER_MAGIC, align 8
  store i64 %25, i64* @enter_bootloader_mode, align 8
  br label %26

26:                                               ; preds = %24, %17
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** @SCB, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  store i64 ptrtoint (i32* @g_pfnVectors to i64), i64* %28, align 8
  %29 = load i32, i32* @RCC_AHB1ENR_GPIOAEN, align 4
  %30 = load i32, i32* @RCC_AHB1ENR_GPIOBEN, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @RCC_AHB1ENR_GPIOCEN, align 4
  %33 = or i32 %31, %32
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** @RCC, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** @GPIOA, align 8
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i32 0, i32 2
  store i64 0, i64* %37, align 8
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** @GPIOB, align 8
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 2
  store i64 0, i64* %39, align 8
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** @GPIOC, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 2
  store i64 0, i64* %41, align 8
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** @GPIOA, align 8
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i32 0, i32 1
  store i64 0, i64* %43, align 8
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** @GPIOB, align 8
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 1
  store i64 0, i64* %45, align 8
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** @GPIOC, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 1
  store i64 0, i64* %47, align 8
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** @GPIOA, align 8
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 0
  store i64 0, i64* %49, align 8
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** @GPIOB, align 8
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 0
  store i64 0, i64* %51, align 8
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** @GPIOC, align 8
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 0
  store i64 0, i64* %53, align 8
  %54 = call i32 (...) @detect_configuration()
  %55 = call i32 (...) @detect_board_type()
  %56 = load i64, i64* @enter_bootloader_mode, align 8
  %57 = load i64, i64* @ENTER_BOOTLOADER_MAGIC, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %66

59:                                               ; preds = %26
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** @current_board, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  %62 = load i32 (i32, i32)*, i32 (i32, i32)** %61, align 8
  %63 = load i32, i32* @LED_GREEN, align 4
  %64 = call i32 %62(i32 %63, i32 1)
  %65 = call i32 (...) @jump_to_bootloader()
  br label %66

66:                                               ; preds = %59, %26
  %67 = load i64, i64* @is_entering_bootmode, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %66
  %70 = load i64, i64* @ENTER_SOFTLOADER_MAGIC, align 8
  store i64 %70, i64* @enter_bootloader_mode, align 8
  br label %71

71:                                               ; preds = %69, %66
  ret void
}

declare dso_local i32 @enable_interrupts(...) #1

declare dso_local i32 @NVIC_SystemReset(...) #1

declare dso_local i32 @detect_configuration(...) #1

declare dso_local i32 @detect_board_type(...) #1

declare dso_local i32 @jump_to_bootloader(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
