; ModuleID = '/home/carl/AnghaBench/micropython/ports/stm32/extr_extint.c_extint_init0.c'
source_filename = "/home/carl/AnghaBench/micropython/ports/stm32/extr_extint.c_extint_init0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PYB_EXTI_NUM_VECTORS = common dso_local global i32 0, align 4
@pyb_extint_callback = common dso_local global i32 0, align 4
@MP_OBJ_SENTINEL = common dso_local global i64 0, align 8
@mp_const_none = common dso_local global i64 0, align 8
@EXTI_Mode_Interrupt = common dso_local global i32 0, align 4
@pyb_extint_mode = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @extint_init0() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  br label %2

2:                                                ; preds = %28, %0
  %3 = load i32, i32* %1, align 4
  %4 = load i32, i32* @PYB_EXTI_NUM_VECTORS, align 4
  %5 = icmp slt i32 %3, %4
  br i1 %5, label %6, label %31

6:                                                ; preds = %2
  %7 = load i32, i32* @pyb_extint_callback, align 4
  %8 = call i64* @MP_STATE_PORT(i32 %7)
  %9 = load i32, i32* %1, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds i64, i64* %8, i64 %10
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @MP_OBJ_SENTINEL, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %6
  br label %28

16:                                               ; preds = %6
  %17 = load i64, i64* @mp_const_none, align 8
  %18 = load i32, i32* @pyb_extint_callback, align 4
  %19 = call i64* @MP_STATE_PORT(i32 %18)
  %20 = load i32, i32* %1, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i64, i64* %19, i64 %21
  store i64 %17, i64* %22, align 8
  %23 = load i32, i32* @EXTI_Mode_Interrupt, align 4
  %24 = load i32*, i32** @pyb_extint_mode, align 8
  %25 = load i32, i32* %1, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  store i32 %23, i32* %27, align 4
  br label %28

28:                                               ; preds = %16, %15
  %29 = load i32, i32* %1, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %1, align 4
  br label %2

31:                                               ; preds = %2
  ret void
}

declare dso_local i64* @MP_STATE_PORT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
