; ModuleID = '/home/carl/AnghaBench/micropython/ports/esp8266/extr_machine_pin.c_pin_intr_handler.c'
source_filename = "/home/carl/AnghaBench/micropython/ports/esp8266/extr_machine_pin.c_pin_intr_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@pin_irq_handler = common dso_local global i32 0, align 4
@MP_OBJ_NULL = common dso_local global i64 0, align 8
@pin_irq_is_hard = common dso_local global i64* null, align 8
@pyb_pin_obj = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pin_intr_handler(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %5 = call i32 (...) @mp_sched_lock()
  %6 = call i32 (...) @gc_lock()
  %7 = load i32, i32* %2, align 4
  %8 = and i32 %7, 65535
  store i32 %8, i32* %2, align 4
  store i32 0, i32* %3, align 4
  br label %9

9:                                                ; preds = %52, %1
  %10 = load i32, i32* %2, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %57

12:                                               ; preds = %9
  %13 = load i32, i32* %2, align 4
  %14 = and i32 %13, 1
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %51

16:                                               ; preds = %12
  %17 = load i32, i32* @pin_irq_handler, align 4
  %18 = call i64* @MP_STATE_PORT(i32 %17)
  %19 = load i32, i32* %3, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i64, i64* %18, i64 %20
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %4, align 8
  %23 = load i64, i64* %4, align 8
  %24 = load i64, i64* @MP_OBJ_NULL, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %50

26:                                               ; preds = %16
  %27 = load i64*, i64** @pin_irq_is_hard, align 8
  %28 = load i32, i32* %3, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i64, i64* %27, i64 %29
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %26
  %34 = load i64, i64* %4, align 8
  %35 = load i32*, i32** @pyb_pin_obj, align 8
  %36 = load i32, i32* %3, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = call i32 @MP_OBJ_FROM_PTR(i32* %38)
  %40 = call i32 @mp_call_function_1_protected(i64 %34, i32 %39)
  br label %49

41:                                               ; preds = %26
  %42 = load i64, i64* %4, align 8
  %43 = load i32*, i32** @pyb_pin_obj, align 8
  %44 = load i32, i32* %3, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = call i32 @MP_OBJ_FROM_PTR(i32* %46)
  %48 = call i32 @mp_sched_schedule(i64 %42, i32 %47)
  br label %49

49:                                               ; preds = %41, %33
  br label %50

50:                                               ; preds = %49, %16
  br label %51

51:                                               ; preds = %50, %12
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %3, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %3, align 4
  %55 = load i32, i32* %2, align 4
  %56 = ashr i32 %55, 1
  store i32 %56, i32* %2, align 4
  br label %9

57:                                               ; preds = %9
  %58 = call i32 (...) @gc_unlock()
  %59 = call i32 (...) @mp_sched_unlock()
  ret void
}

declare dso_local i32 @mp_sched_lock(...) #1

declare dso_local i32 @gc_lock(...) #1

declare dso_local i64* @MP_STATE_PORT(i32) #1

declare dso_local i32 @mp_call_function_1_protected(i64, i32) #1

declare dso_local i32 @MP_OBJ_FROM_PTR(i32*) #1

declare dso_local i32 @mp_sched_schedule(i64, i32) #1

declare dso_local i32 @gc_unlock(...) #1

declare dso_local i32 @mp_sched_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
