; ModuleID = '/home/carl/AnghaBench/raspberry-pi-os/exercises/lesson01/3/rs/src/extr_kernel.c_kernel_main.c'
source_filename = "/home/carl/AnghaBench/raspberry-pi-os/exercises/lesson01/3/rs/src/extr_kernel.c_kernel_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cur_proc = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"Hello, from processor \00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kernel_main() #0 {
  %1 = alloca i64, align 8
  %2 = call i64 (...) @getmpid()
  store i64 %2, i64* %1, align 8
  %3 = load i64, i64* %1, align 8
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %0
  %6 = call i32 (...) @uart_init()
  br label %7

7:                                                ; preds = %5, %0
  br label %8

8:                                                ; preds = %12, %7
  %9 = load i64, i64* @cur_proc, align 8
  %10 = load i64, i64* %1, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %8
  br label %8

13:                                               ; preds = %8
  %14 = call i32 @uart_send_string(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %15 = load i64, i64* %1, align 8
  %16 = add i64 %15, 48
  %17 = call i32 @uart_send(i64 %16)
  %18 = call i32 @uart_send_string(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %19 = load i64, i64* @cur_proc, align 8
  %20 = add i64 %19, 1
  store i64 %20, i64* @cur_proc, align 8
  %21 = load i64, i64* %1, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %13
  br label %24

24:                                               ; preds = %27, %23
  %25 = load i64, i64* @cur_proc, align 8
  %26 = icmp ne i64 %25, 4
  br i1 %26, label %27, label %28

27:                                               ; preds = %24
  br label %24

28:                                               ; preds = %24
  br label %29

29:                                               ; preds = %28, %29
  %30 = call i64 (...) @uart_recv()
  %31 = call i32 @uart_send(i64 %30)
  br label %29

32:                                               ; preds = %13
  ret void
}

declare dso_local i64 @getmpid(...) #1

declare dso_local i32 @uart_init(...) #1

declare dso_local i32 @uart_send_string(i8*) #1

declare dso_local i32 @uart_send(i64) #1

declare dso_local i64 @uart_recv(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
