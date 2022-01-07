; ModuleID = '/home/carl/AnghaBench/raspberry-pi-os/exercises/lesson01/3/adkaster/src/extr_kernel.c_kernel_main.c'
source_filename = "/home/carl/AnghaBench/raspberry-pi-os/exercises/lesson01/3/adkaster/src/extr_kernel.c_kernel_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [22 x i8] c"Hello from processor \00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kernel_main(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca [2 x i8], align 1
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = add nsw i32 %4, 48
  %6 = trunc i32 %5 to i8
  %7 = getelementptr inbounds [2 x i8], [2 x i8]* %3, i64 0, i64 0
  store i8 %6, i8* %7, align 1
  %8 = getelementptr inbounds [2 x i8], [2 x i8]* %3, i64 0, i64 1
  store i8 0, i8* %8, align 1
  %9 = load i32, i32* %2, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = call i32 (...) @uart_init()
  br label %17

13:                                               ; preds = %1
  %14 = load i32, i32* %2, align 4
  %15 = mul nsw i32 100000, %14
  %16 = call i32 @delay(i32 %15)
  br label %17

17:                                               ; preds = %13, %11
  %18 = call i32 @uart_send_string(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %19 = getelementptr inbounds [2 x i8], [2 x i8]* %3, i64 0, i64 0
  %20 = call i32 @uart_send_string(i8* %19)
  %21 = call i32 @uart_send_string(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %22 = load i32, i32* %2, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %17
  br label %25

25:                                               ; preds = %24, %25
  %26 = call i32 (...) @uart_recv()
  %27 = call i32 @uart_send(i32 %26)
  br label %25

28:                                               ; preds = %17
  br label %29

29:                                               ; preds = %28, %29
  br label %29
}

declare dso_local i32 @uart_init(...) #1

declare dso_local i32 @delay(i32) #1

declare dso_local i32 @uart_send_string(i8*) #1

declare dso_local i32 @uart_send(i32) #1

declare dso_local i32 @uart_recv(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
