; ModuleID = '/home/carl/AnghaBench/micropython/ports/cc3200/extr_main.c_main.c'
source_filename = "/home/carl/AnghaBench/micropython/ports/cc3200/extr_main.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TASK_MicroPython = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"MicroPy\00", align 1
@MICROPY_TASK_STACK_LEN = common dso_local global i32 0, align 4
@MICROPY_TASK_PRIORITY = common dso_local global i32 0, align 4
@mpTaskStack = common dso_local global i32 0, align 4
@mpTaskTCB = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 section ".boot" {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  store i32 0, i32* %1, align 4
  %3 = call i32 (...) @HAL_SystemInit()
  %4 = call i32 (...) @pybwdt_init0()
  %5 = load i32, i32* @TASK_MicroPython, align 4
  %6 = load i32, i32* @MICROPY_TASK_STACK_LEN, align 4
  %7 = load i32, i32* @MICROPY_TASK_PRIORITY, align 4
  %8 = load i32, i32* @mpTaskStack, align 4
  %9 = call i32* @xTaskCreateStatic(i32 %5, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %6, i32* null, i32 %7, i32 %8, i32* @mpTaskTCB)
  store i32* %9, i32** %2, align 8
  %10 = load i32*, i32** %2, align 8
  %11 = icmp ne i32* %10, null
  %12 = zext i1 %11 to i32
  %13 = call i32 @ASSERT(i32 %12)
  %14 = call i32 (...) @osi_start()
  br label %15

15:                                               ; preds = %15, %0
  br label %15
}

declare dso_local i32 @HAL_SystemInit(...) #1

declare dso_local i32 @pybwdt_init0(...) #1

declare dso_local i32* @xTaskCreateStatic(i32, i8*, i32, i32*, i32, i32, i32*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @osi_start(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
