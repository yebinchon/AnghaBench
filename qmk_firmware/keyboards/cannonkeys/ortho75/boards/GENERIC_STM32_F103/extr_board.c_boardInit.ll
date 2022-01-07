; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/cannonkeys/ortho75/boards/GENERIC_STM32_F103/extr_board.c_boardInit.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/cannonkeys/ortho75/boards/GENERIC_STM32_F103/extr_board.c_boardInit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@AFIO_MAPR_SWJ_CFG_JTAGDISABLE = common dso_local global i32 0, align 4
@AFIO = common dso_local global %struct.TYPE_4__* null, align 8
@RTC_BOOTLOADER_FLAG = common dso_local global i32 0, align 4
@BKP = common dso_local global %struct.TYPE_3__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @boardInit() #0 {
  %1 = load i32, i32* @AFIO_MAPR_SWJ_CFG_JTAGDISABLE, align 4
  %2 = load %struct.TYPE_4__*, %struct.TYPE_4__** @AFIO, align 8
  %3 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 0
  %4 = load i32, i32* %3, align 4
  %5 = or i32 %4, %1
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* @RTC_BOOTLOADER_FLAG, align 4
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** @BKP, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  store i32 %6, i32* %8, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
