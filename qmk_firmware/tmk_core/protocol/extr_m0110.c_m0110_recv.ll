; ModuleID = '/home/carl/AnghaBench/qmk_firmware/tmk_core/protocol/extr_m0110.c_m0110_recv.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/tmk_core/protocol/extr_m0110.c_m0110_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@m0110_error = common dso_local global i64 0, align 8
@clock_lo = common dso_local global i32 0, align 4
@clock_hi = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"m0110_recv err: \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @m0110_recv() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  store i64 0, i64* @m0110_error, align 8
  %4 = load i32, i32* @clock_lo, align 4
  %5 = call i32 @WAIT_MS(i32 %4, i32 250, i32 1)
  store i32 0, i32* %3, align 4
  br label %6

6:                                                ; preds = %22, %0
  %7 = load i32, i32* %3, align 4
  %8 = icmp slt i32 %7, 8
  br i1 %8, label %9, label %25

9:                                                ; preds = %6
  %10 = load i32, i32* %2, align 4
  %11 = shl i32 %10, 1
  store i32 %11, i32* %2, align 4
  %12 = load i32, i32* @clock_lo, align 4
  %13 = call i32 @WAIT_US(i32 %12, i32 200, i32 2)
  %14 = load i32, i32* @clock_hi, align 4
  %15 = call i32 @WAIT_US(i32 %14, i32 200, i32 3)
  %16 = call i64 (...) @data_in()
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %9
  %19 = load i32, i32* %2, align 4
  %20 = or i32 %19, 1
  store i32 %20, i32* %2, align 4
  br label %21

21:                                               ; preds = %18, %9
  br label %22

22:                                               ; preds = %21
  %23 = load i32, i32* %3, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %3, align 4
  br label %6

25:                                               ; preds = %6
  %26 = call i32 (...) @idle()
  %27 = load i32, i32* %2, align 4
  store i32 %27, i32* %1, align 4
  br label %35

28:                                               ; No predecessors!
  %29 = call i32 @print(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %30 = load i64, i64* @m0110_error, align 8
  %31 = call i32 @phex(i64 %30)
  %32 = call i32 @print(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %33 = call i32 @_delay_ms(i32 500)
  %34 = call i32 (...) @idle()
  store i32 255, i32* %1, align 4
  br label %35

35:                                               ; preds = %28, %25
  %36 = load i32, i32* %1, align 4
  ret i32 %36
}

declare dso_local i32 @WAIT_MS(i32, i32, i32) #1

declare dso_local i32 @WAIT_US(i32, i32, i32) #1

declare dso_local i64 @data_in(...) #1

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
