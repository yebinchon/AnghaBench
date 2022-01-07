; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/cannonkeys/satisfaction75/extr_satisfaction75.c_encoder_update_kb.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/cannonkeys/satisfaction75/extr_satisfaction75.c_encoder_update_kb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@encoder_value = common dso_local global i32 0, align 4
@queue_for_send = common dso_local global i32 0, align 4
@layer = common dso_local global i64 0, align 8
@MEDIA_KEY_DELAY = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @encoder_update_kb(i64 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* @encoder_value, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  %10 = zext i1 %9 to i64
  %11 = select i1 %9, i32 1, i32 -1
  %12 = add nsw i32 %7, %11
  %13 = srem i32 %12, 64
  store i32 %13, i32* @encoder_value, align 4
  store i32 1, i32* @queue_for_send, align 4
  %14 = load i64, i64* %3, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %52

16:                                               ; preds = %2
  %17 = load i64, i64* @layer, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %43

19:                                               ; preds = %16
  store i64 0, i64* %5, align 8
  %20 = load i32, i32* %4, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  %23 = call i64 (...) @handle_encoder_clockwise()
  store i64 %23, i64* %5, align 8
  br label %26

24:                                               ; preds = %19
  %25 = call i64 (...) @handle_encoder_ccw()
  store i64 %25, i64* %5, align 8
  br label %26

26:                                               ; preds = %24, %22
  %27 = call i64 (...) @timer_read()
  store i64 %27, i64* %6, align 8
  %28 = load i64, i64* %5, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %42

30:                                               ; preds = %26
  %31 = load i64, i64* %5, align 8
  %32 = call i32 @register_code16(i64 %31)
  br label %33

33:                                               ; preds = %38, %30
  %34 = load i64, i64* %6, align 8
  %35 = call i64 @timer_elapsed(i64 %34)
  %36 = load i64, i64* @MEDIA_KEY_DELAY, align 8
  %37 = icmp slt i64 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  br label %33

39:                                               ; preds = %33
  %40 = load i64, i64* %5, align 8
  %41 = call i32 @unregister_code16(i64 %40)
  br label %42

42:                                               ; preds = %39, %26
  br label %51

43:                                               ; preds = %16
  %44 = load i32, i32* %4, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %43
  %47 = call i32 @change_encoder_mode(i32 0)
  br label %50

48:                                               ; preds = %43
  %49 = call i32 @change_encoder_mode(i32 1)
  br label %50

50:                                               ; preds = %48, %46
  br label %51

51:                                               ; preds = %50, %42
  br label %52

52:                                               ; preds = %51, %2
  ret void
}

declare dso_local i64 @handle_encoder_clockwise(...) #1

declare dso_local i64 @handle_encoder_ccw(...) #1

declare dso_local i64 @timer_read(...) #1

declare dso_local i32 @register_code16(i64) #1

declare dso_local i64 @timer_elapsed(i64) #1

declare dso_local i32 @unregister_code16(i64) #1

declare dso_local i32 @change_encoder_mode(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
