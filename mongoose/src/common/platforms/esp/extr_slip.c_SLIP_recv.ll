; ModuleID = '/home/carl/AnghaBench/mongoose/src/common/platforms/esp/extr_slip.c_SLIP_recv.c'
source_filename = "/home/carl/AnghaBench/mongoose/src/common/platforms/esp/extr_slip.c_SLIP_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @SLIP_recv(i8* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8, align 1
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 0, i64* %7, align 8
  %9 = load i8*, i8** %4, align 8
  store i8* %9, i8** %8, align 8
  br label %10

10:                                               ; preds = %12, %2
  %11 = call signext i8 (...) @uart_rx_one_char_block()
  store i8 %11, i8* %6, align 1
  br label %12

12:                                               ; preds = %10
  %13 = load i8, i8* %6, align 1
  %14 = sext i8 %13 to i32
  %15 = icmp ne i32 %14, -64
  br i1 %15, label %10, label %16

16:                                               ; preds = %12
  br label %17

17:                                               ; preds = %46, %16
  %18 = load i64, i64* %7, align 8
  %19 = load i64, i64* %5, align 8
  %20 = icmp slt i64 %18, %19
  br i1 %20, label %21, label %52

21:                                               ; preds = %17
  %22 = call signext i8 (...) @uart_rx_one_char_block()
  store i8 %22, i8* %6, align 1
  %23 = load i8, i8* %6, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %24, -64
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = load i64, i64* %7, align 8
  store i64 %27, i64* %3, align 8
  br label %61

28:                                               ; preds = %21
  %29 = load i8, i8* %6, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp eq i32 %30, -37
  br i1 %31, label %32, label %46

32:                                               ; preds = %28
  %33 = call signext i8 (...) @uart_rx_one_char_block()
  store i8 %33, i8* %6, align 1
  %34 = load i8, i8* %6, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp eq i32 %35, -36
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  store i8 -64, i8* %6, align 1
  br label %45

38:                                               ; preds = %32
  %39 = load i8, i8* %6, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp eq i32 %40, -35
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  store i8 -37, i8* %6, align 1
  br label %44

43:                                               ; preds = %38
  store i64 0, i64* %7, align 8
  br label %52

44:                                               ; preds = %42
  br label %45

45:                                               ; preds = %44, %37
  br label %46

46:                                               ; preds = %45, %28
  %47 = load i8, i8* %6, align 1
  %48 = load i8*, i8** %8, align 8
  %49 = getelementptr inbounds i8, i8* %48, i32 1
  store i8* %49, i8** %8, align 8
  store i8 %47, i8* %48, align 1
  %50 = load i64, i64* %7, align 8
  %51 = add nsw i64 %50, 1
  store i64 %51, i64* %7, align 8
  br label %17

52:                                               ; preds = %43, %17
  br label %53

53:                                               ; preds = %55, %52
  %54 = call signext i8 (...) @uart_rx_one_char_block()
  store i8 %54, i8* %6, align 1
  br label %55

55:                                               ; preds = %53
  %56 = load i8, i8* %6, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp ne i32 %57, -64
  br i1 %58, label %53, label %59

59:                                               ; preds = %55
  %60 = load i64, i64* %7, align 8
  store i64 %60, i64* %3, align 8
  br label %61

61:                                               ; preds = %59, %26
  %62 = load i64, i64* %3, align 8
  ret i64 %62
}

declare dso_local signext i8 @uart_rx_one_char_block(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
