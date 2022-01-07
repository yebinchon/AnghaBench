; ModuleID = '/home/carl/AnghaBench/micropython/ports/cc3200/telnet/extr_telnet.c_telnet_send_with_retries.c'
source_filename = "/home/carl/AnghaBench/micropython/ports/cc3200/telnet/extr_telnet.c_telnet_send_with_retries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TELNET_WAIT_TIME_MS = common dso_local global i32 0, align 4
@HAL_NVIC_INT_CTRL_REG = common dso_local global i32 0, align 4
@HAL_VECTACTIVE_MASK = common dso_local global i32 0, align 4
@IRQ_STATE_ENABLED = common dso_local global i64 0, align 8
@SL_EAGAIN = common dso_local global i64 0, align 8
@TELNET_TX_RETRIES_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32)* @telnet_send_with_retries to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @telnet_send_with_retries(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i64 0, i64* %8, align 8
  %11 = load i32, i32* @TELNET_WAIT_TIME_MS, align 4
  store i32 %11, i32* %9, align 4
  %12 = load i32, i32* @HAL_NVIC_INT_CTRL_REG, align 4
  %13 = load i32, i32* @HAL_VECTACTIVE_MASK, align 4
  %14 = and i32 %12, %13
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %45

16:                                               ; preds = %3
  %17 = call i64 (...) @query_irq()
  %18 = load i64, i64* @IRQ_STATE_ENABLED, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %45

20:                                               ; preds = %16
  br label %21

21:                                               ; preds = %39, %20
  %22 = load i32, i32* %5, align 4
  %23 = load i8*, i8** %6, align 8
  %24 = load i32, i32* %7, align 4
  %25 = call i64 @sl_Send(i32 %22, i8* %23, i32 %24, i32 0)
  store i64 %25, i64* %10, align 8
  %26 = load i64, i64* %10, align 8
  %27 = icmp sgt i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %21
  store i32 1, i32* %4, align 4
  br label %46

29:                                               ; preds = %21
  %30 = load i64, i64* @SL_EAGAIN, align 8
  %31 = load i64, i64* %10, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  store i32 0, i32* %4, align 4
  br label %46

34:                                               ; preds = %29
  br label %35

35:                                               ; preds = %34
  %36 = load i32, i32* %9, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %9, align 4
  %38 = call i32 @mp_hal_delay_ms(i32 %36)
  br label %39

39:                                               ; preds = %35
  %40 = load i64, i64* %8, align 8
  %41 = add nsw i64 %40, 1
  store i64 %41, i64* %8, align 8
  %42 = load i64, i64* @TELNET_TX_RETRIES_MAX, align 8
  %43 = icmp sle i64 %41, %42
  br i1 %43, label %21, label %44

44:                                               ; preds = %39
  br label %45

45:                                               ; preds = %44, %16, %3
  store i32 0, i32* %4, align 4
  br label %46

46:                                               ; preds = %45, %33, %28
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local i64 @query_irq(...) #1

declare dso_local i64 @sl_Send(i32, i8*, i32, i32) #1

declare dso_local i32 @mp_hal_delay_ms(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
