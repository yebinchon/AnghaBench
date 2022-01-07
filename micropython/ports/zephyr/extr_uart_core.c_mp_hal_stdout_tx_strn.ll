; ModuleID = '/home/carl/AnghaBench/micropython/ports/zephyr/extr_uart_core.c_mp_hal_stdout_tx_strn.c'
source_filename = "/home/carl/AnghaBench/micropython/ports/zephyr/extr_uart_core.c_mp_hal_stdout_tx_strn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }

@mp_hal_stdout_tx_strn.uart_console_dev = internal global %struct.device* null, align 8
@CONFIG_UART_CONSOLE_ON_DEV_NAME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mp_hal_stdout_tx_strn(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.device*, %struct.device** @mp_hal_stdout_tx_strn.uart_console_dev, align 8
  %6 = icmp eq %struct.device* %5, null
  br i1 %6, label %7, label %10

7:                                                ; preds = %2
  %8 = load i32, i32* @CONFIG_UART_CONSOLE_ON_DEV_NAME, align 4
  %9 = call %struct.device* @device_get_binding(i32 %8)
  store %struct.device* %9, %struct.device** @mp_hal_stdout_tx_strn.uart_console_dev, align 8
  br label %10

10:                                               ; preds = %7, %2
  br label %11

11:                                               ; preds = %15, %10
  %12 = load i32, i32* %4, align 4
  %13 = add nsw i32 %12, -1
  store i32 %13, i32* %4, align 4
  %14 = icmp ne i32 %12, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %11
  %16 = load %struct.device*, %struct.device** @mp_hal_stdout_tx_strn.uart_console_dev, align 8
  %17 = load i8*, i8** %3, align 8
  %18 = getelementptr inbounds i8, i8* %17, i32 1
  store i8* %18, i8** %3, align 8
  %19 = load i8, i8* %17, align 1
  %20 = sext i8 %19 to i32
  %21 = call i32 @uart_poll_out(%struct.device* %16, i32 %20)
  br label %11

22:                                               ; preds = %11
  ret void
}

declare dso_local %struct.device* @device_get_binding(i32) #1

declare dso_local i32 @uart_poll_out(%struct.device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
