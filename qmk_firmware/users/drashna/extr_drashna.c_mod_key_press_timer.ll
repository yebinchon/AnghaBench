; ModuleID = '/home/carl/AnghaBench/qmk_firmware/users/drashna/extr_drashna.c_mod_key_press_timer.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/users/drashna/extr_drashna.c_mod_key_press_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mod_key_press_timer.this_timer = internal global i32 0, align 4
@TAPPING_TERM = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mod_key_press_timer(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %3
  %10 = call i32 (...) @timer_read()
  store i32 %10, i32* @mod_key_press_timer.this_timer, align 4
  br label %27

11:                                               ; preds = %3
  %12 = load i32, i32* @mod_key_press_timer.this_timer, align 4
  %13 = call i64 @timer_elapsed(i32 %12)
  %14 = load i64, i64* @TAPPING_TERM, align 8
  %15 = icmp slt i64 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %11
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @tap_code(i32 %17)
  br label %26

19:                                               ; preds = %11
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @register_code(i32 %20)
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @tap_code(i32 %22)
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @unregister_code(i32 %24)
  br label %26

26:                                               ; preds = %19, %16
  br label %27

27:                                               ; preds = %26, %9
  ret i32 0
}

declare dso_local i32 @timer_read(...) #1

declare dso_local i64 @timer_elapsed(i32) #1

declare dso_local i32 @tap_code(i32) #1

declare dso_local i32 @register_code(i32) #1

declare dso_local i32 @unregister_code(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
