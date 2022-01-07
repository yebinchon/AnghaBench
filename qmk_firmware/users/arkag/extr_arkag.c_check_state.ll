; ModuleID = '/home/carl/AnghaBench/qmk_firmware/users/arkag/extr_arkag.c_check_state.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/users/arkag/extr_arkag.c_check_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@check_state.active_timer = internal global i64 0, align 8
@check_state.activated = internal global i32 0, align 4
@check_state.deactivated = internal global i32 0, align 4
@check_state.slept = internal global i32 0, align 4
@state = common dso_local global i32 0, align 4
@fade_interval = common dso_local global i32 0, align 4
@INACTIVE_DELAY = common dso_local global i32 0, align 4
@SLEEP_DELAY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @check_state() #0 {
  %1 = load i64, i64* @check_state.active_timer, align 8
  %2 = icmp ne i64 %1, 0
  br i1 %2, label %5, label %3

3:                                                ; preds = %0
  %4 = call i64 (...) @timer_read()
  store i64 %4, i64* @check_state.active_timer, align 8
  br label %5

5:                                                ; preds = %3, %0
  %6 = load i32, i32* @state, align 4
  switch i32 %6, label %45 [
    i32 131, label %7
    i32 129, label %25
    i32 128, label %38
    i32 130, label %44
  ]

7:                                                ; preds = %5
  %8 = load i32, i32* @check_state.activated, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %16, label %10

10:                                               ; preds = %7
  %11 = load i32, i32* @check_state.slept, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %10
  %14 = call i32 @rgblight_mode_noeeprom(i32 1)
  br label %15

15:                                               ; preds = %13, %10
  store i32 1, i32* @check_state.activated, align 4
  store i32 0, i32* @check_state.deactivated, align 4
  store i32 0, i32* @check_state.slept, align 4
  br label %16

16:                                               ; preds = %15, %7
  %17 = call i32 @velocikey_match_speed(i32 1, i32 25)
  store i32 %17, i32* @fade_interval, align 4
  %18 = load i64, i64* @check_state.active_timer, align 8
  %19 = call i32 @timer_elapsed(i64 %18)
  %20 = load i32, i32* @INACTIVE_DELAY, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  br label %45

23:                                               ; preds = %16
  %24 = call i64 (...) @timer_read()
  store i64 %24, i64* @check_state.active_timer, align 8
  store i32 129, i32* @state, align 4
  br label %45

25:                                               ; preds = %5
  %26 = load i32, i32* @check_state.deactivated, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %25
  store i32 1, i32* @check_state.deactivated, align 4
  store i32 0, i32* @check_state.activated, align 4
  store i32 0, i32* @check_state.slept, align 4
  br label %29

29:                                               ; preds = %28, %25
  %30 = call i32 (...) @velocikey_decelerate()
  %31 = call i32 @velocikey_match_speed(i32 1, i32 25)
  store i32 %31, i32* @fade_interval, align 4
  %32 = load i64, i64* @check_state.active_timer, align 8
  %33 = call i32 @timer_elapsed(i64 %32)
  %34 = load i32, i32* @SLEEP_DELAY, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %29
  br label %45

37:                                               ; preds = %29
  store i32 128, i32* @state, align 4
  br label %45

38:                                               ; preds = %5
  %39 = load i32, i32* @check_state.slept, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %38
  %42 = call i32 @rgblight_mode_noeeprom(i32 5)
  store i32 1, i32* @check_state.slept, align 4
  store i32 0, i32* @check_state.activated, align 4
  store i32 0, i32* @check_state.deactivated, align 4
  br label %43

43:                                               ; preds = %41, %38
  br label %45

44:                                               ; preds = %5
  br label %45

45:                                               ; preds = %22, %23, %36, %37, %43, %44, %5
  ret void
}

declare dso_local i64 @timer_read(...) #1

declare dso_local i32 @rgblight_mode_noeeprom(i32) #1

declare dso_local i32 @velocikey_match_speed(i32, i32) #1

declare dso_local i32 @timer_elapsed(i64) #1

declare dso_local i32 @velocikey_decelerate(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
