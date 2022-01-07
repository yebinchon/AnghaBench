; ModuleID = '/home/carl/AnghaBench/raspberry-pi-os/exercises/lesson01/3/gcrisis/src/extr_kernel.c_kernel_main.c'
source_filename = "/home/carl/AnghaBench/raspberry-pi-os/exercises/lesson01/3/gcrisis/src/extr_kernel.c_kernel_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@is_uart_inited = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Hello, world! From processor <\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c">\0D\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kernel_main(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = icmp eq i32 0, %3
  br i1 %4, label %5, label %11

5:                                                ; preds = %1
  %6 = call i32 @uart_init(i32 115200)
  store i32 1, i32* @is_uart_inited, align 4
  %7 = load i32, i32* %2, align 4
  %8 = add nsw i32 %7, 48
  %9 = call i32 @uart_send(i32 %8)
  %10 = call i32 @uart_send_string(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  br label %11

11:                                               ; preds = %5, %1
  br label %12

12:                                               ; preds = %16, %11
  %13 = load i32, i32* @is_uart_inited, align 4
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  br label %12

17:                                               ; preds = %12
  %18 = load i32, i32* %2, align 4
  %19 = mul nsw i32 %18, 200000
  %20 = call i32 @delay(i32 %19)
  %21 = call i32 @uart_send_string(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %22 = load i32, i32* %2, align 4
  %23 = add nsw i32 %22, 48
  %24 = call i32 @uart_send(i32 %23)
  %25 = call i32 @uart_send_string(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %26 = load i32, i32* %2, align 4
  %27 = icmp eq i32 0, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %17
  br label %29

29:                                               ; preds = %28, %29
  %30 = call i32 (...) @uart_recv()
  %31 = call i32 @uart_send(i32 %30)
  br label %29

32:                                               ; preds = %17
  br label %33

33:                                               ; preds = %32, %33
  br label %33
}

declare dso_local i32 @uart_init(i32) #1

declare dso_local i32 @uart_send(i32) #1

declare dso_local i32 @uart_send_string(i8*) #1

declare dso_local i32 @delay(i32) #1

declare dso_local i32 @uart_recv(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
