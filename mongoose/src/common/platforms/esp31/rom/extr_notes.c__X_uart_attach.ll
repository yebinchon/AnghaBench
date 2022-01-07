; ModuleID = '/home/carl/AnghaBench/mongoose/src/common/platforms/esp31/rom/extr_notes.c__X_uart_attach.c'
source_filename = "/home/carl/AnghaBench/mongoose/src/common/platforms/esp31/rom/extr_notes.c__X_uart_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@uartdev = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@ETS_UART_INUM = common dso_local global i32 0, align 4
@uart_int_handler = common dso_local global i32 0, align 4
@_c_0x3fffdb2c_uart_int_handler_arg = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_X_uart_attach() #0 {
  store i32 115200, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @uartdev, i32 0, i32 0), align 4
  %1 = load i32, i32* @ETS_UART_INUM, align 4
  %2 = shl i32 1, %1
  %3 = call i32 @_X_xtos_ints_off(i32 %2)
  %4 = load i32, i32* @ETS_UART_INUM, align 4
  %5 = load i32, i32* @uart_int_handler, align 4
  %6 = load i32, i32* @_c_0x3fffdb2c_uart_int_handler_arg, align 4
  %7 = call i32 @_xtos_set_interrupt_handler_arg(i32 %4, i32 %5, i32 %6)
  ret void
}

declare dso_local i32 @_X_xtos_ints_off(i32) #1

declare dso_local i32 @_xtos_set_interrupt_handler_arg(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
