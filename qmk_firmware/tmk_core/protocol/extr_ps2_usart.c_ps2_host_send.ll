; ModuleID = '/home/carl/AnghaBench/qmk_firmware/tmk_core/protocol/extr_ps2_usart.c_ps2_host_send.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/tmk_core/protocol/extr_ps2_usart.c_ps2_host_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PS2_ERR_NONE = common dso_local global i32 0, align 4
@ps2_error = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ps2_host_send(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 1, i32* %4, align 4
  %6 = load i32, i32* @PS2_ERR_NONE, align 4
  store i32 %6, i32* @ps2_error, align 4
  %7 = call i32 (...) @PS2_USART_OFF()
  %8 = call i32 (...) @inhibit()
  %9 = call i32 @_delay_us(i32 100)
  %10 = call i32 (...) @data_lo()
  %11 = call i32 (...) @clock_hi()
  %12 = call i32 @WAIT(i32 (...)* @clock_lo, i32 10000, i32 10)
  store i32 0, i32* %5, align 4
  br label %13

13:                                               ; preds = %34, %1
  %14 = load i32, i32* %5, align 4
  %15 = icmp slt i32 %14, 8
  br i1 %15, label %16, label %37

16:                                               ; preds = %13
  %17 = call i32 @_delay_us(i32 15)
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* %5, align 4
  %20 = shl i32 1, %19
  %21 = and i32 %18, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %16
  %24 = load i32, i32* %4, align 4
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  store i32 %27, i32* %4, align 4
  %28 = call i32 (...) @data_hi()
  br label %31

29:                                               ; preds = %16
  %30 = call i32 (...) @data_lo()
  br label %31

31:                                               ; preds = %29, %23
  %32 = call i32 @WAIT(i32 (...)* @clock_hi, i32 50, i32 2)
  %33 = call i32 @WAIT(i32 (...)* @clock_lo, i32 50, i32 3)
  br label %34

34:                                               ; preds = %31
  %35 = load i32, i32* %5, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %5, align 4
  br label %13

37:                                               ; preds = %13
  %38 = call i32 @_delay_us(i32 15)
  %39 = load i32, i32* %4, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %37
  %42 = call i32 (...) @data_hi()
  br label %45

43:                                               ; preds = %37
  %44 = call i32 (...) @data_lo()
  br label %45

45:                                               ; preds = %43, %41
  %46 = call i32 @WAIT(i32 (...)* @clock_hi, i32 50, i32 4)
  %47 = call i32 @WAIT(i32 (...)* @clock_lo, i32 50, i32 5)
  %48 = call i32 @_delay_us(i32 15)
  %49 = call i32 (...) @data_hi()
  %50 = call i32 @WAIT(i32 (...)* @data_lo, i32 50, i32 6)
  %51 = call i32 @WAIT(i32 (...)* @clock_lo, i32 50, i32 7)
  %52 = call i32 @WAIT(i32 (...)* @clock_hi, i32 50, i32 8)
  %53 = call i32 @WAIT(i32 (...)* @data_hi, i32 50, i32 9)
  %54 = call i32 (...) @idle()
  %55 = call i32 (...) @PS2_USART_INIT()
  %56 = call i32 (...) @PS2_USART_RX_INT_ON()
  %57 = call i32 (...) @ps2_host_recv_response()
  store i32 %57, i32* %2, align 4
  br label %62

58:                                               ; No predecessors!
  %59 = call i32 (...) @idle()
  %60 = call i32 (...) @PS2_USART_INIT()
  %61 = call i32 (...) @PS2_USART_RX_INT_ON()
  store i32 0, i32* %2, align 4
  br label %62

62:                                               ; preds = %58, %45
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local i32 @PS2_USART_OFF(...) #1

declare dso_local i32 @inhibit(...) #1

declare dso_local i32 @_delay_us(i32) #1

declare dso_local i32 @data_lo(...) #1

declare dso_local i32 @clock_hi(...) #1

declare dso_local i32 @WAIT(i32 (...)*, i32, i32) #1

declare dso_local i32 @clock_lo(...) #1

declare dso_local i32 @data_hi(...) #1

declare dso_local i32 @idle(...) #1

declare dso_local i32 @PS2_USART_INIT(...) #1

declare dso_local i32 @PS2_USART_RX_INT_ON(...) #1

declare dso_local i32 @ps2_host_recv_response(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
