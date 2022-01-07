; ModuleID = '/home/carl/AnghaBench/qmk_firmware/tmk_core/protocol/extr_m0110.c_m0110_send.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/tmk_core/protocol/extr_m0110.c_m0110_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@m0110_error = common dso_local global i64 0, align 8
@clock_lo = common dso_local global i32 0, align 4
@clock_hi = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"m0110_send err: \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @m0110_send(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i64 0, i64* @m0110_error, align 8
  %5 = call i32 (...) @request()
  %6 = load i32, i32* @clock_lo, align 4
  %7 = call i32 @WAIT_MS(i32 %6, i32 250, i32 1)
  store i32 128, i32* %4, align 4
  br label %8

8:                                                ; preds = %25, %1
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %28

11:                                               ; preds = %8
  %12 = load i32, i32* @clock_lo, align 4
  %13 = call i32 @WAIT_US(i32 %12, i32 250, i32 3)
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* %4, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %11
  %19 = call i32 (...) @data_hi()
  br label %22

20:                                               ; preds = %11
  %21 = call i32 (...) @data_lo()
  br label %22

22:                                               ; preds = %20, %18
  %23 = load i32, i32* @clock_hi, align 4
  %24 = call i32 @WAIT_US(i32 %23, i32 200, i32 4)
  br label %25

25:                                               ; preds = %22
  %26 = load i32, i32* %4, align 4
  %27 = ashr i32 %26, 1
  store i32 %27, i32* %4, align 4
  br label %8

28:                                               ; preds = %8
  %29 = call i32 @_delay_us(i32 100)
  %30 = call i32 (...) @idle()
  store i32 1, i32* %2, align 4
  br label %38

31:                                               ; No predecessors!
  %32 = call i32 @print(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %33 = load i64, i64* @m0110_error, align 8
  %34 = call i32 @phex(i64 %33)
  %35 = call i32 @print(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %36 = call i32 @_delay_ms(i32 500)
  %37 = call i32 (...) @idle()
  store i32 0, i32* %2, align 4
  br label %38

38:                                               ; preds = %31, %28
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local i32 @request(...) #1

declare dso_local i32 @WAIT_MS(i32, i32, i32) #1

declare dso_local i32 @WAIT_US(i32, i32, i32) #1

declare dso_local i32 @data_hi(...) #1

declare dso_local i32 @data_lo(...) #1

declare dso_local i32 @_delay_us(i32) #1

declare dso_local i32 @idle(...) #1

declare dso_local i32 @print(i8*) #1

declare dso_local i32 @phex(i64) #1

declare dso_local i32 @_delay_ms(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
