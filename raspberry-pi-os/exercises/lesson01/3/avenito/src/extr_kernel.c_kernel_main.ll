; ModuleID = '/home/carl/AnghaBench/raspberry-pi-os/exercises/lesson01/3/avenito/src/extr_kernel.c_kernel_main.c'
source_filename = "/home/carl/AnghaBench/raspberry-pi-os/exercises/lesson01/3/avenito/src/extr_kernel.c_kernel_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@processor = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [29 x i8] c"Hello, world! I am the Core \00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kernel_main(i8 signext %0) #0 {
  %2 = alloca i8, align 1
  store i8 %0, i8* %2, align 1
  br label %3

3:                                                ; preds = %9, %1
  %4 = load i8, i8* @processor, align 1
  %5 = sext i8 %4 to i32
  %6 = load i8, i8* %2, align 1
  %7 = sext i8 %6 to i32
  %8 = icmp ne i32 %5, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %3
  br label %3

10:                                               ; preds = %3
  %11 = load i8, i8* %2, align 1
  %12 = sext i8 %11 to i32
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %10
  %15 = call i32 (...) @uart_init()
  br label %16

16:                                               ; preds = %14, %10
  %17 = call i32 @uart_send_string(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %18 = load i8, i8* %2, align 1
  %19 = sext i8 %18 to i32
  %20 = add nsw i32 %19, 48
  %21 = trunc i32 %20 to i8
  %22 = call i32 @uart_send(i8 signext %21)
  %23 = call i32 @uart_send_string(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %24 = load i8, i8* @processor, align 1
  %25 = add i8 %24, 1
  store i8 %25, i8* @processor, align 1
  %26 = load i8, i8* %2, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %16
  br label %30

30:                                               ; preds = %29, %30
  %31 = call signext i8 (...) @uart_recv()
  %32 = call i32 @uart_send(i8 signext %31)
  br label %30

33:                                               ; preds = %16
  br label %34

34:                                               ; preds = %33, %34
  br label %34
}

declare dso_local i32 @uart_init(...) #1

declare dso_local i32 @uart_send_string(i8*) #1

declare dso_local i32 @uart_send(i8 signext) #1

declare dso_local signext i8 @uart_recv(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
