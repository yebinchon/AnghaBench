; ModuleID = '/home/carl/AnghaBench/qmk_firmware/tmk_core/protocol/extr_ps2_busywait.c_ps2_host_send.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/tmk_core/protocol/extr_ps2_busywait.c_ps2_host_send.c"
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
  %7 = call i32 (...) @inhibit()
  %8 = call i32 @wait_us(i32 100)
  %9 = call i32 (...) @data_lo()
  %10 = call i32 (...) @clock_hi()
  %11 = call i32 @WAIT(i32 (...)* @clock_lo, i32 10000, i32 10)
  store i32 0, i32* %5, align 4
  br label %12

12:                                               ; preds = %33, %1
  %13 = load i32, i32* %5, align 4
  %14 = icmp slt i32 %13, 8
  br i1 %14, label %15, label %36

15:                                               ; preds = %12
  %16 = call i32 @wait_us(i32 15)
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* %5, align 4
  %19 = shl i32 1, %18
  %20 = and i32 %17, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %15
  %23 = load i32, i32* %4, align 4
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  store i32 %26, i32* %4, align 4
  %27 = call i32 (...) @data_hi()
  br label %30

28:                                               ; preds = %15
  %29 = call i32 (...) @data_lo()
  br label %30

30:                                               ; preds = %28, %22
  %31 = call i32 @WAIT(i32 (...)* @clock_hi, i32 50, i32 2)
  %32 = call i32 @WAIT(i32 (...)* @clock_lo, i32 50, i32 3)
  br label %33

33:                                               ; preds = %30
  %34 = load i32, i32* %5, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %5, align 4
  br label %12

36:                                               ; preds = %12
  %37 = call i32 @wait_us(i32 15)
  %38 = load i32, i32* %4, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %36
  %41 = call i32 (...) @data_hi()
  br label %44

42:                                               ; preds = %36
  %43 = call i32 (...) @data_lo()
  br label %44

44:                                               ; preds = %42, %40
  %45 = call i32 @WAIT(i32 (...)* @clock_hi, i32 50, i32 4)
  %46 = call i32 @WAIT(i32 (...)* @clock_lo, i32 50, i32 5)
  %47 = call i32 @wait_us(i32 15)
  %48 = call i32 (...) @data_hi()
  %49 = call i32 @WAIT(i32 (...)* @data_lo, i32 50, i32 6)
  %50 = call i32 @WAIT(i32 (...)* @clock_lo, i32 50, i32 7)
  %51 = call i32 @WAIT(i32 (...)* @clock_hi, i32 50, i32 8)
  %52 = call i32 @WAIT(i32 (...)* @data_hi, i32 50, i32 9)
  %53 = call i32 (...) @inhibit()
  %54 = call i32 (...) @ps2_host_recv_response()
  store i32 %54, i32* %2, align 4
  br label %57

55:                                               ; No predecessors!
  %56 = call i32 (...) @inhibit()
  store i32 0, i32* %2, align 4
  br label %57

57:                                               ; preds = %55, %44
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local i32 @inhibit(...) #1

declare dso_local i32 @wait_us(i32) #1

declare dso_local i32 @data_lo(...) #1

declare dso_local i32 @clock_hi(...) #1

declare dso_local i32 @WAIT(i32 (...)*, i32, i32) #1

declare dso_local i32 @clock_lo(...) #1

declare dso_local i32 @data_hi(...) #1

declare dso_local i32 @ps2_host_recv_response(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
