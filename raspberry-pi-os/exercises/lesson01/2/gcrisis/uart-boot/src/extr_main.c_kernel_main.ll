; ModuleID = '/home/carl/AnghaBench/raspberry-pi-os/exercises/lesson01/2/gcrisis/uart-boot/src/extr_main.c_kernel_main.c'
source_filename = "/home/carl/AnghaBench/raspberry-pi-os/exercises/lesson01/2/gcrisis/uart-boot/src/extr_main.c_kernel_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"start\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kernel_main() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = call i32 @uart_init(i32 115200)
  br label %5

5:                                                ; preds = %0, %44
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8** %1, align 8
  %6 = load i8*, i8** %1, align 8
  %7 = call i32 @check_head(i8* %6, i32 5)
  %8 = call i32 (...) @uart_recv()
  store i32 %8, i32* %2, align 4
  %9 = call i32 (...) @uart_recv()
  %10 = shl i32 %9, 8
  %11 = load i32, i32* %2, align 4
  %12 = or i32 %11, %10
  store i32 %12, i32* %2, align 4
  %13 = call i32 (...) @uart_recv()
  %14 = shl i32 %13, 16
  %15 = load i32, i32* %2, align 4
  %16 = or i32 %15, %14
  store i32 %16, i32* %2, align 4
  %17 = call i32 (...) @uart_recv()
  %18 = shl i32 %17, 24
  %19 = load i32, i32* %2, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %2, align 4
  %21 = load i32, i32* %2, align 4
  %22 = ashr i32 %21, 24
  %23 = and i32 %22, 255
  %24 = call i32 @uart_send(i32 %23)
  %25 = load i32, i32* %2, align 4
  %26 = ashr i32 %25, 16
  %27 = and i32 %26, 255
  %28 = call i32 @uart_send(i32 %27)
  %29 = load i32, i32* %2, align 4
  %30 = ashr i32 %29, 8
  %31 = and i32 %30, 255
  %32 = call i32 @uart_send(i32 %31)
  %33 = load i32, i32* %2, align 4
  %34 = and i32 %33, 255
  %35 = call i32 @uart_send(i32 %34)
  store i32* null, i32** %3, align 8
  br label %36

36:                                               ; preds = %40, %5
  %37 = load i32, i32* %2, align 4
  %38 = add nsw i32 %37, -1
  store i32 %38, i32* %2, align 4
  %39 = icmp sgt i32 %37, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %36
  %41 = call i32 (...) @uart_recv()
  %42 = load i32*, i32** %3, align 8
  %43 = getelementptr inbounds i32, i32* %42, i32 1
  store i32* %43, i32** %3, align 8
  store i32 %41, i32* %42, align 4
  br label %36

44:                                               ; preds = %36
  %45 = call i32 @BRANCHTO(i32 0)
  br label %5
}

declare dso_local i32 @uart_init(i32) #1

declare dso_local i32 @check_head(i8*, i32) #1

declare dso_local i32 @uart_recv(...) #1

declare dso_local i32 @uart_send(i32) #1

declare dso_local i32 @BRANCHTO(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
