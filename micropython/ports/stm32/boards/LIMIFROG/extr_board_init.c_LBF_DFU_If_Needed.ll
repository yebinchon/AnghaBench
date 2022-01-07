; ModuleID = '/home/carl/AnghaBench/micropython/ports/stm32/boards/LIMIFROG/extr_board_init.c_LBF_DFU_If_Needed.c'
source_filename = "/home/carl/AnghaBench/micropython/ports/stm32/boards/LIMIFROG/extr_board_init.c_LBF_DFU_If_Needed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }

@GPIO_MODE_OUTPUT_PP = common dso_local global i32 0, align 4
@GPIO_NOPULL = common dso_local global i32 0, align 4
@GPIO_SPEED_FREQ_LOW = common dso_local global i32 0, align 4
@BT_RST_PIN = common dso_local global i32 0, align 4
@BT_RST_PORT = common dso_local global i32 0, align 4
@GPIO_MODE_INPUT = common dso_local global i32 0, align 4
@GPIO_PULLUP = common dso_local global i32 0, align 4
@CONN_POS10_PIN = common dso_local global i32 0, align 4
@CONN_POS10_PORT = common dso_local global i32 0, align 4
@SYSCFG = common dso_local global %struct.TYPE_5__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @LBF_DFU_If_Needed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @LBF_DFU_If_Needed() #0 {
  %1 = alloca %struct.TYPE_4__, align 4
  %2 = call i32 (...) @__HAL_RCC_GPIOC_CLK_ENABLE()
  %3 = load i32, i32* @GPIO_MODE_OUTPUT_PP, align 4
  %4 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 2
  store i32 %3, i32* %4, align 4
  %5 = load i32, i32* @GPIO_NOPULL, align 4
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 1
  store i32 %5, i32* %6, align 4
  %7 = load i32, i32* @GPIO_SPEED_FREQ_LOW, align 4
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 3
  store i32 %7, i32* %8, align 4
  %9 = load i32, i32* @BT_RST_PIN, align 4
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 0
  store i32 %9, i32* %10, align 4
  %11 = load i32, i32* @BT_RST_PORT, align 4
  %12 = call i32 @HAL_GPIO_Init(i32 %11, %struct.TYPE_4__* %1)
  %13 = load i32, i32* @BT_RST_PORT, align 4
  %14 = load i32, i32* @BT_RST_PIN, align 4
  %15 = call i32 @GPIO_HIGH(i32 %13, i32 %14)
  %16 = call i32 (...) @__HAL_RCC_GPIOB_CLK_ENABLE()
  %17 = load i32, i32* @GPIO_MODE_INPUT, align 4
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 2
  store i32 %17, i32* %18, align 4
  %19 = load i32, i32* @GPIO_PULLUP, align 4
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 1
  store i32 %19, i32* %20, align 4
  %21 = load i32, i32* @CONN_POS10_PIN, align 4
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 0
  store i32 %21, i32* %22, align 4
  %23 = load i32, i32* @CONN_POS10_PORT, align 4
  %24 = call i32 @HAL_GPIO_Init(i32 %23, %struct.TYPE_4__* %1)
  %25 = load i32, i32* @CONN_POS10_PORT, align 4
  %26 = load i32, i32* @CONN_POS10_PIN, align 4
  %27 = call i64 @IS_GPIO_RESET(i32 %25, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %0
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** @SYSCFG, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  store i32 1, i32* %31, align 4
  call void asm sideeffect "LDR     R0, =0x00000000\0A\09LDR     SP,[R0, #0]\0A\09", "~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !2
  call void asm sideeffect "LDR     R0,[R0, #4]\0A\09BX      R0\0A\09", "~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !3
  br label %32

32:                                               ; preds = %29, %0
  ret void
}

declare dso_local i32 @__HAL_RCC_GPIOC_CLK_ENABLE(...) #1

declare dso_local i32 @HAL_GPIO_Init(i32, %struct.TYPE_4__*) #1

declare dso_local i32 @GPIO_HIGH(i32, i32) #1

declare dso_local i32 @__HAL_RCC_GPIOB_CLK_ENABLE(...) #1

declare dso_local i64 @IS_GPIO_RESET(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 1481, i32 1507, i32 1541}
!3 = !{i32 1577, i32 1599, i32 1624}
