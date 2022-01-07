; ModuleID = '/home/carl/AnghaBench/mongoose/examples/ESP8266_RTOS/user/extr_user_main.c_user_init.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/ESP8266_RTOS/user/extr_user_main.c_user_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@UART_CLK_FREQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"Free RAM: %d\0D\0A\00", align 1
@mg_task = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"mongoose\00", align 1
@MG_TASK_STACK_SIZE = common dso_local global i32 0, align 4
@MGOS_TASK_PRIORITY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @user_init() #0 {
  %1 = load i32, i32* @UART_CLK_FREQ, align 4
  %2 = sdiv i32 %1, 115200
  %3 = call i32 @uart_div_modify(i32 0, i32 %2)
  %4 = call i32 (...) @system_get_free_heap_size()
  %5 = call i32 @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %4)
  %6 = load i32, i32* @mg_task, align 4
  %7 = load i32, i32* @MG_TASK_STACK_SIZE, align 4
  %8 = sdiv i32 %7, 4
  %9 = load i32, i32* @MGOS_TASK_PRIORITY, align 4
  %10 = call i32 @xTaskCreate(i32 %6, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %8, i32* null, i32 %9, i32* null)
  ret void
}

declare dso_local i32 @uart_div_modify(i32, i32) #1

declare dso_local i32 @printf(i8*, i32) #1

declare dso_local i32 @system_get_free_heap_size(...) #1

declare dso_local i32 @xTaskCreate(i32, i8*, i32, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
