; ModuleID = '/home/carl/AnghaBench/raspberry-pi-os/exercises/lesson01/3/zjd0112/src/extr_kernel.c_kernel_main.c'
source_filename = "/home/carl/AnghaBench/raspberry-pi-os/exercises/lesson01/3/zjd0112/src/extr_kernel.c_kernel_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@semaphore = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Hello, world from processor \00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kernel_main(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = call i32 (...) @pl011_uart_init()
  br label %7

7:                                                ; preds = %5, %1
  br label %8

8:                                                ; preds = %12, %7
  %9 = load i32, i32* @semaphore, align 4
  %10 = load i32, i32* %2, align 4
  %11 = icmp ne i32 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %8
  br label %8

13:                                               ; preds = %8
  %14 = call i32 @pl011_uart_send_string(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %15 = load i32, i32* %2, align 4
  %16 = add i32 %15, 48
  %17 = trunc i32 %16 to i8
  %18 = call i32 @pl011_uart_send(i8 signext %17)
  %19 = call i32 @pl011_uart_send_string(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %20 = load i32, i32* @semaphore, align 4
  %21 = add i32 %20, 1
  store i32 %21, i32* @semaphore, align 4
  %22 = load i32, i32* %2, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %13
  br label %25

25:                                               ; preds = %24, %25
  %26 = call signext i8 (...) @pl011_uart_recv()
  %27 = call i32 @pl011_uart_send(i8 signext %26)
  br label %25

28:                                               ; preds = %13
  ret void
}

declare dso_local i32 @pl011_uart_init(...) #1

declare dso_local i32 @pl011_uart_send_string(i8*) #1

declare dso_local i32 @pl011_uart_send(i8 signext) #1

declare dso_local signext i8 @pl011_uart_recv(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
